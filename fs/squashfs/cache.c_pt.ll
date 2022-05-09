; ModuleID = '/llk/IR_all_yes/fs/squashfs/cache.c_pt.bc'
source_filename = "../fs/squashfs/cache.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.squashfs_cache = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.squashfs_cache_entry = type { i64, i32, i32, i64, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/squashfs/cache.c\00", [44 x i8] zeroinitializer }, align 32
@squashfs_cache_get.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"squashfs_cache_get\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"SQUASHFS: Got %s %d, start block %lld, refcount %d, error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@squashfs_cache_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013SQUASHFS error: Unable to read %s cache entry [%llx]\0A\00", [40 x i8] zeroinitializer }, align 32
@squashfs_cache_get._entry_ptr = internal global ptr @squashfs_cache_get._entry, section ".printk_index", align 4
@squashfs_cache_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SQUASHFS error: Failed to allocate %s cache\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"squashfs_cache_init\00", [44 x i8] zeroinitializer }, align 32
@squashfs_cache_init._entry_ptr = internal global ptr @squashfs_cache_init._entry, section ".printk_index", align 4
@squashfs_cache_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@squashfs_cache_init._entry_ptr.8 = internal global ptr @squashfs_cache_init._entry.7, section ".printk_index", align 4
@squashfs_cache_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&cache->lock\00", [19 x i8] zeroinitializer }, align 32
@squashfs_cache_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cache->wait_queue\00", [45 x i8] zeroinitializer }, align 32
@squashfs_cache_init.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cache->entry[i].wait_queue\00", [36 x i8] zeroinitializer }, align 32
@squashfs_cache_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013SQUASHFS error: Failed to allocate %s cache entry\0A\00", [43 x i8] zeroinitializer }, align 32
@squashfs_cache_init._entry_ptr.16 = internal global ptr @squashfs_cache_init._entry.14, section ".printk_index", align 4
@squashfs_cache_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013SQUASHFS error: Failed to allocate %s buffer\0A\00", [48 x i8] zeroinitializer }, align 32
@squashfs_cache_init._entry_ptr.19 = internal global ptr @squashfs_cache_init._entry.17, section ".printk_index", align 4
@squashfs_cache_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@squashfs_cache_init._entry_ptr.21 = internal global ptr @squashfs_cache_init._entry.20, section ".printk_index", align 4
@squashfs_read_metadata.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.23, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"squashfs_read_metadata\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SQUASHFS: Entered squashfs_read_metadata [%llx:%x]\0A\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 77, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 160, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 164, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 230, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 236, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 249, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 250, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 255, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 260, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 267, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 275, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [23 x i8] c"../fs/squashfs/cache.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 338, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @squashfs_cache_get._entry, ptr @squashfs_cache_get._entry_ptr, ptr @squashfs_cache_init._entry, ptr @squashfs_cache_init._entry.14, ptr @squashfs_cache_init._entry.17, ptr @squashfs_cache_init._entry.20, ptr @squashfs_cache_init._entry.7, ptr @squashfs_cache_init._entry_ptr, ptr @squashfs_cache_init._entry_ptr.16, ptr @squashfs_cache_init._entry_ptr.19, ptr @squashfs_cache_init._entry_ptr.21, ptr @squashfs_cache_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @squashfs_cache_init.__key, ptr @.str.9, ptr @squashfs_cache_init.__key.10, ptr @.str.11, ptr @squashfs_cache_init.__key.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_cache_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_cache_get(ptr noundef %sb, ptr noundef %cache, i64 noundef %block, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry105 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %curr_blk = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 2
  %entries = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 1
  %entry2 = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 10
  %unused = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 5
  %num_waiters = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 4
  %wait_queue = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %do.end29, %entry
  %0 = ptrtoint ptr %curr_blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_blk, align 4
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp245 = icmp sgt i32 %3, 0
  br i1 %cmp245, label %for.body.lr.ph, label %while.cond.for.end_crit_edge

while.cond.for.end_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.cond
  %4 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entry2, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.0247 = phi i32 [ %1, %for.body.lr.ph ], [ %rem, %if.end.for.body_crit_edge ]
  %n.0246 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.squashfs_cache_entry, ptr %5, i32 %i.0247
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %block)
  %cmp4 = icmp eq i64 %7, %block
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %curr_blk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.0247, ptr %curr_blk, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  %add = add i32 %i.0247, 1
  %rem = srem i32 %add, %3
  %inc = add nuw nsw i32 %n.0246, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end.if.then9_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.end:                                          ; preds = %if.then, %while.cond.for.end_crit_edge
  %n.0243 = phi i32 [ %n.0246, %if.then ], [ 0, %while.cond.for.end_crit_edge ]
  %i.0240 = phi i32 [ %i.0247, %if.then ], [ %1, %while.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0243, i32 %3)
  %cmp8 = icmp eq i32 %n.0243, %3
  br i1 %cmp8, label %for.end.if.then9_crit_edge, label %if.end77

for.end.if.then9_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %for.end.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %9 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %unused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.then11, label %if.end32

if.then11:                                        ; preds = %if.then9
  %11 = ptrtoint ptr %num_waiters to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_waiters, align 4
  %inc12 = add i32 %12, 1
  store i32 %inc12, ptr %num_waiters, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 77) #8
  %13 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %unused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end20, label %if.then11.do.end29_crit_edge

if.then11.do.end29_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.end20:                                         ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call250 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %16 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %unused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not251 = icmp eq i32 %17, 0
  br i1 %tobool23.not251, label %if.end20.cleanup_crit_edge, label %if.end20.for.end26_crit_edge

if.end20.for.end26_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  call void @schedule() #8
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %18 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %unused, align 4
  %tobool23.not = icmp eq i32 %19, 0
  br i1 %tobool23.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end26_crit_edge

cleanup.for.end26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end26:                                        ; preds = %cleanup.for.end26_crit_edge, %if.end20.for.end26_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end29

do.end29:                                         ; preds = %for.end26, %if.then11.do.end29_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %20 = ptrtoint ptr %num_waiters to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_waiters, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %num_waiters, align 4
  br label %while.cond

if.end32:                                         ; preds = %if.then9
  %next_blk = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 3
  %22 = ptrtoint ptr %next_blk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %next_blk, align 4
  br i1 %cmp245, label %for.body36.lr.ph, label %if.end32.for.end47_crit_edge

if.end32.for.end47_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.body36.lr.ph:                                 ; preds = %if.end32
  %24 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entry2, align 4
  br label %for.body36

for.body36:                                       ; preds = %if.end41.for.body36_crit_edge, %for.body36.lr.ph
  %i.1258 = phi i32 [ %23, %for.body36.lr.ph ], [ %rem44, %if.end41.for.body36_crit_edge ]
  %n.1257 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc46, %if.end41.for.body36_crit_edge ]
  %refcount = getelementptr %struct.squashfs_cache_entry, ptr %25, i32 %i.1258, i32 2
  %26 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp39 = icmp eq i32 %27, 0
  br i1 %cmp39, label %for.body36.for.end47_crit_edge, label %if.end41

for.body36.for.end47_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

if.end41:                                         ; preds = %for.body36
  %add42 = add i32 %i.1258, 1
  %rem44 = srem i32 %add42, %3
  %inc46 = add nuw nsw i32 %n.1257, 1
  %exitcond268.not = icmp eq i32 %inc46, %3
  br i1 %exitcond268.not, label %if.end41.for.end47_crit_edge, label %if.end41.for.body36_crit_edge

if.end41.for.body36_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

if.end41.for.end47_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end47

for.end47:                                        ; preds = %if.end41.for.end47_crit_edge, %for.body36.for.end47_crit_edge, %if.end32.for.end47_crit_edge
  %i.1.lcssa = phi i32 [ %23, %if.end32.for.end47_crit_edge ], [ %i.1258, %for.body36.for.end47_crit_edge ], [ %rem44, %if.end41.for.end47_crit_edge ]
  %add48 = add i32 %i.1.lcssa, 1
  %rem50 = srem i32 %add48, %3
  %28 = ptrtoint ptr %next_blk to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %rem50, ptr %next_blk, align 4
  %29 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %entry2, align 4
  %arrayidx53 = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa
  %dec55 = add i32 %10, -1
  %31 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec55, ptr %unused, align 4
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %block, ptr %arrayidx53, align 8
  %refcount57 = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 2
  %33 = ptrtoint ptr %refcount57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %refcount57, align 4
  %pending = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 4
  %34 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %pending, align 8
  %num_waiters58 = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 6
  %35 = ptrtoint ptr %num_waiters58 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %num_waiters58, align 8
  %error = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 5
  %36 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %error, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  %next_index = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 3
  %actor = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 10
  %37 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %actor, align 8
  %call60 = call i32 @squashfs_read_data(ptr noundef %sb, i64 noundef %block, i32 noundef %length, ptr noundef %next_index, ptr noundef %38) #8
  %length61 = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 1
  %39 = ptrtoint ptr %length61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call60, ptr %length61, align 8
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %40 = ptrtoint ptr %length61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp64 = icmp slt i32 %41, 0
  br i1 %cmp64, label %if.then65, label %for.end47.if.end68_crit_edge

for.end47.if.end68_crit_edge:                     ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then65:                                        ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %error, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %for.end47.if.end68_crit_edge
  %43 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pending, align 8
  %44 = ptrtoint ptr %num_waiters58 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_waiters58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool71.not = icmp eq i32 %45, 0
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br i1 %tobool71.not, label %if.end68.do.body127_crit_edge, label %if.then72

if.end68.do.body127_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body127

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %wait_queue74 = getelementptr %struct.squashfs_cache_entry, ptr %30, i32 %i.1.lcssa, i32 7
  call void @__wake_up(ptr noundef %wait_queue74, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %do.body127

if.end77:                                         ; preds = %for.end
  %46 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entry2, align 4
  %arrayidx79 = getelementptr %struct.squashfs_cache_entry, ptr %47, i32 %i.0240
  %refcount80 = getelementptr %struct.squashfs_cache_entry, ptr %47, i32 %i.0240, i32 2
  %48 = ptrtoint ptr %refcount80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %refcount80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp81 = icmp eq i32 %49, 0
  br i1 %cmp81, label %if.then82, label %if.end77.if.end85_crit_edge

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unused, align 4
  %dec84 = add i32 %51, -1
  store i32 %dec84, ptr %unused, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end77.if.end85_crit_edge
  %52 = ptrtoint ptr %refcount80 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %refcount80, align 4
  %inc87 = add i32 %53, 1
  store i32 %inc87, ptr %refcount80, align 4
  %pending88 = getelementptr %struct.squashfs_cache_entry, ptr %47, i32 %i.0240, i32 4
  %54 = ptrtoint ptr %pending88 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pending88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool89.not = icmp eq i32 %55, 0
  br i1 %tobool89.not, label %if.else124, label %if.then90

if.then90:                                        ; preds = %if.end85
  %num_waiters91 = getelementptr %struct.squashfs_cache_entry, ptr %47, i32 %i.0240, i32 6
  %56 = ptrtoint ptr %num_waiters91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_waiters91, align 8
  %inc92 = add i32 %57, 1
  store i32 %inc92, ptr %num_waiters91, align 8
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 152) #8
  %58 = ptrtoint ptr %pending88 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pending88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool102.not = icmp eq i32 %59, 0
  br i1 %tobool102.not, label %if.then90.do.body127_crit_edge, label %if.end104

if.then90.do.body127_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body127

if.end104:                                        ; preds = %if.then90
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry105) #8
  %60 = call ptr @memset(ptr %__wq_entry105, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry105, i32 noundef 0) #8
  %wait_queue109 = getelementptr %struct.squashfs_cache_entry, ptr %47, i32 %i.0240, i32 7
  %call110253 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue109, ptr noundef nonnull %__wq_entry105, i32 noundef 2) #8
  %61 = ptrtoint ptr %pending88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pending88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool112.not254 = icmp eq i32 %62, 0
  br i1 %tobool112.not254, label %if.end104.for.end118_crit_edge, label %if.end104.cleanup115_crit_edge

if.end104.cleanup115_crit_edge:                   ; preds = %if.end104
  br label %cleanup115

if.end104.for.end118_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end118

cleanup115:                                       ; preds = %cleanup115.cleanup115_crit_edge, %if.end104.cleanup115_crit_edge
  call void @schedule() #8
  %call110 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue109, ptr noundef nonnull %__wq_entry105, i32 noundef 2) #8
  %63 = ptrtoint ptr %pending88 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pending88, align 8
  %tobool112.not = icmp eq i32 %64, 0
  br i1 %tobool112.not, label %cleanup115.for.end118_crit_edge, label %cleanup115.cleanup115_crit_edge

cleanup115.cleanup115_crit_edge:                  ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup115

cleanup115.for.end118_crit_edge:                  ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end118

for.end118:                                       ; preds = %cleanup115.for.end118_crit_edge, %if.end104.for.end118_crit_edge
  call void @finish_wait(ptr noundef %wait_queue109, ptr noundef nonnull %__wq_entry105) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry105) #8
  br label %do.body127

if.else124:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %do.body127

do.body127:                                       ; preds = %if.else124, %for.end118, %if.then90.do.body127_crit_edge, %if.then72, %if.end68.do.body127_crit_edge
  %entry1.0 = phi ptr [ %arrayidx53, %if.then72 ], [ %arrayidx79, %for.end118 ], [ %arrayidx79, %if.then90.do.body127_crit_edge ], [ %arrayidx79, %if.else124 ], [ %arrayidx53, %if.end68.do.body127_crit_edge ]
  %i.2 = phi i32 [ %i.1.lcssa, %if.then72 ], [ %i.0240, %for.end118 ], [ %i.0240, %if.then90.do.body127_crit_edge ], [ %i.0240, %if.else124 ], [ %i.1.lcssa, %if.end68.do.body127_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_cache_get.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_cache_get, %if.then133)) #8
          to label %do.end139 [label %if.then133], !srcloc !52

if.then133:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cache, align 4
  %67 = ptrtoint ptr %entry1.0 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %entry1.0, align 8
  %refcount135 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1.0, i32 0, i32 2
  %69 = ptrtoint ptr %refcount135 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %refcount135, align 4
  %error136 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1.0, i32 0, i32 5
  %71 = ptrtoint ptr %error136 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %error136, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_cache_get.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.3, ptr noundef %66, i32 noundef %i.2, i64 noundef %68, i32 noundef %70, i32 noundef %72) #8
  br label %do.end139

do.end139:                                        ; preds = %if.then133, %do.body127
  %error140 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1.0, i32 0, i32 5
  %73 = ptrtoint ptr %error140 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %error140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool141.not = icmp eq i32 %74, 0
  br i1 %tobool141.not, label %do.end139.if.end149_crit_edge, label %do.end145

do.end139.if.end149_crit_edge:                    ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

do.end145:                                        ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cache, align 4
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %76, i64 noundef %block) #11
  br label %if.end149

if.end149:                                        ; preds = %do.end145, %do.end139.if.end149_crit_edge
  ret ptr %entry1.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_data(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @squashfs_cache_put(ptr nocapture noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cache2 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1, i32 0, i32 8
  %0 = ptrtoint ptr %cache2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cache2, align 8
  %lock = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %refcount = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %unused = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unused, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %unused, align 4
  %num_waiters = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %num_waiters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_waiters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then4

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %wait_queue = getelementptr inbounds %struct.squashfs_cache, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @squashfs_cache_delete(ptr noundef %cache) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %cache, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %entries = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 1
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp139 = icmp sgt i32 %1, 0
  br i1 %cmp139, label %for.body.lr.ph, label %for.cond.preheader.for.end19_crit_edge

for.cond.preheader.for.end19_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entry2 = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 10
  %pages = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end14.for.body_crit_edge ]
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entry2, align 4
  %data = getelementptr %struct.squashfs_cache_entry, ptr %3, i32 %i.040, i32 9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %for.cond4.preheader

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.cond4.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp537 = icmp sgt i32 %7, 0
  br i1 %cmp537, label %for.cond4.preheader.for.body6_crit_edge, label %for.cond4.preheader.for.end_crit_edge

for.cond4.preheader.for.end_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %j.038 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %8 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entry2, align 4
  %data9 = getelementptr %struct.squashfs_cache_entry, ptr %9, i32 %i.040, i32 9
  %10 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data9, align 4
  %arrayidx10 = getelementptr ptr, ptr %11, i32 %j.038
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  tail call void @kfree(ptr noundef %13) #8
  %inc = add nuw nsw i32 %j.038, 1
  %14 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pages, align 4
  %cmp5 = icmp slt i32 %inc, %15
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.end:                                          ; preds = %for.body6.for.end_crit_edge, %for.cond4.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entry2, align 4
  %data13 = getelementptr %struct.squashfs_cache_entry, ptr %17, i32 %i.040, i32 9
  %18 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data13, align 4
  tail call void @kfree(ptr noundef %19) #8
  br label %if.end14

if.end14:                                         ; preds = %for.end, %for.body.if.end14_crit_edge
  %20 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entry2, align 4
  %actor = getelementptr %struct.squashfs_cache_entry, ptr %21, i32 %i.040, i32 10
  %22 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %actor, align 8
  tail call void @kfree(ptr noundef %23) #8
  %inc18 = add nuw nsw i32 %i.040, 1
  %24 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %entries, align 4
  %cmp1 = icmp slt i32 %inc18, %25
  br i1 %cmp1, label %if.end14.for.body_crit_edge, label %if.end14.for.end19_crit_edge

if.end14.for.end19_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end19

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end19:                                        ; preds = %if.end14.for.end19_crit_edge, %for.cond.preheader.for.end19_crit_edge
  %entry20 = getelementptr inbounds %struct.squashfs_cache, ptr %cache, i32 0, i32 10
  %26 = ptrtoint ptr %entry20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entry20, align 4
  tail call void @kfree(ptr noundef %27) #8
  tail call void @kfree(ptr noundef nonnull %cache) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_cache_init(ptr noundef %name, i32 noundef %entries, i32 noundef %block_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name) #11
  br label %cleanup80

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %entries, i32 104) #8
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !53

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %entry3164 = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %entry3164 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %entry3164, align 8
  br label %cleanup79

if.end7.i.i:                                      ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #13
  %entry3 = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %entry3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %entry3, align 8
  %cmp5 = icmp eq ptr %call8.i.i, null
  br i1 %cmp5, label %if.end7.i.i.cleanup79_crit_edge, label %if.end12

if.end7.i.i.cleanup79_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

if.end12:                                         ; preds = %if.end7.i.i
  %curr_blk = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %curr_blk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %curr_blk, align 8
  %next_blk = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %next_blk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %next_blk, align 4
  %unused = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %entries, ptr %unused, align 4
  %entries13 = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %entries13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %entries, ptr %entries13, align 4
  %block_size14 = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %block_size14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %block_size, ptr %block_size14, align 8
  %shr = ashr i32 %block_size, 12
  %pages = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %block_size)
  %tobool.not = icmp ult i32 %block_size, 4096
  %spec.select = select i1 %tobool.not, i32 1, i32 %shr
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %pages, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %name, ptr %call7.i.i, align 8
  %num_waiters = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %num_waiters to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_waiters, align 8
  %lock = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @squashfs_cache_init.__key, i16 noundef signext 3) #8
  %wait_queue = getelementptr inbounds %struct.squashfs_cache, ptr %call7.i.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.11, ptr noundef nonnull @squashfs_cache_init.__key.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries)
  %cmp26187.not = icmp eq i32 %entries, 0
  br i1 %cmp26187.not, label %if.end12.cleanup80_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.cleanup80_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

for.body:                                         ; preds = %for.inc76.for.body_crit_edge, %if.end12.for.body_crit_edge
  %i.0188 = phi i32 [ %inc77, %for.inc76.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %14 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry3, align 8
  %arrayidx = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188
  %wait_queue32 = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue32, ptr noundef nonnull @.str.13, ptr noundef nonnull @squashfs_cache_init.__key.12) #8
  %cache35 = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188, i32 8
  %16 = ptrtoint ptr %cache35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %cache35, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 -1, ptr %arrayidx, align 8
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pages, align 4
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %19, i32 4) #8
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %kcalloc.exit161.thread, label %if.end7.i.i159, !prof !53

kcalloc.exit161.thread:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %data172 = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188, i32 9
  %22 = ptrtoint ptr %data172 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data172, align 4
  br label %cleanup79

if.end7.i.i159:                                   ; preds = %for.body
  %23 = extractvalue { i32, i1 } %20, 0
  %call8.i.i158 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #13
  %data = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188, i32 9
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i158, ptr %data, align 4
  %cmp39 = icmp eq ptr %call8.i.i158, null
  br i1 %cmp39, label %if.end7.i.i159.cleanup79_crit_edge, label %for.cond47.preheader

if.end7.i.i159.cleanup79_crit_edge:               ; preds = %if.end7.i.i159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

for.cond47.preheader:                             ; preds = %if.end7.i.i159
  %25 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp49185 = icmp sgt i32 %26, 0
  br i1 %cmp49185, label %for.cond47.preheader.for.body50_crit_edge, label %for.cond47.preheader.for.end_crit_edge

for.cond47.preheader.for.end_crit_edge:           ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond47.preheader.for.body50_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body50

for.cond47:                                       ; preds = %for.body50
  %inc = add nuw nsw i32 %j.0186, 1
  %27 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pages, align 4
  %cmp49 = icmp slt i32 %inc, %28
  br i1 %cmp49, label %for.cond47.for.body50_crit_edge, label %for.cond47.for.end_crit_edge

for.cond47.for.end_crit_edge:                     ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond47.for.body50_crit_edge:                  ; preds = %for.cond47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.body50:                                       ; preds = %for.cond47.for.body50_crit_edge, %for.cond47.preheader.for.body50_crit_edge
  %j.0186 = phi i32 [ %inc, %for.cond47.for.body50_crit_edge ], [ 0, %for.cond47.preheader.for.body50_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 4096) #12
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %arrayidx53 = getelementptr ptr, ptr %31, i32 %j.0186
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i, ptr %arrayidx53, align 4
  %33 = load ptr, ptr %data, align 4
  %arrayidx55 = getelementptr ptr, ptr %33, i32 %j.0186
  %34 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx55, align 4
  %cmp56 = icmp eq ptr %35, null
  br i1 %cmp56, label %for.body50.cleanup79_crit_edge, label %for.cond47

for.body50.cleanup79_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

for.end:                                          ; preds = %for.cond47.for.end_crit_edge, %for.cond47.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %26, %for.cond47.preheader.for.end_crit_edge ], [ %28, %for.cond47.for.end_crit_edge ]
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i162 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 16) #12
  %cmp.i = icmp eq ptr %call7.i.i162, null
  br i1 %cmp.i, label %do.end72, label %for.inc76

do.end72:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %actor174 = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188, i32 10
  %39 = ptrtoint ptr %actor174 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %actor174, align 8
  br label %cleanup79

for.inc76:                                        ; preds = %for.end
  %mul.i = shl i32 %.lcssa, 12
  %length1.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i162, i32 0, i32 2
  %40 = ptrtoint ptr %length1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.i, ptr %length1.i, align 8
  %41 = ptrtoint ptr %call7.i.i162 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %37, ptr %call7.i.i162, align 8
  %pages3.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i162, i32 0, i32 1
  %42 = ptrtoint ptr %pages3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.lcssa, ptr %pages3.i, align 4
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i162, i32 0, i32 3
  %43 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %next_page.i, align 4
  %actor = getelementptr %struct.squashfs_cache_entry, ptr %15, i32 %i.0188, i32 10
  %44 = ptrtoint ptr %actor to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i162, ptr %actor, align 8
  %inc77 = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc77, %entries
  br i1 %exitcond.not, label %for.inc76.cleanup80_crit_edge, label %for.inc76.for.body_crit_edge

for.inc76.for.body_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc76.cleanup80_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

cleanup79:                                        ; preds = %do.end72, %for.body50.cleanup79_crit_edge, %if.end7.i.i159.cleanup79_crit_edge, %kcalloc.exit161.thread, %if.end7.i.i.cleanup79_crit_edge, %kcalloc.exit.thread
  %.str.15.sink = phi ptr [ @.str.15, %do.end72 ], [ @.str.5, %kcalloc.exit.thread ], [ @.str.5, %if.end7.i.i.cleanup79_crit_edge ], [ @.str.15, %kcalloc.exit161.thread ], [ @.str.18, %for.body50.cleanup79_crit_edge ], [ @.str.15, %if.end7.i.i159.cleanup79_crit_edge ]
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef %name) #11
  tail call void @squashfs_cache_delete(ptr noundef nonnull %call7.i.i)
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup79, %for.inc76.cleanup80_crit_edge, %if.end12.cleanup80_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %cleanup79 ], [ %call7.i.i, %if.end12.cleanup80_crit_edge ], [ %call7.i.i, %for.inc76.cleanup80_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_copy_data(ptr noundef writeonly %buffer, ptr nocapture noundef readonly %entry1, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp eq i32 %length, 0
  br i1 %cmp, label %entry.cleanup26_crit_edge, label %if.else

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup26

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq ptr %buffer, null
  %length4 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %length4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length4, align 8
  br i1 %cmp2, label %if.then3, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %offset)
  %cmp862 = icmp sgt i32 %1, %offset
  br i1 %cmp862, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data = getelementptr inbounds %struct.squashfs_cache_entry, ptr %entry1, i32 0, i32 9
  br label %while.body

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %1, %offset
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %length)
  br label %cleanup26

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %3 = phi i32 [ %1, %while.body.lr.ph ], [ %12, %cleanup.while.body_crit_edge ]
  %buffer.addr.065 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr22, %cleanup.while.body_crit_edge ]
  %remaining.064 = phi i32 [ %length, %while.body.lr.ph ], [ %sub23, %cleanup.while.body_crit_edge ]
  %offset.addr.063 = phi i32 [ %offset, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %div54 = lshr i32 %offset.addr.063, 12
  %arrayidx = getelementptr ptr, ptr %5, i32 %div54
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %rem = and i32 %offset.addr.063, 4095
  %add.ptr = getelementptr i8, ptr %7, i32 %rem
  %sub10 = sub i32 %3, %offset.addr.063
  %sub12 = sub nuw nsw i32 4096, %rem
  %8 = tail call i32 @llvm.smin.i32(i32 %sub10, i32 %sub12)
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.064, i32 %8)
  %cmp19.not = icmp sgt i32 %remaining.064, %8
  br i1 %cmp19.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = call ptr @memcpy(ptr %buffer.addr.065, ptr %add.ptr, i32 %remaining.064)
  br label %while.end

cleanup:                                          ; preds = %while.body
  %10 = call ptr @memcpy(ptr %buffer.addr.065, ptr %add.ptr, i32 %8)
  %add.ptr22 = getelementptr i8, ptr %buffer.addr.065, i32 %8
  %sub23 = sub i32 %remaining.064, %8
  %add = add i32 %8, %offset.addr.063
  %11 = ptrtoint ptr %length4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length4, align 8
  %cmp8 = icmp sgt i32 %12, %add
  br i1 %cmp8, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %while.cond.preheader.while.end_crit_edge
  %remaining.2 = phi i32 [ 0, %cleanup.thread ], [ %length, %while.cond.preheader.while.end_crit_edge ], [ %sub23, %cleanup.while.end_crit_edge ]
  %sub25 = sub i32 %length, %remaining.2
  br label %cleanup26

cleanup26:                                        ; preds = %while.end, %if.then3, %entry.cleanup26_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %sub25, %while.end ], [ 0, %entry.cleanup26_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef writeonly %buffer, ptr nocapture noundef %block, ptr nocapture noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_metadata.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_metadata, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %block, align 8
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_metadata.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.23, i64 noundef %3, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp slt i32 %length, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %while.cond.preheader, !prof !53

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool12.not81 = icmp eq i32 %length, 0
  br i1 %tobool12.not81, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %block_cache = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %squashfs_cache_put.exit.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.084 = phi ptr [ %buffer, %while.body.lr.ph ], [ %spec.select, %squashfs_cache_put.exit.while.body_crit_edge ]
  %length.addr.082 = phi i32 [ %length, %while.body.lr.ph ], [ %sub, %squashfs_cache_put.exit.while.body_crit_edge ]
  %6 = ptrtoint ptr %block_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_cache, align 4
  %8 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %block, align 8
  %call13 = tail call ptr @squashfs_cache_get(ptr noundef %sb, ptr noundef %7, i64 noundef %9, i32 noundef 0)
  %error = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %if.else, label %while.body.error30_crit_edge

while.body.error30_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error30

if.else:                                          ; preds = %while.body
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %length17 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 1
  %14 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp18.not = icmp sgt i32 %15, %13
  br i1 %cmp18.not, label %if.else.i, label %if.else.error30_crit_edge

if.else.error30_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %error30

if.else.i:                                        ; preds = %if.else
  %cmp2.i = icmp eq ptr %buffer.addr.084, null
  br i1 %cmp2.i, label %if.then3.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %if.else.i
  %data.i = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 9
  br label %while.body.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %15, %13
  %16 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %length.addr.082) #8
  br label %squashfs_copy_data.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = phi i32 [ %15, %while.body.lr.ph.i ], [ %26, %cleanup.i.while.body.i_crit_edge ]
  %buffer.addr.065.i = phi ptr [ %buffer.addr.084, %while.body.lr.ph.i ], [ %add.ptr22.i, %cleanup.i.while.body.i_crit_edge ]
  %remaining.064.i = phi i32 [ %length.addr.082, %while.body.lr.ph.i ], [ %sub23.i, %cleanup.i.while.body.i_crit_edge ]
  %offset.addr.063.i = phi i32 [ %13, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %div54.i = lshr i32 %offset.addr.063.i, 12
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %div54.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %rem.i = and i32 %offset.addr.063.i, 4095
  %add.ptr.i = getelementptr i8, ptr %21, i32 %rem.i
  %sub10.i = sub i32 %17, %offset.addr.063.i
  %sub12.i = sub nuw nsw i32 4096, %rem.i
  %22 = tail call i32 @llvm.smin.i32(i32 %sub10.i, i32 %sub12.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.064.i, i32 %22)
  %cmp19.not.i = icmp sgt i32 %remaining.064.i, %22
  br i1 %cmp19.not.i, label %cleanup.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = call ptr @memcpy(ptr %buffer.addr.065.i, ptr %add.ptr.i, i32 %remaining.064.i)
  br label %while.end.i

cleanup.i:                                        ; preds = %while.body.i
  %24 = call ptr @memcpy(ptr %buffer.addr.065.i, ptr %add.ptr.i, i32 %22)
  %add.ptr22.i = getelementptr i8, ptr %buffer.addr.065.i, i32 %22
  %sub23.i = sub i32 %remaining.064.i, %22
  %add.i = add i32 %22, %offset.addr.063.i
  %25 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length17, align 8
  %cmp8.i = icmp sgt i32 %26, %add.i
  br i1 %cmp8.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %cleanup.thread.i
  %remaining.2.i = phi i32 [ 0, %cleanup.thread.i ], [ %sub23.i, %cleanup.i.while.end.i_crit_edge ]
  %sub25.i = sub i32 %length.addr.082, %remaining.2.i
  br label %squashfs_copy_data.exit

squashfs_copy_data.exit:                          ; preds = %while.end.i, %if.then3.i
  %retval.0.i59 = phi i32 [ %16, %if.then3.i ], [ %sub25.i, %while.end.i ]
  %add.ptr = getelementptr i8, ptr %buffer.addr.084, i32 %retval.0.i59
  %spec.select = select i1 %cmp2.i, ptr null, ptr %add.ptr
  %sub = sub i32 %length.addr.082, %retval.0.i59
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add = add i32 %28, %retval.0.i59
  store i32 %add, ptr %offset, align 4
  %29 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length17, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp27 = icmp eq i32 %add, %30
  br i1 %cmp27, label %if.then28, label %squashfs_copy_data.exit.if.end29_crit_edge

squashfs_copy_data.exit.if.end29_crit_edge:       ; preds = %squashfs_copy_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %squashfs_copy_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %next_index = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %next_index to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %next_index, align 8
  %33 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %block, align 8
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %offset, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %squashfs_copy_data.exit.if.end29_crit_edge
  %cache2.i = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 8
  %35 = ptrtoint ptr %cache2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cache2.i, align 8
  %lock.i = getelementptr inbounds %struct.squashfs_cache, ptr %36, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %refcount.i = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 2
  %37 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %refcount.i, align 4
  %dec.i = add i32 %38, -1
  store i32 %dec.i, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i60 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i60, label %if.then.i, label %if.end29.if.end6.i_crit_edge

if.end29.if.end6.i_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end29
  %unused.i = getelementptr inbounds %struct.squashfs_cache, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %unused.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %unused.i, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %unused.i, align 4
  %num_waiters.i = getelementptr inbounds %struct.squashfs_cache, ptr %36, i32 0, i32 4
  %41 = ptrtoint ptr %num_waiters.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_waiters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.then.i.if.end6.i_crit_edge, label %if.then4.i

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %wait_queue.i = getelementptr inbounds %struct.squashfs_cache, ptr %36, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait_queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %squashfs_cache_put.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %if.end29.if.end6.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  br label %squashfs_cache_put.exit

squashfs_cache_put.exit:                          ; preds = %if.end6.i, %if.then4.i
  %tobool12.not = icmp eq i32 %sub, 0
  br i1 %tobool12.not, label %squashfs_cache_put.exit.cleanup_crit_edge, label %squashfs_cache_put.exit.while.body_crit_edge

squashfs_cache_put.exit.while.body_crit_edge:     ; preds = %squashfs_cache_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

squashfs_cache_put.exit.cleanup_crit_edge:        ; preds = %squashfs_cache_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error30:                                          ; preds = %if.else.error30_crit_edge, %while.body.error30_crit_edge
  %res.0 = phi i32 [ %11, %while.body.error30_crit_edge ], [ -5, %if.else.error30_crit_edge ]
  %cache2.i62 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 8
  %43 = ptrtoint ptr %cache2.i62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cache2.i62, align 8
  %lock.i63 = getelementptr inbounds %struct.squashfs_cache, ptr %44, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i63) #8
  %refcount.i64 = getelementptr inbounds %struct.squashfs_cache_entry, ptr %call13, i32 0, i32 2
  %45 = ptrtoint ptr %refcount.i64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %refcount.i64, align 4
  %dec.i65 = add i32 %46, -1
  store i32 %dec.i65, ptr %refcount.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i65)
  %cmp.i66 = icmp eq i32 %dec.i65, 0
  br i1 %cmp.i66, label %if.then.i71, label %error30.if.end6.i74_crit_edge

error30.if.end6.i74_crit_edge:                    ; preds = %error30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i74

if.then.i71:                                      ; preds = %error30
  %unused.i67 = getelementptr inbounds %struct.squashfs_cache, ptr %44, i32 0, i32 5
  %47 = ptrtoint ptr %unused.i67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %unused.i67, align 4
  %inc.i68 = add i32 %48, 1
  store i32 %inc.i68, ptr %unused.i67, align 4
  %num_waiters.i69 = getelementptr inbounds %struct.squashfs_cache, ptr %44, i32 0, i32 4
  %49 = ptrtoint ptr %num_waiters.i69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_waiters.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i70 = icmp eq i32 %50, 0
  br i1 %tobool.not.i70, label %if.then.i71.if.end6.i74_crit_edge, label %if.then4.i73

if.then.i71.if.end6.i74_crit_edge:                ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i74

if.then4.i73:                                     ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i63) #8
  %wait_queue.i72 = getelementptr inbounds %struct.squashfs_cache, ptr %44, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait_queue.i72, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.end6.i74:                                      ; preds = %if.then.i71.if.end6.i74_crit_edge, %error30.if.end6.i74_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i63) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i74, %if.then4.i73, %squashfs_cache_put.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end.cleanup_crit_edge ], [ %res.0, %if.then4.i73 ], [ %res.0, %if.end6.i74 ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %length, %squashfs_cache_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_get_fragment(ptr noundef %sb, i64 noundef %start_block, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %fragment_cache = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fragment_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fragment_cache, align 8
  %call = tail call ptr @squashfs_cache_get(ptr noundef %sb, ptr noundef %3, i64 noundef %start_block, i32 noundef %length)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_get_datablock(ptr noundef %sb, i64 noundef %start_block, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %read_page = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_page, align 4
  %call = tail call ptr @squashfs_cache_get(ptr noundef %sb, ptr noundef %3, i64 noundef %start_block, i32 noundef %length)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_read_table(ptr noundef %sb, i64 noundef %block, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %length, 4095
  %shr = lshr i32 %sub, 12
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %length, i32 noundef 3264) #13
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end7.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %0 = shl nuw nsw i32 %shr, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #13
  %cmp3 = icmp eq ptr %call8.i.i, null
  br i1 %cmp3, label %if.end7.i.i.failed_crit_edge, label %if.end5

if.end7.i.i.failed_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

if.end5:                                          ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 16) #12
  %cmp.i40 = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i40, label %if.then8, label %squashfs_page_actor_init.exit

squashfs_page_actor_init.exit:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not.i = icmp eq i32 %length, 0
  %mul.i = and i32 %sub, -4096
  %spec.select.i = select i1 %tobool.not.i, i32 %mul.i, i32 %length
  %length1.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %length1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select.i, ptr %length1.i, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %pages3.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %pages3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %pages3.i, align 4
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %next_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp1052.not = icmp ult i32 %sub, 4096
  br i1 %cmp1052.not, label %squashfs_page_actor_init.exit.for.end_crit_edge, label %for.body.preheader

squashfs_page_actor_init.exit.for.end_crit_edge:  ; preds = %squashfs_page_actor_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %squashfs_page_actor_init.exit
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %failed

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %buffer.054 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %call9.i, %for.body.preheader ]
  %i.053 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.053
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffer.054, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.053, 1
  %add.ptr = getelementptr i8, ptr %buffer.054, i32 4096
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %squashfs_page_actor_init.exit.for.end_crit_edge
  %or = or i32 %length, 16777216
  %call11 = tail call i32 @squashfs_read_data(ptr noundef %sb, i64 noundef %block, i32 noundef %or, ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %for.end.failed_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.failed_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %failed

failed:                                           ; preds = %for.end.failed_crit_edge, %if.then8, %if.end7.i.i.failed_crit_edge
  %res.0 = phi i32 [ -12, %if.then8 ], [ %call11, %for.end.failed_crit_edge ], [ -12, %if.end7.i.i.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  %7 = inttoptr i32 %res.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %failed, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %failed ], [ %call9.i, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/cache.c", i32 77, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/squashfs/cache.c", i32 160, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @squashfs_cache_get.__UNIQUE_ID_ddebug234, !3, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/squashfs/cache.c", i32 164, i32 3}
!9 = !{ptr @squashfs_cache_get._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @squashfs_cache_get._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/squashfs/cache.c", i32 230, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @squashfs_cache_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @squashfs_cache_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @squashfs_cache_init._entry.7, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../fs/squashfs/cache.c", i32 236, i32 3}
!18 = !{ptr @squashfs_cache_init._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @squashfs_cache_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/squashfs/cache.c", i32 249, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @squashfs_cache_init.__key.10, !23, !"__key", i1 false, i1 false}
!23 = !{!"../fs/squashfs/cache.c", i32 250, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @squashfs_cache_init.__key.12, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/squashfs/cache.c", i32 255, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/squashfs/cache.c", i32 260, i32 4}
!30 = !{ptr @squashfs_cache_init._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @squashfs_cache_init._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/squashfs/cache.c", i32 267, i32 5}
!34 = !{ptr @squashfs_cache_init._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @squashfs_cache_init._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @squashfs_cache_init._entry.20, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../fs/squashfs/cache.c", i32 275, i32 4}
!38 = !{ptr @squashfs_cache_init._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/squashfs/cache.c", i32 338, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @squashfs_read_metadata.__UNIQUE_ID_ddebug239, !40, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148486120, i64 2148486125, i64 2148486138, i64 2148486182, i64 2148486216, i64 2148486237}
!53 = !{!"branch_weights", i32 1, i32 2000}
