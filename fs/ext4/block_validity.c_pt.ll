; ModuleID = '/llk/IR_all_yes/fs/ext4/block_validity.c_pt.bc'
source_filename = "../fs/ext4/block_validity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
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
%struct.ext4_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, i32, [17 x i32], i32, i32, i32, i16, i16, i32, i16, i16, i64, i32, i8, i8, i8, i8, i64, i32, i32, i64, i32, i32, i32, i32, i64, [32 x i8], i32, i32, i32, i32, i64, [32 x i8], [64 x i8], i32, i32, i32, [2 x i32], [4 x i8], [16 x i8], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, [94 x i32], i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ext4_system_zone = type { %struct.rb_node, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext4_system_blocks = type { %struct.rb_root, %struct.callback_head }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ext4_system_zone\00", [47 x i8] zeroinitializer }, align 32
@ext4_system_zone_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/ext4/block_validity.c\00", [39 x i8] zeroinitializer }, align 32
@ext4_release_system_zone.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ext4_inode_block_valid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid block\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.ext4_protect_reserved_inode = private unnamed_addr constant [28 x i8] c"ext4_protect_reserved_inode\00", align 1
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"blocks %llu-%llu from inode overlap system zone\00", [48 x i8] zeroinitializer }, align 32
@debug_print_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016System zones: \00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug_print_tree\00", [47 x i8] zeroinitializer }, align 32
@debug_print_tree._entry_ptr = internal global ptr @debug_print_tree._entry, section ".printk_index", align 4
@debug_print_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_print_tree._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.1, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01c%s%llu-%llu\00", [18 x i8] zeroinitializer }, align 32
@debug_print_tree._entry_ptr.10 = internal global ptr @debug_print_tree._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@debug_print_tree._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.1, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@debug_print_tree._entry_ptr.15 = internal global ptr @debug_print_tree._entry.13, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 34, i32 28 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"ext4_system_zone_cachep\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 30, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 226, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 287, i32 16 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 320, i32 16 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 356, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 179, i32 6 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 132, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 138, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private constant [28 x i8] c"../fs/ext4/block_validity.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 144, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @debug_print_tree._entry, ptr @debug_print_tree._entry.13, ptr @debug_print_tree._entry.8, ptr @debug_print_tree._entry_ptr, ptr @debug_print_tree._entry_ptr.10, ptr @debug_print_tree._entry_ptr.15, ptr @.str, ptr @ext4_system_zone_cachep, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext4_system_zone_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_print_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_print_tree._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_print_tree._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_system_zone() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 8, i32 noundef 0, ptr noundef null) #9
  store ptr %call, ptr @ext4_system_zone_cachep, align 4
  %cmp = icmp eq ptr %call, null
  %. = select i1 %cmp, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_exit_system_zone() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #9
  %0 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_setup_system_zone(ptr noundef %sb) local_unnamed_addr #2 align 64 {
entry:
  %map.i = alloca %struct.ext4_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_groups_count.i = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %s_groups_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_groups_count.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_log_groups_per_flex.i = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 112
  %6 = ptrtoint ptr %s_log_groups_per_flex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_log_groups_per_flex.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 12) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp146.not = icmp eq i32 %3, 0
  br i1 %cmp146.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %notmask = shl nsw i32 -1, %7
  %9 = xor i32 %notmask, -1
  %s_itb_per_group = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 5
  br label %for.body

for.cond:                                         ; preds = %if.end27
  %inc = add nuw i32 %i.0147, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 226, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %call5 = tail call i32 @ext4_bg_has_super(ptr noundef %sb, i32 noundef %i.0147) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.body.if.end16_crit_edge, label %land.lhs.true

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0147)
  %cmp7 = icmp ult i32 %i.0147, 5
  %rem = and i32 %i.0147, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8 = icmp eq i32 %rem, 0
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %conv.i = zext i32 %i.0147 to i64
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_blocks_per_group.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocks_per_group.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocks_per_group.i, align 8
  %conv1.i = zext i32 %13 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_es.i, align 4
  %s_first_data_block.i = getelementptr inbounds %struct.ext4_super_block, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %s_first_data_block.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_first_data_block.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  %conv3.i = zext i32 %18 to i64
  %add.i = add nuw i64 %mul.i, %conv3.i
  %call11 = tail call i32 @ext4_bg_num_gdb(ptr noundef %sb, i32 noundef %i.0147) #9
  %add = add i32 %call11, 1
  %call12 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %call7.i.i, i64 noundef %add.i, i32 noundef %add, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then9.if.end16_crit_edge, label %if.then9.err_crit_edge

if.then9.err_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.then9.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %call17 = tail call ptr @ext4_get_group_desc(ptr noundef %sb, i32 noundef %i.0147, ptr noundef null) #9
  %call18 = tail call i64 @ext4_block_bitmap(ptr noundef %sb, ptr noundef %call17) #9
  %call19 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %call7.i.i, i64 noundef %call18, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.err_crit_edge

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end22:                                         ; preds = %if.end16
  %call23 = tail call i64 @ext4_inode_bitmap(ptr noundef %sb, ptr noundef %call17) #9
  %call24 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %call7.i.i, i64 noundef %call23, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.err_crit_edge

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end27:                                         ; preds = %if.end22
  %call28 = tail call i64 @ext4_inode_table(ptr noundef %sb, ptr noundef %call17) #9
  %19 = ptrtoint ptr %s_itb_per_group to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_itb_per_group, align 4
  %call29 = tail call fastcc i32 @add_system_zone(ptr noundef nonnull %call7.i.i, i64 noundef %call28, i32 noundef %20, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond, label %if.end27.err_crit_edge

if.end27.err_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i129 = getelementptr inbounds %struct.ext4_sb_info, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %s_es.i129 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_es.i129, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %24, i32 0, i32 28
  %25 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.end.do.body_crit_edge, label %land.lhs.true34

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true34:                                  ; preds = %for.end
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 15
  %27 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_es, align 4
  %s_journal_inum = getelementptr inbounds %struct.ext4_super_block, ptr %28, i32 0, i32 39
  %29 = ptrtoint ptr %s_journal_inum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_journal_inum, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %land.lhs.true34.do.body_crit_edge, label %if.then36

land.lhs.true34.do.body_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then36:                                        ; preds = %land.lhs.true34
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map.i) #9
  %32 = call ptr @memset(ptr %map.i, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i131 = icmp ult i32 %31, 2
  br i1 %cmp.i131, label %if.then36.ext4_protect_reserved_inode.exit.thread_crit_edge, label %lor.lhs.false.i

if.then36.ext4_protect_reserved_inode.exit.thread_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_protect_reserved_inode.exit.thread

lor.lhs.false.i:                                  ; preds = %if.then36
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %24, align 8
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp1.i = icmp ult i32 %35, %31
  br i1 %cmp1.i, label %lor.lhs.false.i.ext4_protect_reserved_inode.exit.thread_crit_edge, label %if.end.i

lor.lhs.false.i.ext4_protect_reserved_inode.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_protect_reserved_inode.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call ptr @__ext4_iget(ptr noundef %sb, i32 noundef %31, i32 noundef 1, ptr noundef nonnull @__func__.ext4_protect_reserved_inode, i32 noundef 160) #9
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %call2.i to i32
  br label %ext4_protect_reserved_inode.exit

if.end6.i:                                        ; preds = %if.end.i
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call2.i, i32 0, i32 14
  %37 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %i_size.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %39 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %s_blocksize.i, align 16
  %conv.i133 = zext i32 %40 to i64
  %add.i134 = add i64 %38, -1
  %sub.i = add i64 %add.i134, %conv.i133
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %41 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %42 to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %conv8.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i)
  %cmp968.not.i = icmp eq i32 %conv8.i, 0
  br i1 %cmp968.not.i, label %if.end6.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end6.i.while.end.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end6.i
  %m_lblk.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i, i32 0, i32 1
  %m_len.i = getelementptr inbounds %struct.ext4_map_blocks, ptr %map.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end38.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.069.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %i.1.i, %if.end38.i.while.body.i_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 0) #9
  %call.i.i = call i32 @__cond_resched() #9
  %43 = ptrtoint ptr %m_lblk.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.069.i, ptr %m_lblk.i, align 8
  %sub12.i = sub i32 %conv8.i, %i.069.i
  %44 = ptrtoint ptr %m_len.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %sub12.i, ptr %m_len.i, align 4
  %call13.i = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %call2.i, ptr noundef nonnull %map.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %while.body.i.while.end.i_crit_edge, label %if.end17.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end17.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp18.i = icmp eq i32 %call13.i, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nuw i32 %i.069.i, 1
  br label %if.end38.i

if.else.i:                                        ; preds = %if.end17.i
  %45 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %map.i, align 8
  %call21.i = call fastcc i32 @add_system_zone(ptr noundef nonnull %call7.i.i, i64 noundef %46, i32 noundef %call13.i, i32 noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.end36.i

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -117, i32 %call21.i)
  %cmp25.i = icmp eq i32 %call21.i, -117
  br i1 %cmp25.i, label %if.then27.i, label %if.then24.i.while.end.i_crit_edge

if.then24.i.while.end.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %map.i, align 8
  %49 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %m_len.i, align 4
  %conv32.i = zext i32 %50 to i64
  %add33.i = add i64 %48, -1
  %sub34.i = add i64 %add33.i, %conv32.i
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %call2.i, ptr noundef nonnull @__func__.ext4_protect_reserved_inode, i32 noundef 182, i64 noundef 0, i32 noundef 117, ptr noundef nonnull @.str.5, i64 noundef %48, i64 noundef %sub34.i) #9
  br label %while.end.i

if.end36.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add37.i = add i32 %call13.i, %i.069.i
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end36.i, %if.then20.i
  %i.1.i = phi i32 [ %inc.i, %if.then20.i ], [ %add37.i, %if.end36.i ]
  %cmp9.i = icmp ult i32 %i.1.i, %conv8.i
  br i1 %cmp9.i, label %if.end38.i.while.body.i_crit_edge, label %if.end38.i.while.end.i_crit_edge

if.end38.i.while.end.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end38.i.while.body.i_crit_edge:                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %if.end38.i.while.end.i_crit_edge, %if.then27.i, %if.then24.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end6.i.while.end.i_crit_edge
  %err.2.i = phi i32 [ -117, %if.then27.i ], [ %call21.i, %if.then24.i.while.end.i_crit_edge ], [ 0, %if.end6.i.while.end.i_crit_edge ], [ %call13.i, %while.body.i.while.end.i_crit_edge ], [ 0, %if.end38.i.while.end.i_crit_edge ]
  call void @iput(ptr noundef %call2.i) #9
  br label %ext4_protect_reserved_inode.exit

ext4_protect_reserved_inode.exit.thread:          ; preds = %lor.lhs.false.i.ext4_protect_reserved_inode.exit.thread_crit_edge, %if.then36.ext4_protect_reserved_inode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i) #9
  br label %err

ext4_protect_reserved_inode.exit:                 ; preds = %while.end.i, %if.then4.i
  %retval.0.i = phi i32 [ %36, %if.then4.i ], [ %err.2.i, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool40.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool40.not, label %ext4_protect_reserved_inode.exit.do.body_crit_edge, label %ext4_protect_reserved_inode.exit.err_crit_edge

ext4_protect_reserved_inode.exit.err_crit_edge:   ; preds = %ext4_protect_reserved_inode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

ext4_protect_reserved_inode.exit.do.body_crit_edge: ; preds = %ext4_protect_reserved_inode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %ext4_protect_reserved_inode.exit.do.body_crit_edge, %land.lhs.true34.do.body_crit_edge, %for.end.do.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  %s_system_blks67 = getelementptr inbounds %struct.ext4_sb_info, ptr %5, i32 0, i32 59
  %51 = ptrtoint ptr %s_system_blks67 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i, ptr %s_system_blks67, align 4
  %52 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_mount_opt = getelementptr inbounds %struct.ext4_sb_info, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %s_mount_opt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_mount_opt, align 4
  %and = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool80.not = icmp eq i32 %and, 0
  br i1 %tobool80.not, label %do.body.cleanup_crit_edge, label %if.then81

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %do.body
  %call.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #13
  %56 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %59, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i137 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i137, label %if.then81.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then81.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then81
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then81.rcu_read_lock.exit.i_crit_edge
  %60 = ptrtoint ptr %s_system_blks67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile ptr, ptr %s_system_blks67, align 4
  %call7.i = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end13.i_crit_edge

rcu_read_lock.exit.i.do.end13.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call8.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %.b35.i = load i1, ptr @debug_print_tree.__warned, align 1
  br i1 %.b35.i, label %land.lhs.true10.i.do.end13.i_crit_edge, label %if.then.i

land.lhs.true10.i.do.end13.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13.i

if.then.i:                                        ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @debug_print_tree.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 134, ptr noundef nonnull @.str.3) #9
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then.i, %land.lhs.true10.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge, %rcu_read_lock.exit.i.do.end13.i_crit_edge
  %call15.i = call ptr @rb_first(ptr noundef %61) #9
  %tobool16.not45.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not45.i, label %do.end13.i.while.end.i142_crit_edge, label %while.body.preheader.i

do.end13.i.while.end.i142_crit_edge:              ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i142

while.body.preheader.i:                           ; preds = %do.end13.i
  %start_blk.peel.i = getelementptr inbounds %struct.ext4_system_zone, ptr %call15.i, i32 0, i32 1
  %62 = ptrtoint ptr %start_blk.peel.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %start_blk.peel.i, align 8
  %count.peel.i = getelementptr inbounds %struct.ext4_system_zone, ptr %call15.i, i32 0, i32 2
  %64 = ptrtoint ptr %count.peel.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count.peel.i, align 8
  %conv.peel.i = zext i32 %65 to i64
  %add.peel.i = add i64 %63, -1
  %sub.peel.i = add i64 %add.peel.i, %conv.peel.i
  %call24.peel.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i64 noundef %63, i64 noundef %sub.peel.i) #13
  %call25.peel.i = call ptr @rb_next(ptr noundef nonnull %call15.i) #9
  %tobool16.not.peel.i = icmp eq ptr %call25.peel.i, null
  br i1 %tobool16.not.peel.i, label %while.body.preheader.i.while.end.i142_crit_edge, label %while.body.preheader.i.while.body.i141_crit_edge

while.body.preheader.i.while.body.i141_crit_edge: ; preds = %while.body.preheader.i
  br label %while.body.i141

while.body.preheader.i.while.end.i142_crit_edge:  ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i142

while.body.i141:                                  ; preds = %while.body.i141.while.body.i141_crit_edge, %while.body.preheader.i.while.body.i141_crit_edge
  %node.047.i = phi ptr [ %call25.i, %while.body.i141.while.body.i141_crit_edge ], [ %call25.peel.i, %while.body.preheader.i.while.body.i141_crit_edge ]
  %start_blk.i = getelementptr inbounds %struct.ext4_system_zone, ptr %node.047.i, i32 0, i32 1
  %66 = ptrtoint ptr %start_blk.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %start_blk.i, align 8
  %count.i = getelementptr inbounds %struct.ext4_system_zone, ptr %node.047.i, i32 0, i32 2
  %68 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count.i, align 8
  %conv.i138 = zext i32 %69 to i64
  %add.i139 = add i64 %67, -1
  %sub.i140 = add i64 %add.i139, %conv.i138
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, i64 noundef %67, i64 noundef %sub.i140) #13
  %call25.i = call ptr @rb_next(ptr noundef nonnull %node.047.i) #9
  %tobool16.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool16.not.i, label %while.body.i141.while.end.i142_crit_edge, label %while.body.i141.while.body.i141_crit_edge, !llvm.loop !55

while.body.i141.while.body.i141_crit_edge:        ; preds = %while.body.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i141

while.body.i141.while.end.i142_crit_edge:         ; preds = %while.body.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i142

while.end.i142:                                   ; preds = %while.body.i141.while.end.i142_crit_edge, %while.body.preheader.i.while.end.i142_crit_edge, %do.end13.i.while.end.i142_crit_edge
  %call.i36.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i36.i, label %while.end.i142.debug_print_tree.exit_crit_edge, label %land.lhs.true.i39.i

while.end.i142.debug_print_tree.exit_crit_edge:   ; preds = %while.end.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_print_tree.exit

land.lhs.true.i39.i:                              ; preds = %while.end.i142
  %call1.i37.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.debug_print_tree.exit_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.debug_print_tree.exit_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_print_tree.exit

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.debug_print_tree.exit_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.debug_print_tree.exit_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %debug_print_tree.exit

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #9
  br label %debug_print_tree.exit

debug_print_tree.exit:                            ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.debug_print_tree.exit_crit_edge, %land.lhs.true.i39.i.debug_print_tree.exit_crit_edge, %while.end.i142.debug_print_tree.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %70 = call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i43.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i = add i32 %73, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i44.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

err:                                              ; preds = %ext4_protect_reserved_inode.exit.err_crit_edge, %ext4_protect_reserved_inode.exit.thread, %if.end27.err_crit_edge, %if.end22.err_crit_edge, %if.end16.err_crit_edge, %if.then9.err_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %ext4_protect_reserved_inode.exit.err_crit_edge ], [ -22, %ext4_protect_reserved_inode.exit.thread ], [ %call29, %if.end27.err_crit_edge ], [ %call24, %if.end22.err_crit_edge ], [ %call19, %if.end16.err_crit_edge ], [ %call12, %if.then9.err_crit_edge ]
  %call.i143 = call ptr @rb_first_postorder(ptr noundef nonnull %call7.i.i) #9
  %tobool3.not22.i = icmp eq ptr %call.i143, null
  br i1 %tobool3.not22.i, label %err.release_system_zone.exit_crit_edge, label %err.land.rhs.i_crit_edge

err.land.rhs.i_crit_edge:                         ; preds = %err
  br label %land.rhs.i

err.release_system_zone.exit_crit_edge:           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_system_zone.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %err.land.rhs.i_crit_edge
  %entry1.023.i = phi ptr [ %call5.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i143, %err.land.rhs.i_crit_edge ]
  %call5.i = call ptr @rb_next_postorder(ptr noundef nonnull %entry1.023.i) #9
  %74 = load ptr, ptr @ext4_system_zone_cachep, align 4
  call void @kmem_cache_free(ptr noundef %74, ptr noundef nonnull %entry1.023.i) #9
  %tobool3.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool3.not.i, label %land.rhs.i.release_system_zone.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i.release_system_zone.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_system_zone.exit

release_system_zone.exit:                         ; preds = %land.rhs.i.release_system_zone.exit_crit_edge, %err.release_system_zone.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %release_system_zone.exit, %debug_print_tree.exit, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %release_system_zone.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %debug_print_tree.exit ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_has_super(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_system_zone(ptr noundef %system_blks, i64 noundef %start_blk, i32 noundef %count, i32 noundef %ino) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %system_blks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %system_blks, align 4
  %tobool.not111 = icmp eq ptr %1, null
  br i1 %tobool.not111, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %8, %if.end9.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %start_blk2 = getelementptr inbounds %struct.ext4_system_zone, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %start_blk2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %start_blk2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %start_blk)
  %cmp = icmp ugt i64 %4, %start_blk
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end9

if.else:                                          ; preds = %while.body
  %count4 = getelementptr inbounds %struct.ext4_system_zone, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %count4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count4, align 8
  %conv = zext i32 %6 to i64
  %add = add i64 %4, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start_blk)
  %cmp5.not = icmp ugt i64 %add, %start_blk
  br i1 %cmp5.not, label %if.else.cleanup_crit_edge, label %if.then7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then
  %n.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then7 ]
  %7 = ptrtoint ptr %n.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %n.1, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %n.0.lcssa = phi ptr [ %n.1, %while.cond.while.end_crit_edge ], [ %system_blks, %entry.while.end_crit_edge ]
  %9 = load ptr, ptr @ext4_system_zone_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #9
  %tobool10.not = icmp eq ptr %call, null
  br i1 %tobool10.not, label %while.end.cleanup_crit_edge, label %if.end12

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %while.end
  %start_blk13 = getelementptr inbounds %struct.ext4_system_zone, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %start_blk13 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %start_blk, ptr %start_blk13, align 8
  %count14 = getelementptr inbounds %struct.ext4_system_zone, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %count14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %count, ptr %count14, align 8
  %ino15 = getelementptr inbounds %struct.ext4_system_zone, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %ino15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ino, ptr %ino15, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %parent.0.lcssa, ptr %call, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rb_left.i, align 8
  %16 = ptrtoint ptr %n.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %n.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call, ptr noundef %system_blks) #9
  %call18 = tail call ptr @rb_prev(ptr noundef nonnull %call) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end12.if.end34_crit_edge, label %if.then20

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then20:                                        ; preds = %if.end12
  %start_blk.i = getelementptr inbounds %struct.ext4_system_zone, ptr %call18, i32 0, i32 1
  %17 = ptrtoint ptr %start_blk.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start_blk.i, align 8
  %count.i = getelementptr inbounds %struct.ext4_system_zone, ptr %call18, i32 0, i32 2
  %19 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count.i, align 8
  %conv.i = zext i32 %20 to i64
  %add.i = add i64 %18, %conv.i
  %21 = ptrtoint ptr %start_blk13 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start_blk13, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %22)
  %cmp.i = icmp eq i64 %add.i, %22
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then20.if.end34_crit_edge

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true.i:                                  ; preds = %if.then20
  %ino.i = getelementptr inbounds %struct.ext4_system_zone, ptr %call18, i32 0, i32 3
  %23 = ptrtoint ptr %ino.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ino.i, align 4
  %25 = ptrtoint ptr %ino15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ino15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp4.i = icmp eq i32 %24, %26
  br i1 %cmp4.i, label %if.then26, label %land.lhs.true.i.if.end34_crit_edge

land.lhs.true.i.if.end34_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then26:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %start_blk13 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %18, ptr %start_blk13, align 8
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count.i, align 8
  %30 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count14, align 8
  %add31 = add i32 %31, %29
  store i32 %add31, ptr %count14, align 8
  tail call void @rb_erase(ptr noundef nonnull %call18, ptr noundef %system_blks) #9
  %32 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %call18) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %land.lhs.true.i.if.end34_crit_edge, %if.then20.if.end34_crit_edge, %if.end12.if.end34_crit_edge
  %call35 = tail call ptr @rb_next(ptr noundef nonnull %call) #9
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  %33 = ptrtoint ptr %start_blk13 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %start_blk13, align 8
  %35 = ptrtoint ptr %count14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count14, align 8
  %conv.i94 = zext i32 %36 to i64
  %add.i95 = add i64 %34, %conv.i94
  %start_blk1.i96 = getelementptr inbounds %struct.ext4_system_zone, ptr %call35, i32 0, i32 1
  %37 = ptrtoint ptr %start_blk1.i96 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %start_blk1.i96, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i95, i64 %38)
  %cmp.i97 = icmp eq i64 %add.i95, %38
  br i1 %cmp.i97, label %land.lhs.true.i101, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i101:                               ; preds = %if.then37
  %39 = ptrtoint ptr %ino15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ino15, align 4
  %ino3.i99 = getelementptr inbounds %struct.ext4_system_zone, ptr %call35, i32 0, i32 3
  %41 = ptrtoint ptr %ino3.i99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ino3.i99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp4.i100 = icmp eq i32 %40, %42
  br i1 %cmp4.i100, label %if.then43, label %land.lhs.true.i101.cleanup_crit_edge

land.lhs.true.i101.cleanup_crit_edge:             ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #11
  %count44 = getelementptr inbounds %struct.ext4_system_zone, ptr %call35, i32 0, i32 2
  %43 = ptrtoint ptr %count44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count44, align 8
  %add46 = add i32 %44, %36
  %45 = ptrtoint ptr %count14 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add46, ptr %count14, align 8
  tail call void @rb_erase(ptr noundef nonnull %call35, ptr noundef %system_blks) #9
  %46 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %call35) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %land.lhs.true.i101.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.end.cleanup_crit_edge ], [ 0, %if.then43 ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %land.lhs.true.i101.cleanup_crit_edge ], [ -117, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_bg_num_gdb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ext4_get_group_desc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_block_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_bitmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ext4_inode_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_release_system_zone(ptr noundef %sb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 14, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @ext4_release_system_zone.__warned, align 1
  br i1 %.b54, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_release_system_zone.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 288, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_system_blks = getelementptr inbounds %struct.ext4_sb_info, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %s_system_blks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_system_blks, align 4
  store volatile ptr null, ptr %s_system_blks, align 4
  %tobool45.not = icmp eq ptr %3, null
  br i1 %tobool45.not, label %do.end.if.end47_crit_edge, label %if.then46

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.ext4_system_blocks, ptr %3, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @ext4_destroy_system_zone) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %do.end.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext4_destroy_system_zone(ptr noundef %rcu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -4
  %call.i = tail call ptr @rb_first_postorder(ptr noundef %add.ptr) #9
  %tobool3.not22.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not22.i, label %entry.release_system_zone.exit_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.release_system_zone.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_system_zone.exit

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %entry1.023.i = phi ptr [ %call5.i, %land.rhs.i.land.rhs.i_crit_edge ], [ %call.i, %entry.land.rhs.i_crit_edge ]
  %call5.i = tail call ptr @rb_next_postorder(ptr noundef nonnull %entry1.023.i) #9
  %0 = load ptr, ptr @ext4_system_zone_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %0, ptr noundef nonnull %entry1.023.i) #9
  %tobool3.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool3.not.i, label %land.rhs.i.release_system_zone.exit_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

land.rhs.i.release_system_zone.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_system_zone.exit

release_system_zone.exit:                         ; preds = %land.rhs.i.release_system_zone.exit_crit_edge, %entry.release_system_zone.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_inode_block_valid(ptr nocapture noundef readonly %inode, i64 noundef %start_blk, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es, align 4
  %s_first_data_block = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %s_first_data_block to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_first_data_block, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %conv = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %start_blk)
  %cmp.not = icmp ult i64 %conv, %start_blk
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv3 = zext i32 %count to i64
  %add = add i64 %conv3, %start_blk
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %start_blk)
  %cmp4 = icmp ult i64 %add, %start_blk
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %s_feature_incompat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 29
  %9 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_feature_incompat.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i71 = icmp sgt i32 %10, -1
  br i1 %tobool.not.i71, label %lor.lhs.false6.ext4_blocks_count.exit_crit_edge, label %cond.true.i

lor.lhs.false6.ext4_blocks_count.exit_crit_edge:  ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %ext4_blocks_count.exit

cond.true.i:                                      ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  %s_blocks_count_hi.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 50
  %11 = ptrtoint ptr %s_blocks_count_hi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocks_count_hi.i, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  %conv.i = zext i32 %13 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  br label %ext4_blocks_count.exit

ext4_blocks_count.exit:                           ; preds = %cond.true.i, %lor.lhs.false6.ext4_blocks_count.exit_crit_edge
  %cond.i = phi i64 [ %shl.i, %cond.true.i ], [ 0, %lor.lhs.false6.ext4_blocks_count.exit_crit_edge ]
  %s_blocks_count_lo.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %s_blocks_count_lo.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocks_count_lo.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %conv1.i = zext i32 %16 to i64
  %or.i = or i64 %cond.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %or.i)
  %cmp11 = icmp ugt i64 %add, %or.i
  br i1 %cmp11, label %ext4_blocks_count.exit.cleanup_crit_edge, label %if.end

ext4_blocks_count.exit.cleanup_crit_edge:         ; preds = %ext4_blocks_count.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ext4_blocks_count.exit
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %s_system_blks = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 59
  %21 = ptrtoint ptr %s_system_blks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %s_system_blks, align 4
  %call14 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end22_crit_edge

rcu_read_lock.exit.do.end22_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true.do.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b70 = load i1, ptr @ext4_inode_block_valid.__warned, align 1
  br i1 %.b70, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ext4_inode_block_valid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 320, ptr noundef nonnull @.str.3) #9
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true.do.end22_crit_edge, %rcu_read_lock.exit.do.end22_crit_edge
  %cmp24 = icmp eq ptr %22, null
  br i1 %cmp24, label %do.end22.out_rcu_crit_edge, label %while.cond.preheader

do.end22.out_rcu_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

while.cond.preheader:                             ; preds = %do.end22
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %n.082 = load ptr, ptr %22, align 4
  %tobool28.not83 = icmp eq ptr %n.082, null
  br i1 %tobool28.not83, label %while.cond.preheader.out_rcu_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_rcu_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub = add i64 %add, -1
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %while.body.lr.ph
  %n.084 = phi ptr [ %n.082, %while.body.lr.ph ], [ %n.0, %if.end47.while.body_crit_edge ]
  %start_blk32 = getelementptr inbounds %struct.ext4_system_zone, ptr %n.084, i32 0, i32 1
  %24 = ptrtoint ptr %start_blk32 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %start_blk32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %25)
  %cmp33 = icmp ult i64 %sub, %25
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.084, i32 0, i32 2
  br label %if.end47

if.else:                                          ; preds = %while.body
  %count37 = getelementptr inbounds %struct.ext4_system_zone, ptr %n.084, i32 0, i32 2
  %26 = ptrtoint ptr %count37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count37, align 8
  %conv38 = zext i32 %27 to i64
  %add39 = add i64 %25, %conv38
  call void @__sanitizer_cov_trace_cmp8(i64 %add39, i64 %start_blk)
  %cmp40.not = icmp ugt i64 %add39, %start_blk
  br i1 %cmp40.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.084, i32 0, i32 1
  br label %if.end47

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ino = getelementptr inbounds %struct.ext4_system_zone, ptr %n.084, i32 0, i32 3
  %28 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ino, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp44 = icmp eq i32 %29, %31
  %conv45 = zext i1 %cmp44 to i32
  br label %out_rcu

if.end47:                                         ; preds = %if.then42, %if.then35
  %n.1.in = phi ptr [ %rb_left, %if.then35 ], [ %rb_right, %if.then42 ]
  %32 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool28.not = icmp eq ptr %n.0, null
  br i1 %tobool28.not, label %if.end47.out_rcu_crit_edge, label %if.end47.while.body_crit_edge

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end47.out_rcu_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

out_rcu:                                          ; preds = %if.end47.out_rcu_crit_edge, %if.else43, %while.cond.preheader.out_rcu_crit_edge, %do.end22.out_rcu_crit_edge
  %ret.0 = phi i32 [ 1, %do.end22.out_rcu_crit_edge ], [ %conv45, %if.else43 ], [ 1, %while.cond.preheader.out_rcu_crit_edge ], [ 1, %if.end47.out_rcu_crit_edge ]
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i72, label %out_rcu.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

out_rcu.rcu_read_unlock.exit_crit_edge:           ; preds = %out_rcu
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %out_rcu
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %out_rcu.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !57
  %33 = tail call i32 @llvm.read_register.i32(metadata !42) #9
  %and.i.i.i.i.i79 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %ext4_blocks_count.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ 0, %ext4_blocks_count.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_check_blockref(ptr noundef %function, i32 noundef %line, ptr noundef %inode, ptr noundef readonly %p, i32 noundef %max) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext4_sb_info, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_es.i, align 4
  %s_feature_compat.i = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %s_feature_compat.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_feature_compat.i, align 4
  %and.i = and i32 %7, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %s_journal_inum = getelementptr inbounds %struct.ext4_super_block, ptr %5, i32 0, i32 39
  %10 = ptrtoint ptr %s_journal_inum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_journal_inum, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %12)
  %cmp = icmp eq i32 %9, %12
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i32, ptr %p, i32 %max
  %cmp322 = icmp ugt ptr %add.ptr, %p
  br i1 %cmp322, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end.while.body_crit_edge
  %bref.023 = phi ptr [ %incdec.ptr, %if.end12.while.body_crit_edge ], [ %p, %if.end.while.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %bref.023, i32 1
  %13 = ptrtoint ptr %bref.023 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bref.023, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %while.body.if.end12_crit_edge, label %land.lhs.true4

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true4:                                   ; preds = %while.body
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %conv = zext i32 %15 to i64
  %call5 = tail call i32 @ext4_inode_block_valid(ptr noundef %inode, i64 noundef %conv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then10, label %land.lhs.true4.if.end12_crit_edge, !prof !58

land.lhs.true4.if.end12_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %inode, ptr noundef %function, i32 noundef %line, i64 noundef %conv, i32 noundef 0, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true4.if.end12_crit_edge, %while.body.if.end12_crit_edge
  %cmp3 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp3, label %if.end12.while.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -117, %if.then10 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ext4_error_inode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ext4_iget(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/block_validity.c", i32 34, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext4/block_validity.c", i32 226, i32 3}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../fs/ext4/block_validity.c", i32 287, i32 16}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../fs/ext4/block_validity.c", i32 320, i32 16}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext4/block_validity.c", i32 356, i32 4}
!12 = !{ptr @ext4_system_zone_cachep, !13, !"ext4_system_zone_cachep", i1 false, i1 false}
!13 = !{!"../fs/ext4/block_validity.c", i32 30, i32 27}
!14 = !{ptr @__func__.ext4_protect_reserved_inode, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext4/block_validity.c", i32 160, i32 10}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext4/block_validity.c", i32 179, i32 6}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ext4/block_validity.c", i32 132, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @debug_print_tree._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @debug_print_tree._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../fs/ext4/block_validity.c", i32 134, i32 16}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ext4/block_validity.c", i32 138, i32 3}
!27 = !{ptr @debug_print_tree._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @debug_print_tree._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext4/block_validity.c", i32 144, i32 2}
!33 = !{ptr @debug_print_tree._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @debug_print_tree._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2155649211}
!53 = !{i64 2155686348}
!54 = !{i64 2149495954}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.peeled.count", i32 1}
!57 = !{i64 2149496220}
!58 = !{!"branch_weights", i32 1, i32 2000}
