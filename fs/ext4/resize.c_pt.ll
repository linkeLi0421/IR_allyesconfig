; ModuleID = '/llk/IR_all_yes/fs/ext4/resize.c_pt.bc'
source_filename = "../fs/ext4/resize.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ext4_rcu_ptr = type { %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ext4_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i64, %struct.atomic64_t, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, ptr, %struct.kobject, %struct.completion, ptr, ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.ext4_orphan_info, i32, i32, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.atomic_t, %struct.rb_root, %struct.rwlock_t, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], [4 x %struct.atomic64_t], %struct.atomic_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, i32, i64, i32, i32, ptr, i32, ptr, %struct.timer_list, ptr, i32, ptr, i32, ptr, i32, %struct.shrinker, %struct.list_head, i32, %struct.ext4_es_stats, ptr, ptr, [120 x i8], %struct.spinlock, [1 x %struct.ext4_journal_trigger], %struct.ratelimit_state, %struct.ratelimit_state, %struct.ratelimit_state, %struct.atomic_t, %struct.atomic_t, %struct.fscrypt_dummy_policy, %struct.percpu_rw_semaphore, ptr, i64, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, i64, ptr, i64, %struct.work_struct, %struct.atomic_t, [2 x %struct.list_head], [2 x %struct.list_head], i32, %struct.spinlock, ptr, %struct.ext4_fc_stats, i32, i32, %struct.ext4_fc_replay_state, [8 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ext4_orphan_info = type { i32, i32, ptr }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ext4_es_stats = type { i32, %struct.percpu_counter, %struct.percpu_counter, i64, i64, %struct.percpu_counter, %struct.percpu_counter }
%struct.ext4_journal_trigger = type { %struct.jbd2_buffer_trigger_type, ptr }
%struct.jbd2_buffer_trigger_type = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.fscrypt_dummy_policy = type { ptr }
%struct.ext4_fc_stats = type { [10 x i32], i32, i32, i32, i32, i32, i64 }
%struct.ext4_fc_replay_state = type { i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.ext4_new_flex_group_data = type { ptr, ptr, i32 }
%struct.ext4_new_group_data = type { i32, i64, i64, i64, i32, i16, i16, i32 }
%struct.ext4_iloc = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
%struct.ext4_group_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, i32 }
%struct.flex_groups = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t }

@__func__.ext4_resize_begin = private unnamed_addr constant [18 x i8] c"ext4_resize_begin\00", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"won't resize using backup superblock at %llu\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"There are errors in the filesystem, so online resizing is not allowed\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Online resizing not supported with sparse_super2\00", [47 x i8] zeroinitializer }, align 32
@__func__.ext4_group_add = private unnamed_addr constant [15 x i8] c"ext4_group_add\00", align 1
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't resize non-sparse filesystem further\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blocks_count overflow\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"inodes_count overflow\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No reserved GDT blocks, can't resize\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error opening resize inode\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"extending last group from %llu to %llu blocks\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"filesystem too large to resize to %llu blocks safely\00", [43 x i8] zeroinitializer }, align 32
@__func__.ext4_group_extend = private unnamed_addr constant [18 x i8] c"ext4_group_extend\00", align 1
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't shrink FS - resize aborted\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"need to use ext2online to resize further\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"will only finish group (%llu blocks, %u new)\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't read last block, resize aborted\00", [58 x i8] zeroinitializer }, align 32
@__func__.ext4_resize_fs = private unnamed_addr constant [15 x i8] c"ext4_resize_fs\00", align 1
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"resizing filesystem from %llu to %llu blocks\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"resize would cause inodes_count overflow\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"resize_inode and meta_bg enabled simultaneously\00", [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"resized to %llu blocks\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error (%d) occurred during file system resize\00", [50 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"resized filesystem to %llu\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.verify_group_input = private unnamed_addr constant [19 x i8] c"verify_group_input\00", align 1
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot add at group %u (only %u groups)\00", [56 x i8] zeroinitializer }, align 32
@verify_group_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.verify_group_input, ptr @.str.25, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017EXT4-fs: adding %s group %u: %u blocks (%d free, %u reserved)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ext4/resize.c\00", [47 x i8] zeroinitializer }, align 32
@verify_group_input._entry_ptr = internal global ptr @verify_group_input._entry, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-super\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Last group not full\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reserved blocks too high (%u)\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad blocks count %u\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot read last block (%llu)\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Block bitmap not in group (block %llu)\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Inode bitmap not in group (block %llu)\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Inode table not in group (blocks %llu-%llu)\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Block bitmap same as inode bitmap (%llu)\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Block bitmap (%llu) in inode table (%llu-%llu)\00", [49 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Inode bitmap (%llu) in inode table (%llu-%llu)\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Block bitmap (%llu) in GDT table (%llu-%llu)\00", [51 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Inode bitmap (%llu) in GDT table (%llu-%llu)\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Inode table (%llu-%llu) overlaps GDT table (%llu-%llu)\00", [41 x i8] zeroinitializer }, align 32
@__func__.ext4_flex_group_add = private unnamed_addr constant [20 x i8] c"ext4_flex_group_add\00", align 1
@ext4_flex_group_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__func__.setup_new_flex_group_blocks = private unnamed_addr constant [28 x i8] c"setup_new_flex_group_blocks\00", align 1
@setup_new_flex_group_blocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.bclean = private unnamed_addr constant [7 x i8] c"bclean\00", align 1
@__func__.set_flexbg_block_bitmap = private unnamed_addr constant [24 x i8] c"set_flexbg_block_bitmap\00", align 1
@ext4_add_new_descs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_add_new_descs = private unnamed_addr constant [19 x i8] c"ext4_add_new_descs\00", align 1
@__func__.reserve_backup_gdb = private unnamed_addr constant [19 x i8] c"reserve_backup_gdb\00", align 1
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reserved block %llu not at offset %ld\00", [58 x i8] zeroinitializer }, align 32
@__func__.verify_reserved_gdb = private unnamed_addr constant [20 x i8] c"verify_reserved_gdb\00", align 1
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reserved GDT %llu missing grp %d (%llu)\00", [56 x i8] zeroinitializer }, align 32
@__func__.add_new_gdb_meta_bg = private unnamed_addr constant [20 x i8] c"add_new_gdb_meta_bg\00", align 1
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not enough memory for %lu groups\00", [63 x i8] zeroinitializer }, align 32
@add_new_gdb_meta_bg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@add_new_gdb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.25, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017EXT4-fs: ext4_add_new_gdb: adding group block %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_new_gdb\00", [20 x i8] zeroinitializer }, align 32
@add_new_gdb._entry_ptr = internal global ptr @add_new_gdb._entry, section ".printk_index", align 4
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"new group %u GDT block %llu not reserved\00", [55 x i8] zeroinitializer }, align 32
@add_new_gdb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@ext4_setup_new_descs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ext4_setup_new_descs = private unnamed_addr constant [21 x i8] c"ext4_setup_new_descs\00", align 1
@ext4_has_metadata_csum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ext4/ext4.h\00", [17 x i8] zeroinitializer }, align 32
@ext4_update_super.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ext4_update_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.25, i32 1480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017EXT4-fs: added group %u:%llu blocks(%llu free %llu reserved)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ext4_update_super\00", [46 x i8] zeroinitializer }, align 32
@ext4_update_super._entry_ptr = internal global ptr @ext4_update_super._entry, section ".printk_index", align 4
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__func__.update_backups = private unnamed_addr constant [15 x i8] c"update_backups\00", align 1
@.str.52 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"can't update backup for group %u (err %d), forcing fsck on next reboot\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.ext4_group_extend_no_check = private unnamed_addr constant [27 x i8] c"ext4_group_extend_no_check\00", align 1
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error %d on journal start\00", [38 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error %d on journal write access\00", [63 x i8] zeroinitializer }, align 32
@ext4_group_extend_no_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.ext4_group_extend_no_check, ptr @.str.25, i32 1771, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017EXT4-fs: extended group to %llu blocks\0A\00", [54 x i8] zeroinitializer }, align 32
@ext4_group_extend_no_check._entry_ptr = internal global ptr @ext4_group_extend_no_check._entry, section ".printk_index", align 4
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Converting file system to meta_bg\00", [62 x i8] zeroinitializer }, align 32
@__func__.ext4_convert_meta_bg = private unnamed_addr constant [21 x i8] c"ext4_convert_meta_bg\00", align 1
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unexpected non-zero s_reserved_gdt_blocks\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"corrupted/inconsistent resize inode\00", [60 x i8] zeroinitializer }, align 32
@ext4_alloc_group_tables._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.25, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017EXT4-fs: adding a flex group with %d groups, flexbg size is %d:\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ext4_alloc_group_tables\00", [40 x i8] zeroinitializer }, align 32
@ext4_alloc_group_tables._entry_ptr = internal global ptr @ext4_alloc_group_tables._entry, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 62, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 72, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 78, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1669, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1675, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1681, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1688, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1694, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1801, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1809, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1816, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1824, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1839, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1845, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1983, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1998, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2010, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2105, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2135, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 2137, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 136, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 147, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 155, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 157, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 160, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 165, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 168, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 171, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 175, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 178, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 181, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 186, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 191, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 195, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 200, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1565, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1035, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 779, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 961, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 823, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 847, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 366, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [18 x i8] c"../fs/ext4/ext4.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 3288, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1478, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1204, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 695, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 723, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1737, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1745, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1770, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1875, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1878, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1944, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [20 x i8] c"../fs/ext4/resize.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 385, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @add_new_gdb._entry, ptr @add_new_gdb._entry_ptr, ptr @ext4_alloc_group_tables._entry, ptr @ext4_alloc_group_tables._entry_ptr, ptr @ext4_group_extend_no_check._entry, ptr @ext4_group_extend_no_check._entry_ptr, ptr @ext4_update_super._entry, ptr @ext4_update_super._entry_ptr, ptr @verify_group_input._entry, ptr @verify_group_input._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verify_group_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_new_gdb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_update_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_group_extend_no_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_alloc_group_tables._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_kvfree_array_rcu(ptr noundef %to_free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ptr1 = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ptr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_free, ptr %ptr1, align 8
  tail call void @call_rcu(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ext4_rcu_ptr_callback) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @synchronize_rcu() #11
  tail call void @kvfree(ptr noundef %to_free) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext4_rcu_ptr_callback(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr1 = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr1, align 4
  tail call void @kvfree(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %head) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_resize_begin(ptr noundef %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call zeroext i1 @capable(i32 noundef 24) #11
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_sbh, align 64
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %b_blocknr, align 8
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %5, %sh_prom
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_es, align 4
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_first_data_block, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %conv = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp.not = icmp eq i64 %shr, %conv
  br i1 %cmp.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_sbh6 = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 14
  %15 = ptrtoint ptr %s_sbh6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_sbh6, align 64
  %b_blocknr7 = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %b_blocknr7 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %b_blocknr7, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_begin, i32 noundef 63, ptr noundef nonnull @.str, i64 noundef %18) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 25
  %19 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %s_mount_state, align 8
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not = icmp eq i16 %21, 0
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_begin, i32 noundef 73, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %11, i32 0, i32 28
  %22 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %s_ext4_flags = getelementptr inbounds %struct.ext4_sb_info, ptr %9, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_ext4_flags, i32 noundef 4) #11
  %24 = ptrtoint ptr %s_ext4_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %s_ext4_flags, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.end15.test_and_set_bit_lock.exit.thread_crit_edge

if.end15.test_and_set_bit_lock.exit.thread_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %test_and_set_bit_lock.exit.thread

test_and_set_bit_lock.exit:                       ; preds = %if.end15
  tail call void @llvm.prefetch.p0(ptr %s_ext4_flags, i32 1, i32 3, i32 1) #11
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_ext4_flags, ptr %s_ext4_flags, i32 1, ptr elementtype(i32) %s_ext4_flags) #11, !srcloc !179
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %27 = and i32 %asmresult.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %phi.cmp.i.not = icmp eq i32 %27, 0
  br i1 %phi.cmp.i.not, label %test_and_set_bit_lock.exit.cleanup_crit_edge, label %test_and_set_bit_lock.exit.test_and_set_bit_lock.exit.thread_crit_edge

test_and_set_bit_lock.exit.test_and_set_bit_lock.exit.thread_crit_edge: ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %test_and_set_bit_lock.exit.thread

test_and_set_bit_lock.exit.cleanup_crit_edge:     ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

test_and_set_bit_lock.exit.thread:                ; preds = %test_and_set_bit_lock.exit.test_and_set_bit_lock.exit.thread_crit_edge, %if.end15.test_and_set_bit_lock.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %test_and_set_bit_lock.exit.thread, %test_and_set_bit_lock.exit.cleanup_crit_edge, %if.then14, %if.then11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then4 ], [ -1, %if.then11 ], [ -95, %if.then14 ], [ -1, %entry.cleanup_crit_edge ], [ -16, %test_and_set_bit_lock.exit.thread ], [ 0, %test_and_set_bit_lock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_warning(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_resize_end(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_ext4_flags = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 48
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_ext4_flags, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %s_ext4_flags, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %s_ext4_flags, ptr %s_ext4_flags, i32 1, ptr elementtype(i32) %s_ext4_flags) #11, !srcloc !182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !183
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_list_backups(ptr nocapture noundef readonly %sb, ptr nocapture noundef %three, ptr nocapture noundef %five, ptr nocapture noundef %seven) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end3, label %do.bodythread-pre-split

do.bodythread-pre-split:                          ; preds = %entry
  %6 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %three, align 4
  %umax = call i32 @llvm.umax.i32(i32 %.pr, i32 3)
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %do.bodythread-pre-split
  %7 = phi i32 [ %.pr, %do.bodythread-pre-split ], [ %add, %if.end.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %umax)
  %exitcond = icmp eq i32 %7, %umax
  br i1 %exitcond, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %do.body
  %sub = add nsw i32 %7, -1
  %arrayidx = getelementptr %struct.ext4_super_block, ptr %3, i32 0, i32 84, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, 1
  %10 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %three, align 4
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i32 @llvm.bswap.i32(i32 %9)
  br label %cleanup

if.end3:                                          ; preds = %entry
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 30
  %12 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i35 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %cmp.i36.not = icmp eq i32 %and.i35, 0
  br i1 %cmp.i36.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %three, align 4
  %add6 = add i32 %15, 1
  store i32 %add6, ptr %three, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %five to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %five, align 4
  %18 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %three, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8 = icmp ult i32 %17, %19
  %spec.select = select i1 %cmp8, ptr %five, ptr %three
  %spec.select32 = select i1 %cmp8, i32 5, i32 3
  %20 = ptrtoint ptr %seven to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seven, align 4
  %22 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spec.select, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp11 = icmp ult i32 %21, %23
  %min.1 = select i1 %cmp11, ptr %seven, ptr %spec.select
  %mult.1 = select i1 %cmp11, i32 7, i32 %spec.select32
  %24 = ptrtoint ptr %min.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %min.1, align 4
  %mul = mul i32 %mult.1, %25
  store i32 %mul, ptr %min.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ %25, %if.end7 ], [ %15, %if.then5 ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_group_add(ptr noundef %sb, ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  %flex_gd = alloca %struct.ext4_new_flex_group_data, align 4
  %bg_flags = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %flex_gd) #11
  %0 = ptrtoint ptr %flex_gd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %flex_gd, align 4, !annotation !184
  %1 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !184
  %3 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 2
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_es, align 4
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input, align 8
  %call1 = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_reserved_gdt_blocks = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 37
  %10 = ptrtoint ptr %s_reserved_gdt_blocks to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_reserved_gdt_blocks, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bg_flags) #11
  %13 = ptrtoint ptr %bg_flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %bg_flags, align 2
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %input, align 8
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_desc_per_block, align 4
  %rem = urem i32 %15, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_es.i, align 4
  %s_feature_ro_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %21, i32 0, i32 30
  %22 = ptrtoint ptr %s_feature_ro_compat.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_ro_compat.i, align 4
  %and.i = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1669, ptr noundef nonnull @.str.4) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 29
  %24 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.i = icmp sgt i32 %25, -1
  br i1 %tobool.not.i, label %if.end.ext4_blocks_count.exit_crit_edge, label %cond.true.i

if.end.ext4_blocks_count.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %26 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_blocks_count_hi.i, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %conv.i = zext i32 %28 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %if.end.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %if.end.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocks_count_lo.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %conv1.i = zext i32 %31 to i64
  %or.i = or i64 %cond.i, %conv1.i
  %blocks_count = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 4
  %32 = ptrtoint ptr %blocks_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocks_count, align 8
  %conv7 = zext i32 %33 to i64
  %add = add i64 %or.i, %conv7
  br i1 %tobool.not.i, label %ext4_blocks_count.exit.ext4_blocks_count.exit105_crit_edge, label %cond.true.i100

ext4_blocks_count.exit.ext4_blocks_count.exit105_crit_edge: ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit105

cond.true.i100:                                   ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i97 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 50
  %34 = ptrtoint ptr %s_blocks_count_hi.i97 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %s_blocks_count_hi.i97, align 8
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %conv.i98 = zext i32 %36 to i64
  %shl.i99 = shl nuw i64 %conv.i98, 32
  br label %ext4_blocks_count.exit105

ext4_blocks_count.exit105:                        ; preds = %cond.true.i100, %ext4_blocks_count.exit.ext4_blocks_count.exit105_crit_edge
  %cond.i101 = phi i64 [ %shl.i99, %cond.true.i100 ], [ 0, %ext4_blocks_count.exit.ext4_blocks_count.exit105_crit_edge ]
  %or.i104 = or i64 %cond.i101, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %or.i104)
  %cmp9 = icmp ult i64 %add, %or.i104
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %ext4_blocks_count.exit105
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1675, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end12:                                         ; preds = %ext4_blocks_count.exit105
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %7, align 8
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 4
  %39 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_inodes_per_group, align 16
  %41 = xor i32 %38, -1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp16 = icmp ult i32 %42, %40
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1681, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool20.not = icmp ne i32 %cond, 0
  %brmerge = select i1 %tobool20.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.then23, label %if.end19.if.end35_crit_edge

if.end19.if.end35_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then23:                                        ; preds = %if.end19
  %s_es.i108 = getelementptr inbounds %struct.ext4_sb_info, ptr %17, i32 0, i32 15
  %43 = ptrtoint ptr %s_es.i108 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_es.i108, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %44, i32 0, i32 28
  %45 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_feature_compat.i, align 4
  %and.i109 = and i32 %46, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %cmp.i110.not = icmp eq i32 %and.i109, 0
  br i1 %cmp.i110.not, label %if.then23.if.then28_crit_edge, label %lor.lhs.false25

if.then23.if.then28_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

lor.lhs.false25:                                  ; preds = %if.then23
  %s_reserved_gdt_blocks26 = getelementptr inbounds %struct.ext4_super_block, ptr %7, i32 0, i32 37
  %47 = ptrtoint ptr %s_reserved_gdt_blocks26 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %s_reserved_gdt_blocks26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool27.not = icmp eq i16 %48, 0
  br i1 %tobool27.not, label %lor.lhs.false25.if.then28_crit_edge, label %if.end29

lor.lhs.false25.if.then28_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false25.if.then28_crit_edge, %if.then23.if.then28_crit_edge
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1689, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false25
  %call30 = tail call ptr @__ext4_iget(ptr noundef %sb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1692) #11
  %cmp.i111 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then32, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_add, i32 noundef 1694, ptr noundef nonnull @.str.8) #11
  %49 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end29.if.end35_crit_edge, %if.end19.if.end35_crit_edge
  %inode.0 = phi ptr [ %call30, %if.end29.if.end35_crit_edge ], [ null, %if.end19.if.end35_crit_edge ]
  %50 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i113 = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %s_es.i113 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_es.i113, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 29
  %54 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_feature_incompat.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %tobool.not.i.i = icmp sgt i32 %55, -1
  br i1 %tobool.not.i.i, label %if.end35.ext4_blocks_count.exit.i_crit_edge, label %cond.true.i.i

if.end35.ext4_blocks_count.exit.i_crit_edge:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit.i

cond.true.i.i:                                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 50
  %56 = ptrtoint ptr %s_blocks_count_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocks_count_hi.i.i, align 8
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  %conv.i.i = zext i32 %58 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %ext4_blocks_count.exit.i

ext4_blocks_count.exit.i:                         ; preds = %cond.true.i.i, %if.end35.ext4_blocks_count.exit.i_crit_edge
  %cond.i.i = phi i64 [ %shl.i.i, %cond.true.i.i ], [ 0, %if.end35.ext4_blocks_count.exit.i_crit_edge ]
  %s_blocks_count_lo.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %53, i32 0, i32 1
  %59 = ptrtoint ptr %s_blocks_count_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocks_count_lo.i.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #11
  %conv1.i.i = zext i32 %61 to i64
  %or.i.i = or i64 %cond.i.i, %conv1.i.i
  %62 = ptrtoint ptr %blocks_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %blocks_count, align 8
  %conv.i114 = zext i32 %63 to i64
  %add.i = add i64 %or.i.i, %conv.i114
  %64 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %input, align 8
  %inode_table.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 3
  %66 = ptrtoint ptr %inode_table.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %inode_table.i, align 8
  %s_itb_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 5
  %68 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_itb_per_group.i, align 4
  %conv3.i = zext i32 %69 to i64
  %add4.i = add i64 %67, %conv3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #11
  %70 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %offset.i, align 4, !annotation !184
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %51, i32 0, i32 8
  %71 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_groups_count.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %72)
  %cmp.not.i = icmp eq i32 %65, %72
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %ext4_blocks_count.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 137, ptr noundef nonnull @.str.23, i32 noundef %65, i32 noundef %72) #11
  br label %verify_group_input.exit.thread

if.end.i:                                         ; preds = %ext4_blocks_count.exit.i
  %call.i.i = tail call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %65) #11
  %call1.i.i = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %65) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i305.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i305.i, label %if.end.i.ext4_group_overhead_blocks.exit.i_crit_edge, label %if.then.i.i

if.end.i.ext4_group_overhead_blocks.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_group_overhead_blocks.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %74, i32 0, i32 15
  %75 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_es.i.i, align 4
  %s_reserved_gdt_blocks.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %76, i32 0, i32 37
  %77 = ptrtoint ptr %s_reserved_gdt_blocks.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %s_reserved_gdt_blocks.i.i, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #11
  %conv.i306.i = zext i16 %79 to i32
  %add.i.i = add i32 %call.i.i, 1
  %add3.i.i = add i32 %add.i.i, %conv.i306.i
  br label %ext4_group_overhead_blocks.exit.i

ext4_group_overhead_blocks.exit.i:                ; preds = %if.then.i.i, %if.end.i.ext4_group_overhead_blocks.exit.i_crit_edge
  %overhead.0.i.i = phi i32 [ %add3.i.i, %if.then.i.i ], [ %call.i.i, %if.end.i.ext4_group_overhead_blocks.exit.i_crit_edge ]
  %conv9.i = zext i32 %overhead.0.i.i to i64
  %add10.i = add i64 %or.i.i, %conv9.i
  %80 = ptrtoint ptr %blocks_count to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blocks_count, align 8
  %82 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_itb_per_group.i, align 4
  %84 = add i32 %81, -2
  %85 = add i32 %overhead.0.i.i, %83
  %sub14.i = sub i32 %84, %85
  %free_clusters_count.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 7
  %86 = ptrtoint ptr %free_clusters_count.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub14.i, ptr %free_clusters_count.i, align 8
  %87 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %88, i32 0, i32 17
  %89 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %s_mount_opt.i, align 4
  %and.i115 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %tobool.not.i116 = icmp eq i32 %and.i115, 0
  br i1 %tobool.not.i116, label %ext4_group_overhead_blocks.exit.i.if.end24.i_crit_edge, label %do.end.i

ext4_group_overhead_blocks.exit.i.if.end24.i_crit_edge: ; preds = %ext4_group_overhead_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

do.end.i:                                         ; preds = %ext4_group_overhead_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %input, align 8
  %call18.i = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %92) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  %cond.i117 = select i1 %tobool19.not.i, ptr @.str.27, ptr @.str.26
  %93 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %input, align 8
  %95 = ptrtoint ptr %blocks_count to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %blocks_count, align 8
  %reserved_blocks.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 5
  %97 = ptrtoint ptr %reserved_blocks.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %reserved_blocks.i, align 4
  %conv22.i = zext i16 %98 to i32
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %cond.i117, i32 noundef %94, i32 noundef %96, i32 noundef %sub14.i, i32 noundef %conv22.i) #15
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end.i, %ext4_group_overhead_blocks.exit.i.if.end24.i_crit_edge
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %or.i.i, ptr noundef null, ptr noundef nonnull %offset.i) #11
  %99 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp25.not.i = icmp eq i32 %100, 0
  br i1 %cmp25.not.i, label %if.else.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 155, ptr noundef nonnull @.str.28) #11
  br label %verify_group_input.exit.thread

if.else.i:                                        ; preds = %if.end24.i
  %reserved_blocks28.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 5
  %101 = ptrtoint ptr %reserved_blocks28.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %reserved_blocks28.i, align 4
  %conv29.i = zext i16 %102 to i32
  %103 = ptrtoint ptr %blocks_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %blocks_count, align 8
  %div.i = udiv i32 %104, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv29.i)
  %cmp31.i = icmp ult i32 %div.i, %conv29.i
  br i1 %cmp31.i, label %if.then33.i, label %if.else36.i

if.then33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 158, ptr noundef nonnull @.str.29, i32 noundef %conv29.i) #11
  br label %verify_group_input.exit.thread

if.else36.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i)
  %cmp37.i = icmp slt i32 %sub14.i, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.else41.i

if.then39.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 161, ptr noundef nonnull @.str.30, i32 noundef %104) #11
  br label %verify_group_input.exit.thread

if.else41.i:                                      ; preds = %if.else36.i
  %sub42.i = add i64 %add.i, -1
  %call43.i = call ptr @ext4_sb_bread(ptr noundef %sb, i64 noundef %sub42.i, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then45.i, label %if.else48.i

if.then45.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %call43.i to i32
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 166, ptr noundef nonnull @.str.31, i64 noundef %sub42.i) #11
  br label %verify_group_input.exit

if.else48.i:                                      ; preds = %if.else41.i
  %block_bitmap.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 1
  %106 = ptrtoint ptr %block_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %block_bitmap.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %or.i.i)
  %cmp49.i = icmp uge i64 %107, %or.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %add.i)
  %cmp52.not.i = icmp ult i64 %107, %add.i
  %or.cond.i = select i1 %cmp49.i, i1 %cmp52.not.i, i1 false
  br i1 %or.cond.i, label %if.else56.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 169, ptr noundef nonnull @.str.32, i64 noundef %107) #11
  br label %if.end171.i

if.else56.i:                                      ; preds = %if.else48.i
  %inode_bitmap.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %input, i32 0, i32 2
  %108 = ptrtoint ptr %inode_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %inode_bitmap.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %or.i.i)
  %cmp57.i = icmp uge i64 %109, %or.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %add.i)
  %cmp61.not.i = icmp ult i64 %109, %add.i
  %or.cond296.i = select i1 %cmp57.i, i1 %cmp61.not.i, i1 false
  br i1 %or.cond296.i, label %if.else65.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 172, ptr noundef nonnull @.str.33, i64 noundef %109) #11
  br label %if.end171.i

if.else65.i:                                      ; preds = %if.else56.i
  %110 = ptrtoint ptr %inode_table.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %inode_table.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %or.i.i)
  %cmp67.i = icmp uge i64 %111, %or.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %add.i)
  %cmp71.not.i = icmp ult i64 %111, %add.i
  %or.cond297.i = select i1 %cmp67.i, i1 %cmp71.not.i, i1 false
  %sub74.i = add i64 %add4.i, -1
  br i1 %or.cond297.i, label %lor.lhs.false73.i, label %if.else65.i.if.then81.i_crit_edge

if.else65.i.if.then81.i_crit_edge:                ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81.i

lor.lhs.false73.i:                                ; preds = %if.else65.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub74.i, i64 %or.i.i)
  %cmp75.i = icmp uge i64 %sub74.i, %or.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub74.i, i64 %add.i)
  %cmp79.not.i = icmp ult i64 %sub74.i, %add.i
  %or.cond298.i = select i1 %cmp75.i, i1 %cmp79.not.i, i1 false
  br i1 %or.cond298.i, label %if.else84.i, label %lor.lhs.false73.i.if.then81.i_crit_edge

lor.lhs.false73.i.if.then81.i_crit_edge:          ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then81.i

if.then81.i:                                      ; preds = %lor.lhs.false73.i.if.then81.i_crit_edge, %if.else65.i.if.then81.i_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 176, ptr noundef nonnull @.str.34, i64 noundef %111, i64 noundef %sub74.i) #11
  br label %if.end171.i

if.else84.i:                                      ; preds = %lor.lhs.false73.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %107)
  %cmp87.i = icmp eq i64 %109, %107
  br i1 %cmp87.i, label %if.then89.i, label %if.else91.i

if.then89.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 179, ptr noundef nonnull @.str.35, i64 noundef %107) #11
  br label %if.end171.i

if.else91.i:                                      ; preds = %if.else84.i
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %111)
  %cmp94.not.i = icmp uge i64 %107, %111
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %add4.i)
  %cmp97.i = icmp ult i64 %107, %add4.i
  %or.cond299.i = select i1 %cmp94.not.i, i1 %cmp97.i, i1 false
  br i1 %or.cond299.i, label %if.then99.i, label %if.else103.i

if.then99.i:                                      ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 184, ptr noundef nonnull @.str.36, i64 noundef %107, i64 noundef %111, i64 noundef %sub74.i) #11
  br label %if.end171.i

if.else103.i:                                     ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %111)
  %cmp106.not.i = icmp uge i64 %109, %111
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %add4.i)
  %cmp110.i = icmp ult i64 %109, %add4.i
  %or.cond300.i = select i1 %cmp106.not.i, i1 %cmp110.i, i1 false
  br i1 %or.cond300.i, label %if.then112.i, label %if.else116.i

if.then112.i:                                     ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 189, ptr noundef nonnull @.str.37, i64 noundef %109, i64 noundef %111, i64 noundef %sub74.i) #11
  br label %if.end171.i

if.else116.i:                                     ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %add10.i)
  %cmp122.i = icmp ult i64 %107, %add10.i
  br i1 %cmp122.i, label %if.then124.i, label %if.else127.i

if.then124.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub126.i = add i64 %add10.i, -1
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 193, ptr noundef nonnull @.str.38, i64 noundef %107, i64 noundef %or.i.i, i64 noundef %sub126.i) #11
  br label %if.end171.i

if.else127.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %add10.i)
  %cmp133.i = icmp ult i64 %109, %add10.i
  br i1 %cmp133.i, label %if.then135.i, label %if.else138.i

if.then135.i:                                     ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub137.i = add i64 %add10.i, -1
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 197, ptr noundef nonnull @.str.39, i64 noundef %109, i64 noundef %or.i.i, i64 noundef %sub137.i) #11
  br label %if.end171.i

if.else138.i:                                     ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_cmp8(i64 %111, i64 %add10.i)
  %cmp144.i = icmp ult i64 %111, %add10.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub74.i, i64 %add10.i)
  %cmp152.i = icmp ult i64 %sub74.i, %add10.i
  %or.cond314.i = select i1 %cmp144.i, i1 true, i1 %cmp152.i
  br i1 %or.cond314.i, label %if.then154.i, label %if.else138.i.if.end171.i_crit_edge

if.else138.i.if.end171.i_crit_edge:               ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i

if.then154.i:                                     ; preds = %if.else138.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub157.i = add i64 %add10.i, -1
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_group_input, i32 noundef 203, ptr noundef nonnull @.str.40, i64 noundef %111, i64 noundef %sub74.i, i64 noundef %or.i.i, i64 noundef %sub157.i) #11
  br label %if.end171.i

if.end171.i:                                      ; preds = %if.then154.i, %if.else138.i.if.end171.i_crit_edge, %if.then135.i, %if.then124.i, %if.then112.i, %if.then99.i, %if.then89.i, %if.then81.i, %if.then63.i, %if.then54.i
  %err.0.i = phi i32 [ -22, %if.then54.i ], [ -22, %if.then63.i ], [ -22, %if.then81.i ], [ -22, %if.then89.i ], [ -22, %if.then99.i ], [ -22, %if.then112.i ], [ -22, %if.then124.i ], [ -22, %if.then135.i ], [ -22, %if.then154.i ], [ 0, %if.else138.i.if.end171.i_crit_edge ]
  %tobool.not.i308.i = icmp eq ptr %call43.i, null
  br i1 %tobool.not.i308.i, label %if.end171.i.verify_group_input.exit_crit_edge, label %if.then.i309.i

if.end171.i.verify_group_input.exit_crit_edge:    ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %verify_group_input.exit

if.then.i309.i:                                   ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call43.i) #11
  br label %verify_group_input.exit

verify_group_input.exit.thread:                   ; preds = %if.then39.i, %if.then33.i, %if.then27.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #11
  br label %out

verify_group_input.exit:                          ; preds = %if.then.i309.i, %if.end171.i.verify_group_input.exit_crit_edge, %if.then45.i
  %retval.0.i = phi i32 [ %err.0.i, %if.end171.i.verify_group_input.exit_crit_edge ], [ %err.0.i, %if.then.i309.i ], [ %105, %if.then45.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool37.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool37.not, label %if.end39, label %verify_group_input.exit.out_crit_edge

verify_group_input.exit.out_crit_edge:            ; preds = %verify_group_input.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end39:                                         ; preds = %verify_group_input.exit
  %112 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %input, align 8
  %add41 = add i32 %113, 1
  %call42 = call i32 @ext4_alloc_flex_bg_array(ptr noundef %sb, i32 noundef %add41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end45:                                         ; preds = %if.end39
  %114 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %input, align 8
  %add47 = add i32 %115, 1
  %call48 = call i32 @ext4_mb_alloc_groupinfo(ptr noundef %sb, i32 noundef %add47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %3, align 4
  %117 = ptrtoint ptr %flex_gd to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %input, ptr %flex_gd, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %bg_flags, ptr %1, align 4
  %call53 = call fastcc i32 @ext4_flex_group_add(ptr noundef %sb, ptr noundef %inode.0, ptr noundef nonnull %flex_gd)
  br label %out

out:                                              ; preds = %if.end51, %if.end45.out_crit_edge, %if.end39.out_crit_edge, %verify_group_input.exit.out_crit_edge, %verify_group_input.exit.thread
  %err.0 = phi i32 [ %retval.0.i, %verify_group_input.exit.out_crit_edge ], [ %call42, %if.end39.out_crit_edge ], [ %call48, %if.end45.out_crit_edge ], [ %call53, %if.end51 ], [ -22, %verify_group_input.exit.thread ]
  call void @iput(ptr noundef %inode.0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then32, %if.then28, %if.then18, %if.then11, %if.then
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %if.then18 ], [ %49, %if.then32 ], [ %err.0, %out ], [ -1, %if.then28 ], [ -1, %if.then ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bg_flags) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %flex_gd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_alloc_flex_bg_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mb_alloc_groupinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_flex_group_add(ptr noundef %sb, ptr noundef %resize_inode, ptr nocapture noundef readonly %flex_gd) unnamed_addr #0 align 64 {
entry:
  %iloc.i109.i = alloca %struct.ext4_iloc, align 4
  %iloc.i.i = alloca %struct.ext4_iloc, align 4
  %group_table_count.i = alloca [3 x i32], align 4
  %last = alloca i32, align 4
  %group = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #11
  %4 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %last, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group) #11
  %5 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %group, align 4, !annotation !184
  %count = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body6_crit_edge, label %lor.lhs.false, !prof !185

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flex_gd, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body6_crit_edge, label %lor.rhs, !prof !185

lor.lhs.false.do.body6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

lor.rhs:                                          ; preds = %lor.lhs.false
  %bg_flags = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 1
  %10 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bg_flags, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.rhs.do.body6_crit_edge, label %do.end11, !prof !185

lor.rhs.do.body6_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body6:                                         ; preds = %lor.rhs.do.body6_crit_edge, %lor.lhs.false.do.body6_crit_edge, %entry.do.body6_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1500, 0\0A.popsection", ""() #11, !srcloc !186
  unreachable

do.end11:                                         ; preds = %lor.rhs
  %s_reserved_gdt_blocks = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 37
  %12 = ptrtoint ptr %s_reserved_gdt_blocks to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_reserved_gdt_blocks, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %15 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool.not.i195 = icmp sgt i32 %16, -1
  br i1 %tobool.not.i195, label %do.end11.ext4_blocks_count.exit_crit_edge, label %cond.true.i

do.end11.ext4_blocks_count.exit_crit_edge:        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %17 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocks_count_hi.i, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %conv.i = zext i32 %19 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %do.end11.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %do.end11.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocks_count_lo.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  %conv1.i = zext i32 %22 to i64
  %or.i = or i64 %cond.i, %conv1.i
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %or.i, ptr noundef nonnull %group, ptr noundef nonnull %last) #11
  %23 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool14.not = icmp eq i32 %24, 0
  br i1 %tobool14.not, label %do.end30, label %do.body22, !prof !187

do.body22:                                        ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1505, 0\0A.popsection", ""() #11, !srcloc !188
  unreachable

do.end30:                                         ; preds = %ext4_blocks_count.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %group_table_count.i) #11
  %25 = getelementptr inbounds [3 x i32], ptr %group_table_count.i, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i32], ptr %group_table_count.i, i32 0, i32 2
  %27 = ptrtoint ptr %group_table_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %group_table_count.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %25, align 4
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %s_itb_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_itb_per_group.i, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %26, align 4
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 15
  %34 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_es.i, align 4
  %36 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flex_gd, align 4
  %38 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bg_flags, align 4
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i196 = icmp eq i32 %41, 0
  %tobool5.not.i = icmp eq ptr %37, null
  %or.cond.i = select i1 %tobool.not.i196, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %do.end30.do.body9.i_crit_edge, label %lor.rhs.i, !prof !189

do.end30.do.body9.i_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

lor.rhs.i:                                        ; preds = %do.end30
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %37, align 8
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 8
  %44 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_groups_count.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp.not.i = icmp eq i32 %43, %45
  br i1 %cmp.not.i, label %do.end14.i, label %lor.rhs.i.do.body9.i_crit_edge, !prof !187

lor.rhs.i.do.body9.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body9.i

do.body9.i:                                       ; preds = %lor.rhs.i.do.body9.i_crit_edge, %do.end30.do.body9.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 528, 0\0A.popsection", ""() #11, !srcloc !190
  unreachable

do.end14.i:                                       ; preds = %lor.rhs.i
  %s_reserved_gdt_blocks.i = getelementptr inbounds %struct.ext4_super_block, ptr %35, i32 0, i32 37
  %46 = ptrtoint ptr %s_reserved_gdt_blocks.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %s_reserved_gdt_blocks.i, align 2
  %48 = call i16 @llvm.bswap.i16(i16 %47) #11
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %35, i32 0, i32 29
  %49 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_feature_incompat.i.i, align 8
  %and.i.i = and i32 %50, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 11
  %51 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %mul.i.i.i = shl i32 %52, 3
  %call18.i = call ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef 534, i32 noundef 7, i32 noundef 64, i32 noundef 0, i32 noundef %mul.i.i.i) #11
  %cmp.i446.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i446.i, label %if.then20.i, label %if.end22.i

if.then20.i:                                      ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call18.i to i32
  br label %setup_new_flex_group_blocks.exit

if.end22.i:                                       ; preds = %do.end14.i
  %54 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp26566.not.i = icmp eq i32 %55, 0
  br i1 %cmp26566.not.i, label %if.end22.i.for.cond207.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end22.i.for.cond207.preheader.i_crit_edge:     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond207.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %56 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %37, align 8
  %cmp.i.not.i.i.i = icmp ult ptr %call18.i, inttoptr (i32 4096 to ptr)
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %s_group_desc.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 16
  %58 = zext i16 %48 to i64
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 12
  br label %for.body.i

for.cond207.preheader.i:                          ; preds = %for.inc203.i.for.cond207.preheader.i_crit_edge, %if.end22.i.for.cond207.preheader.i_crit_edge
  %block_bitmap213.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %37, i32 0, i32 1
  %s_cluster_bits232.i = getelementptr inbounds %struct.ext4_sb_info, ptr %30, i32 0, i32 12
  br label %for.body210.i

for.body.i:                                       ; preds = %for.inc203.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0569.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc204.i, %for.inc203.i.for.body.i_crit_edge ]
  %group.0567.i = phi i32 [ %57, %for.body.lr.ph.i ], [ %inc205.i, %for.inc203.i.for.body.i_crit_edge ]
  %call28.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %group.0567.i) #11
  %conv.i.i = zext i32 %group.0567.i to i64
  %59 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %s_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_blocks_per_group.i.i, align 8
  %conv1.i.i = zext i32 %62 to i64
  %mul.i.i = mul nuw i64 %conv1.i.i, %conv.i.i
  %s_es.i448.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 15
  %63 = ptrtoint ptr %s_es.i448.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_es.i448.i, align 4
  %s_first_data_block.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %s_first_data_block.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_first_data_block.i.i, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66) #11
  %conv3.i.i = zext i32 %67 to i64
  %add.i.i = add nuw i64 %mul.i.i, %conv3.i.i
  br i1 %cmp.i.not.i, label %land.lhs.true.i197, label %if.then38.critedge.i

land.lhs.true.i197:                               ; preds = %for.body.i
  %call32.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.0567.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i197.handle_itb.i_crit_edge, label %land.lhs.true.i197.if.end49.i_crit_edge

land.lhs.true.i197.if.end49.i_crit_edge:          ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

land.lhs.true.i197.handle_itb.i_crit_edge:        ; preds = %land.lhs.true.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_itb.i

if.then38.critedge.i:                             ; preds = %for.body.i
  %s_desc_per_block_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 28
  %68 = ptrtoint ptr %s_desc_per_block_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_desc_per_block_bits.i.i, align 128
  %70 = shl nsw i32 -1, %69
  %shl.i.i = and i32 %70, %group.0567.i
  %add.i = add i32 %group.0567.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %add.i)
  %cmp40.not.i = icmp eq i32 %shl.i.i, %add.i
  br i1 %cmp40.not.i, label %if.then38.critedge.i.if.end49.i_crit_edge, label %land.lhs.true42.i

if.then38.critedge.i.if.end49.i_crit_edge:        ; preds = %if.then38.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

land.lhs.true42.i:                                ; preds = %if.then38.critedge.i
  %s_desc_per_block.i = getelementptr inbounds %struct.ext4_sb_info, ptr %60, i32 0, i32 7
  %71 = ptrtoint ptr %s_desc_per_block.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %s_desc_per_block.i, align 4
  %add44.i = add i32 %group.0567.i, -1
  %sub.i = add i32 %add44.i, %72
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %sub.i)
  %cmp45.not.i = icmp eq i32 %shl.i.i, %sub.i
  br i1 %cmp45.not.i, label %land.lhs.true42.i.if.end49.i_crit_edge, label %land.lhs.true42.i.handle_itb.i_crit_edge

land.lhs.true42.i.handle_itb.i_crit_edge:         ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_itb.i

land.lhs.true42.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.end49.i:                                       ; preds = %land.lhs.true42.i.if.end49.i_crit_edge, %if.then38.critedge.i.if.end49.i_crit_edge, %land.lhs.true.i197.if.end49.i_crit_edge
  %call50.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.0567.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp54563.not.i = icmp eq i32 %call28.i, 0
  br i1 %cmp54563.not.i, label %if.end49.i.for.end.i_crit_edge, label %for.body56.preheader.i

if.end49.i.for.end.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body56.preheader.i:                           ; preds = %if.end49.i
  %conv51.i = sext i32 %call50.i to i64
  %add52.i = add i64 %add.i.i, %conv51.i
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.inc.i.for.body56.i_crit_edge, %for.body56.preheader.i
  %block.0565.i = phi i64 [ %inc114.i, %for.inc.i.for.body56.i_crit_edge ], [ %add52.i, %for.body56.preheader.i ]
  %j.0564.i = phi i32 [ %inc.i, %for.inc.i.for.body56.i_crit_edge ], [ 0, %for.body56.preheader.i ]
  %call.i451.i = call i32 @__ext4_journal_ensure_credits(ptr noundef %call18.i, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i451.i)
  %cmp.i452.i = icmp slt i32 %call.i451.i, 1
  br i1 %cmp.i452.i, label %for.body56.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge, label %if.end3.i.i

for.body56.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge: ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit.i

if.end3.i.i:                                      ; preds = %for.body56.i
  br i1 %cmp.i.not.i.i.i, label %if.end3.i.i.if.end61.i_crit_edge, label %ext4_journal_restart.exit.i.i

if.end3.i.i.if.end61.i_crit_edge:                 ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

ext4_journal_restart.exit.i.i:                    ; preds = %if.end3.i.i
  %call1.i.i.i = call i32 @jbd2__journal_restart(ptr noundef %call18.i, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp5.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %cmp5.i.i, label %ext4_journal_restart.exit.i.i.if.end61.i_crit_edge, label %ext4_journal_restart.exit.i.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge

ext4_journal_restart.exit.i.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge: ; preds = %ext4_journal_restart.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit.i

ext4_journal_restart.exit.i.i.if.end61.i_crit_edge: ; preds = %ext4_journal_restart.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

ext4_resize_ensure_credits_batch.exit.i:          ; preds = %ext4_journal_restart.exit.i.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge, %for.body56.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i451.i, %for.body56.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge ], [ %call1.i.i.i, %ext4_journal_restart.exit.i.i.ext4_resize_ensure_credits_batch.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp58.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp58.i, label %ext4_resize_ensure_credits_batch.exit.i.out.i_crit_edge, label %ext4_resize_ensure_credits_batch.exit.i.if.end61.i_crit_edge

ext4_resize_ensure_credits_batch.exit.i.if.end61.i_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61.i

ext4_resize_ensure_credits_batch.exit.i.out.i_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end61.i:                                       ; preds = %ext4_resize_ensure_credits_batch.exit.i.if.end61.i_crit_edge, %ext4_journal_restart.exit.i.i.if.end61.i_crit_edge, %if.end3.i.i.if.end61.i_crit_edge
  %73 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_bdev.i.i, align 4
  %75 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i453.i = call ptr @__getblk_gfp(ptr noundef %74, i64 noundef %block.0565.i, i32 noundef %76, i32 noundef 8) #11
  %tobool63.not.i = icmp eq ptr %call.i453.i, null
  br i1 %tobool63.not.i, label %if.end61.i.out.i_crit_edge, label %do.end76.i, !prof !185

if.end61.i.out.i_crit_edge:                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end76.i:                                       ; preds = %if.end61.i
  %call77.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 575, ptr noundef %call18.i, ptr noundef %sb, ptr noundef nonnull %call.i453.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %if.end80.i, label %brelse.exit.i

brelse.exit.i:                                    ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call.i453.i) #11
  br label %out.i

if.end80.i:                                       ; preds = %do.end76.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i453.i, i32 0, i32 5
  %77 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %b_data.i, align 4
  %79 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %82, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end80.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end80.i.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end80.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end80.i.rcu_read_lock.exit.i_crit_edge
  %83 = ptrtoint ptr %s_group_desc.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %s_group_desc.i, align 8
  %call86.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %land.lhs.true88.i, label %rcu_read_lock.exit.i.do.end96.i_crit_edge

rcu_read_lock.exit.i.do.end96.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96.i

land.lhs.true88.i:                                ; preds = %rcu_read_lock.exit.i
  %call89.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %land.lhs.true88.i.do.end96.i_crit_edge, label %land.lhs.true91.i

land.lhs.true88.i.do.end96.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96.i

land.lhs.true91.i:                                ; preds = %land.lhs.true88.i
  %.b441.i = load i1, ptr @setup_new_flex_group_blocks.__warned, align 1
  br i1 %.b441.i, label %land.lhs.true91.i.do.end96.i_crit_edge, label %if.then93.i

land.lhs.true91.i.do.end96.i_crit_edge:           ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96.i

if.then93.i:                                      ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @setup_new_flex_group_blocks.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 581, ptr noundef nonnull @.str.41) #11
  br label %do.end96.i

do.end96.i:                                       ; preds = %if.then93.i, %land.lhs.true91.i.do.end96.i_crit_edge, %land.lhs.true88.i.do.end96.i_crit_edge, %rcu_read_lock.exit.i.do.end96.i_crit_edge
  %arrayidx98.i = getelementptr ptr, ptr %84, i32 %j.0564.i
  %85 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx98.i, align 4
  %call.i456.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i456.i, label %do.end96.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i459.i

do.end96.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %do.end96.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true.i459.i:                             ; preds = %do.end96.i
  %call1.i457.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i457.i)
  %tobool.not.i458.i = icmp eq i32 %call1.i457.i, 0
  br i1 %tobool.not.i458.i, label %land.lhs.true.i459.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i461.i

land.lhs.true.i459.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i459.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i461.i:                            ; preds = %land.lhs.true.i459.i
  %.b4.i460.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i460.i, label %land.lhs.true2.i461.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i462.i

land.lhs.true2.i461.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i461.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i

if.then.i462.i:                                   ; preds = %land.lhs.true2.i461.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i462.i, %land.lhs.true2.i461.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i459.i.rcu_read_unlock.exit.i_crit_edge, %do.end96.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %87 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i463.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i463.i to ptr
  %preempt_count.i.i.i.i464.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i464.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i464.i, align 4
  %sub.i.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i464.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %b_data100.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %91 = ptrtoint ptr %b_data100.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data100.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call.i453.i, i32 0, i32 4
  %93 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %b_size.i, align 8
  %95 = call ptr @memcpy(ptr %78, ptr %92, i32 %94)
  %96 = ptrtoint ptr %call.i453.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %call.i453.i, align 4
  %and1.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i443.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i443.i, label %if.then.i444.i, label %rcu_read_unlock.exit.i.set_buffer_uptodate.exit.i_crit_edge

rcu_read_unlock.exit.i.set_buffer_uptodate.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit.i

if.then.i444.i:                                   ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i453.i) #11
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i444.i, %rcu_read_unlock.exit.i.set_buffer_uptodate.exit.i_crit_edge
  %call101.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 584, ptr noundef %call18.i, ptr noundef null, ptr noundef nonnull %call.i453.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  call void @__brelse(ptr noundef nonnull %call.i453.i) #11
  br i1 %tobool102.not.i, label %for.inc.i, label %set_buffer_uptodate.exit.i.out.i_crit_edge, !prof !187

set_buffer_uptodate.exit.i.out.i_crit_edge:       ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

for.inc.i:                                        ; preds = %set_buffer_uptodate.exit.i
  %inc.i = add nuw i32 %j.0564.i, 1
  %inc114.i = add i64 %block.0565.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call28.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body56.i_crit_edge

for.inc.i.for.body56.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body56.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end49.i.for.end.i_crit_edge
  %call115.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.0567.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %for.end.i.handle_itb.i_crit_edge, label %if.then117.i

for.end.i.handle_itb.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_itb.i

if.then117.i:                                     ; preds = %for.end.i
  %conv118.i = zext i32 %call28.i to i64
  %add119.i = add nuw nsw i64 %conv118.i, 1
  %add120.i = add i64 %add119.i, %add.i.i
  %98 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_bdev.i.i, align 4
  %100 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i472.i = zext i8 %101 to i32
  %sub.i.i = add nsw i32 %conv.i472.i, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i473.i = shl i64 %add120.i, %sh_prom.i.i
  %shl5.i.i = shl i64 %58, %sh_prom.i.i
  %call.i474.i = call i32 @blkdev_issue_zeroout(ptr noundef %99, i64 noundef %shl.i473.i, i64 noundef %shl5.i.i, i32 noundef 3136, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i474.i)
  %tobool123.not.i = icmp eq i32 %call.i474.i, 0
  br i1 %tobool123.not.i, label %if.then117.i.handle_itb.i_crit_edge, label %if.then117.i.out.i_crit_edge

if.then117.i.out.i_crit_edge:                     ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then117.i.handle_itb.i_crit_edge:              ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_itb.i

handle_itb.i:                                     ; preds = %if.then117.i.handle_itb.i_crit_edge, %for.end.i.handle_itb.i_crit_edge, %land.lhs.true42.i.handle_itb.i_crit_edge, %land.lhs.true.i197.handle_itb.i_crit_edge
  %arrayidx127.i = getelementptr i16, ptr %39, i32 %i.0569.i
  %102 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx127.i, align 2
  %104 = and i16 %103, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %tobool129.not.i = icmp eq i16 %104, 0
  br i1 %tobool129.not.i, label %handle_itb.i.handle_bb.i_crit_edge, label %if.end131.i

handle_itb.i.handle_bb.i_crit_edge:               ; preds = %handle_itb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_bb.i

if.end131.i:                                      ; preds = %handle_itb.i
  %inode_table.i = getelementptr %struct.ext4_new_group_data, ptr %37, i32 %i.0569.i, i32 3
  %105 = ptrtoint ptr %inode_table.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %inode_table.i, align 8
  %107 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %s_itb_per_group.i, align 4
  %conv135.i = zext i32 %108 to i64
  %109 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %s_bdev.i.i, align 4
  %111 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i477.i = zext i8 %112 to i32
  %sub.i478.i = add nsw i32 %conv.i477.i, -9
  %sh_prom.i479.i = zext i32 %sub.i478.i to i64
  %shl.i480.i = shl i64 %106, %sh_prom.i479.i
  %shl5.i481.i = shl i64 %conv135.i, %sh_prom.i479.i
  %call.i482.i = call i32 @blkdev_issue_zeroout(ptr noundef %110, i64 noundef %shl.i480.i, i64 noundef %shl5.i481.i, i32 noundef 3136, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i482.i)
  %tobool137.not.i = icmp eq i32 %call.i482.i, 0
  br i1 %tobool137.not.i, label %if.end131.i.handle_bb.i_crit_edge, label %if.end131.i.out.i_crit_edge

if.end131.i.out.i_crit_edge:                      ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end131.i.handle_bb.i_crit_edge:                ; preds = %if.end131.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_bb.i

handle_bb.i:                                      ; preds = %if.end131.i.handle_bb.i_crit_edge, %handle_itb.i.handle_bb.i_crit_edge
  %113 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx127.i, align 2
  %115 = and i16 %114, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool143.not.i = icmp eq i16 %115, 0
  br i1 %tobool143.not.i, label %if.end145.i, label %handle_bb.i.handle_ib.i_crit_edge

handle_bb.i.handle_ib.i_crit_edge:                ; preds = %handle_bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_ib.i

if.end145.i:                                      ; preds = %handle_bb.i
  %block_bitmap.i = getelementptr %struct.ext4_new_group_data, ptr %37, i32 %i.0569.i, i32 1
  %116 = ptrtoint ptr %block_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %block_bitmap.i, align 8
  %call.i483.i = call i32 @__ext4_journal_ensure_credits(ptr noundef %call18.i, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i483.i)
  %cmp.i484.i = icmp slt i32 %call.i483.i, 1
  br i1 %cmp.i484.i, label %if.end145.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge, label %if.end3.i486.i

if.end145.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge: ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit492.i

if.end3.i486.i:                                   ; preds = %if.end145.i
  br i1 %cmp.i.not.i.i.i, label %if.end3.i486.i.if.end151.i_crit_edge, label %ext4_journal_restart.exit.i489.i

if.end3.i486.i.if.end151.i_crit_edge:             ; preds = %if.end3.i486.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.i

ext4_journal_restart.exit.i489.i:                 ; preds = %if.end3.i486.i
  %call1.i.i487.i = call i32 @jbd2__journal_restart(ptr noundef %call18.i, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i487.i)
  %cmp5.i488.i = icmp eq i32 %call1.i.i487.i, 0
  br i1 %cmp5.i488.i, label %ext4_journal_restart.exit.i489.i.if.end151.i_crit_edge, label %ext4_journal_restart.exit.i489.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge

ext4_journal_restart.exit.i489.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge: ; preds = %ext4_journal_restart.exit.i489.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit492.i

ext4_journal_restart.exit.i489.i.if.end151.i_crit_edge: ; preds = %ext4_journal_restart.exit.i489.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.i

ext4_resize_ensure_credits_batch.exit492.i:       ; preds = %ext4_journal_restart.exit.i489.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge, %if.end145.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge
  %err.0.i491.i = phi i32 [ %call.i483.i, %if.end145.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge ], [ %call1.i.i487.i, %ext4_journal_restart.exit.i489.i.ext4_resize_ensure_credits_batch.exit492.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i491.i)
  %cmp148.i = icmp slt i32 %err.0.i491.i, 0
  br i1 %cmp148.i, label %ext4_resize_ensure_credits_batch.exit492.i.out.i_crit_edge, label %ext4_resize_ensure_credits_batch.exit492.i.if.end151.i_crit_edge

ext4_resize_ensure_credits_batch.exit492.i.if.end151.i_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit492.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end151.i

ext4_resize_ensure_credits_batch.exit492.i.out.i_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit492.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end151.i:                                      ; preds = %ext4_resize_ensure_credits_batch.exit492.i.if.end151.i_crit_edge, %ext4_journal_restart.exit.i489.i.if.end151.i_crit_edge, %if.end3.i486.i.if.end151.i_crit_edge
  %118 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %s_bdev.i.i, align 4
  %120 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i.i = call ptr @__getblk_gfp(ptr noundef %119, i64 noundef %117, i32 noundef %121, i32 noundef 8) #11
  %tobool.not.i493.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i493.i, label %if.end151.i.if.then154.i_crit_edge, label %do.end.i.i, !prof !185

if.end151.i.if.then154.i_crit_edge:               ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then154.i

do.end.i.i:                                       ; preds = %if.end151.i
  %call5.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.bclean, i32 noundef 412, ptr noundef %call18.i, ptr noundef %sb, ptr noundef nonnull %call.i.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %brelse.exit.i.i

brelse.exit.i.i:                                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call.i.i.i) #11
  %122 = inttoptr i32 %call5.i.i to ptr
  br label %bclean.exit.i

if.else.i.i:                                      ; preds = %do.end.i.i
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i.i, i32 0, i32 5
  %123 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %b_data.i.i, align 4
  %125 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %s_blocksize.i.i, align 16
  %127 = call ptr @memset(ptr %124, i32 0, i32 %126)
  %128 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %call.i.i.i, align 4
  %and1.i.i.i.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.else.i.i.bclean.exit.i_crit_edge

if.else.i.i.bclean.exit.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bclean.exit.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i.i) #11
  br label %bclean.exit.i

bclean.exit.i:                                    ; preds = %if.then.i.i.i, %if.else.i.i.bclean.exit.i_crit_edge, %brelse.exit.i.i
  %retval.0.i.i = phi ptr [ %122, %brelse.exit.i.i ], [ %call.i.i.i, %if.else.i.i.bclean.exit.i_crit_edge ], [ %call.i.i.i, %if.then.i.i.i ]
  %cmp.i494.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i494.i, label %bclean.exit.i.if.then154.i_crit_edge, label %if.end156.i

bclean.exit.i.if.then154.i_crit_edge:             ; preds = %bclean.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then154.i

if.then154.i:                                     ; preds = %bclean.exit.i.if.then154.i_crit_edge, %if.end151.i.if.then154.i_crit_edge
  %retval.0.i546.i = phi ptr [ %retval.0.i.i, %bclean.exit.i.if.then154.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end151.i.if.then154.i_crit_edge ]
  %130 = ptrtoint ptr %retval.0.i546.i to i32
  br label %out.i

if.end156.i:                                      ; preds = %bclean.exit.i
  %call.i495.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %group.0567.i) #11
  %call1.i496.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.0567.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i496.i)
  %tobool.not.i497.i = icmp eq i32 %call1.i496.i, 0
  br i1 %tobool.not.i497.i, label %if.end156.i.ext4_group_overhead_blocks.exit.i_crit_edge, label %if.then.i502.i

if.end156.i.ext4_group_overhead_blocks.exit.i_crit_edge: ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_group_overhead_blocks.exit.i

if.then.i502.i:                                   ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i499.i = getelementptr inbounds %struct.ext4_sb_info, ptr %132, i32 0, i32 15
  %133 = ptrtoint ptr %s_es.i499.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %s_es.i499.i, align 4
  %s_reserved_gdt_blocks.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %134, i32 0, i32 37
  %135 = ptrtoint ptr %s_reserved_gdt_blocks.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %s_reserved_gdt_blocks.i.i, align 2
  %137 = call i16 @llvm.bswap.i16(i16 %136) #11
  %conv.i500.i = zext i16 %137 to i32
  %add.i501.i = add i32 %call.i495.i, 1
  %add3.i.i = add i32 %add.i501.i, %conv.i500.i
  br label %ext4_group_overhead_blocks.exit.i

ext4_group_overhead_blocks.exit.i:                ; preds = %if.then.i502.i, %if.end156.i.ext4_group_overhead_blocks.exit.i_crit_edge
  %overhead.0.i.i = phi i32 [ %add3.i.i, %if.then.i502.i ], [ %call.i495.i, %if.end156.i.ext4_group_overhead_blocks.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overhead.0.i.i)
  %cmp158.not.i = icmp eq i32 %overhead.0.i.i, 0
  br i1 %cmp158.not.i, label %ext4_group_overhead_blocks.exit.i.brelse.exit505.i_crit_edge, label %if.then160.i

ext4_group_overhead_blocks.exit.i.brelse.exit505.i_crit_edge: ; preds = %ext4_group_overhead_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit505.i

if.then160.i:                                     ; preds = %ext4_group_overhead_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %b_data162.i = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i.i, i32 0, i32 5
  %138 = ptrtoint ptr %b_data162.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %b_data162.i, align 4
  %140 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %add163.i = add i32 %overhead.0.i.i, -1
  %sub164.i = add i32 %add163.i, %141
  %142 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s_cluster_bits.i, align 16
  %shr.i = lshr i32 %sub164.i, %143
  call void @ext4_set_bits(ptr noundef %139, i32 noundef 0, i32 noundef %shr.i) #11
  br label %brelse.exit505.i

brelse.exit505.i:                                 ; preds = %if.then160.i, %ext4_group_overhead_blocks.exit.i.brelse.exit505.i_crit_edge
  %blocks_count.i = getelementptr %struct.ext4_new_group_data, ptr %37, i32 %i.0569.i, i32 4
  %144 = ptrtoint ptr %blocks_count.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %blocks_count.i, align 8
  %146 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_cluster_bits.i, align 16
  %shr168.i = lshr i32 %145, %147
  %148 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %s_blocksize.i.i, align 16
  %mul.i = shl i32 %149, 3
  %b_data169.i = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i.i, i32 0, i32 5
  %150 = ptrtoint ptr %b_data169.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %b_data169.i, align 4
  call void @ext4_mark_bitmap_end(i32 noundef %shr168.i, i32 noundef %mul.i, ptr noundef %151) #11
  %call170.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 640, ptr noundef %call18.i, ptr noundef null, ptr noundef %retval.0.i.i) #11
  call void @__brelse(ptr noundef nonnull %retval.0.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170.i)
  %tobool171.not.i = icmp eq i32 %call170.i, 0
  br i1 %tobool171.not.i, label %brelse.exit505.i.handle_ib.i_crit_edge, label %brelse.exit505.i.out.i_crit_edge

brelse.exit505.i.out.i_crit_edge:                 ; preds = %brelse.exit505.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

brelse.exit505.i.handle_ib.i_crit_edge:           ; preds = %brelse.exit505.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_ib.i

handle_ib.i:                                      ; preds = %brelse.exit505.i.handle_ib.i_crit_edge, %handle_bb.i.handle_ib.i_crit_edge
  %152 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx127.i, align 2
  %154 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool177.not.i = icmp eq i16 %154, 0
  br i1 %tobool177.not.i, label %if.end179.i, label %handle_ib.i.for.inc203.i_crit_edge

handle_ib.i.for.inc203.i_crit_edge:               ; preds = %handle_ib.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc203.i

if.end179.i:                                      ; preds = %handle_ib.i
  %inode_bitmap.i = getelementptr %struct.ext4_new_group_data, ptr %37, i32 %i.0569.i, i32 2
  %155 = ptrtoint ptr %inode_bitmap.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %inode_bitmap.i, align 8
  %call.i506.i = call i32 @__ext4_journal_ensure_credits(ptr noundef %call18.i, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i506.i)
  %cmp.i507.i = icmp slt i32 %call.i506.i, 1
  br i1 %cmp.i507.i, label %if.end179.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge, label %if.end3.i509.i

if.end179.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge: ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit515.i

if.end3.i509.i:                                   ; preds = %if.end179.i
  br i1 %cmp.i.not.i.i.i, label %if.end3.i509.i.if.end185.i_crit_edge, label %ext4_journal_restart.exit.i512.i

if.end3.i509.i.if.end185.i_crit_edge:             ; preds = %if.end3.i509.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.i

ext4_journal_restart.exit.i512.i:                 ; preds = %if.end3.i509.i
  %call1.i.i510.i = call i32 @jbd2__journal_restart(ptr noundef %call18.i, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i510.i)
  %cmp5.i511.i = icmp eq i32 %call1.i.i510.i, 0
  br i1 %cmp5.i511.i, label %ext4_journal_restart.exit.i512.i.if.end185.i_crit_edge, label %ext4_journal_restart.exit.i512.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge

ext4_journal_restart.exit.i512.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge: ; preds = %ext4_journal_restart.exit.i512.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit515.i

ext4_journal_restart.exit.i512.i.if.end185.i_crit_edge: ; preds = %ext4_journal_restart.exit.i512.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.i

ext4_resize_ensure_credits_batch.exit515.i:       ; preds = %ext4_journal_restart.exit.i512.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge, %if.end179.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge
  %err.0.i514.i = phi i32 [ %call.i506.i, %if.end179.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge ], [ %call1.i.i510.i, %ext4_journal_restart.exit.i512.i.ext4_resize_ensure_credits_batch.exit515.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i514.i)
  %cmp182.i = icmp slt i32 %err.0.i514.i, 0
  br i1 %cmp182.i, label %ext4_resize_ensure_credits_batch.exit515.i.out.i_crit_edge, label %ext4_resize_ensure_credits_batch.exit515.i.if.end185.i_crit_edge

ext4_resize_ensure_credits_batch.exit515.i.if.end185.i_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit515.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.i

ext4_resize_ensure_credits_batch.exit515.i.out.i_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit515.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end185.i:                                      ; preds = %ext4_resize_ensure_credits_batch.exit515.i.if.end185.i_crit_edge, %ext4_journal_restart.exit.i512.i.if.end185.i_crit_edge, %if.end3.i509.i.if.end185.i_crit_edge
  %157 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %s_bdev.i.i, align 4
  %159 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i518.i = call ptr @__getblk_gfp(ptr noundef %158, i64 noundef %156, i32 noundef %160, i32 noundef 8) #11
  %tobool.not.i519.i = icmp eq ptr %call.i.i518.i, null
  br i1 %tobool.not.i519.i, label %if.end185.i.if.then188.i_crit_edge, label %do.end.i522.i, !prof !185

if.end185.i.if.then188.i_crit_edge:               ; preds = %if.end185.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then188.i

do.end.i522.i:                                    ; preds = %if.end185.i
  %call5.i520.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.bclean, i32 noundef 412, ptr noundef %call18.i, ptr noundef %sb, ptr noundef nonnull %call.i.i518.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i520.i)
  %tobool6.not.i521.i = icmp eq i32 %call5.i520.i, 0
  br i1 %tobool6.not.i521.i, label %if.else.i527.i, label %brelse.exit.i523.i

brelse.exit.i523.i:                               ; preds = %do.end.i522.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call.i.i518.i) #11
  %161 = inttoptr i32 %call5.i520.i to ptr
  br label %bclean.exit530.i

if.else.i527.i:                                   ; preds = %do.end.i522.i
  %b_data.i524.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i518.i, i32 0, i32 5
  %162 = ptrtoint ptr %b_data.i524.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %b_data.i524.i, align 4
  %164 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %s_blocksize.i.i, align 16
  %166 = call ptr @memset(ptr %163, i32 0, i32 %165)
  %167 = ptrtoint ptr %call.i.i518.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %call.i.i518.i, align 4
  %and1.i.i.i525.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i525.i)
  %tobool.not.i.i526.i = icmp eq i32 %and1.i.i.i525.i, 0
  br i1 %tobool.not.i.i526.i, label %if.then.i.i528.i, label %if.else.i527.i.bclean.exit530.i_crit_edge

if.else.i527.i.bclean.exit530.i_crit_edge:        ; preds = %if.else.i527.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bclean.exit530.i

if.then.i.i528.i:                                 ; preds = %if.else.i527.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i518.i) #11
  br label %bclean.exit530.i

bclean.exit530.i:                                 ; preds = %if.then.i.i528.i, %if.else.i527.i.bclean.exit530.i_crit_edge, %brelse.exit.i523.i
  %retval.0.i529.i = phi ptr [ %161, %brelse.exit.i523.i ], [ %call.i.i518.i, %if.else.i527.i.bclean.exit530.i_crit_edge ], [ %call.i.i518.i, %if.then.i.i528.i ]
  %cmp.i531.i = icmp ugt ptr %retval.0.i529.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i531.i, label %bclean.exit530.i.if.then188.i_crit_edge, label %brelse.exit535.i

bclean.exit530.i.if.then188.i_crit_edge:          ; preds = %bclean.exit530.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then188.i

if.then188.i:                                     ; preds = %bclean.exit530.i.if.then188.i_crit_edge, %if.end185.i.if.then188.i_crit_edge
  %retval.0.i529551.i = phi ptr [ %retval.0.i529.i, %bclean.exit530.i.if.then188.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end185.i.if.then188.i_crit_edge ]
  %169 = ptrtoint ptr %retval.0.i529551.i to i32
  br label %out.i

brelse.exit535.i:                                 ; preds = %bclean.exit530.i
  %170 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %171, i32 0, i32 4
  %172 = ptrtoint ptr %s_inodes_per_group.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %s_inodes_per_group.i, align 16
  %174 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %s_blocksize.i.i, align 16
  %mul193.i = shl i32 %175, 3
  %b_data194.i = getelementptr inbounds %struct.buffer_head, ptr %retval.0.i529.i, i32 0, i32 5
  %176 = ptrtoint ptr %b_data194.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %b_data194.i, align 4
  call void @ext4_mark_bitmap_end(i32 noundef %173, i32 noundef %mul193.i, ptr noundef %177) #11
  %call195.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 663, ptr noundef %call18.i, ptr noundef null, ptr noundef %retval.0.i529.i) #11
  call void @__brelse(ptr noundef nonnull %retval.0.i529.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i)
  %tobool196.not.i = icmp eq i32 %call195.i, 0
  br i1 %tobool196.not.i, label %brelse.exit535.i.for.inc203.i_crit_edge, label %brelse.exit535.i.out.i_crit_edge

brelse.exit535.i.out.i_crit_edge:                 ; preds = %brelse.exit535.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

brelse.exit535.i.for.inc203.i_crit_edge:          ; preds = %brelse.exit535.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc203.i

for.inc203.i:                                     ; preds = %brelse.exit535.i.for.inc203.i_crit_edge, %handle_ib.i.for.inc203.i_crit_edge
  %inc204.i = add nuw i32 %i.0569.i, 1
  %inc205.i = add i32 %group.0567.i, 1
  %178 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %count, align 4
  %cmp26.i = icmp ult i32 %inc204.i, %179
  br i1 %cmp26.i, label %for.inc203.i.for.body.i_crit_edge, label %for.inc203.i.for.cond207.preheader.i_crit_edge

for.inc203.i.for.cond207.preheader.i_crit_edge:   ; preds = %for.inc203.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond207.preheader.i

for.inc203.i.for.body.i_crit_edge:                ; preds = %for.inc203.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body210.i:                                    ; preds = %for.inc267.i.for.body210.i_crit_edge, %for.cond207.preheader.i
  %j.1578.i = phi i32 [ 0, %for.cond207.preheader.i ], [ %inc268.i, %for.inc267.i.for.body210.i_crit_edge ]
  %arrayidx211.i = getelementptr [3 x i32], ptr %group_table_count.i, i32 0, i32 %j.1578.i
  %180 = ptrtoint ptr %arrayidx211.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx211.i, align 4
  %arrayidx214.i = getelementptr i64, ptr %block_bitmap213.i, i32 %j.1578.i
  %182 = ptrtoint ptr %arrayidx214.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %arrayidx214.i, align 8
  %184 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp217572.i = icmp ugt i32 %185, 1
  br i1 %cmp217572.i, label %for.body219.lr.ph.i, label %for.body210.i.for.end250.i_crit_edge

for.body210.i.for.end250.i_crit_edge:             ; preds = %for.body210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end250.i

for.body219.lr.ph.i:                              ; preds = %for.body210.i
  %conv221.i = sext i32 %181 to i64
  br label %for.body219.i

for.body219.i:                                    ; preds = %for.inc248.i.for.body219.i_crit_edge, %for.body219.lr.ph.i
  %start.0576.i = phi i64 [ %183, %for.body219.lr.ph.i ], [ %start.1.i, %for.inc248.i.for.body219.i_crit_edge ]
  %block.1575.i = phi i64 [ %183, %for.body219.lr.ph.i ], [ %block.2.i, %for.inc248.i.for.body219.i_crit_edge ]
  %i.1574.i = phi i32 [ 1, %for.body219.lr.ph.i ], [ %inc249.i, %for.inc248.i.for.body219.i_crit_edge ]
  %count.0573.i = phi i32 [ %181, %for.body219.lr.ph.i ], [ %count.1.i, %for.inc248.i.for.body219.i_crit_edge ]
  %add222.i = add i64 %block.1575.i, %conv221.i
  %block_bitmap224.i = getelementptr %struct.ext4_new_group_data, ptr %37, i32 %i.1574.i, i32 1
  %arrayidx225.i = getelementptr i64, ptr %block_bitmap224.i, i32 %j.1578.i
  %186 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %arrayidx225.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add222.i, i64 %187)
  %cmp226.i = icmp eq i64 %add222.i, %187
  br i1 %cmp226.i, label %if.then228.i, label %if.end231.i

if.then228.i:                                     ; preds = %for.body219.i
  call void @__sanitizer_cov_trace_pc() #13
  %add230.i = add i32 %count.0573.i, %181
  br label %for.inc248.i

if.end231.i:                                      ; preds = %for.body219.i
  %188 = ptrtoint ptr %s_cluster_bits232.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %s_cluster_bits232.i, align 16
  %sh_prom.i = zext i32 %189 to i64
  %shr233.i = lshr i64 %start.0576.i, %sh_prom.i
  %conv234.i = zext i32 %count.0573.i to i64
  %add235.i = add i64 %start.0576.i, -1
  %sub236.i = add i64 %add235.i, %conv234.i
  %shr239.i = lshr i64 %sub236.i, %sh_prom.i
  %call240.i = call fastcc i32 @set_flexbg_block_bitmap(ptr noundef %sb, ptr noundef %call18.i, ptr noundef %flex_gd, i64 noundef %shr233.i, i64 noundef %shr239.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240.i)
  %tobool241.not.i = icmp eq i32 %call240.i, 0
  br i1 %tobool241.not.i, label %if.end243.i, label %if.end231.i.out.i_crit_edge

if.end231.i.out.i_crit_edge:                      ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end243.i:                                      ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #13
  %190 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load8_noabort(i32 %190)
  %191 = load i64, ptr %arrayidx225.i, align 8
  br label %for.inc248.i

for.inc248.i:                                     ; preds = %if.end243.i, %if.then228.i
  %count.1.i = phi i32 [ %add230.i, %if.then228.i ], [ %181, %if.end243.i ]
  %block.2.i = phi i64 [ %add222.i, %if.then228.i ], [ %191, %if.end243.i ]
  %start.1.i = phi i64 [ %start.0576.i, %if.then228.i ], [ %191, %if.end243.i ]
  %inc249.i = add nuw i32 %i.1574.i, 1
  %192 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %count, align 4
  %cmp217.i = icmp ult i32 %inc249.i, %193
  br i1 %cmp217.i, label %for.inc248.i.for.body219.i_crit_edge, label %for.inc248.i.for.end250.i_crit_edge

for.inc248.i.for.end250.i_crit_edge:              ; preds = %for.inc248.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end250.i

for.inc248.i.for.body219.i_crit_edge:             ; preds = %for.inc248.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body219.i

for.end250.i:                                     ; preds = %for.inc248.i.for.end250.i_crit_edge, %for.body210.i.for.end250.i_crit_edge
  %count.0.lcssa.i = phi i32 [ %181, %for.body210.i.for.end250.i_crit_edge ], [ %count.1.i, %for.inc248.i.for.end250.i_crit_edge ]
  %start.0.lcssa.i = phi i64 [ %183, %for.body210.i.for.end250.i_crit_edge ], [ %start.1.i, %for.inc248.i.for.end250.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool251.not.i = icmp eq i32 %count.0.lcssa.i, 0
  br i1 %tobool251.not.i, label %for.end250.i.for.inc267.i_crit_edge, label %if.then252.i

for.end250.i.for.inc267.i_crit_edge:              ; preds = %for.end250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc267.i

if.then252.i:                                     ; preds = %for.end250.i
  %194 = ptrtoint ptr %s_cluster_bits232.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %s_cluster_bits232.i, align 16
  %sh_prom254.i = zext i32 %195 to i64
  %shr255.i = lshr i64 %start.0.lcssa.i, %sh_prom254.i
  %conv256.i = zext i32 %count.0.lcssa.i to i64
  %add257.i = add i64 %start.0.lcssa.i, -1
  %sub258.i = add i64 %add257.i, %conv256.i
  %shr261.i = lshr i64 %sub258.i, %sh_prom254.i
  %call262.i = call fastcc i32 @set_flexbg_block_bitmap(ptr noundef %sb, ptr noundef %call18.i, ptr noundef %flex_gd, i64 noundef %shr255.i, i64 noundef %shr261.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262.i)
  %tobool263.not.i = icmp eq i32 %call262.i, 0
  br i1 %tobool263.not.i, label %if.then252.i.for.inc267.i_crit_edge, label %if.then252.i.out.i_crit_edge

if.then252.i.out.i_crit_edge:                     ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then252.i.for.inc267.i_crit_edge:              ; preds = %if.then252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc267.i

for.inc267.i:                                     ; preds = %if.then252.i.for.inc267.i_crit_edge, %for.end250.i.for.inc267.i_crit_edge
  %inc268.i = add nuw nsw i32 %j.1578.i, 1
  %exitcond590.not.i = icmp eq i32 %inc268.i, 3
  br i1 %exitcond590.not.i, label %for.inc267.i.out.i_crit_edge, label %for.inc267.i.for.body210.i_crit_edge

for.inc267.i.for.body210.i_crit_edge:             ; preds = %for.inc267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body210.i

for.inc267.i.out.i_crit_edge:                     ; preds = %for.inc267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

out.i:                                            ; preds = %for.inc267.i.out.i_crit_edge, %if.then252.i.out.i_crit_edge, %if.end231.i.out.i_crit_edge, %brelse.exit535.i.out.i_crit_edge, %if.then188.i, %ext4_resize_ensure_credits_batch.exit515.i.out.i_crit_edge, %brelse.exit505.i.out.i_crit_edge, %if.then154.i, %ext4_resize_ensure_credits_batch.exit492.i.out.i_crit_edge, %if.end131.i.out.i_crit_edge, %if.then117.i.out.i_crit_edge, %set_buffer_uptodate.exit.i.out.i_crit_edge, %brelse.exit.i, %if.end61.i.out.i_crit_edge, %ext4_resize_ensure_credits_batch.exit.i.out.i_crit_edge
  %err.11.i = phi i32 [ %130, %if.then154.i ], [ %169, %if.then188.i ], [ %call77.i, %brelse.exit.i ], [ %call240.i, %if.end231.i.out.i_crit_edge ], [ %call262.i, %if.then252.i.out.i_crit_edge ], [ 0, %for.inc267.i.out.i_crit_edge ], [ -12, %if.end61.i.out.i_crit_edge ], [ %err.0.i.i, %ext4_resize_ensure_credits_batch.exit.i.out.i_crit_edge ], [ %call101.i, %set_buffer_uptodate.exit.i.out.i_crit_edge ], [ %call195.i, %brelse.exit535.i.out.i_crit_edge ], [ %err.0.i514.i, %ext4_resize_ensure_credits_batch.exit515.i.out.i_crit_edge ], [ %call170.i, %brelse.exit505.i.out.i_crit_edge ], [ %err.0.i491.i, %ext4_resize_ensure_credits_batch.exit492.i.out.i_crit_edge ], [ %call.i482.i, %if.end131.i.out.i_crit_edge ], [ %call.i474.i, %if.then117.i.out.i_crit_edge ]
  %call270.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.setup_new_flex_group_blocks, i32 noundef 706, ptr noundef %call18.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270.i)
  %tobool271.not.i = icmp ne i32 %call270.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.11.i)
  %tobool273.not.i = icmp eq i32 %err.11.i, 0
  %or.cond442.i = select i1 %tobool271.not.i, i1 %tobool273.not.i, i1 false
  %err.12.i = select i1 %or.cond442.i, i32 %call270.i, i32 %err.11.i
  br label %setup_new_flex_group_blocks.exit

setup_new_flex_group_blocks.exit:                 ; preds = %out.i, %if.then20.i
  %retval.0.i = phi i32 [ %53, %if.then20.i ], [ %err.12.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %group_table_count.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool32.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool32.not, label %if.end34, label %setup_new_flex_group_blocks.exit.exit_crit_edge

setup_new_flex_group_blocks.exit.exit_crit_edge:  ; preds = %setup_new_flex_group_blocks.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end34:                                         ; preds = %setup_new_flex_group_blocks.exit
  %196 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %count, align 4
  %198 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %199, i32 0, i32 7
  %200 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %s_desc_per_block, align 4
  %add = add i32 %197, -1
  %sub = add i32 %add, %201
  %div = udiv i32 %sub, %201
  %add40 = add nuw nsw i32 %conv, 4
  %add41 = add i32 %add40, %div
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %199, i32 0, i32 11
  %202 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i200 = shl i32 %203, 3
  %call43 = call ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef 1521, i32 noundef 7, i32 noundef %add41, i32 noundef 0, i32 noundef %mul.i.i200) #11
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %do.end50

if.then45:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %204 = ptrtoint ptr %call43 to i32
  br label %exit

do.end50:                                         ; preds = %if.end34
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 14
  %205 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %s_sbh, align 64
  %call51 = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1529, ptr noundef %call43, ptr noundef %sb, ptr noundef %206, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %do.end50.exit_journal.thread_crit_edge

do.end50.exit_journal.thread_crit_edge:           ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal.thread

if.end54:                                         ; preds = %do.end50
  %207 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %flex_gd, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 8
  %211 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %210, ptr %group, align 4
  %s_groups_count = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %212 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %s_groups_count, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %213)
  %cmp.not = icmp eq i32 %210, %213
  br i1 %cmp.not, label %do.end74, label %do.body66, !prof !187

do.body66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1534, 0\0A.popsection", ""() #11, !srcloc !193
  unreachable

do.end74:                                         ; preds = %if.end54
  %214 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %count, align 4
  %216 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i202 = getelementptr inbounds %struct.ext4_sb_info, ptr %217, i32 0, i32 15
  %218 = ptrtoint ptr %s_es.i202 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %s_es.i202, align 4
  %s_feature_incompat.i.i203 = getelementptr inbounds %struct.ext4_super_block, ptr %219, i32 0, i32 29
  %220 = ptrtoint ptr %s_feature_incompat.i.i203 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %s_feature_incompat.i.i203, align 8
  %and.i.i204 = and i32 %221, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i204)
  %cmp.i.not.i205 = icmp eq i32 %and.i.i204, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp191.not.i = icmp eq i32 %215, 0
  br i1 %cmp191.not.i, label %do.end74.if.end79_crit_edge, label %for.body.lr.ph.i208

do.end74.if.end79_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

for.body.lr.ph.i208:                              ; preds = %do.end74
  %s_reserved_gdt_blocks.i206 = getelementptr inbounds %struct.ext4_super_block, ptr %219, i32 0, i32 37
  %s_group_desc.i207 = getelementptr inbounds %struct.ext4_sb_info, ptr %217, i32 0, i32 16
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %resize_inode, i32 0, i32 8
  %222 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i.i, i32 0, i32 1
  %223 = getelementptr inbounds %struct.ext4_iloc, ptr %iloc.i.i, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %resize_inode, i32 -412
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %resize_inode, i32 0, i32 22
  br label %for.body.i210

for.body.i210:                                    ; preds = %for.inc.i250.for.body.i210_crit_edge, %for.body.lr.ph.i208
  %group.addr.0193.i = phi i32 [ %210, %for.body.lr.ph.i208 ], [ %inc45.i, %for.inc.i250.for.body.i210_crit_edge ]
  %i.0192.i = phi i32 [ 0, %for.body.lr.ph.i208 ], [ %inc.i248, %for.inc.i250.for.body.i210_crit_edge ]
  %call3.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.addr.0193.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i209 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i209, label %for.body.i210.cond.end.i_crit_edge, label %cond.true.i211

for.body.i210.cond.end.i_crit_edge:               ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i211:                                   ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #13
  %224 = ptrtoint ptr %s_reserved_gdt_blocks.i206 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %s_reserved_gdt_blocks.i206, align 2
  %226 = call i16 @llvm.bswap.i16(i16 %225) #11
  %conv4.i = zext i16 %226 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i211, %for.body.i210.cond.end.i_crit_edge
  %cond.i212 = phi i32 [ %conv4.i, %cond.true.i211 ], [ 0, %for.body.i210.cond.end.i_crit_edge ]
  %227 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block.i213 = getelementptr inbounds %struct.ext4_sb_info, ptr %228, i32 0, i32 7
  %229 = ptrtoint ptr %s_desc_per_block.i213 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %s_desc_per_block.i213, align 4
  %.frozen = freeze i32 %230
  %div.i = udiv i32 %group.addr.0193.i, %.frozen
  %231 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %group.addr.0193.i, %231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool8.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then.i218

if.then.i218:                                     ; preds = %cond.end.i
  %232 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i.i214 = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i.i.i.i214 to ptr
  %preempt_count.i.i.i.i.i215 = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %preempt_count.i.i.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %preempt_count.i.i.i.i.i215, align 4
  %add.i.i.i.i216 = add i32 %235, 1
  store volatile i32 %add.i.i.i.i216, ptr %preempt_count.i.i.i.i.i215, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i217 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i217, label %if.then.i218.rcu_read_lock.exit.i225_crit_edge, label %land.lhs.true.i.i221

if.then.i218.rcu_read_lock.exit.i225_crit_edge:   ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i225

land.lhs.true.i.i221:                             ; preds = %if.then.i218
  %call1.i.i219 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i219)
  %tobool.not.i.i220 = icmp eq i32 %call1.i.i219, 0
  br i1 %tobool.not.i.i220, label %land.lhs.true.i.i221.rcu_read_lock.exit.i225_crit_edge, label %land.lhs.true2.i.i223

land.lhs.true.i.i221.rcu_read_lock.exit.i225_crit_edge: ; preds = %land.lhs.true.i.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i225

land.lhs.true2.i.i223:                            ; preds = %land.lhs.true.i.i221
  %.b4.i.i222 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i222, label %land.lhs.true2.i.i223.rcu_read_lock.exit.i225_crit_edge, label %if.then.i.i224

land.lhs.true2.i.i223.rcu_read_lock.exit.i225_crit_edge: ; preds = %land.lhs.true2.i.i223
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i225

if.then.i.i224:                                   ; preds = %land.lhs.true2.i.i223
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit.i225

rcu_read_lock.exit.i225:                          ; preds = %if.then.i.i224, %land.lhs.true2.i.i223.rcu_read_lock.exit.i225_crit_edge, %land.lhs.true.i.i221.rcu_read_lock.exit.i225_crit_edge, %if.then.i218.rcu_read_lock.exit.i225_crit_edge
  %236 = ptrtoint ptr %s_group_desc.i207 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load volatile ptr, ptr %s_group_desc.i207, align 8
  %call10.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i226, label %rcu_read_lock.exit.i225.do.end18.i_crit_edge

rcu_read_lock.exit.i225.do.end18.i_crit_edge:     ; preds = %rcu_read_lock.exit.i225
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

land.lhs.true.i226:                               ; preds = %rcu_read_lock.exit.i225
  %call12.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i226.do.end18.i_crit_edge, label %land.lhs.true14.i

land.lhs.true.i226.do.end18.i_crit_edge:          ; preds = %land.lhs.true.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i226
  %.b76.i = load i1, ptr @ext4_add_new_descs.__warned, align 1
  br i1 %.b76.i, label %land.lhs.true14.i.do.end18.i_crit_edge, label %if.then16.i

land.lhs.true14.i.do.end18.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_add_new_descs.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1248, ptr noundef nonnull @.str.41) #11
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then16.i, %land.lhs.true14.i.do.end18.i_crit_edge, %land.lhs.true.i226.do.end18.i_crit_edge, %rcu_read_lock.exit.i225.do.end18.i_crit_edge
  %arrayidx.i = getelementptr ptr, ptr %237, i32 %div.i
  %238 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx.i, align 4
  %call.i79.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i79.i, label %do.end18.i.rcu_read_unlock.exit.i228_crit_edge, label %land.lhs.true.i82.i

do.end18.i.rcu_read_unlock.exit.i228_crit_edge:   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i228

land.lhs.true.i82.i:                              ; preds = %do.end18.i
  %call1.i80.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call1.i80.i, 0
  br i1 %tobool.not.i81.i, label %land.lhs.true.i82.i.rcu_read_unlock.exit.i228_crit_edge, label %land.lhs.true2.i84.i

land.lhs.true.i82.i.rcu_read_unlock.exit.i228_crit_edge: ; preds = %land.lhs.true.i82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i228

land.lhs.true2.i84.i:                             ; preds = %land.lhs.true.i82.i
  %.b4.i83.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83.i, label %land.lhs.true2.i84.i.rcu_read_unlock.exit.i228_crit_edge, label %if.then.i85.i

land.lhs.true2.i84.i.rcu_read_unlock.exit.i228_crit_edge: ; preds = %land.lhs.true2.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i228

if.then.i85.i:                                    ; preds = %land.lhs.true2.i84.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit.i228

rcu_read_unlock.exit.i228:                        ; preds = %if.then.i85.i, %land.lhs.true2.i84.i.rcu_read_unlock.exit.i228_crit_edge, %land.lhs.true.i82.i.rcu_read_unlock.exit.i228_crit_edge, %do.end18.i.rcu_read_unlock.exit.i228_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %240 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i86.i = and i32 %240, -16384
  %241 = inttoptr i32 %and.i.i.i.i.i86.i to ptr
  %preempt_count.i.i.i.i87.i = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %preempt_count.i.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %preempt_count.i.i.i.i87.i, align 4
  %sub.i.i.i.i227 = add i32 %243, -1
  store volatile i32 %sub.i.i.i.i227, ptr %preempt_count.i.i.i.i87.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call24.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_add_new_descs, i32 noundef 1251, ptr noundef %call43, ptr noundef %sb, ptr noundef %239, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true26.i, label %rcu_read_unlock.exit.i228.exit_journal.thread_crit_edge

rcu_read_unlock.exit.i228.exit_journal.thread_crit_edge: ; preds = %rcu_read_unlock.exit.i228
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal.thread

land.lhs.true26.i:                                ; preds = %rcu_read_unlock.exit.i228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i212)
  %tobool27.not.i = icmp eq i32 %cond.i212, 0
  br i1 %tobool27.not.i, label %land.lhs.true26.i.for.inc.i250_crit_edge, label %land.lhs.true28.i

land.lhs.true26.i.for.inc.i250_crit_edge:         ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i250

land.lhs.true28.i:                                ; preds = %land.lhs.true26.i
  %call29.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %group.addr.0193.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true28.i.for.inc.i250_crit_edge, label %if.then31.i

land.lhs.true28.i.for.inc.i250_crit_edge:         ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i250

if.then31.i:                                      ; preds = %land.lhs.true28.i
  %244 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i88.i = getelementptr inbounds %struct.super_block, ptr %245, i32 0, i32 33
  %246 = ptrtoint ptr %s_fs_info.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %s_fs_info.i.i88.i, align 16
  %s_es.i89.i = getelementptr inbounds %struct.ext4_sb_info, ptr %247, i32 0, i32 15
  %248 = ptrtoint ptr %s_es.i89.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %s_es.i89.i, align 4
  %s_reserved_gdt_blocks.i.i229 = getelementptr inbounds %struct.ext4_super_block, ptr %249, i32 0, i32 37
  %250 = ptrtoint ptr %s_reserved_gdt_blocks.i.i229 to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %s_reserved_gdt_blocks.i.i229, align 2
  %252 = call i16 @llvm.bswap.i16(i16 %251) #11
  %conv.i.i230 = zext i16 %252 to i32
  %s_cluster_bits.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %247, i32 0, i32 12
  %253 = ptrtoint ptr %s_cluster_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %s_cluster_bits.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i.i) #11
  %255 = ptrtoint ptr %iloc.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr inttoptr (i32 -1 to ptr), ptr %iloc.i.i, align 4, !annotation !184
  %256 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 -1, ptr %222, align 4, !annotation !184
  %257 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 -1, ptr %223, align 4, !annotation !184
  %258 = shl nuw nsw i32 %conv.i.i230, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %258, i32 noundef 3136) #16
  %tobool.not.i90.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i90.i, label %if.then31.i.reserve_backup_gdb.exit.i_crit_edge, label %if.end.i.i

if.then31.i.reserve_backup_gdb.exit.i_crit_edge:  ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reserve_backup_gdb.exit.i

if.end.i.i:                                       ; preds = %if.then31.i
  %259 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %add.ptr.i.i, align 4
  %261 = call i32 @llvm.bswap.i32(i32 %260) #11
  %conv4.i.i = zext i32 %261 to i64
  %call5.i.i231 = call ptr @ext4_sb_bread(ptr noundef %245, i64 noundef %conv4.i.i, i32 noundef 0) #11
  %cmp.i.i.i = icmp ugt ptr %call5.i.i231, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %262 = ptrtoint ptr %call5.i.i231 to i32
  br label %exit_free.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %b_data.i.i232 = getelementptr inbounds %struct.buffer_head, ptr %call5.i.i231, i32 0, i32 5
  %263 = ptrtoint ptr %b_data.i.i232 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %b_data.i.i232, align 4
  %s_blocksize.i.i233 = getelementptr inbounds %struct.super_block, ptr %245, i32 0, i32 3
  %265 = ptrtoint ptr %s_blocksize.i.i233 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %s_blocksize.i.i233, align 16
  %div176.i.i = lshr i32 %266, 2
  %add.ptr20.i.i = getelementptr i32, ptr %264, i32 %div176.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %251)
  %cmp218.not.i.i = icmp eq i16 %251, 0
  br i1 %cmp218.not.i.i, label %if.end9.i.i.for.end60.i.i_crit_edge, label %for.body.preheader.i.i

if.end9.i.i.for.end60.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end60.i.i

for.body.preheader.i.i:                           ; preds = %if.end9.i.i
  %267 = ptrtoint ptr %s_fs_info.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %s_fs_info.i.i88.i, align 16
  %s_gdb_count.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %268, i32 0, i32 6
  %269 = ptrtoint ptr %s_gdb_count.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %s_gdb_count.i.i, align 8
  %rem.i.i = urem i32 %270, %div176.i.i
  %add.ptr16.i.i = getelementptr i32, ptr %264, i32 %rem.i.i
  %s_sbh.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %268, i32 0, i32 14
  %271 = ptrtoint ptr %s_sbh.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %s_sbh.i.i, align 64
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %b_blocknr.i.i, align 8
  %conv12.i.i = zext i32 %270 to i64
  %add.i.i234 = add nuw nsw i64 %conv12.i.i, 1
  %add13.i.i = add i64 %add.i.i234, %274
  %umax.i.i = call i32 @llvm.umax.i32(i32 %conv.i.i230, i32 1) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %res.0221.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %data.0220.i.i = phi ptr [ %data.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr16.i.i, %for.body.preheader.i.i ]
  %blk.0219.i.i = phi i64 [ %inc48.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add13.i.i, %for.body.preheader.i.i ]
  %275 = ptrtoint ptr %data.0220.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %data.0220.i.i, align 4
  %277 = call i32 @llvm.bswap.i32(i32 %276) #11
  %conv22.i.i = zext i32 %277 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %blk.0219.i.i, i64 %conv22.i.i)
  %cmp23.not.i.i = icmp eq i64 %blk.0219.i.i, %conv22.i.i
  br i1 %cmp23.not.i.i, label %if.end27.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %278 = ptrtoint ptr %b_data.i.i232 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %b_data.i.i232, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %data.0220.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %279 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 2
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %245, ptr noundef nonnull @__func__.reserve_backup_gdb, i32 noundef 1038, ptr noundef nonnull @.str.42, i64 noundef %blk.0219.i.i, i32 noundef %sub.ptr.div.i.i) #11
  br label %exit_bh.i.i

if.end27.i.i:                                     ; preds = %for.body.i.i
  %call28.i.i = call ptr @ext4_sb_bread(ptr noundef %245, i64 noundef %blk.0219.i.i, i32 noundef 0) #11
  %arrayidx.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %res.0221.i.i
  %280 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call28.i.i, ptr %arrayidx.i.i, align 4
  %cmp.i181.i.i = icmp ugt ptr %call28.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.i.i, label %if.then31.i.i, label %if.end35.i.i

if.then31.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.le418 = getelementptr ptr, ptr %call8.i.i.i, i32 %res.0221.i.i
  %281 = ptrtoint ptr %call28.i.i to i32
  %282 = ptrtoint ptr %arrayidx.i.i.le418 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr null, ptr %arrayidx.i.i.le418, align 4
  br label %exit_bh.i.i

if.end35.i.i:                                     ; preds = %if.end27.i.i
  %call37.i.i = call fastcc i32 @verify_reserved_gdb(ptr noundef %245, i32 noundef %group.addr.0193.i, ptr noundef %call28.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end42.i.i

if.then40.i.i:                                    ; preds = %if.end35.i.i
  %arrayidx.i.i.le = getelementptr ptr, ptr %call8.i.i.i, i32 %res.0221.i.i
  %283 = ptrtoint ptr %arrayidx.i.i.le to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx.i.i.le, align 4
  %tobool.not.i.i.i235 = icmp eq ptr %284, null
  br i1 %tobool.not.i.i.i235, label %if.then40.i.i.exit_bh.i.i_crit_edge, label %if.then.i.i.i236

if.then40.i.i.exit_bh.i.i_crit_edge:              ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_bh.i.i

if.then.i.i.i236:                                 ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %284) #11
  br label %exit_bh.i.i

if.end42.i.i:                                     ; preds = %if.end35.i.i
  %incdec.ptr.i.i = getelementptr i32, ptr %data.0220.i.i, i32 1
  %cmp43.not.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr20.i.i
  br i1 %cmp43.not.i.i, label %if.end42.i.i.for.inc.i.i_crit_edge, label %if.then45.i.i

if.end42.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then45.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %285 = ptrtoint ptr %b_data.i.i232 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %b_data.i.i232, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then45.i.i, %if.end42.i.i.for.inc.i.i_crit_edge
  %data.1.i.i = phi ptr [ %286, %if.then45.i.i ], [ %incdec.ptr.i.i, %if.end42.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %res.0221.i.i, 1
  %inc48.i.i = add i64 %blk.0219.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i.i237_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.do.end.i.i237_crit_edge:              ; preds = %for.inc.i.i
  br label %do.end.i.i237

for.cond49.i.i:                                   ; preds = %do.end.i.i237
  %inc59.i.i = add nuw nsw i32 %i.0224.i.i, 1
  %exitcond246.not.i.i = icmp eq i32 %inc59.i.i, %umax.i.i
  br i1 %exitcond246.not.i.i, label %for.cond49.i.i.for.end60.i.i_crit_edge, label %for.cond49.i.i.do.end.i.i237_crit_edge

for.cond49.i.i.do.end.i.i237_crit_edge:           ; preds = %for.cond49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i237

for.cond49.i.i.for.end60.i.i_crit_edge:           ; preds = %for.cond49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end60.i.i

do.end.i.i237:                                    ; preds = %for.cond49.i.i.do.end.i.i237_crit_edge, %for.inc.i.i.do.end.i.i237_crit_edge
  %i.0224.i.i = phi i32 [ %inc59.i.i, %for.cond49.i.i.do.end.i.i237_crit_edge ], [ 0, %for.inc.i.i.do.end.i.i237_crit_edge ]
  %arrayidx53.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.0224.i.i
  %287 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %arrayidx53.i.i, align 4
  %call54.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.reserve_backup_gdb, i32 noundef 1061, ptr noundef %call43, ptr noundef %245, ptr noundef %288, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %tobool55.not.i.i = icmp eq i32 %call54.i.i, 0
  br i1 %tobool55.not.i.i, label %for.cond49.i.i, label %do.end.i.i237.exit_bh.i.i_crit_edge

do.end.i.i237.exit_bh.i.i_crit_edge:              ; preds = %do.end.i.i237
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_bh.i.i

for.end60.i.i:                                    ; preds = %for.cond49.i.i.for.end60.i.i_crit_edge, %if.end9.i.i.for.end60.i.i_crit_edge
  %res.0.lcssa252.i.i = phi i32 [ 0, %if.end9.i.i.for.end60.i.i_crit_edge ], [ %umax.i.i, %for.cond49.i.i.for.end60.i.i_crit_edge ]
  %gdbackups.0.lcssa251.i.i = phi i32 [ 0, %if.end9.i.i.for.end60.i.i_crit_edge ], [ %call37.i.i, %for.cond49.i.i.for.end60.i.i_crit_edge ]
  %call61.i.i = call i32 @ext4_reserve_inode_write(ptr noundef %call43, ptr noundef %resize_inode, ptr noundef nonnull %iloc.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %tobool62.not.i.i = icmp eq i32 %call61.i.i, 0
  br i1 %tobool62.not.i.i, label %if.end64.i.i, label %for.end60.i.i.exit_bh.i.i_crit_edge

for.end60.i.i.exit_bh.i.i_crit_edge:              ; preds = %for.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_bh.i.i

if.end64.i.i:                                     ; preds = %for.end60.i.i
  %289 = ptrtoint ptr %s_fs_info.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %s_fs_info.i.i88.i, align 16
  %s_blocks_per_group.i.i238 = getelementptr inbounds %struct.ext4_sb_info, ptr %290, i32 0, i32 2
  %291 = ptrtoint ptr %s_blocks_per_group.i.i238 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %s_blocks_per_group.i.i238, align 8
  %mul.i.i239 = mul i32 %292, %group.addr.0193.i
  br i1 %cmp218.not.i.i, label %if.end64.i.i.for.end85.i.i_crit_edge, label %for.body70.preheader.i.i

if.end64.i.i.for.end85.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85.i.i

for.body70.preheader.i.i:                         ; preds = %if.end64.i.i
  %umax247.i.i = call i32 @llvm.umax.i32(i32 %conv.i.i230, i32 1) #11
  br label %for.body70.i.i

for.body70.i.i:                                   ; preds = %for.body70.i.i.for.body70.i.i_crit_edge, %for.body70.preheader.i.i
  %err.0227.i.i = phi i32 [ %spec.select.i.i, %for.body70.i.i.for.body70.i.i_crit_edge ], [ 0, %for.body70.preheader.i.i ]
  %i.1226.i.i = phi i32 [ %inc84.i.i, %for.body70.i.i.for.body70.i.i_crit_edge ], [ 0, %for.body70.preheader.i.i ]
  %arrayidx71.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %i.1226.i.i
  %293 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx71.i.i, align 4
  %b_data72.i.i = getelementptr inbounds %struct.buffer_head, ptr %294, i32 0, i32 5
  %295 = ptrtoint ptr %b_data72.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %b_data72.i.i, align 4
  %b_blocknr74.i.i = getelementptr inbounds %struct.buffer_head, ptr %294, i32 0, i32 3
  %297 = ptrtoint ptr %b_blocknr74.i.i to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %b_blocknr74.i.i, align 8
  %299 = trunc i64 %298 to i32
  %conv76.i.i = add i32 %mul.i.i239, %299
  %300 = call i32 @llvm.bswap.i32(i32 %conv76.i.i) #11
  %arrayidx77.i.i = getelementptr i32, ptr %296, i32 %gdbackups.0.lcssa251.i.i
  %301 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %300, ptr %arrayidx77.i.i, align 4
  %302 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx71.i.i, align 4
  %call79.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.reserve_backup_gdb, i32 noundef 1080, ptr noundef %call43, ptr noundef null, ptr noundef %303) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0227.i.i)
  %tobool80.not.i.i = icmp eq i32 %err.0227.i.i, 0
  %spec.select.i.i = select i1 %tobool80.not.i.i, i32 %call79.i.i, i32 %err.0227.i.i
  %inc84.i.i = add nuw nsw i32 %i.1226.i.i, 1
  %exitcond248.not.i.i = icmp eq i32 %inc84.i.i, %umax247.i.i
  br i1 %exitcond248.not.i.i, label %for.body70.i.i.for.end85.i.i_crit_edge, label %for.body70.i.i.for.body70.i.i_crit_edge

for.body70.i.i.for.body70.i.i_crit_edge:          ; preds = %for.body70.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body70.i.i

for.body70.i.i.for.end85.i.i_crit_edge:           ; preds = %for.body70.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end85.i.i

for.end85.i.i:                                    ; preds = %for.body70.i.i.for.end85.i.i_crit_edge, %if.end64.i.i.for.end85.i.i_crit_edge
  %err.0.lcssa.i.i = phi i32 [ 0, %if.end64.i.i.for.end85.i.i_crit_edge ], [ %spec.select.i.i, %for.body70.i.i.for.end85.i.i_crit_edge ]
  %304 = ptrtoint ptr %s_blocksize.i.i233 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %s_blocksize.i.i233, align 16
  %mul87.i.i = mul i32 %305, %conv.i.i230
  %sub.i.i240 = sub i32 9, %254
  %shr.i.i = lshr i32 %mul87.i.i, %sub.i.i240
  %conv88.i.i = zext i32 %shr.i.i to i64
  %306 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %i_blocks.i.i, align 8
  %add89.i.i = add i64 %307, %conv88.i.i
  store i64 %add89.i.i, ptr %i_blocks.i.i, align 8
  %call90.i.i = call i32 @ext4_mark_iloc_dirty(ptr noundef %call43, ptr noundef %resize_inode, ptr noundef nonnull %iloc.i.i) #11
  br label %exit_bh.i.i

exit_bh.i.i:                                      ; preds = %for.end85.i.i, %for.end60.i.i.exit_bh.i.i_crit_edge, %do.end.i.i237.exit_bh.i.i_crit_edge, %if.then.i.i.i236, %if.then40.i.i.exit_bh.i.i_crit_edge, %if.then31.i.i, %if.then25.i.i
  %res.0203.i.i = phi i32 [ %res.0221.i.i, %if.then25.i.i ], [ %res.0221.i.i, %if.then31.i.i ], [ %res.0.lcssa252.i.i, %for.end60.i.i.exit_bh.i.i_crit_edge ], [ %res.0.lcssa252.i.i, %for.end85.i.i ], [ %res.0221.i.i, %if.then40.i.i.exit_bh.i.i_crit_edge ], [ %res.0221.i.i, %if.then.i.i.i236 ], [ %umax.i.i, %do.end.i.i237.exit_bh.i.i_crit_edge ]
  %err.2.i.i = phi i32 [ -22, %if.then25.i.i ], [ %281, %if.then31.i.i ], [ %call61.i.i, %for.end60.i.i.exit_bh.i.i_crit_edge ], [ %err.0.lcssa.i.i, %for.end85.i.i ], [ %call37.i.i, %if.then40.i.i.exit_bh.i.i_crit_edge ], [ %call37.i.i, %if.then.i.i.i236 ], [ %call54.i.i, %do.end.i.i237.exit_bh.i.i_crit_edge ]
  %dec229.i.i = add i32 %res.0203.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec229.i.i)
  %cmp91230.i.i = icmp sgt i32 %dec229.i.i, -1
  br i1 %cmp91230.i.i, label %exit_bh.i.i.while.body.i.i_crit_edge, label %exit_bh.i.i.while.end.i.i_crit_edge

exit_bh.i.i.while.end.i.i_crit_edge:              ; preds = %exit_bh.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

exit_bh.i.i.while.body.i.i_crit_edge:             ; preds = %exit_bh.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %brelse.exit187.i.i.while.body.i.i_crit_edge, %exit_bh.i.i.while.body.i.i_crit_edge
  %dec231.i.i = phi i32 [ %dec.i.i, %brelse.exit187.i.i.while.body.i.i_crit_edge ], [ %dec229.i.i, %exit_bh.i.i.while.body.i.i_crit_edge ]
  %arrayidx93.i.i = getelementptr ptr, ptr %call8.i.i.i, i32 %dec231.i.i
  %308 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx93.i.i, align 4
  %tobool.not.i184.i.i = icmp eq ptr %309, null
  br i1 %tobool.not.i184.i.i, label %while.body.i.i.brelse.exit187.i.i_crit_edge, label %if.then.i185.i.i

while.body.i.i.brelse.exit187.i.i_crit_edge:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit187.i.i

if.then.i185.i.i:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %309) #11
  br label %brelse.exit187.i.i

brelse.exit187.i.i:                               ; preds = %if.then.i185.i.i, %while.body.i.i.brelse.exit187.i.i_crit_edge
  %dec.i.i = add nsw i32 %dec231.i.i, -1
  %cmp91.i.i = icmp sgt i32 %dec231.i.i, 0
  br i1 %cmp91.i.i, label %brelse.exit187.i.i.while.body.i.i_crit_edge, label %brelse.exit187.i.i.while.end.i.i_crit_edge

brelse.exit187.i.i.while.end.i.i_crit_edge:       ; preds = %brelse.exit187.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

brelse.exit187.i.i.while.body.i.i_crit_edge:      ; preds = %brelse.exit187.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %brelse.exit187.i.i.while.end.i.i_crit_edge, %exit_bh.i.i.while.end.i.i_crit_edge
  %tobool.not.i188.i.i = icmp eq ptr %call5.i.i231, null
  br i1 %tobool.not.i188.i.i, label %while.end.i.i.exit_free.i.i_crit_edge, label %if.then.i189.i.i

while.end.i.i.exit_free.i.i_crit_edge:            ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_free.i.i

if.then.i189.i.i:                                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call5.i.i231) #11
  br label %exit_free.i.i

exit_free.i.i:                                    ; preds = %if.then.i189.i.i, %while.end.i.i.exit_free.i.i_crit_edge, %if.then7.i.i
  %err.3.i.i = phi i32 [ %262, %if.then7.i.i ], [ %err.2.i.i, %while.end.i.i.exit_free.i.i_crit_edge ], [ %err.2.i.i, %if.then.i189.i.i ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %reserve_backup_gdb.exit.i

reserve_backup_gdb.exit.i:                        ; preds = %exit_free.i.i, %if.then31.i.reserve_backup_gdb.exit.i_crit_edge
  %retval.0.i.i241 = phi i32 [ %err.3.i.i, %exit_free.i.i ], [ -12, %if.then31.i.reserve_backup_gdb.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i.i) #11
  br label %if.end41.i

if.else.i:                                        ; preds = %cond.end.i
  br i1 %cmp.i.not.i205, label %if.else38.i, label %if.then36.i

if.then36.i:                                      ; preds = %if.else.i
  %s_desc_per_block_bits.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %228, i32 0, i32 28
  %310 = ptrtoint ptr %s_desc_per_block_bits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %s_desc_per_block_bits.i.i.i.i, align 128
  %312 = shl nsw i32 -1, %311
  %shl.i.i.i.i = and i32 %312, %group.addr.0193.i
  %conv.i.i.i.i = zext i32 %shl.i.i.i.i to i64
  %s_blocks_per_group.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %228, i32 0, i32 2
  %313 = ptrtoint ptr %s_blocks_per_group.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %s_blocks_per_group.i.i.i.i, align 8
  %conv1.i.i.i.i = zext i32 %314 to i64
  %mul.i.i.i.i = mul nuw i64 %conv.i.i.i.i, %conv1.i.i.i.i
  %s_es.i.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %228, i32 0, i32 15
  %315 = ptrtoint ptr %s_es.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %s_es.i.i.i.i, align 4
  %s_first_data_block.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %316, i32 0, i32 5
  %317 = ptrtoint ptr %s_first_data_block.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %s_first_data_block.i.i.i.i, align 4
  %319 = call i32 @llvm.bswap.i32(i32 %318) #11
  %conv3.i.i.i.i = zext i32 %319 to i64
  %add.i.i.i92.i = add nuw i64 %mul.i.i.i.i, %conv3.i.i.i.i
  %call2.i.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.addr.0193.i) #11
  %conv.i93.i = sext i32 %call2.i.i to i64
  %add.i94.i = add i64 %add.i.i.i92.i, %conv.i93.i
  %call3.i.i = call ptr @ext4_sb_bread(ptr noundef %sb, i64 noundef %add.i94.i, i32 noundef 0) #11
  %cmp.i.i95.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i95.i, label %if.then.i96.i, label %if.end.i99.i

if.then.i96.i:                                    ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %320 = ptrtoint ptr %call3.i.i to i32
  br label %if.end41.i

if.end.i99.i:                                     ; preds = %if.then36.i
  %add6.i.i = add i32 %div.i, 1
  %mul.i97.i = shl i32 %add6.i.i, 2
  %call.i108.i.i = call noalias ptr @kvmalloc_node(i32 noundef %mul.i97.i, i32 noundef 3264, i32 noundef -1) #16
  %tobool.not.i98.i = icmp eq ptr %call.i108.i.i, null
  br i1 %tobool.not.i98.i, label %if.then8.i.i, label %if.end10.i.i

if.then8.i.i:                                     ; preds = %if.end.i99.i
  %tobool.not.i109.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i109.i.i, label %if.then8.i.i.brelse.exit.i.i242_crit_edge, label %if.then.i110.i.i

if.then8.i.i.brelse.exit.i.i242_crit_edge:        ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i.i242

if.then.i110.i.i:                                 ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call3.i.i) #11
  br label %brelse.exit.i.i242

brelse.exit.i.i242:                               ; preds = %if.then.i110.i.i, %if.then8.i.i.brelse.exit.i.i242_crit_edge
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.add_new_gdb_meta_bg, i32 noundef 962, ptr noundef nonnull @.str.44, i32 noundef %add6.i.i) #11
  br label %exit_journal.thread

if.end10.i.i:                                     ; preds = %if.end.i99.i
  %321 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i.i.i = and i32 %321, -16384
  %322 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %324, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i243 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i243, label %if.end10.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i101.i

if.end10.i.i.rcu_read_lock.exit.i.i_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i101.i:                           ; preds = %if.end10.i.i
  %call1.i.i.i244 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i244)
  %tobool.not.i.i100.i = icmp eq i32 %call1.i.i.i244, 0
  br i1 %tobool.not.i.i100.i, label %land.lhs.true.i.i101.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i101.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i101.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i102.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i102.i:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i102.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i101.i.rcu_read_lock.exit.i.i_crit_edge, %if.end10.i.i.rcu_read_lock.exit.i.i_crit_edge
  %325 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %s_fs_info.i, align 16
  %s_group_desc.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %326, i32 0, i32 16
  %327 = ptrtoint ptr %s_group_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile ptr, ptr %s_group_desc.i.i, align 8
  %call13.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true.i103.i, label %rcu_read_lock.exit.i.i.do.end22.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end22.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i.i

land.lhs.true.i103.i:                             ; preds = %rcu_read_lock.exit.i.i
  %call15.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true.i103.i.do.end22.i.i_crit_edge, label %land.lhs.true17.i.i

land.lhs.true.i103.i.do.end22.i.i_crit_edge:      ; preds = %land.lhs.true.i103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i.i

land.lhs.true17.i.i:                              ; preds = %land.lhs.true.i103.i
  %.b107.i.i = load i1, ptr @add_new_gdb_meta_bg.__warned, align 1
  br i1 %.b107.i.i, label %land.lhs.true17.i.i.do.end22.i.i_crit_edge, label %if.then19.i.i

land.lhs.true17.i.i.do.end22.i.i_crit_edge:       ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @add_new_gdb_meta_bg.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 967, ptr noundef nonnull @.str.41) #11
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.then19.i.i, %land.lhs.true17.i.i.do.end22.i.i_crit_edge, %land.lhs.true.i103.i.do.end22.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end22.i.i_crit_edge
  %329 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %s_fs_info.i, align 16
  %s_gdb_count.i104.i = getelementptr inbounds %struct.ext4_sb_info, ptr %330, i32 0, i32 6
  %331 = ptrtoint ptr %s_gdb_count.i104.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %s_gdb_count.i104.i, align 8
  %mul25.i.i = shl i32 %332, 2
  %333 = call ptr @memcpy(ptr %call.i108.i.i, ptr %328, i32 %mul25.i.i)
  %call.i113.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i113.i.i, label %do.end22.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i116.i.i

do.end22.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i116.i.i:                           ; preds = %do.end22.i.i
  %call1.i114.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114.i.i)
  %tobool.not.i115.i.i = icmp eq i32 %call1.i114.i.i, 0
  br i1 %tobool.not.i115.i.i, label %land.lhs.true.i116.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i118.i.i

land.lhs.true.i116.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i116.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i118.i.i:                          ; preds = %land.lhs.true.i116.i.i
  %.b4.i117.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117.i.i, label %land.lhs.true2.i118.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i119.i.i

land.lhs.true2.i118.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i118.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i119.i.i:                                 ; preds = %land.lhs.true2.i118.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i119.i.i, %land.lhs.true2.i118.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i116.i.i.rcu_read_unlock.exit.i.i_crit_edge, %do.end22.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %334 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i120.i.i = and i32 %334, -16384
  %335 = inttoptr i32 %and.i.i.i.i.i120.i.i to ptr
  %preempt_count.i.i.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %preempt_count.i.i.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile i32, ptr %preempt_count.i.i.i.i121.i.i, align 4
  %sub.i.i.i.i.i = add i32 %337, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i121.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %arrayidx.i105.i = getelementptr ptr, ptr %call.i108.i.i, i32 %div.i
  %338 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %call3.i.i, ptr %arrayidx.i105.i, align 4
  %call29.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.add_new_gdb_meta_bg, i32 noundef 974, ptr noundef %call43, ptr noundef %sb, ptr noundef %call3.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.body33.i.i, label %if.then31.i106.i

if.then31.i106.i:                                 ; preds = %rcu_read_unlock.exit.i.i
  call void @kvfree(ptr noundef nonnull %call.i108.i.i) #11
  %tobool.not.i122.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i122.i.i, label %if.then31.i106.i.exit_journal.thread_crit_edge, label %if.then.i123.i.i

if.then31.i106.i.exit_journal.thread_crit_edge:   ; preds = %if.then31.i106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal.thread

if.then.i123.i.i:                                 ; preds = %if.then31.i106.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call3.i.i) #11
  br label %exit_journal.thread

do.body33.i.i:                                    ; preds = %rcu_read_unlock.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !194
  %339 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %s_fs_info.i, align 16
  %s_group_desc62.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %340, i32 0, i32 16
  %341 = ptrtoint ptr %s_group_desc62.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store volatile ptr %call.i108.i.i, ptr %s_group_desc62.i.i, align 8
  %342 = load ptr, ptr %s_fs_info.i, align 16
  %s_gdb_count75.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %342, i32 0, i32 6
  %343 = ptrtoint ptr %s_gdb_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %s_gdb_count75.i.i, align 8
  %inc.i107.i = add i32 %344, 1
  store i32 %inc.i107.i, ptr %s_gdb_count75.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %345 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %345, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i127.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i127.i.i, label %if.end.i.i.i, label %if.then.i128.i.i

if.then.i128.i.i:                                 ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ptr1.i.i.i = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %346 = ptrtoint ptr %ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %328, ptr %ptr1.i.i.i, align 8
  call void @call_rcu(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @ext4_rcu_ptr_callback) #11
  br label %for.inc.i250

if.end.i.i.i:                                     ; preds = %do.body33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @synchronize_rcu() #11
  call void @kvfree(ptr noundef %328) #11
  br label %for.inc.i250

if.else38.i:                                      ; preds = %if.else.i
  %347 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i111.i = getelementptr inbounds %struct.super_block, ptr %348, i32 0, i32 33
  %349 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_es.i112.i = getelementptr inbounds %struct.ext4_sb_info, ptr %350, i32 0, i32 15
  %351 = ptrtoint ptr %s_es.i112.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %s_es.i112.i, align 4
  %s_desc_per_block.i113.i = getelementptr inbounds %struct.ext4_sb_info, ptr %350, i32 0, i32 7
  %353 = ptrtoint ptr %s_desc_per_block.i113.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %s_desc_per_block.i113.i, align 4
  %div.i114.i = udiv i32 %group.addr.0193.i, %354
  %s_sbh.i115.i = getelementptr inbounds %struct.ext4_sb_info, ptr %350, i32 0, i32 14
  %355 = ptrtoint ptr %s_sbh.i115.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %s_sbh.i115.i, align 64
  %b_blocknr.i116.i = getelementptr inbounds %struct.buffer_head, ptr %356, i32 0, i32 3
  %357 = ptrtoint ptr %b_blocknr.i116.i to i32
  call void @__asan_load8_noabort(i32 %357)
  %358 = load i64, ptr %b_blocknr.i116.i, align 8
  %conv.i117.i = zext i32 %div.i114.i to i64
  %add.i118.i = add nuw nsw i64 %conv.i117.i, 1
  %add3.i.i245 = add i64 %add.i118.i, %358
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iloc.i109.i) #11
  %359 = call ptr @memset(ptr %iloc.i109.i, i32 0, i32 12)
  %s_mount_opt.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %350, i32 0, i32 17
  %360 = ptrtoint ptr %s_mount_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %s_mount_opt.i.i, align 4
  %and.i119.i = and i32 %361, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119.i)
  %tobool.not.i120.i = icmp eq i32 %and.i119.i, 0
  br i1 %tobool.not.i120.i, label %if.else38.i.if.end.i124.i_crit_edge, label %do.end.i122.i

if.else38.i.if.end.i124.i_crit_edge:              ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i124.i

do.end.i122.i:                                    ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %div.i114.i) #15
  br label %if.end.i124.i

if.end.i124.i:                                    ; preds = %do.end.i122.i, %if.else38.i.if.end.i124.i_crit_edge
  %call6.i.i = call ptr @ext4_sb_bread(ptr noundef %348, i64 noundef %add3.i.i245, i32 noundef 0) #11
  %cmp.i.i123.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i123.i, label %if.then8.i125.i, label %if.end10.i127.i

if.then8.i125.i:                                  ; preds = %if.end.i124.i
  call void @__sanitizer_cov_trace_pc() #13
  %362 = ptrtoint ptr %call6.i.i to i32
  br label %add_new_gdb.exit.i

if.end10.i127.i:                                  ; preds = %if.end.i124.i
  %call11.i.i = call fastcc i32 @verify_reserved_gdb(ptr noundef %348, i32 noundef %group.addr.0193.i, ptr noundef %call6.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp.i126.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp.i126.i, label %if.end10.i127.i.errout.i.i_crit_edge, label %if.end14.i.i

if.end10.i127.i.errout.i.i_crit_edge:             ; preds = %if.end10.i127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i.i

if.end14.i.i:                                     ; preds = %if.end10.i127.i
  %363 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %add.ptr.i.i, align 4
  %365 = call i32 @llvm.bswap.i32(i32 %364) #11
  %conv16.i.i = zext i32 %365 to i64
  %call17.i.i = call ptr @ext4_sb_bread(ptr noundef %348, i64 noundef %conv16.i.i, i32 noundef 0) #11
  %cmp.i319.i.i = icmp ugt ptr %call17.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i319.i.i, label %if.then19.i129.i, label %if.end21.i.i

if.then19.i129.i:                                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %366 = ptrtoint ptr %call17.i.i to i32
  br label %errout.i.i

if.end21.i.i:                                     ; preds = %if.end14.i.i
  %b_data.i130.i = getelementptr inbounds %struct.buffer_head, ptr %call17.i.i, i32 0, i32 5
  %367 = ptrtoint ptr %b_data.i130.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %b_data.i130.i, align 4
  %s_blocksize.i131.i = getelementptr inbounds %struct.super_block, ptr %348, i32 0, i32 3
  %369 = ptrtoint ptr %s_blocksize.i131.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %s_blocksize.i131.i, align 16
  %div22313.i.i = lshr i32 %370, 2
  %rem.i132.i = urem i32 %div.i114.i, %div22313.i.i
  %arrayidx.i133.i = getelementptr i32, ptr %368, i32 %rem.i132.i
  %371 = ptrtoint ptr %arrayidx.i133.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %arrayidx.i133.i, align 4
  %373 = call i32 @llvm.bswap.i32(i32 %372) #11
  %conv23.i.i = zext i32 %373 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add3.i.i245, i64 %conv23.i.i)
  %cmp24.not.i.i = icmp eq i64 %add3.i.i245, %conv23.i.i
  br i1 %cmp24.not.i.i, label %do.end30.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %348, ptr noundef nonnull @.str.46, i32 noundef 848, ptr noundef nonnull @.str.47, i32 noundef %group.addr.0193.i, i64 noundef %add3.i.i245) #11
  br label %errout.i.i

do.end30.i.i:                                     ; preds = %if.end21.i.i
  %374 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_sbh32.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %375, i32 0, i32 14
  %376 = ptrtoint ptr %s_sbh32.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %s_sbh32.i.i, align 64
  %call33.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @.str.46, i32 noundef 855, ptr noundef %call43, ptr noundef %348, ptr noundef %377, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %do.end41.i.i, label %do.end30.i.i.errout.i.i_crit_edge, !prof !187

do.end30.i.i.errout.i.i_crit_edge:                ; preds = %do.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i.i

do.end41.i.i:                                     ; preds = %do.end30.i.i
  %call42.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @.str.46, i32 noundef 860, ptr noundef %call43, ptr noundef %348, ptr noundef %call6.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %do.end54.i.i, label %do.end41.i.i.errout.i.i_crit_edge, !prof !187

do.end41.i.i.errout.i.i_crit_edge:                ; preds = %do.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i.i

do.end54.i.i:                                     ; preds = %do.end41.i.i
  %call55.i.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @.str.46, i32 noundef 865, ptr noundef %call43, ptr noundef %348, ptr noundef %call17.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end70.i.i, label %if.then66.i.i, !prof !187

if.then66.i.i:                                    ; preds = %do.end54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %348, ptr noundef nonnull @.str.46, i32 noundef 867, i32 noundef %call55.i.i) #11
  br label %errout.i.i

if.end70.i.i:                                     ; preds = %do.end54.i.i
  %call71.i.i = call i32 @ext4_reserve_inode_write(ptr noundef %call43, ptr noundef %resize_inode, ptr noundef nonnull %iloc.i109.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.i)
  %tobool72.not.i.i = icmp eq i32 %call71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end80.i.i, label %if.end70.i.i.errout.i.i_crit_edge, !prof !187

if.end70.i.i.errout.i.i_crit_edge:                ; preds = %if.end70.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i.i

if.end80.i.i:                                     ; preds = %if.end70.i.i
  %add81.i.i = add i32 %div.i114.i, 1
  %mul.i134.i = shl i32 %add81.i.i, 2
  %call.i321.i.i = call noalias ptr @kvmalloc_node(i32 noundef %mul.i134.i, i32 noundef 3264, i32 noundef -1) #16
  %tobool83.not.i.i = icmp eq ptr %call.i321.i.i, null
  br i1 %tobool83.not.i.i, label %if.then84.i.i, label %if.end86.i.i

if.then84.i.i:                                    ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %348, ptr noundef nonnull @.str.46, i32 noundef 881, ptr noundef nonnull @.str.44, i32 noundef %add81.i.i) #11
  br label %errout.i.i

if.end86.i.i:                                     ; preds = %if.end80.i.i
  %378 = ptrtoint ptr %s_blocksize.i131.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %s_blocksize.i131.i, align 16
  %div88314.i.i = lshr i32 %379, 2
  %rem89.i.i = urem i32 %div.i114.i, %div88314.i.i
  %arrayidx90.i.i = getelementptr i32, ptr %368, i32 %rem89.i.i
  %380 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 0, ptr %arrayidx90.i.i, align 4
  %call91.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @.str.46, i32 noundef 895, ptr noundef %call43, ptr noundef null, ptr noundef %call17.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i.i)
  %tobool92.not.i.i = icmp eq i32 %call91.i.i, 0
  br i1 %tobool92.not.i.i, label %if.end106.i.i, label %if.then102.i.i, !prof !187

if.then102.i.i:                                   ; preds = %if.end86.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %348, ptr noundef nonnull @.str.46, i32 noundef 897, i32 noundef %call91.i.i) #11
  br label %errout.i.i

if.end106.i.i:                                    ; preds = %if.end86.i.i
  %add107.i.i = add nuw i32 %call11.i.i, 1
  %381 = ptrtoint ptr %s_blocksize.i131.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %s_blocksize.i131.i, align 16
  %mul109.i.i = mul i32 %382, %add107.i.i
  %383 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_cluster_bits.i135.i = getelementptr inbounds %struct.ext4_sb_info, ptr %384, i32 0, i32 12
  %385 = ptrtoint ptr %s_cluster_bits.i135.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %s_cluster_bits.i135.i, align 16
  %sub.i136.i = sub i32 9, %386
  %shr.i137.i = lshr i32 %mul109.i.i, %sub.i136.i
  %conv111.i.i = zext i32 %shr.i137.i to i64
  %387 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %i_blocks.i.i, align 8
  %sub112.i.i = sub i64 %388, %conv111.i.i
  store i64 %sub112.i.i, ptr %i_blocks.i.i, align 8
  %call113.i.i = call i32 @ext4_mark_iloc_dirty(ptr noundef %call43, ptr noundef %resize_inode, ptr noundef nonnull %iloc.i109.i) #11
  %b_data114.i.i = getelementptr inbounds %struct.buffer_head, ptr %call6.i.i, i32 0, i32 5
  %389 = ptrtoint ptr %b_data114.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %b_data114.i.i, align 4
  %391 = ptrtoint ptr %s_blocksize.i131.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %s_blocksize.i131.i, align 16
  %393 = call ptr @memset(ptr %390, i32 0, i32 %392)
  %call116.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @.str.46, i32 noundef 904, ptr noundef %call43, ptr noundef null, ptr noundef %call6.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i.i)
  %tobool117.not.i.i = icmp eq i32 %call116.i.i, 0
  br i1 %tobool117.not.i.i, label %if.end131.i.i, label %if.then127.i.i, !prof !187

if.then127.i.i:                                   ; preds = %if.end106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %348, ptr noundef nonnull @.str.46, i32 noundef 906, i32 noundef %call116.i.i) #11
  %394 = ptrtoint ptr %iloc.i109.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr null, ptr %iloc.i109.i, align 4
  br label %errout.i.i

if.end131.i.i:                                    ; preds = %if.end106.i.i
  %tobool.not.i323.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool.not.i323.i.i, label %if.end131.i.i.brelse.exit.i143.i_crit_edge, label %if.then.i324.i.i

if.end131.i.i.brelse.exit.i143.i_crit_edge:       ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i143.i

if.then.i324.i.i:                                 ; preds = %if.end131.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call17.i.i) #11
  br label %brelse.exit.i143.i

brelse.exit.i143.i:                               ; preds = %if.then.i324.i.i, %if.end131.i.i.brelse.exit.i143.i_crit_edge
  %395 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i.i139.i = and i32 %395, -16384
  %396 = inttoptr i32 %and.i.i.i.i.i.i139.i to ptr
  %preempt_count.i.i.i.i.i140.i = getelementptr inbounds %struct.thread_info, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %preempt_count.i.i.i.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load volatile i32, ptr %preempt_count.i.i.i.i.i140.i, align 4
  %add.i.i.i.i141.i = add i32 %398, 1
  store volatile i32 %add.i.i.i.i141.i, ptr %preempt_count.i.i.i.i.i140.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i142.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i142.i, label %brelse.exit.i143.i.rcu_read_lock.exit.i151.i_crit_edge, label %land.lhs.true.i.i146.i

brelse.exit.i143.i.rcu_read_lock.exit.i151.i_crit_edge: ; preds = %brelse.exit.i143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i151.i

land.lhs.true.i.i146.i:                           ; preds = %brelse.exit.i143.i
  %call1.i.i144.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i144.i)
  %tobool.not.i.i145.i = icmp eq i32 %call1.i.i144.i, 0
  br i1 %tobool.not.i.i145.i, label %land.lhs.true.i.i146.i.rcu_read_lock.exit.i151.i_crit_edge, label %land.lhs.true2.i.i148.i

land.lhs.true.i.i146.i.rcu_read_lock.exit.i151.i_crit_edge: ; preds = %land.lhs.true.i.i146.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i151.i

land.lhs.true2.i.i148.i:                          ; preds = %land.lhs.true.i.i146.i
  %.b4.i.i147.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i147.i, label %land.lhs.true2.i.i148.i.rcu_read_lock.exit.i151.i_crit_edge, label %if.then.i.i149.i

land.lhs.true2.i.i148.i.rcu_read_lock.exit.i151.i_crit_edge: ; preds = %land.lhs.true2.i.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i151.i

if.then.i.i149.i:                                 ; preds = %land.lhs.true2.i.i148.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit.i151.i

rcu_read_lock.exit.i151.i:                        ; preds = %if.then.i.i149.i, %land.lhs.true2.i.i148.i.rcu_read_lock.exit.i151.i_crit_edge, %land.lhs.true.i.i146.i.rcu_read_lock.exit.i151.i_crit_edge, %brelse.exit.i143.i.rcu_read_lock.exit.i151.i_crit_edge
  %399 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_group_desc.i150.i = getelementptr inbounds %struct.ext4_sb_info, ptr %400, i32 0, i32 16
  %401 = ptrtoint ptr %s_group_desc.i150.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load volatile ptr, ptr %s_group_desc.i150.i, align 8
  %call138.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i.i)
  %tobool139.not.i.i = icmp eq i32 %call138.i.i, 0
  br i1 %tobool139.not.i.i, label %land.lhs.true.i152.i, label %rcu_read_lock.exit.i151.i.do.end147.i.i_crit_edge

rcu_read_lock.exit.i151.i.do.end147.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

land.lhs.true.i152.i:                             ; preds = %rcu_read_lock.exit.i151.i
  %call140.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true.i152.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true.i152.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true.i152.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true.i152.i
  %.b315.i.i = load i1, ptr @add_new_gdb.__warned, align 1
  br i1 %.b315.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @add_new_gdb.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 913, ptr noundef nonnull @.str.41) #11
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true.i152.i.do.end147.i.i_crit_edge, %rcu_read_lock.exit.i151.i.do.end147.i.i_crit_edge
  %403 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_gdb_count.i153.i = getelementptr inbounds %struct.ext4_sb_info, ptr %404, i32 0, i32 6
  %405 = ptrtoint ptr %s_gdb_count.i153.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %s_gdb_count.i153.i, align 8
  %mul150.i.i = shl i32 %406, 2
  %407 = call ptr @memcpy(ptr %call.i321.i.i, ptr %402, i32 %mul150.i.i)
  %call.i327.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i327.i.i, label %do.end147.i.i.rcu_read_unlock.exit.i157.i_crit_edge, label %land.lhs.true.i330.i.i

do.end147.i.i.rcu_read_unlock.exit.i157.i_crit_edge: ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i157.i

land.lhs.true.i330.i.i:                           ; preds = %do.end147.i.i
  %call1.i328.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i328.i.i)
  %tobool.not.i329.i.i = icmp eq i32 %call1.i328.i.i, 0
  br i1 %tobool.not.i329.i.i, label %land.lhs.true.i330.i.i.rcu_read_unlock.exit.i157.i_crit_edge, label %land.lhs.true2.i332.i.i

land.lhs.true.i330.i.i.rcu_read_unlock.exit.i157.i_crit_edge: ; preds = %land.lhs.true.i330.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i157.i

land.lhs.true2.i332.i.i:                          ; preds = %land.lhs.true.i330.i.i
  %.b4.i331.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i331.i.i, label %land.lhs.true2.i332.i.i.rcu_read_unlock.exit.i157.i_crit_edge, label %if.then.i333.i.i

land.lhs.true2.i332.i.i.rcu_read_unlock.exit.i157.i_crit_edge: ; preds = %land.lhs.true2.i332.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i157.i

if.then.i333.i.i:                                 ; preds = %land.lhs.true2.i332.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit.i157.i

rcu_read_unlock.exit.i157.i:                      ; preds = %if.then.i333.i.i, %land.lhs.true2.i332.i.i.rcu_read_unlock.exit.i157.i_crit_edge, %land.lhs.true.i330.i.i.rcu_read_unlock.exit.i157.i_crit_edge, %do.end147.i.i.rcu_read_unlock.exit.i157.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %408 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i334.i.i = and i32 %408, -16384
  %409 = inttoptr i32 %and.i.i.i.i.i334.i.i to ptr
  %preempt_count.i.i.i.i335.i.i = getelementptr inbounds %struct.thread_info, ptr %409, i32 0, i32 1
  %410 = ptrtoint ptr %preempt_count.i.i.i.i335.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load volatile i32, ptr %preempt_count.i.i.i.i335.i.i, align 4
  %sub.i.i.i.i154.i = add i32 %411, -1
  store volatile i32 %sub.i.i.i.i154.i, ptr %preempt_count.i.i.i.i335.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %arrayidx151.i.i = getelementptr ptr, ptr %call.i321.i.i, i32 %div.i114.i
  %412 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %call6.i.i, ptr %arrayidx151.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  %413 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_group_desc182.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %414, i32 0, i32 16
  %415 = ptrtoint ptr %s_group_desc182.i.i to i32
  call void @__asan_store4_noabort(i32 %415)
  store volatile ptr %call.i321.i.i, ptr %s_group_desc182.i.i, align 8
  %416 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_gdb_count195.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %416, i32 0, i32 6
  %417 = ptrtoint ptr %s_gdb_count195.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %s_gdb_count195.i.i, align 8
  %inc.i155.i = add i32 %418, 1
  store i32 %inc.i155.i, ptr %s_gdb_count195.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %419 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i156.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %419, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i338.i.i = icmp eq ptr %call7.i.i.i.i156.i, null
  br i1 %tobool.not.i338.i.i, label %if.end.i.i159.i, label %if.then.i339.i.i

if.then.i339.i.i:                                 ; preds = %rcu_read_unlock.exit.i157.i
  call void @__sanitizer_cov_trace_pc() #13
  %ptr1.i.i158.i = getelementptr inbounds %struct.ext4_rcu_ptr, ptr %call7.i.i.i.i156.i, i32 0, i32 1
  %420 = ptrtoint ptr %ptr1.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %402, ptr %ptr1.i.i158.i, align 8
  call void @call_rcu(ptr noundef nonnull %call7.i.i.i.i156.i, ptr noundef nonnull @ext4_rcu_ptr_callback) #11
  br label %ext4_kvfree_array_rcu.exit.i.i

if.end.i.i159.i:                                  ; preds = %rcu_read_unlock.exit.i157.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @synchronize_rcu() #11
  call void @kvfree(ptr noundef %402) #11
  br label %ext4_kvfree_array_rcu.exit.i.i

ext4_kvfree_array_rcu.exit.i.i:                   ; preds = %if.end.i.i159.i, %if.then.i339.i.i
  %421 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_sbh197.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %422, i32 0, i32 14
  %423 = ptrtoint ptr %s_sbh197.i.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %s_sbh197.i.i, align 64
  call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 366) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %424, i32 noundef 4) #11
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load volatile i32, ptr %424, align 4
  %and.i.i.i.i.i160.i = and i32 %426, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i160.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i160.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %trylock_buffer.exit.i.i.i, label %ext4_kvfree_array_rcu.exit.i.i.if.then.i341.i.i_crit_edge

ext4_kvfree_array_rcu.exit.i.i.if.then.i341.i.i_crit_edge: ; preds = %ext4_kvfree_array_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i341.i.i

trylock_buffer.exit.i.i.i:                        ; preds = %ext4_kvfree_array_rcu.exit.i.i
  call void @llvm.prefetch.p0(ptr %424, i32 1, i32 3, i32 1) #11
  %427 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %424, ptr %424, i32 4, ptr elementtype(i32) %424) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %427, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %428 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool.not.not.i.i.i = icmp eq i32 %428, 0
  br i1 %tobool.not.not.i.i.i, label %trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge, label %trylock_buffer.exit.i.i.i.if.then.i341.i.i_crit_edge

trylock_buffer.exit.i.i.i.if.then.i341.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i341.i.i

trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit.i.i

if.then.i341.i.i:                                 ; preds = %trylock_buffer.exit.i.i.i.if.then.i341.i.i_crit_edge, %ext4_kvfree_array_rcu.exit.i.i.if.then.i341.i.i_crit_edge
  call void @__lock_buffer(ptr noundef %424) #11
  br label %lock_buffer.exit.i.i

lock_buffer.exit.i.i:                             ; preds = %if.then.i341.i.i, %trylock_buffer.exit.i.i.i.lock_buffer.exit.i.i_crit_edge
  %s_reserved_gdt_blocks.i161.i = getelementptr inbounds %struct.ext4_super_block, ptr %352, i32 0, i32 37
  %429 = ptrtoint ptr %s_reserved_gdt_blocks.i161.i to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %s_reserved_gdt_blocks.i161.i, align 2
  %431 = call i16 @llvm.bswap.i16(i16 %430) #11
  %add.i.i.i246 = add i16 %431, -1
  %432 = call i16 @llvm.bswap.i16(i16 %add.i.i.i246) #11
  %433 = ptrtoint ptr %s_reserved_gdt_blocks.i161.i to i32
  call void @__asan_store2_noabort(i32 %433)
  store i16 %432, ptr %s_reserved_gdt_blocks.i161.i, align 2
  call void @ext4_superblock_csum_set(ptr noundef %348) #11
  %434 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_sbh199.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %435, i32 0, i32 14
  %436 = ptrtoint ptr %s_sbh199.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %s_sbh199.i.i, align 64
  call void @unlock_buffer(ptr noundef %437) #11
  %438 = ptrtoint ptr %s_fs_info.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %s_fs_info.i.i111.i, align 16
  %s_sbh201.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %439, i32 0, i32 14
  %440 = ptrtoint ptr %s_sbh201.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %s_sbh201.i.i, align 64
  %call202.i.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @.str.46, i32 noundef 926, ptr noundef %call43, ptr noundef null, ptr noundef %441) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202.i.i)
  %tobool203.not.i.i = icmp eq i32 %call202.i.i, 0
  br i1 %tobool203.not.i.i, label %lock_buffer.exit.i.i.add_new_gdb.exit.i_crit_edge, label %if.then207.i.i

lock_buffer.exit.i.i.add_new_gdb.exit.i_crit_edge: ; preds = %lock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_new_gdb.exit.i

if.then207.i.i:                                   ; preds = %lock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %348, ptr noundef nonnull @.str.46, i32 noundef 928, i32 noundef %call202.i.i) #11
  br label %add_new_gdb.exit.i

errout.i.i:                                       ; preds = %if.then127.i.i, %if.then102.i.i, %if.then84.i.i, %if.end70.i.i.errout.i.i_crit_edge, %if.then66.i.i, %do.end41.i.i.errout.i.i_crit_edge, %do.end30.i.i.errout.i.i_crit_edge, %if.then26.i.i, %if.then19.i129.i, %if.end10.i127.i.errout.i.i_crit_edge
  %n_group_desc.0.i.i = phi ptr [ null, %if.then19.i129.i ], [ null, %if.then26.i.i ], [ null, %do.end30.i.i.errout.i.i_crit_edge ], [ null, %do.end41.i.i.errout.i.i_crit_edge ], [ null, %if.then66.i.i ], [ null, %if.end70.i.i.errout.i.i_crit_edge ], [ %call.i321.i.i, %if.then102.i.i ], [ %call.i321.i.i, %if.then127.i.i ], [ null, %if.then84.i.i ], [ null, %if.end10.i127.i.errout.i.i_crit_edge ]
  %dind.0.i.i = phi ptr [ null, %if.then19.i129.i ], [ %call17.i.i, %if.then26.i.i ], [ %call17.i.i, %do.end30.i.i.errout.i.i_crit_edge ], [ %call17.i.i, %do.end41.i.i.errout.i.i_crit_edge ], [ %call17.i.i, %if.then66.i.i ], [ %call17.i.i, %if.end70.i.i.errout.i.i_crit_edge ], [ %call17.i.i, %if.then102.i.i ], [ %call17.i.i, %if.then127.i.i ], [ %call17.i.i, %if.then84.i.i ], [ null, %if.end10.i127.i.errout.i.i_crit_edge ]
  %err.0.i.i247 = phi i32 [ %366, %if.then19.i129.i ], [ -22, %if.then26.i.i ], [ %call33.i.i, %do.end30.i.i.errout.i.i_crit_edge ], [ %call42.i.i, %do.end41.i.i.errout.i.i_crit_edge ], [ %call55.i.i, %if.then66.i.i ], [ %call71.i.i, %if.end70.i.i.errout.i.i_crit_edge ], [ %call91.i.i, %if.then102.i.i ], [ %call116.i.i, %if.then127.i.i ], [ -12, %if.then84.i.i ], [ %call11.i.i, %if.end10.i127.i.errout.i.i_crit_edge ]
  call void @kvfree(ptr noundef %n_group_desc.0.i.i) #11
  %442 = ptrtoint ptr %iloc.i109.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %iloc.i109.i, align 4
  %tobool.not.i345.i.i = icmp eq ptr %443, null
  br i1 %tobool.not.i345.i.i, label %errout.i.i.brelse.exit348.i.i_crit_edge, label %if.then.i346.i.i

errout.i.i.brelse.exit348.i.i_crit_edge:          ; preds = %errout.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit348.i.i

if.then.i346.i.i:                                 ; preds = %errout.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %443) #11
  br label %brelse.exit348.i.i

brelse.exit348.i.i:                               ; preds = %if.then.i346.i.i, %errout.i.i.brelse.exit348.i.i_crit_edge
  %tobool.not.i349.i.i = icmp eq ptr %dind.0.i.i, null
  br i1 %tobool.not.i349.i.i, label %brelse.exit348.i.i.brelse.exit352.i.i_crit_edge, label %if.then.i350.i.i

brelse.exit348.i.i.brelse.exit352.i.i_crit_edge:  ; preds = %brelse.exit348.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit352.i.i

if.then.i350.i.i:                                 ; preds = %brelse.exit348.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %dind.0.i.i) #11
  br label %brelse.exit352.i.i

brelse.exit352.i.i:                               ; preds = %if.then.i350.i.i, %brelse.exit348.i.i.brelse.exit352.i.i_crit_edge
  %tobool.not.i353.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool.not.i353.i.i, label %brelse.exit352.i.i.add_new_gdb.exit.i_crit_edge, label %if.then.i354.i.i

brelse.exit352.i.i.add_new_gdb.exit.i_crit_edge:  ; preds = %brelse.exit352.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %add_new_gdb.exit.i

if.then.i354.i.i:                                 ; preds = %brelse.exit352.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call6.i.i) #11
  br label %add_new_gdb.exit.i

add_new_gdb.exit.i:                               ; preds = %if.then.i354.i.i, %brelse.exit352.i.i.add_new_gdb.exit.i_crit_edge, %if.then207.i.i, %lock_buffer.exit.i.i.add_new_gdb.exit.i_crit_edge, %if.then8.i125.i
  %retval.0.i162.i = phi i32 [ %362, %if.then8.i125.i ], [ %call202.i.i, %if.then207.i.i ], [ 0, %lock_buffer.exit.i.i.add_new_gdb.exit.i_crit_edge ], [ %err.0.i.i247, %brelse.exit352.i.i.add_new_gdb.exit.i_crit_edge ], [ %err.0.i.i247, %if.then.i354.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iloc.i109.i) #11
  br label %if.end41.i

if.end41.i:                                       ; preds = %add_new_gdb.exit.i, %if.then.i96.i, %reserve_backup_gdb.exit.i
  %err.1.i = phi i32 [ %retval.0.i.i241, %reserve_backup_gdb.exit.i ], [ %retval.0.i162.i, %add_new_gdb.exit.i ], [ %320, %if.then.i96.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool42.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool42.not.i, label %if.end41.i.for.inc.i250_crit_edge, label %if.end41.i.exit_journal.thread_crit_edge

if.end41.i.exit_journal.thread_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal.thread

if.end41.i.for.inc.i250_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i250

for.inc.i250:                                     ; preds = %if.end41.i.for.inc.i250_crit_edge, %if.end.i.i.i, %if.then.i128.i.i, %land.lhs.true28.i.for.inc.i250_crit_edge, %land.lhs.true26.i.for.inc.i250_crit_edge
  %inc.i248 = add nuw i32 %i.0192.i, 1
  %inc45.i = add i32 %group.addr.0193.i, 1
  %exitcond.not.i249 = icmp eq i32 %inc.i248, %215
  br i1 %exitcond.not.i249, label %for.inc.i250.if.end79_crit_edge, label %for.inc.i250.for.body.i210_crit_edge

for.inc.i250.for.body.i210_crit_edge:             ; preds = %for.inc.i250
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i210

for.inc.i250.if.end79_crit_edge:                  ; preds = %for.inc.i250
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.end79:                                         ; preds = %for.inc.i250.if.end79_crit_edge, %do.end74.if.end79_crit_edge
  %444 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %cmp150.not.i = icmp eq i32 %445, 0
  br i1 %cmp150.not.i, label %if.end79.exit_journal_crit_edge, label %for.body.lr.ph.i254

if.end79.exit_journal_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal

for.body.lr.ph.i254:                              ; preds = %if.end79
  %446 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %bg_flags, align 4
  %448 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %s_fs_info.i, align 16
  %450 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %flex_gd, align 4
  %s_group_desc.i253 = getelementptr inbounds %struct.ext4_sb_info, ptr %449, i32 0, i32 16
  %s_bdev.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body.i262

for.body.i262:                                    ; preds = %for.inc.i291.for.body.i262_crit_edge, %for.body.lr.ph.i254
  %group_data.0153.i = phi ptr [ %451, %for.body.lr.ph.i254 ], [ %incdec.ptr.i, %for.inc.i291.for.body.i262_crit_edge ]
  %i.0152.i = phi i32 [ 0, %for.body.lr.ph.i254 ], [ %inc.i289, %for.inc.i291.for.body.i262_crit_edge ]
  %bg_flags.0151.i = phi ptr [ %447, %for.body.lr.ph.i254 ], [ %incdec.ptr53.i, %for.inc.i291.for.body.i262_crit_edge ]
  %452 = ptrtoint ptr %group_data.0153.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %group_data.0153.i, align 8
  %454 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block.i255 = getelementptr inbounds %struct.ext4_sb_info, ptr %455, i32 0, i32 7
  %456 = ptrtoint ptr %s_desc_per_block.i255 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %s_desc_per_block.i255, align 4
  %.frozen498 = freeze i32 %453
  %.frozen499 = freeze i32 %457
  %div.i257 = udiv i32 %.frozen498, %.frozen499
  %458 = mul i32 %div.i257, %.frozen499
  %rem.i256.decomposed = sub i32 %.frozen498, %458
  %459 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i.i258 = and i32 %459, -16384
  %460 = inttoptr i32 %and.i.i.i.i.i.i258 to ptr
  %preempt_count.i.i.i.i.i259 = getelementptr inbounds %struct.thread_info, ptr %460, i32 0, i32 1
  %461 = ptrtoint ptr %preempt_count.i.i.i.i.i259 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load volatile i32, ptr %preempt_count.i.i.i.i.i259, align 4
  %add.i.i.i.i260 = add i32 %462, 1
  store volatile i32 %add.i.i.i.i260, ptr %preempt_count.i.i.i.i.i259, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i261 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i261, label %for.body.i262.rcu_read_lock.exit.i270_crit_edge, label %land.lhs.true.i.i265

for.body.i262.rcu_read_lock.exit.i270_crit_edge:  ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i270

land.lhs.true.i.i265:                             ; preds = %for.body.i262
  %call1.i.i263 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i263)
  %tobool.not.i.i264 = icmp eq i32 %call1.i.i263, 0
  br i1 %tobool.not.i.i264, label %land.lhs.true.i.i265.rcu_read_lock.exit.i270_crit_edge, label %land.lhs.true2.i.i267

land.lhs.true.i.i265.rcu_read_lock.exit.i270_crit_edge: ; preds = %land.lhs.true.i.i265
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i270

land.lhs.true2.i.i267:                            ; preds = %land.lhs.true.i.i265
  %.b4.i.i266 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i266, label %land.lhs.true2.i.i267.rcu_read_lock.exit.i270_crit_edge, label %if.then.i.i268

land.lhs.true2.i.i267.rcu_read_lock.exit.i270_crit_edge: ; preds = %land.lhs.true2.i.i267
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i270

if.then.i.i268:                                   ; preds = %land.lhs.true2.i.i267
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit.i270

rcu_read_lock.exit.i270:                          ; preds = %if.then.i.i268, %land.lhs.true2.i.i267.rcu_read_lock.exit.i270_crit_edge, %land.lhs.true.i.i265.rcu_read_lock.exit.i270_crit_edge, %for.body.i262.rcu_read_lock.exit.i270_crit_edge
  %463 = ptrtoint ptr %s_group_desc.i253 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load volatile ptr, ptr %s_group_desc.i253, align 8
  %call7.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i269 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i269, label %land.lhs.true.i271, label %rcu_read_lock.exit.i270.do.end13.i_crit_edge

rcu_read_lock.exit.i270.do.end13.i_crit_edge:     ; preds = %rcu_read_lock.exit.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

land.lhs.true.i271:                               ; preds = %rcu_read_lock.exit.i270
  %call8.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i271.do.end13.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i271.do.end13.i_crit_edge:          ; preds = %land.lhs.true.i271
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i271
  %.b104.i = load i1, ptr @ext4_setup_new_descs.__warned, align 1
  br i1 %.b104.i, label %land.lhs.true10.i.do.end13.i_crit_edge, label %if.then.i272

land.lhs.true10.i.do.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13.i

if.then.i272:                                     ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_setup_new_descs.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1331, ptr noundef nonnull @.str.41) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then.i272, %land.lhs.true10.i.do.end13.i_crit_edge, %land.lhs.true.i271.do.end13.i_crit_edge, %rcu_read_lock.exit.i270.do.end13.i_crit_edge
  %arrayidx.i273 = getelementptr ptr, ptr %464, i32 %div.i257
  %465 = ptrtoint ptr %arrayidx.i273 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %arrayidx.i273, align 4
  %call.i107.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i107.i, label %do.end13.i.rcu_read_unlock.exit.i281_crit_edge, label %land.lhs.true.i110.i

do.end13.i.rcu_read_unlock.exit.i281_crit_edge:   ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i281

land.lhs.true.i110.i:                             ; preds = %do.end13.i
  %call1.i108.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i108.i)
  %tobool.not.i109.i = icmp eq i32 %call1.i108.i, 0
  br i1 %tobool.not.i109.i, label %land.lhs.true.i110.i.rcu_read_unlock.exit.i281_crit_edge, label %land.lhs.true2.i112.i

land.lhs.true.i110.i.rcu_read_unlock.exit.i281_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i281

land.lhs.true2.i112.i:                            ; preds = %land.lhs.true.i110.i
  %.b4.i111.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i111.i, label %land.lhs.true2.i112.i.rcu_read_unlock.exit.i281_crit_edge, label %if.then.i113.i

land.lhs.true2.i112.i.rcu_read_unlock.exit.i281_crit_edge: ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i281

if.then.i113.i:                                   ; preds = %land.lhs.true2.i112.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit.i281

rcu_read_unlock.exit.i281:                        ; preds = %if.then.i113.i, %land.lhs.true2.i112.i.rcu_read_unlock.exit.i281_crit_edge, %land.lhs.true.i110.i.rcu_read_unlock.exit.i281_crit_edge, %do.end13.i.rcu_read_unlock.exit.i281_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %467 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i114.i = and i32 %467, -16384
  %468 = inttoptr i32 %and.i.i.i.i.i114.i to ptr
  %preempt_count.i.i.i.i115.i = getelementptr inbounds %struct.thread_info, ptr %468, i32 0, i32 1
  %469 = ptrtoint ptr %preempt_count.i.i.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load volatile i32, ptr %preempt_count.i.i.i.i115.i, align 4
  %sub.i.i.i.i274 = add i32 %470, -1
  store volatile i32 %sub.i.i.i.i274, ptr %preempt_count.i.i.i.i115.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %b_data.i275 = getelementptr inbounds %struct.buffer_head, ptr %466, i32 0, i32 5
  %471 = ptrtoint ptr %b_data.i275 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %b_data.i275, align 4
  %473 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %s_fs_info.i, align 16
  %475 = ptrtoint ptr %474 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %474, align 128
  %mul.i276 = mul i32 %476, %rem.i256.decomposed
  %add.ptr.i = getelementptr i8, ptr %472, i32 %mul.i276
  %477 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %476)
  %block_bitmap.i277 = getelementptr inbounds %struct.ext4_new_group_data, ptr %group_data.0153.i, i32 0, i32 1
  %478 = ptrtoint ptr %block_bitmap.i277 to i32
  call void @__asan_load8_noabort(i32 %478)
  %479 = load i64, ptr %block_bitmap.i277, align 8
  call void @ext4_block_bitmap_set(ptr noundef %sb, ptr noundef %add.ptr.i, i64 noundef %479) #11
  %inode_bitmap.i278 = getelementptr inbounds %struct.ext4_new_group_data, ptr %group_data.0153.i, i32 0, i32 2
  %480 = ptrtoint ptr %inode_bitmap.i278 to i32
  call void @__asan_load8_noabort(i32 %480)
  %481 = load i64, ptr %inode_bitmap.i278, align 8
  call void @ext4_inode_bitmap_set(ptr noundef %sb, ptr noundef %add.ptr.i, i64 noundef %481) #11
  %482 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i.i.i279 = getelementptr inbounds %struct.ext4_sb_info, ptr %483, i32 0, i32 15
  %484 = ptrtoint ptr %s_es.i.i.i.i279 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %s_es.i.i.i.i279, align 4
  %s_feature_ro_compat.i.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %485, i32 0, i32 30
  %486 = ptrtoint ptr %s_feature_ro_compat.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %s_feature_ro_compat.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %487, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i280 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.not.i.i.i280, label %rcu_read_unlock.exit.i281.if.end32.i.i.i_crit_edge, label %land.rhs.i.i.i

rcu_read_unlock.exit.i281.if.end32.i.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i281
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

land.rhs.i.i.i:                                   ; preds = %rcu_read_unlock.exit.i281
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %483, i32 0, i32 121
  %488 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %s_chksum_driver.i.i.i, align 4
  %tobool.not.i.i.i282 = icmp eq ptr %489, null
  br i1 %tobool.not.i.i.i282, label %land.rhs5.i.i.i, label %land.rhs.i.i.i.if.end32.i.i.i_crit_edge

land.rhs.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

land.rhs5.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b50.i.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i.i, label %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, label %if.then.i.i.i283, !prof !187

land.rhs5.i.i.i.if.end32.i.i.i_crit_edge:         ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

if.then.i.i.i283:                                 ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then.i.i.i283, %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, %land.rhs.i.i.i.if.end32.i.i.i_crit_edge, %rcu_read_unlock.exit.i281.if.end32.i.i.i_crit_edge
  %490 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %491, i32 0, i32 15
  %492 = ptrtoint ptr %s_es.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %s_es.i53.i.i.i, align 4
  %s_feature_ro_compat.i54.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %493, i32 0, i32 30
  %494 = ptrtoint ptr %s_feature_ro_compat.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %s_feature_ro_compat.i54.i.i.i, align 4
  %and.i55.i.i.i = and i32 %495, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i.i)
  %cmp.i56.not.i.i.i = icmp eq i32 %and.i55.i.i.i, 0
  br i1 %cmp.i56.not.i.i.i, label %if.end32.i.i.i.if.end28.i_crit_edge, label %ext4_has_metadata_csum.exit.i.i

if.end32.i.i.i.if.end28.i_crit_edge:              ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

ext4_has_metadata_csum.exit.i.i:                  ; preds = %if.end32.i.i.i
  %s_chksum_driver43.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %491, i32 0, i32 121
  %496 = ptrtoint ptr %s_chksum_driver43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %s_chksum_driver43.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %497, null
  br i1 %cmp.i.not.i.i, label %ext4_has_metadata_csum.exit.i.i.if.end28.i_crit_edge, label %if.end.i.i284

ext4_has_metadata_csum.exit.i.i.if.end28.i_crit_edge: ; preds = %ext4_has_metadata_csum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.end.i.i284:                                    ; preds = %ext4_has_metadata_csum.exit.i.i
  %498 = ptrtoint ptr %inode_bitmap.i278 to i32
  call void @__asan_load8_noabort(i32 %498)
  %499 = load i64, ptr %inode_bitmap.i278, align 8
  %500 = ptrtoint ptr %s_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %s_bdev.i.i.i.i, align 4
  %502 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %call.i.i.i.i = call ptr @__getblk_gfp(ptr noundef %501, i64 noundef %499, i32 noundef %503, i32 noundef 8) #11
  %tobool.not.i24.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i24.i.i, label %if.end.i.i284.if.then24.i_crit_edge, label %if.end.i.i.i285, !prof !185

if.end.i.i284.if.then24.i_crit_edge:              ; preds = %if.end.i.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.end.i.i.i285:                                  ; preds = %if.end.i.i284
  %call4.i.i.i = call i32 @bh_uptodate_or_lock(ptr noundef nonnull %call.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %if.end.i.i.i285.brelse.exit.i.i286_crit_edge

if.end.i.i.i285.brelse.exit.i.i286_crit_edge:     ; preds = %if.end.i.i.i285
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i.i286

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i285
  %call7.i.i.i = call i32 @ext4_read_bh(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %cmp.i25.i.i = icmp slt i32 %call7.i.i.i, 0
  br i1 %cmp.i25.i.i, label %if.then6.i.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge, label %if.then6.i.i.i.brelse.exit.i.i286_crit_edge

if.then6.i.i.i.brelse.exit.i.i286_crit_edge:      ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit.i.i286

if.then6.i.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_set_bitmap_checksums.exit.thread143.i

brelse.exit.i.i286:                               ; preds = %if.then6.i.i.i.brelse.exit.i.i286_crit_edge, %if.end.i.i.i285.brelse.exit.i.i286_crit_edge
  %504 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %505, i32 0, i32 4
  %506 = ptrtoint ptr %s_inodes_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %s_inodes_per_group.i.i, align 16
  %div23.i.i = lshr i32 %507, 3
  call void @ext4_inode_bitmap_csum_set(ptr noundef %sb, i32 noundef %453, ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %div23.i.i) #11
  call void @__brelse(ptr noundef nonnull %call.i.i.i.i) #11
  %508 = ptrtoint ptr %block_bitmap.i277 to i32
  call void @__asan_load8_noabort(i32 %508)
  %509 = load i64, ptr %block_bitmap.i277, align 8
  %510 = ptrtoint ptr %s_bdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %s_bdev.i.i.i.i, align 4
  %512 = ptrtoint ptr %s_blocksize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %s_blocksize.i.i.i.i, align 16
  %call.i.i31.i.i = call ptr @__getblk_gfp(ptr noundef %511, i64 noundef %509, i32 noundef %513, i32 noundef 8) #11
  %tobool.not.i32.i.i = icmp eq ptr %call.i.i31.i.i, null
  br i1 %tobool.not.i32.i.i, label %brelse.exit.i.i286.if.then24.i_crit_edge, label %if.end.i35.i.i, !prof !185

brelse.exit.i.i286.if.then24.i_crit_edge:         ; preds = %brelse.exit.i.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.end.i35.i.i:                                   ; preds = %brelse.exit.i.i286
  %call4.i33.i.i = call i32 @bh_uptodate_or_lock(ptr noundef nonnull %call.i.i31.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i33.i.i)
  %tobool5.not.i34.i.i = icmp eq i32 %call4.i33.i.i, 0
  br i1 %tobool5.not.i34.i.i, label %if.then6.i38.i.i, label %if.end.i35.i.i.ext4_set_bitmap_checksums.exit.i_crit_edge

if.end.i35.i.i.ext4_set_bitmap_checksums.exit.i_crit_edge: ; preds = %if.end.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_set_bitmap_checksums.exit.i

if.then6.i38.i.i:                                 ; preds = %if.end.i35.i.i
  %call7.i36.i.i = call i32 @ext4_read_bh(ptr noundef nonnull %call.i.i31.i.i, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i36.i.i)
  %cmp.i37.i.i = icmp slt i32 %call7.i36.i.i, 0
  br i1 %cmp.i37.i.i, label %if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge, label %if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.i_crit_edge

if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.i_crit_edge: ; preds = %if.then6.i38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_set_bitmap_checksums.exit.i

if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge: ; preds = %if.then6.i38.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_set_bitmap_checksums.exit.thread143.i

ext4_set_bitmap_checksums.exit.thread143.i:       ; preds = %if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge, %if.then6.i.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge
  %call.i.i31.sink.i.ph.i = phi ptr [ %call.i.i31.i.i, %if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge ], [ %call.i.i.i.i, %if.then6.i.i.i.ext4_set_bitmap_checksums.exit.thread143.i_crit_edge ]
  call void @__brelse(ptr noundef nonnull %call.i.i31.sink.i.ph.i) #11
  br label %if.then24.i

ext4_set_bitmap_checksums.exit.i:                 ; preds = %if.then6.i38.i.i.ext4_set_bitmap_checksums.exit.i_crit_edge, %if.end.i35.i.i.ext4_set_bitmap_checksums.exit.i_crit_edge
  call void @ext4_block_bitmap_csum_set(ptr noundef %sb, i32 noundef %453, ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i31.i.i) #11
  call void @__brelse(ptr noundef nonnull %call.i.i31.i.i) #11
  br label %if.end28.i

if.then24.i:                                      ; preds = %ext4_set_bitmap_checksums.exit.thread143.i, %brelse.exit.i.i286.if.then24.i_crit_edge, %if.end.i.i284.if.then24.i_crit_edge
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_setup_new_descs, i32 noundef 1341, i32 noundef -5) #11
  br label %exit_journal.thread

if.end28.i:                                       ; preds = %ext4_set_bitmap_checksums.exit.i, %ext4_has_metadata_csum.exit.i.i.if.end28.i_crit_edge, %if.end32.i.i.i.if.end28.i_crit_edge
  %inode_table.i287 = getelementptr inbounds %struct.ext4_new_group_data, ptr %group_data.0153.i, i32 0, i32 3
  %514 = ptrtoint ptr %inode_table.i287 to i32
  call void @__asan_load8_noabort(i32 %514)
  %515 = load i64, ptr %inode_table.i287, align 8
  call void @ext4_inode_table_set(ptr noundef %sb, ptr noundef %add.ptr.i, i64 noundef %515) #11
  %free_clusters_count.i = getelementptr inbounds %struct.ext4_new_group_data, ptr %group_data.0153.i, i32 0, i32 7
  %516 = ptrtoint ptr %free_clusters_count.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %free_clusters_count.i, align 8
  call void @ext4_free_group_clusters_set(ptr noundef %sb, ptr noundef %add.ptr.i, i32 noundef %517) #11
  %518 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group.i288 = getelementptr inbounds %struct.ext4_sb_info, ptr %519, i32 0, i32 4
  %520 = ptrtoint ptr %s_inodes_per_group.i288 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %s_inodes_per_group.i288, align 16
  call void @ext4_free_inodes_set(ptr noundef %sb, ptr noundef %add.ptr.i, i32 noundef %521) #11
  %522 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %523, i32 0, i32 15
  %524 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %525, i32 0, i32 30
  %526 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %527, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i119.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i119.i, label %lor.rhs.i.i, label %if.end28.i.if.then32.i_crit_edge

if.end28.i.if.then32.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

lor.rhs.i.i:                                      ; preds = %if.end28.i
  %and.i.i.i120.i = and i32 %527, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i120.i)
  %cmp.i.not.i.i121.i = icmp eq i32 %and.i.i.i120.i, 0
  br i1 %cmp.i.not.i.i121.i, label %lor.rhs.i.i.if.end32.i.i132.i_crit_edge, label %land.rhs.i.i124.i

lor.rhs.i.i.if.end32.i.i132.i_crit_edge:          ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i132.i

land.rhs.i.i124.i:                                ; preds = %lor.rhs.i.i
  %s_chksum_driver.i.i122.i = getelementptr inbounds %struct.ext4_sb_info, ptr %523, i32 0, i32 121
  %528 = ptrtoint ptr %s_chksum_driver.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %s_chksum_driver.i.i122.i, align 4
  %tobool.not.i.i123.i = icmp eq ptr %529, null
  br i1 %tobool.not.i.i123.i, label %land.rhs5.i.i126.i, label %land.rhs.i.i124.i.if.end32.i.i132.i_crit_edge

land.rhs.i.i124.i.if.end32.i.i132.i_crit_edge:    ; preds = %land.rhs.i.i124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i132.i

land.rhs5.i.i126.i:                               ; preds = %land.rhs.i.i124.i
  %.b50.i.i125.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i125.i, label %land.rhs5.i.i126.i.if.end32.i.i132.i_crit_edge, label %if.then.i.i127.i, !prof !187

land.rhs5.i.i126.i.if.end32.i.i132.i_crit_edge:   ; preds = %land.rhs5.i.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i132.i

if.then.i.i127.i:                                 ; preds = %land.rhs5.i.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i132.i

if.end32.i.i132.i:                                ; preds = %if.then.i.i127.i, %land.rhs5.i.i126.i.if.end32.i.i132.i_crit_edge, %land.rhs.i.i124.i.if.end32.i.i132.i_crit_edge, %lor.rhs.i.i.if.end32.i.i132.i_crit_edge
  %530 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i.i128.i = getelementptr inbounds %struct.ext4_sb_info, ptr %531, i32 0, i32 15
  %532 = ptrtoint ptr %s_es.i53.i.i128.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %s_es.i53.i.i128.i, align 4
  %s_feature_ro_compat.i54.i.i129.i = getelementptr inbounds %struct.ext4_super_block, ptr %533, i32 0, i32 30
  %534 = ptrtoint ptr %s_feature_ro_compat.i54.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %s_feature_ro_compat.i54.i.i129.i, align 4
  %and.i55.i.i130.i = and i32 %535, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i130.i)
  %cmp.i56.not.i.i131.i = icmp eq i32 %and.i55.i.i130.i, 0
  br i1 %cmp.i56.not.i.i131.i, label %if.end32.i.i132.i.if.end35.i_crit_edge, label %ext4_has_group_desc_csum.exit.i

if.end32.i.i132.i.if.end35.i_crit_edge:           ; preds = %if.end32.i.i132.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

ext4_has_group_desc_csum.exit.i:                  ; preds = %if.end32.i.i132.i
  %s_chksum_driver43.i.i133.i = getelementptr inbounds %struct.ext4_sb_info, ptr %531, i32 0, i32 121
  %536 = ptrtoint ptr %s_chksum_driver43.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %s_chksum_driver43.i.i133.i, align 4
  %cmp.i3.i.not.i = icmp eq ptr %537, null
  br i1 %cmp.i3.i.not.i, label %ext4_has_group_desc_csum.exit.i.if.end35.i_crit_edge, label %ext4_has_group_desc_csum.exit.i.if.then32.i_crit_edge

ext4_has_group_desc_csum.exit.i.if.then32.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

ext4_has_group_desc_csum.exit.i.if.end35.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then32.i:                                      ; preds = %ext4_has_group_desc_csum.exit.i.if.then32.i_crit_edge, %if.end28.i.if.then32.i_crit_edge
  %538 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group34.i = getelementptr inbounds %struct.ext4_sb_info, ptr %539, i32 0, i32 4
  %540 = ptrtoint ptr %s_inodes_per_group34.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %s_inodes_per_group34.i, align 16
  call void @ext4_itable_unused_set(ptr noundef %sb, ptr noundef %add.ptr.i, i32 noundef %541) #11
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %ext4_has_group_desc_csum.exit.i.if.end35.i_crit_edge, %if.end32.i.i132.i.if.end35.i_crit_edge
  %542 = ptrtoint ptr %bg_flags.0151.i to i32
  call void @__asan_load2_noabort(i32 %542)
  %543 = load i16, ptr %bg_flags.0151.i, align 2
  %544 = call i16 @llvm.bswap.i16(i16 %543) #11
  %bg_flags36.i = getelementptr inbounds %struct.ext4_group_desc, ptr %add.ptr.i, i32 0, i32 6
  %545 = ptrtoint ptr %bg_flags36.i to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 %544, ptr %bg_flags36.i, align 2
  call void @ext4_group_desc_csum_set(ptr noundef %sb, i32 noundef %453, ptr noundef %add.ptr.i) #11
  %call37.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_setup_new_descs, i32 noundef 1355, ptr noundef %call43, ptr noundef null, ptr noundef %466) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end48.i, label %if.then44.i, !prof !187

if.then44.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_setup_new_descs, i32 noundef 1357, i32 noundef %call37.i) #11
  br label %exit_journal.thread

if.end48.i:                                       ; preds = %if.end35.i
  %call49.i = call i32 @ext4_mb_add_groupinfo(ptr noundef %sb, i32 noundef %453, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %for.inc.i291, label %if.end48.i.exit_journal.thread_crit_edge

if.end48.i.exit_journal.thread_crit_edge:         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal.thread

for.inc.i291:                                     ; preds = %if.end48.i
  %inc.i289 = add nuw i32 %i.0152.i, 1
  %incdec.ptr.i = getelementptr %struct.ext4_new_group_data, ptr %group_data.0153.i, i32 1
  %incdec.ptr53.i = getelementptr i16, ptr %bg_flags.0151.i, i32 1
  %546 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %count, align 4
  %cmp.i290 = icmp ult i32 %inc.i289, %547
  br i1 %cmp.i290, label %for.inc.i291.for.body.i262_crit_edge, label %for.inc.i291.exit_journal_crit_edge

for.inc.i291.exit_journal_crit_edge:              ; preds = %for.inc.i291
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit_journal

for.inc.i291.for.body.i262_crit_edge:             ; preds = %for.inc.i291
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i262

exit_journal.thread:                              ; preds = %if.end48.i.exit_journal.thread_crit_edge, %if.then44.i, %if.then24.i, %if.end41.i.exit_journal.thread_crit_edge, %if.then.i123.i.i, %if.then31.i106.i.exit_journal.thread_crit_edge, %brelse.exit.i.i242, %rcu_read_unlock.exit.i228.exit_journal.thread_crit_edge, %do.end50.exit_journal.thread_crit_edge
  %err.0.ph = phi i32 [ -5, %if.then24.i ], [ %call37.i, %if.then44.i ], [ %call29.i.i, %if.then.i123.i.i ], [ %call29.i.i, %if.then31.i106.i.exit_journal.thread_crit_edge ], [ -12, %brelse.exit.i.i242 ], [ %call51, %do.end50.exit_journal.thread_crit_edge ], [ %call49.i, %if.end48.i.exit_journal.thread_crit_edge ], [ %call24.i, %rcu_read_unlock.exit.i228.exit_journal.thread_crit_edge ], [ %err.1.i, %if.end41.i.exit_journal.thread_crit_edge ]
  %call86314 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1549, ptr noundef %call43) #11
  br label %exit

exit_journal:                                     ; preds = %for.inc.i291.exit_journal_crit_edge, %if.end79.exit_journal_crit_edge
  call fastcc void @ext4_update_super(ptr noundef %sb, ptr noundef %flex_gd)
  %548 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %s_sbh, align 64
  %call85 = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1546, ptr noundef %call43, ptr noundef null, ptr noundef %549) #11
  %call86 = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_flex_group_add, i32 noundef 1549, ptr noundef %call43) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool87.not = icmp eq i32 %call85, 0
  br i1 %tobool87.not, label %550, label %exit_journal.exit_crit_edge

exit_journal.exit_crit_edge:                      ; preds = %exit_journal
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

550:                                              ; preds = %exit_journal
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool90.not = icmp eq i32 %call86, 0
  br i1 %tobool90.not, label %if.then91, label %.exit_crit_edge

.exit_crit_edge:                                  ; preds = %550
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then91:                                        ; preds = %550
  %551 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %group, align 4
  %553 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block93 = getelementptr inbounds %struct.ext4_sb_info, ptr %554, i32 0, i32 7
  %555 = ptrtoint ptr %s_desc_per_block93 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %s_desc_per_block93, align 4
  %div94 = udiv i32 %552, %556
  %557 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %count, align 4
  %add96 = add i32 %552, -1
  %sub97 = add i32 %add96, %558
  %div100 = udiv i32 %sub97, %556
  %s_es.i297 = getelementptr inbounds %struct.ext4_sb_info, ptr %554, i32 0, i32 15
  %559 = ptrtoint ptr %s_es.i297 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %s_es.i297, align 4
  %s_feature_incompat.i298 = getelementptr inbounds %struct.ext4_super_block, ptr %560, i32 0, i32 29
  %561 = ptrtoint ptr %s_feature_incompat.i298 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %s_feature_incompat.i298, align 8
  %and.i = lshr i32 %562, 28
  %and.i.lobit = and i32 %and.i, 1
  %563 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %s_sbh, align 64
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %564, i32 0, i32 3
  %565 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %565)
  %566 = load i64, ptr %b_blocknr, align 8
  call fastcc void @update_backups(ptr noundef %sb, i64 noundef %566, ptr noundef %3, i32 noundef 1024, i32 noundef 0)
  call void @__sanitizer_cov_trace_cmp4(i32 %div94, i32 %div100)
  %cmp104.not352 = icmp sgt i32 %div94, %div100
  br i1 %cmp104.not352, label %if.then91.exit_crit_edge, label %for.body.lr.ph

if.then91.exit_crit_edge:                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

for.body.lr.ph:                                   ; preds = %if.then91
  %s_group_desc = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %old_gdb.0354 = phi i64 [ 0, %for.body.lr.ph ], [ %old_gdb.1, %cleanup.for.body_crit_edge ]
  %gdb_num.0353 = phi i32 [ %div94, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %567 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i = and i32 %567, -16384
  %568 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %568, i32 0, i32 1
  %569 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %570, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %571 = ptrtoint ptr %s_group_desc to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load volatile ptr, ptr %s_group_desc, align 8
  %call110 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end119_crit_edge

rcu_read_lock.exit.do.end119_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end119

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call112 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %land.lhs.true.do.end119_crit_edge, label %land.lhs.true114

land.lhs.true.do.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end119

land.lhs.true114:                                 ; preds = %land.lhs.true
  %.b193 = load i1, ptr @ext4_flex_group_add.__warned, align 1
  br i1 %.b193, label %land.lhs.true114.do.end119_crit_edge, label %if.then116

land.lhs.true114.do.end119_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end119

if.then116:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_flex_group_add.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1566, ptr noundef nonnull @.str.41) #11
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %land.lhs.true114.do.end119_crit_edge, %land.lhs.true.do.end119_crit_edge, %rcu_read_lock.exit.do.end119_crit_edge
  %arrayidx121 = getelementptr ptr, ptr %572, i32 %gdb_num.0353
  %573 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %arrayidx121, align 4
  %call.i300 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i300, label %do.end119.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i303

do.end119.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i303:                               ; preds = %do.end119
  %call1.i301 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i301)
  %tobool.not.i302 = icmp eq i32 %call1.i301, 0
  br i1 %tobool.not.i302, label %land.lhs.true.i303.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i305

land.lhs.true.i303.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i303
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i305:                              ; preds = %land.lhs.true.i303
  %.b4.i304 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i304, label %land.lhs.true2.i305.rcu_read_unlock.exit_crit_edge, label %if.then.i306

land.lhs.true2.i305.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i305
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i306:                                     ; preds = %land.lhs.true2.i305
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i306, %land.lhs.true2.i305.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i303.rcu_read_unlock.exit_crit_edge, %do.end119.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %575 = call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i307 = and i32 %575, -16384
  %576 = inttoptr i32 %and.i.i.i.i.i307 to ptr
  %preempt_count.i.i.i.i308 = getelementptr inbounds %struct.thread_info, ptr %576, i32 0, i32 1
  %577 = ptrtoint ptr %preempt_count.i.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load volatile i32, ptr %preempt_count.i.i.i.i308, align 4
  %sub.i.i.i = add i32 %578, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i308, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %b_blocknr123 = getelementptr inbounds %struct.buffer_head, ptr %574, i32 0, i32 3
  %579 = ptrtoint ptr %b_blocknr123 to i32
  call void @__asan_load8_noabort(i32 %579)
  %580 = load i64, ptr %b_blocknr123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %old_gdb.0354, i64 %580)
  %cmp124 = icmp eq i64 %old_gdb.0354, %580
  br i1 %cmp124, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.end127

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end127:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %574, i32 0, i32 5
  %581 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %b_data, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %574, i32 0, i32 4
  %583 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %b_size, align 8
  call fastcc void @update_backups(ptr noundef %sb, i64 noundef %580, ptr noundef %582, i32 noundef %584, i32 noundef %and.i.lobit)
  %585 = ptrtoint ptr %b_blocknr123 to i32
  call void @__asan_load8_noabort(i32 %585)
  %586 = load i64, ptr %b_blocknr123, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %rcu_read_unlock.exit.cleanup_crit_edge
  %old_gdb.1 = phi i64 [ %586, %if.end127 ], [ %old_gdb.0354, %rcu_read_unlock.exit.cleanup_crit_edge ]
  %inc = add i32 %gdb_num.0353, 1
  %cmp104.not = icmp sgt i32 %inc, %div100
  br i1 %cmp104.not, label %cleanup.exit_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.exit_crit_edge:                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

exit:                                             ; preds = %cleanup.exit_crit_edge, %if.then91.exit_crit_edge, %.exit_crit_edge, %exit_journal.exit_crit_edge, %exit_journal.thread, %if.then45, %setup_new_flex_group_blocks.exit.exit_crit_edge
  %err.2 = phi i32 [ %retval.0.i, %setup_new_flex_group_blocks.exit.exit_crit_edge ], [ %204, %if.then45 ], [ %call86, %.exit_crit_edge ], [ %err.0.ph, %exit_journal.thread ], [ %call85, %exit_journal.exit_crit_edge ], [ 0, %if.then91.exit_crit_edge ], [ 0, %cleanup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #11
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_group_extend(ptr noundef %sb, ptr nocapture noundef readonly %es, i64 noundef %n_blocks_count) local_unnamed_addr #0 align 64 {
entry:
  %last = alloca i32, align 4
  %group = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last) #11
  %0 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %last, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group) #11
  %1 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %group, align 4, !annotation !184
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %es, i32 0, i32 29
  %2 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %entry.ext4_blocks_count.exit_crit_edge, label %cond.true.i

entry.ext4_blocks_count.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %es, i32 0, i32 50
  %4 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocks_count_hi.i, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %conv.i = zext i32 %6 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %entry.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %entry.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %es, i32 0, i32 1
  %7 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocks_count_lo.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %conv1.i = zext i32 %9 to i64
  %or.i = or i64 %cond.i, %conv1.i
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ext4_blocks_count.exit.if.end_crit_edge, label %if.then

ext4_blocks_count.exit.if.end_crit_edge:          ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i64 noundef %or.i, i64 noundef %n_blocks_count) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %ext4_blocks_count.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n_blocks_count)
  %cmp = icmp eq i64 %n_blocks_count, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %n_blocks_count)
  %cmp2 = icmp eq i64 %or.i, %n_blocks_count
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %14 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %15 to i32
  %sub = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %n_blocks_count)
  %cmp5 = icmp ult i64 %shr, %n_blocks_count
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, i64 noundef %n_blocks_count) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i, i64 %n_blocks_count)
  %cmp9 = icmp ugt i64 %or.i, %n_blocks_count
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1816, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %or.i, ptr noundef nonnull %group, ptr noundef nonnull %last) #11
  %16 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1824, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocks_per_group, align 8
  %sub18 = sub i32 %21, %17
  %conv19 = sext i32 %sub18 to i64
  %add20 = add i64 %or.i, %conv19
  call void @__sanitizer_cov_trace_cmp8(i64 %add20, i64 %or.i)
  %cmp21 = icmp ult i64 %add20, %or.i
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1831, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %add20, i64 %n_blocks_count)
  %cmp27 = icmp ugt i64 %add20, %n_blocks_count
  %22 = trunc i64 %n_blocks_count to i32
  %conv31 = sub i32 %22, %9
  %add.0 = select i1 %cmp27, i32 %conv31, i32 %sub18
  %conv33 = sext i32 %add.0 to i64
  %add34 = add i64 %or.i, %conv33
  call void @__sanitizer_cov_trace_cmp8(i64 %add34, i64 %n_blocks_count)
  %cmp35 = icmp ult i64 %add34, %n_blocks_count
  br i1 %cmp35, label %if.then37, label %if.end24.if.end40_crit_edge

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1840, ptr noundef nonnull @.str.14, i64 noundef %add34, i32 noundef %add.0) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end24.if.end40_crit_edge
  %sub43 = add i64 %add34, -1
  %call44 = call ptr @ext4_sb_bread(ptr noundef %sb, i64 noundef %sub43, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend, i32 noundef 1845, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %tobool.not.i93 = icmp eq ptr %call44, null
  br i1 %tobool.not.i93, label %if.end47.brelse.exit_crit_edge, label %if.then.i

if.end47.brelse.exit_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %call44) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end47.brelse.exit_crit_edge
  %call48 = call fastcc i32 @ext4_group_extend_no_check(ptr noundef %sb, i64 noundef %or.i, i32 noundef %add.0)
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then46, %if.then23, %if.then15, %if.then11, %if.then7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ -22, %if.then11 ], [ -1, %if.then15 ], [ -22, %if.then23 ], [ -28, %if.then46 ], [ %call48, %brelse.exit ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_get_group_no_and_offset(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_sb_bread(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext4_group_extend_no_check(ptr noundef %sb, i64 noundef %o_blocks_count, i32 noundef %add) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %5, 3
  %call2 = tail call ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef 1734, i32 noundef 7, i32 noundef 3, i32 noundef 0, i32 noundef %mul.i.i) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1737, ptr noundef nonnull @.str.56, i32 noundef %6) #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_sbh, align 64
  %call6 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1743, ptr noundef %call2, ptr noundef %sb, ptr noundef %10, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1745, ptr noundef nonnull @.str.57, i32 noundef %call6) #11
  br label %errout

if.end8:                                          ; preds = %do.end
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_sbh10 = getelementptr inbounds %struct.ext4_sb_info, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %s_sbh10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_sbh10, align 64
  tail call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #11
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end8.if.then.i_crit_edge

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end8
  tail call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 4, ptr elementtype(i32) %14) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %18 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end8.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %14) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %conv = sext i32 %add to i64
  %add11 = add i64 %conv, %o_blocks_count
  %conv.i = trunc i64 %add11 to i32
  %19 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #11
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %s_blocks_count_lo.i, align 4
  %shr.i = lshr i64 %add11, 32
  %conv1.i = trunc i64 %shr.i to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #11
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %22 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %s_blocks_count_hi.i, align 8
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %23 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool.not.i = icmp sgt i32 %24, -1
  br i1 %tobool.not.i, label %lock_buffer.exit.ext4_free_blocks_count.exit_crit_edge, label %cond.true.i

lock_buffer.exit.ext4_free_blocks_count.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_free_blocks_count.exit

cond.true.i:                                      ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %s_free_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 52
  %25 = ptrtoint ptr %s_free_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_free_blocks_count_hi.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  %conv.i84 = zext i32 %27 to i64
  %shl.i = shl nuw i64 %conv.i84, 32
  br label %ext4_free_blocks_count.exit

ext4_free_blocks_count.exit:                      ; preds = %cond.true.i, %lock_buffer.exit.ext4_free_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %lock_buffer.exit.ext4_free_blocks_count.exit_crit_edge ]
  %s_free_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %s_free_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_free_blocks_count_lo.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %conv1.i85 = zext i32 %30 to i64
  %or.i = or i64 %cond.i, %conv1.i85
  %add14 = add i64 %or.i, %conv
  %conv.i86 = trunc i64 %add14 to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv.i86) #11
  %32 = ptrtoint ptr %s_free_blocks_count_lo.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %s_free_blocks_count_lo.i, align 4
  %shr.i88 = lshr i64 %add14, 32
  %conv1.i89 = trunc i64 %shr.i88 to i32
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv1.i89) #11
  %s_free_blocks_count_hi.i90 = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 52
  %34 = ptrtoint ptr %s_free_blocks_count_hi.i90 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %s_free_blocks_count_hi.i90, align 8
  tail call void @ext4_superblock_csum_set(ptr noundef %sb) #11
  %35 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_fs_info.i, align 16
  %s_sbh16 = getelementptr inbounds %struct.ext4_sb_info, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %s_sbh16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_sbh16, align 64
  tail call void @unlock_buffer(ptr noundef %38) #11
  %call17 = tail call i32 @ext4_group_add_blocks(ptr noundef %call2, ptr noundef %sb, i64 noundef %o_blocks_count, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %ext4_free_blocks_count.exit.errout_crit_edge

ext4_free_blocks_count.exit.errout_crit_edge:     ; preds = %ext4_free_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end20:                                         ; preds = %ext4_free_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_fs_info.i, align 16
  %s_sbh22 = getelementptr inbounds %struct.ext4_sb_info, ptr %40, i32 0, i32 14
  %41 = ptrtoint ptr %s_sbh22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_sbh22, align 64
  %call23 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1760, ptr noundef %call2, ptr noundef null, ptr noundef %42) #11
  br label %errout

errout:                                           ; preds = %if.end20, %ext4_free_blocks_count.exit.errout_crit_edge, %if.then7
  %err.0 = phi i32 [ %call6, %if.then7 ], [ %call17, %ext4_free_blocks_count.exit.errout_crit_edge ], [ 0, %if.end20 ]
  %call25 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_group_extend_no_check, i32 noundef 1764, ptr noundef %call2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp ne i32 %call25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool27.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %tobool26.not, i1 %tobool27.not, i1 false
  %err.1 = select i1 %or.cond, i32 %call25, i32 %err.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool30.not = icmp eq i32 %err.1, 0
  br i1 %tobool30.not, label %if.then31, label %errout.cleanup_crit_edge

errout.cleanup_crit_edge:                         ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %errout
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 17
  %45 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.then31.if.end41_crit_edge, label %do.end37

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end37:                                         ; preds = %if.then31
  %s_feature_incompat.i94 = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %47 = ptrtoint ptr %s_feature_incompat.i94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_feature_incompat.i94, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %tobool.not.i95 = icmp sgt i32 %48, -1
  br i1 %tobool.not.i95, label %do.end37.ext4_blocks_count.exit_crit_edge, label %cond.true.i99

do.end37.ext4_blocks_count.exit_crit_edge:        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i99:                                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i96 = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %49 = ptrtoint ptr %s_blocks_count_hi.i96 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_blocks_count_hi.i96, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  %conv.i97 = zext i32 %51 to i64
  %shl.i98 = shl nuw i64 %conv.i97, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i99, %do.end37.ext4_blocks_count.exit_crit_edge
  %cond.i100 = phi i64 [ %shl.i98, %cond.true.i99 ], [ 0, %do.end37.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i101 = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %s_blocks_count_lo.i101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocks_count_lo.i101, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  %conv1.i102 = zext i32 %54 to i64
  %or.i103 = or i64 %cond.i100, %conv1.i102
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i64 noundef %or.i103) #15
  br label %if.end41

if.end41:                                         ; preds = %ext4_blocks_count.exit, %if.then31.if.end41_crit_edge
  %55 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i, align 16
  %s_sbh43 = getelementptr inbounds %struct.ext4_sb_info, ptr %56, i32 0, i32 14
  %57 = ptrtoint ptr %s_sbh43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %s_sbh43, align 64
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %b_blocknr, align 8
  tail call fastcc void @update_backups(ptr noundef %sb, i64 noundef %60, ptr noundef %3, i32 noundef 1024, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %errout.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %if.end41 ], [ %err.1, %errout.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_resize_fs(ptr noundef %sb, i64 noundef %n_blocks_count) local_unnamed_addr #0 align 64 {
entry:
  %n_group.i = alloca i32, align 4
  %group.i = alloca i32, align 4
  %last.i = alloca i32, align 4
  %offset = alloca i32, align 4
  %o_group = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_es, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #11
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %offset, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %o_group) #11
  %5 = ptrtoint ptr %o_group to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %o_group, align 4, !annotation !184
  %s_log_groups_per_flex = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 112
  %6 = ptrtoint ptr %s_log_groups_per_flex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_log_groups_per_flex, align 4
  %shl = shl nuw i32 1, %7
  %sub = add i64 %n_blocks_count, -1
  %call1 = tail call ptr @ext4_sb_bread(ptr noundef %sb, i64 noundef %sub, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 1975, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %call1, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %call1) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 29
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 1
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 50
  %s_groups_count = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %s_reserved_gdt_blocks = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 37
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %3, i32 0, i32 5
  %s_itb_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 5
  %s_cluster_ratio = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 11
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %7)
  %cmp1.i = icmp ugt i32 %7, 26
  %8 = shl nuw i32 48, %7
  %9 = shl nuw nsw i32 %shl, 1
  %sub13.i = add i32 %shl, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shl)
  %cmp.i376 = icmp sgt i32 %shl, 1
  %conv.i377 = select i1 %cmp.i376, i16 -3, i16 -1
  %neg.i = sub i32 0, %shl
  br label %retry.outer

retry.outer:                                      ; preds = %retry.outer.backedge, %brelse.exit
  %n_blocks_count.addr.0.ph = phi i64 [ %n_blocks_count, %brelse.exit ], [ %n_blocks_count.addr.0.ph.be, %retry.outer.backedge ]
  %last_update_time.0.ph = phi i32 [ 0, %brelse.exit ], [ %last_update_time.0.ph.be, %retry.outer.backedge ]
  br label %retry

retry:                                            ; preds = %retry.backedge, %retry.outer
  %n_blocks_count.addr.0 = phi i64 [ %n_blocks_count.addr.0.ph, %retry.outer ], [ %n_blocks_count.addr.0.be, %retry.backedge ]
  %10 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %tobool.not.i284 = icmp sgt i32 %11, -1
  br i1 %tobool.not.i284, label %retry.ext4_blocks_count.exit_crit_edge, label %cond.true.i

retry.ext4_blocks_count.exit_crit_edge:           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocks_count_hi.i, align 8
  %14 = call i32 @llvm.bswap.i32(i32 %13) #11
  %conv.i = zext i32 %14 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %retry.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %retry.ext4_blocks_count.exit_crit_edge ]
  %15 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_blocks_count_lo.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #11
  %conv1.i = zext i32 %17 to i64
  %or.i = or i64 %cond.i, %conv1.i
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i64 noundef %or.i, i64 noundef %n_blocks_count.addr.0) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %n_blocks_count.addr.0, i64 %or.i)
  %cmp = icmp ult i64 %n_blocks_count.addr.0, %or.i
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 1988, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end5:                                          ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %n_blocks_count.addr.0, i64 %or.i)
  %cmp6 = icmp eq i64 %n_blocks_count.addr.0, %or.i
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %sub9 = add i64 %n_blocks_count.addr.0, -1
  %call10 = call i32 @ext4_get_group_number(ptr noundef %sb, i64 noundef %sub9) #11
  %18 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_inodes_per_group, align 16
  %div = udiv i32 -1, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %div)
  %cmp12.not = icmp ult i32 %call10, %div
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 1998, ptr noundef nonnull @.str.18) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %sub15 = add i64 %or.i, -1
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %sub15, ptr noundef nonnull %o_group, ptr noundef nonnull %offset) #11
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %s_desc_per_block.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_desc_per_block.i, align 4
  %sub.i = add i32 %25, %call10
  %div.i = udiv i32 %sub.i, %25
  %26 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_groups_count, align 32
  %add.i = add i32 %25, -1
  %sub.i288 = add i32 %add.i, %27
  %div.i289 = udiv i32 %sub.i288, %25
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 15
  %28 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i291 = getelementptr inbounds %struct.ext4_super_block, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %s_feature_incompat.i291 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_feature_incompat.i291, align 8
  %and.i = and i32 %31, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i292.not446 = icmp eq i32 %and.i, 0
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %29, i32 0, i32 28
  %32 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_feature_compat.i, align 4
  %and.i295 = and i32 %33, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i295)
  %cmp.i296.not = icmp eq i32 %and.i295, 0
  br i1 %cmp.i296.not, label %if.end14.if.end48_crit_edge, label %if.then21

if.end14.if.end48_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then21:                                        ; preds = %if.end14
  br i1 %cmp.i292.not446, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2011, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end23:                                         ; preds = %if.then21
  %34 = ptrtoint ptr %s_reserved_gdt_blocks to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %s_reserved_gdt_blocks, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv24 = zext i16 %36 to i32
  %add25 = add i32 %div.i289, %conv24
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %add25)
  %cmp26 = icmp ugt i32 %div.i, %add25
  br i1 %cmp26, label %if.then28, label %if.end23.if.then41_crit_edge

if.end23.if.then41_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %add25, %25
  %conv33 = zext i32 %mul to i64
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %23, i32 0, i32 2
  %37 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocks_per_group, align 8
  %conv35 = zext i32 %38 to i64
  %mul36 = mul nuw i64 %conv35, %conv33
  %39 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_first_data_block, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %conv37 = zext i32 %41 to i64
  %add38 = add nuw i64 %mul36, %conv37
  %dec = add i32 %mul, -1
  br label %if.then41

if.then41:                                        ; preds = %if.then28, %if.end23.if.then41_crit_edge
  %n_blocks_count.addr.1 = phi i64 [ %add38, %if.then28 ], [ %n_blocks_count.addr.0, %if.end23.if.then41_crit_edge ]
  %n_group.0 = phi i32 [ %dec, %if.then28 ], [ %call10, %if.end23.if.then41_crit_edge ]
  %n_blocks_count_retry.1 = phi i64 [ %n_blocks_count.addr.0, %if.then28 ], [ 0, %if.end23.if.then41_crit_edge ]
  %call42 = call ptr @__ext4_iget(ptr noundef %sb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2028) #11
  %cmp.i299 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then45, label %if.then41.if.end48_crit_edge

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2030, ptr noundef nonnull @.str.8) #11
  %42 = ptrtoint ptr %call42 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.then41.if.end48_crit_edge, %if.end14.if.end48_crit_edge
  %n_blocks_count.addr.2 = phi i64 [ %n_blocks_count.addr.1, %if.then41.if.end48_crit_edge ], [ %n_blocks_count.addr.0, %if.end14.if.end48_crit_edge ]
  %resize_inode.2 = phi ptr [ %call42, %if.then41.if.end48_crit_edge ], [ null, %if.end14.if.end48_crit_edge ]
  %n_group.1 = phi i32 [ %n_group.0, %if.then41.if.end48_crit_edge ], [ %call10, %if.end14.if.end48_crit_edge ]
  %n_blocks_count_retry.2 = phi i64 [ %n_blocks_count_retry.1, %if.then41.if.end48_crit_edge ], [ 0, %if.end14.if.end48_crit_edge ]
  %tobool49.not = icmp eq ptr %resize_inode.2, null
  %brmerge.not = select i1 %tobool49.not, i1 %cmp.i292.not446, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %n_blocks_count.addr.2, i64 %or.i)
  %cmp51 = icmp eq i64 %n_blocks_count.addr.2, %or.i
  %or.cond = select i1 %brmerge.not, i1 true, i1 %cmp51
  br i1 %or.cond, label %if.then53, label %if.end48.if.end64_crit_edge

if.end48.if.end64_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then53:                                        ; preds = %if.end48
  %43 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i301 = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %s_es.i301 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_es.i301, align 4
  %add.ptr.i.i = getelementptr i8, ptr %resize_inode.2, i32 -464
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.59) #11
  br i1 %tobool49.not, label %if.then53.if.end22.i_crit_edge, label %if.then.i303

if.then53.if.end22.i_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.then.i303:                                     ; preds = %if.then53
  %s_reserved_gdt_blocks.i = getelementptr inbounds %struct.ext4_super_block, ptr %46, i32 0, i32 37
  %47 = ptrtoint ptr %s_reserved_gdt_blocks.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %s_reserved_gdt_blocks.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool2.not.i = icmp eq i16 %48, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i303
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1879, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.60) #11
  br label %if.then156

if.end.i:                                         ; preds = %if.then.i303
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %resize_inode.2, i32 0, i32 22
  %49 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_blocks.i, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %resize_inode.2, i32 0, i32 20
  %51 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %i_blkbits.i, align 2
  %conv.i304 = zext i8 %52 to i32
  %s_cluster_bits.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 12
  %53 = ptrtoint ptr %s_cluster_bits.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_cluster_bits.i, align 16
  %sub.neg.i = add i32 %54, -9
  %sub4.i = add i32 %sub.neg.i, %conv.i304
  %shl.i305 = shl nuw i32 1, %sub4.i
  %conv5.i = sext i32 %shl.i305 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %conv5.i)
  %cmp.not.i = icmp eq i64 %50, %conv5.i
  br i1 %cmp.not.i, label %if.end16.i, label %if.end.i.invalid_resize_inode.i_crit_edge

if.end.i.invalid_resize_inode.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %resize_inode.2, i32 -412
  %55 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool19.not.i = icmp eq i32 %56, 0
  br i1 %tobool19.not.i, label %if.end16.1.i, label %if.end16.i.invalid_resize_inode.i_crit_edge

if.end16.i.invalid_resize_inode.i_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.1.i:                                     ; preds = %if.end16.i
  %arrayidx18.1.i = getelementptr i8, ptr %resize_inode.2, i32 -460
  %57 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx18.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool19.not.1.i = icmp eq i32 %58, 0
  br i1 %tobool19.not.1.i, label %if.end16.2.i, label %if.end16.1.i.invalid_resize_inode.i_crit_edge

if.end16.1.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.2.i:                                     ; preds = %if.end16.1.i
  %arrayidx18.2.i = getelementptr i8, ptr %resize_inode.2, i32 -456
  %59 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx18.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool19.not.2.i = icmp eq i32 %60, 0
  br i1 %tobool19.not.2.i, label %if.end16.3.i, label %if.end16.2.i.invalid_resize_inode.i_crit_edge

if.end16.2.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.3.i:                                     ; preds = %if.end16.2.i
  %arrayidx18.3.i = getelementptr i8, ptr %resize_inode.2, i32 -452
  %61 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx18.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool19.not.3.i = icmp eq i32 %62, 0
  br i1 %tobool19.not.3.i, label %if.end16.4.i, label %if.end16.3.i.invalid_resize_inode.i_crit_edge

if.end16.3.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.4.i:                                     ; preds = %if.end16.3.i
  %arrayidx18.4.i = getelementptr i8, ptr %resize_inode.2, i32 -448
  %63 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx18.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool19.not.4.i = icmp eq i32 %64, 0
  br i1 %tobool19.not.4.i, label %if.end16.5.i, label %if.end16.4.i.invalid_resize_inode.i_crit_edge

if.end16.4.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.5.i:                                     ; preds = %if.end16.4.i
  %arrayidx18.5.i = getelementptr i8, ptr %resize_inode.2, i32 -444
  %65 = ptrtoint ptr %arrayidx18.5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx18.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool19.not.5.i = icmp eq i32 %66, 0
  br i1 %tobool19.not.5.i, label %if.end16.6.i, label %if.end16.5.i.invalid_resize_inode.i_crit_edge

if.end16.5.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.6.i:                                     ; preds = %if.end16.5.i
  %arrayidx18.6.i = getelementptr i8, ptr %resize_inode.2, i32 -440
  %67 = ptrtoint ptr %arrayidx18.6.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx18.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool19.not.6.i = icmp eq i32 %68, 0
  br i1 %tobool19.not.6.i, label %if.end16.7.i, label %if.end16.6.i.invalid_resize_inode.i_crit_edge

if.end16.6.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.7.i:                                     ; preds = %if.end16.6.i
  %arrayidx18.7.i = getelementptr i8, ptr %resize_inode.2, i32 -436
  %69 = ptrtoint ptr %arrayidx18.7.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx18.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool19.not.7.i = icmp eq i32 %70, 0
  br i1 %tobool19.not.7.i, label %if.end16.8.i, label %if.end16.7.i.invalid_resize_inode.i_crit_edge

if.end16.7.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.8.i:                                     ; preds = %if.end16.7.i
  %arrayidx18.8.i = getelementptr i8, ptr %resize_inode.2, i32 -432
  %71 = ptrtoint ptr %arrayidx18.8.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx18.8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool19.not.8.i = icmp eq i32 %72, 0
  br i1 %tobool19.not.8.i, label %if.end16.9.i, label %if.end16.8.i.invalid_resize_inode.i_crit_edge

if.end16.8.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.9.i:                                     ; preds = %if.end16.8.i
  %arrayidx18.9.i = getelementptr i8, ptr %resize_inode.2, i32 -428
  %73 = ptrtoint ptr %arrayidx18.9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx18.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool19.not.9.i = icmp eq i32 %74, 0
  br i1 %tobool19.not.9.i, label %if.end16.10.i, label %if.end16.9.i.invalid_resize_inode.i_crit_edge

if.end16.9.i.invalid_resize_inode.i_crit_edge:    ; preds = %if.end16.9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.10.i:                                    ; preds = %if.end16.9.i
  %arrayidx18.10.i = getelementptr i8, ptr %resize_inode.2, i32 -424
  %75 = ptrtoint ptr %arrayidx18.10.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx18.10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool19.not.10.i = icmp eq i32 %76, 0
  br i1 %tobool19.not.10.i, label %if.end16.11.i, label %if.end16.10.i.invalid_resize_inode.i_crit_edge

if.end16.10.i.invalid_resize_inode.i_crit_edge:   ; preds = %if.end16.10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.11.i:                                    ; preds = %if.end16.10.i
  %arrayidx18.11.i = getelementptr i8, ptr %resize_inode.2, i32 -420
  %77 = ptrtoint ptr %arrayidx18.11.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx18.11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool19.not.11.i = icmp eq i32 %78, 0
  br i1 %tobool19.not.11.i, label %if.end16.12.i, label %if.end16.11.i.invalid_resize_inode.i_crit_edge

if.end16.11.i.invalid_resize_inode.i_crit_edge:   ; preds = %if.end16.11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.12.i:                                    ; preds = %if.end16.11.i
  %arrayidx18.12.i = getelementptr i8, ptr %resize_inode.2, i32 -416
  %79 = ptrtoint ptr %arrayidx18.12.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx18.12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool19.not.12.i = icmp eq i32 %80, 0
  br i1 %tobool19.not.12.i, label %if.then13.13.i, label %if.end16.12.i.invalid_resize_inode.i_crit_edge

if.end16.12.i.invalid_resize_inode.i_crit_edge:   ; preds = %if.end16.12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.then13.13.i:                                   ; preds = %if.end16.12.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool14.not.13.i = icmp eq i32 %82, 0
  br i1 %tobool14.not.13.i, label %if.then13.13.i.invalid_resize_inode.i_crit_edge, label %if.end16.14.i

if.then13.13.i.invalid_resize_inode.i_crit_edge:  ; preds = %if.then13.13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.14.i:                                    ; preds = %if.then13.13.i
  %arrayidx18.14.i = getelementptr i8, ptr %resize_inode.2, i32 -408
  %83 = ptrtoint ptr %arrayidx18.14.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx18.14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool19.not.14.i = icmp eq i32 %84, 0
  br i1 %tobool19.not.14.i, label %if.end16.14.i.if.end22.i_crit_edge, label %if.end16.14.i.invalid_resize_inode.i_crit_edge

if.end16.14.i.invalid_resize_inode.i_crit_edge:   ; preds = %if.end16.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %invalid_resize_inode.i

if.end16.14.i.if.end22.i_crit_edge:               ; preds = %if.end16.14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end16.14.i.if.end22.i_crit_edge, %if.then53.if.end22.i_crit_edge
  %credits.0.i = phi i32 [ 1, %if.then53.if.end22.i_crit_edge ], [ 4, %if.end16.14.i.if.end22.i_crit_edge ]
  %85 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_ratio.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %s_cluster_ratio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_cluster_ratio.i.i.i, align 4
  %mul.i.i.i = shl i32 %88, 3
  %call24.i = call ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef 1900, i32 noundef 7, i32 noundef %credits.0.i, i32 noundef 0, i32 noundef %mul.i.i.i) #11
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then26.i, label %do.end.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %call24.i to i32
  br label %ext4_convert_meta_bg.exit

do.end.i:                                         ; preds = %if.end22.i
  %s_sbh.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 14
  %90 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_sbh.i, align 64
  %call29.i = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1906, ptr noundef %call24.i, ptr noundef %sb, ptr noundef %91, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %do.end.i.errout.i_crit_edge

do.end.i.errout.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i

if.end32.i:                                       ; preds = %do.end.i
  %92 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_sbh.i, align 64
  call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 366) #11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %93, i32 noundef 4) #11
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %93, align 4
  %and.i.i.i.i.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.end32.i.if.then.i.i_crit_edge

if.end32.i.if.then.i.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

trylock_buffer.exit.i.i:                          ; preds = %if.end32.i
  call void @llvm.prefetch.p0(ptr %93, i32 1, i32 3, i32 1) #11
  %96 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 4, ptr elementtype(i32) %93) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %97 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.not.i.i = icmp eq i32 %97, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i.i_crit_edge

trylock_buffer.exit.i.i.if.then.i.i_crit_edge:    ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit.i

if.then.i.i:                                      ; preds = %trylock_buffer.exit.i.i.if.then.i.i_crit_edge, %if.end32.i.if.then.i.i_crit_edge
  call void @__lock_buffer(ptr noundef %93) #11
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %98 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %99, i32 0, i32 15
  %100 = ptrtoint ptr %s_es.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %s_es.i.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %101, i32 0, i32 28
  %102 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i.i = and i32 %103, -268435457
  store i32 %and.i.i, ptr %s_feature_compat.i.i, align 4
  call void @ext4_update_dynamic_rev(ptr noundef %sb) #11
  %104 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i128.i = getelementptr inbounds %struct.ext4_sb_info, ptr %105, i32 0, i32 15
  %106 = ptrtoint ptr %s_es.i128.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_es.i128.i, align 4
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %107, i32 0, i32 29
  %108 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_feature_incompat.i.i, align 8
  %or.i.i = or i32 %109, 268435456
  store i32 %or.i.i, ptr %s_feature_incompat.i.i, align 8
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %44, i32 0, i32 8
  %110 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_groups_count.i, align 32
  %112 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %s_desc_per_block.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %s_desc_per_block.i.i, align 4
  %add.i.i = add i32 %111, -1
  %sub.i.i = add i32 %add.i.i, %114
  %div.i.i = udiv i32 %sub.i.i, %114
  %115 = call i32 @llvm.bswap.i32(i32 %div.i.i) #11
  %116 = ptrtoint ptr %s_es.i301 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %s_es.i301, align 4
  %s_first_meta_bg.i = getelementptr inbounds %struct.ext4_super_block, ptr %117, i32 0, i32 47
  %118 = ptrtoint ptr %s_first_meta_bg.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %115, ptr %s_first_meta_bg.i, align 4
  call void @ext4_superblock_csum_set(ptr noundef %sb) #11
  %119 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %s_sbh.i, align 64
  call void @unlock_buffer(ptr noundef %120) #11
  %121 = ptrtoint ptr %s_sbh.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %s_sbh.i, align 64
  %call38.i = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1918, ptr noundef %call24.i, ptr noundef null, ptr noundef %122) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end47.i, label %if.then43.i

if.then43.i:                                      ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1920, i32 noundef %call38.i) #11
  br label %errout.i

if.end47.i:                                       ; preds = %lock_buffer.exit.i
  br i1 %tobool49.not, label %if.end47.i.errout.i_crit_edge, label %if.then49.i

if.end47.i.errout.i_crit_edge:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i

if.then49.i:                                      ; preds = %if.end47.i
  %arrayidx51.i = getelementptr i8, ptr %resize_inode.2, i32 -412
  %123 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx51.i, align 4
  %125 = call i32 @llvm.bswap.i32(i32 %124) #11
  %conv52.i = zext i32 %125 to i64
  call void @ext4_free_blocks(ptr noundef %call24.i, ptr noundef nonnull %resize_inode.2, ptr noundef null, i64 noundef %conv52.i, i32 noundef 1, i32 noundef 3) #11
  %126 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %arrayidx51.i, align 4
  %i_blocks55.i = getelementptr inbounds %struct.inode, ptr %resize_inode.2, i32 0, i32 22
  %127 = ptrtoint ptr %i_blocks55.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 0, ptr %i_blocks55.i, align 8
  %call56.i = call i32 @__ext4_mark_inode_dirty(ptr noundef %call24.i, ptr noundef nonnull %resize_inode.2, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1932) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.then49.i.errout.i_crit_edge, label %if.then61.i

if.then49.i.errout.i_crit_edge:                   ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout.i

if.then61.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1934, i32 noundef %call56.i) #11
  br label %errout.i

errout.i:                                         ; preds = %if.then61.i, %if.then49.i.errout.i_crit_edge, %if.end47.i.errout.i_crit_edge, %if.then43.i, %do.end.i.errout.i_crit_edge
  %call67.i = call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1938, ptr noundef %call24.i) #11
  br label %ext4_convert_meta_bg.exit

invalid_resize_inode.i:                           ; preds = %if.end16.14.i.invalid_resize_inode.i_crit_edge, %if.then13.13.i.invalid_resize_inode.i_crit_edge, %if.end16.12.i.invalid_resize_inode.i_crit_edge, %if.end16.11.i.invalid_resize_inode.i_crit_edge, %if.end16.10.i.invalid_resize_inode.i_crit_edge, %if.end16.9.i.invalid_resize_inode.i_crit_edge, %if.end16.8.i.invalid_resize_inode.i_crit_edge, %if.end16.7.i.invalid_resize_inode.i_crit_edge, %if.end16.6.i.invalid_resize_inode.i_crit_edge, %if.end16.5.i.invalid_resize_inode.i_crit_edge, %if.end16.4.i.invalid_resize_inode.i_crit_edge, %if.end16.3.i.invalid_resize_inode.i_crit_edge, %if.end16.2.i.invalid_resize_inode.i_crit_edge, %if.end16.1.i.invalid_resize_inode.i_crit_edge, %if.end16.i.invalid_resize_inode.i_crit_edge, %if.end.i.invalid_resize_inode.i_crit_edge
  call void (ptr, ptr, i32, i1, i32, i64, ptr, ...) @__ext4_error(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_convert_meta_bg, i32 noundef 1944, i1 noundef zeroext false, i32 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.61) #11
  br label %if.then156

ext4_convert_meta_bg.exit:                        ; preds = %errout.i, %if.then26.i
  %retval.0.i = phi i32 [ %89, %if.then26.i ], [ %call67.i, %errout.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool55.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool55.not, label %if.end57, label %ext4_convert_meta_bg.exit.if.end153_crit_edge

ext4_convert_meta_bg.exit.if.end153_crit_edge:    ; preds = %ext4_convert_meta_bg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end57:                                         ; preds = %ext4_convert_meta_bg.exit
  br i1 %tobool49.not, label %if.end57.if.end60_crit_edge, label %if.then59

if.end57.if.end60_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  call void @iput(ptr noundef nonnull %resize_inode.2) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end57.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n_blocks_count_retry.2)
  %tobool61.not = icmp eq i64 %n_blocks_count_retry.2, 0
  br i1 %tobool61.not, label %if.end60.if.end64_crit_edge, label %if.end60.retry.backedge_crit_edge

if.end60.retry.backedge_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.backedge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end64:                                         ; preds = %if.end60.if.end64_crit_edge, %if.end48.if.end64_crit_edge
  %resize_inode.4 = phi ptr [ null, %if.end60.if.end64_crit_edge ], [ %resize_inode.2, %if.end48.if.end64_crit_edge ]
  %conv.i306 = zext i32 %n_group.1 to i64
  %128 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i308 = zext i32 %131 to i64
  %mul.i = mul nuw i64 %conv1.i308, %conv.i306
  %s_es.i309 = getelementptr inbounds %struct.ext4_sb_info, ptr %129, i32 0, i32 15
  %132 = ptrtoint ptr %s_es.i309 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %s_es.i309, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_first_data_block.i, align 4
  %136 = call i32 @llvm.bswap.i32(i32 %135) #11
  %conv3.i = zext i32 %136 to i64
  %call.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %n_group.1) #11
  %call1.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %n_group.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i311 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i311, label %if.end64.ext4_group_overhead_blocks.exit_crit_edge, label %if.then.i317

if.end64.ext4_group_overhead_blocks.exit_crit_edge: ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_group_overhead_blocks.exit

if.then.i317:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i313 = getelementptr inbounds %struct.ext4_sb_info, ptr %138, i32 0, i32 15
  %139 = ptrtoint ptr %s_es.i313 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %s_es.i313, align 4
  %s_reserved_gdt_blocks.i314 = getelementptr inbounds %struct.ext4_super_block, ptr %140, i32 0, i32 37
  %141 = ptrtoint ptr %s_reserved_gdt_blocks.i314 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %s_reserved_gdt_blocks.i314, align 2
  %143 = call i16 @llvm.bswap.i16(i16 %142) #11
  %conv.i315 = zext i16 %143 to i32
  %add.i316 = add i32 %call.i, 1
  %add3.i = add i32 %add.i316, %conv.i315
  br label %ext4_group_overhead_blocks.exit

ext4_group_overhead_blocks.exit:                  ; preds = %if.then.i317, %if.end64.ext4_group_overhead_blocks.exit_crit_edge
  %overhead.0.i = phi i32 [ %add3.i, %if.then.i317 ], [ %call.i, %if.end64.ext4_group_overhead_blocks.exit_crit_edge ]
  %conv67 = sext i32 %overhead.0.i to i64
  %144 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_itb_per_group, align 4
  %conv70 = zext i32 %145 to i64
  %146 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_cluster_ratio, align 4
  %conv72 = zext i32 %147 to i64
  %add.i310 = add nuw i64 %mul.i, 2
  %add68 = add nuw i64 %add.i310, %conv3.i
  %add69 = add i64 %add68, %conv67
  %add71 = add i64 %add69, %conv70
  %add73 = add i64 %add71, %conv72
  call void @__sanitizer_cov_trace_cmp8(i64 %add73, i64 %n_blocks_count.addr.2)
  %cmp74.not = icmp ult i64 %add73, %n_blocks_count.addr.2
  br i1 %cmp74.not, label %if.end82, label %if.then76

if.then76:                                        ; preds = %ext4_group_overhead_blocks.exit
  %148 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i321 = getelementptr inbounds %struct.ext4_sb_info, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %s_blocks_per_group.i321 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_blocks_per_group.i321, align 8
  %conv1.i322 = zext i32 %151 to i64
  %mul.i323 = mul nuw i64 %conv1.i322, %conv.i306
  %s_es.i324 = getelementptr inbounds %struct.ext4_sb_info, ptr %149, i32 0, i32 15
  %152 = ptrtoint ptr %s_es.i324 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %s_es.i324, align 4
  %s_first_data_block.i325 = getelementptr inbounds %struct.ext4_super_block, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %s_first_data_block.i325 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %s_first_data_block.i325, align 4
  %156 = call i32 @llvm.bswap.i32(i32 %155) #11
  %conv3.i326 = zext i32 %156 to i64
  %add.i327 = add nuw i64 %mul.i323, %conv3.i326
  %tobool79.not = icmp eq ptr %resize_inode.4, null
  br i1 %tobool79.not, label %if.then76.retry.backedge_crit_edge, label %if.then76.retry.backedge.sink.split_crit_edge

if.then76.retry.backedge.sink.split_crit_edge:    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.backedge.sink.split

if.then76.retry.backedge_crit_edge:               ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then76.retry.backedge_crit_edge, %if.end60.retry.backedge_crit_edge
  %n_blocks_count.addr.0.be = phi i64 [ %n_blocks_count_retry.2, %if.end60.retry.backedge_crit_edge ], [ %add.i327, %if.then76.retry.backedge_crit_edge ]
  br label %retry

retry.backedge.sink.split:                        ; preds = %if.then146.retry.backedge.sink.split_crit_edge, %if.then76.retry.backedge.sink.split_crit_edge
  %n_blocks_count.addr.0.be.ph = phi i64 [ %n_blocks_count_retry.2, %if.then146.retry.backedge.sink.split_crit_edge ], [ %add.i327, %if.then76.retry.backedge.sink.split_crit_edge ]
  %last_update_time.0.be.ph = phi i32 [ %last_update_time.3.ph, %if.then146.retry.backedge.sink.split_crit_edge ], [ %last_update_time.0.ph, %if.then76.retry.backedge.sink.split_crit_edge ]
  call void @iput(ptr noundef nonnull %resize_inode.4) #11
  br label %retry.outer.backedge

if.end82:                                         ; preds = %ext4_group_overhead_blocks.exit
  %157 = ptrtoint ptr %o_group to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %o_group, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n_group.1, i32 %158)
  %cmp83 = icmp eq i32 %n_group.1, %158
  br i1 %cmp83, label %if.then85, label %if.else

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %159 = trunc i64 %n_blocks_count.addr.2 to i32
  %conv87 = sub i32 %159, %17
  br label %if.end92

if.else:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %s_fs_info.i, align 16
  %s_clusters_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %s_clusters_per_group to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %s_clusters_per_group, align 4
  %164 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %offset, align 4
  %add89.neg = xor i32 %165, -1
  %sub90 = add i32 %163, %add89.neg
  %166 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %s_cluster_bits, align 16
  %shl91 = shl i32 %sub90, %167
  br label %if.end92

if.end92:                                         ; preds = %if.else, %if.then85
  %add.0 = phi i32 [ %conv87, %if.then85 ], [ %shl91, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.0)
  %cmp93 = icmp sgt i32 %add.0, 0
  br i1 %cmp93, label %if.then95, label %if.end92.if.end100_crit_edge

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then95:                                        ; preds = %if.end92
  %call96 = call fastcc i32 @ext4_group_extend_no_check(ptr noundef %sb, i64 noundef %or.i, i32 noundef %add.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.then95.if.end100_crit_edge, label %if.then95.if.end153_crit_edge

if.then95.if.end153_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then95.if.end100_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.end100:                                        ; preds = %if.then95.if.end100_crit_edge, %if.end92.if.end100_crit_edge
  %168 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %169)
  %tobool.not.i330 = icmp sgt i32 %169, -1
  br i1 %tobool.not.i330, label %if.end100.ext4_blocks_count.exit339_crit_edge, label %cond.true.i334

if.end100.ext4_blocks_count.exit339_crit_edge:    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit339

cond.true.i334:                                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  %170 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %s_blocks_count_hi.i, align 8
  %172 = call i32 @llvm.bswap.i32(i32 %171) #11
  %conv.i332 = zext i32 %172 to i64
  %shl.i333 = shl nuw i64 %conv.i332, 32
  br label %ext4_blocks_count.exit339

ext4_blocks_count.exit339:                        ; preds = %cond.true.i334, %if.end100.ext4_blocks_count.exit339_crit_edge
  %cond.i335 = phi i64 [ %shl.i333, %cond.true.i334 ], [ 0, %if.end100.ext4_blocks_count.exit339_crit_edge ]
  %173 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %s_blocks_count_lo.i, align 4
  %175 = call i32 @llvm.bswap.i32(i32 %174) #11
  %conv1.i337 = zext i32 %175 to i64
  %or.i338 = or i64 %cond.i335, %conv1.i337
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i338, i64 %n_blocks_count.addr.2)
  %cmp102 = icmp eq i64 %or.i338, %n_blocks_count.addr.2
  br i1 %cmp102, label %ext4_blocks_count.exit339.if.end153_crit_edge, label %if.end105

ext4_blocks_count.exit339.if.end153_crit_edge:    ; preds = %ext4_blocks_count.exit339
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end105:                                        ; preds = %ext4_blocks_count.exit339
  %add106 = add i32 %n_group.1, 1
  %call107 = call i32 @ext4_alloc_flex_bg_array(ptr noundef %sb, i32 noundef %add106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end105.if.end153_crit_edge

if.end105.if.end153_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end110:                                        ; preds = %if.end105
  %call112 = call i32 @ext4_mb_alloc_groupinfo(ptr noundef %sb, i32 noundef %add106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.if.end153_crit_edge

if.end110.if.end153_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end115:                                        ; preds = %if.end110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %176 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %176, i32 noundef 3136, i32 noundef 12) #14
  %cmp.i340 = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i340, label %if.end115.if.end153_crit_edge, label %if.end.i341

if.end115.if.end153_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.end.i341:                                      ; preds = %if.end115
  br i1 %cmp1.i, label %if.end.i341.if.end153.sink.split_crit_edge, label %if.end3.i

if.end.i341.if.end153.sink.split_crit_edge:       ; preds = %if.end.i341
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153.sink.split

if.end3.i:                                        ; preds = %if.end.i341
  %count.i = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %call7.i.i, i32 0, i32 2
  %177 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %shl, ptr %count.i, align 8
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3136) #16
  %178 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %cmp672.i = icmp eq ptr %call8.i.i, null
  br i1 %cmp672.i, label %if.end3.i.if.end153.sink.split_crit_edge, label %if.end7.i56.i

if.end3.i.if.end153.sink.split_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153.sink.split

if.end7.i56.i:                                    ; preds = %if.end3.i
  %call8.i55.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3136) #16
  %bg_flags.i = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %call7.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call8.i55.i, ptr %bg_flags.i, align 4
  %cmp11.i = icmp eq ptr %call8.i55.i, null
  br i1 %cmp11.i, label %if.end7.i56.i.if.end153.sink.split.sink.split_crit_edge, label %while.cond.preheader

if.end7.i56.i.if.end153.sink.split.sink.split_crit_edge: ; preds = %if.end7.i56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153.sink.split.sink.split

while.cond.preheader:                             ; preds = %if.end7.i56.i
  %sub.i350 = add i64 %n_blocks_count.addr.2, -1
  br label %while.cond

while.cond:                                       ; preds = %if.end136.while.cond_crit_edge, %while.cond.preheader
  %last_update_time.1 = phi i32 [ %last_update_time.2, %if.end136.while.cond_crit_edge ], [ %last_update_time.0.ph, %while.cond.preheader ]
  %180 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i344 = getelementptr inbounds %struct.ext4_sb_info, ptr %181, i32 0, i32 15
  %182 = ptrtoint ptr %s_es.i344 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %s_es.i344, align 4
  %184 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_group.i) #11
  %186 = ptrtoint ptr %n_group.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 -1, ptr %n_group.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %group.i) #11
  %187 = ptrtoint ptr %group.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 -1, ptr %group.i, align 4, !annotation !184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last.i) #11
  %188 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 -1, ptr %last.i, align 4, !annotation !184
  %s_clusters_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %181, i32 0, i32 3
  %189 = ptrtoint ptr %s_clusters_per_group.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %s_clusters_per_group.i, align 4
  %s_feature_incompat.i.i345 = getelementptr inbounds %struct.ext4_super_block, ptr %183, i32 0, i32 29
  %191 = ptrtoint ptr %s_feature_incompat.i.i345 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %s_feature_incompat.i.i345, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %192)
  %tobool.not.i.i = icmp sgt i32 %192, -1
  br i1 %tobool.not.i.i, label %while.cond.ext4_blocks_count.exit.i_crit_edge, label %cond.true.i.i

while.cond.ext4_blocks_count.exit.i_crit_edge:    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit.i

cond.true.i.i:                                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %183, i32 0, i32 50
  %193 = ptrtoint ptr %s_blocks_count_hi.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %s_blocks_count_hi.i.i, align 8
  %195 = call i32 @llvm.bswap.i32(i32 %194) #11
  %conv.i.i = zext i32 %195 to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %ext4_blocks_count.exit.i

ext4_blocks_count.exit.i:                         ; preds = %cond.true.i.i, %while.cond.ext4_blocks_count.exit.i_crit_edge
  %cond.i.i = phi i64 [ %shl.i.i, %cond.true.i.i ], [ 0, %while.cond.ext4_blocks_count.exit.i_crit_edge ]
  %s_blocks_count_lo.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %183, i32 0, i32 1
  %196 = ptrtoint ptr %s_blocks_count_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %s_blocks_count_lo.i.i, align 4
  %198 = call i32 @llvm.bswap.i32(i32 %197) #11
  %conv1.i.i = zext i32 %198 to i64
  %or.i.i346 = or i64 %cond.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %or.i.i346, i64 %n_blocks_count.addr.2)
  %cmp.i347 = icmp eq i64 %or.i.i346, %n_blocks_count.addr.2
  br i1 %cmp.i347, label %ext4_setup_next_flex_gd.exit, label %if.end.i349

if.end.i349:                                      ; preds = %ext4_blocks_count.exit.i
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %or.i.i346, ptr noundef nonnull %group.i, ptr noundef nonnull %last.i) #11
  %199 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %last.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i348 = icmp eq i32 %200, 0
  br i1 %tobool.not.i348, label %do.end12.i, label %do.body6.i, !prof !187

do.body6.i:                                       ; preds = %if.end.i349
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1602, 0\0A.popsection", ""() #11, !srcloc !196
  unreachable

do.end12.i:                                       ; preds = %if.end.i349
  call void @ext4_get_group_no_and_offset(ptr noundef %sb, i64 noundef %sub.i350, ptr noundef nonnull %n_group.i, ptr noundef nonnull %last.i) #11
  %201 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %group.i, align 4
  %or.i351 = or i32 %202, %sub13.i
  %203 = ptrtoint ptr %n_group.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %n_group.i, align 4
  %205 = call i32 @llvm.umin.i32(i32 %or.i351, i32 %204) #11
  %sub17.i = sub i32 1, %202
  %add.i352 = add i32 %205, %sub17.i
  %206 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %add.i352, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i352)
  %cmp19164.not.i = icmp eq i32 %add.i352, 0
  br i1 %cmp19164.not.i, label %do.end12.i.for.end.i_crit_edge, label %do.end12.i.for.body.i_crit_edge

do.end12.i.for.body.i_crit_edge:                  ; preds = %do.end12.i
  br label %for.body.i

do.end12.i.for.end.i_crit_edge:                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %if.end45.i.for.body.i_crit_edge, %do.end12.i.for.body.i_crit_edge
  %i.0165.i = phi i32 [ %inc.i, %if.end45.i.for.body.i_crit_edge ], [ 0, %do.end12.i.for.body.i_crit_edge ]
  %207 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %group.i, align 4
  %add20.i = add i32 %208, %i.0165.i
  %arrayidx.i355 = getelementptr %struct.ext4_new_group_data, ptr %185, i32 %i.0165.i
  %209 = ptrtoint ptr %arrayidx.i355 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add20.i, ptr %arrayidx.i355, align 8
  %210 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i356 = getelementptr inbounds %struct.ext4_sb_info, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %s_blocks_per_group.i356 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %s_blocks_per_group.i356, align 8
  %blocks_count.i = getelementptr %struct.ext4_new_group_data, ptr %185, i32 %i.0165.i, i32 4
  %214 = ptrtoint ptr %blocks_count.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %blocks_count.i, align 8
  %215 = load i32, ptr %group.i, align 4
  %add24.i = add i32 %215, %i.0165.i
  %call.i.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %add24.i) #11
  %call1.i.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %add24.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i128.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i128.i, label %for.body.i.ext4_group_overhead_blocks.exit.i_crit_edge, label %if.then.i.i359

for.body.i.ext4_group_overhead_blocks.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_group_overhead_blocks.exit.i

if.then.i.i359:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %216 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i357 = getelementptr inbounds %struct.ext4_sb_info, ptr %217, i32 0, i32 15
  %218 = ptrtoint ptr %s_es.i.i357 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %s_es.i.i357, align 4
  %s_reserved_gdt_blocks.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %219, i32 0, i32 37
  %220 = ptrtoint ptr %s_reserved_gdt_blocks.i.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %s_reserved_gdt_blocks.i.i, align 2
  %222 = call i16 @llvm.bswap.i16(i16 %221) #11
  %conv.i129.i = zext i16 %222 to i32
  %add.i.i358 = add i32 %call.i.i, 1
  %add3.i.i = add i32 %add.i.i358, %conv.i129.i
  br label %ext4_group_overhead_blocks.exit.i

ext4_group_overhead_blocks.exit.i:                ; preds = %if.then.i.i359, %for.body.i.ext4_group_overhead_blocks.exit.i_crit_edge
  %overhead.0.i.i = phi i32 [ %add3.i.i, %if.then.i.i359 ], [ %call.i.i, %for.body.i.ext4_group_overhead_blocks.exit.i_crit_edge ]
  %conv.i360 = trunc i32 %overhead.0.i.i to i16
  %mdata_blocks.i = getelementptr %struct.ext4_new_group_data, ptr %185, i32 %i.0165.i, i32 6
  %223 = ptrtoint ptr %mdata_blocks.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 %conv.i360, ptr %mdata_blocks.i, align 2
  %224 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %s_fs_info.i, align 16
  %s_clusters_per_group28.i = getelementptr inbounds %struct.ext4_sb_info, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %s_clusters_per_group28.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %s_clusters_per_group28.i, align 4
  %free_clusters_count.i = getelementptr %struct.ext4_new_group_data, ptr %185, i32 %i.0165.i, i32 7
  %228 = ptrtoint ptr %free_clusters_count.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %free_clusters_count.i, align 8
  %229 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 15
  %230 = ptrtoint ptr %s_es.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %s_es.i.i.i, align 4
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %231, i32 0, i32 30
  %232 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %233, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %lor.rhs.i.i, label %ext4_group_overhead_blocks.exit.i.if.then32.i_crit_edge

ext4_group_overhead_blocks.exit.i.if.then32.i_crit_edge: ; preds = %ext4_group_overhead_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

lor.rhs.i.i:                                      ; preds = %ext4_group_overhead_blocks.exit.i
  %and.i.i.i.i = and i32 %233, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.not.i.i.i, label %lor.rhs.i.i.if.end32.i.i.i_crit_edge, label %land.rhs.i.i.i

lor.rhs.i.i.if.end32.i.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

land.rhs.i.i.i:                                   ; preds = %lor.rhs.i.i
  %s_chksum_driver.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %229, i32 0, i32 121
  %234 = ptrtoint ptr %s_chksum_driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %s_chksum_driver.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %235, null
  br i1 %tobool.not.i.i.i, label %land.rhs5.i.i.i, label %land.rhs.i.i.i.if.end32.i.i.i_crit_edge

land.rhs.i.i.i.if.end32.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

land.rhs5.i.i.i:                                  ; preds = %land.rhs.i.i.i
  %.b50.i.i.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i.i, label %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, label %if.then.i.i.i361, !prof !187

land.rhs5.i.i.i.if.end32.i.i.i_crit_edge:         ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i.i

if.then.i.i.i361:                                 ; preds = %land.rhs5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i.i

if.end32.i.i.i:                                   ; preds = %if.then.i.i.i361, %land.rhs5.i.i.i.if.end32.i.i.i_crit_edge, %land.rhs.i.i.i.if.end32.i.i.i_crit_edge, %lor.rhs.i.i.if.end32.i.i.i_crit_edge
  %236 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %237, i32 0, i32 15
  %238 = ptrtoint ptr %s_es.i53.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %s_es.i53.i.i.i, align 4
  %s_feature_ro_compat.i54.i.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %239, i32 0, i32 30
  %240 = ptrtoint ptr %s_feature_ro_compat.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %s_feature_ro_compat.i54.i.i.i, align 4
  %and.i55.i.i.i = and i32 %241, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i.i)
  %cmp.i56.not.i.i.i = icmp eq i32 %and.i55.i.i.i, 0
  br i1 %cmp.i56.not.i.i.i, label %if.end32.i.i.i.if.else.i_crit_edge, label %ext4_has_group_desc_csum.exit.i

if.end32.i.i.i.if.else.i_crit_edge:               ; preds = %if.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

ext4_has_group_desc_csum.exit.i:                  ; preds = %if.end32.i.i.i
  %s_chksum_driver43.i.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %237, i32 0, i32 121
  %242 = ptrtoint ptr %s_chksum_driver43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %s_chksum_driver43.i.i.i, align 4
  %cmp.i3.i.not.i = icmp eq ptr %243, null
  br i1 %cmp.i3.i.not.i, label %ext4_has_group_desc_csum.exit.i.if.else.i_crit_edge, label %ext4_has_group_desc_csum.exit.i.if.then32.i_crit_edge

ext4_has_group_desc_csum.exit.i.if.then32.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32.i

ext4_has_group_desc_csum.exit.i.if.else.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then32.i:                                      ; preds = %ext4_has_group_desc_csum.exit.i.if.then32.i_crit_edge, %ext4_group_overhead_blocks.exit.i.if.then32.i_crit_edge
  %244 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx33.i = getelementptr i16, ptr %245, i32 %i.0165.i
  %246 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 3, ptr %arrayidx33.i, align 2
  %247 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ext4_sb_info, ptr %248, i32 0, i32 17
  %249 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %s_mount_opt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %250)
  %tobool35.not.i = icmp sgt i32 %250, -1
  br i1 %tobool35.not.i, label %if.then36.i, label %if.then32.i.if.end45.i_crit_edge

if.then32.i.if.end45.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45.i

if.then36.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #13
  %251 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx38.i = getelementptr i16, ptr %252, i32 %i.0165.i
  %253 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %arrayidx38.i, align 2
  %255 = or i16 %254, 4
  store i16 %255, ptr %arrayidx38.i, align 2
  br label %if.end45.i

if.else.i:                                        ; preds = %ext4_has_group_desc_csum.exit.i.if.else.i_crit_edge, %if.end32.i.i.i.if.else.i_crit_edge
  %256 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx44.i = getelementptr i16, ptr %257, i32 %i.0165.i
  %258 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 4, ptr %arrayidx44.i, align 2
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else.i, %if.then36.i, %if.then32.i.if.end45.i_crit_edge
  %inc.i = add nuw i32 %i.0165.i, 1
  %259 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %count.i, align 8
  %cmp19.i = icmp ult i32 %inc.i, %260
  br i1 %cmp19.i, label %if.end45.i.for.body.i_crit_edge, label %if.end45.i.for.end.i_crit_edge

if.end45.i.for.end.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end45.i.for.body.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %if.end45.i.for.end.i_crit_edge, %do.end12.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ -1, %do.end12.i.for.end.i_crit_edge ], [ %i.0165.i, %if.end45.i.for.end.i_crit_edge ]
  %261 = ptrtoint ptr %n_group.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %n_group.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %262)
  %cmp46.i = icmp eq i32 %205, %262
  br i1 %cmp46.i, label %land.lhs.true.i, label %for.end.i.if.end57.i_crit_edge

for.end.i.if.end57.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %263 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i.i133.i = getelementptr inbounds %struct.ext4_sb_info, ptr %264, i32 0, i32 15
  %265 = ptrtoint ptr %s_es.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %s_es.i.i133.i, align 4
  %s_feature_ro_compat.i.i134.i = getelementptr inbounds %struct.ext4_super_block, ptr %266, i32 0, i32 30
  %267 = ptrtoint ptr %s_feature_ro_compat.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %s_feature_ro_compat.i.i134.i, align 4
  %and.i.i135.i = and i32 %268, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i135.i)
  %cmp.i.not.i136.i = icmp eq i32 %and.i.i135.i, 0
  br i1 %cmp.i.not.i136.i, label %lor.rhs.i139.i, label %land.lhs.true.i.if.then50.i_crit_edge

land.lhs.true.i.if.then50.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

lor.rhs.i139.i:                                   ; preds = %land.lhs.true.i
  %and.i.i.i137.i = and i32 %268, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i137.i)
  %cmp.i.not.i.i138.i = icmp eq i32 %and.i.i.i137.i, 0
  br i1 %cmp.i.not.i.i138.i, label %lor.rhs.i139.i.if.end32.i.i150.i_crit_edge, label %land.rhs.i.i142.i

lor.rhs.i139.i.if.end32.i.i150.i_crit_edge:       ; preds = %lor.rhs.i139.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i150.i

land.rhs.i.i142.i:                                ; preds = %lor.rhs.i139.i
  %s_chksum_driver.i.i140.i = getelementptr inbounds %struct.ext4_sb_info, ptr %264, i32 0, i32 121
  %269 = ptrtoint ptr %s_chksum_driver.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %s_chksum_driver.i.i140.i, align 4
  %tobool.not.i.i141.i = icmp eq ptr %270, null
  br i1 %tobool.not.i.i141.i, label %land.rhs5.i.i144.i, label %land.rhs.i.i142.i.if.end32.i.i150.i_crit_edge

land.rhs.i.i142.i.if.end32.i.i150.i_crit_edge:    ; preds = %land.rhs.i.i142.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i150.i

land.rhs5.i.i144.i:                               ; preds = %land.rhs.i.i142.i
  %.b50.i.i143.i = load i1, ptr @ext4_has_metadata_csum.__already_done, align 1
  br i1 %.b50.i.i143.i, label %land.rhs5.i.i144.i.if.end32.i.i150.i_crit_edge, label %if.then.i.i145.i, !prof !187

land.rhs5.i.i144.i.if.end32.i.i150.i_crit_edge:   ; preds = %land.rhs5.i.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i.i150.i

if.then.i.i145.i:                                 ; preds = %land.rhs5.i.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_has_metadata_csum.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.49, i32 noundef 3289, i32 noundef 9, ptr noundef null) #11
  br label %if.end32.i.i150.i

if.end32.i.i150.i:                                ; preds = %if.then.i.i145.i, %land.rhs5.i.i144.i.if.end32.i.i150.i_crit_edge, %land.rhs.i.i142.i.if.end32.i.i150.i_crit_edge, %lor.rhs.i139.i.if.end32.i.i150.i_crit_edge
  %271 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i53.i.i146.i = getelementptr inbounds %struct.ext4_sb_info, ptr %272, i32 0, i32 15
  %273 = ptrtoint ptr %s_es.i53.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %s_es.i53.i.i146.i, align 4
  %s_feature_ro_compat.i54.i.i147.i = getelementptr inbounds %struct.ext4_super_block, ptr %274, i32 0, i32 30
  %275 = ptrtoint ptr %s_feature_ro_compat.i54.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %s_feature_ro_compat.i54.i.i147.i, align 4
  %and.i55.i.i148.i = and i32 %276, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i.i148.i)
  %cmp.i56.not.i.i149.i = icmp eq i32 %and.i55.i.i148.i, 0
  br i1 %cmp.i56.not.i.i149.i, label %if.end32.i.i150.i.if.end57.i_crit_edge, label %ext4_has_group_desc_csum.exit155.i

if.end32.i.i150.i.if.end57.i_crit_edge:           ; preds = %if.end32.i.i150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

ext4_has_group_desc_csum.exit155.i:               ; preds = %if.end32.i.i150.i
  %s_chksum_driver43.i.i151.i = getelementptr inbounds %struct.ext4_sb_info, ptr %272, i32 0, i32 121
  %277 = ptrtoint ptr %s_chksum_driver43.i.i151.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %s_chksum_driver43.i.i151.i, align 4
  %cmp.i3.i152.not.i = icmp eq ptr %278, null
  br i1 %cmp.i3.i152.not.i, label %ext4_has_group_desc_csum.exit155.i.if.end57.i_crit_edge, label %ext4_has_group_desc_csum.exit155.i.if.then50.i_crit_edge

ext4_has_group_desc_csum.exit155.i.if.then50.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then50.i

ext4_has_group_desc_csum.exit155.i.if.end57.i_crit_edge: ; preds = %ext4_has_group_desc_csum.exit155.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then50.i:                                      ; preds = %ext4_has_group_desc_csum.exit155.i.if.then50.i_crit_edge, %land.lhs.true.i.if.then50.i_crit_edge
  %279 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx53.i = getelementptr i16, ptr %280, i32 %i.0.lcssa.i
  %281 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %arrayidx53.i, align 2
  %283 = and i16 %282, -3
  store i16 %283, ptr %arrayidx53.i, align 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then50.i, %ext4_has_group_desc_csum.exit155.i.if.end57.i_crit_edge, %if.end32.i.i150.i.if.end57.i_crit_edge, %for.end.i.if.end57.i_crit_edge
  %284 = ptrtoint ptr %n_group.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %n_group.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %285)
  %cmp58.i = icmp eq i32 %205, %285
  br i1 %cmp58.i, label %land.lhs.true60.i, label %if.end57.i.while.body_crit_edge

if.end57.i.while.body_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

land.lhs.true60.i:                                ; preds = %if.end57.i
  %286 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %last.i, align 4
  %sub61.i = add i32 %190, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %287, i32 %sub61.i)
  %cmp62.not.i = icmp eq i32 %287, %sub61.i
  br i1 %cmp62.not.i, label %land.lhs.true60.i.while.body_crit_edge, label %if.then64.i

land.lhs.true60.i.while.body_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.then64.i:                                      ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #13
  %add65.i = add i32 %287, 1
  %s_cluster_bits.i362 = getelementptr inbounds %struct.ext4_sb_info, ptr %181, i32 0, i32 12
  %288 = ptrtoint ptr %s_cluster_bits.i362 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %s_cluster_bits.i362, align 16
  %shl.i363 = shl i32 %add65.i, %289
  %blocks_count68.i = getelementptr %struct.ext4_new_group_data, ptr %185, i32 %i.0.lcssa.i, i32 4
  %290 = ptrtoint ptr %blocks_count68.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %shl.i363, ptr %blocks_count68.i, align 8
  %291 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %last.i, align 4
  %free_clusters_count73.i = getelementptr %struct.ext4_new_group_data, ptr %185, i32 %i.0.lcssa.i, i32 7
  %293 = ptrtoint ptr %free_clusters_count73.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %free_clusters_count73.i, align 8
  %.neg.i = sub i32 1, %190
  %sub70.neg.i = add i32 %.neg.i, %292
  %sub74.i = add i32 %sub70.neg.i, %294
  store i32 %sub74.i, ptr %free_clusters_count73.i, align 8
  br label %while.body

ext4_setup_next_flex_gd.exit:                     ; preds = %ext4_blocks_count.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_group.i) #11
  br label %land.lhs.true144

while.body:                                       ; preds = %if.then64.i, %land.lhs.true60.i.while.body_crit_edge, %if.end57.i.while.body_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %group.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_group.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %295 = load volatile i32, ptr @jiffies, align 128
  %sub123 = sub i32 %295, %last_update_time.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %sub123)
  %cmp124 = icmp ugt i32 %sub123, 1000
  br i1 %cmp124, label %if.then126, label %while.body.if.end131_crit_edge

while.body.if.end131_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131

if.then126:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_update_time.1)
  %tobool127.not = icmp eq i32 %last_update_time.1, 0
  br i1 %tobool127.not, label %if.then126.if.end130_crit_edge, label %if.then128

if.then126.if.end130_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then128:                                       ; preds = %if.then126
  %296 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %297)
  %tobool.not.i366 = icmp sgt i32 %297, -1
  br i1 %tobool.not.i366, label %if.then128.ext4_blocks_count.exit375_crit_edge, label %cond.true.i370

if.then128.ext4_blocks_count.exit375_crit_edge:   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit375

cond.true.i370:                                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #13
  %298 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %s_blocks_count_hi.i, align 8
  %300 = call i32 @llvm.bswap.i32(i32 %299) #11
  %conv.i368 = zext i32 %300 to i64
  %shl.i369 = shl nuw i64 %conv.i368, 32
  br label %ext4_blocks_count.exit375

ext4_blocks_count.exit375:                        ; preds = %cond.true.i370, %if.then128.ext4_blocks_count.exit375_crit_edge
  %cond.i371 = phi i64 [ %shl.i369, %cond.true.i370 ], [ 0, %if.then128.ext4_blocks_count.exit375_crit_edge ]
  %301 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %s_blocks_count_lo.i, align 4
  %303 = call i32 @llvm.bswap.i32(i32 %302) #11
  %conv1.i373 = zext i32 %303 to i64
  %or.i374 = or i64 %cond.i371, %conv1.i373
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.20, i64 noundef %or.i374) #11
  br label %if.end130

if.end130:                                        ; preds = %ext4_blocks_count.exit375, %if.then126.if.end130_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %304 = load volatile i32, ptr @jiffies, align 128
  br label %if.end131

if.end131:                                        ; preds = %if.end130, %while.body.if.end131_crit_edge
  %last_update_time.2 = phi i32 [ %304, %if.end130 ], [ %last_update_time.1, %while.body.if.end131_crit_edge ]
  %305 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %call7.i.i, align 8
  %307 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %cmp1.i379 = icmp eq i32 %308, 0
  %cmp3.i = icmp eq ptr %306, null
  %spec.select.i = select i1 %cmp1.i379, i1 true, i1 %cmp3.i, !prof !185
  br i1 %spec.select.i, label %do.body6.i380, label %do.end11.i, !prof !185

do.body6.i380:                                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #11, !srcloc !197
  unreachable

do.end11.i:                                       ; preds = %if.end131
  %309 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %306, align 8
  %add.i381 = add i32 %310, %308
  %sub.i382 = add i32 %add.i381, -1
  %311 = xor i32 %310, %sub.i382
  %312 = and i32 %311, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %cmp21.i = icmp ne i32 %312, 0
  %313 = select i1 %cmp.i376, i1 %cmp21.i, i1 false
  br i1 %313, label %do.body30.i, label %next_group.preheader.i, !prof !185

next_group.preheader.i:                           ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %310, i32 %add.i381)
  %cmp45.not409428438.i = icmp ult i32 %310, %add.i381
  br i1 %cmp45.not409428438.i, label %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge, label %next_group.preheader.i.land.lhs.true144_crit_edge

next_group.preheader.i.land.lhs.true144_crit_edge: ; preds = %next_group.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true144

next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge: ; preds = %next_group.preheader.i
  br label %if.end48.lr.ph.lr.ph.i

do.body30.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 306, 0\0A.popsection", ""() #11, !srcloc !198
  unreachable

next_group.loopexit.i:                            ; preds = %for.body127.i
  %314 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %306, align 8
  %316 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %count.i, align 8
  %add44408427.i = add i32 %317, %315
  %cmp45.not409428.i = icmp ult i32 %src_group.1.lcssa.i, %add44408427.i
  br i1 %cmp45.not409428.i, label %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge, label %next_group.loopexit.i.land.lhs.true144_crit_edge

next_group.loopexit.i.land.lhs.true144_crit_edge: ; preds = %next_group.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true144

next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge: ; preds = %next_group.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.lr.ph.lr.ph.i

if.end48.lr.ph.lr.ph.i:                           ; preds = %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge, %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge
  %318 = phi i32 [ %315, %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge ], [ %310, %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge ]
  %it_index.0.ph.ph442.i = phi i32 [ %it_index.1434.i, %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge ], [ 0, %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge ]
  %ib_index.0.ph.ph441.i = phi i32 [ %ib_index.1.lcssa.i, %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge ], [ 0, %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge ]
  %bb_index.0.ph.ph440.i = phi i32 [ %bb_index.1.lcssa.i, %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge ], [ 0, %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge ]
  %src_group.0.ph.ph439.i = phi i32 [ %src_group.1.lcssa.i, %next_group.loopexit.i.if.end48.lr.ph.lr.ph.i_crit_edge ], [ %310, %next_group.preheader.i.if.end48.lr.ph.lr.ph.i_crit_edge ]
  br label %if.end48.lr.ph.i

if.end48.lr.ph.i:                                 ; preds = %next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge, %if.end48.lr.ph.lr.ph.i
  %319 = phi i32 [ %318, %if.end48.lr.ph.lr.ph.i ], [ %321, %next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge ]
  %ib_index.0.ph431.i = phi i32 [ %ib_index.0.ph.ph441.i, %if.end48.lr.ph.lr.ph.i ], [ %ib_index.1414.i, %next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge ]
  %bb_index.0.ph430.i = phi i32 [ %bb_index.0.ph.ph440.i, %if.end48.lr.ph.lr.ph.i ], [ %bb_index.1.lcssa.i, %next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge ]
  %src_group.0.ph429.i = phi i32 [ %src_group.0.ph.ph439.i, %if.end48.lr.ph.lr.ph.i ], [ %src_group.1.lcssa.i, %next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge ]
  br label %if.end48.i

next_group.loopexit380.i:                         ; preds = %for.body99.i
  %320 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %306, align 8
  %322 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %count.i, align 8
  %add44408.i = add i32 %323, %321
  %cmp45.not409.i = icmp ult i32 %src_group.1.lcssa.i, %add44408.i
  br i1 %cmp45.not409.i, label %next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge, label %next_group.loopexit380.i.land.lhs.true144_crit_edge

next_group.loopexit380.i.land.lhs.true144_crit_edge: ; preds = %next_group.loopexit380.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true144

next_group.loopexit380.i.if.end48.lr.ph.i_crit_edge: ; preds = %next_group.loopexit380.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.lr.ph.i

next_group.loopexit381.i:                         ; preds = %for.body73.i
  %324 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %306, align 8
  %326 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %count.i, align 8
  %add44.i = add i32 %327, %325
  %cmp45.not.i = icmp ult i32 %src_group.1.lcssa.i, %add44.i
  br i1 %cmp45.not.i, label %next_group.loopexit381.i.if.end48.i_crit_edge, label %next_group.loopexit381.i.land.lhs.true144_crit_edge

next_group.loopexit381.i.land.lhs.true144_crit_edge: ; preds = %next_group.loopexit381.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true144

next_group.loopexit381.i.if.end48.i_crit_edge:    ; preds = %next_group.loopexit381.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48.i

if.end48.i:                                       ; preds = %next_group.loopexit381.i.if.end48.i_crit_edge, %if.end48.lr.ph.i
  %328 = phi i32 [ %319, %if.end48.lr.ph.i ], [ %325, %next_group.loopexit381.i.if.end48.i_crit_edge ]
  %bb_index.0411.i = phi i32 [ %bb_index.0.ph430.i, %if.end48.lr.ph.i ], [ %bb_index.1397.i, %next_group.loopexit381.i.if.end48.i_crit_edge ]
  %src_group.0410.i = phi i32 [ %src_group.0.ph429.i, %if.end48.lr.ph.i ], [ %src_group.1.lcssa.i, %next_group.loopexit381.i.if.end48.i_crit_edge ]
  %conv.i.i384 = zext i32 %src_group.0410.i to i64
  %329 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %330, i32 0, i32 2
  %331 = ptrtoint ptr %s_blocks_per_group.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %s_blocks_per_group.i.i, align 8
  %conv1.i.i385 = zext i32 %332 to i64
  %mul.i.i = mul nuw i64 %conv1.i.i385, %conv.i.i384
  %s_es.i.i386 = getelementptr inbounds %struct.ext4_sb_info, ptr %330, i32 0, i32 15
  %333 = ptrtoint ptr %s_es.i.i386 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %s_es.i.i386, align 4
  %s_first_data_block.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %334, i32 0, i32 5
  %335 = ptrtoint ptr %s_first_data_block.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %s_first_data_block.i.i, align 4
  %337 = call i32 @llvm.bswap.i32(i32 %336) #11
  %conv3.i.i = zext i32 %337 to i64
  %add.i.i387 = add nuw i64 %mul.i.i, %conv3.i.i
  %sub49.i = sub i32 %src_group.0410.i, %328
  %blocks_count.i388 = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %sub49.i, i32 4
  %338 = ptrtoint ptr %blocks_count.i388 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %blocks_count.i388, align 8
  %conv51.i = zext i32 %339 to i64
  %add52.i = add nuw i64 %add.i.i387, %conv51.i
  %call.i.i389 = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %src_group.0410.i) #11
  %call1.i.i390 = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %src_group.0410.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i390)
  %tobool.not.i.i391 = icmp eq i32 %call1.i.i390, 0
  br i1 %tobool.not.i.i391, label %if.end48.i.ext4_group_overhead_blocks.exit.i396_crit_edge, label %if.then.i.i394

if.end48.i.ext4_group_overhead_blocks.exit.i396_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_group_overhead_blocks.exit.i396

if.then.i.i394:                                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  %340 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i348.i = getelementptr inbounds %struct.ext4_sb_info, ptr %341, i32 0, i32 15
  %342 = ptrtoint ptr %s_es.i348.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %s_es.i348.i, align 4
  %s_reserved_gdt_blocks.i.i392 = getelementptr inbounds %struct.ext4_super_block, ptr %343, i32 0, i32 37
  %344 = ptrtoint ptr %s_reserved_gdt_blocks.i.i392 to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %s_reserved_gdt_blocks.i.i392, align 2
  %346 = call i16 @llvm.bswap.i16(i16 %345) #11
  %conv.i349.i = zext i16 %346 to i32
  %add.i350.i = add i32 %call.i.i389, 1
  %add3.i.i393 = add i32 %add.i350.i, %conv.i349.i
  br label %ext4_group_overhead_blocks.exit.i396

ext4_group_overhead_blocks.exit.i396:             ; preds = %if.then.i.i394, %if.end48.i.ext4_group_overhead_blocks.exit.i396_crit_edge
  %overhead.0.i.i395 = phi i32 [ %add3.i.i393, %if.then.i.i394 ], [ %call.i.i389, %if.end48.i.ext4_group_overhead_blocks.exit.i396_crit_edge ]
  %conv54.i = zext i32 %overhead.0.i.i395 to i64
  %add55.i = add nuw i64 %add.i.i387, %conv54.i
  %src_group.1388.i = add nuw i32 %src_group.0410.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %src_group.0410.i, i32 %sub.i382)
  %cmp56.not389.not.i = icmp ult i32 %src_group.0410.i, %sub.i382
  br i1 %cmp56.not389.not.i, label %ext4_group_overhead_blocks.exit.i396.for.body.i397_crit_edge, label %ext4_group_overhead_blocks.exit.i396.for.end.i399_crit_edge

ext4_group_overhead_blocks.exit.i396.for.end.i399_crit_edge: ; preds = %ext4_group_overhead_blocks.exit.i396
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i399

ext4_group_overhead_blocks.exit.i396.for.body.i397_crit_edge: ; preds = %ext4_group_overhead_blocks.exit.i396
  br label %for.body.i397

for.body.i397:                                    ; preds = %if.then61.i398.for.body.i397_crit_edge, %ext4_group_overhead_blocks.exit.i396.for.body.i397_crit_edge
  %src_group.1391.i = phi i32 [ %src_group.1.i, %if.then61.i398.for.body.i397_crit_edge ], [ %src_group.1388.i, %ext4_group_overhead_blocks.exit.i396.for.body.i397_crit_edge ]
  %last_blk.0390.i = phi i64 [ %add66.i, %if.then61.i398.for.body.i397_crit_edge ], [ %add52.i, %ext4_group_overhead_blocks.exit.i396.for.body.i397_crit_edge ]
  %call.i351.i = call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %src_group.1391.i) #11
  %call1.i352.i = call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %src_group.1391.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i352.i)
  %tobool.not.i353.i = icmp eq i32 %call1.i352.i, 0
  br i1 %tobool.not.i353.i, label %for.body.i397.ext4_group_overhead_blocks.exit362.i_crit_edge, label %if.then.i360.i

for.body.i397.ext4_group_overhead_blocks.exit362.i_crit_edge: ; preds = %for.body.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_group_overhead_blocks.exit362.i

if.then.i360.i:                                   ; preds = %for.body.i397
  call void @__sanitizer_cov_trace_pc() #13
  %347 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i355.i = getelementptr inbounds %struct.ext4_sb_info, ptr %348, i32 0, i32 15
  %349 = ptrtoint ptr %s_es.i355.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %s_es.i355.i, align 4
  %s_reserved_gdt_blocks.i356.i = getelementptr inbounds %struct.ext4_super_block, ptr %350, i32 0, i32 37
  %351 = ptrtoint ptr %s_reserved_gdt_blocks.i356.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %s_reserved_gdt_blocks.i356.i, align 2
  %353 = call i16 @llvm.bswap.i16(i16 %352) #11
  %conv.i357.i = zext i16 %353 to i32
  %add.i358.i = add i32 %call.i351.i, 1
  %add3.i359.i = add i32 %add.i358.i, %conv.i357.i
  br label %ext4_group_overhead_blocks.exit362.i

ext4_group_overhead_blocks.exit362.i:             ; preds = %if.then.i360.i, %for.body.i397.ext4_group_overhead_blocks.exit362.i_crit_edge
  %overhead.0.i361.i = phi i32 [ %add3.i359.i, %if.then.i360.i ], [ %call.i351.i, %for.body.i397.ext4_group_overhead_blocks.exit362.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %overhead.0.i361.i)
  %cmp59.i = icmp eq i32 %overhead.0.i361.i, 0
  br i1 %cmp59.i, label %if.then61.i398, label %ext4_group_overhead_blocks.exit362.i.for.end.i399_crit_edge

ext4_group_overhead_blocks.exit362.i.for.end.i399_crit_edge: ; preds = %ext4_group_overhead_blocks.exit362.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i399

if.then61.i398:                                   ; preds = %ext4_group_overhead_blocks.exit362.i
  %sub62.i = sub i32 %src_group.1391.i, %328
  %blocks_count64.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %sub62.i, i32 4
  %354 = ptrtoint ptr %blocks_count64.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %blocks_count64.i, align 8
  %conv65.i = zext i32 %355 to i64
  %add66.i = add i64 %last_blk.0390.i, %conv65.i
  %src_group.1.i = add i32 %src_group.1391.i, 1
  %cmp56.not.i = icmp ugt i32 %src_group.1.i, %sub.i382
  br i1 %cmp56.not.i, label %if.then61.i398.for.end.i399_crit_edge, label %if.then61.i398.for.body.i397_crit_edge

if.then61.i398.for.body.i397_crit_edge:           ; preds = %if.then61.i398
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i397

if.then61.i398.for.end.i399_crit_edge:            ; preds = %if.then61.i398
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i399

for.end.i399:                                     ; preds = %if.then61.i398.for.end.i399_crit_edge, %ext4_group_overhead_blocks.exit362.i.for.end.i399_crit_edge, %ext4_group_overhead_blocks.exit.i396.for.end.i399_crit_edge
  %last_blk.0.lcssa.i = phi i64 [ %add52.i, %ext4_group_overhead_blocks.exit.i396.for.end.i399_crit_edge ], [ %add66.i, %if.then61.i398.for.end.i399_crit_edge ], [ %last_blk.0390.i, %ext4_group_overhead_blocks.exit362.i.for.end.i399_crit_edge ]
  %src_group.1.lcssa.i = phi i32 [ %src_group.1388.i, %ext4_group_overhead_blocks.exit.i396.for.end.i399_crit_edge ], [ %src_group.1.i, %if.then61.i398.for.end.i399_crit_edge ], [ %src_group.1391.i, %ext4_group_overhead_blocks.exit362.i.for.end.i399_crit_edge ]
  %356 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %bb_index.0411.i, i32 %357)
  %cmp71395.i = icmp ult i32 %bb_index.0411.i, %357
  br i1 %cmp71395.i, label %for.end.i399.for.body73.i_crit_edge, label %for.end.i399.for.cond95.preheader.i_crit_edge

for.end.i399.for.cond95.preheader.i_crit_edge:    ; preds = %for.end.i399
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond95.preheader.i

for.end.i399.for.body73.i_crit_edge:              ; preds = %for.end.i399
  br label %for.body73.i

for.cond95.preheader.i:                           ; preds = %if.end77.i.for.cond95.preheader.i_crit_edge, %for.end.i399.for.cond95.preheader.i_crit_edge
  %start_blk.0.lcssa.i = phi i64 [ %inc78.i, %if.end77.i.for.cond95.preheader.i_crit_edge ], [ %add55.i, %for.end.i399.for.cond95.preheader.i_crit_edge ]
  %bb_index.1.lcssa.i = phi i32 [ %inc93.i, %if.end77.i.for.cond95.preheader.i_crit_edge ], [ %bb_index.0411.i, %for.end.i399.for.cond95.preheader.i_crit_edge ]
  %358 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ib_index.0.ph431.i, i32 %359)
  %cmp97412.i = icmp ult i32 %ib_index.0.ph431.i, %359
  br i1 %cmp97412.i, label %for.cond95.preheader.i.for.body99.i_crit_edge, label %for.cond95.preheader.i.for.cond123.preheader.i_crit_edge

for.cond95.preheader.i.for.cond123.preheader.i_crit_edge: ; preds = %for.cond95.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond123.preheader.i

for.cond95.preheader.i.for.body99.i_crit_edge:    ; preds = %for.cond95.preheader.i
  br label %for.body99.i

for.body73.i:                                     ; preds = %if.end77.i.for.body73.i_crit_edge, %for.end.i399.for.body73.i_crit_edge
  %bb_index.1397.i = phi i32 [ %inc93.i, %if.end77.i.for.body73.i_crit_edge ], [ %bb_index.0411.i, %for.end.i399.for.body73.i_crit_edge ]
  %start_blk.0396.i = phi i64 [ %inc78.i, %if.end77.i.for.body73.i_crit_edge ], [ %add55.i, %for.end.i399.for.body73.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %start_blk.0396.i, i64 %last_blk.0.lcssa.i)
  %cmp74.not.i = icmp ult i64 %start_blk.0396.i, %last_blk.0.lcssa.i
  br i1 %cmp74.not.i, label %if.end77.i, label %next_group.loopexit381.i

if.end77.i:                                       ; preds = %for.body73.i
  %inc78.i = add nuw i64 %start_blk.0396.i, 1
  %block_bitmap.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %bb_index.1397.i, i32 1
  %360 = ptrtoint ptr %block_bitmap.i to i32
  call void @__asan_store8_noabort(i32 %360)
  store i64 %start_blk.0396.i, ptr %block_bitmap.i, align 8
  %call81.i = call i32 @ext4_get_group_number(ptr noundef %sb, i64 noundef %start_blk.0396.i) #11
  %361 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %306, align 8
  %sub84.i = sub i32 %call81.i, %362
  %mdata_blocks.i400 = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %sub84.i, i32 6
  %363 = ptrtoint ptr %mdata_blocks.i400 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %mdata_blocks.i400, align 2
  %inc86.i = add i16 %364, 1
  store i16 %inc86.i, ptr %mdata_blocks.i400, align 2
  %365 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx88.i = getelementptr i16, ptr %366, i32 %sub84.i
  %367 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %arrayidx88.i, align 2
  %and90346.i = and i16 %368, %conv.i377
  store i16 %and90346.i, ptr %arrayidx88.i, align 2
  %inc93.i = add nuw i32 %bb_index.1397.i, 1
  %369 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %count.i, align 8
  %cmp71.i = icmp ult i32 %inc93.i, %370
  br i1 %cmp71.i, label %if.end77.i.for.body73.i_crit_edge, label %if.end77.i.for.cond95.preheader.i_crit_edge

if.end77.i.for.cond95.preheader.i_crit_edge:      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond95.preheader.i

if.end77.i.for.body73.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body73.i

for.cond123.preheader.i:                          ; preds = %if.end103.i.for.cond123.preheader.i_crit_edge, %for.cond95.preheader.i.for.cond123.preheader.i_crit_edge
  %start_blk.1.lcssa.i = phi i64 [ %inc104.i, %if.end103.i.for.cond123.preheader.i_crit_edge ], [ %start_blk.0.lcssa.i, %for.cond95.preheader.i.for.cond123.preheader.i_crit_edge ]
  %ib_index.1.lcssa.i = phi i32 [ %inc121.i, %if.end103.i.for.cond123.preheader.i_crit_edge ], [ %ib_index.0.ph431.i, %for.cond95.preheader.i.for.cond123.preheader.i_crit_edge ]
  %371 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %it_index.0.ph.ph442.i, i32 %372)
  %cmp125432.i = icmp ult i32 %it_index.0.ph.ph442.i, %372
  br i1 %cmp125432.i, label %for.cond123.preheader.i.for.body127.i_crit_edge, label %for.cond123.preheader.i.for.cond185.preheader.i_crit_edge

for.cond123.preheader.i.for.cond185.preheader.i_crit_edge: ; preds = %for.cond123.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond185.preheader.i

for.cond123.preheader.i.for.body127.i_crit_edge:  ; preds = %for.cond123.preheader.i
  br label %for.body127.i

for.body99.i:                                     ; preds = %if.end103.i.for.body99.i_crit_edge, %for.cond95.preheader.i.for.body99.i_crit_edge
  %ib_index.1414.i = phi i32 [ %inc121.i, %if.end103.i.for.body99.i_crit_edge ], [ %ib_index.0.ph431.i, %for.cond95.preheader.i.for.body99.i_crit_edge ]
  %start_blk.1413.i = phi i64 [ %inc104.i, %if.end103.i.for.body99.i_crit_edge ], [ %start_blk.0.lcssa.i, %for.cond95.preheader.i.for.body99.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %start_blk.1413.i, i64 %last_blk.0.lcssa.i)
  %cmp100.not.i = icmp ult i64 %start_blk.1413.i, %last_blk.0.lcssa.i
  br i1 %cmp100.not.i, label %if.end103.i, label %next_group.loopexit380.i

if.end103.i:                                      ; preds = %for.body99.i
  %inc104.i = add nuw i64 %start_blk.1413.i, 1
  %inode_bitmap.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %ib_index.1414.i, i32 2
  %373 = ptrtoint ptr %inode_bitmap.i to i32
  call void @__asan_store8_noabort(i32 %373)
  store i64 %start_blk.1413.i, ptr %inode_bitmap.i, align 8
  %call107.i = call i32 @ext4_get_group_number(ptr noundef %sb, i64 noundef %start_blk.1413.i) #11
  %374 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %306, align 8
  %sub110.i = sub i32 %call107.i, %375
  %mdata_blocks112.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %sub110.i, i32 6
  %376 = ptrtoint ptr %mdata_blocks112.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %mdata_blocks112.i, align 2
  %inc113.i = add i16 %377, 1
  store i16 %inc113.i, ptr %mdata_blocks112.i, align 2
  %378 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx116.i = getelementptr i16, ptr %379, i32 %sub110.i
  %380 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %arrayidx116.i, align 2
  %and118345.i = and i16 %381, %conv.i377
  store i16 %and118345.i, ptr %arrayidx116.i, align 2
  %inc121.i = add nuw i32 %ib_index.1414.i, 1
  %382 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %count.i, align 8
  %cmp97.i = icmp ult i32 %inc121.i, %383
  br i1 %cmp97.i, label %if.end103.i.for.body99.i_crit_edge, label %if.end103.i.for.cond123.preheader.i_crit_edge

if.end103.i.for.cond123.preheader.i_crit_edge:    ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond123.preheader.i

if.end103.i.for.body99.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body99.i

for.cond185.preheader.i:                          ; preds = %for.inc182.i.for.cond185.preheader.i_crit_edge, %for.cond123.preheader.i.for.cond185.preheader.i_crit_edge
  %384 = phi i32 [ %420, %for.inc182.i.for.cond185.preheader.i_crit_edge ], [ %372, %for.cond123.preheader.i.for.cond185.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %cmp187443.not.i = icmp eq i32 %384, 0
  br i1 %cmp187443.not.i, label %for.cond185.preheader.i.for.end201.i_crit_edge, label %for.cond185.preheader.i.for.body189.i_crit_edge

for.cond185.preheader.i.for.body189.i_crit_edge:  ; preds = %for.cond185.preheader.i
  br label %for.body189.i

for.cond185.preheader.i.for.end201.i_crit_edge:   ; preds = %for.cond185.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end201.i

for.body127.i:                                    ; preds = %for.inc182.i.for.body127.i_crit_edge, %for.cond123.preheader.i.for.body127.i_crit_edge
  %it_index.1434.i = phi i32 [ %inc183.i, %for.inc182.i.for.body127.i_crit_edge ], [ %it_index.0.ph.ph442.i, %for.cond123.preheader.i.for.body127.i_crit_edge ]
  %start_blk.2433.i = phi i64 [ %add180.i, %for.inc182.i.for.body127.i_crit_edge ], [ %start_blk.1.lcssa.i, %for.cond123.preheader.i.for.body127.i_crit_edge ]
  %385 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %s_fs_info.i, align 16
  %s_itb_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %386, i32 0, i32 5
  %387 = ptrtoint ptr %s_itb_per_group.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %s_itb_per_group.i, align 4
  %conv129.i = zext i32 %388 to i64
  %add130.i = add i64 %start_blk.2433.i, %conv129.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %last_blk.0.lcssa.i)
  %cmp131.i = icmp ugt i64 %add130.i, %last_blk.0.lcssa.i
  br i1 %cmp131.i, label %next_group.loopexit.i, label %if.end134.i

if.end134.i:                                      ; preds = %for.body127.i
  %inode_table.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %it_index.1434.i, i32 3
  %389 = ptrtoint ptr %inode_table.i to i32
  call void @__asan_store8_noabort(i32 %389)
  store i64 %start_blk.2433.i, ptr %inode_table.i, align 8
  %call136.i = call i32 @ext4_get_group_number(ptr noundef %sb, i64 noundef %start_blk.2433.i) #11
  %add137.i = add i32 %call136.i, 1
  %conv.i363.i = zext i32 %add137.i to i64
  %390 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i365.i = getelementptr inbounds %struct.ext4_sb_info, ptr %391, i32 0, i32 2
  %392 = ptrtoint ptr %s_blocks_per_group.i365.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %s_blocks_per_group.i365.i, align 8
  %conv1.i366.i = zext i32 %393 to i64
  %mul.i367.i = mul nuw i64 %conv1.i366.i, %conv.i363.i
  %s_es.i368.i = getelementptr inbounds %struct.ext4_sb_info, ptr %391, i32 0, i32 15
  %394 = ptrtoint ptr %s_es.i368.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %s_es.i368.i, align 4
  %s_first_data_block.i369.i = getelementptr inbounds %struct.ext4_super_block, ptr %395, i32 0, i32 5
  %396 = ptrtoint ptr %s_first_data_block.i369.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %s_first_data_block.i369.i, align 4
  %398 = call i32 @llvm.bswap.i32(i32 %397) #11
  %conv3.i370.i = zext i32 %398 to i64
  %add.i371.i = add nuw i64 %mul.i367.i, %conv3.i370.i
  %399 = ptrtoint ptr %306 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %306, align 8
  %sub141.i = sub i32 %call136.i, %400
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %add.i371.i)
  %cmp144.i = icmp ugt i64 %add130.i, %add.i371.i
  br i1 %cmp144.i, label %if.then146.i, label %if.end134.i.for.inc182.i_crit_edge

if.end134.i.for.inc182.i_crit_edge:               ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc182.i

if.then146.i:                                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #13
  %401 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %bg_flags.i, align 4
  %add149.i = add i32 %sub141.i, 1
  %arrayidx150.i = getelementptr i16, ptr %402, i32 %add149.i
  %403 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load2_noabort(i32 %403)
  %404 = load i16, ptr %arrayidx150.i, align 2
  %and152344.i = and i16 %404, %conv.i377
  store i16 %and152344.i, ptr %arrayidx150.i, align 2
  %sub156.i = sub i64 %add130.i, %add.i371.i
  %conv157.i = trunc i64 %sub156.i to i32
  %mdata_blocks160.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %add149.i, i32 6
  %405 = ptrtoint ptr %mdata_blocks160.i to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %mdata_blocks160.i, align 2
  %407 = trunc i64 %sub156.i to i16
  %conv163.i = add i16 %406, %407
  store i16 %conv163.i, ptr %mdata_blocks160.i, align 2
  %sub164.i = sub i32 %388, %conv157.i
  br label %for.inc182.i

for.inc182.i:                                     ; preds = %if.then146.i, %if.end134.i.for.inc182.i_crit_edge
  %itb.0.i = phi i32 [ %sub164.i, %if.then146.i ], [ %388, %if.end134.i.for.inc182.i_crit_edge ]
  %mdata_blocks167.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %sub141.i, i32 6
  %408 = ptrtoint ptr %mdata_blocks167.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %mdata_blocks167.i, align 2
  %410 = trunc i32 %itb.0.i to i16
  %conv170.i = add i16 %409, %410
  store i16 %conv170.i, ptr %mdata_blocks167.i, align 2
  %411 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %bg_flags.i, align 4
  %arrayidx173.i = getelementptr i16, ptr %412, i32 %sub141.i
  %413 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %arrayidx173.i, align 2
  %and175343.i = and i16 %414, %conv.i377
  store i16 %and175343.i, ptr %arrayidx173.i, align 2
  %415 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %s_fs_info.i, align 16
  %s_itb_per_group178.i = getelementptr inbounds %struct.ext4_sb_info, ptr %416, i32 0, i32 5
  %417 = ptrtoint ptr %s_itb_per_group178.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %s_itb_per_group178.i, align 4
  %conv179.i = zext i32 %418 to i64
  %add180.i = add i64 %start_blk.2433.i, %conv179.i
  %inc183.i = add nuw i32 %it_index.1434.i, 1
  %419 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %count.i, align 8
  %cmp125.i = icmp ult i32 %inc183.i, %420
  br i1 %cmp125.i, label %for.inc182.i.for.body127.i_crit_edge, label %for.inc182.i.for.cond185.preheader.i_crit_edge

for.inc182.i.for.cond185.preheader.i_crit_edge:   ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond185.preheader.i

for.inc182.i.for.body127.i_crit_edge:             ; preds = %for.inc182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body127.i

for.body189.i:                                    ; preds = %for.body189.i.for.body189.i_crit_edge, %for.cond185.preheader.i.for.body189.i_crit_edge
  %i.0444.i = phi i32 [ %inc200.i, %for.body189.i.for.body189.i_crit_edge ], [ 0, %for.cond185.preheader.i.for.body189.i_crit_edge ]
  %mdata_blocks191.i = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %i.0444.i, i32 6
  %421 = ptrtoint ptr %mdata_blocks191.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %mdata_blocks191.i, align 2
  %conv192.i = zext i16 %422 to i32
  %423 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_ratio.i = getelementptr inbounds %struct.ext4_sb_info, ptr %424, i32 0, i32 11
  %425 = ptrtoint ptr %s_cluster_ratio.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %s_cluster_ratio.i, align 4
  %add194.i = add nsw i32 %conv192.i, -1
  %sub195.i = add i32 %add194.i, %426
  %s_cluster_bits.i401 = getelementptr inbounds %struct.ext4_sb_info, ptr %424, i32 0, i32 12
  %427 = ptrtoint ptr %s_cluster_bits.i401 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %s_cluster_bits.i401, align 16
  %shr.i = lshr i32 %sub195.i, %428
  %free_clusters_count.i402 = getelementptr %struct.ext4_new_group_data, ptr %306, i32 %i.0444.i, i32 7
  %429 = ptrtoint ptr %free_clusters_count.i402 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %free_clusters_count.i402, align 8
  %sub198.i = sub i32 %430, %shr.i
  store i32 %sub198.i, ptr %free_clusters_count.i402, align 8
  %inc200.i = add nuw i32 %i.0444.i, 1
  %431 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %count.i, align 8
  %cmp187.i = icmp ult i32 %inc200.i, %432
  br i1 %cmp187.i, label %for.body189.i.for.body189.i_crit_edge, label %for.body189.i.for.end201.i_crit_edge

for.body189.i.for.end201.i_crit_edge:             ; preds = %for.body189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end201.i

for.body189.i.for.body189.i_crit_edge:            ; preds = %for.body189.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body189.i

for.end201.i:                                     ; preds = %for.body189.i.for.end201.i_crit_edge, %for.cond185.preheader.i.for.end201.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond185.preheader.i.for.end201.i_crit_edge ], [ %432, %for.body189.i.for.end201.i_crit_edge ]
  %433 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i403 = getelementptr inbounds %struct.ext4_sb_info, ptr %434, i32 0, i32 17
  %435 = ptrtoint ptr %s_mount_opt.i403 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %s_mount_opt.i403, align 4
  %and203.i = and i32 %436, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203.i)
  %tobool204.not.i = icmp eq i32 %and203.i, 0
  br i1 %tobool204.not.i, label %for.end201.i.if.end136_crit_edge, label %if.then205.i

for.end201.i.if.end136_crit_edge:                 ; preds = %for.end201.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then205.i:                                     ; preds = %for.end201.i
  call void @__sanitizer_cov_trace_pc() #13
  %call213.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %.lcssa.i, i32 noundef %shl) #15
  br label %if.end136

if.end136:                                        ; preds = %if.then205.i, %for.end201.i.if.end136_crit_edge
  %call137 = call fastcc i32 @ext4_flex_group_add(ptr noundef %sb, ptr noundef %resize_inode.4, ptr noundef nonnull %call7.i.i)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end136.while.cond_crit_edge, label %if.end136.if.then152_crit_edge, !prof !187

if.end136.if.then152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then152

if.end136.while.cond_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

land.lhs.true144:                                 ; preds = %next_group.loopexit381.i.land.lhs.true144_crit_edge, %next_group.loopexit380.i.land.lhs.true144_crit_edge, %next_group.loopexit.i.land.lhs.true144_crit_edge, %next_group.preheader.i.land.lhs.true144_crit_edge, %ext4_setup_next_flex_gd.exit
  %last_update_time.3.ph = phi i32 [ %last_update_time.1, %ext4_setup_next_flex_gd.exit ], [ %last_update_time.2, %next_group.loopexit381.i.land.lhs.true144_crit_edge ], [ %last_update_time.2, %next_group.loopexit380.i.land.lhs.true144_crit_edge ], [ %last_update_time.2, %next_group.loopexit.i.land.lhs.true144_crit_edge ], [ %last_update_time.2, %next_group.preheader.i.land.lhs.true144_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %n_blocks_count_retry.2)
  %tobool145.not = icmp eq i64 %n_blocks_count_retry.2, 0
  br i1 %tobool145.not, label %land.lhs.true144.if.then152_crit_edge, label %if.then146

land.lhs.true144.if.then152_crit_edge:            ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then152

if.then146:                                       ; preds = %land.lhs.true144
  %437 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %bg_flags.i, align 4
  call void @kfree(ptr noundef %438) #11
  %439 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %440) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %tobool147.not = icmp eq ptr %resize_inode.4, null
  br i1 %tobool147.not, label %if.then146.retry.outer.backedge_crit_edge, label %if.then146.retry.backedge.sink.split_crit_edge

if.then146.retry.backedge.sink.split_crit_edge:   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.backedge.sink.split

if.then146.retry.outer.backedge_crit_edge:        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.outer.backedge

retry.outer.backedge:                             ; preds = %if.then146.retry.outer.backedge_crit_edge, %retry.backedge.sink.split
  %n_blocks_count.addr.0.ph.be = phi i64 [ %n_blocks_count.addr.0.be.ph, %retry.backedge.sink.split ], [ %n_blocks_count_retry.2, %if.then146.retry.outer.backedge_crit_edge ]
  %last_update_time.0.ph.be = phi i32 [ %last_update_time.0.be.ph, %retry.backedge.sink.split ], [ %last_update_time.3.ph, %if.then146.retry.outer.backedge_crit_edge ]
  br label %retry.outer

if.then152:                                       ; preds = %land.lhs.true144.if.then152_crit_edge, %if.end136.if.then152_crit_edge
  %err.5 = phi i32 [ %call137, %if.end136.if.then152_crit_edge ], [ 0, %land.lhs.true144.if.then152_crit_edge ]
  %441 = ptrtoint ptr %bg_flags.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %bg_flags.i, align 4
  call void @kfree(ptr noundef %442) #11
  br label %if.end153.sink.split.sink.split

if.end153.sink.split.sink.split:                  ; preds = %if.then152, %if.end7.i56.i.if.end153.sink.split.sink.split_crit_edge
  %err.5438.ph.ph = phi i32 [ %err.5, %if.then152 ], [ -12, %if.end7.i56.i.if.end153.sink.split.sink.split_crit_edge ]
  %443 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %444) #11
  br label %if.end153.sink.split

if.end153.sink.split:                             ; preds = %if.end153.sink.split.sink.split, %if.end3.i.if.end153.sink.split_crit_edge, %if.end.i341.if.end153.sink.split_crit_edge
  %err.5438.ph = phi i32 [ %err.5438.ph.ph, %if.end153.sink.split.sink.split ], [ -12, %if.end3.i.if.end153.sink.split_crit_edge ], [ -12, %if.end.i341.if.end153.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.end153

if.end153:                                        ; preds = %if.end153.sink.split, %if.end115.if.end153_crit_edge, %if.end110.if.end153_crit_edge, %if.end105.if.end153_crit_edge, %ext4_blocks_count.exit339.if.end153_crit_edge, %if.then95.if.end153_crit_edge, %ext4_convert_meta_bg.exit.if.end153_crit_edge
  %err.5438 = phi i32 [ %err.5438.ph, %if.end153.sink.split ], [ %retval.0.i, %ext4_convert_meta_bg.exit.if.end153_crit_edge ], [ %call112, %if.end110.if.end153_crit_edge ], [ %call107, %if.end105.if.end153_crit_edge ], [ 0, %ext4_blocks_count.exit339.if.end153_crit_edge ], [ %call96, %if.then95.if.end153_crit_edge ], [ -12, %if.end115.if.end153_crit_edge ]
  %resize_inode.7437 = phi ptr [ %resize_inode.4, %if.end153.sink.split ], [ %resize_inode.2, %ext4_convert_meta_bg.exit.if.end153_crit_edge ], [ %resize_inode.4, %if.end115.if.end153_crit_edge ], [ %resize_inode.4, %if.end110.if.end153_crit_edge ], [ %resize_inode.4, %if.end105.if.end153_crit_edge ], [ %resize_inode.4, %ext4_blocks_count.exit339.if.end153_crit_edge ], [ %resize_inode.4, %if.then95.if.end153_crit_edge ]
  %cmp154.not = icmp eq ptr %resize_inode.7437, null
  br i1 %cmp154.not, label %if.end153.if.end157_crit_edge, label %if.end153.if.then156_crit_edge

if.end153.if.then156_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then156

if.end153.if.end157_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then156:                                       ; preds = %if.end153.if.then156_crit_edge, %invalid_resize_inode.i, %if.then3.i
  %resize_inode.7437445 = phi ptr [ %resize_inode.7437, %if.end153.if.then156_crit_edge ], [ %resize_inode.2, %if.then3.i ], [ %resize_inode.2, %invalid_resize_inode.i ]
  %err.5438443 = phi i32 [ %err.5438, %if.end153.if.then156_crit_edge ], [ -1, %if.then3.i ], [ -22, %invalid_resize_inode.i ]
  call void @iput(ptr noundef nonnull %resize_inode.7437445) #11
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end153.if.end157_crit_edge
  %err.5438444 = phi i32 [ %err.5438443, %if.then156 ], [ %err.5438, %if.end153.if.end157_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5438444)
  %tobool158.not = icmp eq i32 %err.5438444, 0
  br i1 %tobool158.not, label %if.end157.if.end160_crit_edge, label %if.then159

if.end157.if.end160_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then159:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.ext4_resize_fs, i32 noundef 2136, ptr noundef nonnull @.str.21, i32 noundef %err.5438444) #11
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %if.end157.if.end160_crit_edge
  %445 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %446)
  %tobool.not.i408 = icmp sgt i32 %446, -1
  br i1 %tobool.not.i408, label %if.end160.ext4_blocks_count.exit417_crit_edge, label %cond.true.i412

if.end160.ext4_blocks_count.exit417_crit_edge:    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit417

cond.true.i412:                                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %447 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %s_blocks_count_hi.i, align 8
  %449 = call i32 @llvm.bswap.i32(i32 %448) #11
  %conv.i410 = zext i32 %449 to i64
  %shl.i411 = shl nuw i64 %conv.i410, 32
  br label %ext4_blocks_count.exit417

ext4_blocks_count.exit417:                        ; preds = %cond.true.i412, %if.end160.ext4_blocks_count.exit417_crit_edge
  %cond.i413 = phi i64 [ %shl.i411, %cond.true.i412 ], [ 0, %if.end160.ext4_blocks_count.exit417_crit_edge ]
  %450 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %s_blocks_count_lo.i, align 4
  %452 = call i32 @llvm.bswap.i32(i32 %451) #11
  %conv1.i415 = zext i32 %452 to i64
  %or.i416 = or i64 %cond.i413, %conv1.i415
  call void (ptr, ptr, ptr, ...) @__ext4_msg(ptr noundef %sb, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.22, i64 noundef %or.i416) #11
  br label %cleanup

cleanup:                                          ; preds = %ext4_blocks_count.exit417, %if.then45, %if.then22, %if.then13, %if.end5.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ -22, %if.then4 ], [ -22, %if.then13 ], [ -22, %if.then22 ], [ %42, %if.then45 ], [ %err.5438444, %ext4_blocks_count.exit417 ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %o_group) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_group_number(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_journal_start_sb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_get_write_access(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext4_update_super(ptr noundef %sb, ptr nocapture noundef readonly %flex_gd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flex_gd, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %count = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %cmp1 = icmp eq ptr %1, null
  %spec.select = select i1 %cmp, i1 true, i1 %cmp1, !prof !185
  br i1 %spec.select, label %do.body3, label %for.body.lr.ph, !prof !185

for.body.lr.ph:                                   ; preds = %entry
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_cluster_bits, align 16
  br label %for.body

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1390, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %blocks_count.0528 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %free_blocks.0527 = phi i64 [ 0, %for.body.lr.ph ], [ %add14, %for.body.for.body_crit_edge ]
  %i.0526 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %blocks_count11 = getelementptr %struct.ext4_new_group_data, ptr %1, i32 %i.0526, i32 4
  %10 = ptrtoint ptr %blocks_count11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks_count11, align 8
  %conv = zext i32 %11 to i64
  %add = add i64 %blocks_count.0528, %conv
  %free_clusters_count = getelementptr %struct.ext4_new_group_data, ptr %1, i32 %i.0526, i32 7
  %12 = ptrtoint ptr %free_clusters_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %free_clusters_count, align 8
  %shl = shl i32 %13, %9
  %conv13 = zext i32 %shl to i64
  %add14 = add i64 %free_blocks.0527, %conv13
  %inc = add nuw i32 %i.0526, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 29
  %14 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.i446 = icmp sgt i32 %15, -1
  br i1 %tobool.not.i446, label %ext4_r_blocks_count.exit.thread, label %cond.true.i451

ext4_r_blocks_count.exit.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_r_blocks_count_lo.i519 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %s_r_blocks_count_lo.i519 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_r_blocks_count_lo.i519, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %conv1.i520 = zext i32 %18 to i64
  br label %ext4_blocks_count.exit

cond.true.i451:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %s_r_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 51
  %19 = ptrtoint ptr %s_r_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_r_blocks_count_hi.i, align 4
  %s_r_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 2
  %21 = ptrtoint ptr %s_r_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_r_blocks_count_lo.i, align 8
  %23 = zext i32 %20 to i64
  %24 = zext i32 %22 to i64
  %25 = shl nuw i64 %24, 32
  %26 = or i64 %25, %23
  %27 = tail call i64 @llvm.bswap.i64(i64 %26)
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 50
  %28 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocks_count_hi.i, align 8
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %conv.i449 = zext i32 %30 to i64
  %shl.i450 = shl nuw i64 %conv.i449, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i451, %ext4_r_blocks_count.exit.thread
  %mul524.in = phi i64 [ %27, %cond.true.i451 ], [ %conv1.i520, %ext4_r_blocks_count.exit.thread ]
  %s_r_blocks_count_lo.i523 = phi ptr [ %s_r_blocks_count_lo.i, %cond.true.i451 ], [ %s_r_blocks_count_lo.i519, %ext4_r_blocks_count.exit.thread ]
  %cond.i452 = phi i64 [ %shl.i450, %cond.true.i451 ], [ 0, %ext4_r_blocks_count.exit.thread ]
  %mul524 = mul i64 %mul524.in, 100
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_blocks_count_lo.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %conv1.i453 = zext i32 %33 to i64
  %or.i454 = or i64 %cond.i452, %conv1.i453
  %call17 = tail call i64 @div64_u64(i64 noundef %mul524, i64 noundef %or.i454) #11
  %mul18 = mul i64 %call17, %add
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %mul18, i32 0) #17, !srcloc !200
  %asmresult.i = extractvalue { i64, i32 } %34, 0
  %asmresult4.i = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %mul18, i64 %asmresult.i, i32 %asmresult4.i) #17, !srcloc !201
  %asmresult10.i = extractvalue { i64, i32 } %35, 0
  %div186443 = lshr i64 %asmresult10.i, 6
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 14
  %36 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_sbh, align 64
  tail call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef 4) #11
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %ext4_blocks_count.exit.if.then.i455_crit_edge

ext4_blocks_count.exit.if.then.i455_crit_edge:    ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i455

trylock_buffer.exit.i:                            ; preds = %ext4_blocks_count.exit
  tail call void @llvm.prefetch.p0(ptr %37, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 4, ptr elementtype(i32) %37) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %41 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i455_crit_edge

trylock_buffer.exit.i.if.then.i455_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i455

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i455:                                     ; preds = %trylock_buffer.exit.i.if.then.i455_crit_edge, %ext4_blocks_count.exit.if.then.i455_crit_edge
  tail call void @__lock_buffer(ptr noundef %37) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i455, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %42 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %tobool.not.i457 = icmp sgt i32 %43, -1
  br i1 %tobool.not.i457, label %lock_buffer.exit.ext4_blocks_count.exit466_crit_edge, label %cond.true.i461

lock_buffer.exit.ext4_blocks_count.exit466_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_blocks_count.exit466

cond.true.i461:                                   ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocks_count_hi.i458 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 50
  %44 = ptrtoint ptr %s_blocks_count_hi.i458 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_blocks_count_hi.i458, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  %conv.i459 = zext i32 %46 to i64
  %shl.i460 = shl nuw i64 %conv.i459, 32
  br label %ext4_blocks_count.exit466

ext4_blocks_count.exit466:                        ; preds = %cond.true.i461, %lock_buffer.exit.ext4_blocks_count.exit466_crit_edge
  %cond.i462 = phi i64 [ %shl.i460, %cond.true.i461 ], [ 0, %lock_buffer.exit.ext4_blocks_count.exit466_crit_edge ]
  %47 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocks_count_lo.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #11
  %conv1.i464 = zext i32 %49 to i64
  %or.i465 = or i64 %cond.i462, %conv1.i464
  %add213 = add i64 %or.i465, %add
  %conv.i467 = trunc i64 %add213 to i32
  %50 = tail call i32 @llvm.bswap.i32(i32 %conv.i467) #11
  %51 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %s_blocks_count_lo.i, align 4
  %shr.i = lshr i64 %add213, 32
  %conv1.i469 = trunc i64 %shr.i to i32
  %52 = tail call i32 @llvm.bswap.i32(i32 %conv1.i469) #11
  %s_blocks_count_hi.i470 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 50
  %53 = ptrtoint ptr %s_blocks_count_hi.i470 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %s_blocks_count_hi.i470, align 8
  br i1 %tobool.not.i457, label %ext4_blocks_count.exit466.ext4_free_blocks_count.exit_crit_edge, label %cond.true.i475

ext4_blocks_count.exit466.ext4_free_blocks_count.exit_crit_edge: ; preds = %ext4_blocks_count.exit466
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_free_blocks_count.exit

cond.true.i475:                                   ; preds = %ext4_blocks_count.exit466
  call void @__sanitizer_cov_trace_pc() #13
  %s_free_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 52
  %54 = ptrtoint ptr %s_free_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_free_blocks_count_hi.i, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #11
  %conv.i473 = zext i32 %56 to i64
  %shl.i474 = shl nuw i64 %conv.i473, 32
  br label %ext4_free_blocks_count.exit

ext4_free_blocks_count.exit:                      ; preds = %cond.true.i475, %ext4_blocks_count.exit466.ext4_free_blocks_count.exit_crit_edge
  %cond.i476 = phi i64 [ %shl.i474, %cond.true.i475 ], [ 0, %ext4_blocks_count.exit466.ext4_free_blocks_count.exit_crit_edge ]
  %s_free_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 3
  %57 = ptrtoint ptr %s_free_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_free_blocks_count_lo.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #11
  %conv1.i477 = zext i32 %59 to i64
  %or.i478 = or i64 %cond.i476, %conv1.i477
  %add215 = add i64 %or.i478, %add14
  %conv.i479 = trunc i64 %add215 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv.i479) #11
  %61 = ptrtoint ptr %s_free_blocks_count_lo.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %s_free_blocks_count_lo.i, align 4
  %shr.i481 = lshr i64 %add215, 32
  %conv1.i482 = trunc i64 %shr.i481 to i32
  %62 = tail call i32 @llvm.bswap.i32(i32 %conv1.i482) #11
  %s_free_blocks_count_hi.i483 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 52
  %63 = ptrtoint ptr %s_free_blocks_count_hi.i483 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %s_free_blocks_count_hi.i483, align 8
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %s_inodes_per_group to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_inodes_per_group, align 16
  %68 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count, align 4
  %mul218 = mul i32 %69, %67
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %5, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  %add.i = add i32 %72, %mul218
  %73 = tail call i32 @llvm.bswap.i32(i32 %add.i) #11
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %5, align 4
  %s_free_inodes_count = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 4
  %75 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group220 = getelementptr inbounds %struct.ext4_sb_info, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %s_inodes_per_group220 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_inodes_per_group220, align 16
  %79 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count, align 4
  %mul222 = mul i32 %80, %78
  %81 = ptrtoint ptr %s_free_inodes_count to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %s_free_inodes_count, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #11
  %add.i486 = add i32 %83, %mul222
  %84 = tail call i32 @llvm.bswap.i32(i32 %add.i486) #11
  %85 = ptrtoint ptr %s_free_inodes_count to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %s_free_inodes_count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !202
  %86 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count, align 4
  %s_groups_count = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 8
  %88 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_groups_count, align 32
  %add231 = add i32 %89, %87
  store i32 %add231, ptr %s_groups_count, align 32
  %90 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocks_per_group, align 8
  %div234 = udiv i32 -1, %93
  %94 = tail call i32 @llvm.umin.i32(i32 %add231, i32 %div234)
  %s_blockfile_groups = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 9
  %95 = ptrtoint ptr %s_blockfile_groups to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %s_blockfile_groups, align 4
  %96 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool.not.i489 = icmp sgt i32 %97, -1
  br i1 %tobool.not.i489, label %ext4_free_blocks_count.exit.ext4_r_blocks_count.exit498_crit_edge, label %cond.true.i493

ext4_free_blocks_count.exit.ext4_r_blocks_count.exit498_crit_edge: ; preds = %ext4_free_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_r_blocks_count.exit498

cond.true.i493:                                   ; preds = %ext4_free_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #13
  %s_r_blocks_count_hi.i490 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 51
  %98 = ptrtoint ptr %s_r_blocks_count_hi.i490 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_r_blocks_count_hi.i490, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #11
  %conv.i491 = zext i32 %100 to i64
  %shl.i492 = shl nuw i64 %conv.i491, 32
  br label %ext4_r_blocks_count.exit498

ext4_r_blocks_count.exit498:                      ; preds = %cond.true.i493, %ext4_free_blocks_count.exit.ext4_r_blocks_count.exit498_crit_edge
  %cond.i494 = phi i64 [ %shl.i492, %cond.true.i493 ], [ 0, %ext4_free_blocks_count.exit.ext4_r_blocks_count.exit498_crit_edge ]
  %101 = ptrtoint ptr %s_r_blocks_count_lo.i523 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %s_r_blocks_count_lo.i523, align 8
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #11
  %conv1.i496 = zext i32 %103 to i64
  %or.i497 = or i64 %cond.i494, %conv1.i496
  %add243 = add i64 %or.i497, %div186443
  %conv.i499 = trunc i64 %add243 to i32
  %104 = tail call i32 @llvm.bswap.i32(i32 %conv.i499) #11
  %105 = ptrtoint ptr %s_r_blocks_count_lo.i523 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %s_r_blocks_count_lo.i523, align 8
  %shr.i501 = lshr i64 %add243, 32
  %conv1.i502 = trunc i64 %shr.i501 to i32
  %106 = tail call i32 @llvm.bswap.i32(i32 %conv1.i502) #11
  %s_r_blocks_count_hi.i503 = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 51
  %107 = ptrtoint ptr %s_r_blocks_count_hi.i503 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %s_r_blocks_count_hi.i503, align 4
  tail call void @ext4_superblock_csum_set(ptr noundef %sb) #11
  %108 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_sbh, align 64
  tail call void @unlock_buffer(ptr noundef %109) #11
  %s_freeclusters_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 36
  %s_cluster_ratio = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 11
  %110 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %s_cluster_ratio, align 4
  %conv245 = zext i32 %111 to i64
  %add246 = add i64 %add14, -1
  %sub247 = add i64 %add246, %conv245
  %s_cluster_bits248 = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 12
  %112 = ptrtoint ptr %s_cluster_bits248 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %s_cluster_bits248, align 16
  %sh_prom249 = zext i32 %113 to i64
  %shr250 = lshr i64 %sub247, %sh_prom249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %114 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %s_freeclusters_counter, i64 noundef %shr250, i32 noundef %114) #11
  %s_freeinodes_counter = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 37
  %115 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group252 = getelementptr inbounds %struct.ext4_sb_info, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %s_inodes_per_group252 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %s_inodes_per_group252, align 16
  %119 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %count, align 4
  %mul254 = mul i32 %120, %118
  %conv255 = zext i32 %mul254 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %121 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %s_freeinodes_counter, i64 noundef %conv255, i32 noundef %121) #11
  %122 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %123, i32 0, i32 15
  %124 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i505 = getelementptr inbounds %struct.ext4_super_block, ptr %125, i32 0, i32 29
  %126 = ptrtoint ptr %s_feature_incompat.i505 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %s_feature_incompat.i505, align 8
  %and.i = and i32 %127, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %ext4_r_blocks_count.exit498.if.end294_crit_edge, label %land.lhs.true259

ext4_r_blocks_count.exit498.if.end294_crit_edge:  ; preds = %ext4_r_blocks_count.exit498
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

land.lhs.true259:                                 ; preds = %ext4_r_blocks_count.exit498
  %s_log_groups_per_flex = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 112
  %128 = ptrtoint ptr %s_log_groups_per_flex to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_log_groups_per_flex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool260.not = icmp eq i32 %129, 0
  br i1 %tobool260.not, label %land.lhs.true259.if.end294_crit_edge, label %if.then261

land.lhs.true259.if.end294_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end294

if.then261:                                       ; preds = %land.lhs.true259
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %1, align 8
  %shr.i506 = lshr i32 %131, %129
  %132 = tail call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %135, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then261.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then261.rcu_read_lock.exit_crit_edge:          ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then261
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 696, ptr noundef nonnull @.str.54) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then261.rcu_read_lock.exit_crit_edge
  %s_flex_groups = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 113
  %136 = ptrtoint ptr %s_flex_groups to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %s_flex_groups, align 64
  %call269 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %land.lhs.true271, label %rcu_read_lock.exit.do.end279_crit_edge

rcu_read_lock.exit.do.end279_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end279

land.lhs.true271:                                 ; preds = %rcu_read_lock.exit
  %call272 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call272)
  %tobool273.not = icmp eq i32 %call272, 0
  br i1 %tobool273.not, label %land.lhs.true271.do.end279_crit_edge, label %land.lhs.true274

land.lhs.true271.do.end279_crit_edge:             ; preds = %land.lhs.true271
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end279

land.lhs.true274:                                 ; preds = %land.lhs.true271
  %.b444 = load i1, ptr @ext4_update_super.__warned, align 1
  br i1 %.b444, label %land.lhs.true274.do.end279_crit_edge, label %if.then276

land.lhs.true274.do.end279_crit_edge:             ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end279

if.then276:                                       ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ext4_update_super.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.25, i32 noundef 1465, ptr noundef nonnull @.str.41) #11
  br label %do.end279

do.end279:                                        ; preds = %if.then276, %land.lhs.true274.do.end279_crit_edge, %land.lhs.true271.do.end279_crit_edge, %rcu_read_lock.exit.do.end279_crit_edge
  %arrayidx281 = getelementptr ptr, ptr %137, i32 %shr.i506
  %138 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx281, align 4
  %call.i507 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i507, label %do.end279.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i510

do.end279.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i510:                               ; preds = %do.end279
  %call1.i508 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i508)
  %tobool.not.i509 = icmp eq i32 %call1.i508, 0
  br i1 %tobool.not.i509, label %land.lhs.true.i510.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i512

land.lhs.true.i510.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i510
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i512:                              ; preds = %land.lhs.true.i510
  %.b4.i511 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i511, label %land.lhs.true2.i512.rcu_read_unlock.exit_crit_edge, label %if.then.i513

land.lhs.true2.i512.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i512
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i513:                                     ; preds = %land.lhs.true2.i512
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.53, i32 noundef 724, ptr noundef nonnull @.str.55) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i513, %land.lhs.true2.i512.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i510.rcu_read_unlock.exit_crit_edge, %do.end279.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !192
  %140 = tail call i32 @llvm.read_register.i32(metadata !169) #11
  %and.i.i.i.i.i514 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i.i.i514 to ptr
  %preempt_count.i.i.i.i515 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i.i.i515 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i.i.i515, align 4
  %sub.i.i.i = add i32 %143, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i515, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %144 = ptrtoint ptr %s_cluster_ratio to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %s_cluster_ratio, align 4
  %conv284 = zext i32 %145 to i64
  %sub286 = add i64 %add246, %conv284
  %146 = ptrtoint ptr %s_cluster_bits248 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %s_cluster_bits248, align 16
  %sh_prom288 = zext i32 %147 to i64
  %shr289 = lshr i64 %sub286, %sh_prom288
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %139, i32 noundef 8) #11
  tail call void @generic_atomic64_add(i64 noundef %shr289, ptr noundef %139) #11
  %148 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %s_fs_info.i, align 16
  %s_inodes_per_group291 = getelementptr inbounds %struct.ext4_sb_info, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %s_inodes_per_group291 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %s_inodes_per_group291, align 16
  %152 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %count, align 4
  %mul293 = mul i32 %153, %151
  %free_inodes = getelementptr inbounds %struct.flex_groups, ptr %139, i32 0, i32 1
  %call.i.i445 = tail call zeroext i1 @__kasan_check_write(ptr noundef %free_inodes, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %free_inodes, i32 1, i32 3, i32 1) #11
  %154 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %free_inodes, ptr %free_inodes, i32 %mul293, ptr elementtype(i32) %free_inodes) #11, !srcloc !203
  br label %if.end294

if.end294:                                        ; preds = %rcu_read_unlock.exit, %land.lhs.true259.if.end294_crit_edge, %ext4_r_blocks_count.exit498.if.end294_crit_edge
  %call295 = tail call i32 @ext4_calculate_overhead(ptr noundef %sb) #11
  %155 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %156, i32 0, i32 17
  %157 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %s_mount_opt, align 4
  %and297 = and i32 %158, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %if.end294.if.end306_crit_edge, label %do.end302

if.end294.if.end306_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end306

do.end302:                                        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %count, align 4
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %160, i64 noundef %add, i64 noundef %add14, i64 noundef %div186443) #15
  br label %if.end306

if.end306:                                        ; preds = %do.end302, %if.end294.if.end306_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_handle_dirty_metadata(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_stop(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_backups(ptr noundef %sb, i64 noundef %blk_off, ptr nocapture noundef readonly %data, i32 noundef %size, i32 noundef %meta_bg) unnamed_addr #0 align 64 {
entry:
  %three = alloca i32, align 4
  %five = alloca i32, align 4
  %seven = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocks_per_group, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %three)
  %4 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %three, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %five)
  %5 = ptrtoint ptr %five to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %five, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seven)
  %6 = ptrtoint ptr %seven to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %seven, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize, align 16
  %sub = sub i32 %8, %size
  %s_cluster_ratio.i.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %s_cluster_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_cluster_ratio.i.i, align 4
  %mul.i.i = shl i32 %10, 3
  %call3 = tail call ptr @__ext4_journal_start_sb(ptr noundef %sb, i32 noundef 1129, i32 noundef 7, i32 noundef 64, i32 noundef 0, i32 noundef %mul.i.i) #11
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %call3 to i32
  br label %exit_err

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %meta_bg)
  %cmp = icmp eq i32 %meta_bg, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_es.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i.i = and i32 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %if.end3.i, label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.then6
  %arrayidx.i = getelementptr %struct.ext4_super_block, ptr %15, i32 0, i32 84, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i135 = icmp eq i32 %19, 0
  br i1 %tobool.not.i135, label %do.body.i, label %do.body.i.preheader.do.end.i_crit_edge

do.body.i.preheader.do.end.i_crit_edge:           ; preds = %do.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.body.i:                                        ; preds = %do.body.i.preheader
  %arrayidx.i.1 = getelementptr %struct.ext4_super_block, ptr %15, i32 0, i32 84, i32 1
  %20 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i135.1 = icmp eq i32 %21, 0
  br i1 %tobool.not.i135.1, label %do.body.i.1, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.body.i.1:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %three, align 4
  br label %ext4_list_backups.exit

do.end.i:                                         ; preds = %do.body.i.do.end.i_crit_edge, %do.body.i.preheader.do.end.i_crit_edge
  %.lcssa213 = phi i32 [ %19, %do.body.i.preheader.do.end.i_crit_edge ], [ %21, %do.body.i.do.end.i_crit_edge ]
  %add.i.lcssa = phi i32 [ 2, %do.body.i.preheader.do.end.i_crit_edge ], [ 3, %do.body.i.do.end.i_crit_edge ]
  %23 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i.lcssa, ptr %three, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %.lcssa213) #11
  br label %ext4_list_backups.exit

if.end3.i:                                        ; preds = %if.then6
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 30
  %25 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i35.i = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35.i)
  %cmp.i36.not.i = icmp eq i32 %and.i35.i, 0
  br i1 %cmp.i36.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %three, align 4
  br label %ext4_list_backups.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %three, align 4
  br label %ext4_list_backups.exit

ext4_list_backups.exit:                           ; preds = %if.end7.i, %if.then5.i, %do.end.i, %do.body.i.1
  %retval.0.i = phi i32 [ %24, %do.end.i ], [ 1, %if.end7.i ], [ 1, %if.then5.i ], [ -1, %do.body.i.1 ]
  %s_groups_count = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %s_groups_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_groups_count, align 32
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 @ext4_get_group_number(ptr noundef %sb, i64 noundef %blk_off) #11
  %add = add i32 %call8, 1
  %31 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_fs_info.i, align 16
  %s_desc_per_block = getelementptr inbounds %struct.ext4_sb_info, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %s_desc_per_block to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_desc_per_block, align 4
  %add10 = add i32 %call8, -1
  %sub11 = add i32 %add10, %34
  br label %if.end12

if.end12:                                         ; preds = %if.else, %ext4_list_backups.exit
  %last.0 = phi i32 [ %30, %ext4_list_backups.exit ], [ %sub11, %if.else ]
  %group.0 = phi i32 [ %retval.0.i, %ext4_list_backups.exit ], [ %add, %if.else ]
  %s_groups_count13 = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %s_groups_count13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_groups_count13, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %group.0, i32 %36)
  %cmp14197 = icmp ult i32 %group.0, %36
  br i1 %cmp14197, label %while.body.lr.ph, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end12
  %cmp.i.not.i.i = icmp ult ptr %call3, inttoptr (i32 4096 to ptr)
  %conv21 = sext i32 %3 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %size)
  %tobool39.not = icmp eq i32 %8, %size
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %group.1198 = phi i32 [ %group.0, %while.body.lr.ph ], [ %group.2, %cleanup.while.body_crit_edge ]
  %call.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %call3, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i137 = icmp slt i32 %call.i, 1
  br i1 %cmp.i137, label %while.body.ext4_resize_ensure_credits_batch.exit_crit_edge, label %if.end3.i138

while.body.ext4_resize_ensure_credits_batch.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit

if.end3.i138:                                     ; preds = %while.body
  br i1 %cmp.i.not.i.i, label %if.end3.i138.if.end18_crit_edge, label %ext4_journal_restart.exit.i

if.end3.i138.if.end18_crit_edge:                  ; preds = %if.end3.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

ext4_journal_restart.exit.i:                      ; preds = %if.end3.i138
  %call1.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %call3, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp5.i, label %ext4_journal_restart.exit.i.if.end18_crit_edge, label %ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge

ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge: ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit

ext4_journal_restart.exit.i.if.end18_crit_edge:   ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

ext4_resize_ensure_credits_batch.exit:            ; preds = %ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge, %while.body.ext4_resize_ensure_credits_batch.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %while.body.ext4_resize_ensure_credits_batch.exit_crit_edge ], [ %call1.i.i, %ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp16 = icmp slt i32 %err.0.i, 0
  br i1 %cmp16, label %ext4_resize_ensure_credits_batch.exit.while.end_crit_edge, label %ext4_resize_ensure_credits_batch.exit.if.end18_crit_edge

ext4_resize_ensure_credits_batch.exit.if.end18_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

ext4_resize_ensure_credits_batch.exit.while.end_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end18:                                         ; preds = %ext4_resize_ensure_credits_batch.exit.if.end18_crit_edge, %ext4_journal_restart.exit.i.if.end18_crit_edge, %if.end3.i138.if.end18_crit_edge
  %conv = zext i32 %group.1198 to i64
  br i1 %cmp, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul nsw i64 %conv, %conv21
  %add22 = add i64 %mul, %blk_off
  br label %if.end28

if.else23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %40 to i64
  %mul.i140 = mul nuw i64 %conv1.i, %conv
  %s_es.i141 = getelementptr inbounds %struct.ext4_sb_info, ptr %38, i32 0, i32 15
  %41 = ptrtoint ptr %s_es.i141 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_es.i141, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_first_data_block.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #11
  %conv3.i = zext i32 %45 to i64
  %add.i142 = add nuw i64 %mul.i140, %conv3.i
  %call25 = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %group.1198) #11
  %conv26 = sext i32 %call25 to i64
  %add27 = add i64 %add.i142, %conv26
  br label %if.end28

if.end28:                                         ; preds = %if.else23, %if.then20
  %backup_block.0 = phi i64 [ %add22, %if.then20 ], [ %add27, %if.else23 ]
  %46 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_bdev.i, align 4
  %48 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_blocksize, align 16
  %call.i143 = tail call ptr @__getblk_gfp(ptr noundef %47, i64 noundef %backup_block.0, i32 noundef %49, i32 noundef 8) #11
  %tobool.not = icmp eq ptr %call.i143, null
  br i1 %tobool.not, label %if.end28.while.end_crit_edge, label %if.end34, !prof !185

if.end28.while.end_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end34:                                         ; preds = %if.end28
  %call35 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.update_backups, i32 noundef 1169, ptr noundef %call3, ptr noundef %sb, ptr noundef nonnull %call.i143, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end38:                                         ; preds = %if.end34
  tail call void @__might_sleep(ptr noundef nonnull @.str.48, i32 noundef 366) #11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i143, i32 noundef 4) #11
  %50 = ptrtoint ptr %call.i143 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %call.i143, align 4
  %and.i.i.i.i = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end38.if.then.i144_crit_edge

if.end38.if.then.i144_crit_edge:                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i144

trylock_buffer.exit.i:                            ; preds = %if.end38
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i143, i32 1, i32 3, i32 1) #11
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i143, ptr nonnull %call.i143, i32 4, ptr nonnull elementtype(i32) %call.i143) #11, !srcloc !179
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !180
  %53 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i144_crit_edge

trylock_buffer.exit.i.if.then.i144_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i144

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_buffer.exit

if.then.i144:                                     ; preds = %trylock_buffer.exit.i.if.then.i144_crit_edge, %if.end38.if.then.i144_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %call.i143) #11
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i144, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i143, i32 0, i32 5
  %54 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data, align 4
  %56 = call ptr @memcpy(ptr %55, ptr %data, i32 %size)
  br i1 %tobool39.not, label %lock_buffer.exit.if.end42_crit_edge, label %if.then40

lock_buffer.exit.if.end42_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then40:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %58, i32 %size
  %59 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %lock_buffer.exit.if.end42_crit_edge
  %60 = ptrtoint ptr %call.i143 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %call.i143, align 4
  %and1.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.set_buffer_uptodate.exit_crit_edge

if.end42.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i143) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end42.set_buffer_uptodate.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef nonnull %call.i143) #11
  %call43 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.update_backups, i32 noundef 1177, ptr noundef %call3, ptr noundef null, ptr noundef nonnull %call.i143) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %set_buffer_uptodate.exit.brelse.exit_crit_edge, label %if.then54, !prof !187

set_buffer_uptodate.exit.brelse.exit_crit_edge:   ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then54:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__ext4_std_error(ptr noundef %sb, ptr noundef nonnull @__func__.update_backups, i32 noundef 1179, i32 noundef %call43) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then54, %set_buffer_uptodate.exit.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i143) #11
  br i1 %cmp, label %if.then61, label %if.else63

if.then61:                                        ; preds = %brelse.exit
  %62 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %s_fs_info.i, align 16
  %s_es.i150 = getelementptr inbounds %struct.ext4_sb_info, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %s_es.i150 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_es.i150, align 4
  %s_feature_compat.i.i151 = getelementptr inbounds %struct.ext4_super_block, ptr %65, i32 0, i32 28
  %66 = ptrtoint ptr %s_feature_compat.i.i151 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %s_feature_compat.i.i151, align 4
  %and.i.i152 = and i32 %67, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %cmp.i.not.i153 = icmp eq i32 %and.i.i152, 0
  br i1 %cmp.i.not.i153, label %if.end3.i168, label %do.bodythread-pre-split.i156

do.bodythread-pre-split.i156:                     ; preds = %if.then61
  %68 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %68)
  %three.0.three.0..pr.i154 = load i32, ptr %three, align 4
  %umax.i155 = tail call i32 @llvm.umax.i32(i32 %three.0.three.0..pr.i154, i32 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %three.0.three.0..pr.i154)
  %exitcond.i157196 = icmp ugt i32 %three.0.three.0..pr.i154, 2
  br i1 %exitcond.i157196, label %do.bodythread-pre-split.i156.cleanup.thread_crit_edge, label %if.end.i163

do.bodythread-pre-split.i156.cleanup.thread_crit_edge: ; preds = %do.bodythread-pre-split.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

do.body.i158:                                     ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i161, i32 %umax.i155)
  %exitcond.i157 = icmp eq i32 %add.i161, %umax.i155
  br i1 %exitcond.i157, label %do.body.i158.cleanup.thread_crit_edge, label %if.end.i163.1

do.body.i158.cleanup.thread_crit_edge:            ; preds = %do.body.i158
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end.i163.1:                                    ; preds = %do.body.i158
  %arrayidx.i160.1 = getelementptr %struct.ext4_super_block, ptr %65, i32 0, i32 84, i32 %three.0.three.0..pr.i154
  %69 = ptrtoint ptr %arrayidx.i160.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i160.1, align 4
  %add.i161.1 = add i32 %three.0.three.0..pr.i154, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i162.1 = icmp eq i32 %70, 0
  br i1 %tobool.not.i162.1, label %do.body.i158.1, label %if.end.i163.1.do.end.i164_crit_edge

if.end.i163.1.do.end.i164_crit_edge:              ; preds = %if.end.i163.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i164

do.body.i158.1:                                   ; preds = %if.end.i163.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i161.1, i32 %umax.i155)
  %exitcond.i157.1 = icmp eq i32 %add.i161.1, %umax.i155
  br i1 %exitcond.i157.1, label %do.body.i158.1.cleanup.thread_crit_edge, label %if.end.i163.2

do.body.i158.1.cleanup.thread_crit_edge:          ; preds = %do.body.i158.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end.i163.2:                                    ; preds = %do.body.i158.1
  %arrayidx.i160.2 = getelementptr %struct.ext4_super_block, ptr %65, i32 0, i32 84, i32 %add.i161
  %71 = ptrtoint ptr %arrayidx.i160.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i160.2, align 4
  %add.i161.2 = add i32 %three.0.three.0..pr.i154, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i162.2 = icmp eq i32 %72, 0
  br i1 %tobool.not.i162.2, label %if.end.i163.2.cleanup.thread_crit_edge, label %if.end.i163.2.do.end.i164_crit_edge

if.end.i163.2.do.end.i164_crit_edge:              ; preds = %if.end.i163.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i164

if.end.i163.2.cleanup.thread_crit_edge:           ; preds = %if.end.i163.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.end.i163:                                      ; preds = %do.bodythread-pre-split.i156
  %sub.i159 = add nsw i32 %three.0.three.0..pr.i154, -1
  %arrayidx.i160 = getelementptr %struct.ext4_super_block, ptr %65, i32 0, i32 84, i32 %sub.i159
  %73 = ptrtoint ptr %arrayidx.i160 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i160, align 4
  %add.i161 = add i32 %three.0.three.0..pr.i154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i162 = icmp eq i32 %74, 0
  br i1 %tobool.not.i162, label %do.body.i158, label %if.end.i163.do.end.i164_crit_edge

if.end.i163.do.end.i164_crit_edge:                ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i164

do.end.i164:                                      ; preds = %if.end.i163.do.end.i164_crit_edge, %if.end.i163.2.do.end.i164_crit_edge, %if.end.i163.1.do.end.i164_crit_edge
  %.lcssa = phi i32 [ %74, %if.end.i163.do.end.i164_crit_edge ], [ %70, %if.end.i163.1.do.end.i164_crit_edge ], [ %72, %if.end.i163.2.do.end.i164_crit_edge ]
  %add.i161.lcssa = phi i32 [ %add.i161, %if.end.i163.do.end.i164_crit_edge ], [ %add.i161.1, %if.end.i163.1.do.end.i164_crit_edge ], [ %add.i161.2, %if.end.i163.2.do.end.i164_crit_edge ]
  %75 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i161.lcssa, ptr %three, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %.lcssa) #11
  br label %cleanup

if.end3.i168:                                     ; preds = %if.then61
  %s_feature_ro_compat.i.i165 = getelementptr inbounds %struct.ext4_super_block, ptr %65, i32 0, i32 30
  %77 = ptrtoint ptr %s_feature_ro_compat.i.i165 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_feature_ro_compat.i.i165, align 4
  %and.i35.i166 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35.i166)
  %cmp.i36.not.i167 = icmp eq i32 %and.i35.i166, 0
  br i1 %cmp.i36.not.i167, label %if.then5.i170, label %if.end7.i178

if.then5.i170:                                    ; preds = %if.end3.i168
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %79)
  %three.0.three.0.185 = load i32, ptr %three, align 4
  %add6.i169 = add i32 %three.0.three.0.185, 1
  store i32 %add6.i169, ptr %three, align 4
  br label %cleanup

if.end7.i178:                                     ; preds = %if.end3.i168
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %five to i32
  call void @__asan_load4_noabort(i32 %80)
  %five.0.five.0.182 = load i32, ptr %five, align 4
  %81 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %81)
  %three.0.three.0.184 = load i32, ptr %three, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %five.0.five.0.182, i32 %three.0.three.0.184)
  %cmp8.i171 = icmp ult i32 %five.0.five.0.182, %three.0.three.0.184
  %spec.select.i172 = select i1 %cmp8.i171, ptr %five, ptr %three
  %spec.select32.i173 = select i1 %cmp8.i171, i32 5, i32 3
  %82 = ptrtoint ptr %seven to i32
  call void @__asan_load4_noabort(i32 %82)
  %seven.0.seven.0.181 = load i32, ptr %seven, align 4
  %83 = ptrtoint ptr %spec.select.i172 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %spec.select.i172, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %seven.0.seven.0.181, i32 %84)
  %cmp11.i174 = icmp ult i32 %seven.0.seven.0.181, %84
  %min.1.i175 = select i1 %cmp11.i174, ptr %seven, ptr %spec.select.i172
  %mult.1.i176 = select i1 %cmp11.i174, i32 7, i32 %spec.select32.i173
  %85 = ptrtoint ptr %min.1.i175 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %min.1.i175, align 4
  %mul.i177 = mul i32 %mult.1.i176, %86
  store i32 %mul.i177, ptr %min.1.i175, align 4
  br label %cleanup

if.else63:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %group.1198, i32 %last.0)
  %cmp64 = icmp eq i32 %group.1198, %last.0
  br i1 %cmp64, label %if.else63.while.end_crit_edge, label %if.else63.cleanup_crit_edge

if.else63.cleanup_crit_edge:                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else63.while.end_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.thread:                                   ; preds = %if.end.i163.2.cleanup.thread_crit_edge, %do.body.i158.1.cleanup.thread_crit_edge, %do.body.i158.cleanup.thread_crit_edge, %do.bodythread-pre-split.i156.cleanup.thread_crit_edge
  %add.i161195.lcssa = phi i32 [ %umax.i155, %do.body.i158.1.cleanup.thread_crit_edge ], [ %umax.i155, %do.body.i158.cleanup.thread_crit_edge ], [ %umax.i155, %if.end.i163.2.cleanup.thread_crit_edge ], [ %three.0.three.0..pr.i154, %do.bodythread-pre-split.i156.cleanup.thread_crit_edge ]
  %87 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i161195.lcssa, ptr %three, align 4
  br label %while.end

cleanup:                                          ; preds = %if.else63.cleanup_crit_edge, %if.end7.i178, %if.then5.i170, %do.end.i164
  %group.2 = phi i32 [ %last.0, %if.else63.cleanup_crit_edge ], [ %76, %do.end.i164 ], [ %86, %if.end7.i178 ], [ %three.0.three.0.185, %if.then5.i170 ]
  %88 = ptrtoint ptr %s_groups_count13 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %s_groups_count13, align 32
  %cmp14 = icmp ult i32 %group.2, %89
  br i1 %cmp14, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %if.else63.while.end_crit_edge, %if.end34.while.end_crit_edge, %if.end28.while.end_crit_edge, %ext4_resize_ensure_credits_batch.exit.while.end_crit_edge, %if.end12.while.end_crit_edge
  %group.1.lcssa = phi i32 [ %group.0, %if.end12.while.end_crit_edge ], [ -1, %cleanup.thread ], [ %last.0, %if.else63.while.end_crit_edge ], [ %group.1198, %if.end34.while.end_crit_edge ], [ %group.1198, %if.end28.while.end_crit_edge ], [ %group.1198, %ext4_resize_ensure_credits_batch.exit.while.end_crit_edge ], [ %group.2, %cleanup.while.end_crit_edge ]
  %err.2 = phi i32 [ 0, %if.end12.while.end_crit_edge ], [ %call43, %cleanup.thread ], [ %call43, %if.else63.while.end_crit_edge ], [ %call35, %if.end34.while.end_crit_edge ], [ -12, %if.end28.while.end_crit_edge ], [ %err.0.i, %ext4_resize_ensure_credits_batch.exit.while.end_crit_edge ], [ %call43, %cleanup.while.end_crit_edge ]
  %call71 = tail call i32 @__ext4_journal_stop(ptr noundef nonnull @__func__.update_backups, i32 noundef 1189, ptr noundef %call3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp ne i32 %call71, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool73.not = icmp eq i32 %err.2, 0
  %or.cond = select i1 %tobool72.not, i1 %tobool73.not, i1 false
  %spec.select = select i1 %or.cond, i32 %call71, i32 %err.2
  br label %exit_err

exit_err:                                         ; preds = %while.end, %if.then
  %group.5 = phi i32 [ 1, %if.then ], [ %group.1.lcssa, %while.end ]
  %err.3 = phi i32 [ %11, %if.then ], [ %spec.select, %while.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.3)
  %tobool76.not = icmp eq i32 %err.3, 0
  br i1 %tobool76.not, label %exit_err.if.end83_crit_edge, label %if.then77

exit_err.if.end83_crit_edge:                      ; preds = %exit_err
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end83

if.then77:                                        ; preds = %exit_err
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.update_backups, i32 noundef 1205, ptr noundef nonnull @.str.52, i32 noundef %group.5, i32 noundef %err.3) #11
  %s_mount_state = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 25
  %90 = ptrtoint ptr %s_mount_state to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %s_mount_state, align 8
  %92 = and i16 %91, -2
  store i16 %92, ptr %s_mount_state, align 8
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 15
  %93 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %s_es, align 4
  %s_state = getelementptr inbounds %struct.ext4_super_block, ptr %94, i32 0, i32 16
  %95 = ptrtoint ptr %s_state to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %s_state, align 2
  %97 = and i16 %96, -257
  store i16 %97, ptr %s_state, align 2
  %s_sbh = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 14
  %98 = ptrtoint ptr %s_sbh to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_sbh, align 64
  tail call void @mark_buffer_dirty(ptr noundef %99) #11
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %exit_err.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seven)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %five)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %three)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_mark_bitmap_end(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_flexbg_block_bitmap(ptr noundef %sb, ptr noundef %handle, ptr nocapture noundef readonly %flex_gd, i64 noundef %first_cluster, i64 noundef %last_cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %sub = sub i64 %last_cluster, %first_cluster
  %0 = trunc i64 %sub to i32
  %conv = add i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp.not125 = icmp eq i32 %conv, 0
  br i1 %cmp.not125, label %entry.cleanup77_crit_edge, label %for.body.lr.ph

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %s_fs_info.i, align 16
  %s_cluster_bits = getelementptr inbounds %struct.ext4_sb_info, ptr %2, i32 0, i32 12
  %bg_flags = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 1
  %count18 = getelementptr inbounds %struct.ext4_new_flex_group_data, ptr %flex_gd, i32 0, i32 2
  %cmp.i.not.i.i = icmp ult ptr %handle, inttoptr (i32 4096 to ptr)
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first_cluster.addr.0127 = phi i64 [ %first_cluster, %for.body.lr.ph ], [ %add76, %for.inc.for.body_crit_edge ]
  %count.0126 = phi i32 [ %conv, %for.body.lr.ph ], [ %sub74, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 %first_cluster.addr.0127, %sh_prom
  %call2 = tail call i32 @ext4_get_group_number(ptr noundef %sb, i64 noundef %shl) #11
  %conv.i = zext i32 %call2 to i64
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %8 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 15
  %9 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_first_data_block.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %conv3.i = zext i32 %13 to i64
  %add.i = add nuw i64 %mul.i, %conv3.i
  %14 = ptrtoint ptr %s_cluster_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_cluster_bits, align 16
  %sh_prom5 = zext i32 %15 to i64
  %shr = lshr i64 %add.i, %sh_prom5
  %16 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %flex_gd, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %sub7 = sub i32 %call2, %19
  %s_clusters_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %6, i32 0, i32 3
  %20 = ptrtoint ptr %s_clusters_per_group to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_clusters_per_group, align 4
  %sub10 = sub i64 %first_cluster.addr.0127, %shr
  %22 = trunc i64 %sub10 to i32
  %conv12 = sub i32 %21, %22
  %23 = tail call i32 @llvm.umin.i32(i32 %conv12, i32 %count.0126)
  %24 = ptrtoint ptr %bg_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bg_flags, align 4
  %arrayidx15 = getelementptr i16, ptr %25, i32 %sub7
  %26 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx15, align 2
  %28 = and i16 %27, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not = icmp eq i16 %28, 0
  br i1 %tobool.not, label %if.end31, label %do.body

do.body:                                          ; preds = %for.body
  %29 = ptrtoint ptr %count18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp19 = icmp ugt i32 %30, 1
  br i1 %cmp19, label %do.body24, label %do.body.for.inc_crit_edge, !prof !185

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext4/resize.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #11, !srcloc !204
  unreachable

if.end31:                                         ; preds = %for.body
  %call.i = tail call i32 @__ext4_journal_ensure_credits(ptr noundef %handle, i32 noundef 1, i32 noundef 64, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %if.end31.ext4_resize_ensure_credits_batch.exit_crit_edge, label %if.end3.i

if.end31.ext4_resize_ensure_credits_batch.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit

if.end3.i:                                        ; preds = %if.end31
  br i1 %cmp.i.not.i.i, label %if.end3.i.if.end36_crit_edge, label %ext4_journal_restart.exit.i

if.end3.i.if.end36_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

ext4_journal_restart.exit.i:                      ; preds = %if.end3.i
  %call1.i.i = tail call i32 @jbd2__journal_restart(ptr noundef %handle, i32 noundef 64, i32 noundef 0, i32 noundef 3136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp5.i, label %ext4_journal_restart.exit.i.if.end36_crit_edge, label %ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge

ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge: ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ext4_resize_ensure_credits_batch.exit

ext4_journal_restart.exit.i.if.end36_crit_edge:   ; preds = %ext4_journal_restart.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

ext4_resize_ensure_credits_batch.exit:            ; preds = %ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge, %if.end31.ext4_resize_ensure_credits_batch.exit_crit_edge
  %err.0.i = phi i32 [ %call.i, %if.end31.ext4_resize_ensure_credits_batch.exit_crit_edge ], [ %call1.i.i, %ext4_journal_restart.exit.i.ext4_resize_ensure_credits_batch.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp33 = icmp slt i32 %err.0.i, 0
  br i1 %cmp33, label %ext4_resize_ensure_credits_batch.exit.cleanup77_crit_edge, label %ext4_resize_ensure_credits_batch.exit.if.end36_crit_edge

ext4_resize_ensure_credits_batch.exit.if.end36_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

ext4_resize_ensure_credits_batch.exit.cleanup77_crit_edge: ; preds = %ext4_resize_ensure_credits_batch.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

if.end36:                                         ; preds = %ext4_resize_ensure_credits_batch.exit.if.end36_crit_edge, %ext4_journal_restart.exit.i.if.end36_crit_edge, %if.end3.i.if.end36_crit_edge
  %31 = ptrtoint ptr %flex_gd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %flex_gd, align 4
  %block_bitmap = getelementptr %struct.ext4_new_group_data, ptr %32, i32 %sub7, i32 1
  %33 = ptrtoint ptr %block_bitmap to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %block_bitmap, align 8
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %37 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize.i, align 16
  %call.i117 = tail call ptr @__getblk_gfp(ptr noundef %36, i64 noundef %34, i32 noundef %38, i32 noundef 8) #11
  %tobool40.not = icmp eq ptr %call.i117, null
  br i1 %tobool40.not, label %if.end36.cleanup77_crit_edge, label %do.end53, !prof !185

if.end36.cleanup77_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

do.end53:                                         ; preds = %if.end36
  %call54 = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.set_flexbg_block_bitmap, i32 noundef 479, ptr noundef %handle, ptr noundef %sb, ptr noundef nonnull %call.i117, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %brelse.exit120, label %brelse.exit

brelse.exit:                                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %call.i117) #11
  br label %cleanup77

brelse.exit120:                                   ; preds = %do.end53
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i117, i32 0, i32 5
  %39 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data, align 4
  tail call void @ext4_set_bits(ptr noundef %40, i32 noundef %22, i32 noundef %23) #11
  %call61 = tail call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.set_flexbg_block_bitmap, i32 noundef 488, ptr noundef %handle, ptr noundef null, ptr noundef nonnull %call.i117) #11
  tail call void @__brelse(ptr noundef nonnull %call.i117) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %brelse.exit120.for.inc_crit_edge, label %brelse.exit120.cleanup77_crit_edge

brelse.exit120.cleanup77_crit_edge:               ; preds = %brelse.exit120
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

brelse.exit120.for.inc_crit_edge:                 ; preds = %brelse.exit120
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %brelse.exit120.for.inc_crit_edge, %do.body.for.inc_crit_edge
  %sub74 = sub i32 %count.0126, %23
  %conv75 = zext i32 %23 to i64
  %add76 = add i64 %first_cluster.addr.0127, %conv75
  %cmp.not = icmp eq i32 %sub74, 0
  br i1 %cmp.not, label %for.inc.cleanup77_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup77_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

cleanup77:                                        ; preds = %for.inc.cleanup77_crit_edge, %brelse.exit120.cleanup77_crit_edge, %brelse.exit, %if.end36.cleanup77_crit_edge, %ext4_resize_ensure_credits_batch.exit.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.2 = phi i32 [ %call54, %brelse.exit ], [ 0, %entry.cleanup77_crit_edge ], [ 0, %for.inc.cleanup77_crit_edge ], [ %err.0.i, %ext4_resize_ensure_credits_batch.exit.cleanup77_crit_edge ], [ -12, %if.end36.cleanup77_crit_edge ], [ %call61, %brelse.exit120.cleanup77_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_journal_ensure_credits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2__journal_restart(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @verify_reserved_gdb(ptr noundef %sb, i32 noundef %end, ptr nocapture noundef readonly %primary) unnamed_addr #0 align 64 {
entry:
  %three = alloca i32, align 4
  %five = alloca i32, align 4
  %seven = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %primary, i32 0, i32 3
  %0 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %b_blocknr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %three)
  %2 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %three, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %five)
  %3 = ptrtoint ptr %five to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %five, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seven)
  %4 = ptrtoint ptr %seven to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %seven, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %primary, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_es.i, align 4
  %s_feature_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %s_feature_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_feature_compat.i.i, align 4
  %and.i.i = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ext4_super_block, ptr %10, i32 0, i32 30
  %s_blocks_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %8, i32 0, i32 2
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %p.0 = phi ptr [ %6, %entry ], [ %incdec.ptr, %if.end.while.cond_crit_edge ]
  %gdbackups.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.while.cond_crit_edge ]
  br i1 %cmp.i.not.i, label %if.end3.i, label %do.bodythread-pre-split.i

do.bodythread-pre-split.i:                        ; preds = %while.cond
  %13 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %13)
  %three.0.three.0..pr.i = load i32, ptr %three, align 4
  %umax.i = tail call i32 @llvm.umax.i32(i32 %three.0.three.0..pr.i, i32 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %three.0.three.0..pr.i)
  %exitcond.i42 = icmp ugt i32 %three.0.three.0..pr.i, 2
  br i1 %exitcond.i42, label %do.bodythread-pre-split.i.cleanup_crit_edge, label %if.end.i

do.bodythread-pre-split.i.cleanup_crit_edge:      ; preds = %do.bodythread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %umax.i)
  %exitcond.i = icmp eq i32 %add.i, %umax.i
  br i1 %exitcond.i, label %do.body.i.cleanup_crit_edge, label %if.end.i.1

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.1:                                       ; preds = %do.body.i
  %arrayidx.i.1 = getelementptr %struct.ext4_super_block, ptr %10, i32 0, i32 84, i32 %three.0.three.0..pr.i
  %14 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.1, align 4
  %add.i.1 = add i32 %three.0.three.0..pr.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.1 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.1, label %do.body.i.1, label %if.end.i.1.do.end.i_crit_edge

if.end.i.1.do.end.i_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.body.i.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.1, i32 %umax.i)
  %exitcond.i.1 = icmp eq i32 %add.i.1, %umax.i
  br i1 %exitcond.i.1, label %do.body.i.1.cleanup_crit_edge, label %if.end.i.2

do.body.i.1.cleanup_crit_edge:                    ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.2:                                       ; preds = %do.body.i.1
  %arrayidx.i.2 = getelementptr %struct.ext4_super_block, ptr %10, i32 0, i32 84, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.2, align 4
  %add.i.2 = add i32 %three.0.three.0..pr.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.2, label %if.end.i.2.cleanup_crit_edge, label %if.end.i.2.do.end.i_crit_edge

if.end.i.2.do.end.i_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.i.2.cleanup_crit_edge:                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.bodythread-pre-split.i
  %sub.i = add nsw i32 %three.0.three.0..pr.i, -1
  %arrayidx.i = getelementptr %struct.ext4_super_block, ptr %10, i32 0, i32 84, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %three.0.three.0..pr.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %if.end.i.2.do.end.i_crit_edge, %if.end.i.1.do.end.i_crit_edge
  %.lcssa = phi i32 [ %19, %if.end.i.do.end.i_crit_edge ], [ %15, %if.end.i.1.do.end.i_crit_edge ], [ %17, %if.end.i.2.do.end.i_crit_edge ]
  %add.i.lcssa = phi i32 [ %add.i, %if.end.i.do.end.i_crit_edge ], [ %add.i.1, %if.end.i.1.do.end.i_crit_edge ], [ %add.i.2, %if.end.i.2.do.end.i_crit_edge ]
  %20 = ptrtoint ptr %three to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i.lcssa, ptr %three, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %.lcssa) #11
  br label %ext4_list_backups.exit

if.end3.i:                                        ; preds = %while.cond
  %22 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i35.i = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35.i)
  %cmp.i36.not.i = icmp eq i32 %and.i35.i, 0
  br i1 %cmp.i36.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %24)
  %three.0.three.0.33 = load i32, ptr %three, align 4
  %add6.i = add i32 %three.0.three.0.33, 1
  store i32 %add6.i, ptr %three, align 4
  br label %ext4_list_backups.exit

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %five to i32
  call void @__asan_load4_noabort(i32 %25)
  %five.0.five.0. = load i32, ptr %five, align 4
  %26 = ptrtoint ptr %three to i32
  call void @__asan_load4_noabort(i32 %26)
  %three.0.three.0. = load i32, ptr %three, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %five.0.five.0., i32 %three.0.three.0.)
  %cmp8.i = icmp ult i32 %five.0.five.0., %three.0.three.0.
  %spec.select.i = select i1 %cmp8.i, ptr %five, ptr %three
  %spec.select32.i = select i1 %cmp8.i, i32 5, i32 3
  %27 = ptrtoint ptr %seven to i32
  call void @__asan_load4_noabort(i32 %27)
  %seven.0.seven.0. = load i32, ptr %seven, align 4
  %28 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spec.select.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %seven.0.seven.0., i32 %29)
  %cmp11.i = icmp ult i32 %seven.0.seven.0., %29
  %min.1.i = select i1 %cmp11.i, ptr %seven, ptr %spec.select.i
  %mult.1.i = select i1 %cmp11.i, i32 7, i32 %spec.select32.i
  %30 = ptrtoint ptr %min.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min.1.i, align 4
  %mul.i = mul i32 %mult.1.i, %31
  store i32 %mul.i, ptr %min.1.i, align 4
  br label %ext4_list_backups.exit

ext4_list_backups.exit:                           ; preds = %if.end7.i, %if.then5.i, %do.end.i
  %retval.0.i = phi i32 [ %21, %do.end.i ], [ %31, %if.end7.i ], [ %three.0.three.0.33, %if.then5.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %end)
  %cmp = icmp ult i32 %retval.0.i, %end
  br i1 %cmp, label %while.body, label %ext4_list_backups.exit.cleanup_crit_edge

ext4_list_backups.exit.cleanup_crit_edge:         ; preds = %ext4_list_backups.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %ext4_list_backups.exit
  %32 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p.0, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %conv = zext i32 %34 to i64
  %35 = ptrtoint ptr %s_blocks_per_group to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_blocks_per_group, align 8
  %mul = mul i32 %36, %retval.0.i
  %conv2 = zext i32 %mul to i64
  %add = add i64 %1, %conv2
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp3.not = icmp eq i64 %add, %conv
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = zext i32 %retval.0.i to i64
  %conv8 = zext i32 %36 to i64
  %mul9 = mul nuw i64 %conv8, %conv5
  %add10 = add i64 %mul9, %1
  tail call void (ptr, ptr, i32, ptr, ...) @__ext4_warning(ptr noundef %sb, ptr noundef nonnull @__func__.verify_reserved_gdb, i32 noundef 784, ptr noundef nonnull @.str.43, i64 noundef %1, i32 noundef %retval.0.i, i64 noundef %add10) #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %incdec.ptr = getelementptr i32, ptr %p.0, i32 1
  %inc = add nuw nsw i32 %gdbackups.0, 1
  %37 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize, align 16
  %div31 = lshr i32 %38, 2
  %cmp11.not = icmp ult i32 %gdbackups.0, %div31
  br i1 %cmp11.not, label %if.end.while.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %ext4_list_backups.exit.cleanup_crit_edge, %if.end.i.2.cleanup_crit_edge, %do.body.i.1.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %do.bodythread-pre-split.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ %gdbackups.0, %do.body.i.1.cleanup_crit_edge ], [ %gdbackups.0, %do.body.i.cleanup_crit_edge ], [ %gdbackups.0, %if.end.i.2.cleanup_crit_edge ], [ %gdbackups.0, %do.bodythread-pre-split.i.cleanup_crit_edge ], [ %gdbackups.0, %ext4_list_backups.exit.cleanup_crit_edge ], [ -27, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seven)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %five)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %three)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_reserve_inode_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mark_iloc_dirty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_std_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_superblock_csum_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_bitmap_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_table_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_group_clusters_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_inodes_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_itable_unused_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_group_desc_csum_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_mb_add_groupinfo(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_inode_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_block_bitmap_csum_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bh_uptodate_or_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_read_bh(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_calculate_overhead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_group_add_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_free_blocks(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ext4_mark_inode_dirty(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext4_update_dynamic_rev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !106, !107, !109, !110, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !130, !132, !134, !135, !136, !137, !139, !141, !143, !144, !145, !147, !148, !150, !151, !153, !155, !156, !157, !159, !161, !162, !164, !166, !167, !168}
!llvm.named.register.sp = !{!169}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__func__.ext4_resize_begin, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/resize.c", i32 62, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ext4/resize.c", i32 72, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ext4/resize.c", i32 78, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.ext4_group_add, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext4/resize.c", i32 1669, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ext4/resize.c", i32 1675, i32 3}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ext4/resize.c", i32 1681, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ext4/resize.c", i32 1688, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ext4/resize.c", i32 1694, i32 4}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ext4/resize.c", i32 1801, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ext4/resize.c", i32 1809, i32 3}
!24 = !{ptr @__func__.ext4_group_extend, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ext4/resize.c", i32 1816, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ext4/resize.c", i32 1824, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ext4/resize.c", i32 1839, i32 3}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/resize.c", i32 1845, i32 3}
!33 = !{ptr @__func__.ext4_resize_fs, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext4/resize.c", i32 1975, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext4/resize.c", i32 1983, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ext4/resize.c", i32 1998, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ext4/resize.c", i32 2010, i32 4}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ext4/resize.c", i32 2105, i32 5}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ext4/resize.c", i32 2135, i32 3}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ext4/resize.c", i32 2137, i32 2}
!48 = !{ptr @__func__.verify_group_input, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ext4/resize.c", i32 136, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ext4/resize.c", i32 147, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @verify_group_input._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @verify_group_input._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ext4/resize.c", i32 155, i32 4}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ext4/resize.c", i32 157, i32 3}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ext4/resize.c", i32 160, i32 3}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ext4/resize.c", i32 165, i32 3}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ext4/resize.c", i32 168, i32 3}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ext4/resize.c", i32 171, i32 3}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ext4/resize.c", i32 175, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ext4/resize.c", i32 178, i32 3}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ext4/resize.c", i32 181, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ext4/resize.c", i32 186, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ext4/resize.c", i32 191, i32 3}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ext4/resize.c", i32 195, i32 3}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ext4/resize.c", i32 200, i32 3}
!84 = !{ptr @__func__.ext4_flex_group_add, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ext4/resize.c", i32 1528, i32 8}
!86 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!87 = !{!"../fs/ext4/resize.c", i32 1565, i32 13}
!88 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__func__.setup_new_flex_group_blocks, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ext4/resize.c", i32 574, i32 10}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../fs/ext4/resize.c", i32 580, i32 24}
!93 = !{ptr @__func__.bclean, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ext4/resize.c", i32 412, i32 8}
!95 = !{ptr @__func__.set_flexbg_block_bitmap, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ext4/resize.c", i32 478, i32 9}
!97 = distinct !{null, !98, !"__warned", i1 false, i1 false}
!98 = !{!"../fs/ext4/resize.c", i32 1247, i32 13}
!99 = !{ptr @__func__.ext4_add_new_descs, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ext4/resize.c", i32 1250, i32 10}
!101 = !{ptr @__func__.reserve_backup_gdb, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ext4/resize.c", i32 1035, i32 4}
!103 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @__func__.verify_reserved_gdb, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ext4/resize.c", i32 779, i32 4}
!106 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__func__.add_new_gdb_meta_bg, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ext4/resize.c", i32 961, i32 3}
!109 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../fs/ext4/resize.c", i32 967, i32 17}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ext4/resize.c", i32 823, i32 3}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @add_new_gdb._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @add_new_gdb._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ext4/resize.c", i32 847, i32 3}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../fs/ext4/resize.c", i32 913, i32 17}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../fs/ext4/resize.c", i32 1331, i32 12}
!125 = !{ptr @__func__.ext4_setup_new_descs, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ext4/resize.c", i32 1341, i32 4}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../fs/ext4/ext4.h", i32 3288, i32 2}
!129 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../fs/ext4/resize.c", i32 1465, i32 8}
!132 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ext4/resize.c", i32 1478, i32 3}
!134 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ext4_update_super._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @ext4_update_super._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @__func__.update_backups, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../fs/ext4/resize.c", i32 1168, i32 14}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ext4/resize.c", i32 1204, i32 3}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!143 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!145 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!146 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!147 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @__func__.ext4_group_extend_no_check, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ext4/resize.c", i32 1737, i32 3}
!150 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../fs/ext4/resize.c", i32 1745, i32 3}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ext4/resize.c", i32 1770, i32 4}
!155 = !{ptr @ext4_group_extend_no_check._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @ext4_group_extend_no_check._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/ext4/resize.c", i32 1875, i32 2}
!159 = !{ptr @__func__.ext4_convert_meta_bg, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ext4/resize.c", i32 1878, i32 4}
!161 = !{ptr @.str.60, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ext4/resize.c", i32 1944, i32 2}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ext4/resize.c", i32 385, i32 3}
!166 = !{ptr @.str.63, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @ext4_alloc_group_tables._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @ext4_alloc_group_tables._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{!"sp"}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148651721, i64 2148651753, i64 2148651782, i64 2148651816, i64 2148651847, i64 2148651870}
!180 = !{i64 2148740826}
!181 = !{i64 2148739713}
!182 = !{i64 2148650108, i64 2148650140, i64 2148650169, i64 2148650203, i64 2148650234, i64 2148650257}
!183 = !{i64 2155129472}
!184 = !{!"auto-init"}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{i64 2155230689, i64 2155231171, i64 2155230726, i64 2155230782, i64 2155230816, i64 2155230840, i64 2155230881, i64 2155230902, i64 2155230930, i64 2155230964}
!187 = !{!"branch_weights", i32 2000, i32 1}
!188 = !{i64 2155236475, i64 2155236957, i64 2155236512, i64 2155236568, i64 2155236602, i64 2155236626, i64 2155236667, i64 2155236688, i64 2155236716, i64 2155236750}
!189 = !{!"branch_weights", i32 4001, i32 4000000}
!190 = !{i64 2155149948, i64 2155150429, i64 2155149985, i64 2155150041, i64 2155150075, i64 2155150099, i64 2155150140, i64 2155150161, i64 2155150189, i64 2155150223}
!191 = !{i64 2149978196}
!192 = !{i64 2149978462}
!193 = !{i64 2155238526, i64 2155239008, i64 2155238563, i64 2155238619, i64 2155238653, i64 2155238677, i64 2155238718, i64 2155238739, i64 2155238767, i64 2155238801}
!194 = !{i64 2155192769}
!195 = !{i64 2155177405}
!196 = !{i64 2155245039, i64 2155245521, i64 2155245076, i64 2155245132, i64 2155245166, i64 2155245190, i64 2155245231, i64 2155245252, i64 2155245280, i64 2155245314}
!197 = !{i64 2155135746, i64 2155136227, i64 2155135783, i64 2155135839, i64 2155135873, i64 2155135897, i64 2155135938, i64 2155135959, i64 2155135987, i64 2155136021}
!198 = !{i64 2155137493, i64 2155137974, i64 2155137530, i64 2155137586, i64 2155137620, i64 2155137644, i64 2155137685, i64 2155137706, i64 2155137734, i64 2155137768}
!199 = !{i64 2155210727, i64 2155211209, i64 2155210764, i64 2155210820, i64 2155210854, i64 2155210878, i64 2155210919, i64 2155210940, i64 2155210968, i64 2155211002}
!200 = !{i64 1007104, i64 1007131, i64 1007153, i64 1007181}
!201 = !{i64 1007512, i64 1007539, i64 1007572, i64 1007593, i64 1007620, i64 1007646}
!202 = !{i64 2155219064}
!203 = !{i64 2148642863, i64 2148642889, i64 2148642918, i64 2148642952, i64 2148642983, i64 2148643006}
!204 = !{i64 2155146123, i64 2155146604, i64 2155146160, i64 2155146216, i64 2155146250, i64 2155146274, i64 2155146315, i64 2155146336, i64 2155146364, i64 2155146398}
