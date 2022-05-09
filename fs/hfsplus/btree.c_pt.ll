; ModuleID = '/llk/IR_all_yes/fs/hfsplus/btree.c_pt.bc'
source_filename = "../fs/hfsplus/btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.hfs_bnode_desc = type <{ i32, i32, i8, i8, i16, i16 }>

@clumptbl = internal constant { [45 x i16], [38 x i8] } { [45 x i16] [i16 4, i16 4, i16 4, i16 6, i16 6, i16 4, i16 8, i16 8, i16 4, i16 11, i16 11, i16 5, i16 64, i16 32, i16 5, i16 84, i16 49, i16 6, i16 111, i16 74, i16 7, i16 147, i16 111, i16 8, i16 194, i16 169, i16 9, i16 256, i16 256, i16 11, i16 294, i16 294, i16 14, i16 338, i16 338, i16 16, i16 388, i16 388, i16 20, i16 446, i16 446, i16 25, i16 512, i16 512, i16 32], [38 x i8] zeroinitializer }, align 32
@hfsplus_btree_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tree->tree_lock\00", [47 x i8] zeroinitializer }, align 32
@hfsplus_btree_open.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tree->hash_lock\00", [47 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013hfsplus: invalid btree extent records (0 size)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfsplus_btree_open\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/hfsplus/btree.c\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr = internal global ptr @hfsplus_btree_open._entry, section ".printk_index", align 4
@hfsplus_btree_open._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013hfsplus: invalid extent max_key_len %d\0A\00", [54 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.8 = internal global ptr @hfsplus_btree_open._entry.6, section ".printk_index", align 4
@hfsplus_btree_open._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfsplus: invalid extent btree flag\0A\00", [58 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.11 = internal global ptr @hfsplus_btree_open._entry.9, section ".printk_index", align 4
@hfsplus_btree_open._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013hfsplus: invalid catalog max_key_len %d\0A\00", [53 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.14 = internal global ptr @hfsplus_btree_open._entry.12, section ".printk_index", align 4
@hfsplus_btree_open._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hfsplus: invalid catalog btree flag\0A\00", [57 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.17 = internal global ptr @hfsplus_btree_open._entry.15, section ".printk_index", align 4
@hfsplus_btree_open._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hfsplus: invalid attributes max_key_len %d\0A\00", [50 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.20 = internal global ptr @hfsplus_btree_open._entry.18, section ".printk_index", align 4
@hfsplus_btree_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfsplus: unknown B*Tree requested\0A\00", [59 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.23 = internal global ptr @hfsplus_btree_open._entry.21, section ".printk_index", align 4
@hfsplus_btree_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013hfsplus: invalid btree flag\0A\00", [33 x i8] zeroinitializer }, align 32
@hfsplus_btree_open._entry_ptr.26 = internal global ptr @hfsplus_btree_open._entry.24, section ".printk_index", align 4
@hfsplus_aops = external dso_local constant %struct.address_space_operations, align 4
@hfsplus_btree_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012hfsplus: node %d:%d still has %d user(s)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hfsplus_btree_close\00", [44 x i8] zeroinitializer }, align 32
@hfsplus_btree_close._entry_ptr = internal global ptr @hfsplus_btree_close._entry, section ".printk_index", align 4
@hfsplus_bmap_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\012hfsplus: unable to free bnode %u. bmap not found!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hfsplus_bmap_free\00", [46 x i8] zeroinitializer }, align 32
@hfsplus_bmap_free._entry_ptr = internal global ptr @hfsplus_bmap_free._entry, section ".printk_index", align 4
@hfsplus_bmap_free._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.5, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012hfsplus: invalid bmap found! (%u,%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@hfsplus_bmap_free._entry_ptr.33 = internal global ptr @hfsplus_bmap_free._entry.31, section ".printk_index", align 4
@hfsplus_bmap_free._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.5, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012hfsplus: trying to free free bnode %u(%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@hfsplus_bmap_free._entry_ptr.36 = internal global ptr @hfsplus_bmap_free._entry.34, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"clumptbl\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 25, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 146, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 147, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 156, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 183, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 188, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 196, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 201, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 215, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 222, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 227, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 270, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 471, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 483, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private constant [22 x i8] c"../fs/hfsplus/btree.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 498, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 44, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 717, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @hfsplus_bmap_free._entry, ptr @hfsplus_bmap_free._entry.31, ptr @hfsplus_bmap_free._entry.34, ptr @hfsplus_bmap_free._entry_ptr, ptr @hfsplus_bmap_free._entry_ptr.33, ptr @hfsplus_bmap_free._entry_ptr.36, ptr @hfsplus_btree_close._entry, ptr @hfsplus_btree_close._entry_ptr, ptr @hfsplus_btree_open._entry, ptr @hfsplus_btree_open._entry.12, ptr @hfsplus_btree_open._entry.15, ptr @hfsplus_btree_open._entry.18, ptr @hfsplus_btree_open._entry.21, ptr @hfsplus_btree_open._entry.24, ptr @hfsplus_btree_open._entry.6, ptr @hfsplus_btree_open._entry.9, ptr @hfsplus_btree_open._entry_ptr, ptr @hfsplus_btree_open._entry_ptr.11, ptr @hfsplus_btree_open._entry_ptr.14, ptr @hfsplus_btree_open._entry_ptr.17, ptr @hfsplus_btree_open._entry_ptr.20, ptr @hfsplus_btree_open._entry_ptr.23, ptr @hfsplus_btree_open._entry_ptr.26, ptr @hfsplus_btree_open._entry_ptr.8, ptr @clumptbl, ptr @hfsplus_btree_open.__key, ptr @.str, ptr @hfsplus_btree_open.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clumptbl to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_btree_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_bmap_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_bmap_free._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_bmap_free._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_calc_btree_clump_size(i32 noundef %block_size, i32 noundef %node_size, i64 noundef %sectors, i32 noundef %file_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %file_id)
  %switch.selectcmp = icmp eq i32 %file_id, 4
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %file_id)
  %switch.selectcmp38 = icmp eq i32 %file_id, 8
  %switch.select39 = select i1 %switch.selectcmp38, i32 0, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %sectors)
  %cmp2 = icmp ult i64 %sectors, 2097152
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sectors.tr = trunc i64 %sectors to i32
  %conv = shl nuw nsw i32 %sectors.tr, 2
  %mul = shl i32 %node_size, 3
  %0 = tail call i32 @llvm.umax.i32(i32 %conv, i32 %mul)
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %sectors)
  %tobool.not40.not = icmp ult i64 %sectors, 4194304
  br i1 %tobool.not40.not, label %if.else.for.end_crit_edge, label %for.inc.preheader

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.preheader:                                ; preds = %if.else
  %shr = lshr i64 %sectors, 22
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.preheader
  %i.042 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 0, %for.inc.preheader ]
  %sectors.addr.041 = phi i64 [ %shr9, %for.inc.for.inc_crit_edge ], [ %shr, %for.inc.preheader ]
  %inc = add nuw nsw i32 %i.042, 1
  %shr9 = lshr i64 %sectors.addr.041, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sectors.addr.041)
  %tobool.not = icmp ugt i64 %sectors.addr.041, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.042)
  %cmp7 = icmp ult i32 %i.042, 13
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %for.inc.for.inc_crit_edge, label %for.end.loopexit

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = mul nuw nsw i32 %inc, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.else.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.else.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %add = add i32 %i.0.lcssa, %switch.select39
  %arrayidx = getelementptr [45 x i16], ptr @clumptbl, i32 0, i32 %add
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv1136 = zext i16 %2 to i32
  %mul13 = shl i32 %conv1136, 20
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.then
  %clump_size.0 = phi i32 [ %mul13, %for.end ], [ %0, %if.then ]
  %3 = tail call i32 @llvm.umax.i32(i32 %node_size, i32 %block_size)
  %4 = urem i32 %clump_size.0, %3
  %mul15 = sub i32 %clump_size.0, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %clump_size.0, i32 %4)
  %cmp16 = icmp eq i32 %clump_size.0, %4
  %spec.select37 = select i1 %cmp16, i32 %3, i32 %mul15
  ret i32 %spec.select37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_btree_open(ptr noundef %sb, i32 noundef %id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1228) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %tree_lock, ptr noundef nonnull @.str, ptr noundef nonnull @hfsplus_btree_open.__key) #9
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %hash_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hfsplus_btree_open.__key.1, i16 noundef signext 3) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sb, ptr %call7.i.i, align 8
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %cnid, align 4
  %call6 = tail call ptr @hfsplus_iget(ptr noundef %sb, i32 noundef %id) #9
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body.free_tree_crit_edge, label %if.end9

do.body.free_tree_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tree

if.end9:                                          ; preds = %do.body
  %inode10 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %inode10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %inode10, align 4
  %first_blocks = getelementptr i8, ptr %call6, i32 -340
  %4 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %free_inode

if.end19:                                         ; preds = %if.end9
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call6, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %cmp.i199 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.end19.free_inode_crit_edge, label %if.end24

if.end19.free_inode_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_inode

if.end24:                                         ; preds = %if.end19
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #9
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end24.if.then.i_crit_edge [
    i32 2, label %if.end24.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end24.if.else.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end24.if.then.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end24.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end24.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 14
  %root = getelementptr i8, ptr %addr.0.i, i32 16
  %12 = ptrtoint ptr %root to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %root, align 1
  %root26 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %root26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %root26, align 8
  %leaf_count = getelementptr i8, ptr %addr.0.i, i32 20
  %15 = ptrtoint ptr %leaf_count to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %leaf_count, align 1
  %leaf_count27 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %leaf_count27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %leaf_count27, align 4
  %leaf_head = getelementptr i8, ptr %addr.0.i, i32 24
  %18 = ptrtoint ptr %leaf_head to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %leaf_head, align 1
  %leaf_head28 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %leaf_head28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %leaf_head28, align 8
  %leaf_tail = getelementptr i8, ptr %addr.0.i, i32 28
  %21 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %leaf_tail, align 1
  %leaf_tail29 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %leaf_tail29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %leaf_tail29, align 4
  %node_count = getelementptr i8, ptr %addr.0.i, i32 36
  %24 = ptrtoint ptr %node_count to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %node_count, align 1
  %node_count30 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %node_count30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %node_count30, align 8
  %free_nodes = getelementptr i8, ptr %addr.0.i, i32 40
  %27 = ptrtoint ptr %free_nodes to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %free_nodes, align 1
  %free_nodes31 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %free_nodes31 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %free_nodes31, align 4
  %attributes = getelementptr i8, ptr %addr.0.i, i32 52
  %30 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %attributes, align 1
  %attributes32 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 10
  %32 = ptrtoint ptr %attributes32 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %attributes32, align 8
  %node_size = getelementptr i8, ptr %addr.0.i, i32 32
  %33 = ptrtoint ptr %node_size to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %node_size, align 1
  %conv = zext i16 %34 to i32
  %node_size33 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %node_size33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %node_size33, align 4
  %max_key_len = getelementptr i8, ptr %addr.0.i, i32 34
  %36 = ptrtoint ptr %max_key_len to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %max_key_len, align 1
  %conv34 = zext i16 %37 to i32
  %max_key_len35 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 13
  %38 = ptrtoint ptr %max_key_len35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv34, ptr %max_key_len35, align 4
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %add.ptr, align 1
  %conv36 = zext i16 %40 to i32
  %depth37 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 14
  %41 = ptrtoint ptr %depth37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv36, ptr %depth37, align 8
  %42 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %id, label %do.end106 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb57
    i32 8, label %sw.bb91
  ]

sw.bb:                                            ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %37)
  %cmp.not = icmp eq i16 %37, 10
  br i1 %cmp.not, label %if.end47, label %do.end43

do.end43:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv34) #13
  br label %fail_page

if.end47:                                         ; preds = %sw.bb
  %and = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end56, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  br label %fail_page

if.end56:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %keycmp = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %keycmp to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hfsplus_ext_cmp_key, ptr %keycmp, align 8
  br label %sw.epilog

sw.bb57:                                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 516, i16 %37)
  %cmp59.not = icmp eq i16 %37, 516
  br i1 %cmp59.not, label %if.end68, label %do.end64

do.end64:                                         ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv34) #13
  br label %fail_page

if.end68:                                         ; preds = %sw.bb57
  %and70 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %fail_page

if.end78:                                         ; preds = %if.end68
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i, align 16
  %flags = getelementptr inbounds %struct.hfsplus_sb_info, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags, align 4
  %48 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool81.not = icmp eq i32 %48, 0
  br i1 %tobool81.not, label %if.end78.if.else_crit_edge, label %land.lhs.true

if.end78.if.else_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end78
  %key_type = getelementptr i8, ptr %addr.0.i, i32 51
  %49 = ptrtoint ptr %key_type to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %key_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -68, i8 %50)
  %cmp83 = icmp eq i8 %50, -68
  br i1 %cmp83, label %if.then85, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then85:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %keycmp86 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %keycmp86 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @hfsplus_cat_bin_cmp_key, ptr %keycmp86, align 8
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end78.if.else_crit_edge
  %keycmp87 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %keycmp87 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @hfsplus_cat_case_cmp_key, ptr %keycmp87, align 8
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #9
  br label %sw.epilog

sw.bb91:                                          ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 266, i16 %37)
  %cmp93.not = icmp eq i16 %37, 266
  br i1 %cmp93.not, label %if.end102, label %do.end98

do.end98:                                         ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv34) #13
  br label %fail_page

if.end102:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  %keycmp103 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %keycmp103 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @hfsplus_attr_bin_cmp_key, ptr %keycmp103, align 8
  br label %sw.epilog

do.end106:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %fail_page

sw.epilog:                                        ; preds = %if.end102, %if.else, %if.then85, %if.end56
  %54 = ptrtoint ptr %attributes32 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %attributes32, align 8
  %and110 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.end115, label %if.end118

do.end115:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  br label %fail_page

if.end118:                                        ; preds = %sw.epilog
  %56 = ptrtoint ptr %node_size33 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %node_size33, align 4
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57) #9, !range !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %if.end122, label %if.end118.fail_page_crit_edge

if.end118.fail_page_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_page

if.end122:                                        ; preds = %if.end118
  %60 = ptrtoint ptr %node_count30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %node_count30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool124.not = icmp eq i32 %61, 0
  br i1 %tobool124.not, label %if.end122.fail_page_crit_edge, label %if.end126

if.end122.fail_page_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_page

if.end126:                                        ; preds = %if.end122
  %62 = tail call i32 @llvm.cttz.i32(i32 %57, i1 true), !range !73
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 12
  %63 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %node_size_shift, align 8
  %sub128 = add i32 %57, 4095
  %shr = lshr i32 %sub128, 12
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 16
  %64 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shr, ptr %pages_per_bnode, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call.i, align 4
  %shr.i.i201 = lshr i32 %66, 30
  %67 = zext i32 %shr.i.i201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %shr.i.i201, label %if.end126.kunmap.exit_crit_edge [
    i32 2, label %if.end126.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i203
  ]

if.end126.if.end.i_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end126.kunmap.exit_crit_edge:                  ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i203:                         ; preds = %if.end126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %68 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp2.i.not.i202 = icmp eq i32 %68, 2
  br i1 %cmp2.i.not.i202, label %is_highmem_idx.exit.i203.if.end.i_crit_edge, label %is_highmem_idx.exit.i203.kunmap.exit_crit_edge

is_highmem_idx.exit.i203.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i203.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i203.if.end.i_crit_edge, %if.end126.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %call.i) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i203.kunmap.exit_crit_edge, %if.end126.kunmap.exit_crit_edge
  %69 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %and.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !74

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %71, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %72, %if.end.i.i ]
  %73 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %73, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %74 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !75

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %73, ptr noundef nonnull @.str.38) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %76, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hfsplus_btree_open, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !80

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %73, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %73) #9
  br label %cleanup

fail_page:                                        ; preds = %if.end122.fail_page_crit_edge, %if.end118.fail_page_crit_edge, %do.end115, %do.end106, %do.end98, %do.end75, %do.end64, %do.end53, %do.end43
  %77 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i204 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i204)
  %tobool.not.i.i205 = icmp eq i32 %and.i.i204, 0
  br i1 %tobool.not.i.i205, label %if.end.i.i208, label %if.then.i.i207, !prof !74

if.then.i.i207:                                   ; preds = %fail_page
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i206 = add i32 %79, -1
  br label %_compound_head.exit.i213

if.end.i.i208:                                    ; preds = %fail_page
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i213

_compound_head.exit.i213:                         ; preds = %if.end.i.i208, %if.then.i.i207
  %retval.0.i.i209 = phi i32 [ %sub.i.i206, %if.then.i.i207 ], [ %80, %if.end.i.i208 ]
  %81 = inttoptr i32 %retval.0.i.i209 to ptr
  %_refcount.i.i.i.i.i210 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 3
  %call.i.i.i.i.i.i.i211 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i210, i32 noundef 4) #9
  %82 = ptrtoint ptr %_refcount.i.i.i.i.i210 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %_refcount.i.i.i.i.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i.i.i.i212 = icmp eq i32 %83, 0
  br i1 %cmp.i.i.i.i212, label %if.then.i.i.i.i214, label %do.end5.i.i.i.i218, !prof !75

if.then.i.i.i.i214:                               ; preds = %_compound_head.exit.i213
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %81, ptr noundef nonnull @.str.38) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !76
  unreachable

do.end5.i.i.i.i218:                               ; preds = %_compound_head.exit.i213
  %call.i.i.i10.i.i.i.i215 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i210, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i210, i32 1, i32 3, i32 1) #9
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i210, ptr %_refcount.i.i.i.i.i210, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i210) #9, !srcloc !78
  %asmresult.i.i.i.i.i.i.i.i.i.i216 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i216)
  %cmp.i.i.i.i.i.i.i217 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i216, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hfsplus_btree_open, %if.then.i.i.i.i.i220)) #9
          to label %folio_put_testzero.exit.i.i221 [label %if.then.i.i.i.i.i220], !srcloc !80

if.then.i.i.i.i.i220:                             ; preds = %do.end5.i.i.i.i218
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i219 = zext i1 %cmp.i.i.i.i.i.i.i217 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %81, i32 noundef -1, i32 noundef %conv.i.i.i.i.i219) #9
  br label %folio_put_testzero.exit.i.i221

folio_put_testzero.exit.i.i221:                   ; preds = %if.then.i.i.i.i.i220, %do.end5.i.i.i.i218
  br i1 %cmp.i.i.i.i.i.i.i217, label %if.then.i4.i222, label %folio_put_testzero.exit.i.i221.free_inode_crit_edge

folio_put_testzero.exit.i.i221.free_inode_crit_edge: ; preds = %folio_put_testzero.exit.i.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_inode

if.then.i4.i222:                                  ; preds = %folio_put_testzero.exit.i.i221
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %81) #9
  br label %free_inode

free_inode:                                       ; preds = %if.then.i4.i222, %folio_put_testzero.exit.i.i221.free_inode_crit_edge, %if.end19.free_inode_crit_edge, %do.end17
  %85 = ptrtoint ptr %inode10 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %inode10, align 4
  %i_mapping130 = getelementptr inbounds %struct.inode, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %i_mapping130 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i_mapping130, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @hfsplus_aops, ptr %a_ops, align 4
  %90 = load ptr, ptr %inode10, align 4
  tail call void @iput(ptr noundef %90) #9
  br label %free_tree

free_tree:                                        ; preds = %free_inode, %do.body.free_tree_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_tree, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_tree ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_iget(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.else_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call ptr @page_address(ptr noundef %page) #9
  br label %if.end

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call6 = tail call ptr @kmap_high(ptr noundef %page) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addr.0 = phi ptr [ %call6, %if.else ], [ %call5, %if.then ]
  ret ptr %addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_ext_cmp_key(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_cat_bin_cmp_key(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_cat_case_cmp_key(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_attr_bin_cmp_key(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunmap(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr.i, label %entry.return_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end_crit_edge, label %is_highmem_idx.exit.return_crit_edge

is_highmem_idx.exit.return_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #9
  br label %return

return:                                           ; preds = %if.end, %is_highmem_idx.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_btree_close(ptr noundef %tree) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tree, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %node_hash_cnt = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 19
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %for.cond.preheader
  %i.027 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %i.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not26 = icmp eq ptr %1, null
  br i1 %tobool1.not26, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %19, %if.end10.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %next_hash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next_hash, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx, align 4
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %2, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %while.body.if.end10_crit_edge, label %do.end

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cnid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cnid, align 4
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %this, align 4
  %call.i.i25 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %14 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refcnt, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %while.body.if.end10_crit_edge
  tail call void @hfsplus_bnode_free(ptr noundef nonnull %2) #9
  %16 = ptrtoint ptr %node_hash_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_hash_cnt, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %node_hash_cnt, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %19, null
  br i1 %tobool1.not, label %if.end10.for.inc_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %20 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode, align 4
  tail call void @iput(ptr noundef %21) #9
  tail call void @kfree(ptr noundef nonnull %tree) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_btree_write(ptr noundef %tree) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hfsplus_bnode_find(ptr noundef %tree, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %page2 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %page2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page2, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr.i.i, label %if.end.if.then.i_crit_edge [
    i32 2, label %if.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %1) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %1) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 14
  %root = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 4
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %root, align 4
  %root4 = getelementptr i8, ptr %addr.0.i, i32 16
  %8 = ptrtoint ptr %root4 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %root4, align 1
  %leaf_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 5
  %9 = ptrtoint ptr %leaf_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %leaf_count, align 4
  %leaf_count5 = getelementptr i8, ptr %addr.0.i, i32 20
  %11 = ptrtoint ptr %leaf_count5 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %leaf_count5, align 1
  %leaf_head = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 6
  %12 = ptrtoint ptr %leaf_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %leaf_head, align 4
  %leaf_head6 = getelementptr i8, ptr %addr.0.i, i32 24
  %14 = ptrtoint ptr %leaf_head6 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %leaf_head6, align 1
  %leaf_tail = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 7
  %15 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %leaf_tail, align 4
  %leaf_tail7 = getelementptr i8, ptr %addr.0.i, i32 28
  %17 = ptrtoint ptr %leaf_tail7 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %leaf_tail7, align 1
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %18 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %node_count, align 4
  %node_count8 = getelementptr i8, ptr %addr.0.i, i32 36
  %20 = ptrtoint ptr %node_count8 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %node_count8, align 1
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 9
  %21 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %free_nodes, align 4
  %free_nodes9 = getelementptr i8, ptr %addr.0.i, i32 40
  %23 = ptrtoint ptr %free_nodes9 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %free_nodes9, align 1
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 10
  %24 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attributes, align 4
  %attributes10 = getelementptr i8, ptr %addr.0.i, i32 52
  %26 = ptrtoint ptr %attributes10 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %attributes10, align 1
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 14
  %27 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %depth, align 4
  %conv = trunc i32 %28 to i16
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %conv, ptr %add.ptr, align 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %shr.i.i34 = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %shr.i.i34, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i36
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i36:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i35 = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i35, label %is_highmem_idx.exit.i36.if.end.i_crit_edge, label %is_highmem_idx.exit.i36.kunmap.exit_crit_edge

is_highmem_idx.exit.i36.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i36.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i36.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %1) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i36.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %call12 = tail call zeroext i1 @set_page_dirty(ptr noundef %1) #9
  tail call void @hfsplus_bnode_put(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %kunmap.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_bnode_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_bmap_reserve(ptr noundef %tree, i32 noundef %rsvd_nodes) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rsvd_nodes)
  %cmp = icmp slt i32 %rsvd_nodes, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 9
  %2 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_nodes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rsvd_nodes)
  %cmp242 = icmp ult i32 %3, %rsvd_nodes
  br i1 %cmp242, label %while.body.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %alloc_blocks = getelementptr i8, ptr %1, i32 -332
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %phys_size = getelementptr i8, ptr %1, i32 -8
  %fs_blocks = getelementptr i8, ptr %1, i32 -80
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 12
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %while.body.lr.ph
  %call3 = tail call zeroext i1 @hfs_bnode_need_zeroout(ptr noundef %tree) #9
  %call4 = tail call i32 @hfsplus_file_extend(ptr noundef %1, i1 noundef zeroext %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %4 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alloc_blocks, align 4
  %conv = zext i32 %5 to i64
  %6 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %alloc_blksz_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_blksz_shift, align 8
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 %conv, %sh_prom
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shl, ptr %i_size, align 8
  %13 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl, ptr %phys_size, align 8
  %14 = load ptr, ptr %tree, align 4
  %s_fs_info.i41 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i41, align 16
  %fs_shift = getelementptr inbounds %struct.hfsplus_sb_info, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %fs_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs_shift, align 8
  %shl11 = shl i32 %5, %18
  %conv12 = zext i32 %shl11 to i64
  %19 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv12, ptr %fs_blocks, align 8
  tail call void @inode_set_bytes(ptr noundef %1, i64 noundef %shl) #9
  %20 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size, align 8
  %22 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_size_shift, align 4
  %sh_prom15 = zext i32 %23 to i64
  %shr = ashr i64 %21, %sh_prom15
  %conv16 = trunc i64 %shr to i32
  %24 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_count, align 4
  %26 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %free_nodes, align 4
  %sub = sub i32 %27, %25
  %add = add i32 %sub, %conv16
  store i32 %add, ptr %free_nodes, align 4
  store i32 %conv16, ptr %node_count, align 4
  %cmp2 = icmp ult i32 %add, %rsvd_nodes
  br i1 %cmp2, label %if.end6.while.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %call4, %while.body.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfsplus_file_extend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hfs_bnode_need_zeroout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_bmap_alloc(ptr noundef %tree) local_unnamed_addr #2 align 64 {
entry:
  %off16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off16) #9
  %0 = ptrtoint ptr %off16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off16, align 2, !annotation !81
  %call = tail call i32 @hfsplus_bmap_reserve(ptr noundef %tree, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @hfsplus_bnode_find(ptr noundef %tree, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %call2, i16 noundef zeroext 2, ptr noundef nonnull %off16) #9
  %2 = ptrtoint ptr %off16 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %off16, align 2
  %conv = zext i16 %3 to i32
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call2, i32 0, i32 12
  %4 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_offset, align 4
  %add = add i32 %5, %conv
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %call2, i32 0, i32 13
  %shr = lshr i32 %add, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr.i.i, label %if.end5.if.then.i_crit_edge [
    i32 2, label %if.end5.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end5.if.else.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %7) #9
  br label %for.cond.preheader

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end5.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %7) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else.i, %if.then.i
  %data.0.ph = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %for.cond.preheader
  %node.0 = phi ptr [ %next_node.0, %if.end47 ], [ %call2, %for.cond.preheader ]
  %pagep.0 = phi ptr [ %add.ptr55, %if.end47 ], [ %add.ptr, %for.cond.preheader ]
  %idx.0 = phi i32 [ %idx.1.lcssa, %if.end47 ], [ 0, %for.cond.preheader ]
  %off.0.in = phi i32 [ %add51, %if.end47 ], [ %add, %for.cond.preheader ]
  %len.0 = phi i16 [ %call48, %if.end47 ], [ %call6, %for.cond.preheader ]
  %data.0 = phi ptr [ %call56, %if.end47 ], [ %data.0.ph, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.0)
  %tobool8.not147 = icmp eq i16 %len.0, 0
  br i1 %tobool8.not147, label %for.cond.while.end_crit_edge, label %while.body.preheader

for.cond.while.end_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %for.cond
  %off.0 = and i32 %off.0.in, 4095
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.preheader
  %data.1155 = phi ptr [ %data.2, %if.end37.while.body_crit_edge ], [ %data.0, %while.body.preheader ]
  %len.1154 = phi i16 [ %dec39, %if.end37.while.body_crit_edge ], [ %len.0, %while.body.preheader ]
  %off.1152 = phi i32 [ %off.2, %if.end37.while.body_crit_edge ], [ %off.0, %while.body.preheader ]
  %idx.1150 = phi i32 [ %add38, %if.end37.while.body_crit_edge ], [ %idx.0, %while.body.preheader ]
  %pagep.1148 = phi ptr [ %pagep.2, %if.end37.while.body_crit_edge ], [ %pagep.0, %while.body.preheader ]
  %arrayidx = getelementptr i8, ptr %data.1155, i32 %off.1152
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.not = icmp eq i8 %13, -1
  br i1 %cmp.not, label %while.body.if.end31_crit_edge, label %for.body.preheader

while.body.if.end31_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.preheader:                               ; preds = %while.body
  %and17 = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.body.preheader.if.then19_crit_edge, label %for.inc

for.body.preheader.if.then19_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %for.inc.6.if.then19_crit_edge, %for.inc.5.if.then19_crit_edge, %for.inc.4.if.then19_crit_edge, %for.inc.3.if.then19_crit_edge, %for.inc.2.if.then19_crit_edge, %for.inc.1.if.then19_crit_edge, %for.inc.if.then19_crit_edge, %for.body.preheader.if.then19_crit_edge
  %i.0146.lcssa = phi i32 [ 0, %for.body.preheader.if.then19_crit_edge ], [ 1, %for.inc.if.then19_crit_edge ], [ 2, %for.inc.1.if.then19_crit_edge ], [ 3, %for.inc.2.if.then19_crit_edge ], [ 4, %for.inc.3.if.then19_crit_edge ], [ 5, %for.inc.4.if.then19_crit_edge ], [ 6, %for.inc.5.if.then19_crit_edge ], [ 7, %for.inc.6.if.then19_crit_edge ]
  %m.0145.lcssa = phi i8 [ -128, %for.body.preheader.if.then19_crit_edge ], [ 64, %for.inc.if.then19_crit_edge ], [ 32, %for.inc.1.if.then19_crit_edge ], [ 16, %for.inc.2.if.then19_crit_edge ], [ 8, %for.inc.3.if.then19_crit_edge ], [ 4, %for.inc.4.if.then19_crit_edge ], [ 2, %for.inc.5.if.then19_crit_edge ], [ 1, %for.inc.6.if.then19_crit_edge ]
  %arrayidx.le = getelementptr i8, ptr %data.1155, i32 %off.1152
  %add20 = add i32 %i.0146.lcssa, %idx.1150
  %conv24 = or i8 %13, %m.0145.lcssa
  %14 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %arrayidx.le, align 1
  %15 = ptrtoint ptr %pagep.1148 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pagep.1148, align 4
  %call25 = call zeroext i1 @set_page_dirty(ptr noundef %16) #9
  %17 = ptrtoint ptr %pagep.1148 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pagep.1148, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shr.i.i115 = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr.i.i115, label %if.then19.kunmap.exit_crit_edge [
    i32 2, label %if.then19.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i117
  ]

if.then19.if.end.i_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then19.kunmap.exit_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i117:                         ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i116 = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i116, label %is_highmem_idx.exit.i117.if.end.i_crit_edge, label %is_highmem_idx.exit.i117.kunmap.exit_crit_edge

is_highmem_idx.exit.i117.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i117.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i117.if.end.i_crit_edge, %if.then19.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %18) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i117.kunmap.exit_crit_edge, %if.then19.kunmap.exit_crit_edge
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 9
  %23 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %free_nodes, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %free_nodes, align 4
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %inode, align 4
  call void @__mark_inode_dirty(ptr noundef %26, i32 noundef 7) #9
  call void @hfsplus_bnode_put(ptr noundef %node.0) #9
  %call26 = call ptr @hfsplus_bnode_create(ptr noundef %tree, i32 noundef %add20) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %and17.1 = and i32 %conv9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.1)
  %tobool18.not.1 = icmp eq i32 %and17.1, 0
  br i1 %tobool18.not.1, label %for.inc.if.then19_crit_edge, label %for.inc.1

for.inc.if.then19_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc.1:                                        ; preds = %for.inc
  %and17.2 = and i32 %conv9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.2)
  %tobool18.not.2 = icmp eq i32 %and17.2, 0
  br i1 %tobool18.not.2, label %for.inc.1.if.then19_crit_edge, label %for.inc.2

for.inc.1.if.then19_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc.2:                                        ; preds = %for.inc.1
  %and17.3 = and i32 %conv9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.3)
  %tobool18.not.3 = icmp eq i32 %and17.3, 0
  br i1 %tobool18.not.3, label %for.inc.2.if.then19_crit_edge, label %for.inc.3

for.inc.2.if.then19_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc.3:                                        ; preds = %for.inc.2
  %and17.4 = and i32 %conv9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.4)
  %tobool18.not.4 = icmp eq i32 %and17.4, 0
  br i1 %tobool18.not.4, label %for.inc.3.if.then19_crit_edge, label %for.inc.4

for.inc.3.if.then19_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc.4:                                        ; preds = %for.inc.3
  %and17.5 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.5)
  %tobool18.not.5 = icmp eq i32 %and17.5, 0
  br i1 %tobool18.not.5, label %for.inc.4.if.then19_crit_edge, label %for.inc.5

for.inc.4.if.then19_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc.5:                                        ; preds = %for.inc.4
  %and17.6 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.6)
  %tobool18.not.6 = icmp eq i32 %and17.6, 0
  br i1 %tobool18.not.6, label %for.inc.5.if.then19_crit_edge, label %for.inc.6

for.inc.5.if.then19_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

for.inc.6:                                        ; preds = %for.inc.5
  %and17.7 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.7)
  %tobool18.not.7 = icmp eq i32 %and17.7, 0
  br i1 %tobool18.not.7, label %for.inc.6.if.then19_crit_edge, label %for.inc.6.if.end31_crit_edge

for.inc.6.if.end31_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.inc.6.if.then19_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.end31:                                         ; preds = %for.inc.6.if.end31_crit_edge, %while.body.if.end31_crit_edge
  %inc32 = add i32 %off.1152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc32)
  %cmp33 = icmp ugt i32 %inc32, 4095
  br i1 %cmp33, label %if.then35, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  %27 = ptrtoint ptr %pagep.1148 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pagep.1148, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %shr.i.i118 = lshr i32 %30, 30
  %31 = zext i32 %shr.i.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %shr.i.i118, label %if.then35.kunmap.exit122_crit_edge [
    i32 2, label %if.then35.if.end.i121_crit_edge
    i32 3, label %is_highmem_idx.exit.i120
  ]

if.then35.if.end.i121_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i121

if.then35.kunmap.exit122_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit122

is_highmem_idx.exit.i120:                         ; preds = %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %32 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp2.i.not.i119 = icmp eq i32 %32, 2
  br i1 %cmp2.i.not.i119, label %is_highmem_idx.exit.i120.if.end.i121_crit_edge, label %is_highmem_idx.exit.i120.kunmap.exit122_crit_edge

is_highmem_idx.exit.i120.kunmap.exit122_crit_edge: ; preds = %is_highmem_idx.exit.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit122

is_highmem_idx.exit.i120.if.end.i121_crit_edge:   ; preds = %is_highmem_idx.exit.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i121

if.end.i121:                                      ; preds = %is_highmem_idx.exit.i120.if.end.i121_crit_edge, %if.then35.if.end.i121_crit_edge
  call void @kunmap_high(ptr noundef %28) #9
  br label %kunmap.exit122

kunmap.exit122:                                   ; preds = %if.end.i121, %is_highmem_idx.exit.i120.kunmap.exit122_crit_edge, %if.then35.kunmap.exit122_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %pagep.1148, i32 1
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #9
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %shr.i.i123 = lshr i32 %36, 30
  %37 = zext i32 %shr.i.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %shr.i.i123, label %kunmap.exit122.if.then.i127_crit_edge [
    i32 2, label %kunmap.exit122.if.else.i129_crit_edge
    i32 3, label %is_highmem_idx.exit.i125
  ]

kunmap.exit122.if.else.i129_crit_edge:            ; preds = %kunmap.exit122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i129

kunmap.exit122.if.then.i127_crit_edge:            ; preds = %kunmap.exit122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i127

is_highmem_idx.exit.i125:                         ; preds = %kunmap.exit122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %38 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i.not.i124 = icmp eq i32 %38, 2
  br i1 %cmp2.i.not.i124, label %is_highmem_idx.exit.i125.if.else.i129_crit_edge, label %is_highmem_idx.exit.i125.if.then.i127_crit_edge

is_highmem_idx.exit.i125.if.then.i127_crit_edge:  ; preds = %is_highmem_idx.exit.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i127

is_highmem_idx.exit.i125.if.else.i129_crit_edge:  ; preds = %is_highmem_idx.exit.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i129

if.then.i127:                                     ; preds = %is_highmem_idx.exit.i125.if.then.i127_crit_edge, %kunmap.exit122.if.then.i127_crit_edge
  %call5.i126 = call ptr @page_address(ptr noundef %34) #9
  br label %if.end37

if.else.i129:                                     ; preds = %is_highmem_idx.exit.i125.if.else.i129_crit_edge, %kunmap.exit122.if.else.i129_crit_edge
  %call6.i128 = call ptr @kmap_high(ptr noundef %34) #9
  br label %if.end37

if.end37:                                         ; preds = %if.else.i129, %if.then.i127, %if.end31.if.end37_crit_edge
  %pagep.2 = phi ptr [ %pagep.1148, %if.end31.if.end37_crit_edge ], [ %incdec.ptr, %if.then.i127 ], [ %incdec.ptr, %if.else.i129 ]
  %off.2 = phi i32 [ %inc32, %if.end31.if.end37_crit_edge ], [ 0, %if.then.i127 ], [ 0, %if.else.i129 ]
  %data.2 = phi ptr [ %data.1155, %if.end31.if.end37_crit_edge ], [ %call5.i126, %if.then.i127 ], [ %call6.i128, %if.else.i129 ]
  %add38 = add i32 %idx.1150, 8
  %dec39 = add i16 %len.1154, -1
  %tobool8.not = icmp eq i16 %dec39, 0
  br i1 %tobool8.not, label %if.end37.while.end_crit_edge, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %for.cond.while.end_crit_edge
  %pagep.1.lcssa = phi ptr [ %pagep.0, %for.cond.while.end_crit_edge ], [ %pagep.2, %if.end37.while.end_crit_edge ]
  %idx.1.lcssa = phi i32 [ %idx.0, %for.cond.while.end_crit_edge ], [ %add38, %if.end37.while.end_crit_edge ]
  %39 = ptrtoint ptr %pagep.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pagep.1.lcssa, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %shr.i.i133 = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i133, label %while.end.kunmap.exit137_crit_edge [
    i32 2, label %while.end.if.end.i136_crit_edge
    i32 3, label %is_highmem_idx.exit.i135
  ]

while.end.if.end.i136_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i136

while.end.kunmap.exit137_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit137

is_highmem_idx.exit.i135:                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i134 = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i134, label %is_highmem_idx.exit.i135.if.end.i136_crit_edge, label %is_highmem_idx.exit.i135.kunmap.exit137_crit_edge

is_highmem_idx.exit.i135.kunmap.exit137_crit_edge: ; preds = %is_highmem_idx.exit.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit137

is_highmem_idx.exit.i135.if.end.i136_crit_edge:   ; preds = %is_highmem_idx.exit.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i136

if.end.i136:                                      ; preds = %is_highmem_idx.exit.i135.if.end.i136_crit_edge, %while.end.if.end.i136_crit_edge
  call void @kunmap_high(ptr noundef %40) #9
  br label %kunmap.exit137

kunmap.exit137:                                   ; preds = %if.end.i136, %is_highmem_idx.exit.i135.kunmap.exit137_crit_edge, %while.end.kunmap.exit137_crit_edge
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 3
  %45 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool40.not = icmp eq i32 %46, 0
  br i1 %tobool40.not, label %do.end, label %if.else

do.end:                                           ; preds = %kunmap.exit137
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call fastcc ptr @hfs_bmap_new_bmap(ptr noundef %node.0, i32 noundef %idx.1.lcssa)
  br label %if.end44

if.else:                                          ; preds = %kunmap.exit137
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = call ptr @hfsplus_bnode_find(ptr noundef %tree, i32 noundef %46) #9
  br label %if.end44

if.end44:                                         ; preds = %if.else, %do.end
  %next_node.0 = phi ptr [ %call43, %if.else ], [ %call42, %do.end ]
  call void @hfsplus_bnode_put(ptr noundef %node.0) #9
  %cmp.i138 = icmp ugt ptr %next_node.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.end44.cleanup_crit_edge, label %if.end47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %next_node.0, i16 noundef zeroext 0, ptr noundef nonnull %off16) #9
  %47 = ptrtoint ptr %off16 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %off16, align 2
  %conv49 = zext i16 %48 to i32
  %page_offset50 = getelementptr inbounds %struct.hfs_bnode, ptr %next_node.0, i32 0, i32 12
  %49 = ptrtoint ptr %page_offset50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %page_offset50, align 4
  %add51 = add i32 %50, %conv49
  %page52 = getelementptr inbounds %struct.hfs_bnode, ptr %next_node.0, i32 0, i32 13
  %shr54 = lshr i32 %add51, 12
  %add.ptr55 = getelementptr ptr, ptr %page52, i32 %shr54
  %51 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr55, align 4
  %call56 = call fastcc ptr @kmap(ptr noundef %52)
  br label %for.cond

cleanup:                                          ; preds = %if.end44.cleanup_crit_edge, %kunmap.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %call26, %kunmap.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ %next_node.0, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off16) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfsplus_brec_lenoff(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfsplus_bnode_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hfs_bmap_new_bmap(ptr noundef %prev, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  %desc = alloca %struct.hfs_bnode_desc, align 4
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %desc) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #9
  %call = tail call ptr @hfsplus_bnode_create(ptr noundef %1, i32 noundef %idx) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 5
  %3 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 4
  %4 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 3
  %5 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 2
  %6 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 1
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_nodes, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %free_nodes, align 4
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %prev, i32 0, i32 3
  %9 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %idx, ptr %next, align 4
  %10 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %idx, ptr %cnid, align 4
  call void @hfsplus_bnode_write(ptr noundef %prev, ptr noundef nonnull %cnid, i32 noundef 0, i32 noundef 4) #9
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %type, align 2
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %num_recs to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %num_recs, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_size, align 4
  call void @hfsplus_bnode_clear(ptr noundef %call, i32 noundef 0, i32 noundef %14) #9
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %desc, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %6, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %5, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %4, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %3, align 2
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %2, align 4
  call void @hfsplus_bnode_write(ptr noundef %call, ptr noundef nonnull %desc, i32 noundef 0, i32 noundef 14) #9
  call void @hfsplus_bnode_write_u16(ptr noundef %call, i32 noundef 14, i16 noundef zeroext -32768) #9
  %21 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node_size, align 4
  %sub = add i32 %22, -2
  call void @hfsplus_bnode_write_u16(ptr noundef %call, i32 noundef %sub, i16 noundef zeroext 14) #9
  %23 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node_size, align 4
  %sub9 = add i32 %24, -4
  %25 = trunc i32 %24 to i16
  %conv = add i16 %25, -6
  call void @hfsplus_bnode_write_u16(ptr noundef %call, i32 noundef %sub9, i16 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %desc) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bmap_free(ptr nocapture noundef readonly %node) local_unnamed_addr #2 align 64 {
entry:
  %off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #9
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off, align 2, !annotation !81
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 2
  %1 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %this, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body5, label %do.end12, !prof !75

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/btree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 457, 0\0A.popsection", ""() #9, !srcloc !82
  unreachable

do.end12:                                         ; preds = %entry
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %call = tail call ptr @hfsplus_bnode_find(ptr noundef %4, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12.cleanup81_crit_edge, label %if.end17

do.end12.cleanup81_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end17:                                         ; preds = %do.end12
  %call18 = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %call, i16 noundef zeroext 2, ptr noundef nonnull %off) #9
  %conv140 = zext i16 %call18 to i32
  %mul141 = shl nuw nsw i32 %conv140, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %mul141)
  %cmp.not142 = icmp ult i32 %2, %mul141
  br i1 %cmp.not142, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end17.while.body_crit_edge
  %mul145 = phi i32 [ %mul, %cleanup.while.body_crit_edge ], [ %mul141, %if.end17.while.body_crit_edge ]
  %node.addr.0144 = phi ptr [ %call30, %cleanup.while.body_crit_edge ], [ %call, %if.end17.while.body_crit_edge ]
  %nidx.0143 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %2, %if.end17.while.body_crit_edge ]
  %sub = sub i32 %nidx.0143, %mul145
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0144, i32 0, i32 3
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool22.not = icmp eq i32 %6, 0
  br i1 %tobool22.not, label %do.end26, label %if.end29

do.end26:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %this27 = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0144, i32 0, i32 2
  %7 = ptrtoint ptr %this27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this27, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %8) #13
  call void @hfsplus_bnode_put(ptr noundef %node.addr.0144) #9
  br label %cleanup81

if.end29:                                         ; preds = %while.body
  call void @hfsplus_bnode_put(ptr noundef %node.addr.0144) #9
  %call30 = call ptr @hfsplus_bnode_find(ptr noundef %4, i32 noundef %6) #9
  %cmp.i126 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.end29.cleanup81_crit_edge, label %if.end33

if.end29.cleanup81_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end33:                                         ; preds = %if.end29
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %call30, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp35.not = icmp eq i8 %10, 2
  br i1 %cmp35.not, label %cleanup, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %conv34 = zext i8 %10 to i32
  %this42 = getelementptr inbounds %struct.hfs_bnode, ptr %call30, i32 0, i32 2
  %11 = ptrtoint ptr %this42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this42, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %12, i32 noundef %conv34) #13
  call void @hfsplus_bnode_put(ptr noundef %call30) #9
  br label %cleanup81

cleanup:                                          ; preds = %if.end33
  %call47 = call zeroext i16 @hfsplus_brec_lenoff(ptr noundef %call30, i16 noundef zeroext 0, ptr noundef nonnull %off) #9
  %conv = zext i16 %call47 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %cmp.not = icmp ult i32 %sub, %mul
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end17.while.end_crit_edge
  %nidx.0.lcssa = phi i32 [ %2, %if.end17.while.end_crit_edge ], [ %sub, %cleanup.while.end_crit_edge ]
  %node.addr.0.lcssa = phi ptr [ %call, %if.end17.while.end_crit_edge ], [ %call30, %cleanup.while.end_crit_edge ]
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 12
  %13 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_offset, align 4
  %div125 = lshr i32 %nidx.0.lcssa, 3
  %add = add i32 %14, %div125
  %15 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %off, align 2
  %17 = trunc i32 %add to i16
  %conv50 = add i16 %16, %17
  store i16 %conv50, ptr %off, align 2
  %18 = lshr i16 %conv50, 12
  %19 = zext i16 %18 to i32
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 13, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 44) #9
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %shr.i.i = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i.i, label %while.end.if.then.i_crit_edge [
    i32 2, label %while.end.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.end.if.else.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

while.end.if.then.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.i = icmp eq i32 %25, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %while.end.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %21) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %while.end.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %21) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %26 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %off, align 2
  %28 = and i16 %27, 4095
  store i16 %28, ptr %off, align 2
  %neg = and i32 %nidx.0.lcssa, 7
  %and56 = xor i32 %neg, 7
  %shl = shl nuw i32 1, %and56
  %idxprom = zext i16 %28 to i32
  %arrayidx58 = getelementptr i8, ptr %addr.0.i, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %30 to i32
  %and61 = and i32 %shl, %conv59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.end66, label %if.end72

do.end66:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %this68 = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 2
  %31 = ptrtoint ptr %this68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %this68, align 4
  %type69 = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 6
  %33 = ptrtoint ptr %type69 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type69, align 2
  %conv70 = zext i8 %34 to i32
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %32, i32 noundef %conv70) #13
  call fastcc void @kunmap(ptr noundef %21)
  call void @hfsplus_bnode_put(ptr noundef %node.addr.0.lcssa) #9
  br label %cleanup81

if.end72:                                         ; preds = %kmap.exit
  %35 = trunc i32 %shl to i8
  %36 = xor i8 %35, -1
  %conv77 = and i8 %30, %36
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv77, ptr %arrayidx58, align 1
  %call80 = call zeroext i1 @set_page_dirty(ptr noundef %21) #9
  call void @__might_sleep(ptr noundef nonnull @.str.37, i32 noundef 55) #9
  %38 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %21, align 4
  %shr.i.i127 = lshr i32 %39, 30
  %40 = zext i32 %shr.i.i127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr.i.i127, label %if.end72.kunmap.exit_crit_edge [
    i32 2, label %if.end72.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i129
  ]

if.end72.if.end.i_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end72.kunmap.exit_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i129:                         ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %41 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp2.i.not.i128 = icmp eq i32 %41, 2
  br i1 %cmp2.i.not.i128, label %is_highmem_idx.exit.i129.if.end.i_crit_edge, label %is_highmem_idx.exit.i129.kunmap.exit_crit_edge

is_highmem_idx.exit.i129.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i129.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i129.if.end.i_crit_edge, %if.end72.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %21) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i129.kunmap.exit_crit_edge, %if.end72.kunmap.exit_crit_edge
  call void @hfsplus_bnode_put(ptr noundef %node.addr.0.lcssa) #9
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %4, i32 0, i32 9
  %42 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %free_nodes, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %free_nodes, align 4
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %4, i32 0, i32 1
  %44 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inode, align 4
  call void @__mark_inode_dirty(ptr noundef %45, i32 noundef 7) #9
  br label %cleanup81

cleanup81:                                        ; preds = %kunmap.exit, %do.end66, %do.end40, %if.end29.cleanup81_crit_edge, %do.end26, %do.end12.cleanup81_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bnode_write_u16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @hfsplus_btree_open.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/btree.c", i32 146, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hfsplus_btree_open.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/hfsplus/btree.c", i32 147, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/btree.c", i32 156, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @hfsplus_btree_open._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @hfsplus_btree_open._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/hfsplus/btree.c", i32 183, i32 4}
!14 = !{ptr @hfsplus_btree_open._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hfsplus_btree_open._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/hfsplus/btree.c", i32 188, i32 4}
!18 = !{ptr @hfsplus_btree_open._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hfsplus_btree_open._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/hfsplus/btree.c", i32 196, i32 4}
!22 = !{ptr @hfsplus_btree_open._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hfsplus_btree_open._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/hfsplus/btree.c", i32 201, i32 4}
!26 = !{ptr @hfsplus_btree_open._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hfsplus_btree_open._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/hfsplus/btree.c", i32 215, i32 4}
!30 = !{ptr @hfsplus_btree_open._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hfsplus_btree_open._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hfsplus/btree.c", i32 222, i32 3}
!34 = !{ptr @hfsplus_btree_open._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @hfsplus_btree_open._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/hfsplus/btree.c", i32 227, i32 3}
!38 = !{ptr @hfsplus_btree_open._entry.24, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @hfsplus_btree_open._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.27, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/hfsplus/btree.c", i32 270, i32 5}
!42 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @hfsplus_btree_close._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @hfsplus_btree_close._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/hfsplus/btree.c", i32 471, i32 4}
!47 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hfsplus_bmap_free._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hfsplus_bmap_free._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/hfsplus/btree.c", i32 483, i32 4}
!52 = !{ptr @hfsplus_bmap_free._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hfsplus_bmap_free._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/hfsplus/btree.c", i32 498, i32 3}
!56 = !{ptr @hfsplus_bmap_free._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hfsplus_bmap_free._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @clumptbl, !59, !"clumptbl", i1 false, i1 false}
!59 = !{!"../fs/hfsplus/btree.c", i32 25, i32 14}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/mm.h", i32 717, i32 2}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i32 0, i32 33}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2153206056, i64 2153206539, i64 2153206093, i64 2153206149, i64 2153206183, i64 2153206207, i64 2153206248, i64 2153206269, i64 2153206297, i64 2153206331}
!77 = !{i64 2148679478}
!78 = !{i64 2148594187, i64 2148594219, i64 2148594248, i64 2148594282, i64 2148594313, i64 2148594336}
!79 = !{i64 2148679707}
!80 = !{i64 2148211728, i64 2148211733, i64 2148211746, i64 2148211790, i64 2148211824, i64 2148211845}
!81 = !{!"auto-init"}
!82 = !{i64 2154443276, i64 2154443759, i64 2154443313, i64 2154443369, i64 2154443403, i64 2154443427, i64 2154443468, i64 2154443489, i64 2154443517, i64 2154443551}
