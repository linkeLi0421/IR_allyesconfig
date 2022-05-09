; ModuleID = '/llk/IR_all_yes/fs/hfs/btree.c_pt.bc'
source_filename = "../fs/hfs/btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
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
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfs_mdb = type <{ i16, i32, i32, i16, i16, i16, i16, i16, i32, i32, i16, i32, i16, [28 x i8], i32, i16, i32, i32, i32, i16, i32, i32, [32 x i8], i16, i32, i32, [3 x %struct.hfs_extent], i32, [3 x %struct.hfs_extent] }>
%struct.hfs_extent = type { i16, i16 }
%struct.page = type { i32, %union.anon.7, %union.anon.58, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.hfs_bnode_desc = type <{ i32, i32, i8, i8, i16, i16 }>

@hfs_btree_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tree->tree_lock\00", [47 x i8] zeroinitializer }, align 32
@hfs_btree_open.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&tree->hash_lock\00", [47 x i8] zeroinitializer }, align 32
@hfs_btree_open.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&HFS_I(tree->inode)->extents_lock\00", [62 x i8] zeroinitializer }, align 32
@hfs_btree_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013hfs: invalid btree extent records\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfs_btree_open\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/hfs/btree.c\00", [17 x i8] zeroinitializer }, align 32
@hfs_btree_open._entry_ptr = internal global ptr @hfs_btree_open._entry, section ".printk_index", align 4
@hfs_btree_aops = external dso_local constant %struct.address_space_operations, align 4
@hfs_btree_open._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013hfs: invalid btree extent records (0 size)\0A\00", [50 x i8] zeroinitializer }, align 32
@hfs_btree_open._entry_ptr.10 = internal global ptr @hfs_btree_open._entry.8, section ".printk_index", align 4
@hfs_btree_open._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013hfs: invalid extent max_key_len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@hfs_btree_open._entry_ptr.13 = internal global ptr @hfs_btree_open._entry.11, section ".printk_index", align 4
@hfs_btree_open._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013hfs: invalid catalog max_key_len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@hfs_btree_open._entry_ptr.16 = internal global ptr @hfs_btree_open._entry.14, section ".printk_index", align 4
@hfs_aops = external dso_local constant %struct.address_space_operations, align 4
@hfs_btree_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013hfs: node %d:%d still has %d user(s)!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hfs_btree_close\00", [16 x i8] zeroinitializer }, align 32
@hfs_btree_close._entry_ptr = internal global ptr @hfs_btree_close._entry, section ".printk_index", align 4
@hfs_bmap_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017create new bmap node...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hfs_bmap_alloc\00", [17 x i8] zeroinitializer }, align 32
@hfs_bmap_alloc._entry_ptr = internal global ptr @hfs_bmap_alloc._entry, section ".printk_index", align 4
@hfs_bmap_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\012hfs: unable to free bnode %u. bmap not found!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hfs_bmap_free\00", [18 x i8] zeroinitializer }, align 32
@hfs_bmap_free._entry_ptr = internal global ptr @hfs_bmap_free._entry, section ".printk_index", align 4
@hfs_bmap_free._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.7, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012hfs: invalid bmap found! (%u,%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@hfs_bmap_free._entry_ptr.25 = internal global ptr @hfs_bmap_free._entry.23, section ".printk_index", align 4
@hfs_bmap_free._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.7, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\012hfs: trying to free free bnode %u(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@hfs_bmap_free._entry_ptr.28 = internal global ptr @hfs_bmap_free._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FIXME!!!\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 31, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 32, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 45, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 52, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 64, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 103, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 110, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 149, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 303, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 343, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 354, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 368, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 44, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 717, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [18 x i8] c"../fs/hfs/btree.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 200, i32 9 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @hfs_bmap_alloc._entry, ptr @hfs_bmap_alloc._entry_ptr, ptr @hfs_bmap_free._entry, ptr @hfs_bmap_free._entry.23, ptr @hfs_bmap_free._entry.26, ptr @hfs_bmap_free._entry_ptr, ptr @hfs_bmap_free._entry_ptr.25, ptr @hfs_bmap_free._entry_ptr.28, ptr @hfs_btree_close._entry, ptr @hfs_btree_close._entry_ptr, ptr @hfs_btree_open._entry, ptr @hfs_btree_open._entry.11, ptr @hfs_btree_open._entry.14, ptr @hfs_btree_open._entry.8, ptr @hfs_btree_open._entry_ptr, ptr @hfs_btree_open._entry_ptr.10, ptr @hfs_btree_open._entry_ptr.13, ptr @hfs_btree_open._entry_ptr.16, ptr @hfs_btree_open.__key, ptr @.str, ptr @hfs_btree_open.__key.1, ptr @.str.2, ptr @hfs_btree_open.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_open._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_btree_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bmap_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bmap_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bmap_free._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_bmap_free._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_btree_open(ptr noundef %sb, i32 noundef %id, ptr noundef %keycmp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1228) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup153_crit_edge, label %do.body

entry.cleanup153_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup153

do.body:                                          ; preds = %entry
  %tree_lock = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %tree_lock, ptr noundef nonnull @.str, ptr noundef nonnull @hfs_btree_open.__key) #9
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %hash_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hfs_btree_open.__key.1, i16 noundef signext 3) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sb, ptr %call7.i.i, align 8
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id, ptr %cnid, align 4
  %keycmp6 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %keycmp6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %keycmp, ptr %keycmp6, align 8
  %call7 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %id) #9
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %inode, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.body.free_tree_crit_edge, label %do.body12

do.body.free_tree_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_tree

do.body12:                                        ; preds = %do.body
  %i_state = getelementptr inbounds %struct.inode, ptr %call7, i32 0, i32 24
  %5 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_state, align 8
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %do.body19, label %do.end27, !prof !65

do.body19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/btree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #9, !srcloc !66
  unreachable

do.end27:                                         ; preds = %do.body12
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info, align 16
  %mdb28 = getelementptr inbounds %struct.hfs_sb_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %mdb28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdb28, align 4
  %flags = getelementptr i8, ptr %call7, i32 -252
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %12 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inode, align 4
  %extents_lock = getelementptr i8, ptr %13, i32 -148
  tail call void @__mutex_init(ptr noundef %extents_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @hfs_btree_open.__key.3) #9
  %14 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %do.body79 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb58
  ]

sw.bb:                                            ; preds = %do.end27
  %15 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inode, align 4
  %drXTExtRec = getelementptr inbounds %struct.hfs_mdb, ptr %10, i32 0, i32 26
  %drXTFlSize = getelementptr inbounds %struct.hfs_mdb, ptr %10, i32 0, i32 25
  %17 = ptrtoint ptr %drXTFlSize to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %drXTFlSize, align 1
  %drXTClpSiz = getelementptr inbounds %struct.hfs_mdb, ptr %10, i32 0, i32 17
  %19 = ptrtoint ptr %drXTClpSiz to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %drXTClpSiz, align 1
  tail call void @hfs_inode_read_fork(ptr noundef %16, ptr noundef %drXTExtRec, i32 noundef %18, i32 noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %inode, align 4
  %alloc_blocks = getelementptr i8, ptr %22, i32 -56
  %23 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %alloc_blocks, align 8
  %first_blocks = getelementptr i8, ptr %22, i32 -28
  %25 = ptrtoint ptr %first_blocks to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %first_blocks, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp = icmp ugt i16 %24, %26
  br i1 %cmp, label %do.end52, label %sw.bb.cleanup.cont_crit_edge

sw.bb.cleanup.cont_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

do.end52:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %27 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %inode, align 4
  tail call void @unlock_new_inode(ptr noundef %28) #9
  br label %free_inode

sw.bb58:                                          ; preds = %do.end27
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %inode, align 4
  %drCTExtRec = getelementptr inbounds %struct.hfs_mdb, ptr %10, i32 0, i32 28
  %drCTFlSize = getelementptr inbounds %struct.hfs_mdb, ptr %10, i32 0, i32 27
  %31 = ptrtoint ptr %drCTFlSize to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %drCTFlSize, align 1
  %drCTClpSiz = getelementptr inbounds %struct.hfs_mdb, ptr %10, i32 0, i32 18
  %33 = ptrtoint ptr %drCTClpSiz to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %drCTClpSiz, align 1
  tail call void @hfs_inode_read_fork(ptr noundef %30, ptr noundef %drCTExtRec, i32 noundef %32, i32 noundef %32, i32 noundef %34) #9
  %35 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %inode, align 4
  %first_blocks66 = getelementptr i8, ptr %36, i32 -28
  %37 = ptrtoint ptr %first_blocks66 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %first_blocks66, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool67.not = icmp eq i16 %38, 0
  br i1 %tobool67.not, label %do.end71, label %sw.bb58.cleanup.cont_crit_edge

sw.bb58.cleanup.cont_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.cont

do.end71:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  %39 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %inode, align 4
  tail call void @unlock_new_inode(ptr noundef %40) #9
  br label %free_inode

do.body79:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/btree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #9, !srcloc !67
  unreachable

cleanup.cont:                                     ; preds = %sw.bb58.cleanup.cont_crit_edge, %sw.bb.cleanup.cont_crit_edge
  %.sink = phi ptr [ %22, %sw.bb.cleanup.cont_crit_edge ], [ %36, %sw.bb58.cleanup.cont_crit_edge ]
  %i_mapping77 = getelementptr inbounds %struct.inode, ptr %.sink, i32 0, i32 9
  %41 = ptrtoint ptr %i_mapping77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_mapping77, align 8
  %a_ops78 = getelementptr inbounds %struct.address_space, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %a_ops78 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @hfs_btree_aops, ptr %a_ops78, align 4
  %44 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inode, align 4
  tail call void @unlock_new_inode(ptr noundef %45) #9
  %46 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %inode, align 4
  %i_mapping87 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %i_mapping87 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_mapping87, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %49, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.cont.free_inode_crit_edge, label %if.end91

cleanup.cont.free_inode_crit_edge:                ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_inode

if.end91:                                         ; preds = %cleanup.cont
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #9
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %51, 30
  %52 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i, label %if.end91.if.then.i_crit_edge [
    i32 2, label %if.end91.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end91.if.else.i_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.end91.if.then.i_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %53 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i.not.i = icmp eq i32 %53, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end91.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end91.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr93 = getelementptr i8, ptr %addr.0.i, i32 14
  %root = getelementptr i8, ptr %addr.0.i, i32 16
  %54 = ptrtoint ptr %root to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %root, align 1
  %root94 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %root94 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %root94, align 8
  %leaf_count = getelementptr i8, ptr %addr.0.i, i32 20
  %57 = ptrtoint ptr %leaf_count to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %leaf_count, align 1
  %leaf_count95 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %leaf_count95 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %leaf_count95, align 4
  %leaf_head = getelementptr i8, ptr %addr.0.i, i32 24
  %60 = ptrtoint ptr %leaf_head to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %leaf_head, align 1
  %leaf_head96 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %leaf_head96 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %leaf_head96, align 8
  %leaf_tail = getelementptr i8, ptr %addr.0.i, i32 28
  %63 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %leaf_tail, align 1
  %leaf_tail97 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %leaf_tail97 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %leaf_tail97, align 4
  %node_count = getelementptr i8, ptr %addr.0.i, i32 36
  %66 = ptrtoint ptr %node_count to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %node_count, align 1
  %node_count98 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 8
  %68 = ptrtoint ptr %node_count98 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %node_count98, align 8
  %free_nodes = getelementptr i8, ptr %addr.0.i, i32 40
  %69 = ptrtoint ptr %free_nodes to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %free_nodes, align 1
  %free_nodes99 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 9
  %71 = ptrtoint ptr %free_nodes99 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %free_nodes99, align 4
  %attributes = getelementptr i8, ptr %addr.0.i, i32 52
  %72 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %attributes, align 1
  %attributes100 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 10
  %74 = ptrtoint ptr %attributes100 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %attributes100, align 8
  %node_size = getelementptr i8, ptr %addr.0.i, i32 32
  %75 = ptrtoint ptr %node_size to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %node_size, align 1
  %conv101 = zext i16 %76 to i32
  %node_size102 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 11
  %77 = ptrtoint ptr %node_size102 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv101, ptr %node_size102, align 4
  %max_key_len = getelementptr i8, ptr %addr.0.i, i32 34
  %78 = ptrtoint ptr %max_key_len to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %max_key_len, align 1
  %conv103 = zext i16 %79 to i32
  %max_key_len104 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 13
  %80 = ptrtoint ptr %max_key_len104 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv103, ptr %max_key_len104, align 4
  %81 = ptrtoint ptr %add.ptr93 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %add.ptr93, align 1
  %conv105 = zext i16 %82 to i32
  %depth106 = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 14
  %83 = ptrtoint ptr %depth106 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv105, ptr %depth106, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp.not.i = icmp eq i16 %76, 0
  %84 = tail call i32 @llvm.ctpop.i32(i32 %conv101) #9, !range !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp1.i = icmp ugt i32 %84, 1
  %or.cond.not = or i1 %cmp.not.i, %cmp1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool112.not = icmp eq i32 %67, 0
  %or.cond230 = select i1 %or.cond.not, i1 true, i1 %tobool112.not
  br i1 %or.cond230, label %kmap.exit.fail_page_crit_edge, label %if.end114

kmap.exit.fail_page_crit_edge:                    ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_page

if.end114:                                        ; preds = %kmap.exit
  %85 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %id, label %do.body140 [
    i32 3, label %sw.bb115
    i32 4, label %sw.bb127
  ]

sw.bb115:                                         ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %79)
  %cmp117.not = icmp eq i16 %79, 7
  br i1 %cmp117.not, label %sw.bb115.sw.epilog146_crit_edge, label %sw.bb115.fail_page.sink.split_crit_edge

sw.bb115.fail_page.sink.split_crit_edge:          ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_page.sink.split

sw.bb115.sw.epilog146_crit_edge:                  ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog146

sw.bb127:                                         ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp2(i16 37, i16 %79)
  %cmp129.not = icmp eq i16 %79, 37
  br i1 %cmp129.not, label %sw.bb127.sw.epilog146_crit_edge, label %sw.bb127.fail_page.sink.split_crit_edge

sw.bb127.fail_page.sink.split_crit_edge:          ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail_page.sink.split

sw.bb127.sw.epilog146_crit_edge:                  ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog146

do.body140:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfs/btree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

sw.epilog146:                                     ; preds = %sw.bb127.sw.epilog146_crit_edge, %sw.bb115.sw.epilog146_crit_edge
  %86 = tail call i32 @llvm.cttz.i32(i32 %conv101, i1 true), !range !70
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 12
  %87 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %node_size_shift, align 8
  %sub148 = add nuw nsw i32 %conv101, 4095
  %shr = lshr i32 %sub148, 12
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %call7.i.i, i32 0, i32 16
  %88 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %shr, ptr %pages_per_bnode, align 8
  tail call fastcc void @kunmap(ptr noundef %call.i)
  tail call fastcc void @put_page(ptr noundef %call.i)
  br label %cleanup153

fail_page.sink.split:                             ; preds = %sw.bb127.fail_page.sink.split_crit_edge, %sw.bb115.fail_page.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %sw.bb115.fail_page.sink.split_crit_edge ], [ @.str.15, %sw.bb127.fail_page.sink.split_crit_edge ]
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, i32 noundef %conv103) #13
  br label %fail_page

fail_page:                                        ; preds = %fail_page.sink.split, %kmap.exit.fail_page_crit_edge
  %89 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %and.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !71

if.then.i.i:                                      ; preds = %fail_page
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %91, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %fail_page
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %92, %if.end.i.i ]
  %93 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %94 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.i.i = icmp eq i32 %95, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !65

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %93, ptr noundef nonnull @.str.30) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %96 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %96, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hfs_btree_open, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !76

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %93, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.free_inode_crit_edge

folio_put_testzero.exit.i.i.free_inode_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_inode

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %93) #9
  br label %free_inode

free_inode:                                       ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.free_inode_crit_edge, %cleanup.cont.free_inode_crit_edge, %do.end71, %do.end52
  %97 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %inode, align 4
  %i_mapping150 = getelementptr inbounds %struct.inode, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %i_mapping150 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_mapping150, align 8
  %a_ops151 = getelementptr inbounds %struct.address_space, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %a_ops151 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @hfs_aops, ptr %a_ops151, align 4
  %102 = load ptr, ptr %inode, align 4
  tail call void @iput(ptr noundef %102) #9
  br label %free_tree

free_tree:                                        ; preds = %free_inode, %do.body.free_tree_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup153

cleanup153:                                       ; preds = %free_tree, %sw.epilog146, %entry.cleanup153_crit_edge
  %retval.0 = phi ptr [ null, %free_tree ], [ %call7.i.i, %sw.epilog146 ], [ null, %entry.cleanup153_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_inode_read_fork(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunmap(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !71

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !65

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.30) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !74
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !76

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_btree_close(ptr noundef %tree) local_unnamed_addr #0 align 64 {
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
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %13, i32 noundef %15) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end, %while.body.if.end10_crit_edge
  tail call void @hfs_bnode_free(ptr noundef nonnull %2) #9
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
declare dso_local void @hfs_bnode_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_btree_write(ptr noundef %tree) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hfs_bnode_find(ptr noundef %tree, i32 noundef 0) #9
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
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
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
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %shr.i.i34 = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.37)
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
  tail call void @hfs_bnode_put(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_bnode_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfs_bmap_reserve(ptr nocapture noundef %tree, i32 noundef %rsvd_nodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inode1 = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %0 = ptrtoint ptr %inode1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inode1, align 4
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 9
  %2 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %free_nodes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rsvd_nodes)
  %cmp38 = icmp ult i32 %3, %rsvd_nodes
  br i1 %cmp38, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %alloc_blocks = getelementptr i8, ptr %1, i32 -56
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %phys_size = getelementptr i8, ptr %1, i32 -8
  %fs_blocks = getelementptr i8, ptr %1, i32 -48
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 12
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call = tail call i32 @hfs_extend_file(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %alloc_blocks to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %alloc_blocks, align 8
  %conv = zext i16 %5 to i64
  %6 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tree, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %alloc_blksz = getelementptr inbounds %struct.hfs_sb_info, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %alloc_blksz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_blksz, align 4
  %conv2 = zext i32 %11 to i64
  %mul = mul nuw nsw i64 %conv2, %conv
  %12 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %mul, ptr %i_size, align 8
  %13 = ptrtoint ptr %phys_size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul, ptr %phys_size, align 8
  %14 = load ptr, ptr %tree, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %16 to i64
  %shr = lshr i64 %mul, %sh_prom
  %17 = ptrtoint ptr %fs_blocks to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shr, ptr %fs_blocks, align 8
  tail call void @inode_set_bytes(ptr noundef %1, i64 noundef %mul) #9
  %18 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size, align 8
  %20 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %node_size_shift, align 4
  %sh_prom14 = zext i32 %21 to i64
  %shr15 = ashr i64 %19, %sh_prom14
  %conv16 = trunc i64 %shr15 to i32
  %22 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_count, align 4
  %24 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %free_nodes, align 4
  %sub = sub i32 %25, %23
  %add = add i32 %sub, %conv16
  store i32 %add, ptr %free_nodes, align 4
  store i32 %conv16, ptr %node_count, align 4
  %cmp = icmp ult i32 %add, %rsvd_nodes
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_extend_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfs_bmap_alloc(ptr noundef %tree) local_unnamed_addr #0 align 64 {
entry:
  %off16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off16) #9
  %0 = ptrtoint ptr %off16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off16, align 2, !annotation !77
  %inode1.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %1 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %inode1.i, align 4
  %free_nodes.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 9
  %3 = ptrtoint ptr %free_nodes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp38.i = icmp eq i32 %4, 0
  br i1 %cmp38.i, label %while.body.lr.ph.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

while.body.lr.ph.i:                               ; preds = %entry
  %alloc_blocks.i = getelementptr i8, ptr %2, i32 -56
  %i_size.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 14
  %phys_size.i = getelementptr i8, ptr %2, i32 -8
  %fs_blocks.i = getelementptr i8, ptr %2, i32 -48
  %node_size_shift.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 12
  %node_count.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call.i = tail call i32 @hfs_extend_file(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then

if.end.i:                                         ; preds = %while.body.i
  %5 = ptrtoint ptr %alloc_blocks.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %alloc_blocks.i, align 8
  %conv.i = zext i16 %6 to i64
  %7 = ptrtoint ptr %tree to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tree, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %alloc_blksz.i = getelementptr inbounds %struct.hfs_sb_info, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %alloc_blksz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alloc_blksz.i, align 4
  %conv2.i = zext i32 %12 to i64
  %mul.i = mul nuw nsw i64 %conv2.i, %conv.i
  %13 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul.i, ptr %i_size.i, align 8
  %14 = ptrtoint ptr %phys_size.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %mul.i, ptr %phys_size.i, align 8
  %15 = load ptr, ptr %tree, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %17 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %18 = ptrtoint ptr %fs_blocks.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shr.i, ptr %fs_blocks.i, align 8
  tail call void @inode_set_bytes(ptr noundef %2, i64 noundef %mul.i) #9
  %19 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_size.i, align 8
  %21 = ptrtoint ptr %node_size_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node_size_shift.i, align 4
  %sh_prom14.i = zext i32 %22 to i64
  %shr15.i = ashr i64 %20, %sh_prom14.i
  %conv16.i = trunc i64 %shr15.i to i32
  %23 = ptrtoint ptr %node_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node_count.i, align 4
  %25 = ptrtoint ptr %free_nodes.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %free_nodes.i, align 4
  %sub.i = sub i32 %26, %24
  %add.i = add i32 %sub.i, %conv16.i
  store i32 %add.i, ptr %free_nodes.i, align 4
  store i32 %conv16.i, ptr %node_count.i, align 4
  %cmp.i = icmp eq i32 %add.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.then:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call ptr @hfs_bnode_find(ptr noundef %tree, i32 noundef 0) #9
  %cmp.i116 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call zeroext i16 @hfs_brec_lenoff(ptr noundef %call2, i16 noundef zeroext 2, ptr noundef nonnull %off16) #9
  %28 = ptrtoint ptr %off16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %off16, align 2
  %conv = zext i16 %29 to i32
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call2, i32 0, i32 12
  %30 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %page_offset, align 4
  %add = add i32 %31, %conv
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %call2, i32 0, i32 13
  %shr = lshr i32 %add, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %shr.i.i = lshr i32 %35, 30
  %36 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.38)
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
  %37 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp2.i.not.i = icmp eq i32 %37, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %call5.i = call ptr @page_address(ptr noundef %33) #9
  br label %for.cond.preheader

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end5.if.else.i_crit_edge
  %call6.i = call ptr @kmap_high(ptr noundef %33) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else.i, %if.then.i
  %data.0.ph = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  br label %for.cond

for.cond:                                         ; preds = %if.end48, %for.cond.preheader
  %node.0 = phi ptr [ %next_node.0, %if.end48 ], [ %call2, %for.cond.preheader ]
  %pagep.0 = phi ptr [ %add.ptr56, %if.end48 ], [ %add.ptr, %for.cond.preheader ]
  %idx.0 = phi i32 [ %idx.1.lcssa, %if.end48 ], [ 0, %for.cond.preheader ]
  %off.0.in = phi i32 [ %add52, %if.end48 ], [ %add, %for.cond.preheader ]
  %len.0 = phi i16 [ %call49, %if.end48 ], [ %call6, %for.cond.preheader ]
  %data.0 = phi ptr [ %call57, %if.end48 ], [ %data.0.ph, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len.0)
  %tobool8.not149 = icmp eq i16 %len.0, 0
  br i1 %tobool8.not149, label %for.cond.while.end_crit_edge, label %while.body.preheader

for.cond.while.end_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %for.cond
  %off.0 = and i32 %off.0.in, 4095
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.preheader
  %data.1157 = phi ptr [ %data.2, %if.end37.while.body_crit_edge ], [ %data.0, %while.body.preheader ]
  %len.1156 = phi i16 [ %dec39, %if.end37.while.body_crit_edge ], [ %len.0, %while.body.preheader ]
  %off.1154 = phi i32 [ %off.2, %if.end37.while.body_crit_edge ], [ %off.0, %while.body.preheader ]
  %idx.1152 = phi i32 [ %add38, %if.end37.while.body_crit_edge ], [ %idx.0, %while.body.preheader ]
  %pagep.1150 = phi ptr [ %pagep.2, %if.end37.while.body_crit_edge ], [ %pagep.0, %while.body.preheader ]
  %arrayidx = getelementptr i8, ptr %data.1157, i32 %off.1154
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv9 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %cmp.not = icmp eq i8 %39, -1
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
  %i.0148.lcssa = phi i32 [ 0, %for.body.preheader.if.then19_crit_edge ], [ 1, %for.inc.if.then19_crit_edge ], [ 2, %for.inc.1.if.then19_crit_edge ], [ 3, %for.inc.2.if.then19_crit_edge ], [ 4, %for.inc.3.if.then19_crit_edge ], [ 5, %for.inc.4.if.then19_crit_edge ], [ 6, %for.inc.5.if.then19_crit_edge ], [ 7, %for.inc.6.if.then19_crit_edge ]
  %m.0147.lcssa = phi i8 [ -128, %for.body.preheader.if.then19_crit_edge ], [ 64, %for.inc.if.then19_crit_edge ], [ 32, %for.inc.1.if.then19_crit_edge ], [ 16, %for.inc.2.if.then19_crit_edge ], [ 8, %for.inc.3.if.then19_crit_edge ], [ 4, %for.inc.4.if.then19_crit_edge ], [ 2, %for.inc.5.if.then19_crit_edge ], [ 1, %for.inc.6.if.then19_crit_edge ]
  %arrayidx.le = getelementptr i8, ptr %data.1157, i32 %off.1154
  %add20 = add i32 %i.0148.lcssa, %idx.1152
  %conv24 = or i8 %39, %m.0147.lcssa
  %40 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv24, ptr %arrayidx.le, align 1
  %41 = ptrtoint ptr %pagep.1150 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pagep.1150, align 4
  %call25 = call zeroext i1 @set_page_dirty(ptr noundef %42) #9
  %43 = ptrtoint ptr %pagep.1150 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pagep.1150, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %shr.i.i118 = lshr i32 %46, 30
  %47 = zext i32 %shr.i.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %shr.i.i118, label %if.then19.kunmap.exit_crit_edge [
    i32 2, label %if.then19.if.end.i121_crit_edge
    i32 3, label %is_highmem_idx.exit.i120
  ]

if.then19.if.end.i121_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i121

if.then19.kunmap.exit_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i120:                         ; preds = %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %48 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp2.i.not.i119 = icmp eq i32 %48, 2
  br i1 %cmp2.i.not.i119, label %is_highmem_idx.exit.i120.if.end.i121_crit_edge, label %is_highmem_idx.exit.i120.kunmap.exit_crit_edge

is_highmem_idx.exit.i120.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i120.if.end.i121_crit_edge:   ; preds = %is_highmem_idx.exit.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i121

if.end.i121:                                      ; preds = %is_highmem_idx.exit.i120.if.end.i121_crit_edge, %if.then19.if.end.i121_crit_edge
  call void @kunmap_high(ptr noundef %44) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i121, %is_highmem_idx.exit.i120.kunmap.exit_crit_edge, %if.then19.kunmap.exit_crit_edge
  %49 = ptrtoint ptr %free_nodes.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %free_nodes.i, align 4
  %dec = add i32 %50, -1
  store i32 %dec, ptr %free_nodes.i, align 4
  %51 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %inode1.i, align 4
  call void @__mark_inode_dirty(ptr noundef %52, i32 noundef 7) #9
  call void @hfs_bnode_put(ptr noundef %node.0) #9
  %call26 = call ptr @hfs_bnode_create(ptr noundef %tree, i32 noundef %add20) #9
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
  %inc32 = add i32 %off.1154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc32)
  %cmp33 = icmp ugt i32 %inc32, 4095
  br i1 %cmp33, label %if.then35, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  %53 = ptrtoint ptr %pagep.1150 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pagep.1150, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #9
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %shr.i.i122 = lshr i32 %56, 30
  %57 = zext i32 %shr.i.i122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %shr.i.i122, label %if.then35.kunmap.exit126_crit_edge [
    i32 2, label %if.then35.if.end.i125_crit_edge
    i32 3, label %is_highmem_idx.exit.i124
  ]

if.then35.if.end.i125_crit_edge:                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i125

if.then35.kunmap.exit126_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit126

is_highmem_idx.exit.i124:                         ; preds = %if.then35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %58 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp2.i.not.i123 = icmp eq i32 %58, 2
  br i1 %cmp2.i.not.i123, label %is_highmem_idx.exit.i124.if.end.i125_crit_edge, label %is_highmem_idx.exit.i124.kunmap.exit126_crit_edge

is_highmem_idx.exit.i124.kunmap.exit126_crit_edge: ; preds = %is_highmem_idx.exit.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit126

is_highmem_idx.exit.i124.if.end.i125_crit_edge:   ; preds = %is_highmem_idx.exit.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i125

if.end.i125:                                      ; preds = %is_highmem_idx.exit.i124.if.end.i125_crit_edge, %if.then35.if.end.i125_crit_edge
  call void @kunmap_high(ptr noundef %54) #9
  br label %kunmap.exit126

kunmap.exit126:                                   ; preds = %if.end.i125, %is_highmem_idx.exit.i124.kunmap.exit126_crit_edge, %if.then35.kunmap.exit126_crit_edge
  %incdec.ptr = getelementptr ptr, ptr %pagep.1150, i32 1
  %59 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %incdec.ptr, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #9
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %shr.i.i127 = lshr i32 %62, 30
  %63 = zext i32 %shr.i.i127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %shr.i.i127, label %kunmap.exit126.if.then.i131_crit_edge [
    i32 2, label %kunmap.exit126.if.else.i133_crit_edge
    i32 3, label %is_highmem_idx.exit.i129
  ]

kunmap.exit126.if.else.i133_crit_edge:            ; preds = %kunmap.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i133

kunmap.exit126.if.then.i131_crit_edge:            ; preds = %kunmap.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i131

is_highmem_idx.exit.i129:                         ; preds = %kunmap.exit126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %64 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp2.i.not.i128 = icmp eq i32 %64, 2
  br i1 %cmp2.i.not.i128, label %is_highmem_idx.exit.i129.if.else.i133_crit_edge, label %is_highmem_idx.exit.i129.if.then.i131_crit_edge

is_highmem_idx.exit.i129.if.then.i131_crit_edge:  ; preds = %is_highmem_idx.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i131

is_highmem_idx.exit.i129.if.else.i133_crit_edge:  ; preds = %is_highmem_idx.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i133

if.then.i131:                                     ; preds = %is_highmem_idx.exit.i129.if.then.i131_crit_edge, %kunmap.exit126.if.then.i131_crit_edge
  %call5.i130 = call ptr @page_address(ptr noundef %60) #9
  br label %if.end37

if.else.i133:                                     ; preds = %is_highmem_idx.exit.i129.if.else.i133_crit_edge, %kunmap.exit126.if.else.i133_crit_edge
  %call6.i132 = call ptr @kmap_high(ptr noundef %60) #9
  br label %if.end37

if.end37:                                         ; preds = %if.else.i133, %if.then.i131, %if.end31.if.end37_crit_edge
  %pagep.2 = phi ptr [ %pagep.1150, %if.end31.if.end37_crit_edge ], [ %incdec.ptr, %if.then.i131 ], [ %incdec.ptr, %if.else.i133 ]
  %off.2 = phi i32 [ %inc32, %if.end31.if.end37_crit_edge ], [ 0, %if.then.i131 ], [ 0, %if.else.i133 ]
  %data.2 = phi ptr [ %data.1157, %if.end31.if.end37_crit_edge ], [ %call5.i130, %if.then.i131 ], [ %call6.i132, %if.else.i133 ]
  %add38 = add i32 %idx.1152, 8
  %dec39 = add i16 %len.1156, -1
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
  %65 = ptrtoint ptr %pagep.1.lcssa to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pagep.1.lcssa, align 4
  call fastcc void @kunmap(ptr noundef %66)
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 3
  %67 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool40.not = icmp eq i32 %68, 0
  br i1 %tobool40.not, label %do.end, label %if.else

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %call43 = call fastcc ptr @hfs_bmap_new_bmap(ptr noundef %node.0, i32 noundef %idx.1.lcssa)
  br label %if.end45

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = call ptr @hfs_bnode_find(ptr noundef %tree, i32 noundef %68) #9
  br label %if.end45

if.end45:                                         ; preds = %if.else, %do.end
  %next_node.0 = phi ptr [ %call44, %if.else ], [ %call43, %do.end ]
  call void @hfs_bnode_put(ptr noundef %node.0) #9
  %cmp.i137 = icmp ugt ptr %next_node.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %if.end45.cleanup_crit_edge, label %if.end48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call49 = call zeroext i16 @hfs_brec_lenoff(ptr noundef %next_node.0, i16 noundef zeroext 0, ptr noundef nonnull %off16) #9
  %69 = ptrtoint ptr %off16 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %off16, align 2
  %conv50 = zext i16 %70 to i32
  %page_offset51 = getelementptr inbounds %struct.hfs_bnode, ptr %next_node.0, i32 0, i32 12
  %71 = ptrtoint ptr %page_offset51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %page_offset51, align 4
  %add52 = add i32 %72, %conv50
  %page53 = getelementptr inbounds %struct.hfs_bnode, ptr %next_node.0, i32 0, i32 13
  %shr55 = lshr i32 %add52, 12
  %add.ptr56 = getelementptr ptr, ptr %page53, i32 %shr55
  %73 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr56, align 4
  %call57 = call fastcc ptr @kmap(ptr noundef %74)
  br label %for.cond

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %kunmap.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %27, %if.then ], [ %call26, %kunmap.exit ], [ %call2, %if.end.cleanup_crit_edge ], [ %next_node.0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off16) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hfs_brec_lenoff(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hfs_bnode_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hfs_bmap_new_bmap(ptr noundef %prev, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hfs_bnode_desc, align 4
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %desc) #9
  %2 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 1
  %3 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 2
  %4 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 3
  %5 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 4
  %6 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #9
  %call = tail call ptr @hfs_bnode_create(ptr noundef %1, i32 noundef %idx) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %free_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.31) #14
  unreachable

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add i32 %8, -1
  %9 = ptrtoint ptr %free_nodes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %free_nodes, align 4
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %prev, i32 0, i32 3
  %10 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %idx, ptr %next, align 4
  %11 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %idx, ptr %cnid, align 4
  call void @hfs_bnode_write(ptr noundef %prev, ptr noundef nonnull %cnid, i32 noundef 0, i32 noundef 4) #9
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %type, align 2
  %num_recs = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %num_recs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %num_recs, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_size, align 4
  call void @hfs_bnode_clear(ptr noundef %call, i32 noundef 0, i32 noundef %15) #9
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %desc, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %2, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %3, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %4, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %5, align 2
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %6, align 4
  call void @hfs_bnode_write(ptr noundef %call, ptr noundef nonnull %desc, i32 noundef 0, i32 noundef 14) #9
  call void @hfs_bnode_write_u16(ptr noundef %call, i32 noundef 14, i16 noundef zeroext -32768) #9
  %22 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_size, align 4
  %sub = add i32 %23, -2
  call void @hfs_bnode_write_u16(ptr noundef %call, i32 noundef %sub, i16 noundef zeroext 14) #9
  %24 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_size, align 4
  %sub12 = add i32 %25, -4
  %26 = trunc i32 %25 to i16
  %conv = add i16 %26, -6
  call void @hfs_bnode_write_u16(ptr noundef %call, i32 noundef %sub12, i16 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %desc) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfs_bmap_free(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  %off = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %off) #9
  %0 = ptrtoint ptr %off to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %off, align 2, !annotation !77
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 2
  %3 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this, align 4
  %call = tail call ptr @hfs_bnode_find(ptr noundef %2, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup65_crit_edge, label %if.end

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end:                                           ; preds = %entry
  %call3 = call zeroext i16 @hfs_brec_lenoff(ptr noundef %call, i16 noundef zeroext 2, ptr noundef nonnull %off) #9
  %conv123 = zext i16 %call3 to i32
  %mul124 = shl nuw nsw i32 %conv123, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %mul124)
  %cmp.not125 = icmp ult i32 %4, %mul124
  br i1 %cmp.not125, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end.while.body_crit_edge
  %mul128 = phi i32 [ %mul, %cleanup.while.body_crit_edge ], [ %mul124, %if.end.while.body_crit_edge ]
  %node.addr.0127 = phi ptr [ %call14, %cleanup.while.body_crit_edge ], [ %call, %if.end.while.body_crit_edge ]
  %nidx.0126 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %4, %if.end.while.body_crit_edge ]
  %sub = sub i32 %nidx.0126, %mul128
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0127, i32 0, i32 3
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end10, label %if.end13

do.end10:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %this11 = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0127, i32 0, i32 2
  %7 = ptrtoint ptr %this11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %this11, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %8) #13
  call void @hfs_bnode_put(ptr noundef %node.addr.0127) #9
  br label %cleanup65

if.end13:                                         ; preds = %while.body
  call void @hfs_bnode_put(ptr noundef %node.addr.0127) #9
  %call14 = call ptr @hfs_bnode_find(ptr noundef %2, i32 noundef %6) #9
  %cmp.i109 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.end13.cleanup65_crit_edge, label %if.end17

if.end13.cleanup65_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup65

if.end17:                                         ; preds = %if.end13
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %call14, i32 0, i32 6
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp19.not = icmp eq i8 %10, 2
  br i1 %cmp19.not, label %cleanup, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = zext i8 %10 to i32
  %this26 = getelementptr inbounds %struct.hfs_bnode, ptr %call14, i32 0, i32 2
  %11 = ptrtoint ptr %this26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %this26, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %12, i32 noundef %conv18) #13
  call void @hfs_bnode_put(ptr noundef %call14) #9
  br label %cleanup65

cleanup:                                          ; preds = %if.end17
  %call31 = call zeroext i16 @hfs_brec_lenoff(ptr noundef %call14, i16 noundef zeroext 0, ptr noundef nonnull %off) #9
  %conv = zext i16 %call31 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %cmp.not = icmp ult i32 %sub, %mul
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  %nidx.0.lcssa = phi i32 [ %4, %if.end.while.end_crit_edge ], [ %sub, %cleanup.while.end_crit_edge ]
  %node.addr.0.lcssa = phi ptr [ %call, %if.end.while.end_crit_edge ], [ %call14, %cleanup.while.end_crit_edge ]
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 12
  %13 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_offset, align 4
  %div108 = lshr i32 %nidx.0.lcssa, 3
  %add = add i32 %14, %div108
  %15 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %off, align 2
  %17 = trunc i32 %add to i16
  %conv34 = add i16 %16, %17
  store i16 %conv34, ptr %off, align 2
  %18 = lshr i16 %conv34, 12
  %19 = zext i16 %18 to i32
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 13, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 44) #9
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %shr.i.i = lshr i32 %23, 30
  %24 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.42)
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
  %and40 = xor i32 %neg, 7
  %shl = shl nuw i32 1, %and40
  %idxprom = zext i16 %28 to i32
  %arrayidx42 = getelementptr i8, ptr %addr.0.i, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %30 to i32
  %and45 = and i32 %shl, %conv43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.end50, label %if.end56

do.end50:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %this52 = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 2
  %31 = ptrtoint ptr %this52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %this52, align 4
  %type53 = getelementptr inbounds %struct.hfs_bnode, ptr %node.addr.0.lcssa, i32 0, i32 6
  %33 = ptrtoint ptr %type53 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type53, align 2
  %conv54 = zext i8 %34 to i32
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %32, i32 noundef %conv54) #13
  call fastcc void @kunmap(ptr noundef %21)
  call void @hfs_bnode_put(ptr noundef %node.addr.0.lcssa) #9
  br label %cleanup65

if.end56:                                         ; preds = %kmap.exit
  %35 = trunc i32 %shl to i8
  %36 = xor i8 %35, -1
  %conv61 = and i8 %30, %36
  %37 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv61, ptr %arrayidx42, align 1
  %call64 = call zeroext i1 @set_page_dirty(ptr noundef %21) #9
  call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 55) #9
  %38 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %21, align 4
  %shr.i.i110 = lshr i32 %39, 30
  %40 = zext i32 %shr.i.i110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr.i.i110, label %if.end56.kunmap.exit_crit_edge [
    i32 2, label %if.end56.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i112
  ]

if.end56.if.end.i_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end56.kunmap.exit_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i112:                         ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %41 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp2.i.not.i111 = icmp eq i32 %41, 2
  br i1 %cmp2.i.not.i111, label %is_highmem_idx.exit.i112.if.end.i_crit_edge, label %is_highmem_idx.exit.i112.kunmap.exit_crit_edge

is_highmem_idx.exit.i112.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i112.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i112.if.end.i_crit_edge, %if.end56.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %21) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i112.kunmap.exit_crit_edge, %if.end56.kunmap.exit_crit_edge
  call void @hfs_bnode_put(ptr noundef %node.addr.0.lcssa) #9
  %free_nodes = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 9
  %42 = ptrtoint ptr %free_nodes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %free_nodes, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %free_nodes, align 4
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %2, i32 0, i32 1
  %44 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inode, align 4
  call void @__mark_inode_dirty(ptr noundef %45, i32 noundef 7) #9
  br label %cleanup65

cleanup65:                                        ; preds = %kunmap.exit, %do.end50, %do.end24, %if.end13.cleanup65_crit_edge, %do.end10, %entry.cleanup65_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %off) #9
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write_u16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @hfs_btree_open.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/hfs/btree.c", i32 31, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @hfs_btree_open.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../fs/hfs/btree.c", i32 32, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hfs_btree_open.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/hfs/btree.c", i32 45, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/hfs/btree.c", i32 52, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hfs_btree_open._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @hfs_btree_open._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/hfs/btree.c", i32 64, i32 4}
!17 = !{ptr @hfs_btree_open._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @hfs_btree_open._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/hfs/btree.c", i32 103, i32 4}
!21 = !{ptr @hfs_btree_open._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @hfs_btree_open._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/hfs/btree.c", i32 110, i32 4}
!25 = !{ptr @hfs_btree_open._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @hfs_btree_open._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/hfs/btree.c", i32 149, i32 5}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hfs_btree_close._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hfs_btree_close._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/hfs/btree.c", i32 303, i32 4}
!34 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hfs_bmap_alloc._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hfs_bmap_alloc._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/hfs/btree.c", i32 343, i32 4}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hfs_bmap_free._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hfs_bmap_free._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/hfs/btree.c", i32 354, i32 4}
!44 = !{ptr @hfs_bmap_free._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hfs_bmap_free._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/hfs/btree.c", i32 368, i32 3}
!48 = !{ptr @hfs_bmap_free._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hfs_bmap_free._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/mm.h", i32 717, i32 2}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/hfs/btree.c", i32 200, i32 9}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2153832380, i64 2153832858, i64 2153832417, i64 2153832473, i64 2153832507, i64 2153832531, i64 2153832572, i64 2153832593, i64 2153832621, i64 2153832655}
!67 = !{i64 2153844833, i64 2153845311, i64 2153844870, i64 2153844926, i64 2153844960, i64 2153844984, i64 2153845025, i64 2153845046, i64 2153845074, i64 2153845108}
!68 = !{i32 0, i32 17}
!69 = !{i64 2153850396, i64 2153850875, i64 2153850433, i64 2153850489, i64 2153850523, i64 2153850547, i64 2153850588, i64 2153850609, i64 2153850637, i64 2153850671}
!70 = !{i32 0, i32 33}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{i64 2153157120, i64 2153157603, i64 2153157157, i64 2153157213, i64 2153157247, i64 2153157271, i64 2153157312, i64 2153157333, i64 2153157361, i64 2153157395}
!73 = !{i64 2148799600}
!74 = !{i64 2148714309, i64 2148714341, i64 2148714370, i64 2148714404, i64 2148714435, i64 2148714458}
!75 = !{i64 2148799829}
!76 = !{i64 2148311801, i64 2148311806, i64 2148311819, i64 2148311863, i64 2148311897, i64 2148311918}
!77 = !{!"auto-init"}
