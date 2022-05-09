; ModuleID = '/llk/IR_all_yes/fs/hfsplus/bnode.c_pt.bc'
source_filename = "../fs/hfsplus/bnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.hfs_bnode = type { ptr, i32, i32, i32, i32, i16, i8, i8, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, i32, [0 x ptr] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hfs_btree = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, %struct.spinlock, [256 x ptr], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hfs_bnode_desc = type <{ i32, i32, i8, i8, i16, i16 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
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
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hfsplus_vh = type { i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, [8 x i32], %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw, %struct.hfsplus_fork_raw }
%struct.hfsplus_fork_raw = type { i64, i32, i32, [8 x %struct.hfsplus_extent] }
%struct.hfsplus_extent = type { i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }

@hfsplus_bnode_findhash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013hfsplus: request for non-existent node %d in B*Tree\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hfsplus_bnode_findhash\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/hfsplus/bnode.c\00", [45 x i8] zeroinitializer }, align 32
@hfsplus_bnode_findhash._entry_ptr = internal global ptr @hfsplus_bnode_findhash._entry, section ".printk_index", align 4
@hfsplus_bnode_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\012hfsplus: new node %u already hashed?\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hfsplus_bnode_create\00", [43 x i8] zeroinitializer }, align 32
@hfsplus_bnode_create._entry_ptr = internal global ptr @hfsplus_bnode_create._entry, section ".printk_index", align 4
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__hfs_bnode_create._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 410, ptr null, ptr null }, align 1
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__hfs_bnode_create\00", [45 x i8] zeroinitializer }, align 32
@__hfs_bnode_create._entry_ptr = internal global ptr @__hfs_bnode_create._entry, section ".printk_index", align 4
@__hfs_bnode_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&node->lock_wq\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
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
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 255]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 388, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 583, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 44, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 409, i32 3 }
@___asan_gen_.98 = private constant [22 x i8] c"../fs/hfsplus/bnode.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 425, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 416, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 717, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__hfs_bnode_create._entry, ptr @__hfs_bnode_create._entry_ptr, ptr @hfsplus_bnode_create._entry, ptr @hfsplus_bnode_create._entry_ptr, ptr @hfsplus_bnode_findhash._entry, ptr @hfsplus_bnode_findhash._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_bnode_findhash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_bnode_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_read(ptr nocapture noundef readonly %node, ptr nocapture noundef writeonly %buf, i32 noundef %off, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %off
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %shr = ashr i32 %add, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %and = and i32 %add, 4095
  %sub = sub nuw nsw i32 4096, %and
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr.i.i = lshr i32 %6, 30
  %7 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %8 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2.i.not.i = icmp eq i32 %8, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %4) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %4) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr1 = getelementptr i8, ptr %addr.0.i, i32 %and
  %9 = call ptr @memcpy(ptr %buf, ptr %add.ptr1, i32 %2)
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr.i.i31 = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i31, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i33
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i33:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i32 = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i32, label %is_highmem_idx.exit.i33.if.end.i_crit_edge, label %is_highmem_idx.exit.i33.kunmap.exit_crit_edge

is_highmem_idx.exit.i33.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i33.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i33.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %11) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i33.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %sub249 = sub i32 %len, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub249)
  %cmp3.not50 = icmp eq i32 %sub249, 0
  br i1 %cmp3.not50, label %kunmap.exit.while.end_crit_edge, label %kunmap.exit.while.body_crit_edge

kunmap.exit.while.body_crit_edge:                 ; preds = %kunmap.exit
  br label %while.body

kunmap.exit.while.end_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %kunmap.exit48.while.body_crit_edge, %kunmap.exit.while.body_crit_edge
  %sub254 = phi i32 [ %sub2, %kunmap.exit48.while.body_crit_edge ], [ %sub249, %kunmap.exit.while.body_crit_edge ]
  %buf.addr.053 = phi ptr [ %add.ptr4, %kunmap.exit48.while.body_crit_edge ], [ %buf, %kunmap.exit.while.body_crit_edge ]
  %l.052 = phi i32 [ %16, %kunmap.exit48.while.body_crit_edge ], [ %2, %kunmap.exit.while.body_crit_edge ]
  %pagep.051 = phi ptr [ %incdec.ptr, %kunmap.exit48.while.body_crit_edge ], [ %add.ptr, %kunmap.exit.while.body_crit_edge ]
  %add.ptr4 = getelementptr i8, ptr %buf.addr.053, i32 %l.052
  %16 = tail call i32 @llvm.smin.i32(i32 %sub254, i32 4096)
  %incdec.ptr = getelementptr ptr, ptr %pagep.051, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shr.i.i34 = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i34, label %while.body.if.then.i38_crit_edge [
    i32 2, label %while.body.if.else.i40_crit_edge
    i32 3, label %is_highmem_idx.exit.i36
  ]

while.body.if.else.i40_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i40

while.body.if.then.i38_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i38

is_highmem_idx.exit.i36:                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i35 = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i35, label %is_highmem_idx.exit.i36.if.else.i40_crit_edge, label %is_highmem_idx.exit.i36.if.then.i38_crit_edge

is_highmem_idx.exit.i36.if.then.i38_crit_edge:    ; preds = %is_highmem_idx.exit.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i38

is_highmem_idx.exit.i36.if.else.i40_crit_edge:    ; preds = %is_highmem_idx.exit.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i40

if.then.i38:                                      ; preds = %is_highmem_idx.exit.i36.if.then.i38_crit_edge, %while.body.if.then.i38_crit_edge
  %call5.i37 = tail call ptr @page_address(ptr noundef %18) #8
  br label %kmap.exit43

if.else.i40:                                      ; preds = %is_highmem_idx.exit.i36.if.else.i40_crit_edge, %while.body.if.else.i40_crit_edge
  %call6.i39 = tail call ptr @kmap_high(ptr noundef %18) #8
  br label %kmap.exit43

kmap.exit43:                                      ; preds = %if.else.i40, %if.then.i38
  %addr.0.i41 = phi ptr [ %call6.i39, %if.else.i40 ], [ %call5.i37, %if.then.i38 ]
  %23 = call ptr @memcpy(ptr %add.ptr4, ptr %addr.0.i41, i32 %16)
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i.i44 = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i44, label %kmap.exit43.kunmap.exit48_crit_edge [
    i32 2, label %kmap.exit43.if.end.i47_crit_edge
    i32 3, label %is_highmem_idx.exit.i46
  ]

kmap.exit43.if.end.i47_crit_edge:                 ; preds = %kmap.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

kmap.exit43.kunmap.exit48_crit_edge:              ; preds = %kmap.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit48

is_highmem_idx.exit.i46:                          ; preds = %kmap.exit43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i45 = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i45, label %is_highmem_idx.exit.i46.if.end.i47_crit_edge, label %is_highmem_idx.exit.i46.kunmap.exit48_crit_edge

is_highmem_idx.exit.i46.kunmap.exit48_crit_edge:  ; preds = %is_highmem_idx.exit.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit48

is_highmem_idx.exit.i46.if.end.i47_crit_edge:     ; preds = %is_highmem_idx.exit.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

if.end.i47:                                       ; preds = %is_highmem_idx.exit.i46.if.end.i47_crit_edge, %kmap.exit43.if.end.i47_crit_edge
  tail call void @kunmap_high(ptr noundef %25) #8
  br label %kunmap.exit48

kunmap.exit48:                                    ; preds = %if.end.i47, %is_highmem_idx.exit.i46.kunmap.exit48_crit_edge, %kmap.exit43.kunmap.exit48_crit_edge
  %sub2 = sub i32 %sub254, %16
  %cmp3.not = icmp eq i32 %sub2, 0
  br i1 %cmp3.not, label %kunmap.exit48.while.end_crit_edge, label %kunmap.exit48.while.body_crit_edge

kunmap.exit48.while.body_crit_edge:               ; preds = %kunmap.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

kunmap.exit48.while.end_crit_edge:                ; preds = %kunmap.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %kunmap.exit48.while.end_crit_edge, %kunmap.exit.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @hfsplus_bnode_read_u16(ptr nocapture noundef readonly %node, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data, i32 noundef %off, i32 noundef 2)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #8
  ret i16 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @hfsplus_bnode_read_u8(ptr nocapture noundef readonly %node, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data, i32 noundef %off, i32 noundef 1)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_read_key(ptr nocapture noundef readonly %node, ptr nocapture noundef writeonly %key, i32 noundef %off) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attributes, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %cnid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp5 = icmp eq i32 %7, 8
  br i1 %cmp5, label %lor.lhs.false3.if.then_crit_edge, label %if.else

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %data.i, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i, i32 noundef %off, i32 noundef 2) #8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %conv7 = zext i16 %10 to i32
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_key_len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %key_len.0.in = phi i32 [ %conv7, %if.then ], [ %12, %if.else ]
  %key_len.0 = add i32 %key_len.0.in, 2
  tail call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef %key, i32 noundef %off, i32 noundef %key_len.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_write(ptr nocapture noundef readonly %node, ptr nocapture noundef readonly %buf, i32 noundef %off, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %off
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %shr = ashr i32 %add, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %and = and i32 %add, 4095
  %sub = sub nuw nsw i32 4096, %and
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr.i.i = lshr i32 %6, 30
  %7 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %8 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2.i.not.i = icmp eq i32 %8, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %4) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %4) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr1 = getelementptr i8, ptr %addr.0.i, i32 %and
  %9 = call ptr @memcpy(ptr %add.ptr1, ptr %buf, i32 %2)
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call zeroext i1 @set_page_dirty(ptr noundef %11) #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %shr.i.i35 = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %shr.i.i35, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i37
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i37:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i36 = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i36, label %is_highmem_idx.exit.i37.if.end.i_crit_edge, label %is_highmem_idx.exit.i37.kunmap.exit_crit_edge

is_highmem_idx.exit.i37.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i37.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i37.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %13) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i37.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %sub353 = sub i32 %len, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub353)
  %cmp4.not54 = icmp eq i32 %sub353, 0
  br i1 %cmp4.not54, label %kunmap.exit.while.end_crit_edge, label %kunmap.exit.while.body_crit_edge

kunmap.exit.while.body_crit_edge:                 ; preds = %kunmap.exit
  br label %while.body

kunmap.exit.while.end_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %kunmap.exit52.while.body_crit_edge, %kunmap.exit.while.body_crit_edge
  %sub358 = phi i32 [ %sub3, %kunmap.exit52.while.body_crit_edge ], [ %sub353, %kunmap.exit.while.body_crit_edge ]
  %buf.addr.057 = phi ptr [ %add.ptr5, %kunmap.exit52.while.body_crit_edge ], [ %buf, %kunmap.exit.while.body_crit_edge ]
  %l.056 = phi i32 [ %18, %kunmap.exit52.while.body_crit_edge ], [ %2, %kunmap.exit.while.body_crit_edge ]
  %pagep.055 = phi ptr [ %incdec.ptr, %kunmap.exit52.while.body_crit_edge ], [ %add.ptr, %kunmap.exit.while.body_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %buf.addr.057, i32 %l.056
  %18 = tail call i32 @llvm.smin.i32(i32 %sub358, i32 4096)
  %incdec.ptr = getelementptr ptr, ptr %pagep.055, i32 1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %shr.i.i38 = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %shr.i.i38, label %while.body.if.then.i42_crit_edge [
    i32 2, label %while.body.if.else.i44_crit_edge
    i32 3, label %is_highmem_idx.exit.i40
  ]

while.body.if.else.i44_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i44

while.body.if.then.i42_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i42

is_highmem_idx.exit.i40:                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i39 = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i39, label %is_highmem_idx.exit.i40.if.else.i44_crit_edge, label %is_highmem_idx.exit.i40.if.then.i42_crit_edge

is_highmem_idx.exit.i40.if.then.i42_crit_edge:    ; preds = %is_highmem_idx.exit.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i42

is_highmem_idx.exit.i40.if.else.i44_crit_edge:    ; preds = %is_highmem_idx.exit.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i44

if.then.i42:                                      ; preds = %is_highmem_idx.exit.i40.if.then.i42_crit_edge, %while.body.if.then.i42_crit_edge
  %call5.i41 = tail call ptr @page_address(ptr noundef %20) #8
  br label %kmap.exit47

if.else.i44:                                      ; preds = %is_highmem_idx.exit.i40.if.else.i44_crit_edge, %while.body.if.else.i44_crit_edge
  %call6.i43 = tail call ptr @kmap_high(ptr noundef %20) #8
  br label %kmap.exit47

kmap.exit47:                                      ; preds = %if.else.i44, %if.then.i42
  %addr.0.i45 = phi ptr [ %call6.i43, %if.else.i44 ], [ %call5.i41, %if.then.i42 ]
  %25 = call ptr @memcpy(ptr %addr.0.i45, ptr %add.ptr5, i32 %18)
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %incdec.ptr, align 4
  %call13 = tail call zeroext i1 @set_page_dirty(ptr noundef %27) #8
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shr.i.i48 = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr.i.i48, label %kmap.exit47.kunmap.exit52_crit_edge [
    i32 2, label %kmap.exit47.if.end.i51_crit_edge
    i32 3, label %is_highmem_idx.exit.i50
  ]

kmap.exit47.if.end.i51_crit_edge:                 ; preds = %kmap.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i51

kmap.exit47.kunmap.exit52_crit_edge:              ; preds = %kmap.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit52

is_highmem_idx.exit.i50:                          ; preds = %kmap.exit47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i49 = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i49, label %is_highmem_idx.exit.i50.if.end.i51_crit_edge, label %is_highmem_idx.exit.i50.kunmap.exit52_crit_edge

is_highmem_idx.exit.i50.kunmap.exit52_crit_edge:  ; preds = %is_highmem_idx.exit.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit52

is_highmem_idx.exit.i50.if.end.i51_crit_edge:     ; preds = %is_highmem_idx.exit.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i51

if.end.i51:                                       ; preds = %is_highmem_idx.exit.i50.if.end.i51_crit_edge, %kmap.exit47.if.end.i51_crit_edge
  tail call void @kunmap_high(ptr noundef %29) #8
  br label %kunmap.exit52

kunmap.exit52:                                    ; preds = %if.end.i51, %is_highmem_idx.exit.i50.kunmap.exit52_crit_edge, %kmap.exit47.kunmap.exit52_crit_edge
  %sub3 = sub i32 %sub358, %18
  %cmp4.not = icmp eq i32 %sub3, 0
  br i1 %cmp4.not, label %kunmap.exit52.while.end_crit_edge, label %kunmap.exit52.while.body_crit_edge

kunmap.exit52.while.body_crit_edge:               ; preds = %kunmap.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

kunmap.exit52.while.end_crit_edge:                ; preds = %kunmap.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %kunmap.exit52.while.end_crit_edge, %kunmap.exit.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_write_u16(ptr nocapture noundef readonly %node, i32 noundef %off, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %data, ptr %v, align 2
  call void @hfsplus_bnode_write(ptr noundef %node, ptr noundef nonnull %v, i32 noundef %off, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_clear(ptr nocapture noundef readonly %node, i32 noundef %off, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %off
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %shr = ashr i32 %add, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %and = and i32 %add, 4095
  %sub = sub nuw nsw i32 4096, %and
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %shr.i.i = lshr i32 %6, 30
  %7 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %8 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2.i.not.i = icmp eq i32 %8, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %4) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %4) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr1 = getelementptr i8, ptr %addr.0.i, i32 %and
  %9 = call ptr @memset(ptr %add.ptr1, i32 0, i32 %2)
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call zeroext i1 @set_page_dirty(ptr noundef %11) #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %shr.i.i31 = lshr i32 %15, 30
  %16 = zext i32 %shr.i.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr.i.i31, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i33
  ]

kmap.exit.if.end.i_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i33:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %17 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp2.i.not.i32 = icmp eq i32 %17, 2
  br i1 %cmp2.i.not.i32, label %is_highmem_idx.exit.i33.if.end.i_crit_edge, label %is_highmem_idx.exit.i33.kunmap.exit_crit_edge

is_highmem_idx.exit.i33.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i33.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i33.if.end.i_crit_edge, %kmap.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %13) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i33.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %sub349 = sub i32 %len, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub349)
  %cmp4.not50 = icmp eq i32 %sub349, 0
  br i1 %cmp4.not50, label %kunmap.exit.while.end_crit_edge, label %kunmap.exit.while.body_crit_edge

kunmap.exit.while.body_crit_edge:                 ; preds = %kunmap.exit
  br label %while.body

kunmap.exit.while.end_crit_edge:                  ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %kunmap.exit48.while.body_crit_edge, %kunmap.exit.while.body_crit_edge
  %sub352 = phi i32 [ %sub3, %kunmap.exit48.while.body_crit_edge ], [ %sub349, %kunmap.exit.while.body_crit_edge ]
  %pagep.051 = phi ptr [ %incdec.ptr, %kunmap.exit48.while.body_crit_edge ], [ %add.ptr, %kunmap.exit.while.body_crit_edge ]
  %18 = tail call i32 @llvm.smin.i32(i32 %sub352, i32 4096)
  %incdec.ptr = getelementptr ptr, ptr %pagep.051, i32 1
  %19 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %shr.i.i34 = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i34, label %while.body.if.then.i38_crit_edge [
    i32 2, label %while.body.if.else.i40_crit_edge
    i32 3, label %is_highmem_idx.exit.i36
  ]

while.body.if.else.i40_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i40

while.body.if.then.i38_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i38

is_highmem_idx.exit.i36:                          ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i35 = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i35, label %is_highmem_idx.exit.i36.if.else.i40_crit_edge, label %is_highmem_idx.exit.i36.if.then.i38_crit_edge

is_highmem_idx.exit.i36.if.then.i38_crit_edge:    ; preds = %is_highmem_idx.exit.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i38

is_highmem_idx.exit.i36.if.else.i40_crit_edge:    ; preds = %is_highmem_idx.exit.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i40

if.then.i38:                                      ; preds = %is_highmem_idx.exit.i36.if.then.i38_crit_edge, %while.body.if.then.i38_crit_edge
  %call5.i37 = tail call ptr @page_address(ptr noundef %20) #8
  br label %kmap.exit43

if.else.i40:                                      ; preds = %is_highmem_idx.exit.i36.if.else.i40_crit_edge, %while.body.if.else.i40_crit_edge
  %call6.i39 = tail call ptr @kmap_high(ptr noundef %20) #8
  br label %kmap.exit43

kmap.exit43:                                      ; preds = %if.else.i40, %if.then.i38
  %addr.0.i41 = phi ptr [ %call6.i39, %if.else.i40 ], [ %call5.i37, %if.then.i38 ]
  %25 = call ptr @memset(ptr %addr.0.i41, i32 0, i32 %18)
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %incdec.ptr, align 4
  %call12 = tail call zeroext i1 @set_page_dirty(ptr noundef %27) #8
  %28 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shr.i.i44 = lshr i32 %31, 30
  %32 = zext i32 %shr.i.i44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %shr.i.i44, label %kmap.exit43.kunmap.exit48_crit_edge [
    i32 2, label %kmap.exit43.if.end.i47_crit_edge
    i32 3, label %is_highmem_idx.exit.i46
  ]

kmap.exit43.if.end.i47_crit_edge:                 ; preds = %kmap.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

kmap.exit43.kunmap.exit48_crit_edge:              ; preds = %kmap.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit48

is_highmem_idx.exit.i46:                          ; preds = %kmap.exit43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %33 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp2.i.not.i45 = icmp eq i32 %33, 2
  br i1 %cmp2.i.not.i45, label %is_highmem_idx.exit.i46.if.end.i47_crit_edge, label %is_highmem_idx.exit.i46.kunmap.exit48_crit_edge

is_highmem_idx.exit.i46.kunmap.exit48_crit_edge:  ; preds = %is_highmem_idx.exit.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit48

is_highmem_idx.exit.i46.if.end.i47_crit_edge:     ; preds = %is_highmem_idx.exit.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

if.end.i47:                                       ; preds = %is_highmem_idx.exit.i46.if.end.i47_crit_edge, %kmap.exit43.if.end.i47_crit_edge
  tail call void @kunmap_high(ptr noundef %29) #8
  br label %kunmap.exit48

kunmap.exit48:                                    ; preds = %if.end.i47, %is_highmem_idx.exit.i46.kunmap.exit48_crit_edge, %kmap.exit43.kunmap.exit48_crit_edge
  %sub3 = sub i32 %sub352, %18
  %cmp4.not = icmp eq i32 %sub3, 0
  br i1 %cmp4.not, label %kunmap.exit48.while.end_crit_edge, label %kunmap.exit48.while.body_crit_edge

kunmap.exit48.while.body_crit_edge:               ; preds = %kunmap.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

kunmap.exit48.while.end_crit_edge:                ; preds = %kunmap.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %kunmap.exit48.while.end_crit_edge, %kunmap.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_copy(ptr nocapture noundef readonly %dst_node, i32 noundef %dst, ptr nocapture noundef readonly %src_node, i32 noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %src_node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %src
  %page_offset1 = getelementptr inbounds %struct.hfs_bnode, ptr %dst_node, i32 0, i32 12
  %2 = ptrtoint ptr %page_offset1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_offset1, align 4
  %add2 = add i32 %3, %dst
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %src_node, i32 0, i32 13
  %shr = ashr i32 %add, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %and = and i32 %add, 4095
  %page3 = getelementptr inbounds %struct.hfs_bnode, ptr %dst_node, i32 0, i32 13
  %shr5 = ashr i32 %add2, 12
  %add.ptr6 = getelementptr ptr, ptr %page3, i32 %shr5
  %and7 = and i32 %add2, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and7)
  %cmp = icmp eq i32 %and, %and7
  br i1 %cmp, label %if.then8, label %if.end.do.body26_crit_edge

if.end.do.body26_crit_edge:                       ; preds = %if.end
  br label %do.body26

if.then8:                                         ; preds = %if.end
  %sub = sub nuw nsw i32 4096, %and
  %4 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len)
  %5 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr6, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %shr.i.i = lshr i32 %8, 30
  %9 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %shr.i.i, label %if.then8.if.then.i_crit_edge [
    i32 2, label %if.then8.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then8.if.else.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then8.if.then.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %10 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp2.i.not.i = icmp eq i32 %10, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.then8.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %6) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then8.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %6) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %add.ptr10 = getelementptr i8, ptr %addr.0.i, i32 %and
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %shr.i.i114 = lshr i32 %14, 30
  %15 = zext i32 %shr.i.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %shr.i.i114, label %kmap.exit.if.then.i118_crit_edge [
    i32 2, label %kmap.exit.if.else.i120_crit_edge
    i32 3, label %is_highmem_idx.exit.i116
  ]

kmap.exit.if.else.i120_crit_edge:                 ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i120

kmap.exit.if.then.i118_crit_edge:                 ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i118

is_highmem_idx.exit.i116:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %16 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp2.i.not.i115 = icmp eq i32 %16, 2
  br i1 %cmp2.i.not.i115, label %is_highmem_idx.exit.i116.if.else.i120_crit_edge, label %is_highmem_idx.exit.i116.if.then.i118_crit_edge

is_highmem_idx.exit.i116.if.then.i118_crit_edge:  ; preds = %is_highmem_idx.exit.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i118

is_highmem_idx.exit.i116.if.else.i120_crit_edge:  ; preds = %is_highmem_idx.exit.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i120

if.then.i118:                                     ; preds = %is_highmem_idx.exit.i116.if.then.i118_crit_edge, %kmap.exit.if.then.i118_crit_edge
  %call5.i117 = tail call ptr @page_address(ptr noundef %12) #8
  br label %kmap.exit122

if.else.i120:                                     ; preds = %is_highmem_idx.exit.i116.if.else.i120_crit_edge, %kmap.exit.if.else.i120_crit_edge
  %call6.i119 = tail call ptr @kmap_high(ptr noundef %12) #8
  br label %kmap.exit122

kmap.exit122:                                     ; preds = %if.else.i120, %if.then.i118
  %addr.0.i121 = phi ptr [ %call6.i119, %if.else.i120 ], [ %call5.i117, %if.then.i118 ]
  %add.ptr12 = getelementptr i8, ptr %addr.0.i121, i32 %and
  %17 = call ptr @memcpy(ptr %add.ptr10, ptr %add.ptr12, i32 %4)
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %shr.i.i123 = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i123, label %kmap.exit122.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit122.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i125
  ]

kmap.exit122.if.end.i_crit_edge:                  ; preds = %kmap.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit122.kunmap.exit_crit_edge:               ; preds = %kmap.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i125:                         ; preds = %kmap.exit122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i124 = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i124, label %is_highmem_idx.exit.i125.if.end.i_crit_edge, label %is_highmem_idx.exit.i125.kunmap.exit_crit_edge

is_highmem_idx.exit.i125.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i125.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i125.if.end.i_crit_edge, %kmap.exit122.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %19) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i125.kunmap.exit_crit_edge, %kmap.exit122.kunmap.exit_crit_edge
  %24 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr6, align 4
  %call13 = tail call zeroext i1 @set_page_dirty(ptr noundef %25) #8
  %26 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr6, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr.i.i126 = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i126, label %kunmap.exit.kunmap.exit130_crit_edge [
    i32 2, label %kunmap.exit.if.end.i129_crit_edge
    i32 3, label %is_highmem_idx.exit.i128
  ]

kunmap.exit.if.end.i129_crit_edge:                ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i129

kunmap.exit.kunmap.exit130_crit_edge:             ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit130

is_highmem_idx.exit.i128:                         ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i127 = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i127, label %is_highmem_idx.exit.i128.if.end.i129_crit_edge, label %is_highmem_idx.exit.i128.kunmap.exit130_crit_edge

is_highmem_idx.exit.i128.kunmap.exit130_crit_edge: ; preds = %is_highmem_idx.exit.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit130

is_highmem_idx.exit.i128.if.end.i129_crit_edge:   ; preds = %is_highmem_idx.exit.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i129

if.end.i129:                                      ; preds = %is_highmem_idx.exit.i128.if.end.i129_crit_edge, %kunmap.exit.if.end.i129_crit_edge
  tail call void @kunmap_high(ptr noundef %27) #8
  br label %kunmap.exit130

kunmap.exit130:                                   ; preds = %if.end.i129, %is_highmem_idx.exit.i128.kunmap.exit130_crit_edge, %kunmap.exit.kunmap.exit130_crit_edge
  %sub14192 = sub i32 %len, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14192)
  %cmp15.not193 = icmp eq i32 %sub14192, 0
  br i1 %cmp15.not193, label %kunmap.exit130.cleanup_crit_edge, label %kunmap.exit130.while.body_crit_edge

kunmap.exit130.while.body_crit_edge:              ; preds = %kunmap.exit130
  br label %while.body

kunmap.exit130.cleanup_crit_edge:                 ; preds = %kunmap.exit130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %kunmap.exit160.while.body_crit_edge, %kunmap.exit130.while.body_crit_edge
  %sub14196 = phi i32 [ %sub14, %kunmap.exit160.while.body_crit_edge ], [ %sub14192, %kunmap.exit130.while.body_crit_edge ]
  %dst_page.0195 = phi ptr [ %incdec.ptr, %kunmap.exit160.while.body_crit_edge ], [ %add.ptr6, %kunmap.exit130.while.body_crit_edge ]
  %src_page.0194 = phi ptr [ %incdec.ptr23, %kunmap.exit160.while.body_crit_edge ], [ %add.ptr, %kunmap.exit130.while.body_crit_edge ]
  %32 = tail call i32 @llvm.smin.i32(i32 %sub14196, i32 4096)
  %incdec.ptr = getelementptr ptr, ptr %dst_page.0195, i32 1
  %33 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %shr.i.i131 = lshr i32 %36, 30
  %37 = zext i32 %shr.i.i131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i131, label %while.body.if.then.i135_crit_edge [
    i32 2, label %while.body.if.else.i137_crit_edge
    i32 3, label %is_highmem_idx.exit.i133
  ]

while.body.if.else.i137_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i137

while.body.if.then.i135_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i135

is_highmem_idx.exit.i133:                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %38 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp2.i.not.i132 = icmp eq i32 %38, 2
  br i1 %cmp2.i.not.i132, label %is_highmem_idx.exit.i133.if.else.i137_crit_edge, label %is_highmem_idx.exit.i133.if.then.i135_crit_edge

is_highmem_idx.exit.i133.if.then.i135_crit_edge:  ; preds = %is_highmem_idx.exit.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i135

is_highmem_idx.exit.i133.if.else.i137_crit_edge:  ; preds = %is_highmem_idx.exit.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i137

if.then.i135:                                     ; preds = %is_highmem_idx.exit.i133.if.then.i135_crit_edge, %while.body.if.then.i135_crit_edge
  %call5.i134 = tail call ptr @page_address(ptr noundef %34) #8
  br label %kmap.exit140

if.else.i137:                                     ; preds = %is_highmem_idx.exit.i133.if.else.i137_crit_edge, %while.body.if.else.i137_crit_edge
  %call6.i136 = tail call ptr @kmap_high(ptr noundef %34) #8
  br label %kmap.exit140

kmap.exit140:                                     ; preds = %if.else.i137, %if.then.i135
  %addr.0.i138 = phi ptr [ %call6.i136, %if.else.i137 ], [ %call5.i134, %if.then.i135 ]
  %incdec.ptr23 = getelementptr ptr, ptr %src_page.0194, i32 1
  %39 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %incdec.ptr23, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %shr.i.i141 = lshr i32 %42, 30
  %43 = zext i32 %shr.i.i141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i.i141, label %kmap.exit140.if.then.i145_crit_edge [
    i32 2, label %kmap.exit140.if.else.i147_crit_edge
    i32 3, label %is_highmem_idx.exit.i143
  ]

kmap.exit140.if.else.i147_crit_edge:              ; preds = %kmap.exit140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i147

kmap.exit140.if.then.i145_crit_edge:              ; preds = %kmap.exit140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i145

is_highmem_idx.exit.i143:                         ; preds = %kmap.exit140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %44 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp2.i.not.i142 = icmp eq i32 %44, 2
  br i1 %cmp2.i.not.i142, label %is_highmem_idx.exit.i143.if.else.i147_crit_edge, label %is_highmem_idx.exit.i143.if.then.i145_crit_edge

is_highmem_idx.exit.i143.if.then.i145_crit_edge:  ; preds = %is_highmem_idx.exit.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i145

is_highmem_idx.exit.i143.if.else.i147_crit_edge:  ; preds = %is_highmem_idx.exit.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i147

if.then.i145:                                     ; preds = %is_highmem_idx.exit.i143.if.then.i145_crit_edge, %kmap.exit140.if.then.i145_crit_edge
  %call5.i144 = tail call ptr @page_address(ptr noundef %40) #8
  br label %kmap.exit150

if.else.i147:                                     ; preds = %is_highmem_idx.exit.i143.if.else.i147_crit_edge, %kmap.exit140.if.else.i147_crit_edge
  %call6.i146 = tail call ptr @kmap_high(ptr noundef %40) #8
  br label %kmap.exit150

kmap.exit150:                                     ; preds = %if.else.i147, %if.then.i145
  %addr.0.i148 = phi ptr [ %call6.i146, %if.else.i147 ], [ %call5.i144, %if.then.i145 ]
  %45 = call ptr @memcpy(ptr %addr.0.i138, ptr %addr.0.i148, i32 %32)
  %46 = ptrtoint ptr %incdec.ptr23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %incdec.ptr23, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %shr.i.i151 = lshr i32 %49, 30
  %50 = zext i32 %shr.i.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %shr.i.i151, label %kmap.exit150.kunmap.exit155_crit_edge [
    i32 2, label %kmap.exit150.if.end.i154_crit_edge
    i32 3, label %is_highmem_idx.exit.i153
  ]

kmap.exit150.if.end.i154_crit_edge:               ; preds = %kmap.exit150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i154

kmap.exit150.kunmap.exit155_crit_edge:            ; preds = %kmap.exit150
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit155

is_highmem_idx.exit.i153:                         ; preds = %kmap.exit150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %51 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp2.i.not.i152 = icmp eq i32 %51, 2
  br i1 %cmp2.i.not.i152, label %is_highmem_idx.exit.i153.if.end.i154_crit_edge, label %is_highmem_idx.exit.i153.kunmap.exit155_crit_edge

is_highmem_idx.exit.i153.kunmap.exit155_crit_edge: ; preds = %is_highmem_idx.exit.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit155

is_highmem_idx.exit.i153.if.end.i154_crit_edge:   ; preds = %is_highmem_idx.exit.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i154

if.end.i154:                                      ; preds = %is_highmem_idx.exit.i153.if.end.i154_crit_edge, %kmap.exit150.if.end.i154_crit_edge
  tail call void @kunmap_high(ptr noundef %47) #8
  br label %kunmap.exit155

kunmap.exit155:                                   ; preds = %if.end.i154, %is_highmem_idx.exit.i153.kunmap.exit155_crit_edge, %kmap.exit150.kunmap.exit155_crit_edge
  %52 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %incdec.ptr, align 4
  %call25 = tail call zeroext i1 @set_page_dirty(ptr noundef %53) #8
  %54 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %shr.i.i156 = lshr i32 %57, 30
  %58 = zext i32 %shr.i.i156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %shr.i.i156, label %kunmap.exit155.kunmap.exit160_crit_edge [
    i32 2, label %kunmap.exit155.if.end.i159_crit_edge
    i32 3, label %is_highmem_idx.exit.i158
  ]

kunmap.exit155.if.end.i159_crit_edge:             ; preds = %kunmap.exit155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i159

kunmap.exit155.kunmap.exit160_crit_edge:          ; preds = %kunmap.exit155
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit160

is_highmem_idx.exit.i158:                         ; preds = %kunmap.exit155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %59 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp2.i.not.i157 = icmp eq i32 %59, 2
  br i1 %cmp2.i.not.i157, label %is_highmem_idx.exit.i158.if.end.i159_crit_edge, label %is_highmem_idx.exit.i158.kunmap.exit160_crit_edge

is_highmem_idx.exit.i158.kunmap.exit160_crit_edge: ; preds = %is_highmem_idx.exit.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit160

is_highmem_idx.exit.i158.if.end.i159_crit_edge:   ; preds = %is_highmem_idx.exit.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i159

if.end.i159:                                      ; preds = %is_highmem_idx.exit.i158.if.end.i159_crit_edge, %kunmap.exit155.if.end.i159_crit_edge
  tail call void @kunmap_high(ptr noundef %55) #8
  br label %kunmap.exit160

kunmap.exit160:                                   ; preds = %if.end.i159, %is_highmem_idx.exit.i158.kunmap.exit160_crit_edge, %kunmap.exit155.kunmap.exit160_crit_edge
  %sub14 = sub i32 %sub14196, %32
  %cmp15.not = icmp eq i32 %sub14, 0
  br i1 %cmp15.not, label %kunmap.exit160.cleanup_crit_edge, label %kunmap.exit160.while.body_crit_edge

kunmap.exit160.while.body_crit_edge:              ; preds = %kunmap.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

kunmap.exit160.cleanup_crit_edge:                 ; preds = %kunmap.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body26:                                        ; preds = %kunmap.exit190.do.body26_crit_edge, %if.end.do.body26_crit_edge
  %src_page.1 = phi ptr [ %src_page.2, %kunmap.exit190.do.body26_crit_edge ], [ %add.ptr, %if.end.do.body26_crit_edge ]
  %dst_page.1 = phi ptr [ %dst_page.2, %kunmap.exit190.do.body26_crit_edge ], [ %add.ptr6, %if.end.do.body26_crit_edge ]
  %len.addr.1 = phi i32 [ %sub55, %kunmap.exit190.do.body26_crit_edge ], [ %len, %if.end.do.body26_crit_edge ]
  %src.addr.0 = phi i32 [ %src.addr.1, %kunmap.exit190.do.body26_crit_edge ], [ %and, %if.end.do.body26_crit_edge ]
  %dst.addr.0 = phi i32 [ %dst.addr.1, %kunmap.exit190.do.body26_crit_edge ], [ %and7, %if.end.do.body26_crit_edge ]
  %60 = ptrtoint ptr %src_page.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %src_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %shr.i.i161 = lshr i32 %63, 30
  %64 = zext i32 %shr.i.i161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i161, label %do.body26.if.then.i165_crit_edge [
    i32 2, label %do.body26.if.else.i167_crit_edge
    i32 3, label %is_highmem_idx.exit.i163
  ]

do.body26.if.else.i167_crit_edge:                 ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i167

do.body26.if.then.i165_crit_edge:                 ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i165

is_highmem_idx.exit.i163:                         ; preds = %do.body26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %65 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp2.i.not.i162 = icmp eq i32 %65, 2
  br i1 %cmp2.i.not.i162, label %is_highmem_idx.exit.i163.if.else.i167_crit_edge, label %is_highmem_idx.exit.i163.if.then.i165_crit_edge

is_highmem_idx.exit.i163.if.then.i165_crit_edge:  ; preds = %is_highmem_idx.exit.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i165

is_highmem_idx.exit.i163.if.else.i167_crit_edge:  ; preds = %is_highmem_idx.exit.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i167

if.then.i165:                                     ; preds = %is_highmem_idx.exit.i163.if.then.i165_crit_edge, %do.body26.if.then.i165_crit_edge
  %call5.i164 = tail call ptr @page_address(ptr noundef %61) #8
  br label %kmap.exit170

if.else.i167:                                     ; preds = %is_highmem_idx.exit.i163.if.else.i167_crit_edge, %do.body26.if.else.i167_crit_edge
  %call6.i166 = tail call ptr @kmap_high(ptr noundef %61) #8
  br label %kmap.exit170

kmap.exit170:                                     ; preds = %if.else.i167, %if.then.i165
  %addr.0.i168 = phi ptr [ %call6.i166, %if.else.i167 ], [ %call5.i164, %if.then.i165 ]
  %add.ptr28 = getelementptr i8, ptr %addr.0.i168, i32 %src.addr.0
  %66 = ptrtoint ptr %dst_page.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dst_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %shr.i.i171 = lshr i32 %69, 30
  %70 = zext i32 %shr.i.i171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i.i171, label %kmap.exit170.if.then.i175_crit_edge [
    i32 2, label %kmap.exit170.if.else.i177_crit_edge
    i32 3, label %is_highmem_idx.exit.i173
  ]

kmap.exit170.if.else.i177_crit_edge:              ; preds = %kmap.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i177

kmap.exit170.if.then.i175_crit_edge:              ; preds = %kmap.exit170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i175

is_highmem_idx.exit.i173:                         ; preds = %kmap.exit170
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %71 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp2.i.not.i172 = icmp eq i32 %71, 2
  br i1 %cmp2.i.not.i172, label %is_highmem_idx.exit.i173.if.else.i177_crit_edge, label %is_highmem_idx.exit.i173.if.then.i175_crit_edge

is_highmem_idx.exit.i173.if.then.i175_crit_edge:  ; preds = %is_highmem_idx.exit.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i175

is_highmem_idx.exit.i173.if.else.i177_crit_edge:  ; preds = %is_highmem_idx.exit.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i177

if.then.i175:                                     ; preds = %is_highmem_idx.exit.i173.if.then.i175_crit_edge, %kmap.exit170.if.then.i175_crit_edge
  %call5.i174 = tail call ptr @page_address(ptr noundef %67) #8
  br label %kmap.exit180

if.else.i177:                                     ; preds = %is_highmem_idx.exit.i173.if.else.i177_crit_edge, %kmap.exit170.if.else.i177_crit_edge
  %call6.i176 = tail call ptr @kmap_high(ptr noundef %67) #8
  br label %kmap.exit180

kmap.exit180:                                     ; preds = %if.else.i177, %if.then.i175
  %addr.0.i178 = phi ptr [ %call6.i176, %if.else.i177 ], [ %call5.i174, %if.then.i175 ]
  %add.ptr30 = getelementptr i8, ptr %addr.0.i178, i32 %dst.addr.0
  %sub31 = sub i32 4096, %src.addr.0
  %sub32 = sub i32 4096, %dst.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub31, i32 %sub32)
  %cmp33 = icmp ult i32 %sub31, %sub32
  %add36 = add i32 %dst.addr.0, %sub31
  %add39 = add i32 %sub32, %src.addr.0
  %72 = tail call i32 @llvm.umin.i32(i32 %sub31, i32 %sub32)
  %src.addr.1 = select i1 %cmp33, i32 0, i32 %add39
  %dst.addr.1 = select i1 %cmp33, i32 %add36, i32 0
  %73 = tail call i32 @llvm.smin.i32(i32 %len.addr.1, i32 %72)
  %74 = call ptr @memcpy(ptr %add.ptr30, ptr %add.ptr28, i32 %73)
  %75 = ptrtoint ptr %src_page.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %src_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %shr.i.i181 = lshr i32 %78, 30
  %79 = zext i32 %shr.i.i181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %shr.i.i181, label %kmap.exit180.kunmap.exit185_crit_edge [
    i32 2, label %kmap.exit180.if.end.i184_crit_edge
    i32 3, label %is_highmem_idx.exit.i183
  ]

kmap.exit180.if.end.i184_crit_edge:               ; preds = %kmap.exit180
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i184

kmap.exit180.kunmap.exit185_crit_edge:            ; preds = %kmap.exit180
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit185

is_highmem_idx.exit.i183:                         ; preds = %kmap.exit180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %80 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp2.i.not.i182 = icmp eq i32 %80, 2
  br i1 %cmp2.i.not.i182, label %is_highmem_idx.exit.i183.if.end.i184_crit_edge, label %is_highmem_idx.exit.i183.kunmap.exit185_crit_edge

is_highmem_idx.exit.i183.kunmap.exit185_crit_edge: ; preds = %is_highmem_idx.exit.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit185

is_highmem_idx.exit.i183.if.end.i184_crit_edge:   ; preds = %is_highmem_idx.exit.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i184

if.end.i184:                                      ; preds = %is_highmem_idx.exit.i183.if.end.i184_crit_edge, %kmap.exit180.if.end.i184_crit_edge
  tail call void @kunmap_high(ptr noundef %76) #8
  br label %kunmap.exit185

kunmap.exit185:                                   ; preds = %if.end.i184, %is_highmem_idx.exit.i183.kunmap.exit185_crit_edge, %kmap.exit180.kunmap.exit185_crit_edge
  %81 = ptrtoint ptr %dst_page.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dst_page.1, align 4
  %call47 = tail call zeroext i1 @set_page_dirty(ptr noundef %82) #8
  %83 = ptrtoint ptr %dst_page.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dst_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %shr.i.i186 = lshr i32 %86, 30
  %87 = zext i32 %shr.i.i186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %shr.i.i186, label %kunmap.exit185.kunmap.exit190_crit_edge [
    i32 2, label %kunmap.exit185.if.end.i189_crit_edge
    i32 3, label %is_highmem_idx.exit.i188
  ]

kunmap.exit185.if.end.i189_crit_edge:             ; preds = %kunmap.exit185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i189

kunmap.exit185.kunmap.exit190_crit_edge:          ; preds = %kunmap.exit185
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit190

is_highmem_idx.exit.i188:                         ; preds = %kunmap.exit185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %88 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp2.i.not.i187 = icmp eq i32 %88, 2
  br i1 %cmp2.i.not.i187, label %is_highmem_idx.exit.i188.if.end.i189_crit_edge, label %is_highmem_idx.exit.i188.kunmap.exit190_crit_edge

is_highmem_idx.exit.i188.kunmap.exit190_crit_edge: ; preds = %is_highmem_idx.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit190

is_highmem_idx.exit.i188.if.end.i189_crit_edge:   ; preds = %is_highmem_idx.exit.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i189

if.end.i189:                                      ; preds = %is_highmem_idx.exit.i188.if.end.i189_crit_edge, %kunmap.exit185.if.end.i189_crit_edge
  tail call void @kunmap_high(ptr noundef %84) #8
  br label %kunmap.exit190

kunmap.exit190:                                   ; preds = %if.end.i189, %is_highmem_idx.exit.i188.kunmap.exit190_crit_edge, %kunmap.exit185.kunmap.exit190_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst.addr.1)
  %tobool48.not = icmp eq i32 %dst.addr.1, 0
  %not.tobool48.not = xor i1 %tobool48.not, true
  %src_page.2.idx = zext i1 %not.tobool48.not to i32
  %src_page.2 = getelementptr ptr, ptr %src_page.1, i32 %src_page.2.idx
  %dst_page.2.idx = zext i1 %tobool48.not to i32
  %dst_page.2 = getelementptr ptr, ptr %dst_page.1, i32 %dst_page.2.idx
  %sub55 = sub i32 %len.addr.1, %73
  %tobool56.not = icmp eq i32 %sub55, 0
  br i1 %tobool56.not, label %kunmap.exit190.cleanup_crit_edge, label %kunmap.exit190.do.body26_crit_edge

kunmap.exit190.do.body26_crit_edge:               ; preds = %kunmap.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body26

kunmap.exit190.cleanup_crit_edge:                 ; preds = %kunmap.exit190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit190.cleanup_crit_edge, %kunmap.exit160.cleanup_crit_edge, %kunmap.exit130.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_move(ptr nocapture noundef readonly %node, i32 noundef %dst, i32 noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 12
  %0 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_offset, align 4
  %add = add i32 %1, %src
  %add2 = add i32 %1, %dst
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %add)
  %cmp = icmp sgt i32 %add2, %add
  br i1 %cmp, label %if.then3, label %if.else54

if.then3:                                         ; preds = %if.end
  %sub = add i32 %len, -1
  %add4 = add i32 %add, %sub
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %shr = ashr i32 %add4, 12
  %add.ptr = getelementptr ptr, ptr %page, i32 %shr
  %and = and i32 %add4, 4095
  %add5 = add nuw nsw i32 %and, 1
  %add7 = add i32 %add2, %sub
  %shr10 = ashr i32 %add7, 12
  %add.ptr11 = getelementptr ptr, ptr %page, i32 %shr10
  %and12 = and i32 %add7, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and12)
  %cmp14 = icmp eq i32 %and, %and12
  br i1 %cmp14, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %len)
  %cmp16425 = icmp slt i32 %add5, %len
  br i1 %cmp16425, label %while.body.preheader, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr11, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shr.i.i.peel = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %shr.i.i.peel, label %while.body.preheader.if.then.i.peel_crit_edge [
    i32 2, label %while.body.preheader.if.else.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i.peel
  ]

while.body.preheader.if.else.i.peel_crit_edge:    ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.peel

while.body.preheader.if.then.i.peel_crit_edge:    ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.peel

is_highmem_idx.exit.i.peel:                       ; preds = %while.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i.peel = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i.peel, label %is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge, label %is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge

is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.peel

is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.peel

if.else.i.peel:                                   ; preds = %is_highmem_idx.exit.i.peel.if.else.i.peel_crit_edge, %while.body.preheader.if.else.i.peel_crit_edge
  %call6.i.peel = tail call ptr @kmap_high(ptr noundef %3) #8
  br label %kmap.exit.peel

if.then.i.peel:                                   ; preds = %is_highmem_idx.exit.i.peel.if.then.i.peel_crit_edge, %while.body.preheader.if.then.i.peel_crit_edge
  %call5.i.peel = tail call ptr @page_address(ptr noundef %3) #8
  br label %kmap.exit.peel

kmap.exit.peel:                                   ; preds = %if.then.i.peel, %if.else.i.peel
  %addr.0.i.peel = phi ptr [ %call6.i.peel, %if.else.i.peel ], [ %call5.i.peel, %if.then.i.peel ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %shr.i.i251.peel = lshr i32 %11, 30
  %12 = zext i32 %shr.i.i251.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %shr.i.i251.peel, label %kmap.exit.peel.if.then.i255.peel_crit_edge [
    i32 2, label %kmap.exit.peel.if.else.i257.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i253.peel
  ]

kmap.exit.peel.if.else.i257.peel_crit_edge:       ; preds = %kmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i257.peel

kmap.exit.peel.if.then.i255.peel_crit_edge:       ; preds = %kmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i255.peel

is_highmem_idx.exit.i253.peel:                    ; preds = %kmap.exit.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.not.i252.peel = icmp eq i32 %13, 2
  br i1 %cmp2.i.not.i252.peel, label %is_highmem_idx.exit.i253.peel.if.else.i257.peel_crit_edge, label %is_highmem_idx.exit.i253.peel.if.then.i255.peel_crit_edge

is_highmem_idx.exit.i253.peel.if.then.i255.peel_crit_edge: ; preds = %is_highmem_idx.exit.i253.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i255.peel

is_highmem_idx.exit.i253.peel.if.else.i257.peel_crit_edge: ; preds = %is_highmem_idx.exit.i253.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i257.peel

if.else.i257.peel:                                ; preds = %is_highmem_idx.exit.i253.peel.if.else.i257.peel_crit_edge, %kmap.exit.peel.if.else.i257.peel_crit_edge
  %call6.i256.peel = tail call ptr @kmap_high(ptr noundef %9) #8
  br label %kmap.exit259.peel

if.then.i255.peel:                                ; preds = %is_highmem_idx.exit.i253.peel.if.then.i255.peel_crit_edge, %kmap.exit.peel.if.then.i255.peel_crit_edge
  %call5.i254.peel = tail call ptr @page_address(ptr noundef %9) #8
  br label %kmap.exit259.peel

kmap.exit259.peel:                                ; preds = %if.then.i255.peel, %if.else.i257.peel
  %addr.0.i258.peel = phi ptr [ %call6.i256.peel, %if.else.i257.peel ], [ %call5.i254.peel, %if.then.i255.peel ]
  %14 = call ptr @memmove(ptr %addr.0.i.peel, ptr %addr.0.i258.peel, i32 %add5)
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %shr.i.i260.peel = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i260.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %shr.i.i260.peel, label %kmap.exit259.peel.kunmap.exit.peel_crit_edge [
    i32 2, label %kmap.exit259.peel.if.end.i.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i262.peel
  ]

kmap.exit259.peel.if.end.i.peel_crit_edge:        ; preds = %kmap.exit259.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.peel

kmap.exit259.peel.kunmap.exit.peel_crit_edge:     ; preds = %kmap.exit259.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit.peel

is_highmem_idx.exit.i262.peel:                    ; preds = %kmap.exit259.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i261.peel = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i261.peel, label %is_highmem_idx.exit.i262.peel.if.end.i.peel_crit_edge, label %is_highmem_idx.exit.i262.peel.kunmap.exit.peel_crit_edge

is_highmem_idx.exit.i262.peel.kunmap.exit.peel_crit_edge: ; preds = %is_highmem_idx.exit.i262.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit.peel

is_highmem_idx.exit.i262.peel.if.end.i.peel_crit_edge: ; preds = %is_highmem_idx.exit.i262.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.peel

if.end.i.peel:                                    ; preds = %is_highmem_idx.exit.i262.peel.if.end.i.peel_crit_edge, %kmap.exit259.peel.if.end.i.peel_crit_edge
  tail call void @kunmap_high(ptr noundef %16) #8
  br label %kunmap.exit.peel

kunmap.exit.peel:                                 ; preds = %if.end.i.peel, %is_highmem_idx.exit.i262.peel.kunmap.exit.peel_crit_edge, %kmap.exit259.peel.kunmap.exit.peel_crit_edge
  %21 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr11, align 4
  %call18.peel = tail call zeroext i1 @set_page_dirty(ptr noundef %22) #8
  %23 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr11, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %shr.i.i263.peel = lshr i32 %26, 30
  %27 = zext i32 %shr.i.i263.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %shr.i.i263.peel, label %kunmap.exit.peel.kunmap.exit267.peel_crit_edge [
    i32 2, label %kunmap.exit.peel.if.end.i266.peel_crit_edge
    i32 3, label %is_highmem_idx.exit.i265.peel
  ]

kunmap.exit.peel.if.end.i266.peel_crit_edge:      ; preds = %kunmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i266.peel

kunmap.exit.peel.kunmap.exit267.peel_crit_edge:   ; preds = %kunmap.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit267.peel

is_highmem_idx.exit.i265.peel:                    ; preds = %kunmap.exit.peel
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %28 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i.not.i264.peel = icmp eq i32 %28, 2
  br i1 %cmp2.i.not.i264.peel, label %is_highmem_idx.exit.i265.peel.if.end.i266.peel_crit_edge, label %is_highmem_idx.exit.i265.peel.kunmap.exit267.peel_crit_edge

is_highmem_idx.exit.i265.peel.kunmap.exit267.peel_crit_edge: ; preds = %is_highmem_idx.exit.i265.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit267.peel

is_highmem_idx.exit.i265.peel.if.end.i266.peel_crit_edge: ; preds = %is_highmem_idx.exit.i265.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i266.peel

if.end.i266.peel:                                 ; preds = %is_highmem_idx.exit.i265.peel.if.end.i266.peel_crit_edge, %kunmap.exit.peel.if.end.i266.peel_crit_edge
  tail call void @kunmap_high(ptr noundef %24) #8
  br label %kunmap.exit267.peel

kunmap.exit267.peel:                              ; preds = %if.end.i266.peel, %is_highmem_idx.exit.i265.peel.kunmap.exit267.peel_crit_edge, %kunmap.exit.peel.kunmap.exit267.peel_crit_edge
  %sub19.peel = sub i32 %len, %add5
  %incdec.ptr.peel = getelementptr ptr, ptr %add.ptr, i32 -1
  %incdec.ptr20.peel = getelementptr ptr, ptr %add.ptr11, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub19.peel)
  %cmp16.peel = icmp sgt i32 %sub19.peel, 4096
  br i1 %cmp16.peel, label %kunmap.exit267.peel.while.body_crit_edge, label %kunmap.exit267.peel.while.end_crit_edge

kunmap.exit267.peel.while.end_crit_edge:          ; preds = %kunmap.exit267.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

kunmap.exit267.peel.while.body_crit_edge:         ; preds = %kunmap.exit267.peel
  br label %while.body

while.body:                                       ; preds = %kunmap.exit267.while.body_crit_edge, %kunmap.exit267.peel.while.body_crit_edge
  %len.addr.0428 = phi i32 [ %sub19, %kunmap.exit267.while.body_crit_edge ], [ %sub19.peel, %kunmap.exit267.peel.while.body_crit_edge ]
  %src_page.0427 = phi ptr [ %incdec.ptr, %kunmap.exit267.while.body_crit_edge ], [ %incdec.ptr.peel, %kunmap.exit267.peel.while.body_crit_edge ]
  %dst_page.0426 = phi ptr [ %incdec.ptr20, %kunmap.exit267.while.body_crit_edge ], [ %incdec.ptr20.peel, %kunmap.exit267.peel.while.body_crit_edge ]
  %29 = ptrtoint ptr %dst_page.0426 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dst_page.0426, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %shr.i.i = lshr i32 %32, 30
  %33 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %shr.i.i, label %while.body.if.then.i_crit_edge [
    i32 2, label %while.body.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.body.if.else.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %34 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp2.i.not.i = icmp eq i32 %34, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %30) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %while.body.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %30) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %35 = ptrtoint ptr %src_page.0427 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src_page.0427, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %shr.i.i251 = lshr i32 %38, 30
  %39 = zext i32 %shr.i.i251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %shr.i.i251, label %kmap.exit.if.then.i255_crit_edge [
    i32 2, label %kmap.exit.if.else.i257_crit_edge
    i32 3, label %is_highmem_idx.exit.i253
  ]

kmap.exit.if.else.i257_crit_edge:                 ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i257

kmap.exit.if.then.i255_crit_edge:                 ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i255

is_highmem_idx.exit.i253:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %40 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp2.i.not.i252 = icmp eq i32 %40, 2
  br i1 %cmp2.i.not.i252, label %is_highmem_idx.exit.i253.if.else.i257_crit_edge, label %is_highmem_idx.exit.i253.if.then.i255_crit_edge

is_highmem_idx.exit.i253.if.then.i255_crit_edge:  ; preds = %is_highmem_idx.exit.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i255

is_highmem_idx.exit.i253.if.else.i257_crit_edge:  ; preds = %is_highmem_idx.exit.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i257

if.then.i255:                                     ; preds = %is_highmem_idx.exit.i253.if.then.i255_crit_edge, %kmap.exit.if.then.i255_crit_edge
  %call5.i254 = tail call ptr @page_address(ptr noundef %36) #8
  br label %kmap.exit259

if.else.i257:                                     ; preds = %is_highmem_idx.exit.i253.if.else.i257_crit_edge, %kmap.exit.if.else.i257_crit_edge
  %call6.i256 = tail call ptr @kmap_high(ptr noundef %36) #8
  br label %kmap.exit259

kmap.exit259:                                     ; preds = %if.else.i257, %if.then.i255
  %addr.0.i258 = phi ptr [ %call6.i256, %if.else.i257 ], [ %call5.i254, %if.then.i255 ]
  %41 = call ptr @memmove(ptr %addr.0.i, ptr %addr.0.i258, i32 4096)
  %42 = ptrtoint ptr %src_page.0427 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %src_page.0427, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %shr.i.i260 = lshr i32 %45, 30
  %46 = zext i32 %shr.i.i260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %shr.i.i260, label %kmap.exit259.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit259.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i262
  ]

kmap.exit259.if.end.i_crit_edge:                  ; preds = %kmap.exit259
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

kmap.exit259.kunmap.exit_crit_edge:               ; preds = %kmap.exit259
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i262:                         ; preds = %kmap.exit259
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %47 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.not.i261 = icmp eq i32 %47, 2
  br i1 %cmp2.i.not.i261, label %is_highmem_idx.exit.i262.if.end.i_crit_edge, label %is_highmem_idx.exit.i262.kunmap.exit_crit_edge

is_highmem_idx.exit.i262.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i262
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i262.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i262
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i262.if.end.i_crit_edge, %kmap.exit259.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %43) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i262.kunmap.exit_crit_edge, %kmap.exit259.kunmap.exit_crit_edge
  %48 = ptrtoint ptr %dst_page.0426 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dst_page.0426, align 4
  %call18 = tail call zeroext i1 @set_page_dirty(ptr noundef %49) #8
  %50 = ptrtoint ptr %dst_page.0426 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst_page.0426, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %shr.i.i263 = lshr i32 %53, 30
  %54 = zext i32 %shr.i.i263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %shr.i.i263, label %kunmap.exit.kunmap.exit267_crit_edge [
    i32 2, label %kunmap.exit.if.end.i266_crit_edge
    i32 3, label %is_highmem_idx.exit.i265
  ]

kunmap.exit.if.end.i266_crit_edge:                ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i266

kunmap.exit.kunmap.exit267_crit_edge:             ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit267

is_highmem_idx.exit.i265:                         ; preds = %kunmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %55 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp2.i.not.i264 = icmp eq i32 %55, 2
  br i1 %cmp2.i.not.i264, label %is_highmem_idx.exit.i265.if.end.i266_crit_edge, label %is_highmem_idx.exit.i265.kunmap.exit267_crit_edge

is_highmem_idx.exit.i265.kunmap.exit267_crit_edge: ; preds = %is_highmem_idx.exit.i265
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit267

is_highmem_idx.exit.i265.if.end.i266_crit_edge:   ; preds = %is_highmem_idx.exit.i265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i266

if.end.i266:                                      ; preds = %is_highmem_idx.exit.i265.if.end.i266_crit_edge, %kunmap.exit.if.end.i266_crit_edge
  tail call void @kunmap_high(ptr noundef %51) #8
  br label %kunmap.exit267

kunmap.exit267:                                   ; preds = %if.end.i266, %is_highmem_idx.exit.i265.kunmap.exit267_crit_edge, %kunmap.exit.kunmap.exit267_crit_edge
  %sub19 = add i32 %len.addr.0428, -4096
  %incdec.ptr = getelementptr ptr, ptr %src_page.0427, i32 -1
  %incdec.ptr20 = getelementptr ptr, ptr %dst_page.0426, i32 -1
  %cmp16 = icmp sgt i32 %sub19, 4096
  br i1 %cmp16, label %kunmap.exit267.while.body_crit_edge, label %kunmap.exit267.while.end_crit_edge, !llvm.loop !34

kunmap.exit267.while.end_crit_edge:               ; preds = %kunmap.exit267
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

kunmap.exit267.while.body_crit_edge:              ; preds = %kunmap.exit267
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %kunmap.exit267.while.end_crit_edge, %kunmap.exit267.peel.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %dst_page.0.lcssa = phi ptr [ %add.ptr11, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr20.peel, %kunmap.exit267.peel.while.end_crit_edge ], [ %incdec.ptr20, %kunmap.exit267.while.end_crit_edge ]
  %src_page.0.lcssa = phi ptr [ %add.ptr, %while.cond.preheader.while.end_crit_edge ], [ %incdec.ptr.peel, %kunmap.exit267.peel.while.end_crit_edge ], [ %incdec.ptr, %kunmap.exit267.while.end_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %while.cond.preheader.while.end_crit_edge ], [ %sub19.peel, %kunmap.exit267.peel.while.end_crit_edge ], [ %sub19, %kunmap.exit267.while.end_crit_edge ]
  %src.addr.0.lcssa = phi i32 [ %add5, %while.cond.preheader.while.end_crit_edge ], [ 4096, %kunmap.exit267.peel.while.end_crit_edge ], [ 4096, %kunmap.exit267.while.end_crit_edge ]
  %sub21 = sub i32 %src.addr.0.lcssa, %len.addr.0.lcssa
  %56 = ptrtoint ptr %dst_page.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dst_page.0.lcssa, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %shr.i.i268 = lshr i32 %59, 30
  %60 = zext i32 %shr.i.i268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %shr.i.i268, label %while.end.if.then.i272_crit_edge [
    i32 2, label %while.end.if.else.i274_crit_edge
    i32 3, label %is_highmem_idx.exit.i270
  ]

while.end.if.else.i274_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i274

while.end.if.then.i272_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i272

is_highmem_idx.exit.i270:                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %61 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp2.i.not.i269 = icmp eq i32 %61, 2
  br i1 %cmp2.i.not.i269, label %is_highmem_idx.exit.i270.if.else.i274_crit_edge, label %is_highmem_idx.exit.i270.if.then.i272_crit_edge

is_highmem_idx.exit.i270.if.then.i272_crit_edge:  ; preds = %is_highmem_idx.exit.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i272

is_highmem_idx.exit.i270.if.else.i274_crit_edge:  ; preds = %is_highmem_idx.exit.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i274

if.then.i272:                                     ; preds = %is_highmem_idx.exit.i270.if.then.i272_crit_edge, %while.end.if.then.i272_crit_edge
  %call5.i271 = tail call ptr @page_address(ptr noundef %57) #8
  br label %kmap.exit277

if.else.i274:                                     ; preds = %is_highmem_idx.exit.i270.if.else.i274_crit_edge, %while.end.if.else.i274_crit_edge
  %call6.i273 = tail call ptr @kmap_high(ptr noundef %57) #8
  br label %kmap.exit277

kmap.exit277:                                     ; preds = %if.else.i274, %if.then.i272
  %addr.0.i275 = phi ptr [ %call6.i273, %if.else.i274 ], [ %call5.i271, %if.then.i272 ]
  %add.ptr23 = getelementptr i8, ptr %addr.0.i275, i32 %sub21
  %62 = ptrtoint ptr %src_page.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %src_page.0.lcssa, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %shr.i.i278 = lshr i32 %65, 30
  %66 = zext i32 %shr.i.i278 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr.i.i278, label %kmap.exit277.if.then.i282_crit_edge [
    i32 2, label %kmap.exit277.if.else.i284_crit_edge
    i32 3, label %is_highmem_idx.exit.i280
  ]

kmap.exit277.if.else.i284_crit_edge:              ; preds = %kmap.exit277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i284

kmap.exit277.if.then.i282_crit_edge:              ; preds = %kmap.exit277
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i282

is_highmem_idx.exit.i280:                         ; preds = %kmap.exit277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %67 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp2.i.not.i279 = icmp eq i32 %67, 2
  br i1 %cmp2.i.not.i279, label %is_highmem_idx.exit.i280.if.else.i284_crit_edge, label %is_highmem_idx.exit.i280.if.then.i282_crit_edge

is_highmem_idx.exit.i280.if.then.i282_crit_edge:  ; preds = %is_highmem_idx.exit.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i282

is_highmem_idx.exit.i280.if.else.i284_crit_edge:  ; preds = %is_highmem_idx.exit.i280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i284

if.then.i282:                                     ; preds = %is_highmem_idx.exit.i280.if.then.i282_crit_edge, %kmap.exit277.if.then.i282_crit_edge
  %call5.i281 = tail call ptr @page_address(ptr noundef %63) #8
  br label %kmap.exit287

if.else.i284:                                     ; preds = %is_highmem_idx.exit.i280.if.else.i284_crit_edge, %kmap.exit277.if.else.i284_crit_edge
  %call6.i283 = tail call ptr @kmap_high(ptr noundef %63) #8
  br label %kmap.exit287

kmap.exit287:                                     ; preds = %if.else.i284, %if.then.i282
  %addr.0.i285 = phi ptr [ %call6.i283, %if.else.i284 ], [ %call5.i281, %if.then.i282 ]
  %add.ptr25 = getelementptr i8, ptr %addr.0.i285, i32 %sub21
  %68 = call ptr @memmove(ptr %add.ptr23, ptr %add.ptr25, i32 %len.addr.0.lcssa)
  %69 = ptrtoint ptr %src_page.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %src_page.0.lcssa, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %shr.i.i288 = lshr i32 %72, 30
  %73 = zext i32 %shr.i.i288 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr.i.i288, label %kmap.exit287.kunmap.exit292_crit_edge [
    i32 2, label %kmap.exit287.if.end.i291_crit_edge
    i32 3, label %is_highmem_idx.exit.i290
  ]

kmap.exit287.if.end.i291_crit_edge:               ; preds = %kmap.exit287
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i291

kmap.exit287.kunmap.exit292_crit_edge:            ; preds = %kmap.exit287
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit292

is_highmem_idx.exit.i290:                         ; preds = %kmap.exit287
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %74 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp2.i.not.i289 = icmp eq i32 %74, 2
  br i1 %cmp2.i.not.i289, label %is_highmem_idx.exit.i290.if.end.i291_crit_edge, label %is_highmem_idx.exit.i290.kunmap.exit292_crit_edge

is_highmem_idx.exit.i290.kunmap.exit292_crit_edge: ; preds = %is_highmem_idx.exit.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit292

is_highmem_idx.exit.i290.if.end.i291_crit_edge:   ; preds = %is_highmem_idx.exit.i290
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i291

if.end.i291:                                      ; preds = %is_highmem_idx.exit.i290.if.end.i291_crit_edge, %kmap.exit287.if.end.i291_crit_edge
  tail call void @kunmap_high(ptr noundef %70) #8
  br label %kunmap.exit292

kunmap.exit292:                                   ; preds = %if.end.i291, %is_highmem_idx.exit.i290.kunmap.exit292_crit_edge, %kmap.exit287.kunmap.exit292_crit_edge
  %75 = ptrtoint ptr %dst_page.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dst_page.0.lcssa, align 4
  %call26 = tail call zeroext i1 @set_page_dirty(ptr noundef %76) #8
  %77 = ptrtoint ptr %dst_page.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dst_page.0.lcssa, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %shr.i.i293 = lshr i32 %80, 30
  %81 = zext i32 %shr.i.i293 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %shr.i.i293, label %kunmap.exit292.cleanup_crit_edge [
    i32 2, label %kunmap.exit292.if.end.i296_crit_edge
    i32 3, label %is_highmem_idx.exit.i295
  ]

kunmap.exit292.if.end.i296_crit_edge:             ; preds = %kunmap.exit292
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i296

kunmap.exit292.cleanup_crit_edge:                 ; preds = %kunmap.exit292
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_highmem_idx.exit.i295:                         ; preds = %kunmap.exit292
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %82 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp2.i.not.i294 = icmp eq i32 %82, 2
  br i1 %cmp2.i.not.i294, label %is_highmem_idx.exit.i295.if.end.i296_crit_edge, label %is_highmem_idx.exit.i295.cleanup_crit_edge

is_highmem_idx.exit.i295.cleanup_crit_edge:       ; preds = %is_highmem_idx.exit.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_highmem_idx.exit.i295.if.end.i296_crit_edge:   ; preds = %is_highmem_idx.exit.i295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i296

if.end.i296:                                      ; preds = %is_highmem_idx.exit.i295.if.end.i296_crit_edge, %kunmap.exit292.if.end.i296_crit_edge
  tail call void @kunmap_high(ptr noundef %78) #8
  br label %cleanup

if.else:                                          ; preds = %if.then3
  %add13 = add nuw nsw i32 %and12, 1
  br label %do.body27

do.body27:                                        ; preds = %kunmap.exit327.do.body27_crit_edge, %if.else
  %dst_page.1 = phi ptr [ %add.ptr11, %if.else ], [ %dst_page.2, %kunmap.exit327.do.body27_crit_edge ]
  %src_page.1 = phi ptr [ %add.ptr, %if.else ], [ %src_page.2, %kunmap.exit327.do.body27_crit_edge ]
  %len.addr.1 = phi i32 [ %len, %if.else ], [ %sub50, %kunmap.exit327.do.body27_crit_edge ]
  %src.addr.1 = phi i32 [ %add5, %if.else ], [ %src.addr.2, %kunmap.exit327.do.body27_crit_edge ]
  %dst.addr.0 = phi i32 [ %add13, %if.else ], [ %dst.addr.1, %kunmap.exit327.do.body27_crit_edge ]
  %83 = ptrtoint ptr %src_page.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %src_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %shr.i.i298 = lshr i32 %86, 30
  %87 = zext i32 %shr.i.i298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr.i.i298, label %do.body27.if.then.i302_crit_edge [
    i32 2, label %do.body27.if.else.i304_crit_edge
    i32 3, label %is_highmem_idx.exit.i300
  ]

do.body27.if.else.i304_crit_edge:                 ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i304

do.body27.if.then.i302_crit_edge:                 ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i302

is_highmem_idx.exit.i300:                         ; preds = %do.body27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %88 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp2.i.not.i299 = icmp eq i32 %88, 2
  br i1 %cmp2.i.not.i299, label %is_highmem_idx.exit.i300.if.else.i304_crit_edge, label %is_highmem_idx.exit.i300.if.then.i302_crit_edge

is_highmem_idx.exit.i300.if.then.i302_crit_edge:  ; preds = %is_highmem_idx.exit.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i302

is_highmem_idx.exit.i300.if.else.i304_crit_edge:  ; preds = %is_highmem_idx.exit.i300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i304

if.then.i302:                                     ; preds = %is_highmem_idx.exit.i300.if.then.i302_crit_edge, %do.body27.if.then.i302_crit_edge
  %call5.i301 = tail call ptr @page_address(ptr noundef %84) #8
  br label %kmap.exit307

if.else.i304:                                     ; preds = %is_highmem_idx.exit.i300.if.else.i304_crit_edge, %do.body27.if.else.i304_crit_edge
  %call6.i303 = tail call ptr @kmap_high(ptr noundef %84) #8
  br label %kmap.exit307

kmap.exit307:                                     ; preds = %if.else.i304, %if.then.i302
  %addr.0.i305 = phi ptr [ %call6.i303, %if.else.i304 ], [ %call5.i301, %if.then.i302 ]
  %add.ptr29 = getelementptr i8, ptr %addr.0.i305, i32 %src.addr.1
  %89 = ptrtoint ptr %dst_page.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dst_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %shr.i.i308 = lshr i32 %92, 30
  %93 = zext i32 %shr.i.i308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %shr.i.i308, label %kmap.exit307.if.then.i312_crit_edge [
    i32 2, label %kmap.exit307.if.else.i314_crit_edge
    i32 3, label %is_highmem_idx.exit.i310
  ]

kmap.exit307.if.else.i314_crit_edge:              ; preds = %kmap.exit307
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i314

kmap.exit307.if.then.i312_crit_edge:              ; preds = %kmap.exit307
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i312

is_highmem_idx.exit.i310:                         ; preds = %kmap.exit307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %94 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %94)
  %cmp2.i.not.i309 = icmp eq i32 %94, 2
  br i1 %cmp2.i.not.i309, label %is_highmem_idx.exit.i310.if.else.i314_crit_edge, label %is_highmem_idx.exit.i310.if.then.i312_crit_edge

is_highmem_idx.exit.i310.if.then.i312_crit_edge:  ; preds = %is_highmem_idx.exit.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i312

is_highmem_idx.exit.i310.if.else.i314_crit_edge:  ; preds = %is_highmem_idx.exit.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i314

if.then.i312:                                     ; preds = %is_highmem_idx.exit.i310.if.then.i312_crit_edge, %kmap.exit307.if.then.i312_crit_edge
  %call5.i311 = tail call ptr @page_address(ptr noundef %90) #8
  br label %kmap.exit317

if.else.i314:                                     ; preds = %is_highmem_idx.exit.i310.if.else.i314_crit_edge, %kmap.exit307.if.else.i314_crit_edge
  %call6.i313 = tail call ptr @kmap_high(ptr noundef %90) #8
  br label %kmap.exit317

kmap.exit317:                                     ; preds = %if.else.i314, %if.then.i312
  %addr.0.i315 = phi ptr [ %call6.i313, %if.else.i314 ], [ %call5.i311, %if.then.i312 ]
  %add.ptr31 = getelementptr i8, ptr %addr.0.i315, i32 %dst.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %src.addr.1, i32 %dst.addr.0)
  %cmp32 = icmp slt i32 %src.addr.1, %dst.addr.0
  %sub34 = sub i32 %dst.addr.0, %src.addr.1
  %sub36 = sub i32 %src.addr.1, %dst.addr.0
  %95 = tail call i32 @llvm.smin.i32(i32 %src.addr.1, i32 %dst.addr.0)
  %src.addr.2 = select i1 %cmp32, i32 4096, i32 %sub36
  %dst.addr.1 = select i1 %cmp32, i32 %sub34, i32 4096
  %96 = tail call i32 @llvm.smin.i32(i32 %len.addr.1, i32 %95)
  %idx.neg = sub i32 0, %96
  %add.ptr39 = getelementptr i8, ptr %add.ptr31, i32 %idx.neg
  %add.ptr41 = getelementptr i8, ptr %add.ptr29, i32 %idx.neg
  %97 = call ptr @memmove(ptr %add.ptr39, ptr %add.ptr41, i32 %96)
  %98 = ptrtoint ptr %src_page.1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %src_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %shr.i.i318 = lshr i32 %101, 30
  %102 = zext i32 %shr.i.i318 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %shr.i.i318, label %kmap.exit317.kunmap.exit322_crit_edge [
    i32 2, label %kmap.exit317.if.end.i321_crit_edge
    i32 3, label %is_highmem_idx.exit.i320
  ]

kmap.exit317.if.end.i321_crit_edge:               ; preds = %kmap.exit317
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i321

kmap.exit317.kunmap.exit322_crit_edge:            ; preds = %kmap.exit317
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit322

is_highmem_idx.exit.i320:                         ; preds = %kmap.exit317
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %103 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp2.i.not.i319 = icmp eq i32 %103, 2
  br i1 %cmp2.i.not.i319, label %is_highmem_idx.exit.i320.if.end.i321_crit_edge, label %is_highmem_idx.exit.i320.kunmap.exit322_crit_edge

is_highmem_idx.exit.i320.kunmap.exit322_crit_edge: ; preds = %is_highmem_idx.exit.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit322

is_highmem_idx.exit.i320.if.end.i321_crit_edge:   ; preds = %is_highmem_idx.exit.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i321

if.end.i321:                                      ; preds = %is_highmem_idx.exit.i320.if.end.i321_crit_edge, %kmap.exit317.if.end.i321_crit_edge
  tail call void @kunmap_high(ptr noundef %99) #8
  br label %kunmap.exit322

kunmap.exit322:                                   ; preds = %if.end.i321, %is_highmem_idx.exit.i320.kunmap.exit322_crit_edge, %kmap.exit317.kunmap.exit322_crit_edge
  %104 = ptrtoint ptr %dst_page.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dst_page.1, align 4
  %call42 = tail call zeroext i1 @set_page_dirty(ptr noundef %105) #8
  %106 = ptrtoint ptr %dst_page.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dst_page.1, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %shr.i.i323 = lshr i32 %109, 30
  %110 = zext i32 %shr.i.i323 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %shr.i.i323, label %kunmap.exit322.kunmap.exit327_crit_edge [
    i32 2, label %kunmap.exit322.if.end.i326_crit_edge
    i32 3, label %is_highmem_idx.exit.i325
  ]

kunmap.exit322.if.end.i326_crit_edge:             ; preds = %kunmap.exit322
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i326

kunmap.exit322.kunmap.exit327_crit_edge:          ; preds = %kunmap.exit322
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit327

is_highmem_idx.exit.i325:                         ; preds = %kunmap.exit322
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %111 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp2.i.not.i324 = icmp eq i32 %111, 2
  br i1 %cmp2.i.not.i324, label %is_highmem_idx.exit.i325.if.end.i326_crit_edge, label %is_highmem_idx.exit.i325.kunmap.exit327_crit_edge

is_highmem_idx.exit.i325.kunmap.exit327_crit_edge: ; preds = %is_highmem_idx.exit.i325
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit327

is_highmem_idx.exit.i325.if.end.i326_crit_edge:   ; preds = %is_highmem_idx.exit.i325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i326

if.end.i326:                                      ; preds = %is_highmem_idx.exit.i325.if.end.i326_crit_edge, %kunmap.exit322.if.end.i326_crit_edge
  tail call void @kunmap_high(ptr noundef %107) #8
  br label %kunmap.exit327

kunmap.exit327:                                   ; preds = %if.end.i326, %is_highmem_idx.exit.i325.kunmap.exit327_crit_edge, %kunmap.exit322.kunmap.exit327_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dst.addr.1)
  %cmp43 = icmp eq i32 %dst.addr.1, 4096
  %dst_page.2.idx = sext i1 %cmp43 to i32
  %dst_page.2 = getelementptr ptr, ptr %dst_page.1, i32 %dst_page.2.idx
  %not.cmp43 = xor i1 %cmp43, true
  %src_page.2.idx = sext i1 %not.cmp43 to i32
  %src_page.2 = getelementptr ptr, ptr %src_page.1, i32 %src_page.2.idx
  %sub50 = sub i32 %len.addr.1, %96
  %tobool51.not = icmp eq i32 %sub50, 0
  br i1 %tobool51.not, label %kunmap.exit327.cleanup_crit_edge, label %kunmap.exit327.do.body27_crit_edge

kunmap.exit327.do.body27_crit_edge:               ; preds = %kunmap.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27

kunmap.exit327.cleanup_crit_edge:                 ; preds = %kunmap.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else54:                                        ; preds = %if.end
  %page55 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 13
  %shr57 = ashr i32 %add, 12
  %add.ptr58 = getelementptr ptr, ptr %page55, i32 %shr57
  %and59 = and i32 %add, 4095
  %shr62 = ashr i32 %add2, 12
  %add.ptr63 = getelementptr ptr, ptr %page55, i32 %shr62
  %and64 = and i32 %add2, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and59, i32 %and64)
  %cmp65 = icmp eq i32 %and59, %and64
  br i1 %cmp65, label %if.then66, label %if.else54.do.body98_crit_edge

if.else54.do.body98_crit_edge:                    ; preds = %if.else54
  br label %do.body98

if.then66:                                        ; preds = %if.else54
  %sub67 = sub nuw nsw i32 4096, %and59
  %112 = tail call i32 @llvm.smin.i32(i32 %sub67, i32 %len)
  %113 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr63, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %shr.i.i328 = lshr i32 %116, 30
  %117 = zext i32 %shr.i.i328 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %shr.i.i328, label %if.then66.if.then.i332_crit_edge [
    i32 2, label %if.then66.if.else.i334_crit_edge
    i32 3, label %is_highmem_idx.exit.i330
  ]

if.then66.if.else.i334_crit_edge:                 ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i334

if.then66.if.then.i332_crit_edge:                 ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i332

is_highmem_idx.exit.i330:                         ; preds = %if.then66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %118 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp2.i.not.i329 = icmp eq i32 %118, 2
  br i1 %cmp2.i.not.i329, label %is_highmem_idx.exit.i330.if.else.i334_crit_edge, label %is_highmem_idx.exit.i330.if.then.i332_crit_edge

is_highmem_idx.exit.i330.if.then.i332_crit_edge:  ; preds = %is_highmem_idx.exit.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i332

is_highmem_idx.exit.i330.if.else.i334_crit_edge:  ; preds = %is_highmem_idx.exit.i330
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i334

if.then.i332:                                     ; preds = %is_highmem_idx.exit.i330.if.then.i332_crit_edge, %if.then66.if.then.i332_crit_edge
  %call5.i331 = tail call ptr @page_address(ptr noundef %114) #8
  br label %kmap.exit337

if.else.i334:                                     ; preds = %is_highmem_idx.exit.i330.if.else.i334_crit_edge, %if.then66.if.else.i334_crit_edge
  %call6.i333 = tail call ptr @kmap_high(ptr noundef %114) #8
  br label %kmap.exit337

kmap.exit337:                                     ; preds = %if.else.i334, %if.then.i332
  %addr.0.i335 = phi ptr [ %call6.i333, %if.else.i334 ], [ %call5.i331, %if.then.i332 ]
  %add.ptr75 = getelementptr i8, ptr %addr.0.i335, i32 %and59
  %119 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr58, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %shr.i.i338 = lshr i32 %122, 30
  %123 = zext i32 %shr.i.i338 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i.i338, label %kmap.exit337.if.then.i342_crit_edge [
    i32 2, label %kmap.exit337.if.else.i344_crit_edge
    i32 3, label %is_highmem_idx.exit.i340
  ]

kmap.exit337.if.else.i344_crit_edge:              ; preds = %kmap.exit337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i344

kmap.exit337.if.then.i342_crit_edge:              ; preds = %kmap.exit337
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i342

is_highmem_idx.exit.i340:                         ; preds = %kmap.exit337
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %124 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp2.i.not.i339 = icmp eq i32 %124, 2
  br i1 %cmp2.i.not.i339, label %is_highmem_idx.exit.i340.if.else.i344_crit_edge, label %is_highmem_idx.exit.i340.if.then.i342_crit_edge

is_highmem_idx.exit.i340.if.then.i342_crit_edge:  ; preds = %is_highmem_idx.exit.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i342

is_highmem_idx.exit.i340.if.else.i344_crit_edge:  ; preds = %is_highmem_idx.exit.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i344

if.then.i342:                                     ; preds = %is_highmem_idx.exit.i340.if.then.i342_crit_edge, %kmap.exit337.if.then.i342_crit_edge
  %call5.i341 = tail call ptr @page_address(ptr noundef %120) #8
  br label %kmap.exit347

if.else.i344:                                     ; preds = %is_highmem_idx.exit.i340.if.else.i344_crit_edge, %kmap.exit337.if.else.i344_crit_edge
  %call6.i343 = tail call ptr @kmap_high(ptr noundef %120) #8
  br label %kmap.exit347

kmap.exit347:                                     ; preds = %if.else.i344, %if.then.i342
  %addr.0.i345 = phi ptr [ %call6.i343, %if.else.i344 ], [ %call5.i341, %if.then.i342 ]
  %add.ptr77 = getelementptr i8, ptr %addr.0.i345, i32 %and59
  %125 = call ptr @memmove(ptr %add.ptr75, ptr %add.ptr77, i32 %112)
  %126 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %add.ptr58, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 4
  %shr.i.i348 = lshr i32 %129, 30
  %130 = zext i32 %shr.i.i348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %shr.i.i348, label %kmap.exit347.kunmap.exit352_crit_edge [
    i32 2, label %kmap.exit347.if.end.i351_crit_edge
    i32 3, label %is_highmem_idx.exit.i350
  ]

kmap.exit347.if.end.i351_crit_edge:               ; preds = %kmap.exit347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i351

kmap.exit347.kunmap.exit352_crit_edge:            ; preds = %kmap.exit347
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit352

is_highmem_idx.exit.i350:                         ; preds = %kmap.exit347
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %131 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp2.i.not.i349 = icmp eq i32 %131, 2
  br i1 %cmp2.i.not.i349, label %is_highmem_idx.exit.i350.if.end.i351_crit_edge, label %is_highmem_idx.exit.i350.kunmap.exit352_crit_edge

is_highmem_idx.exit.i350.kunmap.exit352_crit_edge: ; preds = %is_highmem_idx.exit.i350
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit352

is_highmem_idx.exit.i350.if.end.i351_crit_edge:   ; preds = %is_highmem_idx.exit.i350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i351

if.end.i351:                                      ; preds = %is_highmem_idx.exit.i350.if.end.i351_crit_edge, %kmap.exit347.if.end.i351_crit_edge
  tail call void @kunmap_high(ptr noundef %127) #8
  br label %kunmap.exit352

kunmap.exit352:                                   ; preds = %if.end.i351, %is_highmem_idx.exit.i350.kunmap.exit352_crit_edge, %kmap.exit347.kunmap.exit352_crit_edge
  %132 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr63, align 4
  %call78 = tail call zeroext i1 @set_page_dirty(ptr noundef %133) #8
  %134 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr63, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  %shr.i.i353 = lshr i32 %137, 30
  %138 = zext i32 %shr.i.i353 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %shr.i.i353, label %kunmap.exit352.kunmap.exit357_crit_edge [
    i32 2, label %kunmap.exit352.if.end.i356_crit_edge
    i32 3, label %is_highmem_idx.exit.i355
  ]

kunmap.exit352.if.end.i356_crit_edge:             ; preds = %kunmap.exit352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i356

kunmap.exit352.kunmap.exit357_crit_edge:          ; preds = %kunmap.exit352
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit357

is_highmem_idx.exit.i355:                         ; preds = %kunmap.exit352
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %139 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %139)
  %cmp2.i.not.i354 = icmp eq i32 %139, 2
  br i1 %cmp2.i.not.i354, label %is_highmem_idx.exit.i355.if.end.i356_crit_edge, label %is_highmem_idx.exit.i355.kunmap.exit357_crit_edge

is_highmem_idx.exit.i355.kunmap.exit357_crit_edge: ; preds = %is_highmem_idx.exit.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit357

is_highmem_idx.exit.i355.if.end.i356_crit_edge:   ; preds = %is_highmem_idx.exit.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i356

if.end.i356:                                      ; preds = %is_highmem_idx.exit.i355.if.end.i356_crit_edge, %kunmap.exit352.if.end.i356_crit_edge
  tail call void @kunmap_high(ptr noundef %135) #8
  br label %kunmap.exit357

kunmap.exit357:                                   ; preds = %if.end.i356, %is_highmem_idx.exit.i355.kunmap.exit357_crit_edge, %kunmap.exit352.kunmap.exit357_crit_edge
  %sub80420 = sub i32 %len, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub80420)
  %cmp81.not421 = icmp eq i32 %sub80420, 0
  br i1 %cmp81.not421, label %kunmap.exit357.cleanup_crit_edge, label %kunmap.exit357.while.body82_crit_edge

kunmap.exit357.while.body82_crit_edge:            ; preds = %kunmap.exit357
  br label %while.body82

kunmap.exit357.cleanup_crit_edge:                 ; preds = %kunmap.exit357
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body82:                                     ; preds = %kunmap.exit387.while.body82_crit_edge, %kunmap.exit357.while.body82_crit_edge
  %sub80424 = phi i32 [ %sub80, %kunmap.exit387.while.body82_crit_edge ], [ %sub80420, %kunmap.exit357.while.body82_crit_edge ]
  %src_page.3423 = phi ptr [ %incdec.ptr91, %kunmap.exit387.while.body82_crit_edge ], [ %add.ptr58, %kunmap.exit357.while.body82_crit_edge ]
  %dst_page.3422 = phi ptr [ %incdec.ptr89, %kunmap.exit387.while.body82_crit_edge ], [ %add.ptr63, %kunmap.exit357.while.body82_crit_edge ]
  %140 = tail call i32 @llvm.smin.i32(i32 %sub80424, i32 4096)
  %incdec.ptr89 = getelementptr ptr, ptr %dst_page.3422, i32 1
  %141 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %incdec.ptr89, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %shr.i.i358 = lshr i32 %144, 30
  %145 = zext i32 %shr.i.i358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %shr.i.i358, label %while.body82.if.then.i362_crit_edge [
    i32 2, label %while.body82.if.else.i364_crit_edge
    i32 3, label %is_highmem_idx.exit.i360
  ]

while.body82.if.else.i364_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i364

while.body82.if.then.i362_crit_edge:              ; preds = %while.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i362

is_highmem_idx.exit.i360:                         ; preds = %while.body82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %146 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp2.i.not.i359 = icmp eq i32 %146, 2
  br i1 %cmp2.i.not.i359, label %is_highmem_idx.exit.i360.if.else.i364_crit_edge, label %is_highmem_idx.exit.i360.if.then.i362_crit_edge

is_highmem_idx.exit.i360.if.then.i362_crit_edge:  ; preds = %is_highmem_idx.exit.i360
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i362

is_highmem_idx.exit.i360.if.else.i364_crit_edge:  ; preds = %is_highmem_idx.exit.i360
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i364

if.then.i362:                                     ; preds = %is_highmem_idx.exit.i360.if.then.i362_crit_edge, %while.body82.if.then.i362_crit_edge
  %call5.i361 = tail call ptr @page_address(ptr noundef %142) #8
  br label %kmap.exit367

if.else.i364:                                     ; preds = %is_highmem_idx.exit.i360.if.else.i364_crit_edge, %while.body82.if.else.i364_crit_edge
  %call6.i363 = tail call ptr @kmap_high(ptr noundef %142) #8
  br label %kmap.exit367

kmap.exit367:                                     ; preds = %if.else.i364, %if.then.i362
  %addr.0.i365 = phi ptr [ %call6.i363, %if.else.i364 ], [ %call5.i361, %if.then.i362 ]
  %incdec.ptr91 = getelementptr ptr, ptr %src_page.3423, i32 1
  %147 = ptrtoint ptr %incdec.ptr91 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %incdec.ptr91, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %shr.i.i368 = lshr i32 %150, 30
  %151 = zext i32 %shr.i.i368 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %shr.i.i368, label %kmap.exit367.if.then.i372_crit_edge [
    i32 2, label %kmap.exit367.if.else.i374_crit_edge
    i32 3, label %is_highmem_idx.exit.i370
  ]

kmap.exit367.if.else.i374_crit_edge:              ; preds = %kmap.exit367
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i374

kmap.exit367.if.then.i372_crit_edge:              ; preds = %kmap.exit367
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i372

is_highmem_idx.exit.i370:                         ; preds = %kmap.exit367
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %152 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp2.i.not.i369 = icmp eq i32 %152, 2
  br i1 %cmp2.i.not.i369, label %is_highmem_idx.exit.i370.if.else.i374_crit_edge, label %is_highmem_idx.exit.i370.if.then.i372_crit_edge

is_highmem_idx.exit.i370.if.then.i372_crit_edge:  ; preds = %is_highmem_idx.exit.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i372

is_highmem_idx.exit.i370.if.else.i374_crit_edge:  ; preds = %is_highmem_idx.exit.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i374

if.then.i372:                                     ; preds = %is_highmem_idx.exit.i370.if.then.i372_crit_edge, %kmap.exit367.if.then.i372_crit_edge
  %call5.i371 = tail call ptr @page_address(ptr noundef %148) #8
  br label %kmap.exit377

if.else.i374:                                     ; preds = %is_highmem_idx.exit.i370.if.else.i374_crit_edge, %kmap.exit367.if.else.i374_crit_edge
  %call6.i373 = tail call ptr @kmap_high(ptr noundef %148) #8
  br label %kmap.exit377

kmap.exit377:                                     ; preds = %if.else.i374, %if.then.i372
  %addr.0.i375 = phi ptr [ %call6.i373, %if.else.i374 ], [ %call5.i371, %if.then.i372 ]
  %153 = call ptr @memmove(ptr %addr.0.i365, ptr %addr.0.i375, i32 %140)
  %154 = ptrtoint ptr %incdec.ptr91 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %incdec.ptr91, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %155, align 4
  %shr.i.i378 = lshr i32 %157, 30
  %158 = zext i32 %shr.i.i378 to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %shr.i.i378, label %kmap.exit377.kunmap.exit382_crit_edge [
    i32 2, label %kmap.exit377.if.end.i381_crit_edge
    i32 3, label %is_highmem_idx.exit.i380
  ]

kmap.exit377.if.end.i381_crit_edge:               ; preds = %kmap.exit377
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i381

kmap.exit377.kunmap.exit382_crit_edge:            ; preds = %kmap.exit377
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit382

is_highmem_idx.exit.i380:                         ; preds = %kmap.exit377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %159 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp2.i.not.i379 = icmp eq i32 %159, 2
  br i1 %cmp2.i.not.i379, label %is_highmem_idx.exit.i380.if.end.i381_crit_edge, label %is_highmem_idx.exit.i380.kunmap.exit382_crit_edge

is_highmem_idx.exit.i380.kunmap.exit382_crit_edge: ; preds = %is_highmem_idx.exit.i380
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit382

is_highmem_idx.exit.i380.if.end.i381_crit_edge:   ; preds = %is_highmem_idx.exit.i380
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i381

if.end.i381:                                      ; preds = %is_highmem_idx.exit.i380.if.end.i381_crit_edge, %kmap.exit377.if.end.i381_crit_edge
  tail call void @kunmap_high(ptr noundef %155) #8
  br label %kunmap.exit382

kunmap.exit382:                                   ; preds = %if.end.i381, %is_highmem_idx.exit.i380.kunmap.exit382_crit_edge, %kmap.exit377.kunmap.exit382_crit_edge
  %160 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %incdec.ptr89, align 4
  %call93 = tail call zeroext i1 @set_page_dirty(ptr noundef %161) #8
  %162 = ptrtoint ptr %incdec.ptr89 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %incdec.ptr89, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %163, align 4
  %shr.i.i383 = lshr i32 %165, 30
  %166 = zext i32 %shr.i.i383 to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %shr.i.i383, label %kunmap.exit382.kunmap.exit387_crit_edge [
    i32 2, label %kunmap.exit382.if.end.i386_crit_edge
    i32 3, label %is_highmem_idx.exit.i385
  ]

kunmap.exit382.if.end.i386_crit_edge:             ; preds = %kunmap.exit382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i386

kunmap.exit382.kunmap.exit387_crit_edge:          ; preds = %kunmap.exit382
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit387

is_highmem_idx.exit.i385:                         ; preds = %kunmap.exit382
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %167 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %167)
  %cmp2.i.not.i384 = icmp eq i32 %167, 2
  br i1 %cmp2.i.not.i384, label %is_highmem_idx.exit.i385.if.end.i386_crit_edge, label %is_highmem_idx.exit.i385.kunmap.exit387_crit_edge

is_highmem_idx.exit.i385.kunmap.exit387_crit_edge: ; preds = %is_highmem_idx.exit.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit387

is_highmem_idx.exit.i385.if.end.i386_crit_edge:   ; preds = %is_highmem_idx.exit.i385
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i386

if.end.i386:                                      ; preds = %is_highmem_idx.exit.i385.if.end.i386_crit_edge, %kunmap.exit382.if.end.i386_crit_edge
  tail call void @kunmap_high(ptr noundef %163) #8
  br label %kunmap.exit387

kunmap.exit387:                                   ; preds = %if.end.i386, %is_highmem_idx.exit.i385.kunmap.exit387_crit_edge, %kunmap.exit382.kunmap.exit387_crit_edge
  %sub80 = sub i32 %sub80424, %140
  %cmp81.not = icmp eq i32 %sub80, 0
  br i1 %cmp81.not, label %kunmap.exit387.cleanup_crit_edge, label %kunmap.exit387.while.body82_crit_edge

kunmap.exit387.while.body82_crit_edge:            ; preds = %kunmap.exit387
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body82

kunmap.exit387.cleanup_crit_edge:                 ; preds = %kunmap.exit387
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body98:                                        ; preds = %kunmap.exit417.do.body98_crit_edge, %if.else54.do.body98_crit_edge
  %dst_page.4 = phi ptr [ %dst_page.5, %kunmap.exit417.do.body98_crit_edge ], [ %add.ptr63, %if.else54.do.body98_crit_edge ]
  %src_page.4 = phi ptr [ %src_page.5, %kunmap.exit417.do.body98_crit_edge ], [ %add.ptr58, %if.else54.do.body98_crit_edge ]
  %len.addr.3 = phi i32 [ %sub127, %kunmap.exit417.do.body98_crit_edge ], [ %len, %if.else54.do.body98_crit_edge ]
  %src.addr.3 = phi i32 [ %src.addr.4, %kunmap.exit417.do.body98_crit_edge ], [ %and59, %if.else54.do.body98_crit_edge ]
  %dst.addr.2 = phi i32 [ %dst.addr.3, %kunmap.exit417.do.body98_crit_edge ], [ %and64, %if.else54.do.body98_crit_edge ]
  %168 = ptrtoint ptr %src_page.4 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %src_page.4, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  %shr.i.i388 = lshr i32 %171, 30
  %172 = zext i32 %shr.i.i388 to i64
  call void @__sanitizer_cov_trace_switch(i64 %172, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %shr.i.i388, label %do.body98.if.then.i392_crit_edge [
    i32 2, label %do.body98.if.else.i394_crit_edge
    i32 3, label %is_highmem_idx.exit.i390
  ]

do.body98.if.else.i394_crit_edge:                 ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i394

do.body98.if.then.i392_crit_edge:                 ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i392

is_highmem_idx.exit.i390:                         ; preds = %do.body98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %173 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %173)
  %cmp2.i.not.i389 = icmp eq i32 %173, 2
  br i1 %cmp2.i.not.i389, label %is_highmem_idx.exit.i390.if.else.i394_crit_edge, label %is_highmem_idx.exit.i390.if.then.i392_crit_edge

is_highmem_idx.exit.i390.if.then.i392_crit_edge:  ; preds = %is_highmem_idx.exit.i390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i392

is_highmem_idx.exit.i390.if.else.i394_crit_edge:  ; preds = %is_highmem_idx.exit.i390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i394

if.then.i392:                                     ; preds = %is_highmem_idx.exit.i390.if.then.i392_crit_edge, %do.body98.if.then.i392_crit_edge
  %call5.i391 = tail call ptr @page_address(ptr noundef %169) #8
  br label %kmap.exit397

if.else.i394:                                     ; preds = %is_highmem_idx.exit.i390.if.else.i394_crit_edge, %do.body98.if.else.i394_crit_edge
  %call6.i393 = tail call ptr @kmap_high(ptr noundef %169) #8
  br label %kmap.exit397

kmap.exit397:                                     ; preds = %if.else.i394, %if.then.i392
  %addr.0.i395 = phi ptr [ %call6.i393, %if.else.i394 ], [ %call5.i391, %if.then.i392 ]
  %add.ptr100 = getelementptr i8, ptr %addr.0.i395, i32 %src.addr.3
  %174 = ptrtoint ptr %dst_page.4 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dst_page.4, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  %shr.i.i398 = lshr i32 %177, 30
  %178 = zext i32 %shr.i.i398 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %shr.i.i398, label %kmap.exit397.if.then.i402_crit_edge [
    i32 2, label %kmap.exit397.if.else.i404_crit_edge
    i32 3, label %is_highmem_idx.exit.i400
  ]

kmap.exit397.if.else.i404_crit_edge:              ; preds = %kmap.exit397
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i404

kmap.exit397.if.then.i402_crit_edge:              ; preds = %kmap.exit397
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i402

is_highmem_idx.exit.i400:                         ; preds = %kmap.exit397
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %179 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %179)
  %cmp2.i.not.i399 = icmp eq i32 %179, 2
  br i1 %cmp2.i.not.i399, label %is_highmem_idx.exit.i400.if.else.i404_crit_edge, label %is_highmem_idx.exit.i400.if.then.i402_crit_edge

is_highmem_idx.exit.i400.if.then.i402_crit_edge:  ; preds = %is_highmem_idx.exit.i400
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i402

is_highmem_idx.exit.i400.if.else.i404_crit_edge:  ; preds = %is_highmem_idx.exit.i400
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i404

if.then.i402:                                     ; preds = %is_highmem_idx.exit.i400.if.then.i402_crit_edge, %kmap.exit397.if.then.i402_crit_edge
  %call5.i401 = tail call ptr @page_address(ptr noundef %175) #8
  br label %kmap.exit407

if.else.i404:                                     ; preds = %is_highmem_idx.exit.i400.if.else.i404_crit_edge, %kmap.exit397.if.else.i404_crit_edge
  %call6.i403 = tail call ptr @kmap_high(ptr noundef %175) #8
  br label %kmap.exit407

kmap.exit407:                                     ; preds = %if.else.i404, %if.then.i402
  %addr.0.i405 = phi ptr [ %call6.i403, %if.else.i404 ], [ %call5.i401, %if.then.i402 ]
  %add.ptr102 = getelementptr i8, ptr %addr.0.i405, i32 %dst.addr.2
  %sub103 = sub i32 4096, %src.addr.3
  %sub104 = sub i32 4096, %dst.addr.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub103, i32 %sub104)
  %cmp105 = icmp ult i32 %sub103, %sub104
  %add108 = add i32 %dst.addr.2, %sub103
  %add111 = add i32 %sub104, %src.addr.3
  %180 = tail call i32 @llvm.umin.i32(i32 %sub103, i32 %sub104)
  %src.addr.4 = select i1 %cmp105, i32 0, i32 %add111
  %dst.addr.3 = select i1 %cmp105, i32 %add108, i32 0
  %181 = tail call i32 @llvm.smin.i32(i32 %len.addr.3, i32 %180)
  %182 = call ptr @memmove(ptr %add.ptr102, ptr %add.ptr100, i32 %181)
  %183 = ptrtoint ptr %src_page.4 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %src_page.4, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  %shr.i.i408 = lshr i32 %186, 30
  %187 = zext i32 %shr.i.i408 to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %shr.i.i408, label %kmap.exit407.kunmap.exit412_crit_edge [
    i32 2, label %kmap.exit407.if.end.i411_crit_edge
    i32 3, label %is_highmem_idx.exit.i410
  ]

kmap.exit407.if.end.i411_crit_edge:               ; preds = %kmap.exit407
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i411

kmap.exit407.kunmap.exit412_crit_edge:            ; preds = %kmap.exit407
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit412

is_highmem_idx.exit.i410:                         ; preds = %kmap.exit407
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %188 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %188)
  %cmp2.i.not.i409 = icmp eq i32 %188, 2
  br i1 %cmp2.i.not.i409, label %is_highmem_idx.exit.i410.if.end.i411_crit_edge, label %is_highmem_idx.exit.i410.kunmap.exit412_crit_edge

is_highmem_idx.exit.i410.kunmap.exit412_crit_edge: ; preds = %is_highmem_idx.exit.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit412

is_highmem_idx.exit.i410.if.end.i411_crit_edge:   ; preds = %is_highmem_idx.exit.i410
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i411

if.end.i411:                                      ; preds = %is_highmem_idx.exit.i410.if.end.i411_crit_edge, %kmap.exit407.if.end.i411_crit_edge
  tail call void @kunmap_high(ptr noundef %184) #8
  br label %kunmap.exit412

kunmap.exit412:                                   ; preds = %if.end.i411, %is_highmem_idx.exit.i410.kunmap.exit412_crit_edge, %kmap.exit407.kunmap.exit412_crit_edge
  %189 = ptrtoint ptr %dst_page.4 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dst_page.4, align 4
  %call119 = tail call zeroext i1 @set_page_dirty(ptr noundef %190) #8
  %191 = ptrtoint ptr %dst_page.4 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dst_page.4, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %192, align 4
  %shr.i.i413 = lshr i32 %194, 30
  %195 = zext i32 %shr.i.i413 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %shr.i.i413, label %kunmap.exit412.kunmap.exit417_crit_edge [
    i32 2, label %kunmap.exit412.if.end.i416_crit_edge
    i32 3, label %is_highmem_idx.exit.i415
  ]

kunmap.exit412.if.end.i416_crit_edge:             ; preds = %kunmap.exit412
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i416

kunmap.exit412.kunmap.exit417_crit_edge:          ; preds = %kunmap.exit412
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit417

is_highmem_idx.exit.i415:                         ; preds = %kunmap.exit412
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %196 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp2.i.not.i414 = icmp eq i32 %196, 2
  br i1 %cmp2.i.not.i414, label %is_highmem_idx.exit.i415.if.end.i416_crit_edge, label %is_highmem_idx.exit.i415.kunmap.exit417_crit_edge

is_highmem_idx.exit.i415.kunmap.exit417_crit_edge: ; preds = %is_highmem_idx.exit.i415
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit417

is_highmem_idx.exit.i415.if.end.i416_crit_edge:   ; preds = %is_highmem_idx.exit.i415
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i416

if.end.i416:                                      ; preds = %is_highmem_idx.exit.i415.if.end.i416_crit_edge, %kunmap.exit412.if.end.i416_crit_edge
  tail call void @kunmap_high(ptr noundef %192) #8
  br label %kunmap.exit417

kunmap.exit417:                                   ; preds = %if.end.i416, %is_highmem_idx.exit.i415.kunmap.exit417_crit_edge, %kunmap.exit412.kunmap.exit417_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst.addr.3)
  %tobool120.not = icmp eq i32 %dst.addr.3, 0
  %dst_page.5.idx = zext i1 %tobool120.not to i32
  %dst_page.5 = getelementptr ptr, ptr %dst_page.4, i32 %dst_page.5.idx
  %not.tobool120.not = xor i1 %tobool120.not, true
  %src_page.5.idx = zext i1 %not.tobool120.not to i32
  %src_page.5 = getelementptr ptr, ptr %src_page.4, i32 %src_page.5.idx
  %sub127 = sub i32 %len.addr.3, %181
  %tobool128.not = icmp eq i32 %sub127, 0
  br i1 %tobool128.not, label %kunmap.exit417.cleanup_crit_edge, label %kunmap.exit417.do.body98_crit_edge

kunmap.exit417.do.body98_crit_edge:               ; preds = %kunmap.exit417
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body98

kunmap.exit417.cleanup_crit_edge:                 ; preds = %kunmap.exit417
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit417.cleanup_crit_edge, %kunmap.exit387.cleanup_crit_edge, %kunmap.exit357.cleanup_crit_edge, %kunmap.exit327.cleanup_crit_edge, %if.end.i296, %is_highmem_idx.exit.i295.cleanup_crit_edge, %kunmap.exit292.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_dump(ptr nocapture noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  %data.i67 = alloca i16, align 2
  %data.i66 = alloca i16, align 2
  %data.i = alloca i16, align 2
  %desc = alloca %struct.hfs_bnode_desc, align 4
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %desc) #8
  %0 = getelementptr inbounds %struct.hfs_bnode_desc, ptr %desc, i32 0, i32 4
  %1 = call ptr @memset(ptr %desc, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #8
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %desc, i32 noundef 0, i32 noundef 14)
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node_size, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %0, align 2
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %off.07073 = add i32 %5, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %data.i, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i, i32 noundef %off.07073, i32 noundef 2) #8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not75 = icmp eq i16 %7, 0
  br i1 %tobool.not75, label %entry.do.end49_crit_edge, label %land.lhs.true.lr.ph

entry.do.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

land.lhs.true.lr.ph:                              ; preds = %entry
  %conv = zext i16 %7 to i32
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %conv578.in = phi i16 [ %10, %land.lhs.true.lr.ph ], [ %27, %for.inc.land.lhs.true_crit_edge ]
  %off.07077 = phi i32 [ %off.07073, %land.lhs.true.lr.ph ], [ %off.070, %for.inc.land.lhs.true_crit_edge ]
  %i.06976 = phi i32 [ %conv, %land.lhs.true.lr.ph ], [ %dec, %for.inc.land.lhs.true_crit_edge ]
  %conv578 = zext i16 %conv578.in to i32
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %12, label %land.lhs.true.for.inc_crit_edge [
    i8 0, label %if.then
    i8 -1, label %if.then37
  ]

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %attributes = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attributes, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.then.if.then18_crit_edge

if.then.if.then18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.then
  %cnid15 = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %cnid15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnid15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp16 = icmp eq i32 %19, 8
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %if.else

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.then.if.then18_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i66) #8
  %20 = ptrtoint ptr %data.i66 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %data.i66, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i66, i32 noundef %conv578, i32 noundef 2) #8
  %21 = ptrtoint ptr %data.i66 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data.i66, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i66) #8
  %conv20 = zext i16 %22 to i32
  br label %do.end25

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %max_key_len = getelementptr inbounds %struct.hfs_btree, ptr %15, i32 0, i32 13
  %23 = ptrtoint ptr %max_key_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_key_len, align 4
  br label %do.end25

do.end25:                                         ; preds = %if.else, %if.then18
  %tmp.0.in = phi i32 [ %conv20, %if.then18 ], [ %24, %if.else ]
  %tmp.0 = add nuw nsw i32 %conv578, 2
  %add26 = add i32 %tmp.0, %tmp.0.in
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %cnid, i32 noundef %add26, i32 noundef 4)
  br label %for.inc

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i67) #8
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i67, i32 noundef %conv578, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i67) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %do.end25, %land.lhs.true.for.inc_crit_edge
  %dec = add nsw i32 %i.06976, -1
  %off.070 = add i32 %off.07077, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %data.i, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %node, ptr noundef nonnull %data.i, i32 noundef %off.070, i32 noundef 2) #8
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.do.end49_crit_edge, label %for.inc.land.lhs.true_crit_edge

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.inc.do.end49_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

do.end49:                                         ; preds = %for.inc.do.end49_crit_edge, %entry.do.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #8
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %desc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_unlink(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  %cnid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnid) #8
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %prev = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @hfsplus_bnode_find(ptr noundef %1, i32 noundef %3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %next = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next, align 4
  %next5 = getelementptr inbounds %struct.hfs_bnode, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %next5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %next5, align 4
  %7 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %cnid, align 4
  call void @hfsplus_bnode_write(ptr noundef %call, ptr noundef nonnull %cnid, i32 noundef 0, i32 noundef 4)
  tail call void @hfsplus_bnode_put(ptr noundef %call)
  br label %if.end11

if.else:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp = icmp eq i8 %9, -1
  br i1 %cmp, label %if.then8, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %next9 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 3
  %10 = ptrtoint ptr %next9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next9, align 4
  %leaf_head = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %leaf_head to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %leaf_head, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else.if.end11_crit_edge, %if.end
  %next12 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 3
  %13 = ptrtoint ptr %next12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %if.else23, label %if.then14

if.then14:                                        ; preds = %if.end11
  %call16 = tail call ptr @hfsplus_bnode_find(ptr noundef %1, i32 noundef %14)
  %cmp.i71 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then14.cleanup_crit_edge, label %if.end19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prev, align 4
  %prev21 = getelementptr inbounds %struct.hfs_bnode, ptr %call16, i32 0, i32 1
  %17 = ptrtoint ptr %prev21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %prev21, align 4
  %18 = ptrtoint ptr %cnid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %cnid, align 4
  call void @hfsplus_bnode_write(ptr noundef %call16, ptr noundef nonnull %cnid, i32 noundef 4, i32 noundef 4)
  tail call void @hfsplus_bnode_put(ptr noundef %call16)
  br label %if.end31

if.else23:                                        ; preds = %if.end11
  %type24 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 6
  %19 = ptrtoint ptr %type24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %type24, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp26 = icmp eq i8 %20, -1
  br i1 %cmp26, label %if.then28, label %if.else23.if.end31_crit_edge

if.else23.if.end31_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prev, align 4
  %leaf_tail = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %leaf_tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %leaf_tail, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.else23.if.end31_crit_edge, %if.end19
  %parent = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 4
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %if.then39, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %root = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %root, align 4
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %depth, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end31.if.end40_crit_edge
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then14.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnid) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_bnode_find(ptr noundef %tree, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %data.i210 = alloca i16, align 2
  %data.i209 = alloca i16, align 2
  %data.i = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %node_count.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %num)
  %cmp.not.i = icmp ugt i32 %1, %num
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %num) #11
  br label %if.end23

if.end.i:                                         ; preds = %entry
  %shr.i.i = lshr i32 %num, 16
  %add.i.i = add i32 %shr.i.i, %num
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.012.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not13.i = icmp eq ptr %node.012.i, null
  br i1 %tobool.not13.i, label %if.end.i.if.end23_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %node.014.i = phi ptr [ %node.0.i, %for.inc.i.for.body.i_crit_edge ], [ %node.012.i, %if.end.i.for.body.i_crit_edge ]
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 2
  %3 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %num)
  %cmp2.i = icmp eq i32 %4, %num
  br i1 %cmp2.i, label %hfsplus_bnode_get.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 8
  %5 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %next_hash.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

hfsplus_bnode_get.exit:                           ; preds = %for.body.i
  %refcnt.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !36
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 491) #8
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %hfsplus_bnode_get.exit.do.end17_crit_edge, label %if.end

hfsplus_bnode_get.exit.do.end17_crit_edge:        ; preds = %hfsplus_bnode_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.end:                                           ; preds = %hfsplus_bnode_get.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %lock_wq = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 10
  %call9217 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not218 = icmp eq i32 %13, 0
  br i1 %tobool12.not218, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #8
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 4
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %lock_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end17

do.end17:                                         ; preds = %for.end, %hfsplus_bnode_get.exit.do.end17_crit_edge
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %do.end17.cleanup123_crit_edge, label %do.end17.node_error_crit_edge

do.end17.node_error_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

do.end17.cleanup123_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %call25 = tail call fastcc ptr @__hfs_bnode_create(ptr noundef %tree, i32 noundef %num)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.cleanup123_crit_edge, label %if.end29

if.end23.cleanup123_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end29:                                         ; preds = %if.end23
  %flags30 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 9
  %20 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags30, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool32.not = icmp eq i32 %22, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.node_error_crit_edge

if.end29.node_error_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

if.end34:                                         ; preds = %if.end29
  %23 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags30, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool37.not = icmp eq i32 %25, 0
  br i1 %tobool37.not, label %if.end34.cleanup123_crit_edge, label %if.end39

if.end34.cleanup123_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end39:                                         ; preds = %if.end34
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 13
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr.i.i202 = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %shr.i.i202, label %if.end39.if.then.i203_crit_edge [
    i32 2, label %if.end39.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end39.if.else.i_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end39.if.then.i203_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i203

is_highmem_idx.exit.i:                            ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i203_crit_edge

is_highmem_idx.exit.i.if.then.i203_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i203

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i203:                                     ; preds = %is_highmem_idx.exit.i.if.then.i203_crit_edge, %if.end39.if.then.i203_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %27) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end39.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %27) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i203
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i203 ]
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 12
  %32 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page_offset, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %33
  %prev = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 1
  %34 = ptrtoint ptr %prev to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %prev, align 1
  %prev41 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 1
  %36 = ptrtoint ptr %prev41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %prev41, align 4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr, align 1
  %next42 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 3
  %39 = ptrtoint ptr %next42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %next42, align 4
  %num_recs = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 4
  %40 = ptrtoint ptr %num_recs to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %num_recs, align 1
  %num_recs43 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 5
  %42 = ptrtoint ptr %num_recs43 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %num_recs43, align 4
  %type = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 2
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %type, align 1
  %type44 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 6
  %45 = ptrtoint ptr %type44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %type44, align 2
  %height = getelementptr inbounds %struct.hfs_bnode_desc, ptr %add.ptr, i32 0, i32 3
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %height, align 1
  %height45 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 7
  %48 = ptrtoint ptr %height45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %height45, align 1
  %49 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %shr.i.i205 = lshr i32 %52, 30
  %53 = zext i32 %shr.i.i205 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %shr.i.i205, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i208_crit_edge
    i32 3, label %is_highmem_idx.exit.i207
  ]

kmap.exit.if.end.i208_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i208

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i207:                         ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %54 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp2.i.not.i206 = icmp eq i32 %54, 2
  br i1 %cmp2.i.not.i206, label %is_highmem_idx.exit.i207.if.end.i208_crit_edge, label %is_highmem_idx.exit.i207.kunmap.exit_crit_edge

is_highmem_idx.exit.i207.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i207.if.end.i208_crit_edge:   ; preds = %is_highmem_idx.exit.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i208

if.end.i208:                                      ; preds = %is_highmem_idx.exit.i207.if.end.i208_crit_edge, %kmap.exit.if.end.i208_crit_edge
  tail call void @kunmap_high(ptr noundef %50) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i208, %is_highmem_idx.exit.i207.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %55 = ptrtoint ptr %type44 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type44, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %56, label %kunmap.exit.node_error_crit_edge [
    i8 1, label %kunmap.exit.sw.bb_crit_edge
    i8 2, label %kunmap.exit.sw.bb_crit_edge229
    i8 -1, label %sw.bb54
    i8 0, label %sw.bb61
  ]

kunmap.exit.sw.bb_crit_edge229:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

kunmap.exit.sw.bb_crit_edge:                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

kunmap.exit.node_error_crit_edge:                 ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.bb:                                            ; preds = %kunmap.exit.sw.bb_crit_edge, %kunmap.exit.sw.bb_crit_edge229
  %58 = ptrtoint ptr %height45 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %height45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp.not = icmp eq i8 %59, 0
  br i1 %cmp.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.node_error_crit_edge

sw.bb.node_error_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb54:                                          ; preds = %kunmap.exit
  %60 = ptrtoint ptr %height45 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %height45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp57.not = icmp eq i8 %61, 1
  br i1 %cmp57.not, label %sw.bb54.sw.epilog_crit_edge, label %sw.bb54.node_error_crit_edge

sw.bb54.node_error_crit_edge:                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb61:                                          ; preds = %kunmap.exit
  %62 = ptrtoint ptr %height45 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %height45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %63)
  %cmp64 = icmp ult i8 %63, 2
  br i1 %cmp64, label %sw.bb61.node_error_crit_edge, label %lor.lhs.false

sw.bb61.node_error_crit_edge:                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

lor.lhs.false:                                    ; preds = %sw.bb61
  %conv63 = zext i8 %63 to i32
  %depth = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 14
  %64 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv63)
  %cmp68 = icmp ult i32 %65, %conv63
  br i1 %cmp68, label %lor.lhs.false.node_error_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false.node_error_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %sw.bb54.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 11
  %66 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %node_size, align 4
  %sub = add i32 %67, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %data.i, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef nonnull %call25, ptr noundef nonnull %data.i, i32 noundef %sub, i32 noundef 2) #8
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %data.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %70)
  %cmp74.not = icmp eq i16 %70, 14
  br i1 %cmp74.not, label %for.cond78.preheader, label %sw.epilog.node_error_crit_edge

sw.epilog.node_error_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

for.cond78.preheader:                             ; preds = %sw.epilog
  %71 = ptrtoint ptr %num_recs43 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %num_recs43, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %cmp81.not220 = icmp eq i16 %72, 0
  br i1 %cmp81.not220, label %for.cond78.preheader.for.end116_crit_edge, label %for.cond78.preheader.for.body_crit_edge

for.cond78.preheader.for.body_crit_edge:          ; preds = %for.cond78.preheader
  br label %for.body

for.cond78.preheader.for.end116_crit_edge:        ; preds = %for.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond78.preheader.for.body_crit_edge
  %off.0223 = phi i32 [ %conv85, %for.inc.for.body_crit_edge ], [ 14, %for.cond78.preheader.for.body_crit_edge ]
  %rec_off.0222 = phi i32 [ %sub83, %for.inc.for.body_crit_edge ], [ %sub, %for.cond78.preheader.for.body_crit_edge ]
  %i.0221 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond78.preheader.for.body_crit_edge ]
  %sub83 = add i32 %rec_off.0222, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i209) #8
  %73 = ptrtoint ptr %data.i209 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -1, ptr %data.i209, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %call25, ptr noundef nonnull %data.i209, i32 noundef %sub83, i32 noundef 2) #8
  %74 = ptrtoint ptr %data.i209 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %data.i209, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i209) #8
  %conv85 = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %off.0223, i32 %conv85)
  %cmp86.not = icmp ult i32 %off.0223, %conv85
  br i1 %cmp86.not, label %lor.lhs.false88, label %for.body.node_error_crit_edge

for.body.node_error_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

lor.lhs.false88:                                  ; preds = %for.body
  %76 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %node_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %conv85)
  %cmp90 = icmp uge i32 %77, %conv85
  %and = and i32 %conv85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool93.not, %cmp90
  br i1 %or.cond, label %if.end95, label %lor.lhs.false88.node_error_crit_edge

lor.lhs.false88.node_error_crit_edge:             ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

if.end95:                                         ; preds = %lor.lhs.false88
  %78 = ptrtoint ptr %type44 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %type44, align 2
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %79, label %if.end95.for.inc_crit_edge [
    i8 0, label %if.end95.if.end106_crit_edge
    i8 -1, label %if.end95.if.end106_crit_edge230
  ]

if.end95.if.end106_crit_edge230:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end106

if.end95.for.inc_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end106:                                        ; preds = %if.end95.if.end106_crit_edge, %if.end95.if.end106_crit_edge230
  %sub96 = sub nsw i32 %conv85, %off.0223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i210) #8
  %81 = ptrtoint ptr %data.i210 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %data.i210, align 2, !annotation !33
  call void @hfsplus_bnode_read(ptr noundef %call25, ptr noundef nonnull %data.i210, i32 noundef %off.0223, i32 noundef 2) #8
  %82 = ptrtoint ptr %data.i210 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %data.i210, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i210) #8
  %conv108 = zext i16 %83 to i32
  %add = add nuw nsw i32 %conv108, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub96)
  %cmp109.not = icmp slt i32 %add, %sub96
  %and112 = and i32 %conv108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  %or.cond191 = and i1 %cmp109.not, %tobool113.not
  br i1 %or.cond191, label %if.end106.for.inc_crit_edge, label %if.end106.node_error_crit_edge

if.end106.node_error_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %node_error

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end106.for.inc_crit_edge, %if.end95.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0221, 1
  %84 = ptrtoint ptr %num_recs43 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %num_recs43, align 4
  %conv80 = zext i16 %85 to i32
  %cmp81.not.not = icmp ult i32 %i.0221, %conv80
  br i1 %cmp81.not.not, label %for.inc.for.body_crit_edge, label %for.inc.for.end116_crit_edge

for.inc.for.end116_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end116:                                       ; preds = %for.inc.for.end116_crit_edge, %for.cond78.preheader.for.end116_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags30) #8
  %lock_wq118 = getelementptr inbounds %struct.hfs_bnode, ptr %call25, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %lock_wq118, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup123

node_error:                                       ; preds = %if.end106.node_error_crit_edge, %lor.lhs.false88.node_error_crit_edge, %for.body.node_error_crit_edge, %sw.epilog.node_error_crit_edge, %lor.lhs.false.node_error_crit_edge, %sw.bb61.node_error_crit_edge, %sw.bb54.node_error_crit_edge, %sw.bb.node_error_crit_edge, %kunmap.exit.node_error_crit_edge, %if.end29.node_error_crit_edge, %do.end17.node_error_crit_edge
  %node.0 = phi ptr [ %node.014.i, %do.end17.node_error_crit_edge ], [ %call25, %if.end29.node_error_crit_edge ], [ %call25, %kunmap.exit.node_error_crit_edge ], [ %call25, %sw.bb61.node_error_crit_edge ], [ %call25, %lor.lhs.false.node_error_crit_edge ], [ %call25, %sw.epilog.node_error_crit_edge ], [ %call25, %sw.bb54.node_error_crit_edge ], [ %call25, %sw.bb.node_error_crit_edge ], [ %call25, %lor.lhs.false88.node_error_crit_edge ], [ %call25, %for.body.node_error_crit_edge ], [ %call25, %if.end106.node_error_crit_edge ]
  %flags119 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 9
  call void @_set_bit(i32 noundef 1, ptr noundef %flags119) #8
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags119) #8
  %lock_wq121 = getelementptr inbounds %struct.hfs_bnode, ptr %node.0, i32 0, i32 10
  call void @__wake_up(ptr noundef %lock_wq121, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @hfsplus_bnode_put(ptr noundef %node.0)
  br label %cleanup123

cleanup123:                                       ; preds = %node_error, %for.end116, %if.end34.cleanup123_crit_edge, %if.end23.cleanup123_crit_edge, %do.end17.cleanup123_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %node_error ], [ %call25, %for.end116 ], [ %node.014.i, %do.end17.cleanup123_crit_edge ], [ %call25, %if.end34.cleanup123_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup123_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_put(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #8
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.body8, label %do.end15, !prof !37

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/bnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 631, 0\0A.popsection", ""() #8, !srcloc !38
  unreachable

do.end15:                                         ; preds = %if.then
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 17
  %call17 = tail call i32 @_atomic_dec_and_lock(ptr noundef %refcnt, ptr noundef %hash_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.end15.if.end36_crit_edge, label %for.cond.preheader

do.end15.if.end36_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.cond.preheader:                               ; preds = %do.end15
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp55.not = icmp eq i32 %5, 0
  br i1 %cmp55.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node, i32 0, i32 13, i32 %i.056
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end23:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_page_accessed(ptr noundef nonnull %7) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.056, 1
  %8 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pages_per_bnode, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %if.end33, label %if.then28

if.then28:                                        ; preds = %for.end
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 2
  %15 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %this.i, align 4
  %shr.i.i = lshr i32 %16, 16
  %add.i.i = add i32 %shr.i.i, %16
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %14, i32 0, i32 18, i32 %and.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then28
  %p.0.i = phi ptr [ %arrayidx.i, %if.then28 ], [ %next_hash.i, %for.cond.i.for.cond.i_crit_edge ]
  %17 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %p.0.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %cmp.not.i = icmp eq ptr %18, %node
  %or.cond.i = or i1 %tobool.not.i, %cmp.not.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %18, i32 0, i32 8
  br i1 %or.cond.i, label %do.body1.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

do.body1.i:                                       ; preds = %for.cond.i
  br i1 %tobool.not.i, label %do.body6.i, label %hfsplus_bnode_unhash.exit, !prof !37

do.body6.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/bnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #8, !srcloc !39
  unreachable

hfsplus_bnode_unhash.exit:                        ; preds = %do.body1.i
  %next_hash14.i = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 8
  %19 = ptrtoint ptr %next_hash14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_hash14.i, align 4
  %21 = ptrtoint ptr %p.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %p.0.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %node_hash_cnt.i = getelementptr inbounds %struct.hfs_btree, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %node_hash_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node_hash_cnt.i, align 4
  %dec.i = add i32 %25, -1
  store i32 %dec.i, ptr %node_hash_cnt.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %cnid.i = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %cnid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cnid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp.i = icmp eq i32 %27, 4
  br i1 %cmp.i, label %hfs_bnode_need_zeroout.exit, label %hfsplus_bnode_unhash.exit.if.end32_crit_edge

hfsplus_bnode_unhash.exit.if.end32_crit_edge:     ; preds = %hfsplus_bnode_unhash.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

hfs_bnode_need_zeroout.exit:                      ; preds = %hfsplus_bnode_unhash.exit
  %inode.i = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %inode.i, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_vhdr.i = getelementptr inbounds %struct.hfsplus_sb_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %s_vhdr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_vhdr.i, align 4
  %attributes.i = getelementptr inbounds %struct.hfsplus_vh, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %attributes.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %attributes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i = icmp slt i32 %37, 0
  br i1 %tobool.i, label %if.then31, label %hfs_bnode_need_zeroout.exit.if.end32_crit_edge

hfs_bnode_need_zeroout.exit.if.end32_crit_edge:   ; preds = %hfs_bnode_need_zeroout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %hfs_bnode_need_zeroout.exit
  call void @__sanitizer_cov_trace_pc() #10
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %node_size, align 4
  tail call void @hfsplus_bnode_clear(ptr noundef nonnull %node, i32 noundef 0, i32 noundef %39)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %hfs_bnode_need_zeroout.exit.if.end32_crit_edge, %hfsplus_bnode_unhash.exit.if.end32_crit_edge
  tail call void @hfsplus_bmap_free(ptr noundef nonnull %node) #8
  tail call void @hfsplus_bnode_free(ptr noundef nonnull %node)
  br label %if.end36

if.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.end32, %do.end15.if.end36_crit_edge, %entry.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_bnode_findhash(ptr nocapture noundef readonly %tree, i32 noundef %cnid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cnid)
  %cmp.not = icmp ugt i32 %1, %cnid
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cnid) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr.i = lshr i32 %cnid, 16
  %add.i = add i32 %shr.i, %cnid
  %shr1.i = lshr i32 %add.i, 8
  %add2.i = add i32 %shr1.i, %add.i
  %and.i = and i32 %add2.i, 255
  %arrayidx = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.012 = load ptr, ptr %arrayidx, align 4
  %tobool.not13 = icmp eq ptr %node.012, null
  br i1 %tobool.not13, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %node.014 = phi ptr [ %node.0, %for.inc.for.body_crit_edge ], [ %node.012, %if.end.for.body_crit_edge ]
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %node.014, i32 0, i32 2
  %3 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cnid)
  %cmp2 = icmp eq i32 %4, %cnid
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %node.014, i32 0, i32 8
  %5 = ptrtoint ptr %next_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0 = load ptr, ptr %next_hash, align 4
  %tobool.not = icmp eq ptr %node.0, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ %node.014, %for.body.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_unhash(ptr noundef readonly %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %this to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %this, align 4
  %shr.i = lshr i32 %3, 16
  %add.i = add i32 %shr.i, %3
  %shr1.i = lshr i32 %add.i, 8
  %add2.i = add i32 %shr1.i, %add.i
  %and.i = and i32 %add2.i, 255
  %arrayidx = getelementptr %struct.hfs_btree, ptr %1, i32 0, i32 18, i32 %and.i
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %p.0 = phi ptr [ %arrayidx, %entry ], [ %next_hash, %for.cond.for.cond_crit_edge ]
  %4 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.0, align 4
  %tobool.not = icmp eq ptr %5, null
  %cmp.not = icmp eq ptr %5, %node
  %or.cond = or i1 %tobool.not, %cmp.not
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %5, i32 0, i32 8
  br i1 %or.cond, label %do.body1, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

do.body1:                                         ; preds = %for.cond
  br i1 %tobool.not, label %do.body6, label %do.end13, !prof !37

do.body6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/hfsplus/bnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 472, 0\0A.popsection", ""() #8, !srcloc !39
  unreachable

do.end13:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %next_hash14 = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 8
  %6 = ptrtoint ptr %next_hash14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_hash14, align 4
  %8 = ptrtoint ptr %p.0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %p.0, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %node_hash_cnt = getelementptr inbounds %struct.hfs_btree, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %node_hash_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node_hash_cnt, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %node_hash_cnt, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_get(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %node, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !36
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__hfs_bnode_create(ptr noundef %tree, i32 noundef %cnid) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %node_count = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cnid)
  %cmp.not = icmp ugt i32 %1, %cnid
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cnid) #11
  br label %cleanup63

if.end:                                           ; preds = %entry
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 16
  %2 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pages_per_bnode, align 4
  %mul = shl i32 %3, 2
  %add = add i32 %mul, 92
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup63_crit_edge, label %if.end3

if.end.cleanup63_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tree, ptr %call9.i.i, align 128
  %this = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cnid, ptr %this, align 8
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #8
  %refcnt = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcnt, align 4
  %lock_wq = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %lock_wq, ptr noundef nonnull @.str.7, ptr noundef nonnull @__hfs_bnode_create.__key) #8
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %7 = ptrtoint ptr %node_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %cnid)
  %cmp.not.i = icmp ugt i32 %8, %cnid
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cnid) #11
  %.pre = lshr i32 %cnid, 16
  %.pre161 = add i32 %.pre, %cnid
  %.pre162 = lshr i32 %.pre161, 8
  %.pre163 = add i32 %.pre162, %.pre161
  %.pre164 = and i32 %.pre163, 255
  br label %if.then13

if.end.i:                                         ; preds = %if.end3
  %shr.i.i119 = lshr i32 %cnid, 16
  %add.i.i = add i32 %shr.i.i119, %cnid
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i120 = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.i120
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.012.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not13.i = icmp eq ptr %node.012.i, null
  br i1 %tobool.not13.i, label %if.end.i.if.then13_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %node.014.i = phi ptr [ %node.0.i, %for.inc.i.for.body.i_crit_edge ], [ %node.012.i, %if.end.i.for.body.i_crit_edge ]
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 2
  %10 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %this.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cnid)
  %cmp2.i = icmp eq i32 %11, %cnid
  br i1 %cmp2.i, label %if.else, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 8
  %12 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.0.i = load ptr, ptr %next_hash.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.then13_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then13_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %for.inc.i.if.then13_crit_edge, %if.end.i.if.then13_crit_edge, %do.end.i
  %and.i.pre-phi = phi i32 [ %.pre164, %do.end.i ], [ %and.i.i120, %if.end.i.if.then13_crit_edge ], [ %and.i.i120, %for.inc.i.if.then13_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.pre-phi
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %next_hash = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %next_hash to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %next_hash, align 8
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %node_hash_cnt = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 19
  %16 = ptrtoint ptr %node_hash_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_hash_cnt, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %node_hash_cnt, align 4
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_mapping, align 8
  %conv = zext i32 %cnid to i64
  %node_size_shift = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 12
  %22 = ptrtoint ptr %node_size_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node_size_shift, align 4
  %sh_prom = zext i32 %23 to i64
  %shl = shl i64 %conv, %sh_prom
  %24 = trunc i64 %shl to i32
  %conv44 = and i32 %24, 4095
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv44, ptr %page_offset, align 8
  %26 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp47147.not = icmp eq i32 %27, 0
  br i1 %cmp47147.not, label %if.then13.cleanup63_crit_edge, label %for.body.preheader

if.then13.cleanup63_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

for.body.preheader:                               ; preds = %if.then13
  %28 = lshr i64 %shl, 12
  %conv43 = trunc i64 %28 to i32
  br label %for.body

if.else:                                          ; preds = %for.body.i
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 437) #8
  %flags25 = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 9
  %29 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags25, align 4
  %31 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool27.not = icmp eq i32 %31, 0
  br i1 %tobool27.not, label %if.else.cleanup63_crit_edge, label %if.end29

if.else.cleanup63_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end29:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %32 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %lock_wq30 = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 10
  %call31145 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq30, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %33 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %flags25, align 4
  %35 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool34.not146 = icmp eq i32 %35, 0
  br i1 %tobool34.not146, label %if.end29.for.end_crit_edge, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  br label %cleanup

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  call void @schedule() #8
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %lock_wq30, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %36 = ptrtoint ptr %flags25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags25, align 4
  %38 = and i32 %37, 4
  %tobool34.not = icmp eq i32 %38, 0
  br i1 %tobool34.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end29.for.end_crit_edge
  call void @finish_wait(ptr noundef %lock_wq30, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %cleanup63

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.body.preheader
  %i.0149 = phi i32 [ %inc60, %if.end56.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %block.0148 = phi i32 [ %inc59, %if.end56.for.body_crit_edge ], [ %conv43, %for.body.preheader ]
  %call.i122 = tail call ptr @read_cache_page(ptr noundef %21, i32 noundef %block.0148, ptr noundef null, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call.i122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.fail_crit_edge, label %if.end52

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end52:                                         ; preds = %for.body
  %39 = getelementptr inbounds %struct.page, ptr %call.i122, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !40

if.then.i.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %41, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call.i122 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %42, %if.end.i.i ]
  %43 = inttoptr i32 %retval.0.i.i to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i = icmp eq i32 %45, -1
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %39, align 4
  %and.i16.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !37

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !40

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %47, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %call.i122 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %48, %if.end.i20.i ]
  %49 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %49, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !40

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %47, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %call.i122 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %50, %if.end.i27.i ]
  %51 = inttoptr i32 %retval.0.i28.i to ptr
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool54.not = icmp eq i32 %54, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %PageError.exit
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %39, align 4
  %and.i.i123 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool.not.i.i124 = icmp eq i32 %and.i.i123, 0
  br i1 %tobool.not.i.i124, label %if.end.i.i127, label %if.then.i.i126, !prof !40

if.then.i.i126:                                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i125 = add i32 %56, -1
  br label %_compound_head.exit.i129

if.end.i.i127:                                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call.i122 to i32
  br label %_compound_head.exit.i129

_compound_head.exit.i129:                         ; preds = %if.end.i.i127, %if.then.i.i126
  %retval.0.i.i128 = phi i32 [ %sub.i.i125, %if.then.i.i126 ], [ %57, %if.end.i.i127 ]
  %58 = inttoptr i32 %retval.0.i.i128 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %59 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i129
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !42
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i129
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__hfs_bnode_create, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !46

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %58, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.fail_crit_edge

folio_put_testzero.exit.i.i.fail_crit_edge:       ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %58) #8
  br label %fail

if.end56:                                         ; preds = %PageError.exit
  %arrayidx58 = getelementptr %struct.hfs_bnode, ptr %call9.i.i, i32 0, i32 13, i32 %i.0149
  %62 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i122, ptr %arrayidx58, align 4
  %inc59 = add i32 %block.0148, 1
  %inc60 = add nuw i32 %i.0149, 1
  %63 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pages_per_bnode, align 4
  %cmp47 = icmp ult i32 %inc60, %64
  br i1 %cmp47, label %if.end56.for.body_crit_edge, label %if.end56.cleanup63_crit_edge

if.end56.cleanup63_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup63

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

fail:                                             ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.fail_crit_edge, %for.body.fail_crit_edge
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %cleanup63

cleanup63:                                        ; preds = %fail, %if.end56.cleanup63_crit_edge, %for.end, %if.else.cleanup63_crit_edge, %if.then13.cleanup63_crit_edge, %if.end.cleanup63_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call9.i.i, %fail ], [ null, %if.end.cleanup63_crit_edge ], [ %node.014.i, %if.else.cleanup63_crit_edge ], [ %node.014.i, %for.end ], [ %call9.i.i, %if.then13.cleanup63_crit_edge ], [ %call9.i.i, %if.end56.cleanup63_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hfsplus_bnode_free(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %pages_per_bnode9 = getelementptr inbounds %struct.hfs_btree, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pages_per_bnode9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pages_per_bnode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not = icmp eq i32 %3, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hfs_bnode, ptr %node, i32 0, i32 13, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !40

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !42
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@hfsplus_bnode_free, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !46

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %10) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node, align 4
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pages_per_bnode, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %node) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hfsplus_bnode_create(ptr noundef %tree, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hash_lock = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %hash_lock) #8
  %node_count.i = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 8
  %0 = ptrtoint ptr %node_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %num)
  %cmp.not.i = icmp ugt i32 %1, %num
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %num) #11
  br label %if.end23

if.end.i:                                         ; preds = %entry
  %shr.i.i = lshr i32 %num, 16
  %add.i.i = add i32 %shr.i.i, %num
  %shr1.i.i = lshr i32 %add.i.i, 8
  %add2.i.i = add i32 %shr1.i.i, %add.i.i
  %and.i.i = and i32 %add2.i.i, 255
  %arrayidx.i = getelementptr %struct.hfs_btree, ptr %tree, i32 0, i32 18, i32 %and.i.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.012.i = load ptr, ptr %arrayidx.i, align 4
  %tobool.not13.i = icmp eq ptr %node.012.i, null
  br i1 %tobool.not13.i, label %if.end.i.if.end23_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %node.014.i = phi ptr [ %node.0.i, %for.inc.i.for.body.i_crit_edge ], [ %node.012.i, %if.end.i.for.body.i_crit_edge ]
  %this.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 2
  %3 = ptrtoint ptr %this.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %this.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %num)
  %cmp2.i = icmp eq i32 %4, %num
  br i1 %cmp2.i, label %do.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %next_hash.i = getelementptr inbounds %struct.hfs_bnode, ptr %node.014.i, i32 0, i32 8
  %5 = ptrtoint ptr %next_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0.i = load ptr, ptr %next_hash.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %num) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 584, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %hash_lock) #8
  %call24 = tail call fastcc ptr @__hfs_bnode_create(ptr noundef %tree, i32 noundef %num)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %flags = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool30.not = icmp eq i32 %8, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hfsplus_bnode_put(ptr noundef nonnull %call24)
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %page = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 13
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %shr.i.i68 = lshr i32 %12, 30
  %13 = zext i32 %shr.i.i68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %shr.i.i68, label %if.end33.if.then.i_crit_edge [
    i32 2, label %if.end33.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end33.if.else.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end33.if.then.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %14 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp2.i.not.i = icmp eq i32 %14, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end33.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %10) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end33.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %10) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %page_offset = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 12
  %15 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_offset, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %16
  %node_size = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 11
  %17 = ptrtoint ptr %node_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node_size, align 4
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 4096)
  %20 = call ptr @memset(ptr %add.ptr, i32 0, i32 %19)
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page, align 4
  %call36 = tail call zeroext i1 @set_page_dirty(ptr noundef %22) #8
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %shr.i.i70 = lshr i32 %26, 30
  %27 = zext i32 %shr.i.i70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %shr.i.i70, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i73_crit_edge
    i32 3, label %is_highmem_idx.exit.i72
  ]

kmap.exit.if.end.i73_crit_edge:                   ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i73

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i72:                          ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %28 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i.not.i71 = icmp eq i32 %28, 2
  br i1 %cmp2.i.not.i71, label %is_highmem_idx.exit.i72.if.end.i73_crit_edge, label %is_highmem_idx.exit.i72.kunmap.exit_crit_edge

is_highmem_idx.exit.i72.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit

is_highmem_idx.exit.i72.if.end.i73_crit_edge:     ; preds = %is_highmem_idx.exit.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i73

if.end.i73:                                       ; preds = %is_highmem_idx.exit.i72.if.end.i73_crit_edge, %kmap.exit.if.end.i73_crit_edge
  tail call void @kunmap_high(ptr noundef %24) #8
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i73, %is_highmem_idx.exit.i72.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %pages_per_bnode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 16
  %29 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pages_per_bnode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp3792 = icmp ugt i32 %30, 1
  br i1 %cmp3792, label %kunmap.exit.for.body_crit_edge, label %kunmap.exit.for.end_crit_edge

kunmap.exit.for.end_crit_edge:                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

kunmap.exit.for.body_crit_edge:                   ; preds = %kunmap.exit
  br label %for.body

for.body:                                         ; preds = %kunmap.exit88.for.body_crit_edge, %kunmap.exit.for.body_crit_edge
  %pagep.094 = phi ptr [ %incdec.ptr, %kunmap.exit88.for.body_crit_edge ], [ %page, %kunmap.exit.for.body_crit_edge ]
  %i.093 = phi i32 [ %inc, %kunmap.exit88.for.body_crit_edge ], [ 1, %kunmap.exit.for.body_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %pagep.094, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %shr.i.i74 = lshr i32 %34, 30
  %35 = zext i32 %shr.i.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %shr.i.i74, label %for.body.if.then.i78_crit_edge [
    i32 2, label %for.body.if.else.i80_crit_edge
    i32 3, label %is_highmem_idx.exit.i76
  ]

for.body.if.else.i80_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i80

for.body.if.then.i78_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

is_highmem_idx.exit.i76:                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %36 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i.not.i75 = icmp eq i32 %36, 2
  br i1 %cmp2.i.not.i75, label %is_highmem_idx.exit.i76.if.else.i80_crit_edge, label %is_highmem_idx.exit.i76.if.then.i78_crit_edge

is_highmem_idx.exit.i76.if.then.i78_crit_edge:    ; preds = %is_highmem_idx.exit.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i78

is_highmem_idx.exit.i76.if.else.i80_crit_edge:    ; preds = %is_highmem_idx.exit.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i80

if.then.i78:                                      ; preds = %is_highmem_idx.exit.i76.if.then.i78_crit_edge, %for.body.if.then.i78_crit_edge
  %call5.i77 = tail call ptr @page_address(ptr noundef %32) #8
  br label %kmap.exit83

if.else.i80:                                      ; preds = %is_highmem_idx.exit.i76.if.else.i80_crit_edge, %for.body.if.else.i80_crit_edge
  %call6.i79 = tail call ptr @kmap_high(ptr noundef %32) #8
  br label %kmap.exit83

kmap.exit83:                                      ; preds = %if.else.i80, %if.then.i78
  %addr.0.i81 = phi ptr [ %call6.i79, %if.else.i80 ], [ %call5.i77, %if.then.i78 ]
  %37 = call ptr @memset(ptr %addr.0.i81, i32 0, i32 4096)
  %38 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %incdec.ptr, align 4
  %call39 = tail call zeroext i1 @set_page_dirty(ptr noundef %39) #8
  %40 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %incdec.ptr, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %shr.i.i84 = lshr i32 %43, 30
  %44 = zext i32 %shr.i.i84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %shr.i.i84, label %kmap.exit83.kunmap.exit88_crit_edge [
    i32 2, label %kmap.exit83.if.end.i87_crit_edge
    i32 3, label %is_highmem_idx.exit.i86
  ]

kmap.exit83.if.end.i87_crit_edge:                 ; preds = %kmap.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i87

kmap.exit83.kunmap.exit88_crit_edge:              ; preds = %kmap.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit88

is_highmem_idx.exit.i86:                          ; preds = %kmap.exit83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %45 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp2.i.not.i85 = icmp eq i32 %45, 2
  br i1 %cmp2.i.not.i85, label %is_highmem_idx.exit.i86.if.end.i87_crit_edge, label %is_highmem_idx.exit.i86.kunmap.exit88_crit_edge

is_highmem_idx.exit.i86.kunmap.exit88_crit_edge:  ; preds = %is_highmem_idx.exit.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %kunmap.exit88

is_highmem_idx.exit.i86.if.end.i87_crit_edge:     ; preds = %is_highmem_idx.exit.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i87

if.end.i87:                                       ; preds = %is_highmem_idx.exit.i86.if.end.i87_crit_edge, %kmap.exit83.if.end.i87_crit_edge
  tail call void @kunmap_high(ptr noundef %41) #8
  br label %kunmap.exit88

kunmap.exit88:                                    ; preds = %if.end.i87, %is_highmem_idx.exit.i86.kunmap.exit88_crit_edge, %kmap.exit83.kunmap.exit88_crit_edge
  %inc = add nuw i32 %i.093, 1
  %46 = ptrtoint ptr %pages_per_bnode to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pages_per_bnode, align 4
  %cmp37 = icmp ult i32 %inc, %47
  br i1 %cmp37, label %kunmap.exit88.for.body_crit_edge, label %kunmap.exit88.for.end_crit_edge

kunmap.exit88.for.end_crit_edge:                  ; preds = %kunmap.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

kunmap.exit88.for.body_crit_edge:                 ; preds = %kunmap.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %kunmap.exit88.for.end_crit_edge, %kunmap.exit.for.end_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #8
  %lock_wq = getelementptr inbounds %struct.hfs_bnode, ptr %call24, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %lock_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then31, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %node.014.i, %do.end ], [ inttoptr (i32 -5 to ptr), %if.then31 ], [ %call24, %for.end ], [ inttoptr (i32 -12 to ptr), %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @hfs_bnode_need_zeroout(ptr nocapture noundef readonly %tree) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cnid = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 3
  %0 = ptrtoint ptr %cnid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inode = getelementptr inbounds %struct.hfs_btree, ptr %tree, i32 0, i32 1
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %s_vhdr = getelementptr inbounds %struct.hfsplus_sb_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %s_vhdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_vhdr, align 4
  %attributes = getelementptr inbounds %struct.hfsplus_vh, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %attributes to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %attributes, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp slt i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_bmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/bnode.c", i32 388, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfsplus_bnode_findhash._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfsplus_bnode_findhash._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfsplus/bnode.c", i32 583, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hfsplus_bnode_create._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hfsplus_bnode_create._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/hfsplus/bnode.c", i32 409, i32 3}
!15 = !{ptr @__hfs_bnode_create._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @__hfs_bnode_create._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__hfs_bnode_create.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../fs/hfsplus/bnode.c", i32 425, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/mm.h", i32 717, i32 2}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = !{i64 2148609586, i64 2148609612, i64 2148609641, i64 2148609675, i64 2148609706, i64 2148609729}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2155071764, i64 2155072247, i64 2155071801, i64 2155071857, i64 2155071891, i64 2155071915, i64 2155071956, i64 2155071977, i64 2155072005, i64 2155072039}
!39 = !{i64 2155059580, i64 2155060063, i64 2155059617, i64 2155059673, i64 2155059707, i64 2155059731, i64 2155059772, i64 2155059793, i64 2155059821, i64 2155059855}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2150207866, i64 2150208357, i64 2150207903, i64 2150207959, i64 2150207993, i64 2150208017, i64 2150208058, i64 2150208079, i64 2150208107, i64 2150208141}
!42 = !{i64 2153209291, i64 2153209774, i64 2153209328, i64 2153209384, i64 2153209418, i64 2153209442, i64 2153209483, i64 2153209504, i64 2153209532, i64 2153209566}
!43 = !{i64 2148698062}
!44 = !{i64 2148612771, i64 2148612803, i64 2148612832, i64 2148612866, i64 2148612897, i64 2148612920}
!45 = !{i64 2148698291}
!46 = !{i64 2148237574, i64 2148237579, i64 2148237592, i64 2148237636, i64 2148237670, i64 2148237691}
