; ModuleID = '/llk/IR_all_yes/fs/btrfs/raid56.c_pt.bc'
source_filename = "../fs/btrfs/raid56.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.raid6_calls = type { ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_fs_info = type { [16 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rwlock_t, %struct.rb_root, %struct.spinlock, %struct.xarray, %struct.spinlock, i64, %struct.rb_root, %struct.atomic64_t, %struct.extent_io_tree, %struct.extent_map_tree, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, %struct.btrfs_block_rsv, i64, i64, i64, i64, i64, i32, i32, i8, i32, i32, i64, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, %struct.mutex, %struct.rw_semaphore, %struct.rw_semaphore, %struct.rw_semaphore, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic64_t, %struct.rwlock_t, %struct.rb_root, %struct.list_head, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, i32, i32, %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.btrfs_free_cluster, %struct.btrfs_free_cluster, %struct.spinlock, %struct.rb_root, %struct.atomic_t, %struct.seqlock_t, i64, i64, i64, %struct.spinlock, %struct.mutex, %struct.atomic_t, %struct.atomic_t, ptr, %struct.wait_queue_head, %struct.atomic_t, i32, i32, ptr, %struct.mutex, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.refcount_struct, ptr, ptr, ptr, ptr, %struct.btrfs_discard_ctl, i32, i64, %struct.rb_root, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, i64, %struct.mutex, %struct.btrfs_key, ptr, %struct.completion, %struct.btrfs_work, i8, i32, ptr, %struct.spinlock, %struct.xarray, i32, %struct.btrfs_dev_replace, %struct.semaphore, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.list_head, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.rb_root, ptr, i32, %union.anon.84, %struct.mutex, %struct.spinlock, i64, %struct.spinlock, i64, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head }
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
%struct.atomic_t = type { i32 }
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
%union.anon.84 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.btrfs_stripe_hash_table = type { %struct.list_head, %struct.spinlock, i32, [0 x %struct.btrfs_stripe_hash] }
%struct.btrfs_stripe_hash = type { %struct.list_head, %struct.spinlock }
%struct.btrfs_io_context = type { %struct.refcount_struct, %struct.atomic_t, ptr, i64, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, ptr, [0 x %struct.btrfs_io_stripe] }
%struct.btrfs_io_stripe = type { ptr, i64, i64 }
%struct.btrfs_raid_bio = type { ptr, %struct.list_head, %struct.list_head, %struct.btrfs_work, %struct.bio_list, %struct.spinlock, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr }
%struct.bio_list = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.30, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.30 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.btrfs_plug_cb = type { %struct.blk_plug_cb, ptr, %struct.list_head, %struct.btrfs_work }
%struct.blk_plug_cb = type { %struct.list_head, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.btrfs_device = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i64, ptr, ptr, i32, i32, i8, %struct.seqcount, i64, i64, i64, i64, i32, i32, i64, i32, [16 x i8], i64, i64, ptr, %struct.completion, ptr, i32, %struct.atomic_t, [5 x %struct.atomic_t], %struct.extent_io_tree, %struct.completion, %struct.kobject, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }

@btrfs_alloc_stripe_hash_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&table->cache_lock\00", [45 x i8] zeroinitializer }, align 32
@btrfs_alloc_stripe_hash_table.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cur->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bioc->mirror_num == mirror_num\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/btrfs/raid56.c\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [136 x i8], [56 x i8] } { [136 x i8] c"\014%s could not find the bad stripe in raid56 so that we cannot recover any more (bio has logical %llu len %llu, bioc has map_type %llu)\00", [56 x i8] zeroinitializer }, align 32
@__func__.raid56_parity_recover = private unnamed_addr constant [22 x i8] c"raid56_parity_recover\00", align 1
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rbio->failb > 0\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!bio->bi_iter.bi_size\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i < rbio->real_stripes\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fs_info->sectorsize == PAGE_SIZE\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rbio->stripe_npages == stripe_nsectors\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"logical >= rbio->bioc->raid_map[0]\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"logical + PAGE_SIZE <= rbio->bioc->raid_map[0] + rbio->stripe_len * rbio->nr_data\00", [46 x i8] zeroinitializer }, align 32
@alloc_rbio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&rbio->bio_list_lock\00", [43 x i8] zeroinitializer }, align 32
@raid6_call = external dso_local local_unnamed_addr global %struct.raid6_calls, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"!bio_flagged(bio, BIO_CLONED)\00", [34 x i8] zeroinitializer }, align 32
@assertfail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 3491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013assertion failed: %s, in %s:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"assertfail\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/btrfs/ctree.h\00", [47 x i8] zeroinitializer }, align 32
@assertfail._entry_ptr = internal global ptr @assertfail._entry, section ".printk_index", align 4
@raid6_datap_recov = external dso_local local_unnamed_addr global ptr, align 4
@raid6_2data_recov = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 64, i64 -2, i64 -1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 224, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 232, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2125, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2142, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2171, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2239, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2253, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2256, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2257, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2276, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 2277, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 985, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 260, i32 2 }
@___asan_gen_.82 = private constant [21 x i8] c"../fs/btrfs/raid56.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1428, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"../fs/btrfs/ctree.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 3491, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @assertfail._entry, ptr @assertfail._entry_ptr, ptr @btrfs_alloc_stripe_hash_table.__key, ptr @.str, ptr @btrfs_alloc_stripe_hash_table.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @alloc_rbio.__key, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_alloc_stripe_hash_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_alloc_stripe_hash_table.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rbio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assertfail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_alloc_stripe_hash_table(ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_hash_table = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 52
  %0 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stripe_hash_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 106552, i32 noundef 3520, i32 noundef -1) #14
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  %cache_lock = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %call.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %cache_lock, ptr noundef nonnull @.str, ptr noundef nonnull @btrfs_alloc_stripe_hash_table.__key, i16 noundef signext 3) #11
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call.i.i, ptr %call.i.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %prev.i, align 4
  %table6 = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %call.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body
  %i.046 = phi i32 [ 0, %do.body ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.btrfs_stripe_hash, ptr %table6, i32 %i.046
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i45 = getelementptr inbounds %struct.list_head, ptr %add.ptr, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %prev.i45, align 4
  %lock = getelementptr %struct.btrfs_stripe_hash, ptr %table6, i32 %i.046, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @btrfs_alloc_stripe_hash_table.__key.1, i16 noundef signext 3) #11
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, 2048
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripe_hash_table, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !53
  %6 = ptrtoint ptr %call.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %stripe_hash_table, i32 1, i32 3, i32 1) #11
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.end
  %7 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %stripe_hash_table, i32 0, i32 %6) #11, !srcloc !54
  %asmresult.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %asmresult1.i = extractvalue { i32, i32 } %7, 1
  %8 = inttoptr i32 %asmresult1.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !55
  tail call void @kvfree(ptr noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %__cmpxchg.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__cmpxchg.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btrfs_free_stripe_hash_table(ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_hash_table = getelementptr inbounds %struct.btrfs_fs_info, ptr %info, i32 0, i32 52
  %0 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stripe_hash_table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %cache_lock.i = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock.i) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i.not12.i = icmp eq ptr %3, %1
  br i1 %cmp.i.not12.i, label %if.end.btrfs_clear_rbio_cache.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.btrfs_clear_rbio_cache.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %btrfs_clear_rbio_cache.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %4 = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %3, %if.end.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %4, i32 -12
  tail call fastcc void @__remove_rbio_from_cache(ptr noundef %add.ptr.i) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %6, %1
  br i1 %cmp.i.not.i, label %while.body.i.btrfs_clear_rbio_cache.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.btrfs_clear_rbio_cache.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %btrfs_clear_rbio_cache.exit

btrfs_clear_rbio_cache.exit:                      ; preds = %while.body.i.btrfs_clear_rbio_cache.exit_crit_edge, %if.end.btrfs_clear_rbio_cache.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i, i32 noundef %call2.i) #11
  %7 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stripe_hash_table, align 4
  tail call void @kvfree(ptr noundef %8) #11
  %9 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %stripe_hash_table, align 4
  br label %return

return:                                           ; preds = %btrfs_clear_rbio_cache.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raid56_parity_write(ptr noundef %bio, ptr noundef %bioc, i64 noundef %stripe_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 2
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %call = tail call fastcc ptr @alloc_rbio(ptr noundef %bioc, i64 noundef %stripe_len)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btrfs_put_bioc(ptr noundef %bioc) #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bio, ptr %5, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bio, ptr %bio_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bio, ptr %tail.i, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bi_size, align 8
  %bio_list_bytes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %bio_list_bytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bio_list_bytes, align 4
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 12
  %12 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %operation, align 4
  tail call void @btrfs_bio_counter_inc_noblocked(ptr noundef %1) #11
  %generic_bio_cnt = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 18
  %13 = ptrtoint ptr %generic_bio_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %generic_bio_cnt, align 4
  %14 = ptrtoint ptr %bio_list_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bio_list_bytes, align 4
  %bio_list_lock.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_list_lock.i) #11
  %nr_data.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_data.i, align 4
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 8
  %18 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stripe_len.i, align 4
  %mul.i = mul i32 %19, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul.i)
  %cmp11.i = icmp ugt i32 %15, %mul.i
  br i1 %cmp11.i, label %do.body15.i, label %rbio_is_full.exit, !prof !56

do.body15.i:                                      ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #11, !srcloc !57
  unreachable

rbio_is_full.exit:                                ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul.i)
  %cmp5.not.i.not = icmp eq i32 %15, %mul.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_list_lock.i, i32 noundef %call2.i) #11
  br i1 %cmp5.not.i.not, label %if.then5, label %if.end10

if.then5:                                         ; preds = %rbio_is_full.exit
  %20 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_data.i, align 4
  %stripe_npages.i.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 11
  %22 = ptrtoint ptr %stripe_npages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stripe_npages.i.i.i, align 4
  %mul.i.i.i = mul i32 %23, %21
  %nr_pages.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %25)
  %cmp16.i.i = icmp slt i32 %mul.i.i.i, %25
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %if.then5.if.end.i_crit_edge

if.then5.if.end.i_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then5
  %stripe_pages.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 22
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ %mul.i.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %27, i32 %i.017.i.i
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool2.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then8, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx6.i.i = getelementptr ptr, ptr %31, i32 %i.017.i.i
  %32 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx6.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end4.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nsw i32 %i.017.i.i, 1
  %33 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_pages.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %34
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.then5.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @lock_stripe_add(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i53 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i53, label %if.then2.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_rmw(ptr noundef %call) #11
  br label %cleanup

if.then8:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__free_raid_bio(ptr noundef %call) #11
  tail call void @btrfs_bio_counter_sub(ptr noundef %1, i64 noundef 1) #11
  br label %cleanup

if.end10:                                         ; preds = %rbio_is_full.exit
  %call11 = tail call ptr @blk_check_plugged(ptr noundef nonnull @btrfs_raid_unplug, ptr noundef %1, i32 noundef 100) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  %info = getelementptr inbounds %struct.btrfs_plug_cb, ptr %call11, i32 0, i32 1
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  %tobool14.not = icmp eq ptr %36, null
  br i1 %tobool14.not, label %if.then15, label %if.then13.if.end17_crit_edge

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %1, ptr %info, align 4
  %rbio_list = getelementptr inbounds %struct.btrfs_plug_cb, ptr %call11, i32 0, i32 2
  %38 = ptrtoint ptr %rbio_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %rbio_list, ptr %rbio_list, align 4
  %prev.i = getelementptr inbounds %struct.btrfs_plug_cb, ptr %call11, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rbio_list, ptr %prev.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then13.if.end17_crit_edge
  %plug_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 6
  %rbio_list18 = getelementptr inbounds %struct.btrfs_plug_cb, ptr %call11, i32 0, i32 2
  %prev.i54 = getelementptr inbounds %struct.btrfs_plug_cb, ptr %call11, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i54, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %plug_list, ptr noundef %41, ptr noundef %rbio_list18) #11
  br i1 %call.i.i, label %if.end.i.i55, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i55:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %prev.i54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %plug_list, ptr %prev.i54, align 4
  %43 = ptrtoint ptr %plug_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rbio_list18, ptr %plug_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 6, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %plug_list, ptr %41, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %call19 = tail call fastcc i32 @__raid56_parity_write(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.cleanup_crit_edge, label %if.then21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btrfs_bio_counter_sub(ptr noundef %1, i64 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.else.cleanup_crit_edge, %if.end.i.i55, %if.end17.cleanup_crit_edge, %if.then8, %if.then2.i, %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ -12, %if.then8 ], [ %call19, %if.then21 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end.i.i55 ], [ 0, %if.then2.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_rbio(ptr noundef %bioc, i64 noundef %stripe_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_stripes = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 9
  %0 = ptrtoint ptr %num_stripes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_stripes, align 4
  %num_tgtdevs = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 11
  %2 = ptrtoint ptr %num_tgtdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tgtdevs, align 4
  %sub = sub i32 %1, %3
  %conv = trunc i64 %stripe_len to i32
  %sub.i = add i32 %conv, 4095
  %div1.i = lshr i32 %sub.i, 12
  %mul.i = mul i32 %sub, %div1.i
  %sub1 = add i64 %stripe_len, 4095
  %div1 = lshr i64 %sub1, 12
  %conv2 = trunc i64 %div1 to i32
  %mul6 = shl i32 %sub, 2
  %sub9 = add i32 %conv2, 31
  %4 = lshr i32 %sub9, 3
  %mul11 = and i32 %4, 536870908
  %reass.add3 = shl nuw nsw i32 %mul11, 1
  %add5 = add nuw nsw i32 %reass.add3, 232
  %add7 = add i32 %add5, %mul6
  %reass.add = shl i32 %mul.i, 3
  %add17 = add i32 %add7, %reass.add
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add17, i32 noundef 3392) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %mul.i, 2
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 4
  %tail.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tail.i, align 32
  %6 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bio_list, align 4
  %plug_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %plug_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %plug_list, ptr %plug_list, align 16
  %prev.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %plug_list, ptr %prev.i, align 4
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %bio_list_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @alloc_rbio.__key, i16 noundef signext 3) #11
  %stripe_cache = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %stripe_cache to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %stripe_cache, ptr %stripe_cache, align 4
  %prev.i5 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %stripe_cache, ptr %prev.i5, align 16
  %hash_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i6 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hash_list, ptr %prev.i6, align 8
  %13 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bioc, ptr %call9.i.i, align 128
  %stripe_len23 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %stripe_len23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %stripe_len23, align 4
  %nr_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %nr_pages, align 4
  %real_stripes24 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %real_stripes24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %real_stripes24, align 4
  %stripe_npages25 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %stripe_npages25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv2, ptr %stripe_npages25, align 8
  %faila = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %faila to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %faila, align 16
  %failb = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %failb to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %failb, align 4
  %refs = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 19
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  %20 = ptrtoint ptr %refs to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %refs, align 8
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #11
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %error, align 16
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 20
  %call.i.i4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  %22 = ptrtoint ptr %stripes_pending to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %stripes_pending, align 4
  %add.ptr = getelementptr %struct.btrfs_raid_bio, ptr %call9.i.i, i32 1
  %stripe_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 22
  %23 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %stripe_pages, align 4
  %add.ptr28 = getelementptr i8, ptr %add.ptr, i32 %mul
  %bio_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 23
  %24 = ptrtoint ptr %bio_pages to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr28, ptr %bio_pages, align 8
  %add.ptr33 = getelementptr i8, ptr %add.ptr28, i32 %mul
  %finish_pointers = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 25
  %25 = ptrtoint ptr %finish_pointers to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr33, ptr %finish_pointers, align 32
  %add.ptr38 = getelementptr i8, ptr %add.ptr33, i32 %mul6
  %dbitmap = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 24
  %26 = ptrtoint ptr %dbitmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr38, ptr %dbitmap, align 4
  %add.ptr46 = getelementptr i8, ptr %add.ptr38, i32 %mul11
  %finish_pbitmap = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 26
  %27 = ptrtoint ptr %finish_pbitmap to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr46, ptr %finish_pbitmap, align 4
  %map_type = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 3
  %28 = ptrtoint ptr %map_type to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %map_type, align 8
  %and = and i64 %29, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool57.not = icmp eq i64 %and, 0
  br i1 %tobool57.not, label %if.else, label %if.end.if.end73_crit_edge

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.else:                                          ; preds = %if.end
  %and61 = and i64 %29, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61)
  %tobool62.not = icmp eq i64 %and61, 0
  br i1 %tobool62.not, label %do.body66, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

do.body66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1020, 0\0A.popsection", ""() #11, !srcloc !58
  unreachable

if.end73:                                         ; preds = %if.else.if.end73_crit_edge, %if.end.if.end73_crit_edge
  %.sink = phi i32 [ -1, %if.end.if.end73_crit_edge ], [ -2, %if.else.if.end73_crit_edge ]
  %sub64 = add i32 %sub, %.sink
  %nr_data74 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call9.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %nr_data74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub64, ptr %nr_data74, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end73 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_put_bioc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_bio_counter_inc_noblocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_check_plugged(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @btrfs_raid_unplug(ptr noundef %cb, i1 noundef zeroext %from_schedule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %from_schedule, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %work = getelementptr inbounds %struct.btrfs_plug_cb, ptr %cb, i32 0, i32 3
  tail call void @btrfs_init_work(ptr noundef %work, ptr noundef nonnull @unplug_work, ptr noundef null, ptr noundef null) #11
  %info = getelementptr inbounds %struct.btrfs_plug_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %rmw_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 82
  %2 = ptrtoint ptr %rmw_workers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmw_workers, align 8
  tail call void @btrfs_queue_work(ptr noundef %3, ptr noundef %work) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @run_plug(ptr noundef %cb)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__raid56_parity_write(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_list_bytes.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 17
  %0 = ptrtoint ptr %bio_list_bytes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bio_list_bytes.i, align 4
  %bio_list_lock.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_list_lock.i) #11
  %nr_data.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  %2 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_data.i, align 4
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  %4 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stripe_len.i, align 4
  %mul.i = mul i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i)
  %cmp11.i = icmp ugt i32 %1, %mul.i
  br i1 %cmp11.i, label %do.body15.i, label %rbio_is_full.exit, !prof !56

do.body15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #11, !srcloc !57
  unreachable

rbio_is_full.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul.i)
  %cmp5.not.i.not = icmp eq i32 %1, %mul.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_list_lock.i, i32 noundef %call2.i) #11
  br i1 %cmp5.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %rbio_is_full.exit
  %call.i = tail call fastcc i32 @lock_stripe_add(ptr noundef %rbio) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %work.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 3
  tail call void @btrfs_init_work(ptr noundef %work.i.i, ptr noundef nonnull @rmw_work, ptr noundef null, ptr noundef null) #11
  %6 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rbio, align 4
  %fs_info.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fs_info.i.i, align 8
  %rmw_workers.i.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %9, i32 0, i32 82
  %10 = ptrtoint ptr %rmw_workers.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw_workers.i.i, align 8
  tail call void @btrfs_queue_work(ptr noundef %11, ptr noundef %work.i.i) #11
  br label %return

if.end:                                           ; preds = %rbio_is_full.exit
  %12 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_data.i, align 4
  %stripe_npages.i.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %14 = ptrtoint ptr %stripe_npages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stripe_npages.i.i.i, align 4
  %mul.i.i.i = mul i32 %15, %13
  %nr_pages.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 16
  %16 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %17)
  %cmp16.i.i = icmp slt i32 %mul.i.i.i, %17
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %stripe_pages.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ %mul.i.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %i.017.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool2.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i5, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx6.i.i = getelementptr ptr, ptr %23, i32 %i.017.i.i
  %24 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx6.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end4.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nsw i32 %i.017.i.i, 1
  %25 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pages.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %26
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.then.i5:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__free_raid_bio(ptr noundef %rbio) #11
  br label %return

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @lock_stripe_add(ptr noundef %rbio) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i6 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i6, label %if.then2.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_rmw(ptr noundef %rbio) #11
  br label %return

return:                                           ; preds = %if.then2.i, %if.end.i.return_crit_edge, %if.then.i5, %if.then.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.return_crit_edge ], [ 0, %if.then.i ], [ -12, %if.then.i5 ], [ 0, %if.then2.i ], [ 0, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @raid56_parity_recover(ptr noundef %bio, ptr noundef %bioc, i64 noundef %stripe_len, i32 noundef %mirror_num, i32 noundef %generic_io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 2
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %generic_io)
  %tobool.not = icmp eq i32 %generic_io, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %mirror_num2 = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 10
  %2 = ptrtoint ptr %mirror_num2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mirror_num2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mirror_num)
  %cmp = icmp eq i32 %3, %mirror_num
  br i1 %cmp, label %if.end.thread, label %cond.false, !prof !59

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.3, i32 noundef 2125) #15
  unreachable

if.end:                                           ; preds = %entry
  %call6 = tail call fastcc ptr @alloc_rbio(ptr noundef %bioc, i64 noundef %stripe_len)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end11_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end.thread:                                    ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %bio, i32 -96
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mirror_num, ptr %add.ptr.i, align 8
  %call696 = tail call fastcc ptr @alloc_rbio(ptr noundef %bioc, i64 noundef %stripe_len)
  %cmp.i97 = icmp ugt ptr %call696, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then10, label %if.end.thread.if.end13_crit_edge

if.end.thread.if.end13_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btrfs_put_bioc(ptr noundef %bioc) #11
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %call699102 = phi ptr [ %call696, %if.then10 ], [ %call6, %if.end.if.end11_crit_edge ]
  %5 = ptrtoint ptr %call699102 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end.thread.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call698 = phi ptr [ %call696, %if.end.thread.if.end13_crit_edge ], [ %call6, %if.end.if.end13_crit_edge ]
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 12
  %6 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %operation, align 4
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bio, ptr %9, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 4
  %11 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bio, ptr %bio_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bio, ptr %tail.i, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_size, align 8
  %bio_list_bytes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 17
  %15 = ptrtoint ptr %bio_list_bytes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bio_list_bytes, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %16 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bi_iter.i, align 8
  %shl.i = shl i64 %17, 9
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 8
  %nr_data.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 9
  %18 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16.i = icmp sgt i32 %19, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %bio_list_add.exit.if.then17_crit_edge

bio_list_add.exit.if.then17_crit_edge:            ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

for.body.lr.ph.i:                                 ; preds = %bio_list_add.exit
  %20 = ptrtoint ptr %call698 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call698, align 4
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %raid_map.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %23, i32 %i.017.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %25)
  %cmp1.not.i = icmp ult i64 %shl.i, %25
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %26 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stripe_len.i, align 4
  %conv.i = sext i32 %27 to i64
  %add.i = add i64 %25, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %add.i)
  %cmp2.i = icmp ult i64 %shl.i, %add.i
  br i1 %cmp2.i, label %if.end24, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.if.then17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.then17_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

if.then17:                                        ; preds = %for.inc.i.if.then17_crit_edge, %bio_list_add.exit.if.then17_crit_edge
  %faila104 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 13
  %28 = ptrtoint ptr %faila104 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %faila104, align 4
  %29 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bi_iter.i, align 8
  %shl = shl i64 %30, 9
  %31 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bi_size, align 8
  %conv = zext i32 %32 to i64
  %map_type = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 3
  %33 = ptrtoint ptr %map_type to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %map_type, align 8
  tail call void (ptr, ptr, ...) @btrfs_printk(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.raid56_parity_recover, i64 noundef %shl, i64 noundef %conv, i64 noundef %34) #16
  br i1 %tobool.not, label %if.then17.if.end23_crit_edge, label %if.then22

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btrfs_put_bioc(ptr noundef %bioc) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then17.if.end23_crit_edge
  tail call void @kfree(ptr noundef %call698) #11
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true.i
  %faila = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 13
  %35 = ptrtoint ptr %faila to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.017.i, ptr %faila, align 4
  br i1 %tobool.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btrfs_bio_counter_inc_noblocked(ptr noundef %1) #11
  %generic_bio_cnt = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 18
  %36 = ptrtoint ptr %generic_bio_cnt to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %generic_bio_cnt, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @btrfs_get_bioc(ptr noundef %bioc) #11
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mirror_num)
  %cmp28 = icmp sgt i32 %mirror_num, 2
  br i1 %cmp28, label %if.then30, label %if.end27.if.end51_crit_edge

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then30:                                        ; preds = %if.end27
  %real_stripes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 10
  %37 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %real_stripes, align 4
  %sub.neg = sub nsw i32 1, %mirror_num
  %sub31 = add i32 %sub.neg, %38
  %failb = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call698, i32 0, i32 14
  %39 = ptrtoint ptr %failb to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub31, ptr %failb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp33 = icmp sgt i32 %sub31, 0
  br i1 %cmp33, label %cond.end43, label %cond.false42, !prof !59

cond.false42:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.6, i32 noundef 2171) #15
  unreachable

cond.end43:                                       ; preds = %if.then30
  %40 = ptrtoint ptr %faila to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %faila, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub31, i32 %41)
  %cmp46.not = icmp sgt i32 %sub31, %41
  br i1 %cmp46.not, label %cond.end43.if.end51_crit_edge, label %if.then48

cond.end43.if.end51_crit_edge:                    ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then48:                                        ; preds = %cond.end43
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add nsw i32 %sub31, -1
  %42 = ptrtoint ptr %failb to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %dec, ptr %failb, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %cond.end43.if.end51_crit_edge, %if.end27.if.end51_crit_edge
  %call52 = tail call fastcc i32 @lock_stripe_add(ptr noundef %call698)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp eq i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__raid56_parity_recover(ptr noundef %call698)
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end51.cleanup_crit_edge, %if.end23, %if.end11
  %retval.0 = phi i32 [ %5, %if.end11 ], [ -5, %if.end23 ], [ 0, %if.then55 ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assertfail(ptr noundef %expr, i32 noundef %line) unnamed_addr #3 align 64 {
entry:
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %expr, ptr noundef nonnull @.str.4, i32 noundef %line) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/ctree.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3492, 0\0A.popsection", ""() #11, !srcloc !60
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @btrfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_get_bioc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lock_stripe_add(ptr noundef %rbio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %fs_info = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %stripe_hash_table = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stripe_hash_table, align 4
  %table = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %5, i32 0, i32 3
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raid_map.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %shr.i124 = lshr i64 %9, 16
  %conv.i.i = trunc i64 %shr.i124 to i32
  %shr.i.i = lshr i64 %9, 48
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 21
  %add.ptr = getelementptr %struct.btrfs_stripe_hash, ptr %table, i32 %shr.i.i.i
  %lock = getelementptr %struct.btrfs_stripe_hash, ptr %table, i32 %shr.i.i.i, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %add.ptr, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp10.not = icmp eq ptr %.pn, %add.ptr
  br i1 %cmp10.not, label %for.cond.lockit_crit_edge, label %for.body

for.cond.lockit_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %lockit

for.body:                                         ; preds = %for.cond
  %cur.0 = getelementptr i8, ptr %.pn, i32 -4
  %11 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.0, align 4
  %raid_map = getelementptr inbounds %struct.btrfs_io_context, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %raid_map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %raid_map, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %17 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rbio, align 4
  %raid_map14 = getelementptr inbounds %struct.btrfs_io_context, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %raid_map14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %raid_map14, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %cmp16.not = icmp eq i64 %16, %22
  br i1 %cmp16.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end:                                           ; preds = %for.body
  %cur.0.le = getelementptr i8, ptr %.pn, i32 -4
  %bio_list_lock = getelementptr i8, ptr %.pn, i32 96
  tail call void @_raw_spin_lock(ptr noundef %bio_list_lock) #11
  %bio_list = getelementptr i8, ptr %.pn, i32 88
  %23 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bio_list, align 4
  %cmp.i.not = icmp eq ptr %24, null
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %plug_list = getelementptr i8, ptr %.pn, i32 140
  %25 = ptrtoint ptr %plug_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %plug_list, align 4
  %cmp.i125.not = icmp eq ptr %26, %plug_list
  br i1 %cmp.i125.not, label %land.lhs.true21, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true21:                                  ; preds = %land.lhs.true
  %flags22 = getelementptr i8, ptr %.pn, i32 148
  %27 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %flags22, align 4
  %29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not = icmp eq i32 %29, 0
  br i1 %tobool24.not, label %land.lhs.true21.if.end32_crit_edge, label %land.lhs.true25

land.lhs.true21.if.end32_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %30 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags22, align 4
  %32 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool28.not = icmp eq i32 %32, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true25.if.end32_crit_edge

land.lhs.true25.if.end32_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true25
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del_init.exit_crit_edge

if.then29.list_del_init.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then29.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %.pn, ptr %prev.i3.i, align 4
  %refs = getelementptr i8, ptr %.pn, i32 196
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #11
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #11, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %list_del_init.exit.refcount_dec.exit_crit_edge, !prof !56

list_del_init.exit.refcount_dec.exit_crit_edge:   ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 4) #11
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %list_del_init.exit.refcount_dec.exit_crit_edge
  tail call fastcc void @steal_rbio(ptr noundef %cur.0.le, ptr noundef %rbio)
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  br label %lockit

if.end32:                                         ; preds = %land.lhs.true25.if.end32_crit_edge, %land.lhs.true21.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %flags.i = getelementptr i8, ptr %.pn, i32 148
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags.i, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

lor.lhs.false.i:                                  ; preds = %if.end32
  %flags1.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  %45 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags1.i, align 4
  %47 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.not.i = icmp eq i32 %47, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.if.end37_crit_edge

lor.lhs.false.i.if.end37_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end.i:                                         ; preds = %lor.lhs.false.i
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool6.not.i = icmp eq i32 %50, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %if.end.i.if.end37_crit_edge

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

lor.lhs.false7.i:                                 ; preds = %if.end.i
  %51 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %flags1.i, align 4
  %53 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool10.not.i = icmp eq i32 %53, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false7.i.if.end37_crit_edge

lor.lhs.false7.i.if.end37_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end12.i:                                       ; preds = %lor.lhs.false7.i
  %54 = ptrtoint ptr %cur.0.le to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cur.0.le, align 4
  %raid_map.i127 = getelementptr inbounds %struct.btrfs_io_context, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %raid_map.i127 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %raid_map.i127, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %57, align 8
  %60 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rbio, align 4
  %raid_map14.i = getelementptr inbounds %struct.btrfs_io_context, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %raid_map14.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %raid_map14.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %63, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %65)
  %cmp.not.i = icmp eq i64 %59, %65
  br i1 %cmp.not.i, label %if.end17.i, label %if.end12.i.if.end37_crit_edge

if.end12.i.if.end37_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end17.i:                                       ; preds = %if.end12.i
  %operation.i = getelementptr i8, ptr %.pn, i32 168
  %66 = ptrtoint ptr %operation.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %operation.i, align 4
  %operation18.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 12
  %68 = ptrtoint ptr %operation18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %operation18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp19.not.i = icmp eq i32 %67, %69
  br i1 %cmp19.not.i, label %if.end21.i, label %if.end17.i.if.end37_crit_edge

if.end17.i.if.end37_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end21.i:                                       ; preds = %if.end17.i
  %70 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i32 %67, label %if.end21.i.if.then35_crit_edge [
    i32 2, label %if.end21.i.if.end37_crit_edge
    i32 3, label %if.end21.i.if.end37_crit_edge231
    i32 1, label %if.then32.i
  ]

if.end21.i.if.end37_crit_edge231:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end21.i.if.end37_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.end21.i.if.then35_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then32.i:                                      ; preds = %if.end21.i
  %faila.i = getelementptr i8, ptr %.pn, i32 172
  %71 = ptrtoint ptr %faila.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %faila.i, align 4
  %failb.i = getelementptr i8, ptr %.pn, i32 176
  %73 = ptrtoint ptr %failb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %failb.i, align 4
  %faila33.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %75 = ptrtoint ptr %faila33.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %faila33.i, align 4
  %failb34.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %77 = ptrtoint ptr %failb34.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %failb34.i, align 4
  %79 = tail call i32 @llvm.smin.i32(i32 %72, i32 %74) #11
  %80 = tail call i32 @llvm.smax.i32(i32 %72, i32 %74) #11
  %81 = tail call i32 @llvm.smin.i32(i32 %76, i32 %78) #11
  %82 = tail call i32 @llvm.smax.i32(i32 %76, i32 %78) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp49.not.i = icmp eq i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp51.not.i = icmp eq i32 %80, %82
  %or.cond.i = select i1 %cmp49.not.i, i1 %cmp51.not.i, i1 false
  br i1 %or.cond.i, label %if.then32.i.if.then35_crit_edge, label %if.then32.i.if.end37_crit_edge

if.then32.i.if.end37_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then32.i.if.then35_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then35

if.then35:                                        ; preds = %if.then32.i.if.then35_crit_edge, %if.end21.i.if.then35_crit_edge
  %bio_list1.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %83 = ptrtoint ptr %bio_list1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bio_list1.i, align 4
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %if.then35.merge_rbio.exit_crit_edge, label %if.end.i.i128

if.then35.merge_rbio.exit_crit_edge:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %merge_rbio.exit

if.end.i.i128:                                    ; preds = %if.then35
  %tail.i.i = getelementptr i8, ptr %.pn, i32 92
  %85 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tail.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %86, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %86, align 8
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %84, ptr %bio_list, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.then2.i.i
  %tail8.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %tail8.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tail8.i.i, align 4
  %91 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %tail.i.i, align 4
  br label %merge_rbio.exit

merge_rbio.exit:                                  ; preds = %if.end7.i.i, %if.then35.merge_rbio.exit_crit_edge
  %bio_list_bytes.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 17
  %92 = ptrtoint ptr %bio_list_bytes.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bio_list_bytes.i, align 4
  %bio_list_bytes2.i = getelementptr i8, ptr %.pn, i32 188
  %94 = ptrtoint ptr %bio_list_bytes2.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bio_list_bytes2.i, align 4
  %add.i = add i32 %95, %93
  store i32 %add.i, ptr %bio_list_bytes2.i, align 4
  %generic_bio_cnt3.i = getelementptr i8, ptr %.pn, i32 192
  br label %if.end76

if.end37:                                         ; preds = %if.then32.i.if.end37_crit_edge, %if.end21.i.if.end37_crit_edge, %if.end21.i.if.end37_crit_edge231, %if.end17.i.if.end37_crit_edge, %if.end12.i.if.end37_crit_edge, %lor.lhs.false7.i.if.end37_crit_edge, %if.end.i.if.end37_crit_edge, %lor.lhs.false.i.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  %plug_list39 = getelementptr i8, ptr %.pn, i32 140
  %96 = ptrtoint ptr %plug_list39 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pn121207 = load ptr, ptr %plug_list39, align 4
  %cmp46.not209 = icmp eq ptr %.pn121207, %plug_list39
  br i1 %cmp46.not209, label %if.end37.for.end_crit_edge, label %for.body49.lr.ph

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body49.lr.ph:                                 ; preds = %if.end37
  %flags1.i131 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  %operation18.i143 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 12
  %faila33.i149 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %failb34.i150 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  br label %for.body49

for.body49:                                       ; preds = %rbio_can_merge.exit157.for.body49_crit_edge, %for.body49.lr.ph
  %.pn121210 = phi ptr [ %.pn121207, %for.body49.lr.ph ], [ %.pn121, %rbio_can_merge.exit157.for.body49_crit_edge ]
  %pending.0211 = getelementptr i8, ptr %.pn121210, i32 -144
  %flags.i129 = getelementptr i8, ptr %.pn121210, i32 8
  %97 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %flags.i129, align 4
  %99 = and i32 %98, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i130 = icmp eq i32 %99, 0
  br i1 %tobool.not.i130, label %lor.lhs.false.i133, label %for.body49.rbio_can_merge.exit157_crit_edge

for.body49.rbio_can_merge.exit157_crit_edge:      ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

lor.lhs.false.i133:                               ; preds = %for.body49
  %100 = ptrtoint ptr %flags1.i131 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %flags1.i131, align 4
  %102 = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool3.not.i132 = icmp eq i32 %102, 0
  br i1 %tobool3.not.i132, label %if.end.i135, label %lor.lhs.false.i133.rbio_can_merge.exit157_crit_edge

lor.lhs.false.i133.rbio_can_merge.exit157_crit_edge: ; preds = %lor.lhs.false.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.end.i135:                                      ; preds = %lor.lhs.false.i133
  %103 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %flags.i129, align 4
  %105 = and i32 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool6.not.i134 = icmp eq i32 %105, 0
  br i1 %tobool6.not.i134, label %lor.lhs.false7.i137, label %if.end.i135.rbio_can_merge.exit157_crit_edge

if.end.i135.rbio_can_merge.exit157_crit_edge:     ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

lor.lhs.false7.i137:                              ; preds = %if.end.i135
  %106 = ptrtoint ptr %flags1.i131 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %flags1.i131, align 4
  %108 = and i32 %107, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool10.not.i136 = icmp eq i32 %108, 0
  br i1 %tobool10.not.i136, label %if.end12.i141, label %lor.lhs.false7.i137.rbio_can_merge.exit157_crit_edge

lor.lhs.false7.i137.rbio_can_merge.exit157_crit_edge: ; preds = %lor.lhs.false7.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.end12.i141:                                    ; preds = %lor.lhs.false7.i137
  %109 = ptrtoint ptr %pending.0211 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pending.0211, align 4
  %raid_map.i138 = getelementptr inbounds %struct.btrfs_io_context, ptr %110, i32 0, i32 13
  %111 = ptrtoint ptr %raid_map.i138 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %raid_map.i138, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %112, align 8
  %115 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rbio, align 4
  %raid_map14.i139 = getelementptr inbounds %struct.btrfs_io_context, ptr %116, i32 0, i32 13
  %117 = ptrtoint ptr %raid_map14.i139 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %raid_map14.i139, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %118, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %120)
  %cmp.not.i140 = icmp eq i64 %114, %120
  br i1 %cmp.not.i140, label %if.end17.i145, label %if.end12.i141.rbio_can_merge.exit157_crit_edge

if.end12.i141.rbio_can_merge.exit157_crit_edge:   ; preds = %if.end12.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.end17.i145:                                    ; preds = %if.end12.i141
  %operation.i142 = getelementptr i8, ptr %.pn121210, i32 28
  %121 = ptrtoint ptr %operation.i142 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %operation.i142, align 4
  %123 = ptrtoint ptr %operation18.i143 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %operation18.i143, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp19.not.i144 = icmp eq i32 %122, %124
  br i1 %cmp19.not.i144, label %if.end21.i146, label %if.end17.i145.rbio_can_merge.exit157_crit_edge

if.end17.i145.rbio_can_merge.exit157_crit_edge:   ; preds = %if.end17.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.end21.i146:                                    ; preds = %if.end17.i145
  %125 = zext i32 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %122, label %if.end21.i146.if.then52_crit_edge [
    i32 2, label %if.end21.i146.rbio_can_merge.exit157_crit_edge
    i32 3, label %if.end21.i146.rbio_can_merge.exit157_crit_edge232
    i32 1, label %if.then32.i154
  ]

if.end21.i146.rbio_can_merge.exit157_crit_edge232: ; preds = %if.end21.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.end21.i146.rbio_can_merge.exit157_crit_edge:   ; preds = %if.end21.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.end21.i146.if.then52_crit_edge:                ; preds = %if.end21.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

if.then32.i154:                                   ; preds = %if.end21.i146
  %faila.i147 = getelementptr i8, ptr %.pn121210, i32 32
  %126 = ptrtoint ptr %faila.i147 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %faila.i147, align 4
  %failb.i148 = getelementptr i8, ptr %.pn121210, i32 36
  %128 = ptrtoint ptr %failb.i148 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %failb.i148, align 4
  %130 = ptrtoint ptr %faila33.i149 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %faila33.i149, align 4
  %132 = ptrtoint ptr %failb34.i150 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %failb34.i150, align 4
  %134 = tail call i32 @llvm.smin.i32(i32 %127, i32 %129) #11
  %135 = tail call i32 @llvm.smax.i32(i32 %127, i32 %129) #11
  %136 = tail call i32 @llvm.smin.i32(i32 %131, i32 %133) #11
  %137 = tail call i32 @llvm.smax.i32(i32 %131, i32 %133) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp49.not.i151 = icmp eq i32 %134, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp51.not.i152 = icmp eq i32 %135, %137
  %or.cond.i153 = select i1 %cmp49.not.i151, i1 %cmp51.not.i152, i1 false
  br i1 %or.cond.i153, label %if.then32.i154.if.then52_crit_edge, label %if.then32.i154.rbio_can_merge.exit157_crit_edge

if.then32.i154.rbio_can_merge.exit157_crit_edge:  ; preds = %if.then32.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_can_merge.exit157

if.then32.i154.if.then52_crit_edge:               ; preds = %if.then32.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then52

rbio_can_merge.exit157:                           ; preds = %if.then32.i154.rbio_can_merge.exit157_crit_edge, %if.end21.i146.rbio_can_merge.exit157_crit_edge, %if.end21.i146.rbio_can_merge.exit157_crit_edge232, %if.end17.i145.rbio_can_merge.exit157_crit_edge, %if.end12.i141.rbio_can_merge.exit157_crit_edge, %lor.lhs.false7.i137.rbio_can_merge.exit157_crit_edge, %if.end.i135.rbio_can_merge.exit157_crit_edge, %lor.lhs.false.i133.rbio_can_merge.exit157_crit_edge, %for.body49.rbio_can_merge.exit157_crit_edge
  %138 = ptrtoint ptr %.pn121210 to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn121 = load ptr, ptr %.pn121210, align 4
  %cmp46.not = icmp eq ptr %.pn121, %plug_list39
  br i1 %cmp46.not, label %rbio_can_merge.exit157.for.end_crit_edge, label %rbio_can_merge.exit157.for.body49_crit_edge

rbio_can_merge.exit157.for.body49_crit_edge:      ; preds = %rbio_can_merge.exit157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49

rbio_can_merge.exit157.for.end_crit_edge:         ; preds = %rbio_can_merge.exit157
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then52:                                        ; preds = %if.then32.i154.if.then52_crit_edge, %if.end21.i146.if.then52_crit_edge
  %bio_list.i158 = getelementptr i8, ptr %.pn121210, i32 -52
  %bio_list1.i159 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %139 = ptrtoint ptr %bio_list1.i159 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %bio_list1.i159, align 4
  %tobool.not.i.i160 = icmp eq ptr %140, null
  br i1 %tobool.not.i.i160, label %if.then52.merge_rbio.exit175_crit_edge, label %if.end.i.i163

if.then52.merge_rbio.exit175_crit_edge:           ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %merge_rbio.exit175

if.end.i.i163:                                    ; preds = %if.then52
  %tail.i.i161 = getelementptr i8, ptr %.pn121210, i32 -48
  %141 = ptrtoint ptr %tail.i.i161 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tail.i.i161, align 4
  %tobool1.not.i.i162 = icmp eq ptr %142, null
  br i1 %tobool1.not.i.i162, label %if.else.i.i165, label %if.then2.i.i164

if.then2.i.i164:                                  ; preds = %if.end.i.i163
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %142, align 8
  br label %if.end7.i.i167

if.else.i.i165:                                   ; preds = %if.end.i.i163
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %bio_list.i158 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %140, ptr %bio_list.i158, align 4
  br label %if.end7.i.i167

if.end7.i.i167:                                   ; preds = %if.else.i.i165, %if.then2.i.i164
  %tail8.i.i166 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %tail8.i.i166 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tail8.i.i166, align 4
  %147 = ptrtoint ptr %tail.i.i161 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %tail.i.i161, align 4
  br label %merge_rbio.exit175

merge_rbio.exit175:                               ; preds = %if.end7.i.i167, %if.then52.merge_rbio.exit175_crit_edge
  %bio_list_bytes.i168 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 17
  %148 = ptrtoint ptr %bio_list_bytes.i168 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bio_list_bytes.i168, align 4
  %bio_list_bytes2.i169 = getelementptr i8, ptr %.pn121210, i32 48
  %150 = ptrtoint ptr %bio_list_bytes2.i169 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %bio_list_bytes2.i169, align 4
  %add.i170 = add i32 %151, %149
  store i32 %add.i170, ptr %bio_list_bytes2.i169, align 4
  %generic_bio_cnt3.i172 = getelementptr i8, ptr %.pn121210, i32 52
  br label %if.end76

for.end:                                          ; preds = %rbio_can_merge.exit157.for.end_crit_edge, %if.end37.for.end_crit_edge
  %plug_list60 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 6
  %prev.i = getelementptr i8, ptr %.pn, i32 144
  %152 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %prev.i, align 4
  %call.i.i176 = tail call zeroext i1 @__list_add_valid(ptr noundef %plug_list60, ptr noundef %153, ptr noundef %plug_list39) #11
  br i1 %call.i.i176, label %if.end.i.i177, label %for.end.if.end76.thread199_crit_edge

for.end.if.end76.thread199_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.thread199

if.end.i.i177:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %plug_list60, ptr %prev.i, align 4
  %155 = ptrtoint ptr %plug_list60 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %plug_list39, ptr %plug_list60, align 4
  %prev3.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 6, i32 1
  %156 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev3.i.i, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %plug_list60, ptr %153, align 4
  br label %if.end76.thread199

if.end76.thread199:                               ; preds = %if.end.i.i177, %for.end.if.end76.thread199_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br label %if.end79

lockit:                                           ; preds = %refcount_dec.exit, %for.cond.lockit_crit_edge
  %cache_drop.0 = phi ptr [ %cur.0.le, %refcount_dec.exit ], [ null, %for.cond.lockit_crit_edge ]
  %refs70 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs70, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refs70, i32 1, i32 3, i32 1) #11
  %158 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs70, ptr %refs70, i32 1, ptr elementtype(i32) %refs70) #11, !srcloc !63
  %asmresult.i.i.i.i.i178 = extractvalue { i32, i32, i32 } %158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i178)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i178, 0
  br i1 %tobool1.not.i.i.i, label %lockit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !56

lockit.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %lockit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %lockit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i178, 1
  %159 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i178
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %159)
  %.not.i.i.i = icmp sgt i32 %159, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !59

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %lockit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %lockit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs70, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %hash_list71 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1
  %160 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr, align 4
  %call.i.i179 = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list71, ptr noundef %add.ptr, ptr noundef %161) #11
  br i1 %call.i.i179, label %if.end.i.i181, label %refcount_inc.exit.out_crit_edge

refcount_inc.exit.out_crit_edge:                  ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end.i.i181:                                    ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %hash_list71, ptr %prev1.i.i, align 4
  %163 = ptrtoint ptr %hash_list71 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %161, ptr %hash_list71, align 4
  %prev3.i.i180 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1, i32 1
  %164 = ptrtoint ptr %prev3.i.i180 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %add.ptr, ptr %prev3.i.i180, align 4
  %165 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %hash_list71, ptr %add.ptr, align 4
  br label %out

out:                                              ; preds = %if.end.i.i181, %refcount_inc.exit.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %tobool74.not = icmp eq ptr %cache_drop.0, null
  br i1 %tobool74.not, label %out.if.end79_crit_edge, label %if.then75

out.if.end79_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then75:                                        ; preds = %out
  %flags1.i182 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %cache_drop.0, i32 0, i32 7
  %166 = ptrtoint ptr %flags1.i182 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %flags1.i182, align 4
  %168 = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i183 = icmp eq i32 %168, 0
  br i1 %tobool.not.i183, label %if.then75.if.end79_crit_edge, label %if.end.i184

if.then75.if.end79_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.end.i184:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %169 = ptrtoint ptr %cache_drop.0 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %cache_drop.0, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_io_context, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %fs_info.i, align 8
  %stripe_hash_table.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %172, i32 0, i32 52
  %173 = ptrtoint ptr %stripe_hash_table.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %stripe_hash_table.i, align 4
  %cache_lock.i = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %174, i32 0, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock.i) #11
  tail call fastcc void @__remove_rbio_from_cache(ptr noundef nonnull %cache_drop.0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i, i32 noundef %call4.i) #11
  br label %if.end79

if.end76:                                         ; preds = %merge_rbio.exit175, %merge_rbio.exit
  %generic_bio_cnt3.i.sink220 = phi ptr [ %generic_bio_cnt3.i, %merge_rbio.exit ], [ %generic_bio_cnt3.i172, %merge_rbio.exit175 ]
  %bio_list1.i.sink = phi ptr [ %bio_list1.i, %merge_rbio.exit ], [ %bio_list1.i159, %merge_rbio.exit175 ]
  %.sink219.in = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 18
  %175 = ptrtoint ptr %.sink219.in to i32
  call void @__asan_load4_noabort(i32 %175)
  %.sink219 = load i32, ptr %.sink219.in, align 4
  %176 = ptrtoint ptr %generic_bio_cnt3.i.sink220 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %generic_bio_cnt3.i.sink220, align 4
  %add4.i = add i32 %177, %.sink219
  store i32 %add4.i, ptr %generic_bio_cnt3.i.sink220, align 4
  %tail.i11.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4, i32 1
  %178 = ptrtoint ptr %tail.i11.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %tail.i11.i, align 4
  %179 = ptrtoint ptr %bio_list1.i.sink to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr null, ptr %bio_list1.i.sink, align 4
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %tobool77.not = icmp eq ptr %rbio, null
  br i1 %tobool77.not, label %if.end76.if.end79_crit_edge, label %if.then78

if.end76.if.end79_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__free_raid_bio(ptr noundef nonnull %rbio)
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end76.if.end79_crit_edge, %if.end.i184, %if.then75.if.end79_crit_edge, %out.if.end79_crit_edge, %if.end76.thread199
  %ret.0193198 = phi i32 [ 1, %if.then78 ], [ 1, %if.end76.if.end79_crit_edge ], [ 1, %if.end76.thread199 ], [ 0, %out.if.end79_crit_edge ], [ 0, %if.then75.if.end79_crit_edge ], [ 0, %if.end.i184 ]
  ret i32 %ret.0193198
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__raid56_parity_recover(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  %bio_list = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bio_list) #11
  %0 = getelementptr inbounds %struct.bio_list, ptr %bio_list, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %0, align 4
  %2 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio_list, align 4
  %nr_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 16
  %3 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.i = icmp sgt i32 %4, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %stripe_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %i.014.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool1.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup34_crit_edge, label %if.end3.i

if.end.i.cleanup34_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %10, i32 %i.014.i
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i.i, ptr %arrayidx5.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %12 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pages.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #11
  %14 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %error, align 4
  %real_stripes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 10
  %15 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp34 = icmp sgt i32 %16, 0
  br i1 %cmp34, label %for.body.lr.ph, label %if.end.for.cond.i.preheader_crit_edge

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %faila = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %failb = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %stripe_npages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %stripe_pages.i4 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %stripe_len = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %for.body.lr.ph
  %stripe.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %17 = ptrtoint ptr %faila to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %faila, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %stripe.035)
  %cmp1 = icmp eq i32 %18, %stripe.035
  br i1 %cmp1, label %for.body.if.then3_crit_edge, label %lor.lhs.false

for.body.if.then3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false:                                    ; preds = %for.body
  %19 = ptrtoint ptr %failb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %failb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %stripe.035)
  %cmp2 = icmp eq i32 %20, %stripe.035
  br i1 %cmp2, label %lor.lhs.false.if.then3_crit_edge, label %for.cond6.preheader

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

for.cond6.preheader:                              ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp731 = icmp sgt i32 %22, 0
  br i1 %cmp731, label %for.cond6.preheader.for.body8_crit_edge, label %for.cond6.preheader.for.inc19_crit_edge

for.cond6.preheader.for.inc19_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %for.body.if.then3_crit_edge
  %call.i.i1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error, ptr %error, i32 1, ptr elementtype(i32) %error) #11, !srcloc !64
  br label %for.inc19

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %24 = phi i32 [ %50, %for.inc.for.body8_crit_edge ], [ %22, %for.cond6.preheader.for.body8_crit_edge ]
  %pagenr.032 = phi i32 [ %inc, %for.inc.for.body8_crit_edge ], [ 0, %for.cond6.preheader.for.body8_crit_edge ]
  %25 = ptrtoint ptr %stripe_pages.i4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stripe_pages.i4, align 4
  %mul.i.i = mul i32 %24, %stripe.035
  %add.i.i = add i32 %mul.i.i, %pagenr.032
  %arrayidx.i5 = getelementptr ptr, ptr %26, i32 %add.i.i
  %27 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i5, align 4
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %28 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %33, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i, label %if.end13, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  br label %for.inc

if.end13:                                         ; preds = %folio_flags.exit.i.i
  %41 = ptrtoint ptr %stripe_pages.i4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stripe_pages.i4, align 4
  %43 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stripe_npages, align 4
  %mul.i.i8 = mul i32 %44, %stripe.035
  %add.i.i9 = add i32 %mul.i.i8, %pagenr.032
  %arrayidx.i10 = getelementptr ptr, ptr %42, i32 %add.i.i9
  %45 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i10, align 4
  %47 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stripe_len, align 4
  %call15 = call fastcc i32 @rbio_add_io_page(ptr noundef %rbio, ptr noundef nonnull %bio_list, ptr noundef %46, i32 noundef %stripe.035, i32 noundef %pagenr.032, i32 noundef %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end13.cleanup34_crit_edge, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end13.cleanup34_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %PageUptodate.exit
  %inc = add nuw nsw i32 %pagenr.032, 1
  %49 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stripe_npages, align 4
  %cmp7 = icmp slt i32 %inc, %50
  br i1 %cmp7, label %for.inc.for.body8_crit_edge, label %for.inc.for.inc19_crit_edge

for.inc.for.inc19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc19

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.inc19:                                        ; preds = %for.inc.for.inc19_crit_edge, %if.then3, %for.cond6.preheader.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %stripe.035, 1
  %51 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %real_stripes, align 4
  %cmp = icmp slt i32 %inc20, %52
  br i1 %cmp, label %for.inc19.for.body_crit_edge, label %for.inc19.for.cond.i.preheader_crit_edge

for.inc19.for.cond.i.preheader_crit_edge:         ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.i.preheader:                             ; preds = %for.inc19.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %sz.0.i = phi i32 [ %inc.i12, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %bio.0.in.i = phi ptr [ %bio.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %bio_list, %for.cond.i.preheader ]
  %53 = ptrtoint ptr %bio.0.in.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bio.0.i = load ptr, ptr %bio.0.in.i, align 4
  %tobool.not.i11 = icmp eq ptr %bio.0.i, null
  %inc.i12 = add i32 %sz.0.i, 1
  br i1 %tobool.not.i11, label %bio_list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

bio_list_size.exit:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.0.i)
  %tobool23.not = icmp eq i32 %sz.0.i, 0
  br i1 %tobool23.not, label %if.then24, label %if.end29

if.then24:                                        ; preds = %bio_list_size.exit
  %call.i.i2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error, i32 noundef 4) #11
  %54 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %error, align 4
  %56 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rbio, align 4
  %max_errors = getelementptr inbounds %struct.btrfs_io_context, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %max_errors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_errors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %59)
  %cmp27.not = icmp sgt i32 %55, %59
  br i1 %cmp27.not, label %if.then24.cleanup34_crit_edge, label %if.then28

if.then24.cleanup34_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__raid_recover_end_io(ptr noundef %rbio)
  br label %cleanup46

if.end29:                                         ; preds = %bio_list_size.exit
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 20
  %call.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  %60 = ptrtoint ptr %stripes_pending to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %sz.0.i, ptr %stripes_pending, align 4
  %61 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %bio_list.promoted = load ptr, ptr %bio_list, align 4
  %tobool.not.i1340 = icmp eq ptr %bio_list.promoted, null
  br i1 %tobool.not.i1340, label %if.end29.cleanup46_crit_edge, label %if.end29.if.then.i_crit_edge

if.end29.if.then.i_crit_edge:                     ; preds = %if.end29
  br label %if.then.i

if.end29.cleanup46_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.end29.if.then.i_crit_edge
  %62 = phi ptr [ %64, %if.then.i.if.then.i_crit_edge ], [ %bio_list.promoted, %if.end29.if.then.i_crit_edge ]
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  %tobool4.not.i = icmp eq ptr %64, null
  store ptr null, ptr %62, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 11
  %65 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rbio, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 10
  %66 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @raid_recover_end_io, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %62, i32 0, i32 2
  %67 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %bi_opf, align 8
  %68 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rbio, align 4
  %fs_info = getelementptr inbounds %struct.btrfs_io_context, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fs_info, align 8
  %call33 = tail call zeroext i8 @btrfs_bio_wq_end_io(ptr noundef %71, ptr noundef nonnull %62, i32 noundef 3) #11
  tail call void @submit_bio(ptr noundef nonnull %62) #11
  br i1 %tobool4.not.i, label %if.then.i.cleanup46_crit_edge, label %if.then.i.if.then.i_crit_edge

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.cleanup46_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

cleanup34:                                        ; preds = %if.then24.cleanup34_crit_edge, %if.end13.cleanup34_crit_edge, %if.end.i.cleanup34_crit_edge
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 12
  %72 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %operation, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %73, label %cleanup34.if.end40_crit_edge [
    i32 1, label %cleanup34.if.then39_crit_edge
    i32 3, label %cleanup34.if.then39_crit_edge68
  ]

cleanup34.if.then39_crit_edge68:                  ; preds = %cleanup34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

cleanup34.if.then39_crit_edge:                    ; preds = %cleanup34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

cleanup34.if.end40_crit_edge:                     ; preds = %cleanup34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then39:                                        ; preds = %cleanup34.if.then39_crit_edge, %cleanup34.if.then39_crit_edge68
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext 10)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %cleanup34.if.end40_crit_edge
  %75 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %bio_list.promoted42 = load ptr, ptr %bio_list, align 4
  %tobool.not.i1646 = icmp eq ptr %bio_list.promoted42, null
  br i1 %tobool.not.i1646, label %if.end40.cleanup46_crit_edge, label %if.end40.if.then.i18_crit_edge

if.end40.if.then.i18_crit_edge:                   ; preds = %if.end40
  br label %if.then.i18

if.end40.cleanup46_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

if.then.i18:                                      ; preds = %if.then.i18.if.then.i18_crit_edge, %if.end40.if.then.i18_crit_edge
  %76 = phi ptr [ %78, %if.then.i18.if.then.i18_crit_edge ], [ %bio_list.promoted42, %if.end40.if.then.i18_crit_edge ]
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 8
  %tobool4.not.i17 = icmp eq ptr %78, null
  store ptr null, ptr %76, align 8
  tail call void @bio_put(ptr noundef nonnull %76) #11
  br i1 %tobool4.not.i17, label %if.then.i18.cleanup46_crit_edge, label %if.then.i18.if.then.i18_crit_edge

if.then.i18.if.then.i18_crit_edge:                ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i18

if.then.i18.cleanup46_crit_edge:                  ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup46

cleanup46:                                        ; preds = %if.then.i18.cleanup46_crit_edge, %if.end40.cleanup46_crit_edge, %if.then.i.cleanup46_crit_edge, %if.end29.cleanup46_crit_edge, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bio_list) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @raid56_parity_alloc_scrub_rbio(ptr noundef %bio, ptr noundef %bioc, i64 noundef %stripe_len, ptr noundef readnone %scrub_dev, ptr nocapture noundef readonly %dbitmap, i32 noundef %stripe_nsectors) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_info1 = getelementptr inbounds %struct.btrfs_io_context, ptr %bioc, i32 0, i32 2
  %0 = ptrtoint ptr %fs_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_info1, align 8
  %call = tail call fastcc ptr @alloc_rbio(ptr noundef %bioc, i64 noundef %stripe_len)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bio, ptr %4, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bio, ptr %bio_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bio, ptr %tail.i, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %cond.end, label %cond.false, !prof !59

cond.false:                                       ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 2239) #15
  unreachable

cond.end:                                         ; preds = %bio_list_add.exit
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 12
  %10 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %operation, align 4
  %nr_data = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 9
  %11 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_data, align 4
  %real_stripes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp67 = icmp slt i32 %12, %14
  br i1 %cmp67, label %cond.end.for.body_crit_edge, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %12, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.btrfs_io_context, ptr %bioc, i32 0, i32 14, i32 %i.068
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %cmp6 = icmp eq ptr %16, %scrub_dev
  br i1 %cmp6, label %if.then7, label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %scrubp = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %scrubp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.068, ptr %scrubp, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7, %cond.end.for.end_crit_edge
  %i.065 = phi i32 [ %i.068, %if.then7 ], [ %12, %cond.end.for.end_crit_edge ], [ %14, %for.inc.for.end_crit_edge ]
  %18 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.065, i32 %19)
  %cmp10 = icmp slt i32 %i.065, %19
  br i1 %cmp10, label %cond.end19, label %cond.false18, !prof !59

cond.false18:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.8, i32 noundef 2253) #15
  unreachable

cond.end19:                                       ; preds = %for.end
  %sectorsize = getelementptr inbounds %struct.btrfs_fs_info, ptr %1, i32 0, i32 167
  %20 = ptrtoint ptr %sectorsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sectorsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %cmp20 = icmp eq i32 %21, 4096
  br i1 %cmp20, label %cond.end29, label %cond.false28, !prof !59

cond.false28:                                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.9, i32 noundef 2256) #15
  unreachable

cond.end29:                                       ; preds = %cond.end19
  %stripe_npages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 11
  %22 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %stripe_nsectors)
  %cmp30 = icmp eq i32 %23, %stripe_nsectors
  br i1 %cmp30, label %cond.end39, label %cond.false38, !prof !59

cond.false38:                                     ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.10, i32 noundef 2257) #15
  unreachable

cond.end39:                                       ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #13
  %dbitmap40 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 24
  %24 = ptrtoint ptr %dbitmap40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dbitmap40, align 4
  %sub.i = add i32 %stripe_nsectors, 31
  %26 = lshr i32 %sub.i, 3
  %mul.i = and i32 %26, 536870908
  %27 = call ptr @memcpy(ptr %25, ptr %dbitmap, i32 %mul.i)
  %generic_bio_cnt = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 18
  %28 = ptrtoint ptr %generic_bio_cnt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %generic_bio_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end39, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %cond.end39 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raid56_add_scrub_pages(ptr nocapture noundef readonly %rbio, ptr noundef %page, i64 noundef %logical) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %raid_map = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %raid_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_map, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %logical)
  %cmp.not = icmp ugt i64 %5, %logical
  br i1 %cmp.not, label %cond.false, label %cond.end, !prof !56

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.11, i32 noundef 2276) #15
  unreachable

cond.end:                                         ; preds = %entry
  %add = add i64 %logical, 4096
  %stripe_len = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  %6 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stripe_len, align 4
  %nr_data = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  %8 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_data, align 4
  %mul = mul i32 %9, %7
  %conv = sext i32 %mul to i64
  %add5 = add i64 %5, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add5)
  %cmp6.not = icmp ugt i64 %add, %add5
  br i1 %cmp6.not, label %cond.false15, label %cond.end16, !prof !56

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.12, i32 noundef 2278) #15
  unreachable

cond.end16:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i64 %logical, %5
  %conv20 = trunc i64 %sub to i32
  %shr = ashr i32 %conv20, 12
  %bio_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  %10 = ptrtoint ptr %bio_pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bio_pages, align 4
  %arrayidx21 = getelementptr ptr, ptr %11, i32 %shr
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %page, ptr %arrayidx21, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raid56_parity_submit_scrub_rbio(ptr noundef %rbio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lock_stripe_add(ptr noundef %rbio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %work.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 3
  tail call void @btrfs_init_work(ptr noundef %work.i, ptr noundef nonnull @scrub_parity_work, ptr noundef null, ptr noundef null) #11
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 8
  %rmw_workers.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %rmw_workers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw_workers.i, align 8
  tail call void @btrfs_queue_work(ptr noundef %5, ptr noundef %work.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_async_work(ptr noundef %rbio, ptr noundef %work_func) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 3
  tail call void @btrfs_init_work(ptr noundef %work, ptr noundef %work_func, ptr noundef null, ptr noundef null) #11
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %fs_info = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info, align 8
  %rmw_workers = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %rmw_workers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw_workers, align 8
  tail call void @btrfs_queue_work(ptr noundef %5, ptr noundef %work) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scrub_parity_work(ptr noundef %work) #0 align 64 {
entry:
  %bio_list.i = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bio_list.i) #11
  %0 = getelementptr inbounds %struct.bio_list, ptr %bio_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %0, align 4
  %2 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio_list.i, align 4
  %dbitmap.i.i = getelementptr i8, ptr %work, i32 200
  %3 = ptrtoint ptr %dbitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbitmap.i.i, align 4
  %stripe_npages.i.i = getelementptr i8, ptr %work, i32 148
  %5 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stripe_npages.i.i, align 4
  %call.i.i = tail call i32 @_find_next_bit_be(ptr noundef %4, i32 noundef %6, i32 noundef 0) #11
  %7 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stripe_npages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %8)
  %cmp38.i.i = icmp slt i32 %call.i.i, %8
  br i1 %cmp38.i.i, label %for.cond2.preheader.lr.ph.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.cond2.preheader.lr.ph.i.i:                    ; preds = %entry
  %real_stripes.i.i = getelementptr i8, ptr %work, i32 144
  %stripe_pages.i.i = getelementptr i8, ptr %work, i32 192
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %for.inc12.i.i.for.cond2.preheader.i.i_crit_edge, %for.cond2.preheader.lr.ph.i.i
  %bit.039.i.i = phi i32 [ %call.i.i, %for.cond2.preheader.lr.ph.i.i ], [ %call16.i.i, %for.inc12.i.i.for.cond2.preheader.i.i_crit_edge ]
  %9 = ptrtoint ptr %real_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %real_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp336.i.i = icmp sgt i32 %10, 0
  br i1 %cmp336.i.i, label %for.cond2.preheader.i.i.for.body4.i.i_crit_edge, label %for.cond2.preheader.i.i.for.inc12.i.i_crit_edge

for.cond2.preheader.i.i.for.inc12.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc12.i.i

for.cond2.preheader.i.i.for.body4.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.inc.i.i.for.body4.i.i_crit_edge, %for.cond2.preheader.i.i.for.body4.i.i_crit_edge
  %i.037.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body4.i.i_crit_edge ], [ 0, %for.cond2.preheader.i.i.for.body4.i.i_crit_edge ]
  %11 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stripe_npages.i.i, align 4
  %mul.i.i = mul i32 %12, %i.037.i.i
  %add.i.i = add i32 %mul.i.i, %bit.039.i.i
  %13 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %add.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body4.i.i.for.inc.i.i_crit_edge

for.body4.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body4.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool7.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.cleanup31.i_crit_edge, label %if.end9.i.i

if.end.i.i.cleanup31.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx11.i.i = getelementptr ptr, ptr %18, i32 %add.i.i
  %19 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx11.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end9.i.i, %for.body4.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.037.i.i, 1
  %20 = ptrtoint ptr %real_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %real_stripes.i.i, align 4
  %cmp3.i.i = icmp slt i32 %inc.i.i, %21
  br i1 %cmp3.i.i, label %for.inc.i.i.for.body4.i.i_crit_edge, label %for.inc.i.i.for.inc12.i.i_crit_edge

for.inc.i.i.for.inc12.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc12.i.i

for.inc.i.i.for.body4.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4.i.i

for.inc12.i.i:                                    ; preds = %for.inc.i.i.for.inc12.i.i_crit_edge, %for.cond2.preheader.i.i.for.inc12.i.i_crit_edge
  %22 = ptrtoint ptr %dbitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dbitmap.i.i, align 4
  %24 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stripe_npages.i.i, align 4
  %add15.i.i = add i32 %bit.039.i.i, 1
  %call16.i.i = tail call i32 @_find_next_bit_be(ptr noundef %23, i32 noundef %25, i32 noundef %add15.i.i) #11
  %26 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %stripe_npages.i.i, align 4
  %cmp.i.i = icmp slt i32 %call16.i.i, %27
  br i1 %cmp.i.i, label %for.inc12.i.i.for.cond2.preheader.i.i_crit_edge, label %for.inc12.i.i.if.end.i_crit_edge

for.inc12.i.i.if.end.i_crit_edge:                 ; preds = %for.inc12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc12.i.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %for.inc12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond2.preheader.i.i

if.end.i:                                         ; preds = %for.inc12.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %error.i = getelementptr i8, ptr %work, i32 188
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error.i, i32 noundef 4) #11
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %error.i, align 4
  %real_stripes.i = getelementptr i8, ptr %work, i32 144
  %29 = ptrtoint ptr %real_stripes.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %real_stripes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp109.i = icmp sgt i32 %30, 0
  br i1 %cmp109.i, label %for.body.lr.ph.i, label %if.end.i.for.cond.i.i.preheader_crit_edge

if.end.i.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.preheader

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %stripe_len.i.i = getelementptr i8, ptr %work, i32 136
  %bio_list_lock.i.i = getelementptr i8, ptr %work, i32 80
  %bio_pages.i.i = getelementptr i8, ptr %work, i32 196
  %stripe_pages.i84.i = getelementptr i8, ptr %work, i32 192
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %stripe.0110.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc22.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %dbitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dbitmap.i.i, align 4
  %33 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stripe_npages.i.i, align 4
  %call1.i = tail call i32 @_find_next_bit_be(ptr noundef %32, i32 noundef %34, i32 noundef 0) #11
  %35 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stripe_npages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %36)
  %cmp4106.i = icmp slt i32 %call1.i, %36
  br i1 %cmp4106.i, label %for.body.i.for.body5.i_crit_edge, label %for.body.i.for.inc22.i_crit_edge

for.body.i.for.inc22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22.i

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %pagenr.0107.i = phi i32 [ %call21.i, %for.inc.i.for.body5.i_crit_edge ], [ %call1.i, %for.body.i.for.body5.i_crit_edge ]
  %37 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stripe_len.i.i, align 4
  %shr.i.i = ashr i32 %38, 12
  %mul.i79.i = mul i32 %shr.i.i, %stripe.0110.i
  %add.i80.i = add i32 %mul.i79.i, %pagenr.0107.i
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock.i.i) #11
  %39 = ptrtoint ptr %bio_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bio_pages.i.i, align 4
  %arrayidx.i81.i = getelementptr ptr, ptr %40, i32 %add.i80.i
  %41 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i81.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock.i.i) #11
  %tobool7.not.i = icmp eq ptr %42, null
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body5.i.for.inc.i_crit_edge

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body5.i
  %43 = ptrtoint ptr %stripe_pages.i84.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stripe_pages.i84.i, align 4
  %45 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stripe_npages.i.i, align 4
  %mul.i.i.i = mul i32 %46, %stripe.0110.i
  %add.i.i.i = add i32 %mul.i.i.i, %pagenr.0107.i
  %arrayidx.i85.i = getelementptr ptr, ptr %44, i32 %add.i.i.i
  %47 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i85.i, align 4
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %51, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %48 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %52, %if.end.i.i.i ]
  %53 = inttoptr i32 %retval.0.i.i.i to ptr
  %54 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !59

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %53, align 4
  %60 = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.i.not.i.i, label %if.end14.i, label %PageUptodate.exit.i

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  br label %for.inc.i

if.end14.i:                                       ; preds = %folio_flags.exit.i.i.i
  %61 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stripe_len.i.i, align 4
  %call15.i = call fastcc i32 @rbio_add_io_page(ptr noundef %add.ptr, ptr noundef nonnull %bio_list.i, ptr noundef %48, i32 noundef %stripe.0110.i, i32 noundef %pagenr.0107.i, i32 noundef %62) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.for.inc.i_crit_edge, label %if.end14.i.cleanup31.i_crit_edge

if.end14.i.cleanup31.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup31.i

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %PageUptodate.exit.i, %for.body5.i.for.inc.i_crit_edge
  %63 = ptrtoint ptr %dbitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dbitmap.i.i, align 4
  %65 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stripe_npages.i.i, align 4
  %add.i = add nsw i32 %pagenr.0107.i, 1
  %call21.i = tail call i32 @_find_next_bit_be(ptr noundef %64, i32 noundef %66, i32 noundef %add.i) #11
  %67 = ptrtoint ptr %stripe_npages.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %stripe_npages.i.i, align 4
  %cmp4.i = icmp slt i32 %call21.i, %68
  br i1 %cmp4.i, label %for.inc.i.for.body5.i_crit_edge, label %for.inc.i.for.inc22.i_crit_edge

for.inc.i.for.inc22.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc22.i

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.inc22.i:                                      ; preds = %for.inc.i.for.inc22.i_crit_edge, %for.body.i.for.inc22.i_crit_edge
  %inc.i = add nuw nsw i32 %stripe.0110.i, 1
  %69 = ptrtoint ptr %real_stripes.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %real_stripes.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %70
  br i1 %cmp.i, label %for.inc22.i.for.body.i_crit_edge, label %for.inc22.i.for.cond.i.i.preheader_crit_edge

for.inc22.i.for.cond.i.i.preheader_crit_edge:     ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.preheader

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.i.preheader:                           ; preds = %for.inc22.i.for.cond.i.i.preheader_crit_edge, %if.end.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %sz.0.i.i = phi i32 [ %inc.i87.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %for.cond.i.i.preheader ]
  %bio.0.in.i.i = phi ptr [ %bio.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %bio_list.i, %for.cond.i.i.preheader ]
  %71 = ptrtoint ptr %bio.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %bio.0.i.i = load ptr, ptr %bio.0.in.i.i, align 4
  %tobool.not.i86.i = icmp eq ptr %bio.0.i.i, null
  %inc.i87.i = add i32 %sz.0.i.i, 1
  br i1 %tobool.not.i86.i, label %bio_list_size.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

bio_list_size.exit.i:                             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.0.i.i)
  %tobool25.not.i = icmp eq i32 %sz.0.i.i, 0
  br i1 %tobool25.not.i, label %finish.i, label %if.end27.i

if.end27.i:                                       ; preds = %bio_list_size.exit.i
  %stripes_pending.i = getelementptr i8, ptr %work, i32 184
  %call.i.i78.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending.i, i32 noundef 4) #11
  %72 = ptrtoint ptr %stripes_pending.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %sz.0.i.i, ptr %stripes_pending.i, align 4
  %73 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %bio_list.promoted.i = load ptr, ptr %bio_list.i, align 4
  %tobool.not.i88113.i = icmp eq ptr %bio_list.promoted.i, null
  br i1 %tobool.not.i88113.i, label %if.end27.i.raid56_parity_scrub_stripe.exit_crit_edge, label %if.end27.i.if.then.i.i_crit_edge

if.end27.i.if.then.i.i_crit_edge:                 ; preds = %if.end27.i
  br label %if.then.i.i

if.end27.i.raid56_parity_scrub_stripe.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_parity_scrub_stripe.exit

if.then.i.i:                                      ; preds = %if.then.i.i.if.then.i.i_crit_edge, %if.end27.i.if.then.i.i_crit_edge
  %74 = phi ptr [ %76, %if.then.i.i.if.then.i.i_crit_edge ], [ %bio_list.promoted.i, %if.end27.i.if.then.i.i_crit_edge ]
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %tobool4.not.i.i = icmp eq ptr %76, null
  store ptr null, ptr %74, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 11
  %77 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 10
  %78 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @raid56_parity_scrub_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 2
  %79 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %bi_opf.i, align 8
  %80 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_io_context, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fs_info.i, align 8
  %call30.i = tail call zeroext i8 @btrfs_bio_wq_end_io(ptr noundef %83, ptr noundef nonnull %74, i32 noundef 3) #11
  tail call void @submit_bio(ptr noundef nonnull %74) #11
  br i1 %tobool4.not.i.i, label %if.then.i.i.raid56_parity_scrub_stripe.exit_crit_edge, label %if.then.i.i.if.then.i.i_crit_edge

if.then.i.i.if.then.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i.raid56_parity_scrub_stripe.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_parity_scrub_stripe.exit

cleanup31.i:                                      ; preds = %if.end14.i.cleanup31.i_crit_edge, %if.end.i.i.cleanup31.i_crit_edge
  tail call fastcc void @rbio_orig_end_io(ptr noundef %add.ptr, i8 noundef zeroext 10) #11
  %84 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bio_list.promoted115.i = load ptr, ptr %bio_list.i, align 4
  %tobool.not.i91119.i = icmp eq ptr %bio_list.promoted115.i, null
  br i1 %tobool.not.i91119.i, label %cleanup31.i.raid56_parity_scrub_stripe.exit_crit_edge, label %cleanup31.i.if.then.i93.i_crit_edge

cleanup31.i.if.then.i93.i_crit_edge:              ; preds = %cleanup31.i
  br label %if.then.i93.i

cleanup31.i.raid56_parity_scrub_stripe.exit_crit_edge: ; preds = %cleanup31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_parity_scrub_stripe.exit

if.then.i93.i:                                    ; preds = %if.then.i93.i.if.then.i93.i_crit_edge, %cleanup31.i.if.then.i93.i_crit_edge
  %85 = phi ptr [ %87, %if.then.i93.i.if.then.i93.i_crit_edge ], [ %bio_list.promoted115.i, %cleanup31.i.if.then.i93.i_crit_edge ]
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %tobool4.not.i92.i = icmp eq ptr %87, null
  store ptr null, ptr %85, align 8
  tail call void @bio_put(ptr noundef nonnull %85) #11
  br i1 %tobool4.not.i92.i, label %if.then.i93.i.raid56_parity_scrub_stripe.exit_crit_edge, label %if.then.i93.i.if.then.i93.i_crit_edge

if.then.i93.i.if.then.i93.i_crit_edge:            ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i93.i

if.then.i93.i.raid56_parity_scrub_stripe.exit_crit_edge: ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_parity_scrub_stripe.exit

finish.i:                                         ; preds = %bio_list_size.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @validate_rbio_for_parity_scrub(ptr noundef %add.ptr) #11
  br label %raid56_parity_scrub_stripe.exit

raid56_parity_scrub_stripe.exit:                  ; preds = %finish.i, %if.then.i93.i.raid56_parity_scrub_stripe.exit_crit_edge, %cleanup31.i.raid56_parity_scrub_stripe.exit_crit_edge, %if.then.i.i.raid56_parity_scrub_stripe.exit_crit_edge, %if.end27.i.raid56_parity_scrub_stripe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bio_list.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @raid56_alloc_missing_rbio(ptr noundef %bio, ptr noundef %bioc, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @alloc_rbio(ptr noundef %bioc, i64 noundef %length)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %operation, align 4
  %1 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bio, ptr %3, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bio, ptr %bio_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %bio, ptr %tail.i, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %cond.end, label %cond.false, !prof !59

cond.false:                                       ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.7, i32 noundef 2687) #15
  unreachable

cond.end:                                         ; preds = %bio_list_add.exit
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %9 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bi_iter.i, align 8
  %shl.i = shl i64 %10, 9
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 8
  %nr_data.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 9
  %11 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp16.i = icmp sgt i32 %12, 0
  br i1 %cmp16.i, label %for.body.lr.ph.i, label %cond.end.do.body_crit_edge

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %cond.end
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %raid_map.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %16, i32 %i.017.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %18)
  %cmp1.not.i = icmp ult i64 %shl.i, %18
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %19 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stripe_len.i, align 4
  %conv.i = sext i32 %20 to i64
  %add.i = add i64 %18, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %add.i)
  %cmp2.i = icmp ult i64 %shl.i, %add.i
  br i1 %cmp2.i, label %if.end12, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %12
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.inc.i.do.body_crit_edge, %cond.end.do.body_crit_edge
  %faila25 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 13
  %21 = ptrtoint ptr %faila25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %faila25, align 4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2691, 0\0A.popsection", ""() #11, !srcloc !67
  unreachable

if.end12:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %faila = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 13
  %22 = ptrtoint ptr %faila to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.017.i, ptr %faila, align 4
  %generic_bio_cnt = getelementptr inbounds %struct.btrfs_raid_bio, ptr %call, i32 0, i32 18
  %23 = ptrtoint ptr %generic_bio_cnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %generic_bio_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end12 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @raid56_submit_missing_rbio(ptr noundef %rbio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @lock_stripe_add(ptr noundef %rbio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %work.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 3
  tail call void @btrfs_init_work(ptr noundef %work.i, ptr noundef nonnull @read_rebuild_work, ptr noundef null, ptr noundef null) #11
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fs_info.i, align 8
  %rmw_workers.i = getelementptr inbounds %struct.btrfs_fs_info, ptr %3, i32 0, i32 82
  %4 = ptrtoint ptr %rmw_workers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmw_workers.i, align 8
  tail call void @btrfs_queue_work(ptr noundef %5, ptr noundef %work.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_rebuild_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  tail call fastcc void @__raid56_parity_recover(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__remove_rbio_from_cache(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_map.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %flags = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i.i = lshr i64 %5, 48
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %shr.i54 = lshr i64 %5, 16
  %conv.i.i = trunc i64 %shr.i54 to i32
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 21
  %fs_info = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fs_info, align 8
  %stripe_hash_table = getelementptr inbounds %struct.btrfs_fs_info, ptr %10, i32 0, i32 52
  %11 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stripe_hash_table, align 4
  %table2 = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %12, i32 0, i32 3
  %lock = getelementptr %struct.btrfs_stripe_hash, ptr %table2, i32 %shr.i.i.i, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %bio_list_lock) #11
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end34.critedge, label %if.then6

if.then6:                                         ; preds = %if.end
  %stripe_cache = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %stripe_cache) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del_init.exit_crit_edge

if.then6.list_del_init.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %stripe_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stripe_cache, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then6.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %stripe_cache to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %stripe_cache, ptr %stripe_cache, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %stripe_cache, ptr %prev.i3.i, align 4
  %cache_size = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %12, i32 0, i32 2
  %21 = ptrtoint ptr %cache_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cache_size, align 4
  %sub = add i32 %22, -1
  store i32 %sub, ptr %cache_size, align 4
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %23 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bio_list, align 4
  %cmp.i.not = icmp eq ptr %24, null
  br i1 %cmp.i.not, label %if.then9, label %list_del_init.exit.if.then33_crit_edge

list_del_init.exit.if.then33_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then9:                                         ; preds = %list_del_init.exit
  %hash_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1
  %25 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %hash_list, align 4
  %cmp.i55.not = icmp eq ptr %26, %hash_list
  br i1 %cmp.i55.not, label %if.then9.if.then33_crit_edge, label %if.then12

if.then9.if.then33_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

if.then12:                                        ; preds = %if.then9
  %call.i.i57 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list) #11
  br i1 %call.i.i57, label %if.end.i.i60, label %if.then12.list_del_init.exit62_crit_edge

if.then12.list_del_init.exit62_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit62

if.end.i.i60:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i58 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i58, align 4
  %29 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hash_list, align 4
  %prev1.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i59, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit62

list_del_init.exit62:                             ; preds = %if.end.i.i60, %if.then12.list_del_init.exit62_crit_edge
  %33 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i3.i61 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i3.i61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %hash_list, ptr %prev.i3.i61, align 4
  %refs = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #11, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %list_del_init.exit62.refcount_dec.exit_crit_edge, !prof !56

list_del_init.exit62.refcount_dec.exit_crit_edge: ; preds = %list_del_init.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %list_del_init.exit62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 4) #11
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %list_del_init.exit62.refcount_dec.exit_crit_edge
  %plug_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 6
  %36 = ptrtoint ptr %plug_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %plug_list, align 4
  %cmp.i63.not = icmp eq ptr %37, %plug_list
  br i1 %cmp.i63.not, label %refcount_dec.exit.if.then33_crit_edge, label %do.body20, !prof !59

refcount_dec.exit.if.then33_crit_edge:            ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

do.body20:                                        ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #11, !srcloc !68
  unreachable

if.then33:                                        ; preds = %refcount_dec.exit.if.then33_crit_edge, %if.then9.if.then33_crit_edge, %list_del_init.exit.if.then33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  tail call fastcc void @__free_raid_bio(ptr noundef %rbio)
  br label %cleanup

if.end34.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end34.critedge, %if.then33, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__free_raid_bio(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refs = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 19
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #11, !srcloc !62
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !59

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 3) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  %stripe_cache = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2
  %1 = ptrtoint ptr %stripe_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %stripe_cache, align 4
  %cmp.i.not = icmp eq ptr %2, %stripe_cache
  br i1 %cmp.i.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !59

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 828, i32 noundef 9, ptr noundef null) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %hash_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1
  %3 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hash_list, align 4
  %cmp.i115.not = icmp eq ptr %4, %hash_list
  br i1 %cmp.i115.not, label %if.end17.if.end50_crit_edge, label %do.end44, !prof !59

if.end17.if.end50_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.end44:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 829, i32 noundef 9, ptr noundef null) #11
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end17.if.end50_crit_edge
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %5 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bio_list, align 4
  %cmp.i117.not = icmp eq ptr %6, null
  br i1 %cmp.i117.not, label %if.end50.if.end84_crit_edge, label %do.end78, !prof !59

if.end50.if.end84_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

do.end78:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 830, i32 noundef 9, ptr noundef null) #11
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %if.end50.if.end84_crit_edge
  %nr_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 16
  %7 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp119 = icmp sgt i32 %8, 0
  br i1 %cmp119, label %for.body.lr.ph, label %if.end84.for.end_crit_edge

if.end84.for.end_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end84
  %stripe_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stripe_pages, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %i.0120
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool92.not = icmp eq ptr %12, null
  br i1 %tobool92.not, label %for.body.for.inc_crit_edge, label %if.then93

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then93:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %12, i32 noundef 0) #11
  %13 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stripe_pages, align 4
  %arrayidx97 = getelementptr ptr, ptr %14, i32 %i.0120
  %15 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx97, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then93, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %16 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end84.for.end_crit_edge
  %18 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rbio, align 4
  tail call void @btrfs_put_bioc(ptr noundef %19) #11
  tail call void @kfree(ptr noundef %rbio) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_rmw(ptr noundef %rbio) unnamed_addr #5 align 64 {
entry:
  %bio_list = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %finish_pointers = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 25
  %2 = ptrtoint ptr %finish_pointers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %finish_pointers, align 4
  %nr_data2 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  %4 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_data2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bio_list) #11
  %6 = getelementptr inbounds %struct.bio_list, ptr %bio_list, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 4
  %8 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bio_list, align 4
  %real_stripes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 10
  %9 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %real_stripes, align 4
  %sub = sub i32 %10, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  %sub.off = add i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.off)
  %switch = icmp ult i32 %sub.off, 2
  br i1 %switch, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1196, 0\0A.popsection", ""() #11, !srcloc !70
  unreachable

if.end13:                                         ; preds = %entry
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock) #11
  %flags = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock) #11
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #11
  %11 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %error, align 4
  tail call fastcc void @index_rbio_pages(ptr noundef %rbio)
  %bio_list_bytes.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 17
  %12 = ptrtoint ptr %bio_list_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bio_list_bytes.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_list_lock) #11
  %14 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_data2, align 4
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  %16 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stripe_len.i, align 4
  %mul.i = mul i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul.i)
  %cmp11.i = icmp ugt i32 %13, %mul.i
  br i1 %cmp11.i, label %do.body15.i, label %rbio_is_full.exit, !prof !56

do.body15.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #11, !srcloc !57
  unreachable

rbio_is_full.exit:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul.i)
  %cmp5.not.i.not = icmp eq i32 %13, %mul.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_list_lock, i32 noundef %call2.i) #11
  br i1 %cmp5.not.i.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %rbio_is_full.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cache_rbio_pages(ptr noundef %rbio)
  br label %if.end18

if.else16:                                        ; preds = %rbio_is_full.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then15
  %stripe_npages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %18 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19334 = icmp sgt i32 %19, 0
  br i1 %cmp19334, label %for.cond20.preheader.lr.ph, label %if.end18.for.cond57.preheader_crit_edge

if.end18.for.cond57.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond57.preheader

for.cond20.preheader.lr.ph:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21329 = icmp sgt i32 %5, 0
  %bio_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  %stripe_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %arrayidx37 = getelementptr ptr, ptr %3, i32 %5
  %add.ptr = getelementptr ptr, ptr %3, i32 1
  %sub39 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39)
  %cmp1.i = icmp sgt i32 %sub39, 0
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end53.for.cond20.preheader_crit_edge, %for.cond20.preheader.lr.ph
  %pagenr.0335 = phi i32 [ 0, %for.cond20.preheader.lr.ph ], [ %inc55, %for.end53.for.cond20.preheader_crit_edge ]
  br i1 %cmp21329, label %for.cond20.preheader.for.body22_crit_edge, label %for.cond20.preheader.for.end_crit_edge

for.cond20.preheader.for.end_crit_edge:           ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond20.preheader.for.body22_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body22

for.cond57.preheader:                             ; preds = %for.end53.for.cond57.preheader_crit_edge, %if.end18.for.cond57.preheader_crit_edge
  %20 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp59343 = icmp sgt i32 %21, 0
  br i1 %cmp59343, label %for.cond61.preheader.lr.ph, label %for.cond57.preheader.for.end84_crit_edge

for.cond57.preheader.for.end84_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end84

for.cond61.preheader.lr.ph:                       ; preds = %for.cond57.preheader
  %stripe_pages.i303 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %bio_pages.i299 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  br label %for.cond61.preheader

for.body22:                                       ; preds = %page_in_rbio.exit.for.body22_crit_edge, %for.cond20.preheader.for.body22_crit_edge
  %stripe.0330 = phi i32 [ %inc, %page_in_rbio.exit.for.body22_crit_edge ], [ 0, %for.cond20.preheader.for.body22_crit_edge ]
  %22 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %stripe_len.i, align 4
  %shr.i = ashr i32 %23, 12
  %mul.i275 = mul i32 %shr.i, %stripe.0330
  %add.i = add i32 %mul.i275, %pagenr.0335
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock) #11
  %24 = ptrtoint ptr %bio_pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bio_pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %25, i32 %add.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock) #11
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body22.page_in_rbio.exit_crit_edge

for.body22.page_in_rbio.exit_crit_edge:           ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  br label %page_in_rbio.exit

if.end.i:                                         ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %29, i32 %add.i
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3.i, align 4
  br label %page_in_rbio.exit

page_in_rbio.exit:                                ; preds = %if.end.i, %for.body22.page_in_rbio.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end.i ], [ %27, %for.body22.page_in_rbio.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %32 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %32, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %retval.0.i, i32 noundef %or.i) #11
  %arrayidx = getelementptr ptr, ptr %3, i32 %stripe.0330
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %stripe.0330, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %page_in_rbio.exit.for.end_crit_edge, label %page_in_rbio.exit.for.body22_crit_edge

page_in_rbio.exit.for.body22_crit_edge:           ; preds = %page_in_rbio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22

page_in_rbio.exit.for.end_crit_edge:              ; preds = %page_in_rbio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %page_in_rbio.exit.for.end_crit_edge, %for.cond20.preheader.for.end_crit_edge
  %stripe.0.lcssa = phi i32 [ 0, %for.cond20.preheader.for.end_crit_edge ], [ %5, %page_in_rbio.exit.for.end_crit_edge ]
  %34 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_data2, align 4
  %36 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %stripe_pages.i, align 4
  %38 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stripe_npages, align 4
  %mul.i.i.i = mul i32 %39, %35
  %add.i.i.i = add i32 %mul.i.i.i, %pagenr.0335
  %arrayidx.i.i = getelementptr ptr, ptr %37, i32 %add.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %42 = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit:                             ; preds = %for.end
  tail call void @_set_bit(i32 noundef 2, ptr noundef %41) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %45 = load i32, ptr @pgprot_kernel, align 4
  %or.i278 = or i32 %45, 512
  %call.i279 = tail call ptr @__kmap_local_page_prot(ptr noundef %41, i32 noundef %or.i278) #11
  %inc27 = add nuw i32 %stripe.0.lcssa, 1
  %arrayidx28 = getelementptr ptr, ptr %3, i32 %stripe.0.lcssa
  %46 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i279, ptr %arrayidx28, align 4
  br i1 %cmp, label %if.else36, label %if.then30

if.then30:                                        ; preds = %SetPageUptodate.exit
  %47 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_data2, align 4
  %add.i281 = add i32 %48, 1
  %49 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i281, i32 %50)
  %cmp.i = icmp eq i32 %add.i281, %50
  br i1 %cmp.i, label %if.then30.rbio_qstripe_page.exit_crit_edge, label %if.end.i287

if.then30.rbio_qstripe_page.exit_crit_edge:       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_qstripe_page.exit

if.end.i287:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stripe_pages.i, align 4
  %53 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stripe_npages, align 4
  %mul.i.i.i284 = mul i32 %54, %add.i281
  %add.i.i.i285 = add i32 %mul.i.i.i284, %pagenr.0335
  %arrayidx.i.i286 = getelementptr ptr, ptr %52, i32 %add.i.i.i285
  %55 = ptrtoint ptr %arrayidx.i.i286 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i286, align 4
  br label %rbio_qstripe_page.exit

rbio_qstripe_page.exit:                           ; preds = %if.end.i287, %if.then30.rbio_qstripe_page.exit_crit_edge
  %retval.0.i288 = phi ptr [ %56, %if.end.i287 ], [ null, %if.then30.rbio_qstripe_page.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %57 = getelementptr inbounds %struct.page, ptr %retval.0.i288, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %and.i.i.i.i268 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i268)
  %tobool.not.i.i.i269 = icmp eq i32 %and.i.i.i.i268, 0
  br i1 %tobool.not.i.i.i269, label %SetPageUptodate.exit271, label %if.then.i.i.i270, !prof !59

if.then.i.i.i270:                                 ; preds = %rbio_qstripe_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %retval.0.i288, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit271:                          ; preds = %rbio_qstripe_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %retval.0.i288) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i289 = or i32 %60, 512
  %call.i290 = tail call ptr @__kmap_local_page_prot(ptr noundef %retval.0.i288, i32 noundef %or.i289) #11
  %inc33 = add nuw i32 %stripe.0.lcssa, 2
  %arrayidx34 = getelementptr ptr, ptr %3, i32 %inc27
  %61 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i290, ptr %arrayidx34, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %62 = load ptr, ptr @raid6_call, align 4
  %63 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %real_stripes, align 4
  tail call void %62(i32 noundef %64, i32 noundef 4096, ptr noundef %3) #11
  br label %if.end40

if.else36:                                        ; preds = %SetPageUptodate.exit
  %65 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx37, align 4
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  tail call void @copy_page(ptr noundef %66, ptr noundef %68) #11
  %69 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx37, align 4
  br i1 %cmp1.i, label %if.else36.while.body.i_crit_edge, label %if.else36.if.end40_crit_edge

if.else36.if.end40_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else36.while.body.i_crit_edge:                 ; preds = %if.else36
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else36.while.body.i_crit_edge
  %src_cnt.addr.03.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %sub39, %if.else36.while.body.i_crit_edge ]
  %src_off.02.i = phi i32 [ %add.i292, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else36.while.body.i_crit_edge ]
  %71 = tail call i32 @llvm.umin.i32(i32 %src_cnt.addr.03.i, i32 4) #11
  %add.ptr.i = getelementptr ptr, ptr %add.ptr, i32 %src_off.02.i
  tail call void @xor_blocks(i32 noundef %71, i32 noundef 4096, ptr noundef %70, ptr noundef %add.ptr.i) #11
  %sub.i = sub nsw i32 %src_cnt.addr.03.i, %71
  %add.i292 = add i32 %71, %src_off.02.i
  %cmp.i293 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i293, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end40_crit_edge

while.body.i.if.end40_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end40:                                         ; preds = %while.body.i.if.end40_crit_edge, %if.else36.if.end40_crit_edge, %SetPageUptodate.exit271
  %stripe.1 = phi i32 [ %inc33, %SetPageUptodate.exit271 ], [ %inc27, %if.else36.if.end40_crit_edge ], [ %inc27, %while.body.i.if.end40_crit_edge ]
  %stripe.2331 = add i32 %stripe.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stripe.2331)
  %cmp43332 = icmp sgt i32 %stripe.2331, -1
  br i1 %cmp43332, label %if.end40.do.end48_crit_edge, label %if.end40.for.end53_crit_edge

if.end40.for.end53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end53

if.end40.do.end48_crit_edge:                      ; preds = %if.end40
  br label %do.end48

do.end48:                                         ; preds = %do.end48.do.end48_crit_edge, %if.end40.do.end48_crit_edge
  %stripe.2333 = phi i32 [ %stripe.2, %do.end48.do.end48_crit_edge ], [ %stripe.2331, %if.end40.do.end48_crit_edge ]
  %arrayidx49 = getelementptr ptr, ptr %3, i32 %stripe.2333
  %72 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx49, align 4
  tail call void @kunmap_local_indexed(ptr noundef %73) #11
  %stripe.2 = add nsw i32 %stripe.2333, -1
  %cmp43 = icmp sgt i32 %stripe.2333, 0
  br i1 %cmp43, label %do.end48.do.end48_crit_edge, label %do.end48.for.end53_crit_edge

do.end48.for.end53_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end53

do.end48.do.end48_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

for.end53:                                        ; preds = %do.end48.for.end53_crit_edge, %if.end40.for.end53_crit_edge
  %inc55 = add nuw nsw i32 %pagenr.0335, 1
  %74 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %stripe_npages, align 4
  %cmp19 = icmp slt i32 %inc55, %75
  br i1 %cmp19, label %for.end53.for.cond20.preheader_crit_edge, label %for.end53.for.cond57.preheader_crit_edge

for.end53.for.cond57.preheader_crit_edge:         ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond57.preheader

for.end53.for.cond20.preheader_crit_edge:         ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond20.preheader

for.cond61.preheader:                             ; preds = %for.inc82.for.cond61.preheader_crit_edge, %for.cond61.preheader.lr.ph
  %stripe.3344 = phi i32 [ 0, %for.cond61.preheader.lr.ph ], [ %inc83, %for.inc82.for.cond61.preheader_crit_edge ]
  %76 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp63339 = icmp sgt i32 %77, 0
  br i1 %cmp63339, label %for.cond61.preheader.for.body64_crit_edge, label %for.cond61.preheader.for.inc82_crit_edge

for.cond61.preheader.for.inc82_crit_edge:         ; preds = %for.cond61.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc82

for.cond61.preheader.for.body64_crit_edge:        ; preds = %for.cond61.preheader
  br label %for.body64

for.body64:                                       ; preds = %for.inc79.for.body64_crit_edge, %for.cond61.preheader.for.body64_crit_edge
  %78 = phi i32 [ %94, %for.inc79.for.body64_crit_edge ], [ %77, %for.cond61.preheader.for.body64_crit_edge ]
  %pagenr.1340 = phi i32 [ %inc80, %for.inc79.for.body64_crit_edge ], [ 0, %for.cond61.preheader.for.body64_crit_edge ]
  %79 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr_data2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.3344, i32 %80)
  %cmp66 = icmp slt i32 %stripe.3344, %80
  br i1 %cmp66, label %if.then67, label %if.else72

if.then67:                                        ; preds = %for.body64
  %81 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stripe_len.i, align 4
  %shr.i295 = ashr i32 %82, 12
  %mul.i296 = mul i32 %shr.i295, %stripe.3344
  %add.i297 = add i32 %mul.i296, %pagenr.1340
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock) #11
  %83 = ptrtoint ptr %bio_pages.i299 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bio_pages.i299, align 4
  %arrayidx.i300 = getelementptr ptr, ptr %84, i32 %add.i297
  %85 = ptrtoint ptr %arrayidx.i300 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i300, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock) #11
  %tobool69.not = icmp eq ptr %86, null
  br i1 %tobool69.not, label %if.then67.for.inc79_crit_edge, label %if.then67.if.end74_crit_edge

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then67.for.inc79_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79

if.else72:                                        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %stripe_pages.i303 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %stripe_pages.i303, align 4
  %mul.i.i = mul i32 %78, %stripe.3344
  %add.i.i = add i32 %mul.i.i, %pagenr.1340
  %arrayidx.i304 = getelementptr ptr, ptr %88, i32 %add.i.i
  %89 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i304, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %if.then67.if.end74_crit_edge
  %page.0 = phi ptr [ %86, %if.then67.if.end74_crit_edge ], [ %90, %if.else72 ]
  %91 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stripe_len.i, align 4
  %call75 = call fastcc i32 @rbio_add_io_page(ptr noundef %rbio, ptr noundef nonnull %bio_list, ptr noundef %page.0, i32 noundef %stripe.3344, i32 noundef %pagenr.1340, i32 noundef %92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end74.for.inc79_crit_edge, label %if.end74.cleanup154_crit_edge

if.end74.cleanup154_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup154

if.end74.for.inc79_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc79

for.inc79:                                        ; preds = %if.end74.for.inc79_crit_edge, %if.then67.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %pagenr.1340, 1
  %93 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %stripe_npages, align 4
  %cmp63 = icmp slt i32 %inc80, %94
  br i1 %cmp63, label %for.inc79.for.body64_crit_edge, label %for.inc79.for.inc82_crit_edge

for.inc79.for.inc82_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc82

for.inc79.for.body64_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64

for.inc82:                                        ; preds = %for.inc79.for.inc82_crit_edge, %for.cond61.preheader.for.inc82_crit_edge
  %inc83 = add nuw nsw i32 %stripe.3344, 1
  %95 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %real_stripes, align 4
  %cmp59 = icmp slt i32 %inc83, %96
  br i1 %cmp59, label %for.inc82.for.cond61.preheader_crit_edge, label %for.inc82.for.end84_crit_edge

for.inc82.for.end84_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end84

for.inc82.for.cond61.preheader_crit_edge:         ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond61.preheader

for.end84:                                        ; preds = %for.inc82.for.end84_crit_edge, %for.cond57.preheader.for.end84_crit_edge
  %num_tgtdevs = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 11
  %97 = ptrtoint ptr %num_tgtdevs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_tgtdevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool85.not = icmp eq i32 %98, 0
  br i1 %tobool85.not, label %for.end84.for.cond.i.preheader_crit_edge, label %for.cond91.preheader, !prof !59

for.end84.for.cond.i.preheader_crit_edge:         ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.cond91.preheader:                             ; preds = %for.end84
  %99 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp93350 = icmp sgt i32 %100, 0
  br i1 %cmp93350, label %for.body94.lr.ph, label %for.cond91.preheader.for.cond.i.preheader_crit_edge

for.cond91.preheader.for.cond.i.preheader_crit_edge: ; preds = %for.cond91.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.body94.lr.ph:                                 ; preds = %for.cond91.preheader
  %tgtdev_map = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 12
  %stripe_pages.i305 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  br label %for.body94

for.body94:                                       ; preds = %for.inc128.for.body94_crit_edge, %for.body94.lr.ph
  %stripe.4351 = phi i32 [ 0, %for.body94.lr.ph ], [ %inc129, %for.inc128.for.body94_crit_edge ]
  %101 = ptrtoint ptr %tgtdev_map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tgtdev_map, align 8
  %arrayidx95 = getelementptr i32, ptr %102, i32 %stripe.4351
  %103 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool96.not = icmp eq i32 %104, 0
  br i1 %tobool96.not, label %for.body94.for.inc128_crit_edge, label %for.cond99.preheader

for.body94.for.inc128_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc128

for.cond99.preheader:                             ; preds = %for.body94
  %105 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp101346 = icmp sgt i32 %106, 0
  br i1 %cmp101346, label %for.cond99.preheader.for.body102_crit_edge, label %for.cond99.preheader.for.inc128_crit_edge

for.cond99.preheader.for.inc128_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc128

for.cond99.preheader.for.body102_crit_edge:       ; preds = %for.cond99.preheader
  br label %for.body102

for.body102:                                      ; preds = %for.inc125.for.body102_crit_edge, %for.cond99.preheader.for.body102_crit_edge
  %107 = phi i32 [ %123, %for.inc125.for.body102_crit_edge ], [ %106, %for.cond99.preheader.for.body102_crit_edge ]
  %pagenr.2347 = phi i32 [ %inc126, %for.inc125.for.body102_crit_edge ], [ 0, %for.cond99.preheader.for.body102_crit_edge ]
  %108 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nr_data2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.4351, i32 %109)
  %cmp105 = icmp slt i32 %stripe.4351, %109
  br i1 %cmp105, label %if.then106, label %if.else111

if.then106:                                       ; preds = %for.body102
  %call107 = tail call fastcc ptr @page_in_rbio(ptr noundef %rbio, i32 noundef %stripe.4351, i32 noundef %pagenr.2347, i32 noundef 1)
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %if.then106.for.inc125_crit_edge, label %if.then106.if.end113_crit_edge

if.then106.if.end113_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then106.for.inc125_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc125

if.else111:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %stripe_pages.i305 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %stripe_pages.i305, align 4
  %mul.i.i307 = mul i32 %107, %stripe.4351
  %add.i.i308 = add i32 %mul.i.i307, %pagenr.2347
  %arrayidx.i309 = getelementptr ptr, ptr %111, i32 %add.i.i308
  %112 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i309, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then106.if.end113_crit_edge
  %page103.0 = phi ptr [ %call107, %if.then106.if.end113_crit_edge ], [ %113, %if.else111 ]
  %114 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rbio, align 4
  %tgtdev_map115 = getelementptr inbounds %struct.btrfs_io_context, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %tgtdev_map115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tgtdev_map115, align 8
  %arrayidx116 = getelementptr i32, ptr %117, i32 %stripe.4351
  %118 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx116, align 4
  %120 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %stripe_len.i, align 4
  %call118 = call fastcc i32 @rbio_add_io_page(ptr noundef %rbio, ptr noundef nonnull %bio_list, ptr noundef %page103.0, i32 noundef %119, i32 noundef %pagenr.2347, i32 noundef %121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end113.for.inc125_crit_edge, label %if.end113.cleanup154_crit_edge

if.end113.cleanup154_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup154

if.end113.for.inc125_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc125

for.inc125:                                       ; preds = %if.end113.for.inc125_crit_edge, %if.then106.for.inc125_crit_edge
  %inc126 = add nuw nsw i32 %pagenr.2347, 1
  %122 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %stripe_npages, align 4
  %cmp101 = icmp slt i32 %inc126, %123
  br i1 %cmp101, label %for.inc125.for.body102_crit_edge, label %for.inc125.for.inc128_crit_edge

for.inc125.for.inc128_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc128

for.inc125.for.body102_crit_edge:                 ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body102

for.inc128:                                       ; preds = %for.inc125.for.inc128_crit_edge, %for.cond99.preheader.for.inc128_crit_edge, %for.body94.for.inc128_crit_edge
  %inc129 = add nuw nsw i32 %stripe.4351, 1
  %124 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %real_stripes, align 4
  %cmp93 = icmp slt i32 %inc129, %125
  br i1 %cmp93, label %for.inc128.for.body94_crit_edge, label %for.inc128.for.cond.i.preheader_crit_edge

for.inc128.for.cond.i.preheader_crit_edge:        ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.inc128.for.body94_crit_edge:                  ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body94

for.cond.i.preheader:                             ; preds = %for.inc128.for.cond.i.preheader_crit_edge, %for.cond91.preheader.for.cond.i.preheader_crit_edge, %for.end84.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %sz.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %bio.0.in.i = phi ptr [ %bio.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %bio_list, %for.cond.i.preheader ]
  %126 = ptrtoint ptr %bio.0.in.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %bio.0.i = load ptr, ptr %bio.0.in.i, align 4
  %tobool.not.i310 = icmp eq ptr %bio.0.i, null
  %inc.i = add i32 %sz.0.i, 1
  br i1 %tobool.not.i310, label %bio_list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

bio_list_size.exit:                               ; preds = %for.cond.i
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 20
  %call.i.i272 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  %127 = ptrtoint ptr %stripes_pending to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 %sz.0.i, ptr %stripes_pending, align 4
  %call.i.i273 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stripes_pending, i32 noundef 4) #11
  %128 = ptrtoint ptr %stripes_pending to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %stripes_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp135 = icmp eq i32 %129, 0
  br i1 %cmp135, label %do.body143, label %while.cond.preheader, !prof !56

while.cond.preheader:                             ; preds = %bio_list_size.exit
  %130 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %130)
  %bio_list.promoted = load ptr, ptr %bio_list, align 4
  %tobool.not.i311356 = icmp eq ptr %bio_list.promoted, null
  br i1 %tobool.not.i311356, label %while.cond.preheader.cleanup160_crit_edge, label %while.cond.preheader.if.then.i_crit_edge

while.cond.preheader.if.then.i_crit_edge:         ; preds = %while.cond.preheader
  br label %if.then.i

while.cond.preheader.cleanup160_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup160

do.body143:                                       ; preds = %bio_list_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1311, 0\0A.popsection", ""() #11, !srcloc !72
  unreachable

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %while.cond.preheader.if.then.i_crit_edge
  %131 = phi ptr [ %133, %if.then.i.if.then.i_crit_edge ], [ %bio_list.promoted, %while.cond.preheader.if.then.i_crit_edge ]
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 8
  %tobool4.not.i = icmp eq ptr %133, null
  store ptr null, ptr %131, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %131, i32 0, i32 11
  %134 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %rbio, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %131, i32 0, i32 10
  %135 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @raid_write_end_io, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %131, i32 0, i32 2
  %136 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %bi_opf, align 8
  tail call void @submit_bio(ptr noundef nonnull %131) #11
  br i1 %tobool4.not.i, label %if.then.i.cleanup160_crit_edge, label %if.then.i.if.then.i_crit_edge

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.cleanup160_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup160

cleanup154:                                       ; preds = %if.end113.cleanup154_crit_edge, %if.end74.cleanup154_crit_edge
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext 10)
  %137 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %137)
  %bio_list.promoted359 = load ptr, ptr %bio_list, align 4
  %tobool.not.i314363 = icmp eq ptr %bio_list.promoted359, null
  br i1 %tobool.not.i314363, label %cleanup154.cleanup160_crit_edge, label %cleanup154.if.then.i316_crit_edge

cleanup154.if.then.i316_crit_edge:                ; preds = %cleanup154
  br label %if.then.i316

cleanup154.cleanup160_crit_edge:                  ; preds = %cleanup154
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup160

if.then.i316:                                     ; preds = %if.then.i316.if.then.i316_crit_edge, %cleanup154.if.then.i316_crit_edge
  %138 = phi ptr [ %140, %if.then.i316.if.then.i316_crit_edge ], [ %bio_list.promoted359, %cleanup154.if.then.i316_crit_edge ]
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  %tobool4.not.i315 = icmp eq ptr %140, null
  store ptr null, ptr %138, align 8
  tail call void @bio_put(ptr noundef nonnull %138) #11
  br i1 %tobool4.not.i315, label %if.then.i316.cleanup160_crit_edge, label %if.then.i316.if.then.i316_crit_edge

if.then.i316.if.then.i316_crit_edge:              ; preds = %if.then.i316
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i316

if.then.i316.cleanup160_crit_edge:                ; preds = %if.then.i316
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup160

cleanup160:                                       ; preds = %if.then.i316.cleanup160_crit_edge, %cleanup154.cleanup160_crit_edge, %if.then.i.cleanup160_crit_edge, %while.cond.preheader.cleanup160_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bio_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @index_rbio_pages(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock) #11
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %0 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %bio.083 = load ptr, ptr %bio_list, align 4
  %tobool.not84 = icmp eq ptr %bio.083, null
  br i1 %tobool.not84, label %entry.for.end48_crit_edge, label %for.body.lr.ph

entry.for.end48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.body.lr.ph:                                   ; preds = %entry
  %bio_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  br label %for.body

for.cond.loopexit:                                ; preds = %bio_advance_iter_single.exit.for.cond.loopexit_crit_edge, %if.end.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %bio.085 to i32
  call void @__asan_load4_noabort(i32 %1)
  %bio.0 = load ptr, ptr %bio.085, align 4
  %tobool.not = icmp eq ptr %bio.0, null
  br i1 %tobool.not, label %for.cond.loopexit.for.end48_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.for.end48_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end48

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %bio.085 = phi ptr [ %bio.083, %for.body.lr.ph ], [ %bio.0, %for.cond.loopexit.for.body_crit_edge ]
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %shl = shl i64 %3, 9
  %4 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rbio, align 4
  %raid_map = getelementptr inbounds %struct.btrfs_io_context, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %raid_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %raid_map, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %sub = sub i64 %shl, %9
  %conv = trunc i64 %sub to i32
  %shr = lshr i32 %conv, 12
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i, align 4
  %12 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.not = icmp eq i16 %12, 0
  br i1 %cmp.i.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %iter3 = getelementptr i8, ptr %bio.085, i32 -20
  %13 = call ptr @memcpy(ptr %bi_iter, ptr %iter3, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %iter.sroa.6.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %iter.sroa.6.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %iter.sroa.6.0.copyload = load i32, ptr %iter.sroa.6.0.bi_iter.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload)
  %tobool6.not78 = icmp eq i32 %iter.sroa.6.0.copyload, 0
  br i1 %tobool6.not78, label %if.end.for.cond.loopexit_crit_edge, label %land.rhs.lr.ph

if.end.for.cond.loopexit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

land.rhs.lr.ph:                                   ; preds = %if.end
  %iter.sroa.15.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %iter.sroa.15.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %iter.sroa.15.0.copyload = load i32, ptr %iter.sroa.15.0.bi_iter.sroa_idx, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %iter.sroa.10.0.copyload = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx, align 4
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 20
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %bio.085, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %bio_advance_iter_single.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.082 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.6.081 = phi i32 [ %iter.sroa.6.0.copyload, %land.rhs.lr.ph ], [ %sub.i.i, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.10.080 = phi i32 [ %iter.sroa.10.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.10.2, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %iter.sroa.15.079 = phi i32 [ %iter.sroa.15.0.copyload, %land.rhs.lr.ph ], [ %iter.sroa.15.1, %bio_advance_iter_single.exit.land.rhs_crit_edge ]
  %17 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_io_vec, align 8
  %arrayidx7 = getelementptr %struct.bio_vec, ptr %18, i32 %iter.sroa.10.080
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %18, i32 %iter.sroa.10.080, i32 2
  %21 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset, align 4
  %add = add i32 %22, %iter.sroa.15.079
  %div71 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %20, i32 %div71
  %bv_len16 = getelementptr %struct.bio_vec, ptr %18, i32 %iter.sroa.10.080, i32 1
  %23 = ptrtoint ptr %bv_len16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bv_len16, align 4
  %sub18 = sub i32 %24, %iter.sroa.15.079
  %25 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.081, i32 %sub18)
  %rem = and i32 %add, 4095
  %sub26 = sub nuw nsw i32 4096, %rem
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 %sub26)
  %27 = ptrtoint ptr %bio_pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bio_pages, align 4
  %add44 = add i32 %i.082, %shr
  %arrayidx45 = getelementptr ptr, ptr %28, i32 %add44
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %arrayidx45, align 4
  %inc = add i32 %i.082, 1
  %30 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_opf.i.i, align 8
  %and.i.i = and i32 %31, 255
  %32 = add nsw i32 %and.i.i, -3
  %switch.and.i.i = and i32 %32, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %land.rhs.bio_advance_iter_single.exit_crit_edge, label %if.else.i

land.rhs.bio_advance_iter_single.exit_crit_edge:  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit

if.else.i:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bi_io_vec, align 8
  %add.i.i = add i32 %26, %iter.sroa.15.079
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %34, i32 %iter.sroa.10.080, i32 1
  %35 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %36)
  %cmp.i.i = icmp eq i32 %add.i.i, %36
  %spec.select = select i1 %cmp.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp.i.i to i32
  %spec.select77 = add i32 %iter.sroa.10.080, %inc.i.i
  br label %bio_advance_iter_single.exit

bio_advance_iter_single.exit:                     ; preds = %if.else.i, %land.rhs.bio_advance_iter_single.exit_crit_edge
  %iter.sroa.15.1 = phi i32 [ %iter.sroa.15.079, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select, %if.else.i ]
  %iter.sroa.10.2 = phi i32 [ %iter.sroa.10.080, %land.rhs.bio_advance_iter_single.exit_crit_edge ], [ %spec.select77, %if.else.i ]
  %sub.i.i = sub i32 %iter.sroa.6.081, %26
  %tobool6.not = icmp eq i32 %sub.i.i, 0
  br i1 %tobool6.not, label %bio_advance_iter_single.exit.for.cond.loopexit_crit_edge, label %bio_advance_iter_single.exit.land.rhs_crit_edge

bio_advance_iter_single.exit.land.rhs_crit_edge:  ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

bio_advance_iter_single.exit.for.cond.loopexit_crit_edge: ; preds = %bio_advance_iter_single.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.end48:                                        ; preds = %for.cond.loopexit.for.end48_crit_edge, %entry.for.end48_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cache_rbio_pages(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 16
  %0 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.i = icmp sgt i32 %1, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %entry
  %stripe_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.014.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool1.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %7, i32 %i.014.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call38.i.i.i.i, ptr %arrayidx5.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %9 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_pages.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %10
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %alloc_rbio_pages.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

alloc_rbio_pages.exit:                            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23 = icmp sgt i32 %10, 0
  br i1 %cmp23, label %for.body.lr.ph, label %alloc_rbio_pages.exit.for.end_crit_edge

alloc_rbio_pages.exit.for.end_crit_edge:          ; preds = %alloc_rbio_pages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %alloc_rbio_pages.exit
  %bio_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  %stripe_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %bio_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bio_pages, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.024
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %15 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stripe_pages, align 4
  %arrayidx4 = getelementptr ptr, ptr %16, i32 %i.024
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %19 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %19, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %14, i32 noundef %or.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %20 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %20, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef %18, i32 noundef %or.i13.i) #11
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  %21 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stripe_pages, align 4
  %arrayidx8 = getelementptr ptr, ptr %22, i32 %i.024
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %24) #11
  br label %for.inc

for.inc:                                          ; preds = %SetPageUptodate.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %28 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_pages.i, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %alloc_rbio_pages.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %flags = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @page_in_rbio(ptr noundef %rbio, i32 noundef %index, i32 noundef %pagenr, i32 noundef %bio_list_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stripe_len = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  %0 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stripe_len, align 4
  %shr = ashr i32 %1, 12
  %mul = mul i32 %shr, %index
  %add = add i32 %mul, %pagenr
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock) #11
  %bio_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  %2 = ptrtoint ptr %bio_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bio_pages, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock) #11
  %tobool.not = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bio_list_only)
  %tobool2.not = icmp eq i32 %bio_list_only, 0
  %or.cond = and i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stripe_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %6 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stripe_pages, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %add
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.end ], [ %5, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rbio_add_io_page(ptr noundef %rbio, ptr nocapture noundef %bio_list, ptr noundef %page, i32 noundef %stripe_nr, i32 noundef %page_index, i32 noundef %bio_max_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.bio_list, ptr %bio_list, i32 0, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %2 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rbio, align 4
  %arrayidx = getelementptr %struct.btrfs_io_context, ptr %3, i32 0, i32 14, i32 %stripe_nr
  %physical = getelementptr %struct.btrfs_io_context, ptr %3, i32 0, i32 14, i32 %stripe_nr, i32 1
  %4 = ptrtoint ptr %physical to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %physical, align 8
  %shl = shl i32 %page_index, 12
  %conv = zext i32 %shl to i64
  %add = add i64 %5, %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %bdev = getelementptr inbounds %struct.btrfs_device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bdev, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @fail_rbio_index(ptr noundef %rbio, i32 noundef %stripe_nr)
  br label %cleanup34

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end21_crit_edge, label %if.then2

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then2:                                         ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bi_iter, align 8
  %shl3 = shl i64 %11, 9
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_size, align 8
  %conv5 = zext i32 %13 to i64
  %add6 = add i64 %shl3, %conv5
  call void @__sanitizer_cov_trace_cmp8(i64 %add6, i64 %add)
  %cmp = icmp eq i64 %add6, %add
  br i1 %cmp, label %land.lhs.true, label %if.then2.if.end21_crit_edge

if.then2.if.end21_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then2
  %bi_status = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true9:                                   ; preds = %land.lhs.true
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_bdev, align 4
  %cmp12 = icmp eq ptr %17, %9
  br i1 %cmp12, label %if.then14, label %land.lhs.true9.if.end21_crit_edge

land.lhs.true9.if.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %land.lhs.true9
  %call15 = tail call i32 @bio_add_page(ptr noundef nonnull %1, ptr noundef %page, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 4096
  br i1 %cmp16, label %if.then14.cleanup34_crit_edge, label %if.then14.if.end21_crit_edge

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14.cleanup34_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup34

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %land.lhs.true9.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.then2.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %shr = lshr i32 %bio_max_len, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %bio_max_len)
  %tobool22.not = icmp ult i32 %bio_max_len, 4096
  %shr. = select i1 %tobool22.not, i32 1, i32 %shr
  %call23 = tail call ptr @btrfs_bio_alloc(i32 noundef %shr.) #11
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %device = getelementptr i8, ptr %call23, i32 -92
  %20 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %device, align 4
  %bi_iter26 = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 8
  %bi_size27 = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %bi_size27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bi_size27, align 8
  %22 = load ptr, ptr %arrayidx, align 8
  %bdev29 = getelementptr inbounds %struct.btrfs_device, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %bdev29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev29, align 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 3
  %25 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %26, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call23, i32 0, i32 1
  %27 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %28, %24
  br i1 %cmp.not.i, label %if.end21.bio_set_dev.exit_crit_edge, label %if.then.i

if.end21.bio_set_dev.exit_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i8.i = and i16 %26, -2177
  %29 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end21.bio_set_dev.exit_crit_edge
  %30 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call23) #11
  %shr30 = lshr i64 %add, 9
  %31 = ptrtoint ptr %bi_iter26 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shr30, ptr %bi_iter26, align 8
  %call33 = tail call i32 @bio_add_page(ptr noundef %call23, ptr noundef %page, i32 noundef 4096, i32 noundef 0) #11
  %32 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %call23, align 8
  %33 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i61

if.then.i61:                                      ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call23, ptr %34, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call23, ptr %bio_list, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i61
  %37 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call23, ptr %tail, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %bio_list_add.exit, %if.then14.cleanup34_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %bio_list_add.exit ], [ %call, %if.then ], [ 0, %if.then14.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_write_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter.i.i, align 8
  %shl.i.i = shl i64 %5, 9
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %num_stripes.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %num_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.i.i = icmp sgt i32 %9, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then
  %stripe_len.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i
  %physical2.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %physical2.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %physical2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %11)
  %cmp3.not.i.i = icmp ult i64 %shl.i.i, %11
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %12 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stripe_len.i.i, align 4
  %conv.i.i = sext i32 %13 to i64
  %add.i.i = add i64 %11, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i.i)
  %cmp5.i.i = icmp ult i64 %shl.i.i, %add.i.i
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %bdev.i.i = getelementptr inbounds %struct.btrfs_device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true7.i.i
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp11.i.i = icmp eq ptr %19, %17
  br i1 %cmp11.i.i, label %if.end.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call fastcc i32 @fail_rbio_index(ptr noundef %1, i32 noundef %i.028.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end.i, %for.inc.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #11
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %stripes_pending, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripes_pending, ptr %stripes_pending, i32 1, ptr elementtype(i32) %stripes_pending) #11, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %operation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp = icmp eq i32 %22, 2
  br i1 %cmp, label %if.end3.cond.end_crit_edge, label %cond.false

if.end3.cond.end_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %max_errors4 = getelementptr inbounds %struct.btrfs_io_context, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %max_errors4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_errors4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end3.cond.end_crit_edge
  %cond = phi i32 [ %26, %cond.false ], [ 0, %if.end3.cond.end_crit_edge ]
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 21
  %call.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error, i32 noundef 4) #11
  %27 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cond)
  %cmp6 = icmp sgt i32 %28, %cond
  %spec.select = select i1 %cmp6, i8 10, i8 0
  tail call fastcc void @rbio_orig_end_io(ptr noundef %1, i8 noundef zeroext %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %0 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_list, align 4
  %tail.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tail.i, align 4
  store ptr null, ptr %bio_list, align 4
  %generic_bio_cnt = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 18
  %3 = ptrtoint ptr %generic_bio_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %generic_bio_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rbio, align 4
  %fs_info = getelementptr inbounds %struct.btrfs_io_context, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fs_info, align 8
  %conv = sext i32 %4 to i64
  tail call void @btrfs_bio_counter_sub(ptr noundef %8, i64 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @unlock_stripe(ptr noundef %rbio)
  %9 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bio_list, align 4
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tail.i, align 4
  store ptr null, ptr %bio_list, align 4
  tail call fastcc void @__free_raid_bio(ptr noundef %rbio)
  %tobool.not6.i = icmp eq ptr %1, null
  br i1 %tobool.not6.i, label %if.end.rbio_endio_bio_list.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.rbio_endio_bio_list.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_endio_bio_list.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %cur.addr.07.i = phi ptr [ %13, %while.body.i.while.body.i_crit_edge ], [ %1, %if.end.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %cur.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur.addr.07.i, align 8
  store ptr null, ptr %cur.addr.07.i, align 8
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %cur.addr.07.i, i32 0, i32 6
  %14 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %err, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef nonnull %cur.addr.07.i) #11
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.i.rbio_endio_bio_list.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.rbio_endio_bio_list.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rbio_endio_bio_list.exit

rbio_endio_bio_list.exit:                         ; preds = %while.body.i.rbio_endio_bio_list.exit_crit_edge, %if.end.rbio_endio_bio_list.exit_crit_edge
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %rbio_endio_bio_list.exit.if.end6_crit_edge, label %rbio_endio_bio_list.exit.while.body.i20_crit_edge

rbio_endio_bio_list.exit.while.body.i20_crit_edge: ; preds = %rbio_endio_bio_list.exit
  br label %while.body.i20

rbio_endio_bio_list.exit.if.end6_crit_edge:       ; preds = %rbio_endio_bio_list.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

while.body.i20:                                   ; preds = %while.body.i20.while.body.i20_crit_edge, %rbio_endio_bio_list.exit.while.body.i20_crit_edge
  %cur.addr.07.i17 = phi ptr [ %16, %while.body.i20.while.body.i20_crit_edge ], [ %10, %rbio_endio_bio_list.exit.while.body.i20_crit_edge ]
  %15 = ptrtoint ptr %cur.addr.07.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.addr.07.i17, align 8
  store ptr null, ptr %cur.addr.07.i17, align 8
  %bi_status.i18 = getelementptr inbounds %struct.bio, ptr %cur.addr.07.i17, i32 0, i32 6
  %17 = ptrtoint ptr %bi_status.i18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %err, ptr %bi_status.i18, align 2
  tail call void @bio_endio(ptr noundef nonnull %cur.addr.07.i17) #11
  %tobool.not.i19 = icmp eq ptr %16, null
  br i1 %tobool.not.i19, label %while.body.i20.if.end6_crit_edge, label %while.body.i20.while.body.i20_crit_edge

while.body.i20.while.body.i20_crit_edge:          ; preds = %while.body.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i20

while.body.i20.if.end6_crit_edge:                 ; preds = %while.body.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %while.body.i20.if.end6_crit_edge, %rbio_endio_bio_list.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xor_blocks(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fail_rbio_index(ptr noundef %rbio, i32 noundef %failed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_list_lock) #11
  %faila = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %0 = ptrtoint ptr %faila to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %faila, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %failed)
  %cmp5 = icmp eq i32 %1, %failed
  br i1 %cmp5, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %failb = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %2 = ptrtoint ptr %failb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %failb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %failed)
  %cmp7 = icmp eq i32 %3, %failed
  br i1 %cmp7, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp10 = icmp eq i32 %1, -1
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %faila to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %failed, ptr %faila, align 4
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %error, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error, ptr %error, i32 1, ptr elementtype(i32) %error) #11, !srcloc !64
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp15 = icmp eq i32 %3, -1
  br i1 %cmp15, label %if.then17, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %failb to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %failed, ptr %failb, align 4
  %error19 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 21
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %error19, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %error19, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %error19, ptr %error19, i32 1, ptr elementtype(i32) %error19) #11, !srcloc !64
  br label %out

out:                                              ; preds = %if.then17, %if.else.out_crit_edge, %if.then12, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.then12 ], [ 0, %if.then17 ], [ -5, %if.else.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_list_lock, i32 noundef %call2) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_bio_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_bio_counter_sub(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unlock_stripe(ptr noundef %rbio) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %raid_map.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %3, align 8
  %shr.i114 = lshr i64 %5, 16
  %conv.i.i = trunc i64 %shr.i114 to i32
  %shr.i.i = lshr i64 %5, 48
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 21
  %fs_info = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fs_info, align 8
  %stripe_hash_table = getelementptr inbounds %struct.btrfs_fs_info, ptr %7, i32 0, i32 52
  %8 = ptrtoint ptr %stripe_hash_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stripe_hash_table, align 4
  %table = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %9, i32 0, i32 3
  %add.ptr = getelementptr %struct.btrfs_stripe_hash, ptr %table, i32 %shr.i.i.i
  %plug_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 6
  %10 = ptrtoint ptr %plug_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %plug_list, align 4
  %cmp.i.not = icmp eq ptr %11, %plug_list
  br i1 %cmp.i.not, label %if.then, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.then:                                          ; preds = %entry
  %flags1.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  %12 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags1.i, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then.do.body2_crit_edge, label %if.end.i

if.then.do.body2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.end.i:                                         ; preds = %if.then
  %cache_lock.i = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %9, i32 0, i32 1
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock.i) #11
  %bio_list_lock.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %bio_list_lock.i) #11
  %call8.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end.i.if.end11.i_crit_edge

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  %refs.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refs.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs.i, ptr %refs.i, i32 1, ptr elementtype(i32) %refs.i) #11, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then10.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !56

if.then10.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then10.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end11.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end11.i_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then10.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then10.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs.i, i32 noundef %.sink.i.i.i.i) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %stripe_cache.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2
  %17 = ptrtoint ptr %stripe_cache.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %stripe_cache.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %stripe_cache.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end11.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %stripe_cache.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then14.i.__list_del_entry.exit.i.i_crit_edge

if.then14.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %stripe_cache.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stripe_cache.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then14.i.__list_del_entry.exit.i.i_crit_edge
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %9, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %stripe_cache.i, ptr noundef %9, ptr noundef %26) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end19.i_crit_edge

__list_del_entry.exit.i.i.if.end19.i_crit_edge:   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %stripe_cache.i, ptr %prev1.i.i2.i.i, align 4
  %28 = ptrtoint ptr %stripe_cache.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %stripe_cache.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %stripe_cache.i, ptr %9, align 4
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end11.i
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %9, align 4
  %call.i.i50.i = tail call zeroext i1 @__list_add_valid(ptr noundef %stripe_cache.i, ptr noundef %9, ptr noundef %32) #11
  br i1 %call.i.i50.i, label %if.end.i.i51.i, label %if.else.i.list_add.exit.i_crit_edge

if.else.i.list_add.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit.i

if.end.i.i51.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %stripe_cache.i, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %stripe_cache.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %stripe_cache.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %stripe_cache.i, ptr %9, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i51.i, %if.else.i.list_add.exit.i_crit_edge
  %cache_size.i = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %9, i32 0, i32 2
  %37 = ptrtoint ptr %cache_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cache_size.i, align 4
  %add.i = add i32 %38, 1
  store i32 %add.i, ptr %cache_size.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %list_add.exit.i, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end19.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock.i) #11
  %cache_size21.i = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %9, i32 0, i32 2
  %39 = ptrtoint ptr %cache_size21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cache_size21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %40)
  %cmp22.i = icmp sgt i32 %40, 1024
  br i1 %cmp22.i, label %if.then24.i, label %if.end19.i.if.end31.i_crit_edge

if.end19.i.if.end31.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then24.i:                                      ; preds = %if.end19.i
  %prev.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 -12
  %cmp27.not.i = icmp eq ptr %add.ptr.i, %rbio
  br i1 %cmp27.not.i, label %if.then24.i.if.end31.i_crit_edge, label %if.then29.i

if.then24.i.if.end31.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__remove_rbio_from_cache(ptr noundef %add.ptr.i) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.then24.i.if.end31.i_crit_edge, %if.end19.i.if.end31.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i, i32 noundef %call4.i) #11
  br label %do.body2

do.body2:                                         ; preds = %if.end31.i, %if.then.do.body2_crit_edge, %entry.do.body2_crit_edge
  %lock = getelementptr %struct.btrfs_stripe_hash, ptr %table, i32 %shr.i.i.i, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %bio_list_lock) #11
  %hash_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1
  %43 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %hash_list, align 4
  %cmp.i115.not = icmp eq ptr %44, %hash_list
  br i1 %cmp.i115.not, label %do.body2.done_nolock_crit_edge, label %if.then9

do.body2.done_nolock_crit_edge:                   ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  br label %done_nolock

if.then9:                                         ; preds = %do.body2
  %45 = ptrtoint ptr %plug_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %plug_list, align 4
  %cmp.i117.not = icmp eq ptr %46, %plug_list
  br i1 %cmp.i117.not, label %land.lhs.true, label %if.then9.if.end34_crit_edge

if.then9.if.end34_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then9
  %flags13 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  %47 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags13, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool15.not = icmp eq i32 %49, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end34_crit_edge, label %if.then16

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then16:                                        ; preds = %land.lhs.true
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags13) #11
  %bio_list = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 4
  %50 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bio_list, align 4
  %cmp.i119.not = icmp eq ptr %51, null
  br i1 %cmp.i119.not, label %if.end77.critedge, label %do.body25, !prof !59

do.body25:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 770, 0\0A.popsection", ""() #11, !srcloc !76
  unreachable

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.then9.if.end34_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hash_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_del_init.exit_crit_edge

if.end34.list_del_init.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %hash_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hash_list, align 4
  %prev1.i.i.i121 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i121, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end34.list_del_init.exit_crit_edge
  %58 = ptrtoint ptr %hash_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %hash_list, ptr %hash_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %hash_list, ptr %prev.i3.i, align 4
  %refs = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 19
  %call.i.i.i.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %refs, i32 1, i32 3, i32 1) #11
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs, ptr %refs, i32 1, ptr elementtype(i32) %refs) #11, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %list_del_init.exit.refcount_dec.exit_crit_edge, !prof !56

list_del_init.exit.refcount_dec.exit_crit_edge:   ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_dec.exit

if.then3.i.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refs, i32 noundef 4) #11
  br label %refcount_dec.exit

refcount_dec.exit:                                ; preds = %if.then3.i.i, %list_del_init.exit.refcount_dec.exit_crit_edge
  %61 = ptrtoint ptr %plug_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %plug_list, align 4
  %cmp.i123.not = icmp eq ptr %62, %plug_list
  br i1 %cmp.i123.not, label %refcount_dec.exit.done_nolock_crit_edge, label %if.then39

refcount_dec.exit.done_nolock_crit_edge:          ; preds = %refcount_dec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %done_nolock

if.then39:                                        ; preds = %refcount_dec.exit
  %add.ptr43 = getelementptr i8, ptr %62, i32 -144
  %call.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %plug_list) #11
  br i1 %call.i.i125, label %if.end.i.i128, label %if.then39.list_del_init.exit130_crit_edge

if.then39.list_del_init.exit130_crit_edge:        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit130

if.end.i.i128:                                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i126 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i126, align 4
  %65 = ptrtoint ptr %plug_list to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %plug_list, align 4
  %prev1.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev1.i.i.i127, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %66, ptr %64, align 4
  br label %list_del_init.exit130

list_del_init.exit130:                            ; preds = %if.end.i.i128, %if.then39.list_del_init.exit130_crit_edge
  %69 = ptrtoint ptr %plug_list to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %plug_list, ptr %plug_list, align 4
  %prev.i3.i129 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %prev.i3.i129 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %plug_list, ptr %prev.i3.i129, align 4
  %hash_list45 = getelementptr i8, ptr %62, i32 -140
  %71 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr, align 4
  %call.i.i131 = tail call zeroext i1 @__list_add_valid(ptr noundef %hash_list45, ptr noundef %add.ptr, ptr noundef %72) #11
  br i1 %call.i.i131, label %if.end.i.i132, label %list_del_init.exit130.list_add.exit_crit_edge

list_del_init.exit130.list_add.exit_crit_edge:    ; preds = %list_del_init.exit130
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i132:                                    ; preds = %list_del_init.exit130
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %hash_list45, ptr %prev1.i.i, align 4
  %74 = ptrtoint ptr %hash_list45 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %72, ptr %hash_list45, align 4
  %prev3.i.i = getelementptr i8, ptr %62, i32 -136
  %75 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %add.ptr, ptr %prev3.i.i, align 4
  %76 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %hash_list45, ptr %add.ptr, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i132, %list_del_init.exit130.list_add.exit_crit_edge
  %refs47 = getelementptr i8, ptr %62, i32 56
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refs47, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refs47, i32 1, i32 3, i32 1) #11
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refs47, ptr %refs47, i32 1, ptr elementtype(i32) %refs47) #11, !srcloc !63
  %asmresult.i.i.i.i.i133 = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i133)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i133, 0
  br i1 %tobool1.not.i.i.i, label %list_add.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !56

list_add.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %list_add.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i133, 1
  %78 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %.not.i.i.i = icmp sgt i32 %78, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !59

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %list_add.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %list_add.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refs47, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %operation = getelementptr i8, ptr %62, i32 28
  %79 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %operation, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %80, label %refcount_inc.exit.if.then76_crit_edge [
    i32 1, label %if.then52
    i32 3, label %if.then56
    i32 0, label %if.then61
    i32 2, label %if.then66
  ]

refcount_inc.exit.if.then76_crit_edge:            ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then76

if.then52:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @start_async_work(ptr noundef %add.ptr43, ptr noundef nonnull @read_rebuild_work)
  br label %if.then76

if.then56:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steal_rbio(ptr noundef %rbio, ptr noundef %add.ptr43)
  tail call fastcc void @start_async_work(ptr noundef %add.ptr43, ptr noundef nonnull @read_rebuild_work)
  br label %if.then76

if.then61:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steal_rbio(ptr noundef %rbio, ptr noundef %add.ptr43)
  tail call fastcc void @start_async_work(ptr noundef %add.ptr43, ptr noundef nonnull @rmw_work)
  br label %if.then76

if.then66:                                        ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @steal_rbio(ptr noundef %rbio, ptr noundef %add.ptr43)
  tail call fastcc void @start_async_work(ptr noundef %add.ptr43, ptr noundef nonnull @scrub_parity_work)
  br label %if.then76

done_nolock:                                      ; preds = %refcount_dec.exit.done_nolock_crit_edge, %do.body2.done_nolock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %if.then76

if.then76:                                        ; preds = %done_nolock, %if.then66, %if.then61, %if.then56, %if.then52, %refcount_inc.exit.if.then76_crit_edge
  %flags1.i134 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  %82 = ptrtoint ptr %flags1.i134 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %flags1.i134, align 4
  %84 = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i135 = icmp eq i32 %84, 0
  br i1 %tobool.not.i135, label %if.then76.if.end77_crit_edge, label %if.end.i140

if.then76.if.end77_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.end.i140:                                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rbio, align 4
  %fs_info.i136 = getelementptr inbounds %struct.btrfs_io_context, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %fs_info.i136 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fs_info.i136, align 8
  %stripe_hash_table.i137 = getelementptr inbounds %struct.btrfs_fs_info, ptr %88, i32 0, i32 52
  %89 = ptrtoint ptr %stripe_hash_table.i137 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %stripe_hash_table.i137, align 4
  %cache_lock.i138 = getelementptr inbounds %struct.btrfs_stripe_hash_table, ptr %90, i32 0, i32 1
  %call4.i139 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cache_lock.i138) #11
  tail call fastcc void @__remove_rbio_from_cache(ptr noundef %rbio) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cache_lock.i138, i32 noundef %call4.i139) #11
  br label %if.end77

if.end77.critedge:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %bio_list_lock) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %if.end77

if.end77:                                         ; preds = %if.end77.critedge, %if.end.i140, %if.then76.if.end77_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @steal_rbio(ptr noundef %src, ptr nocapture noundef readonly %dest) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.btrfs_raid_bio, ptr %src, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %dest, i32 0, i32 16
  %3 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp32 = icmp sgt i32 %4, 0
  br i1 %cmp32, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %stripe_pages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %src, i32 0, i32 22
  %stripe_pages6 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %dest, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stripe_pages, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %i.033
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %8 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %13, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.for.inc_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.for.inc_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  %21 = ptrtoint ptr %stripe_pages6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stripe_pages6, align 4
  %arrayidx7 = getelementptr ptr, ptr %22, i32 %i.033
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %24, null
  br i1 %tobool8.not, label %PageUptodate.exit.if.end10_crit_edge, label %if.then9

PageUptodate.exit.if.end10_crit_edge:             ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %24, i32 noundef 0) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %PageUptodate.exit.if.end10_crit_edge
  %25 = ptrtoint ptr %stripe_pages6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stripe_pages6, align 4
  %arrayidx12 = getelementptr ptr, ptr %26, i32 %i.033
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %8, ptr %arrayidx12, align 4
  %28 = ptrtoint ptr %stripe_pages to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stripe_pages, align 4
  %arrayidx14 = getelementptr ptr, ptr %29, i32 %i.033
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %folio_flags.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.033, 1
  %31 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_pages, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmw_work(ptr noundef %work) #0 align 64 {
entry:
  %bio_list.i = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bio_list.i) #11
  %0 = getelementptr inbounds %struct.bio_list, ptr %bio_list.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %0, align 4
  %2 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio_list.i, align 4
  %nr_pages.i.i = getelementptr i8, ptr %work, i32 168
  %3 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.i.i = icmp sgt i32 %4, 0
  br i1 %cmp13.i.i, label %for.body.lr.ph.i.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %stripe_pages.i.i = getelementptr i8, ptr %work, i32 192
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %6, i32 %i.014.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool1.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup27.i_crit_edge, label %if.end3.i.i

if.end.i.i.cleanup27.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx5.i.i = getelementptr ptr, ptr %10, i32 %i.014.i.i
  %11 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx5.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end3.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %12 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pages.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %13
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call fastcc void @index_rbio_pages(ptr noundef %add.ptr) #11
  %error.i = getelementptr i8, ptr %work, i32 188
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %error.i, align 4
  %nr_data.i = getelementptr i8, ptr %work, i32 140
  %15 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp30.i = icmp sgt i32 %16, 0
  br i1 %cmp30.i, label %for.cond1.preheader.lr.ph.i, label %if.end.i.for.cond.i.i.preheader_crit_edge

if.end.i.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.preheader

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end.i
  %stripe_npages.i = getelementptr i8, ptr %work, i32 148
  %stripe_len.i.i = getelementptr i8, ptr %work, i32 136
  %bio_list_lock.i.i = getelementptr i8, ptr %work, i32 80
  %bio_pages.i.i = getelementptr i8, ptr %work, i32 196
  %stripe_pages.i5.i = getelementptr i8, ptr %work, i32 192
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc17.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %stripe.031.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc18.i, %for.inc17.i.for.cond1.preheader.i_crit_edge ]
  %17 = ptrtoint ptr %stripe_npages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stripe_npages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp227.i = icmp sgt i32 %18, 0
  br i1 %cmp227.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.inc17.i_crit_edge

for.cond1.preheader.i.for.inc17.i_crit_edge:      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %pagenr.028.i = phi i32 [ %inc.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %19 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stripe_len.i.i, align 4
  %shr.i.i = ashr i32 %20, 12
  %mul.i.i = mul i32 %shr.i.i, %stripe.031.i
  %add.i.i = add i32 %mul.i.i, %pagenr.028.i
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock.i.i) #11
  %21 = ptrtoint ptr %bio_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bio_pages.i.i, align 4
  %arrayidx.i2.i = getelementptr ptr, ptr %22, i32 %add.i.i
  %23 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i2.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock.i.i) #11
  %tobool5.not.i = icmp eq ptr %24, null
  br i1 %tobool5.not.i, label %if.end7.i, label %for.body3.i.for.inc.i_crit_edge

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body3.i
  %25 = ptrtoint ptr %stripe_pages.i5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stripe_pages.i5.i, align 4
  %27 = ptrtoint ptr %stripe_npages.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stripe_npages.i, align 4
  %mul.i.i.i = mul i32 %28, %stripe.031.i
  %add.i.i.i = add i32 %mul.i.i.i, %pagenr.028.i
  %arrayidx.i6.i = getelementptr ptr, ptr %26, i32 %add.i.i.i
  %29 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i6.i, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %33, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %34, %if.end.i.i.i ]
  %35 = inttoptr i32 %retval.0.i.i.i to ptr
  %36 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !59

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %35, align 4
  %42 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i.i, label %if.end12.i, label %PageUptodate.exit.i

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  br label %for.inc.i

if.end12.i:                                       ; preds = %folio_flags.exit.i.i.i
  %43 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stripe_len.i.i, align 4
  %call13.i = call fastcc i32 @rbio_add_io_page(ptr noundef %add.ptr, ptr noundef nonnull %bio_list.i, ptr noundef %30, i32 noundef %stripe.031.i, i32 noundef %pagenr.028.i, i32 noundef %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.for.inc.i_crit_edge, label %if.end12.i.cleanup27.i_crit_edge

if.end12.i.cleanup27.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup27.i

if.end12.i.for.inc.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i.for.inc.i_crit_edge, %PageUptodate.exit.i, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pagenr.028.i, 1
  %45 = ptrtoint ptr %stripe_npages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %stripe_npages.i, align 4
  %cmp2.i = icmp slt i32 %inc.i, %46
  br i1 %cmp2.i, label %for.inc.i.for.body3.i_crit_edge, label %for.inc.i.for.inc17.i_crit_edge

for.inc.i.for.inc17.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc17.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body3.i

for.inc17.i:                                      ; preds = %for.inc.i.for.inc17.i_crit_edge, %for.cond1.preheader.i.for.inc17.i_crit_edge
  %inc18.i = add nuw nsw i32 %stripe.031.i, 1
  %47 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_data.i, align 4
  %cmp.i = icmp slt i32 %inc18.i, %48
  br i1 %cmp.i, label %for.inc17.i.for.cond1.preheader.i_crit_edge, label %for.inc17.i.for.cond.i.i.preheader_crit_edge

for.inc17.i.for.cond.i.i.preheader_crit_edge:     ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.preheader

for.inc17.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond1.preheader.i

for.cond.i.i.preheader:                           ; preds = %for.inc17.i.for.cond.i.i.preheader_crit_edge, %if.end.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %sz.0.i.i = phi i32 [ %inc.i8.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ 0, %for.cond.i.i.preheader ]
  %bio.0.in.i.i = phi ptr [ %bio.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ], [ %bio_list.i, %for.cond.i.i.preheader ]
  %49 = ptrtoint ptr %bio.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %bio.0.i.i = load ptr, ptr %bio.0.in.i.i, align 4
  %tobool.not.i7.i = icmp eq ptr %bio.0.i.i, null
  %inc.i8.i = add i32 %sz.0.i.i, 1
  br i1 %tobool.not.i7.i, label %bio_list_size.exit.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

bio_list_size.exit.i:                             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.0.i.i)
  %tobool21.not.i = icmp eq i32 %sz.0.i.i, 0
  br i1 %tobool21.not.i, label %finish.i, label %if.end23.i

if.end23.i:                                       ; preds = %bio_list_size.exit.i
  %stripes_pending.i = getelementptr i8, ptr %work, i32 184
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending.i, i32 noundef 4) #11
  %50 = ptrtoint ptr %stripes_pending.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %sz.0.i.i, ptr %stripes_pending.i, align 4
  %51 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bio_list.promoted.i = load ptr, ptr %bio_list.i, align 4
  %tobool.not.i934.i = icmp eq ptr %bio_list.promoted.i, null
  br i1 %tobool.not.i934.i, label %if.end23.i.raid56_rmw_stripe.exit_crit_edge, label %if.end23.i.if.then.i.i_crit_edge

if.end23.i.if.then.i.i_crit_edge:                 ; preds = %if.end23.i
  br label %if.then.i.i

if.end23.i.raid56_rmw_stripe.exit_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_rmw_stripe.exit

if.then.i.i:                                      ; preds = %if.then.i.i.if.then.i.i_crit_edge, %if.end23.i.if.then.i.i_crit_edge
  %52 = phi ptr [ %54, %if.then.i.i.if.then.i.i_crit_edge ], [ %bio_list.promoted.i, %if.end23.i.if.then.i.i_crit_edge ]
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %tobool4.not.i.i = icmp eq ptr %54, null
  store ptr null, ptr %52, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 11
  %55 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 10
  %56 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @raid_rmw_end_io, ptr %bi_end_io.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %bi_opf.i, align 8
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %fs_info.i = getelementptr inbounds %struct.btrfs_io_context, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fs_info.i, align 8
  %call26.i = tail call zeroext i8 @btrfs_bio_wq_end_io(ptr noundef %61, ptr noundef nonnull %52, i32 noundef 3) #11
  tail call void @submit_bio(ptr noundef nonnull %52) #11
  br i1 %tobool4.not.i.i, label %if.then.i.i.raid56_rmw_stripe.exit_crit_edge, label %if.then.i.i.if.then.i.i_crit_edge

if.then.i.i.if.then.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i.raid56_rmw_stripe.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_rmw_stripe.exit

cleanup27.i:                                      ; preds = %if.end12.i.cleanup27.i_crit_edge, %if.end.i.i.cleanup27.i_crit_edge
  tail call fastcc void @rbio_orig_end_io(ptr noundef %add.ptr, i8 noundef zeroext 10) #11
  %62 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %bio_list.promoted36.i = load ptr, ptr %bio_list.i, align 4
  %tobool.not.i1240.i = icmp eq ptr %bio_list.promoted36.i, null
  br i1 %tobool.not.i1240.i, label %cleanup27.i.raid56_rmw_stripe.exit_crit_edge, label %cleanup27.i.if.then.i14.i_crit_edge

cleanup27.i.if.then.i14.i_crit_edge:              ; preds = %cleanup27.i
  br label %if.then.i14.i

cleanup27.i.raid56_rmw_stripe.exit_crit_edge:     ; preds = %cleanup27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_rmw_stripe.exit

if.then.i14.i:                                    ; preds = %if.then.i14.i.if.then.i14.i_crit_edge, %cleanup27.i.if.then.i14.i_crit_edge
  %63 = phi ptr [ %65, %if.then.i14.i.if.then.i14.i_crit_edge ], [ %bio_list.promoted36.i, %cleanup27.i.if.then.i14.i_crit_edge ]
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %tobool4.not.i13.i = icmp eq ptr %65, null
  store ptr null, ptr %63, align 8
  tail call void @bio_put(ptr noundef nonnull %63) #11
  br i1 %tobool4.not.i13.i, label %if.then.i14.i.raid56_rmw_stripe.exit_crit_edge, label %if.then.i14.i.if.then.i14.i_crit_edge

if.then.i14.i.if.then.i14.i_crit_edge:            ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i14.i

if.then.i14.i.raid56_rmw_stripe.exit_crit_edge:   ; preds = %if.then.i14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raid56_rmw_stripe.exit

finish.i:                                         ; preds = %bio_list_size.exit.i
  %faila.i = getelementptr i8, ptr %work, i32 156
  %66 = ptrtoint ptr %faila.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %faila.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp.i1 = icmp sgt i32 %67, -1
  br i1 %cmp.i1, label %finish.i.do.body.i_crit_edge, label %lor.lhs.false.i

finish.i.do.body.i_crit_edge:                     ; preds = %finish.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %finish.i
  %failb.i = getelementptr i8, ptr %work, i32 160
  %68 = ptrtoint ptr %failb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %failb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %69)
  %cmp1.i = icmp sgt i32 %69, -1
  br i1 %cmp1.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %if.else.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %finish.i.do.body.i_crit_edge
  %real_stripes.i = getelementptr i8, ptr %work, i32 144
  %70 = ptrtoint ptr %real_stripes.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %real_stripes.i, align 4
  %sub.i = add i32 %71, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %sub.i)
  %cmp3.i = icmp eq i32 %67, %sub.i
  br i1 %cmp3.i, label %do.body6.i, label %do.end9.i, !prof !56

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #11, !srcloc !77
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__raid56_parity_recover(ptr noundef %add.ptr) #11
  br label %raid56_rmw_stripe.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_rmw(ptr noundef %add.ptr) #11
  br label %raid56_rmw_stripe.exit

raid56_rmw_stripe.exit:                           ; preds = %if.else.i, %do.end9.i, %if.then.i14.i.raid56_rmw_stripe.exit_crit_edge, %cleanup27.i.raid56_rmw_stripe.exit_crit_edge, %if.then.i.i.raid56_rmw_stripe.exit_crit_edge, %if.end23.i.raid56_rmw_stripe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bio_list.i) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_rmw_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter.i.i, align 8
  %shl.i.i = shl i64 %5, 9
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %num_stripes.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %num_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.i.i = icmp sgt i32 %9, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then
  %stripe_len.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i
  %physical2.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %physical2.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %physical2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %11)
  %cmp3.not.i.i = icmp ult i64 %shl.i.i, %11
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %12 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stripe_len.i.i, align 4
  %conv.i.i = sext i32 %13 to i64
  %add.i.i = add i64 %11, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i.i)
  %cmp5.i.i = icmp ult i64 %shl.i.i, %add.i.i
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %bdev.i.i = getelementptr inbounds %struct.btrfs_device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true7.i.i
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp11.i.i = icmp eq ptr %19, %17
  br i1 %cmp11.i.i, label %if.end.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call fastcc i32 @fail_rbio_index(ptr noundef %1, i32 noundef %i.028.i.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_bio_pages_uptodate(ptr noundef %bio)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %for.inc.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #11
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %stripes_pending, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripes_pending, ptr %stripes_pending, i32 1, ptr elementtype(i32) %stripes_pending) #11, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3, label %if.end.cleanup7_crit_edge

if.end.cleanup7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup7

if.end3:                                          ; preds = %if.end
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 21
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error, i32 noundef 4) #11
  %21 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %error, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %max_errors = getelementptr inbounds %struct.btrfs_io_context, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %max_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_errors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp = icmp sgt i32 %22, %26
  br i1 %cmp, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end3
  %faila.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %faila.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %faila.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i = icmp sgt i32 %28, -1
  br i1 %cmp.i, label %if.end6.do.body.i_crit_edge, label %lor.lhs.false.i

if.end6.do.body.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %failb.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %failb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %failb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp1.i = icmp sgt i32 %30, -1
  br i1 %cmp1.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %if.else.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.end6.do.body.i_crit_edge
  %real_stripes.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %real_stripes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %real_stripes.i, align 4
  %sub.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub.i)
  %cmp3.i = icmp eq i32 %28, %sub.i
  br i1 %cmp3.i, label %do.body6.i, label %do.end9.i, !prof !56

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1126, 0\0A.popsection", ""() #11, !srcloc !77
  unreachable

do.end9.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__raid56_parity_recover(ptr noundef %1) #11
  br label %cleanup7

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_rmw(ptr noundef %1) #11
  br label %cleanup7

cleanup:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rbio_orig_end_io(ptr noundef %1, i8 noundef zeroext 10)
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup, %if.else.i, %do.end9.i, %if.end.cleanup7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @btrfs_bio_wq_end_io(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_bio_pages_uptodate(ptr nocapture noundef readonly %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %0 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_flags.i, align 4
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.not = icmp eq i16 %2, 0
  br i1 %cmp.i.not, label %for.cond.preheader, label %cond.false, !prof !59

for.cond.preheader:                               ; preds = %entry
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %3 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.not.i16.not = icmp eq i16 %4, 0
  br i1 %cmp.not.i16.not, label %for.cond.preheader.for.end_crit_edge, label %if.end.i.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %for.cond.preheader
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  br label %if.end.i

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_handle_no_return()
  tail call fastcc void @assertfail(ptr noundef nonnull @.str.17, i32 noundef 1428) #15
  unreachable

if.end.i:                                         ; preds = %SetPageUptodate.exit.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.019 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %SetPageUptodate.exit.if.end.i_crit_edge ]
  %iter_all.sroa.11.018 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select14, %SetPageUptodate.exit.if.end.i_crit_edge ]
  %iter_all.sroa.15.017 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %SetPageUptodate.exit.if.end.i_crit_edge ]
  %5 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.017)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.15.017, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.019, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %6, i32 %iter_all.sroa.11.018
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %6, i32 %iter_all.sroa.11.018, i32 2
  %9 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %10, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %8, i32 %shr.i.i
  %and.i.i = and i32 %10, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %6, i32 %iter_all.sroa.11.018, i32 1
  %11 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_len.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %13 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %sub9.i.i = sub i32 %12, %iter_all.sroa.15.017
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #11
  %add.i.i = add i32 %16, %iter_all.sroa.15.017
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %12)
  %cmp15.i.i = icmp eq i32 %add.i.i, %12
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select14 = add nuw nsw i32 %iter_all.sroa.11.018, %inc.i.i
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  tail call void @_set_bit(i32 noundef 2, ptr noundef %iter_all.sroa.0.1) #11
  %17 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %18 to i32
  %cmp.not.i = icmp ult i32 %spec.select14, %conv.i
  br i1 %cmp.not.i, label %SetPageUptodate.exit.if.end.i_crit_edge, label %SetPageUptodate.exit.for.end_crit_edge

SetPageUptodate.exit.for.end_crit_edge:           ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

SetPageUptodate.exit.if.end.i_crit_edge:          ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.end:                                          ; preds = %SetPageUptodate.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_init_work(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unplug_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  tail call fastcc void @run_plug(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_plug(ptr noundef %plug) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rbio_list = getelementptr inbounds %struct.btrfs_plug_cb, ptr %plug, i32 0, i32 2
  tail call void @list_sort(ptr noundef null, ptr noundef %rbio_list, ptr noundef nonnull @plug_cmp) #11
  %0 = ptrtoint ptr %rbio_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rbio_list, align 4
  %cmp.i.not6062 = icmp eq ptr %1, %rbio_list
  br i1 %cmp.i.not6062, label %entry.if.end29_crit_edge, label %entry.while.body.lr.ph_crit_edge

entry.while.body.lr.ph_crit_edge:                 ; preds = %entry
  br label %while.body.lr.ph

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

while.body.lr.ph:                                 ; preds = %if.end25.while.body.lr.ph_crit_edge, %entry.while.body.lr.ph_crit_edge
  %2 = phi ptr [ %96, %if.end25.while.body.lr.ph_crit_edge ], [ %1, %entry.while.body.lr.ph_crit_edge ]
  %last.0.ph63 = phi ptr [ %add.ptr, %if.end25.while.body.lr.ph_crit_edge ], [ null, %entry.while.body.lr.ph_crit_edge ]
  %tobool18.not = icmp eq ptr %last.0.ph63, null
  %flags.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 7
  %operation.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 12
  %faila.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 13
  %failb.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 14
  %bio_list.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 4
  %tail.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 4, i32 1
  %bio_list_bytes2.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 17
  %generic_bio_cnt3.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %last.0.ph63, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %2, %while.body.lr.ph ], [ %94, %while.cond.backedge.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -144
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %bio_list_bytes.i = getelementptr i8, ptr %3, i32 48
  %12 = ptrtoint ptr %bio_list_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bio_list_bytes.i, align 4
  %bio_list_lock.i = getelementptr i8, ptr %3, i32 -44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bio_list_lock.i) #11
  %nr_data.i = getelementptr i8, ptr %3, i32 16
  %14 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_data.i, align 4
  %stripe_len.i = getelementptr i8, ptr %3, i32 12
  %16 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stripe_len.i, align 4
  %mul.i = mul i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul.i)
  %cmp11.i = icmp ugt i32 %13, %mul.i
  br i1 %cmp11.i, label %do.body15.i, label %rbio_is_full.exit, !prof !56

do.body15.i:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 527, 0\0A.popsection", ""() #11, !srcloc !57
  unreachable

rbio_is_full.exit:                                ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul.i)
  %cmp5.not.i.not = icmp eq i32 %13, %mul.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bio_list_lock.i, i32 noundef %call2.i) #11
  br i1 %cmp5.not.i.not, label %if.then, label %if.end17

if.then:                                          ; preds = %rbio_is_full.exit
  %18 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_data.i, align 4
  %stripe_npages.i.i.i = getelementptr i8, ptr %3, i32 24
  %20 = ptrtoint ptr %stripe_npages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stripe_npages.i.i.i, align 4
  %mul.i.i.i = mul i32 %21, %19
  %nr_pages.i.i = getelementptr i8, ptr %3, i32 44
  %22 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i.i, i32 %23)
  %cmp16.i.i = icmp slt i32 %mul.i.i.i, %23
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %stripe_pages.i.i = getelementptr i8, ptr %3, i32 68
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ %mul.i.i.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %i.017.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i44, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i44:                                     ; preds = %for.body.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool2.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %do.body11, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %stripe_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stripe_pages.i.i, align 4
  %arrayidx6.i.i = getelementptr ptr, ptr %29, i32 %i.017.i.i
  %30 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call38.i.i.i.i.i, ptr %arrayidx6.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end4.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nsw i32 %i.017.i.i, 1
  %31 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_pages.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %32
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %call1.i = tail call fastcc i32 @lock_stripe_add(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i45 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i45, label %if.then2.i, label %if.end.i.while.cond.backedge_crit_edge

if.end.i.while.cond.backedge_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_rmw(ptr noundef %add.ptr) #11
  br label %while.cond.backedge

do.body11:                                        ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__free_raid_bio(ptr noundef %add.ptr) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1671, 0\0A.popsection", ""() #11, !srcloc !78
  unreachable

if.end17:                                         ; preds = %rbio_is_full.exit
  br i1 %tobool18.not, label %if.end17.if.end25_crit_edge, label %if.then19

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then19:                                        ; preds = %if.end17
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags.i, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then19.if.end23_crit_edge

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

lor.lhs.false.i:                                  ; preds = %if.then19
  %flags1.i = getelementptr i8, ptr %3, i32 8
  %36 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags1.i, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not.i = icmp eq i32 %38, 0
  br i1 %tobool3.not.i, label %if.end.i46, label %lor.lhs.false.i.if.end23_crit_edge

lor.lhs.false.i.if.end23_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end.i46:                                       ; preds = %lor.lhs.false.i
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool6.not.i = icmp eq i32 %41, 0
  br i1 %tobool6.not.i, label %lor.lhs.false7.i, label %if.end.i46.if.end23_crit_edge

if.end.i46.if.end23_crit_edge:                    ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

lor.lhs.false7.i:                                 ; preds = %if.end.i46
  %42 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags1.i, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool10.not.i = icmp eq i32 %44, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %lor.lhs.false7.i.if.end23_crit_edge

lor.lhs.false7.i.if.end23_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end12.i:                                       ; preds = %lor.lhs.false7.i
  %45 = ptrtoint ptr %last.0.ph63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %last.0.ph63, align 4
  %raid_map.i = getelementptr inbounds %struct.btrfs_io_context, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %raid_map.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %raid_map.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %48, align 8
  %51 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr, align 4
  %raid_map14.i = getelementptr inbounds %struct.btrfs_io_context, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %raid_map14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %raid_map14.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %56)
  %cmp.not.i = icmp eq i64 %50, %56
  br i1 %cmp.not.i, label %if.end17.i, label %if.end12.i.if.end23_crit_edge

if.end12.i.if.end23_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end17.i:                                       ; preds = %if.end12.i
  %57 = ptrtoint ptr %operation.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %operation.i, align 4
  %operation18.i = getelementptr i8, ptr %3, i32 28
  %59 = ptrtoint ptr %operation18.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %operation18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp19.not.i = icmp eq i32 %58, %60
  br i1 %cmp19.not.i, label %if.end21.i, label %if.end17.i.if.end23_crit_edge

if.end17.i.if.end23_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end21.i:                                       ; preds = %if.end17.i
  %61 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %58, label %if.end21.i.if.then22_crit_edge [
    i32 2, label %if.end21.i.if.end23_crit_edge
    i32 3, label %if.end21.i.if.end23_crit_edge112
    i32 1, label %if.then32.i
  ]

if.end21.i.if.end23_crit_edge112:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end21.i.if.end23_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end21.i.if.then22_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then32.i:                                      ; preds = %if.end21.i
  %62 = ptrtoint ptr %faila.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %faila.i, align 4
  %64 = ptrtoint ptr %failb.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %failb.i, align 4
  %faila33.i = getelementptr i8, ptr %3, i32 32
  %66 = ptrtoint ptr %faila33.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %faila33.i, align 4
  %failb34.i = getelementptr i8, ptr %3, i32 36
  %68 = ptrtoint ptr %failb34.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %failb34.i, align 4
  %70 = tail call i32 @llvm.smin.i32(i32 %63, i32 %65) #11
  %71 = tail call i32 @llvm.smax.i32(i32 %63, i32 %65) #11
  %72 = tail call i32 @llvm.smin.i32(i32 %67, i32 %69) #11
  %73 = tail call i32 @llvm.smax.i32(i32 %67, i32 %69) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp49.not.i = icmp eq i32 %70, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp51.not.i = icmp eq i32 %71, %73
  %or.cond.i = select i1 %cmp49.not.i, i1 %cmp51.not.i, i1 false
  br i1 %or.cond.i, label %if.then32.i.if.then22_crit_edge, label %if.then32.i.if.end23_crit_edge

if.then32.i.if.end23_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then32.i.if.then22_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then22:                                        ; preds = %if.then32.i.if.then22_crit_edge, %if.end21.i.if.then22_crit_edge
  %bio_list1.i = getelementptr i8, ptr %3, i32 -52
  %74 = ptrtoint ptr %bio_list1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bio_list1.i, align 4
  %tobool.not.i.i47 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i47, label %if.then22.merge_rbio.exit_crit_edge, label %if.end.i.i48

if.then22.merge_rbio.exit_crit_edge:              ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %merge_rbio.exit

if.end.i.i48:                                     ; preds = %if.then22
  %76 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %77, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %77, align 8
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %bio_list.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %75, ptr %bio_list.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.then2.i.i
  %tail8.i.i = getelementptr i8, ptr %3, i32 -48
  %80 = ptrtoint ptr %tail8.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail8.i.i, align 4
  %82 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %tail.i.i, align 4
  br label %merge_rbio.exit

merge_rbio.exit:                                  ; preds = %if.end7.i.i, %if.then22.merge_rbio.exit_crit_edge
  %83 = ptrtoint ptr %bio_list_bytes.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bio_list_bytes.i, align 4
  %85 = ptrtoint ptr %bio_list_bytes2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bio_list_bytes2.i, align 4
  %add.i = add i32 %86, %84
  store i32 %add.i, ptr %bio_list_bytes2.i, align 4
  %generic_bio_cnt.i = getelementptr i8, ptr %3, i32 52
  %87 = ptrtoint ptr %generic_bio_cnt.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %generic_bio_cnt.i, align 4
  %89 = ptrtoint ptr %generic_bio_cnt3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %generic_bio_cnt3.i, align 4
  %add4.i = add i32 %90, %88
  store i32 %add4.i, ptr %generic_bio_cnt3.i, align 4
  %tail.i11.i = getelementptr i8, ptr %3, i32 -48
  %91 = ptrtoint ptr %tail.i11.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %tail.i11.i, align 4
  %92 = ptrtoint ptr %bio_list1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %bio_list1.i, align 4
  tail call fastcc void @__free_raid_bio(ptr noundef %add.ptr)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %merge_rbio.exit, %if.then2.i, %if.end.i.while.cond.backedge_crit_edge
  %93 = ptrtoint ptr %rbio_list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %rbio_list, align 4
  %cmp.i.not = icmp eq ptr %94, %rbio_list
  br i1 %cmp.i.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end23:                                         ; preds = %if.then32.i.if.end23_crit_edge, %if.end21.i.if.end23_crit_edge, %if.end21.i.if.end23_crit_edge112, %if.end17.i.if.end23_crit_edge, %if.end12.i.if.end23_crit_edge, %lor.lhs.false7.i.if.end23_crit_edge, %if.end.i46.if.end23_crit_edge, %lor.lhs.false.i.if.end23_crit_edge, %if.then19.if.end23_crit_edge
  %call24 = tail call fastcc i32 @__raid56_parity_write(ptr noundef nonnull %last.0.ph63)
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end17.if.end25_crit_edge
  %95 = ptrtoint ptr %rbio_list to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile ptr, ptr %rbio_list, align 4
  %cmp.i.not60 = icmp eq ptr %96, %rbio_list
  br i1 %cmp.i.not60, label %if.end25.while.end_crit_edge, label %if.end25.while.body.lr.ph_crit_edge

if.end25.while.body.lr.ph_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.lr.ph

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge
  %last.0.ph.lcssa59 = phi ptr [ %last.0.ph63, %while.cond.backedge.while.end_crit_edge ], [ %add.ptr, %if.end25.while.end_crit_edge ]
  %tobool26.not = icmp eq ptr %last.0.ph.lcssa59, null
  br i1 %tobool26.not, label %while.end.if.end29_crit_edge, label %if.then27

while.end.if.end29_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then27:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call fastcc i32 @__raid56_parity_write(ptr noundef nonnull %last.0.ph.lcssa59)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %while.end.if.end29_crit_edge, %entry.if.end29_crit_edge
  tail call void @kfree(ptr noundef %plug) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @plug_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bio_list = getelementptr i8, ptr %a, i32 -52
  %0 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_list, align 4
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %bio_list4 = getelementptr i8, ptr %b, i32 -52
  %4 = ptrtoint ptr %bio_list4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio_list4, align 4
  %bi_iter6 = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %bi_iter6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %7)
  %cmp = icmp ult i64 %3, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %7)
  %cmp8 = icmp ugt i64 %3, %7
  %. = zext i1 %cmp8 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__raid_recover_end_io(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %real_stripes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 10
  %0 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %real_stripes, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_io_crit_edge, label %if.end7.i.i, !prof !56

entry.cleanup_io_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_io

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3392) #14
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_io_crit_edge, label %if.end

if.end7.i.i.cleanup_io_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_io

if.end:                                           ; preds = %if.end7.i.i
  %5 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %real_stripes, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #11
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end.cleanup_pointers_crit_edge, label %if.end7.i.i333, !prof !56

if.end.cleanup_pointers_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_pointers

if.end7.i.i333:                                   ; preds = %if.end
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i332 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3392) #14
  %tobool3.not = icmp eq ptr %call8.i.i332, null
  br i1 %tobool3.not, label %if.end7.i.i333.cleanup_pointers_crit_edge, label %if.end5

if.end7.i.i333.cleanup_pointers_crit_edge:        ; preds = %if.end7.i.i333
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_pointers

if.end5:                                          ; preds = %if.end7.i.i333
  %faila6 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %10 = ptrtoint ptr %faila6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %faila6, align 4
  %failb7 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %12 = ptrtoint ptr %failb7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %failb7, align 4
  %operation = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 12
  %14 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %operation, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %15, label %if.end5.if.end12_crit_edge [
    i32 1, label %if.end5.if.then10_crit_edge
    i32 3, label %if.end5.if.then10_crit_edge410
  ]

if.end5.if.then10_crit_edge410:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end5.if.then10_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then10:                                        ; preds = %if.end5.if.then10_crit_edge, %if.end5.if.then10_crit_edge410
  %bio_list_lock = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock) #11
  %flags = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end5.if.end12_crit_edge
  tail call fastcc void @index_rbio_pages(ptr noundef %rbio)
  %stripe_npages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %17 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13379 = icmp sgt i32 %18, 0
  br i1 %cmp13379, label %for.body.lr.ph, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %dbitmap = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 24
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  %bio_list_lock.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  %bio_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  %stripe_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %nr_data = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc138.for.body_crit_edge, %for.body.lr.ph
  %pagenr.0384 = phi i32 [ 0, %for.body.lr.ph ], [ %inc139, %for.inc138.for.body_crit_edge ]
  %failb.0382 = phi i32 [ %13, %for.body.lr.ph ], [ %failb.4, %for.inc138.for.body_crit_edge ]
  %faila.0380 = phi i32 [ %11, %for.body.lr.ph ], [ %faila.4, %for.inc138.for.body_crit_edge ]
  %19 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %operation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp15 = icmp eq i32 %20, 2
  br i1 %cmp15, label %land.lhs.true, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %21 = ptrtoint ptr %dbitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dbitmap, align 4
  %div3.i = lshr i32 %pagenr.0384, 5
  %arrayidx.i = getelementptr i32, ptr %22, i32 %div3.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pagenr.0384, 31
  %25 = shl nuw i32 1, %and.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool17.not = icmp eq i32 %26, 0
  br i1 %tobool17.not, label %land.lhs.true.for.inc138_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true.for.inc138_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc138

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %27 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %real_stripes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp22366 = icmp sgt i32 %28, 0
  br i1 %cmp22366, label %if.end19.for.body23_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end19.for.body23_crit_edge:                    ; preds = %if.end19
  br label %for.body23

for.body23:                                       ; preds = %if.end36.for.body23_crit_edge, %if.end19.for.body23_crit_edge
  %stripe.0367 = phi i32 [ %inc, %if.end36.for.body23_crit_edge ], [ 0, %if.end19.for.body23_crit_edge ]
  %29 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %operation, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %30, label %for.body23.if.else_crit_edge [
    i32 1, label %for.body23.land.lhs.true29_crit_edge
    i32 3, label %for.body23.land.lhs.true29_crit_edge411
  ]

for.body23.land.lhs.true29_crit_edge411:          ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true29

for.body23.land.lhs.true29_crit_edge:             ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true29

for.body23.if.else_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true29:                                  ; preds = %for.body23.land.lhs.true29_crit_edge, %for.body23.land.lhs.true29_crit_edge411
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.0367, i32 %faila.0380)
  %cmp30 = icmp eq i32 %stripe.0367, %faila.0380
  call void @__sanitizer_cov_trace_cmp4(i32 %stripe.0367, i32 %failb.0382)
  %cmp32 = icmp eq i32 %stripe.0367, %failb.0382
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp32
  br i1 %or.cond, label %if.then33, label %land.lhs.true29.if.else_crit_edge

land.lhs.true29.if.else_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true29
  %32 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stripe_len.i, align 4
  %shr.i336 = ashr i32 %33, 12
  %mul.i = mul i32 %shr.i336, %stripe.0367
  %add.i = add i32 %mul.i, %pagenr.0384
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock.i) #11
  %34 = ptrtoint ptr %bio_pages.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bio_pages.i, align 4
  %arrayidx.i337 = getelementptr ptr, ptr %35, i32 %add.i
  %36 = ptrtoint ptr %arrayidx.i337 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i337, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock.i) #11
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then33.if.end36_crit_edge

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %39, i32 %add.i
  br label %if.end36.sink.split

if.else:                                          ; preds = %land.lhs.true29.if.else_crit_edge, %for.body23.if.else_crit_edge
  %40 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stripe_pages.i, align 4
  %42 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stripe_npages, align 4
  %mul.i.i = mul i32 %43, %stripe.0367
  %add.i.i = add i32 %mul.i.i, %pagenr.0384
  %arrayidx.i339 = getelementptr ptr, ptr %41, i32 %add.i.i
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.else, %if.end.i
  %arrayidx3.i.sink = phi ptr [ %arrayidx3.i, %if.end.i ], [ %arrayidx.i339, %if.else ]
  %44 = ptrtoint ptr %arrayidx3.i.sink to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx3.i.sink, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.then33.if.end36_crit_edge
  %page.0 = phi ptr [ %37, %if.then33.if.end36_crit_edge ], [ %45, %if.end36.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %46, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page.0, i32 noundef %or.i) #11
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %stripe.0367
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %arrayidx, align 4
  %arrayidx39 = getelementptr ptr, ptr %call8.i.i332, i32 %stripe.0367
  %48 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %arrayidx39, align 4
  %inc = add nuw nsw i32 %stripe.0367, 1
  %49 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %real_stripes, align 4
  %cmp22 = icmp slt i32 %inc, %50
  br i1 %cmp22, label %if.end36.for.body23_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end36.for.body23_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %if.end19.for.end_crit_edge
  %.lcssa = phi i32 [ %28, %if.end19.for.end_crit_edge ], [ %50, %if.end36.for.end_crit_edge ]
  %51 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rbio, align 4
  %map_type = getelementptr inbounds %struct.btrfs_io_context, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %map_type to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %map_type, align 8
  %and = and i64 %54, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool40.not = icmp eq i64 %and, 0
  br i1 %tobool40.not, label %if.else71, label %if.then41

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %failb.0382)
  %cmp42 = icmp slt i32 %failb.0382, 0
  br i1 %cmp42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.then41
  %55 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %faila.0380, i32 %56)
  %cmp44 = icmp eq i32 %faila.0380, %56
  br i1 %cmp44, label %if.then43.cleanup_crit_edge, label %if.then43.pstripe_crit_edge

if.then43.pstripe_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %pstripe

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.then41
  %57 = tail call i32 @llvm.smin.i32(i32 %faila.0380, i32 %failb.0382)
  %58 = tail call i32 @llvm.smax.i32(i32 %faila.0380, i32 %failb.0382)
  %raid_map = getelementptr inbounds %struct.btrfs_io_context, ptr %52, i32 0, i32 13
  %59 = ptrtoint ptr %raid_map to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %raid_map, align 4
  %arrayidx52 = getelementptr i64, ptr %60, i32 %58
  %61 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx52, align 8
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.27)
  switch i64 %62, label %if.else68 [
    i64 -1, label %if.then54
    i64 -2, label %if.then66
  ]

if.then54:                                        ; preds = %if.end47
  %arrayidx57 = getelementptr i64, ptr %60, i32 %57
  %63 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %64)
  %cmp58 = icmp eq i64 %64, -2
  br i1 %cmp58, label %if.then54.cleanup_crit_edge, label %if.then54.pstripe_crit_edge

if.then54.pstripe_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %pstripe

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then66:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_datap_recov to i32))
  %65 = load ptr, ptr @raid6_datap_recov, align 4
  tail call void %65(i32 noundef %.lcssa, i32 noundef 4096, i32 noundef %57, ptr noundef nonnull %call8.i.i) #11
  br label %if.end104

if.else68:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_2data_recov to i32))
  %66 = load ptr, ptr @raid6_2data_recov, align 4
  tail call void %66(i32 noundef %.lcssa, i32 noundef 4096, i32 noundef %57, i32 noundef %58, ptr noundef nonnull %call8.i.i) #11
  br label %if.end104

if.else71:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %failb.0382)
  %cmp73.not = icmp eq i32 %failb.0382, -1
  br i1 %cmp73.not, label %if.else71.pstripe_crit_edge, label %do.body77, !prof !59

if.else71.pstripe_crit_edge:                      ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #13
  br label %pstripe

do.body77:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1900, 0\0A.popsection", ""() #11, !srcloc !79
  unreachable

pstripe:                                          ; preds = %if.else71.pstripe_crit_edge, %if.then54.pstripe_crit_edge, %if.then43.pstripe_crit_edge
  %faila.2 = phi i32 [ %faila.0380, %if.then43.pstripe_crit_edge ], [ %57, %if.then54.pstripe_crit_edge ], [ %faila.0380, %if.else71.pstripe_crit_edge ]
  %failb.2 = phi i32 [ %failb.0382, %if.then43.pstripe_crit_edge ], [ %58, %if.then54.pstripe_crit_edge ], [ -1, %if.else71.pstripe_crit_edge ]
  %arrayidx86 = getelementptr ptr, ptr %call8.i.i, i32 %faila.2
  %67 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx86, align 4
  %69 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_data, align 4
  %arrayidx88 = getelementptr ptr, ptr %call8.i.i, i32 %70
  %71 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx88, align 4
  tail call void @copy_page(ptr noundef %68, ptr noundef %72) #11
  %73 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx86, align 4
  %75 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_data, align 4
  %sub369 = add i32 %76, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %faila.2, i32 %sub369)
  %cmp92370 = icmp slt i32 %faila.2, %sub369
  br i1 %cmp92370, label %for.body93.preheader, label %pstripe.for.end98_crit_edge

pstripe.for.end98_crit_edge:                      ; preds = %pstripe
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end98

for.body93.preheader:                             ; preds = %pstripe
  %77 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_data, align 4
  %sub = add i32 %78, -1
  br label %for.body93

for.body93:                                       ; preds = %for.body93.for.body93_crit_edge, %for.body93.preheader
  %stripe.1371 = phi i32 [ %add, %for.body93.for.body93_crit_edge ], [ %faila.2, %for.body93.preheader ]
  %add = add nsw i32 %stripe.1371, 1
  %arrayidx94 = getelementptr ptr, ptr %call8.i.i, i32 %add
  %79 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx94, align 4
  %arrayidx95 = getelementptr ptr, ptr %call8.i.i, i32 %stripe.1371
  %81 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %arrayidx95, align 4
  %cmp92 = icmp slt i32 %add, %sub
  br i1 %cmp92, label %for.body93.for.body93_crit_edge, label %for.body93.for.end98_crit_edge

for.body93.for.end98_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end98

for.body93.for.body93_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body93

for.end98:                                        ; preds = %for.body93.for.end98_crit_edge, %pstripe.for.end98_crit_edge
  %sub.lcssa = phi i32 [ %sub369, %pstripe.for.end98_crit_edge ], [ %sub, %for.body93.for.end98_crit_edge ]
  %arrayidx101 = getelementptr ptr, ptr %call8.i.i, i32 %sub.lcssa
  %82 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %74, ptr %arrayidx101, align 4
  %83 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_data, align 4
  %sub103 = add i32 %84, -1
  %arrayidx.i340 = getelementptr ptr, ptr %call8.i.i, i32 %sub103
  %85 = ptrtoint ptr %arrayidx.i340 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub103)
  %cmp1.i = icmp sgt i32 %sub103, 0
  br i1 %cmp1.i, label %for.end98.while.body.i_crit_edge, label %for.end98.if.end104_crit_edge

for.end98.if.end104_crit_edge:                    ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

for.end98.while.body.i_crit_edge:                 ; preds = %for.end98
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end98.while.body.i_crit_edge
  %src_cnt.addr.03.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %sub103, %for.end98.while.body.i_crit_edge ]
  %src_off.02.i = phi i32 [ %add.i341, %while.body.i.while.body.i_crit_edge ], [ 0, %for.end98.while.body.i_crit_edge ]
  %87 = tail call i32 @llvm.umin.i32(i32 %src_cnt.addr.03.i, i32 4) #11
  %add.ptr.i = getelementptr ptr, ptr %call8.i.i, i32 %src_off.02.i
  tail call void @xor_blocks(i32 noundef %87, i32 noundef 4096, ptr noundef %86, ptr noundef %add.ptr.i) #11
  %sub.i = sub nsw i32 %src_cnt.addr.03.i, %87
  %add.i341 = add i32 %87, %src_off.02.i
  %cmp.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end104_crit_edge

while.body.i.if.end104_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end104:                                        ; preds = %while.body.i.if.end104_crit_edge, %for.end98.if.end104_crit_edge, %if.else68, %if.then66
  %faila.3 = phi i32 [ %57, %if.then66 ], [ %57, %if.else68 ], [ %faila.2, %for.end98.if.end104_crit_edge ], [ %faila.2, %while.body.i.if.end104_crit_edge ]
  %failb.3 = phi i32 [ %58, %if.then66 ], [ %58, %if.else68 ], [ %failb.2, %for.end98.if.end104_crit_edge ], [ %failb.2, %while.body.i.if.end104_crit_edge ]
  %88 = ptrtoint ptr %operation to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %operation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp106 = icmp eq i32 %89, 0
  br i1 %cmp106, label %for.cond108.preheader, label %if.end104.if.end123_crit_edge

if.end104.if.end123_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

for.cond108.preheader:                            ; preds = %if.end104
  %90 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %stripe_npages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp110373 = icmp sgt i32 %91, 0
  br i1 %cmp110373, label %for.body111.lr.ph, label %for.cond108.preheader.if.end123_crit_edge

for.cond108.preheader.if.end123_crit_edge:        ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

for.body111.lr.ph:                                ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %faila.3)
  %cmp112.not = icmp eq i32 %faila.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %failb.3)
  %cmp116.not = icmp eq i32 %failb.3, -1
  br label %for.body111

for.body111:                                      ; preds = %for.inc120.for.body111_crit_edge, %for.body111.lr.ph
  %92 = phi i32 [ %91, %for.body111.lr.ph ], [ %110, %for.inc120.for.body111_crit_edge ]
  %i.0374 = phi i32 [ 0, %for.body111.lr.ph ], [ %inc121, %for.inc120.for.body111_crit_edge ]
  br i1 %cmp112.not, label %for.body111.if.end115_crit_edge, label %if.then113

for.body111.if.end115_crit_edge:                  ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

if.then113:                                       ; preds = %for.body111
  %93 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stripe_pages.i, align 4
  %mul.i.i344 = mul i32 %92, %faila.3
  %add.i.i345 = add i32 %mul.i.i344, %i.0374
  %arrayidx.i346 = getelementptr ptr, ptr %94, i32 %add.i.i345
  %95 = ptrtoint ptr %arrayidx.i346 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i346, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %97 = getelementptr inbounds %struct.page, ptr %96, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %97, align 4
  %and.i.i.i.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %96, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %96) #11
  br label %if.end115

if.end115:                                        ; preds = %SetPageUptodate.exit, %for.body111.if.end115_crit_edge
  br i1 %cmp116.not, label %if.end115.for.inc120_crit_edge, label %if.then117

if.end115.for.inc120_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc120

if.then117:                                       ; preds = %if.end115
  %100 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %stripe_pages.i, align 4
  %102 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %stripe_npages, align 4
  %mul.i.i349 = mul i32 %103, %failb.3
  %add.i.i350 = add i32 %mul.i.i349, %i.0374
  %arrayidx.i351 = getelementptr ptr, ptr %101, i32 %add.i.i350
  %104 = ptrtoint ptr %arrayidx.i351 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i351, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %106 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 1
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  %and.i.i.i.i298 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i298)
  %tobool.not.i.i.i299 = icmp eq i32 %and.i.i.i.i298, 0
  br i1 %tobool.not.i.i.i299, label %SetPageUptodate.exit301, label %if.then.i.i.i300, !prof !59

if.then.i.i.i300:                                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %105, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit301:                          ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %105) #11
  br label %for.inc120

for.inc120:                                       ; preds = %SetPageUptodate.exit301, %if.end115.for.inc120_crit_edge
  %inc121 = add nuw nsw i32 %i.0374, 1
  %109 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %stripe_npages, align 4
  %cmp110 = icmp slt i32 %inc121, %110
  br i1 %cmp110, label %for.inc120.for.body111_crit_edge, label %for.inc120.if.end123_crit_edge

for.inc120.if.end123_crit_edge:                   ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

for.inc120.for.body111_crit_edge:                 ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body111

if.end123:                                        ; preds = %for.inc120.if.end123_crit_edge, %for.cond108.preheader.if.end123_crit_edge, %if.end104.if.end123_crit_edge
  %111 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %real_stripes, align 4
  %stripe.2376 = add i32 %112, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %stripe.2376)
  %cmp127377 = icmp sgt i32 %stripe.2376, -1
  br i1 %cmp127377, label %if.end123.do.end132_crit_edge, label %if.end123.for.inc138_crit_edge

if.end123.for.inc138_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc138

if.end123.do.end132_crit_edge:                    ; preds = %if.end123
  br label %do.end132

do.end132:                                        ; preds = %do.end132.do.end132_crit_edge, %if.end123.do.end132_crit_edge
  %stripe.2378 = phi i32 [ %stripe.2, %do.end132.do.end132_crit_edge ], [ %stripe.2376, %if.end123.do.end132_crit_edge ]
  %arrayidx133 = getelementptr ptr, ptr %call8.i.i332, i32 %stripe.2378
  %113 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx133, align 4
  tail call void @kunmap_local_indexed(ptr noundef %114) #11
  %stripe.2 = add nsw i32 %stripe.2378, -1
  %cmp127 = icmp sgt i32 %stripe.2378, 0
  br i1 %cmp127, label %do.end132.do.end132_crit_edge, label %do.end132.for.inc138_crit_edge

do.end132.for.inc138_crit_edge:                   ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc138

do.end132.do.end132_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end132

for.inc138:                                       ; preds = %do.end132.for.inc138_crit_edge, %if.end123.for.inc138_crit_edge, %land.lhs.true.for.inc138_crit_edge
  %faila.4 = phi i32 [ %faila.0380, %land.lhs.true.for.inc138_crit_edge ], [ %faila.3, %if.end123.for.inc138_crit_edge ], [ %faila.3, %do.end132.for.inc138_crit_edge ]
  %failb.4 = phi i32 [ %failb.0382, %land.lhs.true.for.inc138_crit_edge ], [ %failb.3, %if.end123.for.inc138_crit_edge ], [ %failb.3, %do.end132.for.inc138_crit_edge ]
  %inc139 = add nuw nsw i32 %pagenr.0384, 1
  %115 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %stripe_npages, align 4
  %cmp13 = icmp slt i32 %inc139, %116
  br i1 %cmp13, label %for.inc138.for.body_crit_edge, label %for.inc138.cleanup_crit_edge

for.inc138.cleanup_crit_edge:                     ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc138.for.body_crit_edge:                    ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc138.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %err.0 = phi i8 [ 0, %if.end12.cleanup_crit_edge ], [ 0, %for.inc138.cleanup_crit_edge ], [ 10, %if.then54.cleanup_crit_edge ], [ 10, %if.then43.cleanup_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i332) #11
  br label %cleanup_pointers

cleanup_pointers:                                 ; preds = %cleanup, %if.end7.i.i333.cleanup_pointers_crit_edge, %if.end.cleanup_pointers_crit_edge
  %err.1 = phi i8 [ %err.0, %cleanup ], [ 9, %if.end7.i.i333.cleanup_pointers_crit_edge ], [ 9, %if.end.cleanup_pointers_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup_io

cleanup_io:                                       ; preds = %cleanup_pointers, %if.end7.i.i.cleanup_io_crit_edge, %entry.cleanup_io_crit_edge
  %err.2 = phi i8 [ %err.1, %cleanup_pointers ], [ 9, %if.end7.i.i.cleanup_io_crit_edge ], [ 9, %entry.cleanup_io_crit_edge ]
  %operation141 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 12
  %117 = ptrtoint ptr %operation141 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %operation141, align 4
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %118, label %if.else157 [
    i32 1, label %cleanup_io.if.then146_crit_edge
    i32 3, label %cleanup_io.if.then146_crit_edge412
  ]

cleanup_io.if.then146_crit_edge412:               ; preds = %cleanup_io
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

cleanup_io.if.then146_crit_edge:                  ; preds = %cleanup_io
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

if.then146:                                       ; preds = %cleanup_io.if.then146_crit_edge, %cleanup_io.if.then146_crit_edge412
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %err.2)
  %cmp147 = icmp eq i8 %err.2, 0
  br i1 %cmp147, label %land.lhs.true149, label %if.then146.if.else154_crit_edge

if.then146.if.else154_crit_edge:                  ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else154

land.lhs.true149:                                 ; preds = %if.then146
  %failb150 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %120 = ptrtoint ptr %failb150 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %failb150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp151 = icmp slt i32 %121, 0
  br i1 %cmp151, label %if.then153, label %land.lhs.true149.if.else154_crit_edge

land.lhs.true149.if.else154_crit_edge:            ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else154

if.then153:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @cache_rbio_pages(ptr noundef %rbio)
  br label %if.end156

if.else154:                                       ; preds = %land.lhs.true149.if.else154_crit_edge, %if.then146.if.else154_crit_edge
  %flags155 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags155) #11
  br label %if.end156

if.end156:                                        ; preds = %if.else154, %if.then153
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext %err.2)
  br label %if.end184

if.else157:                                       ; preds = %cleanup_io
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %err.2)
  %cmp159 = icmp eq i8 %err.2, 0
  br i1 %cmp159, label %if.then161, label %if.else182

if.then161:                                       ; preds = %if.else157
  %faila162 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %122 = ptrtoint ptr %faila162 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -1, ptr %faila162, align 4
  %failb163 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %123 = ptrtoint ptr %failb163 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %failb163, align 4
  %124 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %118, label %do.body174 [
    i32 0, label %if.then167
    i32 2, label %if.then172
  ]

if.then167:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_rmw(ptr noundef %rbio)
  br label %if.end184

if.then172:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_parity_scrub(ptr noundef %rbio, i32 noundef 0)
  br label %if.end184

do.body174:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1980, 0\0A.popsection", ""() #11, !srcloc !80
  unreachable

if.else182:                                       ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext %err.2)
  br label %if.end184

if.end184:                                        ; preds = %if.else182, %if.then172, %if.then167, %if.end156
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid_recover_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter.i.i, align 8
  %shl.i.i = shl i64 %5, 9
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %num_stripes.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %num_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.i.i = icmp sgt i32 %9, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then
  %stripe_len.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i
  %physical2.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %physical2.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %physical2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %11)
  %cmp3.not.i.i = icmp ult i64 %shl.i.i, %11
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %12 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stripe_len.i.i, align 4
  %conv.i.i = sext i32 %13 to i64
  %add.i.i = add i64 %11, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i.i)
  %cmp5.i.i = icmp ult i64 %shl.i.i, %add.i.i
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %bdev.i.i = getelementptr inbounds %struct.btrfs_device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true7.i.i
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp11.i.i = icmp eq ptr %19, %17
  br i1 %cmp11.i.i, label %if.end.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call fastcc i32 @fail_rbio_index(ptr noundef %1, i32 noundef %i.028.i.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_bio_pages_uptodate(ptr noundef %bio)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %for.inc.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #11
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %stripes_pending, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripes_pending, ptr %stripes_pending, i32 1, ptr elementtype(i32) %stripes_pending) #11, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 21
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %error, i32 noundef 4) #11
  %21 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %error, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %max_errors = getelementptr inbounds %struct.btrfs_io_context, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %max_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_errors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp = icmp sgt i32 %22, %26
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rbio_orig_end_io(ptr noundef %1, i8 noundef zeroext 10)
  br label %cleanup

if.else6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__raid_recover_end_io(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else6, %if.then5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @finish_parity_scrub(ptr noundef %rbio, i32 noundef %need_check) unnamed_addr #5 align 64 {
entry:
  %bio_list = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbio, align 4
  %finish_pointers = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 25
  %2 = ptrtoint ptr %finish_pointers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %finish_pointers, align 4
  %finish_pbitmap = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 26
  %4 = ptrtoint ptr %finish_pbitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %finish_pbitmap, align 4
  %nr_data2 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  %6 = ptrtoint ptr %nr_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_data2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bio_list) #11
  %8 = getelementptr inbounds %struct.bio_list, ptr %bio_list, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  %10 = ptrtoint ptr %bio_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bio_list, align 4
  %real_stripes = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 10
  %11 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %real_stripes, align 4
  %sub = sub i32 %12, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  %sub.off = add i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.off)
  %switch = icmp ult i32 %sub.off, 2
  br i1 %switch, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/btrfs/raid56.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #11, !srcloc !81
  unreachable

if.end13:                                         ; preds = %entry
  %num_tgtdevs = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %num_tgtdevs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_tgtdevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end13.if.end16_crit_edge, label %land.lhs.true

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end13
  %tgtdev_map = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %tgtdev_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tgtdev_map, align 8
  %scrubp = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 15
  %17 = ptrtoint ptr %scrubp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scrubp, align 4
  %arrayidx = getelementptr i32, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %if.then15

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dbitmap = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 24
  %21 = ptrtoint ptr %dbitmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dbitmap, align 4
  %stripe_npages = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %23 = ptrtoint ptr %stripe_npages to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stripe_npages, align 4
  %sub.i = add i32 %24, 31
  %25 = lshr i32 %sub.i, 3
  %mul.i = and i32 %25, 536870908
  %26 = call ptr @memcpy(ptr %5, ptr %22, i32 %mul.i)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %if.end13.if.end16_crit_edge
  %tobool131.not = phi i1 [ false, %if.then15 ], [ true, %land.lhs.true.if.end16_crit_edge ], [ true, %if.end13.if.end16_crit_edge ]
  %flags = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_check)
  %tobool17.not = icmp eq i32 %need_check, 0
  br i1 %tobool17.not, label %if.end16.writeback_crit_edge, label %if.end19

if.end16.writeback_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %writeback

if.end19:                                         ; preds = %if.end16
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool20.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool20.not, label %if.end19.cleanup165_crit_edge, label %if.end22

if.end19.cleanup165_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup165

if.end22:                                         ; preds = %if.end19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %27 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end22
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call38.i.i.i) #11
  br i1 %cmp, label %SetPageUptodate.exit.if.end33_crit_edge, label %if.then24

SetPageUptodate.exit.if.end33_crit_edge:          ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then24:                                        ; preds = %SetPageUptodate.exit
  %call38.i.i.i299 = tail call ptr @__alloc_pages(i32 noundef 3136, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool26.not = icmp eq ptr %call38.i.i.i299, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  br label %cleanup165

if.end28:                                         ; preds = %if.then24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !71
  %30 = getelementptr inbounds %struct.page, ptr %call38.i.i.i299, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and.i.i.i.i294 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i294)
  %tobool.not.i.i.i295 = icmp eq i32 %and.i.i.i.i294, 0
  br i1 %tobool.not.i.i.i295, label %SetPageUptodate.exit297, label %if.then.i.i.i296, !prof !59

if.then.i.i.i296:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i299, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

SetPageUptodate.exit297:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call38.i.i.i299) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %33 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %33, 512
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i299, i32 noundef %or.i) #11
  %34 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %real_stripes, align 4
  %sub31 = add i32 %35, -1
  %arrayidx32 = getelementptr ptr, ptr %3, i32 %sub31
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %arrayidx32, align 4
  br label %if.end33

if.end33:                                         ; preds = %SetPageUptodate.exit297, %SetPageUptodate.exit.if.end33_crit_edge
  %q_page.0 = phi ptr [ %call38.i.i.i299, %SetPageUptodate.exit297 ], [ null, %SetPageUptodate.exit.if.end33_crit_edge ]
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %error, i32 noundef 4) #11
  %37 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %error, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %38 = load i32, ptr @pgprot_kernel, align 4
  %or.i300 = or i32 %38, 512
  %call.i301 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call38.i.i.i, i32 noundef %or.i300) #11
  %arrayidx35 = getelementptr ptr, ptr %3, i32 %7
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i301, ptr %arrayidx35, align 4
  %dbitmap36 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 24
  %40 = ptrtoint ptr %dbitmap36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dbitmap36, align 4
  %stripe_npages37 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %42 = ptrtoint ptr %stripe_npages37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stripe_npages37, align 4
  %call38 = tail call i32 @_find_next_bit_be(ptr noundef %41, i32 noundef %43, i32 noundef 0) #11
  %44 = ptrtoint ptr %stripe_npages37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stripe_npages37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %45)
  %cmp40341 = icmp slt i32 %call38, %45
  br i1 %cmp40341, label %for.cond41.preheader.lr.ph, label %if.end33.do.end95_crit_edge

if.end33.do.end95_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

for.cond41.preheader.lr.ph:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp42336 = icmp sgt i32 %7, 0
  %stripe_len.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  %bio_list_lock.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 5
  %bio_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 23
  %stripe_pages.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %add.ptr = getelementptr ptr, ptr %3, i32 1
  %sub53 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub53)
  %cmp1.i = icmp sgt i32 %sub53, 0
  %scrubp55 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub53)
  %cmp76339 = icmp sgt i32 %sub53, -1
  br label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.end86.for.cond41.preheader_crit_edge, %for.cond41.preheader.lr.ph
  %pagenr.0342 = phi i32 [ %call38, %for.cond41.preheader.lr.ph ], [ %call90, %for.end86.for.cond41.preheader_crit_edge ]
  br i1 %cmp42336, label %for.cond41.preheader.for.body43_crit_edge, label %for.cond41.preheader.for.end_crit_edge

for.cond41.preheader.for.end_crit_edge:           ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond41.preheader.for.body43_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body43

for.body43:                                       ; preds = %page_in_rbio.exit.for.body43_crit_edge, %for.cond41.preheader.for.body43_crit_edge
  %stripe.0337 = phi i32 [ %inc, %page_in_rbio.exit.for.body43_crit_edge ], [ 0, %for.cond41.preheader.for.body43_crit_edge ]
  %46 = ptrtoint ptr %stripe_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stripe_len.i, align 4
  %shr.i = ashr i32 %47, 12
  %mul.i302 = mul i32 %shr.i, %stripe.0337
  %add.i = add i32 %mul.i302, %pagenr.0342
  tail call void @_raw_spin_lock_irq(ptr noundef %bio_list_lock.i) #11
  %48 = ptrtoint ptr %bio_pages.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bio_pages.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %add.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %bio_list_lock.i) #11
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body43.page_in_rbio.exit_crit_edge

for.body43.page_in_rbio.exit_crit_edge:           ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %page_in_rbio.exit

if.end.i:                                         ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stripe_pages.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %53, i32 %add.i
  %54 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx3.i, align 4
  br label %page_in_rbio.exit

page_in_rbio.exit:                                ; preds = %if.end.i, %for.body43.page_in_rbio.exit_crit_edge
  %retval.0.i = phi ptr [ %55, %if.end.i ], [ %51, %for.body43.page_in_rbio.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %56 = load i32, ptr @pgprot_kernel, align 4
  %or.i303 = or i32 %56, 512
  %call.i304 = tail call ptr @__kmap_local_page_prot(ptr noundef %retval.0.i, i32 noundef %or.i303) #11
  %arrayidx46 = getelementptr ptr, ptr %3, i32 %stripe.0337
  %57 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i304, ptr %arrayidx46, align 4
  %inc = add nuw nsw i32 %stripe.0337, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %page_in_rbio.exit.for.end_crit_edge, label %page_in_rbio.exit.for.body43_crit_edge

page_in_rbio.exit.for.body43_crit_edge:           ; preds = %page_in_rbio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

page_in_rbio.exit.for.end_crit_edge:              ; preds = %page_in_rbio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %page_in_rbio.exit.for.end_crit_edge, %for.cond41.preheader.for.end_crit_edge
  br i1 %cmp, label %if.else50, label %if.then48

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %58 = load ptr, ptr @raid6_call, align 4
  %59 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %real_stripes, align 4
  tail call void %58(i32 noundef %60, i32 noundef 4096, ptr noundef %3) #11
  br label %if.end54

if.else50:                                        ; preds = %for.end
  %61 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx35, align 4
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  tail call void @copy_page(ptr noundef %62, ptr noundef %64) #11
  %65 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx35, align 4
  br i1 %cmp1.i, label %if.else50.while.body.i_crit_edge, label %if.else50.if.end54_crit_edge

if.else50.if.end54_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.else50.while.body.i_crit_edge:                 ; preds = %if.else50
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else50.while.body.i_crit_edge
  %src_cnt.addr.03.i = phi i32 [ %sub.i306, %while.body.i.while.body.i_crit_edge ], [ %sub53, %if.else50.while.body.i_crit_edge ]
  %src_off.02.i = phi i32 [ %add.i307, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else50.while.body.i_crit_edge ]
  %67 = tail call i32 @llvm.umin.i32(i32 %src_cnt.addr.03.i, i32 4) #11
  %add.ptr.i = getelementptr ptr, ptr %add.ptr, i32 %src_off.02.i
  tail call void @xor_blocks(i32 noundef %67, i32 noundef 4096, ptr noundef %66, ptr noundef %add.ptr.i) #11
  %sub.i306 = sub nsw i32 %src_cnt.addr.03.i, %67
  %add.i307 = add i32 %67, %src_off.02.i
  %cmp.i = icmp sgt i32 %sub.i306, 0
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end54_crit_edge

while.body.i.if.end54_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end54:                                         ; preds = %while.body.i.if.end54_crit_edge, %if.else50.if.end54_crit_edge, %if.then48
  %68 = ptrtoint ptr %scrubp55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scrubp55, align 4
  %70 = ptrtoint ptr %stripe_pages.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %stripe_pages.i, align 4
  %72 = ptrtoint ptr %stripe_npages37 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stripe_npages37, align 4
  %mul.i.i = mul i32 %73, %69
  %add.i.i = add i32 %mul.i.i, %pagenr.0342
  %arrayidx.i309 = getelementptr ptr, ptr %71, i32 %add.i.i
  %74 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i309, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %76 = load i32, ptr @pgprot_kernel, align 4
  %or.i310 = or i32 %76, 512
  %call.i311 = tail call ptr @__kmap_local_page_prot(ptr noundef %75, i32 noundef %or.i310) #11
  %77 = ptrtoint ptr %scrubp55 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %scrubp55, align 4
  %arrayidx59 = getelementptr ptr, ptr %3, i32 %78
  %79 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx59, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4096) %call.i311, ptr noundef dereferenceable(4096) %80, i32 4096) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool61.not = icmp eq i32 %bcmp, 0
  br i1 %tobool61.not, label %if.else65, label %if.then62

if.then62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @copy_page(ptr noundef %call.i311, ptr noundef %80) #11
  br label %do.end71

if.else65:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %dbitmap36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dbitmap36, align 4
  %rem.i.i = and i32 %pagenr.0342, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %pagenr.0342, 5
  %add.ptr.i.i = getelementptr i32, ptr %82, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %84, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %do.end71

do.end71:                                         ; preds = %if.else65, %if.then62
  tail call void @kunmap_local_indexed(ptr noundef %call.i311) #11
  br i1 %cmp76339, label %do.end71.do.end81_crit_edge, label %do.end71.for.end86_crit_edge

do.end71.for.end86_crit_edge:                     ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end86

do.end71.do.end81_crit_edge:                      ; preds = %do.end71
  br label %do.end81

do.end81:                                         ; preds = %do.end81.do.end81_crit_edge, %do.end71.do.end81_crit_edge
  %stripe.1340 = phi i32 [ %stripe.1, %do.end81.do.end81_crit_edge ], [ %sub53, %do.end71.do.end81_crit_edge ]
  %arrayidx82 = getelementptr ptr, ptr %3, i32 %stripe.1340
  %85 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx82, align 4
  tail call void @kunmap_local_indexed(ptr noundef %86) #11
  %stripe.1 = add nsw i32 %stripe.1340, -1
  %cmp76 = icmp sgt i32 %stripe.1340, 0
  br i1 %cmp76, label %do.end81.do.end81_crit_edge, label %do.end81.for.end86_crit_edge

do.end81.for.end86_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end86

do.end81.do.end81_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end81

for.end86:                                        ; preds = %do.end81.for.end86_crit_edge, %do.end71.for.end86_crit_edge
  %87 = ptrtoint ptr %dbitmap36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dbitmap36, align 4
  %89 = ptrtoint ptr %stripe_npages37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %stripe_npages37, align 4
  %add = add i32 %pagenr.0342, 1
  %call90 = tail call i32 @_find_next_bit_be(ptr noundef %88, i32 noundef %90, i32 noundef %add) #11
  %91 = ptrtoint ptr %stripe_npages37 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stripe_npages37, align 4
  %cmp40 = icmp slt i32 %call90, %92
  br i1 %cmp40, label %for.end86.for.cond41.preheader_crit_edge, label %for.end86.do.end95_crit_edge

for.end86.do.end95_crit_edge:                     ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end95

for.end86.for.cond41.preheader_crit_edge:         ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond41.preheader

do.end95:                                         ; preds = %for.end86.do.end95_crit_edge, %if.end33.do.end95_crit_edge
  %93 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx35, align 4
  tail call void @kunmap_local_indexed(ptr noundef %94) #11
  tail call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #11
  %tobool99.not = icmp eq ptr %q_page.0, null
  br i1 %tobool99.not, label %do.end95.writeback_crit_edge, label %do.end104

do.end95.writeback_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %writeback

do.end104:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %real_stripes to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %real_stripes, align 4
  %sub106 = add i32 %96, -1
  %arrayidx107 = getelementptr ptr, ptr %3, i32 %sub106
  %97 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx107, align 4
  tail call void @kunmap_local_indexed(ptr noundef %98) #11
  tail call void @__free_pages(ptr noundef nonnull %q_page.0, i32 noundef 0) #11
  br label %writeback

writeback:                                        ; preds = %do.end104, %do.end95.writeback_crit_edge, %if.end16.writeback_crit_edge
  %dbitmap111 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 24
  %99 = ptrtoint ptr %dbitmap111 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dbitmap111, align 4
  %stripe_npages112 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 11
  %101 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %stripe_npages112, align 4
  %call113 = tail call i32 @_find_next_bit_be(ptr noundef %100, i32 noundef %102, i32 noundef 0) #11
  %103 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %stripe_npages112, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call113, i32 %104)
  %cmp116344 = icmp slt i32 %call113, %104
  br i1 %cmp116344, label %for.body117.lr.ph, label %writeback.for.end130_crit_edge

writeback.for.end130_crit_edge:                   ; preds = %writeback
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end130

for.body117.lr.ph:                                ; preds = %writeback
  %scrubp118 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 15
  %stripe_pages.i312 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %stripe_len = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  br label %for.body117

for.body117:                                      ; preds = %for.inc125.for.body117_crit_edge, %for.body117.lr.ph
  %105 = phi i32 [ %104, %for.body117.lr.ph ], [ %119, %for.inc125.for.body117_crit_edge ]
  %pagenr.1345 = phi i32 [ %call113, %for.body117.lr.ph ], [ %call129, %for.inc125.for.body117_crit_edge ]
  %106 = ptrtoint ptr %scrubp118 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %scrubp118, align 4
  %108 = ptrtoint ptr %stripe_pages.i312 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %stripe_pages.i312, align 4
  %mul.i.i314 = mul i32 %107, %105
  %add.i.i315 = add i32 %mul.i.i314, %pagenr.1345
  %arrayidx.i316 = getelementptr ptr, ptr %109, i32 %add.i.i315
  %110 = ptrtoint ptr %arrayidx.i316 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i316, align 4
  %112 = ptrtoint ptr %stripe_len to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %stripe_len, align 4
  %call121 = call fastcc i32 @rbio_add_io_page(ptr noundef %rbio, ptr noundef nonnull %bio_list, ptr noundef %111, i32 noundef %107, i32 noundef %pagenr.1345, i32 noundef %113)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %for.inc125, label %for.body117.cleanup165_crit_edge

for.body117.cleanup165_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup165

for.inc125:                                       ; preds = %for.body117
  %114 = ptrtoint ptr %dbitmap111 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dbitmap111, align 4
  %116 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %stripe_npages112, align 4
  %add128 = add nsw i32 %pagenr.1345, 1
  %call129 = tail call i32 @_find_next_bit_be(ptr noundef %115, i32 noundef %117, i32 noundef %add128) #11
  %118 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %stripe_npages112, align 4
  %cmp116 = icmp slt i32 %call129, %119
  br i1 %cmp116, label %for.inc125.for.body117_crit_edge, label %for.inc125.for.end130_crit_edge

for.inc125.for.end130_crit_edge:                  ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end130

for.inc125.for.body117_crit_edge:                 ; preds = %for.inc125
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body117

for.end130:                                       ; preds = %for.inc125.for.end130_crit_edge, %writeback.for.end130_crit_edge
  %.lcssa = phi i32 [ %104, %writeback.for.end130_crit_edge ], [ %119, %for.inc125.for.end130_crit_edge ]
  br i1 %tobool131.not, label %for.end130.for.cond.i.preheader_crit_edge, label %if.end133

for.end130.for.cond.i.preheader_crit_edge:        ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

if.end133:                                        ; preds = %for.end130
  %call135 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %.lcssa, i32 noundef 0) #11
  %120 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %stripe_npages112, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call135, i32 %121)
  %cmp138346 = icmp slt i32 %call135, %121
  br i1 %cmp138346, label %for.body139.lr.ph, label %if.end133.for.cond.i.preheader_crit_edge

if.end133.for.cond.i.preheader_crit_edge:         ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.body139.lr.ph:                                ; preds = %if.end133
  %scrubp141 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 15
  %stripe_pages.i317 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 22
  %tgtdev_map143 = getelementptr inbounds %struct.btrfs_io_context, ptr %1, i32 0, i32 12
  %stripe_len146 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 8
  br label %for.body139

for.body139:                                      ; preds = %for.inc154.for.body139_crit_edge, %for.body139.lr.ph
  %122 = phi i32 [ %121, %for.body139.lr.ph ], [ %138, %for.inc154.for.body139_crit_edge ]
  %pagenr.2347 = phi i32 [ %call135, %for.body139.lr.ph ], [ %call157, %for.inc154.for.body139_crit_edge ]
  %123 = ptrtoint ptr %scrubp141 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %scrubp141, align 4
  %125 = ptrtoint ptr %stripe_pages.i317 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %stripe_pages.i317, align 4
  %mul.i.i319 = mul i32 %124, %122
  %add.i.i320 = add i32 %mul.i.i319, %pagenr.2347
  %arrayidx.i321 = getelementptr ptr, ptr %126, i32 %add.i.i320
  %127 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx.i321, align 4
  %129 = ptrtoint ptr %tgtdev_map143 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %tgtdev_map143, align 8
  %arrayidx145 = getelementptr i32, ptr %130, i32 %124
  %131 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx145, align 4
  %133 = ptrtoint ptr %stripe_len146 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stripe_len146, align 4
  %call147 = call fastcc i32 @rbio_add_io_page(ptr noundef %rbio, ptr noundef nonnull %bio_list, ptr noundef %128, i32 noundef %132, i32 noundef %pagenr.2347, i32 noundef %134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %for.inc154, label %for.body139.cleanup165_crit_edge

for.body139.cleanup165_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup165

for.inc154:                                       ; preds = %for.body139
  %135 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %stripe_npages112, align 4
  %add156 = add nsw i32 %pagenr.2347, 1
  %call157 = tail call i32 @_find_next_bit_be(ptr noundef %5, i32 noundef %136, i32 noundef %add156) #11
  %137 = ptrtoint ptr %stripe_npages112 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %stripe_npages112, align 4
  %cmp138 = icmp slt i32 %call157, %138
  br i1 %cmp138, label %for.inc154.for.body139_crit_edge, label %for.inc154.for.cond.i.preheader_crit_edge

for.inc154.for.cond.i.preheader_crit_edge:        ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

for.inc154.for.body139_crit_edge:                 ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body139

for.cond.i.preheader:                             ; preds = %for.inc154.for.cond.i.preheader_crit_edge, %if.end133.for.cond.i.preheader_crit_edge, %for.end130.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %sz.0.i = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 0, %for.cond.i.preheader ]
  %bio.0.in.i = phi ptr [ %bio.0.i, %for.cond.i.for.cond.i_crit_edge ], [ %bio_list, %for.cond.i.preheader ]
  %139 = ptrtoint ptr %bio.0.in.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %bio.0.i = load ptr, ptr %bio.0.in.i, align 4
  %tobool.not.i322 = icmp eq ptr %bio.0.i, null
  %inc.i = add i32 %sz.0.i, 1
  br i1 %tobool.not.i322, label %bio_list_size.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

bio_list_size.exit:                               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.0.i)
  %tobool160.not = icmp eq i32 %sz.0.i, 0
  br i1 %tobool160.not, label %if.then161, label %if.end162

if.then161:                                       ; preds = %bio_list_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext 0)
  br label %cleanup171

if.end162:                                        ; preds = %bio_list_size.exit
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 20
  %call.i.i298 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  %140 = ptrtoint ptr %stripes_pending to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile i32 %sz.0.i, ptr %stripes_pending, align 4
  %141 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %141)
  %bio_list.promoted = load ptr, ptr %bio_list, align 4
  %tobool.not.i323350 = icmp eq ptr %bio_list.promoted, null
  br i1 %tobool.not.i323350, label %if.end162.cleanup171_crit_edge, label %if.end162.if.then.i_crit_edge

if.end162.if.then.i_crit_edge:                    ; preds = %if.end162
  br label %if.then.i

if.end162.cleanup171_crit_edge:                   ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.end162.if.then.i_crit_edge
  %142 = phi ptr [ %144, %if.then.i.if.then.i_crit_edge ], [ %bio_list.promoted, %if.end162.if.then.i_crit_edge ]
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 8
  %tobool4.not.i = icmp eq ptr %144, null
  store ptr null, ptr %142, align 8
  %bi_private = getelementptr inbounds %struct.bio, ptr %142, i32 0, i32 11
  %145 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %rbio, ptr %bi_private, align 4
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %142, i32 0, i32 10
  %146 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @raid_write_end_io, ptr %bi_end_io, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %142, i32 0, i32 2
  %147 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %bi_opf, align 8
  tail call void @submit_bio(ptr noundef nonnull %142) #11
  br i1 %tobool4.not.i, label %if.then.i.cleanup171_crit_edge, label %if.then.i.if.then.i_crit_edge

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i.cleanup171_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

cleanup165:                                       ; preds = %for.body139.cleanup165_crit_edge, %for.body117.cleanup165_crit_edge, %if.then27, %if.end19.cleanup165_crit_edge
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext 10)
  %148 = ptrtoint ptr %bio_list to i32
  call void @__asan_load4_noabort(i32 %148)
  %bio_list.promoted353 = load ptr, ptr %bio_list, align 4
  %tobool.not.i326357 = icmp eq ptr %bio_list.promoted353, null
  br i1 %tobool.not.i326357, label %cleanup165.cleanup171_crit_edge, label %cleanup165.if.then.i328_crit_edge

cleanup165.if.then.i328_crit_edge:                ; preds = %cleanup165
  br label %if.then.i328

cleanup165.cleanup171_crit_edge:                  ; preds = %cleanup165
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

if.then.i328:                                     ; preds = %if.then.i328.if.then.i328_crit_edge, %cleanup165.if.then.i328_crit_edge
  %149 = phi ptr [ %151, %if.then.i328.if.then.i328_crit_edge ], [ %bio_list.promoted353, %cleanup165.if.then.i328_crit_edge ]
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %149, align 8
  %tobool4.not.i327 = icmp eq ptr %151, null
  store ptr null, ptr %149, align 8
  tail call void @bio_put(ptr noundef nonnull %149) #11
  br i1 %tobool4.not.i327, label %if.then.i328.cleanup171_crit_edge, label %if.then.i328.if.then.i328_crit_edge

if.then.i328.if.then.i328_crit_edge:              ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i328

if.then.i328.cleanup171_crit_edge:                ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup171

cleanup171:                                       ; preds = %if.then.i328.cleanup171_crit_edge, %cleanup165.cleanup171_crit_edge, %if.then.i.cleanup171_crit_edge, %if.end162.cleanup171_crit_edge, %if.then161
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bio_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @raid56_parity_scrub_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %4 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bi_iter.i.i, align 8
  %shl.i.i = shl i64 %5, 9
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %num_stripes.i.i = getelementptr inbounds %struct.btrfs_io_context, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %num_stripes.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_stripes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.i.i = icmp sgt i32 %9, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i.i:                               ; preds = %if.then
  %stripe_len.i.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i
  %physical2.i.i = getelementptr %struct.btrfs_io_context, ptr %7, i32 0, i32 14, i32 %i.028.i.i, i32 1
  %10 = ptrtoint ptr %physical2.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %physical2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %11)
  %cmp3.not.i.i = icmp ult i64 %shl.i.i, %11
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %12 = ptrtoint ptr %stripe_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stripe_len.i.i, align 4
  %conv.i.i = sext i32 %13 to i64
  %add.i.i = add i64 %11, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %add.i.i)
  %cmp5.i.i = icmp ult i64 %shl.i.i, %add.i.i
  br i1 %cmp5.i.i, label %land.lhs.true7.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 8
  %bdev.i.i = getelementptr inbounds %struct.btrfs_device, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %land.lhs.true7.i.i.for.inc.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true7.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true7.i.i
  %18 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp11.i.i = icmp eq ptr %19, %17
  br i1 %cmp11.i.i, label %if.end.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true7.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call fastcc i32 @fail_rbio_index(ptr noundef %1, i32 noundef %i.028.i.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @set_bio_pages_uptodate(ptr noundef %bio)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.end.i, %for.inc.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #11
  %stripes_pending = getelementptr inbounds %struct.btrfs_raid_bio, ptr %1, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stripes_pending, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %stripes_pending, i32 1, i32 3, i32 1) #11
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stripes_pending, ptr %stripes_pending, i32 1, ptr elementtype(i32) %stripes_pending) #11, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @validate_rbio_for_parity_scrub(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @validate_rbio_for_parity_scrub(ptr noundef %rbio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %error = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %error, i32 noundef 4) #11
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %error, align 4
  %2 = ptrtoint ptr %rbio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rbio, align 4
  %max_errors = getelementptr inbounds %struct.btrfs_io_context, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %max_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_errors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp sgt i32 %1, %5
  br i1 %cmp, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

if.end:                                           ; preds = %entry
  %faila = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 13
  %6 = ptrtoint ptr %faila to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %faila, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1 = icmp sgt i32 %7, -1
  br i1 %cmp1, label %land.lhs.true.i, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %failb = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %8 = ptrtoint ptr %failb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %failb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp2 = icmp sgt i32 %9, -1
  br i1 %cmp2, label %if.else, label %if.else53

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %nr_data.i = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  %10 = ptrtoint ptr %nr_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp1.i = icmp sgt i32 %11, %7
  %spec.select = zext i1 %cmp1.i to i32
  br label %if.end18

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %switch78 = icmp ugt i32 %7, -3
  %spec.select98 = select i1 %switch78, i32 %7, i32 -1
  br label %if.end18

if.end18:                                         ; preds = %if.else, %land.lhs.true.i
  %dfail.0 = phi i32 [ %spec.select, %land.lhs.true.i ], [ 0, %if.else ]
  %failp.0 = phi i32 [ -1, %land.lhs.true.i ], [ %spec.select98, %if.else ]
  %failb19 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 14
  %12 = ptrtoint ptr %failb19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %failb19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i81 = icmp sgt i32 %13, -1
  br i1 %cmp.i81, label %land.lhs.true.i84, label %if.else24

land.lhs.true.i84:                                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %nr_data.i82 = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 9
  %14 = ptrtoint ptr %nr_data.i82 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_data.i82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp1.i83 = icmp sgt i32 %15, %13
  %inc23 = zext i1 %cmp1.i83 to i32
  %spec.select99 = add nuw nsw i32 %dfail.0, %inc23
  br label %if.end37

if.else24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %13)
  %switch80 = icmp ugt i32 %13, -3
  %spec.select100 = select i1 %switch80, i32 %13, i32 %failp.0
  br label %if.end37

if.end37:                                         ; preds = %if.else24, %land.lhs.true.i84
  %dfail.1 = phi i32 [ %spec.select99, %land.lhs.true.i84 ], [ %dfail.0, %if.else24 ]
  %failp.1 = phi i32 [ %failp.0, %land.lhs.true.i84 ], [ %spec.select100, %if.else24 ]
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dfail.1, i32 %sub)
  %cmp40 = icmp sgt i32 %dfail.1, %sub
  br i1 %cmp40, label %if.end37.cleanup55_crit_edge, label %if.end43

if.end37.cleanup55_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dfail.1)
  %cmp44 = icmp eq i32 %dfail.1, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_parity_scrub(ptr noundef %rbio, i32 noundef 0)
  br label %return

if.end47:                                         ; preds = %if.end43
  %scrubp = getelementptr inbounds %struct.btrfs_raid_bio, ptr %rbio, i32 0, i32 15
  %16 = ptrtoint ptr %scrubp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scrubp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %failp.1, i32 %17)
  %cmp48.not = icmp eq i32 %failp.1, %17
  br i1 %cmp48.not, label %if.end51, label %if.end47.cleanup55_crit_edge

if.end47.cleanup55_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup55

if.end51:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__raid_recover_end_io(ptr noundef %rbio)
  br label %return

if.else53:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @finish_parity_scrub(ptr noundef %rbio, i32 noundef 1)
  br label %return

cleanup55:                                        ; preds = %if.end47.cleanup55_crit_edge, %if.end37.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  tail call fastcc void @rbio_orig_end_io(ptr noundef %rbio, i8 noundef zeroext 10)
  br label %return

return:                                           ; preds = %cleanup55, %if.else53, %if.end51, %if.then46
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold inlinehint noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold noreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @btrfs_alloc_stripe_hash_table.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/btrfs/raid56.c", i32 224, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @btrfs_alloc_stripe_hash_table.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/btrfs/raid56.c", i32 232, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/raid56.c", i32 2125, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/btrfs/raid56.c", i32 2142, i32 3}
!11 = !{ptr @__func__.raid56_parity_recover, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/raid56.c", i32 2171, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/raid56.c", i32 2239, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/raid56.c", i32 2253, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/btrfs/raid56.c", i32 2256, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/btrfs/raid56.c", i32 2257, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/btrfs/raid56.c", i32 2276, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/btrfs/raid56.c", i32 2277, i32 2}
!26 = !{ptr @alloc_rbio.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../fs/btrfs/raid56.c", i32 985, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/btrfs/raid56.c", i32 1428, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/btrfs/ctree.h", i32 3491, i32 2}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @assertfail._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @assertfail._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2158375359}
!54 = !{i64 995345, i64 995366, i64 995389, i64 995408, i64 995427}
!55 = !{i64 2158375774}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2158384132, i64 2158384614, i64 2158384169, i64 2158384225, i64 2158384259, i64 2158384283, i64 2158384324, i64 2158384345, i64 2158384373, i64 2158384407}
!58 = !{i64 2158404476, i64 2158404959, i64 2158404513, i64 2158404569, i64 2158404603, i64 2158404627, i64 2158404668, i64 2158404689, i64 2158404717, i64 2158404751}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2158256696, i64 2158257178, i64 2158256733, i64 2158256789, i64 2158256823, i64 2158256847, i64 2158256888, i64 2158256909, i64 2158256937, i64 2158256971}
!61 = !{i64 2148575384}
!62 = !{i64 2148489848, i64 2148489880, i64 2148489909, i64 2148489943, i64 2148489974, i64 2148489997}
!63 = !{i64 2148487383, i64 2148487415, i64 2148487444, i64 2148487478, i64 2148487509, i64 2148487532}
!64 = !{i64 2148485853, i64 2148485879, i64 2148485908, i64 2148485942, i64 2148485973, i64 2148485996}
!65 = !{i64 2151037981, i64 2151038472, i64 2151038018, i64 2151038074, i64 2151038108, i64 2151038132, i64 2151038173, i64 2151038194, i64 2151038222, i64 2151038256}
!66 = !{i64 2151787873}
!67 = !{i64 2158480599, i64 2158481082, i64 2158480636, i64 2158480692, i64 2158480726, i64 2158480750, i64 2158480791, i64 2158480812, i64 2158480840, i64 2158480874}
!68 = !{i64 2158376442, i64 2158376924, i64 2158376479, i64 2158376535, i64 2158376569, i64 2158376593, i64 2158376634, i64 2158376655, i64 2158376683, i64 2158376717}
!69 = !{i64 2149621354}
!70 = !{i64 2158436652, i64 2158437135, i64 2158436689, i64 2158436745, i64 2158436779, i64 2158436803, i64 2158436844, i64 2158436865, i64 2158436893, i64 2158436927}
!71 = !{i64 2151788944}
!72 = !{i64 2158440505, i64 2158440988, i64 2158440542, i64 2158440598, i64 2158440632, i64 2158440656, i64 2158440697, i64 2158440718, i64 2158440746, i64 2158440780}
!73 = !{i64 2148574305}
!74 = !{i64 2148489038, i64 2148489070, i64 2148489099, i64 2148489133, i64 2148489164, i64 2148489187}
!75 = !{i64 2148574534}
!76 = !{i64 2158397783, i64 2158398265, i64 2158397820, i64 2158397876, i64 2158397910, i64 2158397934, i64 2158397975, i64 2158397996, i64 2158398024, i64 2158398058}
!77 = !{i64 2158406755, i64 2158407238, i64 2158406792, i64 2158406848, i64 2158406882, i64 2158406906, i64 2158406947, i64 2158406968, i64 2158406996, i64 2158407030}
!78 = !{i64 2158446961, i64 2158447444, i64 2158446998, i64 2158447054, i64 2158447088, i64 2158447112, i64 2158447153, i64 2158447174, i64 2158447202, i64 2158447236}
!79 = !{i64 2158452788, i64 2158453271, i64 2158452825, i64 2158452881, i64 2158452915, i64 2158452939, i64 2158452980, i64 2158453001, i64 2158453029, i64 2158453063}
!80 = !{i64 2158456335, i64 2158456818, i64 2158456372, i64 2158456428, i64 2158456462, i64 2158456486, i64 2158456527, i64 2158456548, i64 2158456576, i64 2158456610}
!81 = !{i64 2158467263, i64 2158467746, i64 2158467300, i64 2158467356, i64 2158467390, i64 2158467414, i64 2158467455, i64 2158467476, i64 2158467504, i64 2158467538}
