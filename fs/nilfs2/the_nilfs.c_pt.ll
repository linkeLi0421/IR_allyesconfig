; ModuleID = '/llk/IR_all_yes/fs/nilfs2/the_nilfs.c_pt.bc'
source_filename = "../fs/nilfs2/the_nilfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.callback_head = type { ptr, ptr }
%struct.nilfs_recovery_info = type { i32, i64, i64, i64, i64, i64, %struct.list_head, i64, i64, i64, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nilfs_super_block = type { i32, i16, i16, i16, i16, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i32, i32, i16, i16, i32, i16, i16, i16, i16, [16 x i8], [80 x i8], i32, i32, i64, i64, i64, [186 x i32] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.nilfs_super_root = type { i32, i16, i16, i64, %struct.nilfs_inode, %struct.nilfs_inode, %struct.nilfs_inode }
%struct.nilfs_inode = type { i64, i64, i64, i64, i32, i32, i32, i32, i16, i16, i32, [7 x i64], i64, i32, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
%struct.nilfs_root = type { i64, %struct.rb_node, %struct.refcount_struct, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.kobject, %struct.completion }

@alloc_nilfs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&nilfs->ns_sem\00", [17 x i8] zeroinitializer }, align 32
@alloc_nilfs.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&nilfs->ns_snapshot_mount_mutex\00", [32 x i8] zeroinitializer }, align 32
@alloc_nilfs.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&nilfs->ns_inode_lock\00", [42 x i8] zeroinitializer }, align 32
@alloc_nilfs.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&nilfs->ns_next_gen_lock\00", [39 x i8] zeroinitializer }, align 32
@alloc_nilfs.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&nilfs->ns_last_segment_lock\00", [35 x i8] zeroinitializer }, align 32
@alloc_nilfs.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&nilfs->ns_cptree_lock\00", [41 x i8] zeroinitializer }, align 32
@alloc_nilfs.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&nilfs->ns_segctor_sem\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/nilfs2/the_nilfs.c\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014mounting unchecked fs\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016recovery required for readonly filesystem\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016write access will be enabled during recovery\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014unable to fall back to spare super block\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016trying rollback from an earlier position\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014blocksize differs between two super blocks (%d != %d)\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013error %d while loading super root\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016norecovery option specified, skipping roll-forward recovery\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013couldn't proceed with recovery because of unsupported optional features (%llx)\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013write access unavailable, cannot proceed\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013recovery cancelled because norecovery option was specified for a read/write mount\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013error %d updating super block. recovery unfinished.\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016recovery complete\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013error %d while searching super root\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013unable to set blocksize\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013couldn't mount because of unsupported filesystem blocksize %d\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013blocksize %d too small for device (sector-size = %d)\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013pointed segment number is out of range: segnum=%llu, nsegments=%lu\00", [59 x i8] zeroinitializer }, align 32
@nilfs_valid_sb.sum = internal global { [4 x i8], [28 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013unable to read superblock\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014unable to read primary superblock (blocksize = %d)\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014unable to read secondary superblock (blocksize = %d)\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013couldn't find nilfs on the device\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014broken superblock, retrying with spare superblock (blocksize = %d)\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013unsupported revision (superblock rev.=%d.%d, current rev.=%d.%d). Please check the version of mkfs.nilfs(2).\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013too large inode size: %d bytes\00", [63 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013too small inode size: %d bytes\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013too short segment: %lu blocks\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013invalid reserved segments percentage: %lu\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 66, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 67, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 70, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 71, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 72, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 74, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 75, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 87, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 213, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 215, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 217, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 233, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 237, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 250, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 271, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 282, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 289, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 296, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 303, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 319, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 324, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 332, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 573, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 592, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 602, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 186, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [4 x i8] c"sum\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 428, i32 23 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 501, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 504, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 508, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 532, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 537, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 379, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 392, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 396, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 405, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [25 x i8] c"../fs/nilfs2/the_nilfs.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 415, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @alloc_nilfs.__key, ptr @.str, ptr @alloc_nilfs.__key.1, ptr @.str.2, ptr @alloc_nilfs.__key.3, ptr @.str.4, ptr @alloc_nilfs.__key.5, ptr @.str.6, ptr @alloc_nilfs.__key.7, ptr @.str.8, ptr @alloc_nilfs.__key.9, ptr @.str.10, ptr @alloc_nilfs.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @nilfs_valid_sb.sum, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_nilfs.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_valid_sb.sum to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_set_last_segment(ptr noundef %nilfs, i64 noundef %start_blocknr, i64 noundef %seq, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 21
  tail call void @_raw_spin_lock(ptr noundef %ns_last_segment_lock) #10
  %ns_last_pseg = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 22
  %0 = ptrtoint ptr %ns_last_pseg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %start_blocknr, ptr %ns_last_pseg, align 8
  %ns_last_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 23
  %1 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %seq, ptr %ns_last_seq, align 8
  %ns_last_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 24
  %2 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %cno, ptr %ns_last_cno, align 8
  %3 = ptrtoint ptr %nilfs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %nilfs, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %ns_prev_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 26
  %6 = ptrtoint ptr %ns_prev_seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ns_prev_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %seq)
  %cmp = icmp eq i64 %7, %seq
  br i1 %cmp, label %if.then.stay_cursor_crit_edge, label %if.end

if.then.stay_cursor_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %stay_cursor

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 3, ptr noundef %nilfs) #10
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %8 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ns_last_seq, align 8
  %ns_prev_seq5 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 26
  %10 = ptrtoint ptr %ns_prev_seq5 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %ns_prev_seq5, align 8
  br label %stay_cursor

stay_cursor:                                      ; preds = %if.end3, %if.then.stay_cursor_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ns_last_segment_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_nilfs(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 920) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %ns_sb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sb, ptr %ns_sb, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %2 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_bdev, align 4
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ns_bdev, align 4
  %ns_ndirtyblks = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ns_ndirtyblks, i32 noundef 4) #10
  %5 = ptrtoint ptr %ns_ndirtyblks to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %ns_ndirtyblks, align 8
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 4
  tail call void @__init_rwsem(ptr noundef %ns_sem, ptr noundef nonnull @.str, ptr noundef nonnull @alloc_nilfs.__key) #10
  %ns_snapshot_mount_mutex = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %ns_snapshot_mount_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @alloc_nilfs.__key.1) #10
  %ns_dirty_files = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 34
  %6 = ptrtoint ptr %ns_dirty_files to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ns_dirty_files, ptr %ns_dirty_files, align 8
  %prev.i = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 34, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ns_dirty_files, ptr %prev.i, align 4
  %ns_gc_inodes = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 36
  %8 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ns_gc_inodes, ptr %ns_gc_inodes, align 4
  %prev.i39 = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ns_gc_inodes, ptr %prev.i39, align 8
  %ns_inode_lock = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %ns_inode_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @alloc_nilfs.__key.3, i16 noundef signext 3) #10
  %ns_next_gen_lock = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 38
  tail call void @__raw_spin_lock_init(ptr noundef %ns_next_gen_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @alloc_nilfs.__key.5, i16 noundef signext 3) #10
  %ns_last_segment_lock = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %ns_last_segment_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @alloc_nilfs.__key.7, i16 noundef signext 3) #10
  %ns_cptree = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 32
  %10 = ptrtoint ptr %ns_cptree to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ns_cptree, align 8
  %ns_cptree_lock = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 33
  tail call void @__raw_spin_lock_init(ptr noundef %ns_cptree_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @alloc_nilfs.__key.9, i16 noundef signext 3) #10
  %ns_segctor_sem = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 28
  tail call void @__init_rwsem(ptr noundef %ns_segctor_sem, ptr noundef nonnull @.str.12, ptr noundef nonnull @alloc_nilfs.__key.11) #10
  %ns_sb_update_freq = getelementptr inbounds %struct.the_nilfs, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %ns_sb_update_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %ns_sb_update_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_nilfs(ptr noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.13, i32 noundef 87) #10
  %0 = ptrtoint ptr %nilfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %nilfs, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @nilfs_sysfs_delete_device_group(ptr noundef %nilfs) #10
  %ns_sbh = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 6
  %2 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_sbh, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.brelse.exit_crit_edge, label %if.then.i

if.then.brelse.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %3) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then.brelse.exit_crit_edge
  %arrayidx4 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i9 = icmp eq ptr %5, null
  br i1 %tobool.not.i9, label %brelse.exit.if.end_crit_edge, label %if.then.i10

brelse.exit.if.end_crit_edge:                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i10:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i10, %brelse.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %nilfs) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sysfs_delete_device_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @load_nilfs(ptr noundef %nilfs, ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  %bh_sr.i = alloca ptr, align 4
  %ri = alloca %struct.nilfs_recovery_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ri) #10
  %0 = call ptr @memset(ptr %ri, i32 255, i32 88)
  %s_flags1 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %1 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %s_flags1, align 4
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %3 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bd_read_only.i, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.bdev_read_only.exit_crit_edge

entry.bdev_read_only.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_read_only.exit

lor.rhs.i:                                        ; preds = %entry
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %4, i32 0, i32 17
  %7 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bd_read_only.i.i, align 8, !range !90
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.i, label %lor.rhs.i.bdev_read_only.exit_crit_edge

lor.rhs.i.bdev_read_only.exit_crit_edge:          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_read_only.exit

lor.rhs.i.i:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 12
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i, align 4
  %15 = lshr i32 %14, 1
  %.lobit.i = and i32 %15, 1
  br label %bdev_read_only.exit

bdev_read_only.exit:                              ; preds = %lor.rhs.i.i, %lor.rhs.i.bdev_read_only.exit_crit_edge, %entry.bdev_read_only.exit_crit_edge
  %16 = phi i32 [ 1, %entry.bdev_read_only.exit_crit_edge ], [ 1, %lor.rhs.i.bdev_read_only.exit_crit_edge ], [ %.lobit.i, %lor.rhs.i.i ]
  %ns_sem.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  tail call void @down_read(ptr noundef %ns_sem.i) #10
  %ns_mount_state.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 11
  %17 = ptrtoint ptr %ns_mount_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ns_mount_state.i, align 8
  %and.i = and i32 %18, 1
  tail call void @up_read(ptr noundef %ns_sem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %bdev_read_only.exit.if.end5_crit_edge

bdev_read_only.exit.if.end5_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %bdev_read_only.exit
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.14) #10
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.15) #10
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.16) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %bdev_read_only.exit.if.end5_crit_edge
  %19 = call ptr @memset(ptr %ri, i32 0, i32 88)
  %ri_used_segments.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 6
  %20 = ptrtoint ptr %ri_used_segments.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %ri_used_segments.i, ptr %ri_used_segments.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ri_used_segments.i, ptr %prev.i.i, align 4
  %call6 = call i32 @nilfs_search_super_root(ptr noundef %nilfs, ptr noundef nonnull %ri) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end37_crit_edge, label %if.then10, !prof !91

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then10:                                        ; preds = %if.end5
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call6)
  %cmp.not = icmp eq i32 %call6, -22
  br i1 %cmp.not, label %if.end12, label %if.then10.scan_error_crit_edge

if.then10.scan_error_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %scan_error

if.end12:                                         ; preds = %if.then10
  %arrayidx = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %call13 = call fastcc i32 @nilfs_valid_sb(ptr noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.17) #10
  br label %scan_error

if.end16:                                         ; preds = %if.end12
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.18) #10
  %24 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ns_sbp, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %ns_sbsize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 10
  %28 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ns_sbsize, align 4
  %30 = call ptr @memcpy(ptr %25, ptr %27, i32 %29)
  %31 = load ptr, ptr %ns_sbp, align 4
  %s_crc_seed = getelementptr inbounds %struct.nilfs_super_block, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %s_crc_seed to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_crc_seed, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %ns_crc_seed = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 53
  %35 = ptrtoint ptr %ns_crc_seed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ns_crc_seed, align 4
  %s_wtime = getelementptr inbounds %struct.nilfs_super_block, ptr %31, i32 0, i32 19
  %36 = ptrtoint ptr %s_wtime to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %s_wtime, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %ns_sbwtime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 8
  %39 = ptrtoint ptr %ns_sbwtime to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %ns_sbwtime, align 8
  %s_log_block_size = getelementptr inbounds %struct.nilfs_super_block, ptr %31, i32 0, i32 7
  %40 = ptrtoint ptr %s_log_block_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_log_block_size, align 4
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %shl = shl i32 1024, %42
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %43 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ns_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %44)
  %cmp22.not = icmp eq i32 %shl, %44
  br i1 %cmp22.not, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.19, i32 noundef %shl, i32 noundef %44) #10
  br label %scan_error

if.end25:                                         ; preds = %if.end16
  %call27 = call fastcc i32 @nilfs_store_log_cursor(ptr noundef %nilfs, ptr noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.scan_error_crit_edge

if.end25.scan_error_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %scan_error

if.end30:                                         ; preds = %if.end25
  %45 = ptrtoint ptr %ns_mount_state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ns_mount_state.i, align 8
  %and31 = and i32 %46, -2
  store i32 %and31, ptr %ns_mount_state.i, align 8
  %call32 = call i32 @nilfs_search_super_root(ptr noundef %nilfs, ptr noundef nonnull %ri) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end30.if.end37_crit_edge, label %if.end30.scan_error_crit_edge

if.end30.scan_error_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %scan_error

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %if.end30.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  %valid_fs.1 = phi i32 [ %and.i, %if.end5.if.end37_crit_edge ], [ 0, %if.end30.if.end37_crit_edge ]
  %ri_super_root = getelementptr inbounds %struct.nilfs_recovery_info, ptr %ri, i32 0, i32 1
  %47 = ptrtoint ptr %ri_super_root to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %ri_super_root, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_sr.i) #10
  %49 = ptrtoint ptr %bh_sr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh_sr.i, align 4, !annotation !92
  %call.i = call i32 @nilfs_read_super_root_block(ptr noundef %nilfs, i64 noundef %48, ptr noundef nonnull %bh_sr.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i161 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i161, label %if.end.i, label %nilfs_load_super_root.exit.thread, !prof !91

nilfs_load_super_root.exit.thread:                ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_sr.i) #10
  br label %if.then46

if.end.i:                                         ; preds = %if.end37
  %ns_sbp.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  call void @down_read(ptr noundef %ns_sem.i) #10
  %50 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ns_sbp.i, align 4
  %s_dat_entry_size.i = getelementptr inbounds %struct.nilfs_super_block, ptr %51, i32 0, i32 31
  %52 = ptrtoint ptr %s_dat_entry_size.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %s_dat_entry_size.i, align 2
  %54 = call i16 @llvm.bswap.i16(i16 %53) #10
  %conv.i = zext i16 %54 to i32
  %s_checkpoint_size.i = getelementptr inbounds %struct.nilfs_super_block, ptr %51, i32 0, i32 32
  %55 = ptrtoint ptr %s_checkpoint_size.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %s_checkpoint_size.i, align 4
  %s_segment_usage_size.i = getelementptr inbounds %struct.nilfs_super_block, ptr %51, i32 0, i32 33
  %57 = ptrtoint ptr %s_segment_usage_size.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %s_segment_usage_size.i, align 2
  %59 = call i16 @llvm.bswap.i16(i16 %58) #10
  %conv6.i = zext i16 %59 to i32
  call void @up_read(ptr noundef %ns_sem.i) #10
  %ns_inode_size.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 51
  %60 = ptrtoint ptr %ns_inode_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ns_inode_size.i, align 4
  %62 = ptrtoint ptr %bh_sr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bh_sr.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 16
  %ns_dat.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %call8.i = call i32 @nilfs_dat_read(ptr noundef %sb, i32 noundef %conv.i, ptr noundef %add.ptr.i, ptr noundef %ns_dat.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.failed.i_crit_edge

if.end.i.failed.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed.i

if.end11.i:                                       ; preds = %if.end.i
  %66 = call i16 @llvm.bswap.i16(i16 %56) #10
  %conv4.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %bh_sr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bh_sr.i, align 4
  %b_data12.i = getelementptr inbounds %struct.buffer_head, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %b_data12.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %b_data12.i, align 4
  %add14.i = add i32 %61, 16
  %add.ptr15.i = getelementptr i8, ptr %70, i32 %add14.i
  %ns_cpfile.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %call16.i = call i32 @nilfs_cpfile_read(ptr noundef %sb, i32 noundef %conv4.i, ptr noundef %add.ptr15.i, ptr noundef %ns_cpfile.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end11.i.failed_dat.i_crit_edge

if.end11.i.failed_dat.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_dat.i

if.end19.i:                                       ; preds = %if.end11.i
  %71 = ptrtoint ptr %bh_sr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh_sr.i, align 4
  %b_data20.i = getelementptr inbounds %struct.buffer_head, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %b_data20.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data20.i, align 4
  %mul21.i = shl i32 %61, 1
  %add22.i = add i32 %mul21.i, 16
  %add.ptr23.i = getelementptr i8, ptr %74, i32 %add22.i
  %ns_sufile.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %call24.i = call i32 @nilfs_sufile_read(ptr noundef %sb, i32 noundef %conv6.i, ptr noundef %add.ptr23.i, ptr noundef %ns_sufile.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %failed_cpfile.i

if.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %bh_sr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bh_sr.i, align 4
  %b_data28.i = getelementptr inbounds %struct.buffer_head, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %b_data28.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data28.i, align 4
  %sr_nongc_ctime.i = getelementptr inbounds %struct.nilfs_super_root, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %sr_nongc_ctime.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %sr_nongc_ctime.i, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80) #10
  %ns_nongc_ctime.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 19
  %82 = ptrtoint ptr %ns_nongc_ctime.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %ns_nongc_ctime.i, align 8
  br label %failed.i

failed.i:                                         ; preds = %failed_dat.i, %if.end27.i, %if.end.i.failed.i_crit_edge
  %err.0.i = phi i32 [ %call8.i, %if.end.i.failed.i_crit_edge ], [ %err.1.i, %failed_dat.i ], [ 0, %if.end27.i ]
  %83 = ptrtoint ptr %bh_sr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bh_sr.i, align 4
  %tobool.not.i.i163 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i163, label %failed.i.nilfs_load_super_root.exit_crit_edge, label %if.then.i.i

failed.i.nilfs_load_super_root.exit_crit_edge:    ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_load_super_root.exit

if.then.i.i:                                      ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %84) #10
  br label %nilfs_load_super_root.exit

failed_cpfile.i:                                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %ns_cpfile.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ns_cpfile.i, align 8
  call void @iput(ptr noundef %86) #10
  br label %failed_dat.i

failed_dat.i:                                     ; preds = %failed_cpfile.i, %if.end11.i.failed_dat.i_crit_edge
  %err.1.i = phi i32 [ %call16.i, %if.end11.i.failed_dat.i_crit_edge ], [ %call24.i, %failed_cpfile.i ]
  %87 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ns_dat.i, align 4
  call void @iput(ptr noundef %88) #10
  br label %failed.i

nilfs_load_super_root.exit:                       ; preds = %if.then.i.i, %failed.i.nilfs_load_super_root.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_sr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool39.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool39.not, label %if.end47, label %nilfs_load_super_root.exit.if.then46_crit_edge, !prof !91

nilfs_load_super_root.exit.if.then46_crit_edge:   ; preds = %nilfs_load_super_root.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.then46:                                        ; preds = %nilfs_load_super_root.exit.if.then46_crit_edge, %nilfs_load_super_root.exit.thread
  %retval.0.i173 = phi i32 [ %call.i, %nilfs_load_super_root.exit.thread ], [ %err.0.i, %nilfs_load_super_root.exit.if.then46_crit_edge ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.20, i32 noundef %retval.0.i173) #10
  br label %cleanup90

if.end47:                                         ; preds = %nilfs_load_super_root.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_fs.1)
  %tobool48.not = icmp eq i32 %valid_fs.1, 0
  br i1 %tobool48.not, label %if.end50, label %if.end47.cleanup90_crit_edge

if.end47.cleanup90_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup90

if.end50:                                         ; preds = %if.end47
  %and51 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %ns_mount_opt72 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 39
  %89 = ptrtoint ptr %ns_mount_opt72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ns_mount_opt72, align 4
  %and73 = and i32 %90, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end50
  br i1 %tobool74.not, label %if.end57, label %if.then53.skip_recovery.sink.split_crit_edge

if.then53.skip_recovery.sink.split_crit_edge:     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_recovery.sink.split

if.end57:                                         ; preds = %if.then53
  %91 = ptrtoint ptr %ns_sbp.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ns_sbp.i, align 4
  %s_feature_compat_ro = getelementptr inbounds %struct.nilfs_super_block, ptr %92, i32 0, i32 39
  %93 = ptrtoint ptr %s_feature_compat_ro to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %s_feature_compat_ro, align 8
  %95 = and i64 %94, -72057594037927937
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool61.not = icmp eq i64 %95, 0
  br i1 %tobool61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %96 = call i64 @llvm.bswap.i64(i64 %95)
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.22, i64 noundef %96) #10
  br label %failed_unload

if.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool64.not = icmp eq i32 %16, 0
  br i1 %tobool64.not, label %cleanup69.thread176, label %if.then65

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.23) #10
  br label %failed_unload

cleanup69.thread176:                              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_flags1, align 4
  %and68 = and i32 %98, -2
  store i32 %and68, ptr %s_flags1, align 4
  br label %if.end77

if.else:                                          ; preds = %if.end50
  br i1 %tobool74.not, label %if.else.if.end77_crit_edge, label %if.then75

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.24) #10
  br label %failed_unload

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %cleanup69.thread176
  %call78 = call i32 @nilfs_salvage_orphan_logs(ptr noundef %nilfs, ptr noundef %sb, ptr noundef nonnull %ri) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.failed_unload_crit_edge

if.end77.failed_unload_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_unload

if.end81:                                         ; preds = %if.end77
  call void @down_write(ptr noundef %ns_sem.i) #10
  %99 = ptrtoint ptr %ns_mount_state.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ns_mount_state.i, align 8
  %or = or i32 %100, 1
  store i32 %or, ptr %ns_mount_state.i, align 8
  %call83 = call i32 @nilfs_cleanup_super(ptr noundef %sb) #10
  call void @up_write(ptr noundef %ns_sem.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.end81.skip_recovery.sink.split_crit_edge, label %if.then86

if.end81.skip_recovery.sink.split_crit_edge:      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_recovery.sink.split

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.25, i32 noundef %call83) #10
  br label %failed_unload

skip_recovery.sink.split:                         ; preds = %if.end81.skip_recovery.sink.split_crit_edge, %if.then53.skip_recovery.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.21, %if.then53.skip_recovery.sink.split_crit_edge ], [ @.str.26, %if.end81.skip_recovery.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull %.str.21.sink) #10
  br label %cleanup90

scan_error:                                       ; preds = %if.end30.scan_error_crit_edge, %if.end25.scan_error_crit_edge, %if.then23, %if.then15, %if.then10.scan_error_crit_edge
  %err.0.ph = phi i32 [ %call32, %if.end30.scan_error_crit_edge ], [ %call27, %if.end25.scan_error_crit_edge ], [ %call6, %if.then10.scan_error_crit_edge ], [ -22, %if.then15 ], [ -22, %if.then23 ]
  call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.27, i32 noundef %err.0.ph) #10
  br label %cleanup90

failed_unload:                                    ; preds = %if.then86, %if.end77.failed_unload_crit_edge, %if.then75, %if.then65, %if.then62
  %err.2 = phi i32 [ %call78, %if.end77.failed_unload_crit_edge ], [ %call83, %if.then86 ], [ -22, %if.then75 ], [ -30, %if.then62 ], [ -30, %if.then65 ]
  %ns_cpfile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 30
  %101 = ptrtoint ptr %ns_cpfile to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ns_cpfile, align 8
  call void @iput(ptr noundef %102) #10
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %103 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ns_sufile, align 4
  call void @iput(ptr noundef %104) #10
  %105 = ptrtoint ptr %ns_dat.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ns_dat.i, align 4
  call void @iput(ptr noundef %106) #10
  br label %cleanup90

cleanup90:                                        ; preds = %failed_unload, %scan_error, %skip_recovery.sink.split, %if.end47.cleanup90_crit_edge, %if.then46
  %retval.0 = phi i32 [ 0, %skip_recovery.sink.split ], [ 0, %if.end47.cleanup90_crit_edge ], [ %err.0.ph, %scan_error ], [ %retval.0.i173, %if.then46 ], [ %err.2, %failed_unload ]
  call void @nilfs_dispose_segment_list(ptr noundef %ri_used_segments.i) #10
  %107 = ptrtoint ptr %s_flags1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %2, ptr %s_flags1, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ri) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_search_super_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @nilfs_valid_sb(ptr noundef readonly %sbp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sbp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %s_magic = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 2
  %0 = ptrtoint ptr %s_magic to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %s_magic, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %1)
  %cmp.not = icmp eq i16 %1, 13364
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %s_bytes = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 3
  %2 = ptrtoint ptr %s_bytes to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %s_bytes, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = add i16 %4, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1005, i16 %5)
  %6 = icmp ult i16 %5, -1005
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = zext i16 %4 to i32
  %s_crc_seed = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 5
  %7 = ptrtoint ptr %s_crc_seed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_crc_seed, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %call = tail call i32 @crc32_le(i32 noundef %9, ptr noundef nonnull %sbp, i32 noundef 16) #14
  %call10 = tail call i32 @crc32_le(i32 noundef %call, ptr noundef nonnull @nilfs_valid_sb.sum, i32 noundef 4) #14
  %add.ptr11 = getelementptr i8, ptr %sbp, i32 20
  %sub12 = add nsw i32 %conv2, -20
  %call13 = tail call i32 @crc32_le(i32 noundef %call10, ptr noundef %add.ptr11, i32 noundef %sub12) #14
  %s_sum = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 6
  %10 = ptrtoint ptr %s_sum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_sum, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %12)
  %cmp14 = icmp eq i32 %call13, %12
  %conv15 = zext i1 %cmp14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv15, %if.end9 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_store_log_cursor(ptr nocapture noundef %nilfs, ptr nocapture noundef readonly %sbp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %s_last_pseg = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 14
  %0 = ptrtoint ptr %s_last_pseg to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %s_last_pseg, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %ns_last_pseg = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 22
  %3 = ptrtoint ptr %ns_last_pseg to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %ns_last_pseg, align 8
  %s_last_cno = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 13
  %4 = ptrtoint ptr %s_last_cno to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %s_last_cno, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %ns_last_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 24
  %7 = ptrtoint ptr %ns_last_cno to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %ns_last_cno, align 8
  %s_last_seq = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 15
  %8 = ptrtoint ptr %s_last_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %s_last_seq, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %ns_last_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 23
  %11 = ptrtoint ptr %ns_last_seq to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %ns_last_seq, align 8
  %ns_prev_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 26
  %12 = ptrtoint ptr %ns_prev_seq to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %10, ptr %ns_prev_seq, align 8
  %ns_seg_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 13
  %13 = ptrtoint ptr %ns_seg_seq to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %ns_seg_seq, align 8
  %ns_blocks_per_segment.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %14 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ns_blocks_per_segment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %2)
  %cmp164.i = icmp ult i64 %2, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !91

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i = trunc i64 %2 to i32
  %div172.i = udiv i32 %conv169.i, %15
  %conv173.i = zext i32 %div172.i to i64
  br label %nilfs_get_segnum_of_block.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %2) #15, !srcloc !93
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  br label %nilfs_get_segnum_of_block.exit

nilfs_get_segnum_of_block.exit:                   ; preds = %if.else174.i, %if.then168.i
  %segnum.0.i = phi i64 [ %conv173.i, %if.then168.i ], [ %asmresult1.i.i, %if.else174.i ]
  %ns_segnum = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 14
  %17 = ptrtoint ptr %ns_segnum to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %segnum.0.i, ptr %ns_segnum, align 8
  %add = add i64 %6, 1
  %ns_cno = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 17
  %18 = ptrtoint ptr %ns_cno to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %add, ptr %ns_cno, align 8
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 46
  %19 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ns_nsegments, align 8
  %conv = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %segnum.0.i, i64 %conv)
  %cmp.not = icmp ult i64 %segnum.0.i, %conv
  br i1 %cmp.not, label %nilfs_get_segnum_of_block.exit.if.end_crit_edge, label %if.then

nilfs_get_segnum_of_block.exit.if.end_crit_edge:  ; preds = %nilfs_get_segnum_of_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nilfs_get_segnum_of_block.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %21 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ns_sb, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %22, ptr noundef nonnull @.str.31, i64 noundef %segnum.0.i, i32 noundef %20) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %nilfs_get_segnum_of_block.exit.if.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.then ], [ 0, %nilfs_get_segnum_of_block.exit.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_salvage_orphan_logs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cleanup_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nilfs_nrsvsegs(ptr nocapture noundef readonly %nilfs, i32 noundef %nsegs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_r_segments_percentage = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 48
  %0 = ptrtoint ptr %ns_r_segments_percentage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_r_segments_percentage, align 8
  %mul = mul i32 %1, %nsegs
  %sub = add i32 %mul, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub)
  %cmp = icmp ult i32 %sub, 800
  %div = udiv i32 %sub, 100
  %cond = select i1 %cmp, i32 8, i32 %div
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_set_nsegments(ptr nocapture noundef %nilfs, i32 noundef %nsegs) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_nsegments = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 46
  %0 = ptrtoint ptr %ns_nsegments to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nsegs, ptr %ns_nsegments, align 8
  %ns_r_segments_percentage.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 48
  %1 = ptrtoint ptr %ns_r_segments_percentage.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ns_r_segments_percentage.i, align 8
  %mul.i = mul i32 %2, %nsegs
  %sub.i = add i32 %mul.i, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 800
  %div.i = udiv i32 %sub.i, 100
  %cond.i = select i1 %cmp.i, i32 8, i32 %div.i
  %ns_nrsvsegs = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 49
  %3 = ptrtoint ptr %ns_nrsvsegs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond.i, ptr %ns_nrsvsegs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_fall_back_super_block(ptr nocapture noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbh = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 6
  %0 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sbh, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.brelse.exit_crit_edge, label %if.then.i

entry.brelse.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %1) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %entry.brelse.exit_crit_edge
  %arrayidx2 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %4 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ns_sbh, align 4
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %arrayidx5 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %7 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ns_sbp, align 4
  store ptr null, ptr %arrayidx2, align 4
  store ptr null, ptr %arrayidx5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nilfs_swap_super_block(ptr nocapture noundef %nilfs) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbh = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 6
  %0 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sbh, align 4
  %ns_sbp = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %2 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_sbp, align 4
  %arrayidx3 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  store ptr %5, ptr %ns_sbh, align 4
  %arrayidx7 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  store ptr %7, ptr %ns_sbp, align 4
  store ptr %1, ptr %arrayidx3, align 4
  store ptr %3, ptr %arrayidx7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_nilfs(ptr noundef %nilfs, ptr noundef %sb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %sbp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sbp) #10
  %0 = ptrtoint ptr %sbp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sbp, align 4, !annotation !92
  %ns_sem = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 4
  tail call void @down_write(ptr noundef %ns_sem) #10
  %call = tail call i32 @sb_min_blocksize(ptr noundef %sb, i32 noundef 1024) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.28) #10
  br label %cleanup45

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @nilfs_load_super_block(ptr noundef %nilfs, ptr noundef %sb, i32 noundef %call, ptr noundef nonnull %sbp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup45_crit_edge

if.end.cleanup45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %sbp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sbp, align 4
  %call5 = tail call i32 @nilfs_store_magic_and_option(ptr noundef %sb, ptr noundef %2, ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.failed_sbh_crit_edge

if.end4.failed_sbh_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_sbh

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nilfs_check_feature_compatibility(ptr noundef %sb, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.failed_sbh_crit_edge

if.end8.failed_sbh_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_sbh

if.end12:                                         ; preds = %if.end8
  %s_log_block_size = getelementptr inbounds %struct.nilfs_super_block, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %s_log_block_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_log_block_size, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %shl = shl i32 1024, %5
  %6 = add i32 %shl, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64513, i32 %6)
  %7 = icmp ult i32 %6, -64513
  br i1 %7, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.29, i32 noundef %shl) #10
  br label %failed_sbh

if.end15:                                         ; preds = %if.end12
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shl)
  %cmp16.not = icmp eq i32 %9, %shl
  br i1 %cmp16.not, label %if.end15.if.end27_crit_edge, label %if.then17

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then17:                                        ; preds = %if.end15
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.then17.if.end21_crit_edge, label %bdev_logical_block_size.exit

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

bdev_logical_block_size.exit:                     ; preds = %if.then17
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 9
  %14 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i.i = icmp eq i32 %15, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %15
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %spec.select.i.i)
  %cmp19 = icmp slt i32 %shl, %spec.select.i.i
  br i1 %cmp19, label %cleanup, label %bdev_logical_block_size.exit.if.end21_crit_edge

bdev_logical_block_size.exit.if.end21_crit_edge:  ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %bdev_logical_block_size.exit.if.end21_crit_edge, %if.then17.if.end21_crit_edge
  tail call fastcc void @nilfs_release_super_block(ptr noundef %nilfs)
  %call22 = tail call i32 @sb_set_blocksize(ptr noundef %sb, i32 noundef %shl) #10
  %call23 = call fastcc i32 @nilfs_load_super_block(ptr noundef %nilfs, ptr noundef %sb, i32 noundef %shl, ptr noundef nonnull %sbp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %if.end21.cleanup45_crit_edge

if.end21.cleanup45_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

cleanup:                                          ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.30, i32 noundef %shl, i32 noundef %spec.select.i.i) #10
  br label %failed_sbh

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %16 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %17 to i32
  %ns_blocksize_bits = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 44
  %18 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %ns_blocksize_bits, align 8
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %19 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl, ptr %ns_blocksize, align 4
  %ns_next_generation = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 37
  tail call void @get_random_bytes(ptr noundef %ns_next_generation, i32 noundef 4) #10
  %20 = ptrtoint ptr %sbp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sbp, align 4
  %call28 = tail call fastcc i32 @nilfs_store_disk_layout(ptr noundef %nilfs, ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.failed_sbh_crit_edge

if.end27.failed_sbh_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_sbh

if.end31:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %23)
  %cmp.i = icmp ult i8 %23, 32
  br i1 %cmp.i, label %if.then.i, label %if.end31.nilfs_max_size.exit_crit_edge

if.end31.nilfs_max_size.exit_crit_edge:           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_max_size.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %conv33 = zext i8 %23 to i32
  %add.i = add nuw nsw i32 %conv33, 32
  %sh_prom.i = zext i32 %add.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %24 = tail call i64 @llvm.umax.i64(i64 %notmask.i, i64 -17592186040321) #10
  %25 = xor i64 %24, -1
  br label %nilfs_max_size.exit

nilfs_max_size.exit:                              ; preds = %if.then.i, %if.end31.nilfs_max_size.exit_crit_edge
  %res.0.i = phi i64 [ %25, %if.then.i ], [ 17592186040320, %if.end31.nilfs_max_size.exit_crit_edge ]
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 4
  %26 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %res.0.i, ptr %s_maxbytes, align 8
  %s_state = getelementptr inbounds %struct.nilfs_super_block, ptr %21, i32 0, i32 22
  %27 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %s_state, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %conv35 = zext i16 %29 to i32
  %ns_mount_state = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 11
  %30 = ptrtoint ptr %ns_mount_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv35, ptr %ns_mount_state, align 8
  %call36 = tail call fastcc i32 @nilfs_store_log_cursor(ptr noundef %nilfs, ptr noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %nilfs_max_size.exit.failed_sbh_crit_edge

nilfs_max_size.exit.failed_sbh_crit_edge:         ; preds = %nilfs_max_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_sbh

if.end39:                                         ; preds = %nilfs_max_size.exit
  %call40 = tail call i32 @nilfs_sysfs_create_device_group(ptr noundef %sb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.failed_sbh_crit_edge

if.end39.failed_sbh_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %failed_sbh

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %nilfs) #10
  br label %cleanup45

failed_sbh:                                       ; preds = %if.end39.failed_sbh_crit_edge, %nilfs_max_size.exit.failed_sbh_crit_edge, %if.end27.failed_sbh_crit_edge, %cleanup, %if.then14, %if.end8.failed_sbh_crit_edge, %if.end4.failed_sbh_crit_edge
  %err.2 = phi i32 [ %call5, %if.end4.failed_sbh_crit_edge ], [ %call9, %if.end8.failed_sbh_crit_edge ], [ -22, %if.then14 ], [ -22, %cleanup ], [ %call28, %if.end27.failed_sbh_crit_edge ], [ %call36, %nilfs_max_size.exit.failed_sbh_crit_edge ], [ %call40, %if.end39.failed_sbh_crit_edge ]
  %arrayidx.i = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 0
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %failed_sbh.for.inc.i_crit_edge, label %if.then.i93

failed_sbh.for.inc.i_crit_edge:                   ; preds = %failed_sbh
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i93:                                      ; preds = %failed_sbh
  %arrayidx1.i = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 0
  %33 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1.i, align 4
  %tobool.not.i.i92 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i92, label %if.then.i93.brelse.exit.i_crit_edge, label %if.then.i.i

if.then.i93.brelse.exit.i_crit_edge:              ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %34) #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then.i93.brelse.exit.i_crit_edge
  %35 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx1.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %brelse.exit.i, %failed_sbh.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %38, null
  br i1 %tobool.not.1.i, label %for.inc.i.cleanup45_crit_edge, label %if.then.1.i

for.inc.i.cleanup45_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.then.1.i:                                      ; preds = %for.inc.i
  %arrayidx1.1.i = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx1.1.i, align 4
  %tobool.not.i.1.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.1.i, label %if.then.1.i.brelse.exit.1.i_crit_edge, label %if.then.i.1.i

if.then.1.i.brelse.exit.1.i_crit_edge:            ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.1.i

if.then.i.1.i:                                    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %40) #10
  br label %brelse.exit.1.i

brelse.exit.1.i:                                  ; preds = %if.then.i.1.i, %if.then.1.i.brelse.exit.1.i_crit_edge
  %41 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx1.1.i, align 4
  %42 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %cleanup45

cleanup45:                                        ; preds = %brelse.exit.1.i, %for.inc.i.cleanup45_crit_edge, %if.end43, %if.end21.cleanup45_crit_edge, %if.end.cleanup45_crit_edge, %if.then
  %err.1 = phi i32 [ %call1, %if.end.cleanup45_crit_edge ], [ 0, %if.end43 ], [ -22, %if.then ], [ %err.2, %for.inc.i.cleanup45_crit_edge ], [ %err.2, %brelse.exit.1.i ], [ %call23, %if.end21.cleanup45_crit_edge ]
  tail call void @up_write(ptr noundef %ns_sem) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sbp) #10
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_min_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_load_super_block(ptr noundef %nilfs, ptr noundef %sb, i32 noundef %blocksize, ptr nocapture noundef writeonly %sbpp) unnamed_addr #0 align 64 {
entry:
  %valid = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sbp = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7
  %ns_sbh = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %0 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_bdev, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %shl.i = shl i64 %3, 9
  %4 = add i64 %shl.i, -4096
  %shl = and i64 %4, -4096
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %valid) #10
  %5 = getelementptr inbounds [2 x i32], ptr %valid, i32 0, i32 1
  %call2 = tail call ptr @nilfs_read_super_block(ptr noundef %sb, i64 noundef 1024, i32 noundef %blocksize, ptr noundef %ns_sbh) #10
  %6 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %ns_sbp, align 4
  %arrayidx4 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 1
  %call5 = tail call ptr @nilfs_read_super_block(ptr noundef %sb, i64 noundef %shl, i32 noundef %blocksize, ptr noundef %arrayidx4) #10
  %arrayidx6 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %arrayidx6, align 4
  %8 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns_sbp, align 4
  %tobool.not = icmp eq ptr %9, null
  %tobool9.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool9.not, label %if.then10, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool9.not, label %if.else.if.end15_crit_edge, label %if.else.lor.lhs.false.i_crit_edge

if.else.lor.lhs.false.i_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge
  %.str.34.sink = phi ptr [ @.str.33, %if.then.if.end15_crit_edge ], [ @.str.34, %if.else.if.end15_crit_edge ]
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull %.str.34.sink, i32 noundef %blocksize) #10
  %10 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %ns_sbp, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %if.end15.nilfs_valid_sb.exit_crit_edge, label %if.end15.lor.lhs.false.i_crit_edge

if.end15.lor.lhs.false.i_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

if.end15.nilfs_valid_sb.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_valid_sb.exit

lor.lhs.false.i:                                  ; preds = %if.end15.lor.lhs.false.i_crit_edge, %if.else.lor.lhs.false.i_crit_edge
  %11 = phi ptr [ %.pr, %if.end15.lor.lhs.false.i_crit_edge ], [ %9, %if.else.lor.lhs.false.i_crit_edge ]
  %s_magic.i = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_magic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %13)
  %cmp.not.i = icmp eq i16 %13, 13364
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.nilfs_valid_sb.exit_crit_edge

lor.lhs.false.i.nilfs_valid_sb.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_valid_sb.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %s_bytes.i = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %s_bytes.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s_bytes.i, align 8
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %17 = add i16 %16, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1005, i16 %17)
  %18 = icmp ult i16 %17, -1005
  br i1 %18, label %if.end.i.nilfs_valid_sb.exit_crit_edge, label %if.end9.i

if.end.i.nilfs_valid_sb.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_valid_sb.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = zext i16 %16 to i32
  %s_crc_seed.i = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 5
  %19 = ptrtoint ptr %s_crc_seed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_crc_seed.i, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %call.i = tail call i32 @crc32_le(i32 noundef %21, ptr noundef nonnull %11, i32 noundef 16) #14
  %call10.i = tail call i32 @crc32_le(i32 noundef %call.i, ptr noundef nonnull @nilfs_valid_sb.sum, i32 noundef 4) #14
  %add.ptr11.i = getelementptr i8, ptr %11, i32 20
  %sub12.i = add nsw i32 %conv2.i, -20
  %call13.i = tail call i32 @crc32_le(i32 noundef %call10.i, ptr noundef %add.ptr11.i, i32 noundef %sub12.i) #14
  %s_sum.i = getelementptr inbounds %struct.nilfs_super_block, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %s_sum.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_sum.i, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %24)
  %cmp14.i = icmp eq i32 %call13.i, %24
  %conv15.i = zext i1 %cmp14.i to i32
  br label %nilfs_valid_sb.exit

nilfs_valid_sb.exit:                              ; preds = %if.end9.i, %if.end.i.nilfs_valid_sb.exit_crit_edge, %lor.lhs.false.i.nilfs_valid_sb.exit_crit_edge, %if.end15.nilfs_valid_sb.exit_crit_edge
  %25 = phi ptr [ %11, %if.end9.i ], [ %11, %lor.lhs.false.i.nilfs_valid_sb.exit_crit_edge ], [ null, %if.end15.nilfs_valid_sb.exit_crit_edge ], [ %11, %if.end.i.nilfs_valid_sb.exit_crit_edge ]
  %retval.0.i = phi i32 [ %conv15.i, %if.end9.i ], [ 0, %lor.lhs.false.i.nilfs_valid_sb.exit_crit_edge ], [ 0, %if.end15.nilfs_valid_sb.exit_crit_edge ], [ 0, %if.end.i.nilfs_valid_sb.exit_crit_edge ]
  %26 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i, ptr %valid, align 4
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx6, align 4
  %tobool.not.i102 = icmp eq ptr %28, null
  br i1 %tobool.not.i102, label %nilfs_valid_sb.exit.nilfs_valid_sb.exit120.thread_crit_edge, label %lor.lhs.false.i105

nilfs_valid_sb.exit.nilfs_valid_sb.exit120.thread_crit_edge: ; preds = %nilfs_valid_sb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_valid_sb.exit120.thread

lor.lhs.false.i105:                               ; preds = %nilfs_valid_sb.exit
  %s_magic.i103 = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %s_magic.i103 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %s_magic.i103, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13364, i16 %30)
  %cmp.not.i104 = icmp eq i16 %30, 13364
  br i1 %cmp.not.i104, label %if.end.i107, label %lor.lhs.false.i105.nilfs_valid_sb.exit120.thread_crit_edge

lor.lhs.false.i105.nilfs_valid_sb.exit120.thread_crit_edge: ; preds = %lor.lhs.false.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_valid_sb.exit120.thread

if.end.i107:                                      ; preds = %lor.lhs.false.i105
  %s_bytes.i106 = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %s_bytes.i106 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %s_bytes.i106, align 8
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  %34 = add i16 %33, -1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1005, i16 %34)
  %35 = icmp ult i16 %34, -1005
  br i1 %35, label %if.end.i107.nilfs_valid_sb.exit120.thread_crit_edge, label %nilfs_valid_sb.exit120

if.end.i107.nilfs_valid_sb.exit120.thread_crit_edge: ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_valid_sb.exit120.thread

nilfs_valid_sb.exit120.thread:                    ; preds = %if.end.i107.nilfs_valid_sb.exit120.thread_crit_edge, %lor.lhs.false.i105.nilfs_valid_sb.exit120.thread_crit_edge, %nilfs_valid_sb.exit.nilfs_valid_sb.exit120.thread_crit_edge
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %5, align 4
  br label %land.end

nilfs_valid_sb.exit120:                           ; preds = %if.end.i107
  %conv2.i108 = zext i16 %33 to i32
  %s_crc_seed.i109 = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 5
  %37 = ptrtoint ptr %s_crc_seed.i109 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_crc_seed.i109, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  %call.i110 = tail call i32 @crc32_le(i32 noundef %39, ptr noundef nonnull %28, i32 noundef 16) #14
  %call10.i111 = tail call i32 @crc32_le(i32 noundef %call.i110, ptr noundef nonnull @nilfs_valid_sb.sum, i32 noundef 4) #14
  %add.ptr11.i112 = getelementptr i8, ptr %28, i32 20
  %sub12.i113 = add nsw i32 %conv2.i108, -20
  %call13.i114 = tail call i32 @crc32_le(i32 noundef %call10.i111, ptr noundef %add.ptr11.i112, i32 noundef %sub12.i113) #14
  %s_sum.i115 = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 6
  %40 = ptrtoint ptr %s_sum.i115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %s_sum.i115, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i114, i32 %42)
  %cmp14.i116 = icmp eq i32 %call13.i114, %42
  %conv15.i117 = zext i1 %cmp14.i116 to i32
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv15.i117, ptr %5, align 4
  br i1 %cmp14.i116, label %land.rhs, label %nilfs_valid_sb.exit120.land.end_crit_edge

nilfs_valid_sb.exit120.land.end_crit_edge:        ; preds = %nilfs_valid_sb.exit120
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %nilfs_valid_sb.exit120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool25.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool25.not, label %land.rhs.land.end_crit_edge, label %lor.rhs

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %s_last_cno = getelementptr inbounds %struct.nilfs_super_block, ptr %28, i32 0, i32 13
  %44 = ptrtoint ptr %s_last_cno to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %s_last_cno, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %45)
  %s_last_cno28 = getelementptr inbounds %struct.nilfs_super_block, ptr %25, i32 0, i32 13
  %47 = ptrtoint ptr %s_last_cno28 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %s_last_cno28, align 8
  %49 = tail call i64 @llvm.bswap.i64(i64 %48)
  call void @__sanitizer_cov_trace_cmp8(i64 %46, i64 %49)
  %cmp = icmp ugt i64 %46, %49
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %nilfs_valid_sb.exit120.land.end_crit_edge, %nilfs_valid_sb.exit120.thread
  %50 = phi i32 [ 0, %nilfs_valid_sb.exit120.land.end_crit_edge ], [ 1, %land.rhs.land.end_crit_edge ], [ %phi.cast, %lor.rhs ], [ 0, %nilfs_valid_sb.exit120.thread ]
  %arrayidx29 = getelementptr [2 x i32], ptr %valid, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool30.not = icmp eq i32 %52, 0
  br i1 %tobool30.not, label %land.end.if.end39_crit_edge, label %land.lhs.true

land.end.if.end39_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %land.end
  %arrayidx31 = getelementptr ptr, ptr %ns_sbp, i32 %50
  %53 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx31, align 4
  %s_nsegments.i = getelementptr inbounds %struct.nilfs_super_block, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %s_nsegments.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %s_nsegments.i, align 8
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #10
  %s_blocks_per_segment.i = getelementptr inbounds %struct.nilfs_super_block, ptr %54, i32 0, i32 11
  %58 = ptrtoint ptr %s_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_blocks_per_segment.i, align 8
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %conv.i = zext i32 %60 to i64
  %mul.i = mul i64 %57, %conv.i
  %s_log_block_size.i = getelementptr inbounds %struct.nilfs_super_block, ptr %54, i32 0, i32 7
  %61 = ptrtoint ptr %s_log_block_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_log_block_size.i, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  %add.i = add i32 %63, 10
  %sh_prom.i = zext i32 %add.i to i64
  %shl.i121 = shl i64 %mul.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i121, i64 %shl)
  %cmp.i.not = icmp ugt i64 %shl.i121, %shl
  br i1 %cmp.i.not, label %if.then34, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then34:                                        ; preds = %land.lhs.true
  %64 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i122 = icmp eq ptr %65, null
  br i1 %tobool.not.i122, label %if.then34.brelse.exit_crit_edge, label %if.then.i

if.then34.brelse.exit_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %65) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then34.brelse.exit_crit_edge
  %66 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx4, align 4
  %67 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx6, align 4
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %5, align 4
  br label %if.end39

if.end39:                                         ; preds = %brelse.exit, %land.lhs.true.if.end39_crit_edge, %land.end.if.end39_crit_edge
  %swp.0 = phi i32 [ 0, %brelse.exit ], [ %50, %land.lhs.true.if.end39_crit_edge ], [ %50, %land.end.if.end39_crit_edge ]
  %arrayidx40 = getelementptr [2 x i32], ptr %valid, i32 0, i32 %swp.0
  %69 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool41.not = icmp eq i32 %70, 0
  br i1 %tobool41.not, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  %71 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ns_sbp, align 4
  %tobool.not.i124 = icmp eq ptr %72, null
  br i1 %tobool.not.i124, label %if.then42.for.inc.i_crit_edge, label %if.then.i125

if.then42.for.inc.i_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i125:                                     ; preds = %if.then42
  %73 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ns_sbh, align 4
  %tobool.not.i.i = icmp eq ptr %74, null
  br i1 %tobool.not.i.i, label %if.then.i125.brelse.exit.i_crit_edge, label %if.then.i.i

if.then.i125.brelse.exit.i_crit_edge:             ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %74) #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.then.i125.brelse.exit.i_crit_edge
  %75 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %ns_sbh, align 4
  %76 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %ns_sbp, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %brelse.exit.i, %if.then42.for.inc.i_crit_edge
  %77 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx6, align 4
  %tobool.not.1.i = icmp eq ptr %78, null
  br i1 %tobool.not.1.i, label %for.inc.i.nilfs_release_super_block.exit_crit_edge, label %if.then.1.i

for.inc.i.nilfs_release_super_block.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_release_super_block.exit

if.then.1.i:                                      ; preds = %for.inc.i
  %79 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i.1.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.1.i, label %if.then.1.i.brelse.exit.1.i_crit_edge, label %if.then.i.1.i

if.then.1.i.brelse.exit.1.i_crit_edge:            ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.1.i

if.then.i.1.i:                                    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %80) #10
  br label %brelse.exit.1.i

brelse.exit.1.i:                                  ; preds = %if.then.i.1.i, %if.then.1.i.brelse.exit.1.i_crit_edge
  %81 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arrayidx4, align 4
  %82 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx6, align 4
  br label %nilfs_release_super_block.exit

nilfs_release_super_block.exit:                   ; preds = %brelse.exit.1.i, %for.inc.i.nilfs_release_super_block.exit_crit_edge
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %swp.0)
  %tobool44.not = icmp eq i32 %swp.0, 0
  %lnot.ext = zext i1 %tobool44.not to i32
  %arrayidx45 = getelementptr [2 x i32], ptr %valid, i32 0, i32 %lnot.ext
  %83 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool46.not = icmp eq i32 %84, 0
  br i1 %tobool46.not, label %if.then47, label %if.end43.if.end48_crit_edge

if.end43.if.end48_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.36, i32 noundef %blocksize) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end43.if.end48_crit_edge
  br i1 %tobool44.not, label %if.end48.if.end51_crit_edge, label %if.then50

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %ns_sbh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ns_sbh, align 4
  %87 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ns_sbp, align 4
  %89 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx4, align 4
  store ptr %90, ptr %ns_sbh, align 4
  %91 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx6, align 4
  store ptr %92, ptr %ns_sbp, align 4
  store ptr %86, ptr %arrayidx4, align 4
  store ptr %88, ptr %arrayidx6, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48.if.end51_crit_edge
  %ns_sbwcount = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 9
  %93 = ptrtoint ptr %ns_sbwcount to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %ns_sbwcount, align 8
  %94 = ptrtoint ptr %ns_sbp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ns_sbp, align 4
  %s_wtime = getelementptr inbounds %struct.nilfs_super_block, ptr %95, i32 0, i32 19
  %96 = ptrtoint ptr %s_wtime to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %s_wtime, align 8
  %98 = tail call i64 @llvm.bswap.i64(i64 %97)
  %ns_sbwtime = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 8
  %99 = ptrtoint ptr %ns_sbwtime to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %ns_sbwtime, align 8
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %5, align 4
  %and = and i32 %101, %lnot.ext
  %arrayidx57 = getelementptr ptr, ptr %ns_sbp, i32 %and
  %102 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx57, align 4
  %s_last_seq = getelementptr inbounds %struct.nilfs_super_block, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %s_last_seq to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %s_last_seq, align 8
  %106 = tail call i64 @llvm.bswap.i64(i64 %105)
  %ns_prot_seq = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 25
  %107 = ptrtoint ptr %ns_prot_seq to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %ns_prot_seq, align 8
  %108 = ptrtoint ptr %sbpp to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %95, ptr %sbpp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %nilfs_release_super_block.exit, %if.then10
  %retval.0 = phi i32 [ 0, %if.end51 ], [ -22, %nilfs_release_super_block.exit ], [ -5, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %valid) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_store_magic_and_option(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_check_feature_compatibility(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_release_super_block(ptr nocapture noundef %nilfs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.brelse.exit_crit_edge, label %if.then.i

if.then.brelse.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %3) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.then.brelse.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx1, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %brelse.exit, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %arrayidx1.1 = getelementptr %struct.the_nilfs, ptr %nilfs, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.1, align 4
  %tobool.not.i.1 = icmp eq ptr %9, null
  br i1 %tobool.not.i.1, label %if.then.1.brelse.exit.1_crit_edge, label %if.then.i.1

if.then.1.brelse.exit.1_crit_edge:                ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.1

if.then.i.1:                                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %9) #10
  br label %brelse.exit.1

brelse.exit.1:                                    ; preds = %if.then.i.1, %if.then.1.brelse.exit.1_crit_edge
  %10 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx1.1, align 4
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %brelse.exit.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nilfs_store_disk_layout(ptr nocapture noundef %nilfs, ptr nocapture noundef readonly %sbp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sbp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sbp, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %3 = ptrtoint ptr %ns_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns_sb, align 8
  %s_minor_rev_level = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 1
  %5 = ptrtoint ptr %s_minor_rev_level to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %s_minor_rev_level, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %4, ptr noundef nonnull @.str.37, i32 noundef %2, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #10
  br label %return

if.end:                                           ; preds = %entry
  %s_bytes = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 3
  %8 = ptrtoint ptr %s_bytes to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %s_bytes, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv2 = zext i16 %10 to i32
  %ns_sbsize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 10
  %11 = ptrtoint ptr %ns_sbsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv2, ptr %ns_sbsize, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %10)
  %cmp4 = icmp ugt i16 %10, 1024
  br i1 %cmp4, label %if.end.return_crit_edge, label %if.end7

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end7:                                          ; preds = %if.end
  %s_inode_size = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 30
  %12 = ptrtoint ptr %s_inode_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_inode_size, align 8
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv8 = zext i16 %14 to i32
  %ns_inode_size = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 51
  %15 = ptrtoint ptr %ns_inode_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv8, ptr %ns_inode_size, align 4
  %ns_blocksize = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 45
  %16 = ptrtoint ptr %ns_blocksize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ns_blocksize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv8)
  %cmp10 = icmp ult i32 %17, %conv8
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb13 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %18 = ptrtoint ptr %ns_sb13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ns_sb13, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %19, ptr noundef nonnull @.str.38, i32 noundef %conv8) #10
  br label %return

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %14)
  %cmp16 = icmp ult i16 %14, 128
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb19 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %20 = ptrtoint ptr %ns_sb19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ns_sb19, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %21, ptr noundef nonnull @.str.39, i32 noundef %conv8) #10
  br label %return

if.end22:                                         ; preds = %if.else
  %s_first_ino = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 29
  %22 = ptrtoint ptr %s_first_ino to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_first_ino, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %ns_first_ino = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 52
  %25 = ptrtoint ptr %ns_first_ino to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ns_first_ino, align 8
  %s_blocks_per_segment = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 11
  %26 = ptrtoint ptr %s_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocks_per_segment, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %29 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ns_blocks_per_segment, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %28)
  %cmp24 = icmp ult i32 %28, 16
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb27 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %30 = ptrtoint ptr %ns_sb27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ns_sb27, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %31, ptr noundef nonnull @.str.40, i32 noundef %28) #10
  br label %return

if.end29:                                         ; preds = %if.end22
  %s_first_data_block = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 10
  %32 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %s_first_data_block, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %conv30 = trunc i64 %34 to i32
  %ns_first_data_block = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  %35 = ptrtoint ptr %ns_first_data_block to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv30, ptr %ns_first_data_block, align 8
  %s_r_segments_percentage = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 12
  %36 = ptrtoint ptr %s_r_segments_percentage to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_r_segments_percentage, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %ns_r_segments_percentage = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 48
  %39 = ptrtoint ptr %ns_r_segments_percentage to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %ns_r_segments_percentage, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp32 = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %38)
  %cmp35 = icmp ugt i32 %38, 99
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp35
  br i1 %or.cond, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %ns_sb38 = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 2
  %40 = ptrtoint ptr %ns_sb38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ns_sb38, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %41, ptr noundef nonnull @.str.41, i32 noundef %38) #10
  br label %return

if.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %s_nsegments = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 8
  %42 = ptrtoint ptr %s_nsegments to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %s_nsegments, align 8
  %44 = tail call i64 @llvm.bswap.i64(i64 %43)
  %conv41 = trunc i64 %44 to i32
  %ns_nsegments.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 46
  %45 = ptrtoint ptr %ns_nsegments.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv41, ptr %ns_nsegments.i, align 8
  %mul.i.i = mul i32 %38, %conv41
  %sub.i.i = add i32 %mul.i.i, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %sub.i.i)
  %cmp.i.i = icmp ult i32 %sub.i.i, 800
  %div.i.i = udiv i32 %sub.i.i, 100
  %cond.i.i = select i1 %cmp.i.i, i32 8, i32 %div.i.i
  %ns_nrsvsegs.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 49
  %46 = ptrtoint ptr %ns_nrsvsegs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i.i, ptr %ns_nrsvsegs.i, align 4
  %s_crc_seed = getelementptr inbounds %struct.nilfs_super_block, ptr %sbp, i32 0, i32 5
  %47 = ptrtoint ptr %s_crc_seed to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_crc_seed, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %ns_crc_seed = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 53
  %50 = ptrtoint ptr %ns_crc_seed to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ns_crc_seed, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then37, %if.then26, %if.then18, %if.then12, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then12 ], [ -22, %if.then18 ], [ -22, %if.then26 ], [ -22, %if.then37 ], [ 0, %if.end40 ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sysfs_create_device_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_discard_segments(ptr nocapture noundef readonly %nilfs, ptr noundef readonly %segnump, i32 noundef %nsegs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_blocksize_bits = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 44
  %0 = ptrtoint ptr %ns_blocksize_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_blocksize_bits, align 8
  %shl = shl nuw i32 1, %1
  %ns_bdev = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 3
  %2 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns_bdev, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

entry.bdev_logical_block_size.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 37, i32 9
  %6 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.i = icmp eq i32 %7, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %7
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %entry.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %entry.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %div = udiv i32 %shl, %retval1.0.i.i
  %add.ptr = getelementptr i64, ptr %segnump, i32 %nsegs
  %cmp56 = icmp ugt ptr %add.ptr, %segnump
  br i1 %cmp56, label %for.body.lr.ph, label %bdev_logical_block_size.exit.cleanup_crit_edge

bdev_logical_block_size.exit.cleanup_crit_edge:   ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %bdev_logical_block_size.exit
  %ns_blocks_per_segment.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %ns_first_data_block.i = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 50
  %conv = zext i32 %div to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.060 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %sn.059 = phi ptr [ %segnump, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %nblocks.058 = phi i64 [ 0, %for.body.lr.ph ], [ %nblocks.1, %for.inc.for.body_crit_edge ]
  %start.057 = phi i64 [ 0, %for.body.lr.ph ], [ %start.1, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %sn.059 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sn.059, align 8
  %10 = ptrtoint ptr %ns_blocks_per_segment.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_blocks_per_segment.i, align 4
  %conv.i = zext i32 %11 to i64
  %mul.i = mul i64 %9, %conv.i
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp.i = icmp eq i64 %9, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.nilfs_get_segment_range.exit_crit_edge

for.body.nilfs_get_segment_range.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %nilfs_get_segment_range.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %ns_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ns_first_data_block.i, align 8
  %conv4.i = zext i32 %13 to i64
  br label %nilfs_get_segment_range.exit

nilfs_get_segment_range.exit:                     ; preds = %if.then.i, %for.body.nilfs_get_segment_range.exit_crit_edge
  %seg_start.0 = phi i64 [ %conv4.i, %if.then.i ], [ %mul.i, %for.body.nilfs_get_segment_range.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks.058)
  %tobool.not = icmp eq i64 %nblocks.058, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %nilfs_get_segment_range.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i64 %mul.i, %conv.i
  %add = sub i64 %sub, %seg_start.0
  br label %for.inc

if.else:                                          ; preds = %nilfs_get_segment_range.exit
  %add1 = add i64 %nblocks.058, %start.057
  call void @__sanitizer_cov_trace_cmp8(i64 %add1, i64 %seg_start.0)
  %cmp2 = icmp eq i64 %add1, %seg_start.0
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub4 = add i64 %nblocks.058, 1
  %add5 = add i64 %sub4, %sub.i
  %add6 = sub i64 %add5, %seg_start.0
  br label %for.inc

if.else7:                                         ; preds = %if.else
  %14 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ns_bdev, align 4
  %mul = mul i64 %start.057, %conv
  %mul10 = mul i64 %nblocks.058, %conv
  %call11 = tail call i32 @blkdev_issue_discard(ptr noundef %15, i64 noundef %mul, i64 noundef %mul10, i32 noundef 3136, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.else7.cleanup_crit_edge, label %if.else7.for.inc_crit_edge

if.else7.for.inc_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.else7.for.inc_crit_edge, %if.then3, %if.then
  %start.1 = phi i64 [ %start.057, %if.then3 ], [ %seg_start.0, %if.then ], [ %start.057, %if.else7.for.inc_crit_edge ]
  %nblocks.1 = phi i64 [ %add6, %if.then3 ], [ %add, %if.then ], [ 0, %if.else7.for.inc_crit_edge ]
  %ret.1 = phi i32 [ %ret.060, %if.then3 ], [ %ret.060, %if.then ], [ %call11, %if.else7.for.inc_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %sn.059, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nblocks.1)
  %tobool17.not = icmp eq i64 %nblocks.1, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ns_bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ns_bdev, align 4
  %conv20 = zext i32 %div to i64
  %mul21 = mul i64 %start.1, %conv20
  %mul23 = mul i64 %nblocks.1, %conv20
  %call24 = tail call i32 @blkdev_issue_discard(ptr noundef %17, i64 noundef %mul21, i64 noundef %mul23, i32 noundef 3136, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %for.end.cleanup_crit_edge, %if.else7.cleanup_crit_edge, %bdev_logical_block_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then18 ], [ %ret.1, %for.end.cleanup_crit_edge ], [ 0, %bdev_logical_block_size.exit.cleanup_crit_edge ], [ %call11, %if.else7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_count_free_blocks(ptr nocapture noundef readonly %nilfs, ptr nocapture noundef writeonly %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 29
  %0 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_dat, align 4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  tail call void @down_read(ptr noundef %3) #10
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %4 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ns_sufile, align 4
  %call1 = tail call i32 @nilfs_sufile_get_ncleansegs(ptr noundef %5) #10
  %6 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ns_dat, align 4
  %i_private.i9 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %i_private.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_private.i9, align 4
  tail call void @up_read(ptr noundef %9) #10
  %conv = zext i32 %call1 to i64
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %10 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_blocks_per_segment, align 4
  %conv5 = zext i32 %11 to i64
  %mul = mul nuw i64 %conv5, %conv
  %12 = ptrtoint ptr %nblocks to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %mul, ptr %nblocks, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_get_ncleansegs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_near_disk_full(ptr noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_sufile = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 31
  %0 = ptrtoint ptr %ns_sufile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns_sufile, align 4
  %call = tail call i32 @nilfs_sufile_get_ncleansegs(ptr noundef %1) #10
  %ns_ndirtyblks = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ns_ndirtyblks, i32 noundef 4) #10
  %2 = ptrtoint ptr %ns_ndirtyblks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ns_ndirtyblks, align 4
  %ns_blocks_per_segment = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 47
  %4 = ptrtoint ptr %ns_blocks_per_segment to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ns_blocks_per_segment, align 4
  %div = udiv i32 %3, %5
  %add = add i32 %div, 1
  %ns_nrsvsegs = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 49
  %6 = ptrtoint ptr %ns_nrsvsegs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_nrsvsegs, align 4
  %add2 = add i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add2)
  %cmp = icmp ule i32 %call, %add2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_lookup_root(ptr noundef %nilfs, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_cptree_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %ns_cptree_lock) #10
  %ns_cptree = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 32
  %0 = ptrtoint ptr %ns_cptree to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.021 = load ptr, ptr %ns_cptree, align 4
  %tobool.not22 = icmp eq ptr %n.021, null
  br i1 %tobool.not22, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %n.023 = phi ptr [ %n.0, %if.end7.while.body_crit_edge ], [ %n.021, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.023, i32 -8
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %cno)
  %cmp = icmp ugt i64 %2, %cno
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.023, i32 0, i32 2
  br label %if.end7

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %cno)
  %cmp3 = icmp ult i64 %2, %cno
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.023, i32 0, i32 1
  br label %if.end7

if.else5:                                         ; preds = %if.else
  %add.ptr.le = getelementptr i8, ptr %n.023, i32 -8
  %count = getelementptr i8, ptr %n.023, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else5.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !95

if.else5.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else5
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !91

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else5.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else5.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %if.then4, %if.then
  %n.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ]
  %5 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.le, %if.else.i.i.i.cleanup_crit_edge ], [ %add.ptr.le, %if.end15.sink.split.i.i.i ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %ns_cptree_lock) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_find_or_create_root(ptr noundef %nilfs, i64 noundef %cno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nilfs_lookup_root(ptr noundef %nilfs, i64 noundef %cno)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 240) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ns_cptree_lock = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 33
  tail call void @_raw_spin_lock(ptr noundef %ns_cptree_lock) #10
  %ns_cptree = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 32
  %1 = ptrtoint ptr %ns_cptree to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ns_cptree, align 4
  %tobool5.not66 = icmp eq ptr %2, null
  br i1 %tobool5.not66, label %if.end4.while.end_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  br label %while.body

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %if.end4.while.body_crit_edge
  %3 = phi ptr [ %9, %if.end14.while.body_crit_edge ], [ %2, %if.end4.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %cno)
  %cmp = icmp ugt i64 %5, %cno
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 2
  br label %if.end14

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %cno)
  %cmp9 = icmp ult i64 %5, %cno
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %3, i32 0, i32 1
  br label %if.end14

if.else11:                                        ; preds = %if.else
  %add.ptr.le = getelementptr i8, ptr %3, i32 -8
  %count = getelementptr i8, ptr %3, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #10, !srcloc !94
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else11.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !95

if.else11.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else11
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !91

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else11.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else11.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %ns_cptree_lock) #10
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then10, %if.then7
  %p.1 = phi ptr [ %rb_left, %if.then7 ], [ %rb_right, %if.then10 ]
  %8 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.1, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %while.cond.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast.le = ptrtoint ptr %3 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end4.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end4.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %ns_cptree, %if.end4.while.end_crit_edge ]
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %cno, ptr %call7.i.i, align 8
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ifile to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ifile, align 4
  %nilfs16 = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %nilfs16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %nilfs, ptr %nilfs16, align 8
  %count17 = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count17, i32 noundef 4) #10
  %13 = ptrtoint ptr %count17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %count17, align 4
  %inodes_count = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inodes_count, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %inodes_count, i64 noundef 0) #10
  %blocks_count = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 6
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %blocks_count, i32 noundef 8) #10
  tail call void @generic_atomic64_set(ptr noundef %blocks_count, i64 noundef 0) #10
  %rb_node18 = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %rb_node18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %parent.0.lcssa, ptr %rb_node18, align 8
  %rb_right.i = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.nilfs_root, ptr %call7.i.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rb_left.i, align 8
  %17 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rb_node18, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node18, ptr noundef %ns_cptree) #10
  tail call void @_raw_spin_unlock(ptr noundef %ns_cptree_lock) #10
  %call22 = tail call i32 @nilfs_sysfs_create_snapshot_group(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %while.end.cleanup_crit_edge, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %refcount_inc.exit
  %retval.0.ph = phi ptr [ %add.ptr.le, %refcount_inc.exit ], [ null, %while.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %while.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sysfs_create_snapshot_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_put_root(ptr noundef %root) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nilfs1 = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 3
  %0 = ptrtoint ptr %nilfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nilfs1, align 8
  %count = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 2
  %ns_cptree_lock = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 33
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %count, ptr noundef %ns_cptree_lock) #10
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rb_node = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 1
  %ns_cptree = getelementptr inbounds %struct.the_nilfs, ptr %1, i32 0, i32 32
  tail call void @rb_erase(ptr noundef %rb_node, ptr noundef %ns_cptree) #10
  tail call void @_raw_spin_unlock(ptr noundef %ns_cptree_lock) #10
  tail call void @nilfs_sysfs_delete_snapshot_group(ptr noundef %root) #10
  %ifile = getelementptr inbounds %struct.nilfs_root, ptr %root, i32 0, i32 4
  %2 = ptrtoint ptr %ifile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifile, align 4
  tail call void @iput(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %root) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_sysfs_delete_snapshot_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_read_super_root_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_cpfile_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sufile_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_dispose_segment_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_read_super_block(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @alloc_nilfs.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/the_nilfs.c", i32 66, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @alloc_nilfs.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/the_nilfs.c", i32 67, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @alloc_nilfs.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/nilfs2/the_nilfs.c", i32 70, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @alloc_nilfs.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../fs/nilfs2/the_nilfs.c", i32 71, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @alloc_nilfs.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../fs/nilfs2/the_nilfs.c", i32 72, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @alloc_nilfs.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../fs/nilfs2/the_nilfs.c", i32 74, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @alloc_nilfs.__key.11, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/nilfs2/the_nilfs.c", i32 75, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/nilfs2/the_nilfs.c", i32 87, i32 2}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/nilfs2/the_nilfs.c", i32 213, i32 3}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/nilfs2/the_nilfs.c", i32 215, i32 4}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/nilfs2/the_nilfs.c", i32 217, i32 4}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nilfs2/the_nilfs.c", i32 233, i32 4}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nilfs2/the_nilfs.c", i32 237, i32 3}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nilfs2/the_nilfs.c", i32 250, i32 4}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nilfs2/the_nilfs.c", i32 271, i32 3}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/nilfs2/the_nilfs.c", i32 282, i32 4}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/nilfs2/the_nilfs.c", i32 289, i32 4}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/nilfs2/the_nilfs.c", i32 296, i32 4}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/nilfs2/the_nilfs.c", i32 303, i32 3}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/nilfs2/the_nilfs.c", i32 319, i32 3}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/nilfs2/the_nilfs.c", i32 324, i32 2}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/nilfs2/the_nilfs.c", i32 332, i32 2}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nilfs2/the_nilfs.c", i32 573, i32 3}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/nilfs2/the_nilfs.c", i32 592, i32 3}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/nilfs2/the_nilfs.c", i32 602, i32 4}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/nilfs2/the_nilfs.c", i32 186, i32 3}
!59 = !{ptr @nilfs_valid_sb.sum, !60, !"sum", i1 false, i1 false}
!60 = !{!"../fs/nilfs2/the_nilfs.c", i32 428, i32 23}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/nilfs2/the_nilfs.c", i32 501, i32 4}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/nilfs2/the_nilfs.c", i32 504, i32 3}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/nilfs2/the_nilfs.c", i32 508, i32 3}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/nilfs2/the_nilfs.c", i32 532, i32 3}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/nilfs2/the_nilfs.c", i32 537, i32 3}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/nilfs2/the_nilfs.c", i32 379, i32 3}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/nilfs2/the_nilfs.c", i32 392, i32 3}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/nilfs2/the_nilfs.c", i32 396, i32 3}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/nilfs2/the_nilfs.c", i32 405, i32 3}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/nilfs2/the_nilfs.c", i32 415, i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i8 0, i8 2}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{!"auto-init"}
!93 = !{i64 2148534666, i64 2148534946, i64 2148535280, i64 2148535614}
!94 = !{i64 2148686411, i64 2148686443, i64 2148686472, i64 2148686506, i64 2148686537, i64 2148686560}
!95 = !{!"branch_weights", i32 1, i32 2000}
