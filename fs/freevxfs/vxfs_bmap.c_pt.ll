; ModuleID = '/llk/IR_all_yes/fs/freevxfs/vxfs_bmap.c_pt.bc'
source_filename = "../fs/freevxfs/vxfs_bmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vxfs_inode_info = type { %struct.inode, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i8, %union.anon.70, i32, i32, %union.anon.71 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%union.anon.70 = type { i32 }
%union.anon.71 = type { [6 x %struct.vxfs_typed] }
%struct.vxfs_typed = type { i64, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vxfs_ext4 = type { i32, i32, [2 x i32], [10 x %struct.direct] }
%struct.direct = type { i32, i32 }
%struct.vxfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.vxfs_typed_dev4 = type { i64, i64, i64, i32, i8 }

@vxfs_bmap1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014vxfs: inode %ld has no valid orgtype (%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vxfs_bmap1\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fs/freevxfs/vxfs_bmap.c\00", [40 x i8] zeroinitializer }, align 32
@vxfs_bmap1._entry_ptr = internal global ptr @vxfs_bmap1._entry, section ".printk_index", align 4
@vxfs_bmap1._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014vxfs: inode %ld has an unsupported orgtype (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@vxfs_bmap1._entry_ptr.5 = internal global ptr @vxfs_bmap1._entry.3, section ".printk_index", align 4
@vxfs_bmap_ext4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014no matching indir?\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vxfs_bmap_ext4\00", [17 x i8] zeroinitializer }, align 32
@vxfs_bmap_ext4._entry_ptr = internal global ptr @vxfs_bmap_ext4._entry, section ".printk_index", align 4
@vxfs_bmap_ext4._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vxfs: indirect extent too big!\0A\00", [32 x i8] zeroinitializer }, align 32
@vxfs_bmap_ext4._entry_ptr.10 = internal global ptr @vxfs_bmap_ext4._entry.8, section ".printk_index", align 4
@vxfs_bmap_typed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016\0A\0ATYPED_DEV4 detected!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vxfs_bmap_typed\00", [16 x i8] zeroinitializer }, align 32
@vxfs_bmap_typed._entry_ptr = internal global ptr @vxfs_bmap_typed._entry, section ".printk_index", align 4
@vxfs_bmap_typed._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016block: %llu\09size: %lld\09dev: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@vxfs_bmap_typed._entry_ptr.15 = internal global ptr @vxfs_bmap_typed._entry.13, section ".printk_index", align 4
@vxfs_bmap_indir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vxfs_bmap_indir\00", [16 x i8] zeroinitializer }, align 32
@vxfs_bmap_indir._entry_ptr = internal global ptr @vxfs_bmap_indir._entry, section ".printk_index", align 4
@vxfs_bmap_indir._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vxfs_bmap_indir._entry_ptr.18 = internal global ptr @vxfs_bmap_indir._entry.17, section ".printk_index", align 4
@vxfs_bmap_indir._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s:%d vt_hdr %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@vxfs_bmap_indir._entry_ptr.21 = internal global ptr @vxfs_bmap_indir._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 287, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 292, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 103, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 246, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 247, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 176, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 177, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [27 x i8] c"../fs/freevxfs/vxfs_bmap.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 184, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @vxfs_bmap1._entry, ptr @vxfs_bmap1._entry.3, ptr @vxfs_bmap1._entry_ptr, ptr @vxfs_bmap1._entry_ptr.5, ptr @vxfs_bmap_ext4._entry, ptr @vxfs_bmap_ext4._entry.8, ptr @vxfs_bmap_ext4._entry_ptr, ptr @vxfs_bmap_ext4._entry_ptr.10, ptr @vxfs_bmap_indir._entry, ptr @vxfs_bmap_indir._entry.17, ptr @vxfs_bmap_indir._entry.19, ptr @vxfs_bmap_indir._entry_ptr, ptr @vxfs_bmap_indir._entry_ptr.18, ptr @vxfs_bmap_indir._entry_ptr.21, ptr @vxfs_bmap_typed._entry, ptr @vxfs_bmap_typed._entry.13, ptr @vxfs_bmap_typed._entry_ptr, ptr @vxfs_bmap_typed._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap1._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_ext4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_ext4._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_typed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_typed._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_indir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_indir._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxfs_bmap_indir._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vxfs_bmap1(ptr nocapture noundef readonly %ip, i32 noundef %iblock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vii_orgtype = getelementptr inbounds %struct.vxfs_inode_info, ptr %ip, i32 0, i32 12
  %0 = ptrtoint ptr %vii_orgtype to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vii_orgtype, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 1, label %if.then
    i8 3, label %if.then7
    i8 0, label %entry.do.end33_crit_edge
    i8 2, label %entry.do.end33_crit_edge135
  ]

entry.do.end33_crit_edge135:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33

entry.do.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end33

if.then:                                          ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i, align 16
  %vii_org.i = getelementptr inbounds %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16
  %ve4_indsize.i = getelementptr inbounds %struct.vxfs_ext4, ptr %vii_org.i, i32 0, i32 1
  %9 = ptrtoint ptr %ve4_indsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ve4_indsize.i, align 4
  %byte_order.i.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %6, i32 0, i32 9
  %11 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %retval.0.i.i = select i1 %cmp.i.i, i32 %10, i32 %13
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %8)
  %cmp.i = icmp ugt i32 %retval.0.i.i, %8
  br i1 %cmp.i, label %do.end37.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then
  %ve4_direct.i = getelementptr inbounds %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %iblock)
  %cmp5.i = icmp sgt i32 %iblock, -1
  br i1 %cmp5.i, label %land.lhs.true.i, label %for.cond.preheader.i.for.inc.i_crit_edge

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  %size.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 0, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #4
  %retval.0.i82.i = select i1 %cmp.i.i, i32 %15, i32 %16
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i82.i, i32 %iblock)
  %cmp7.i = icmp ugt i32 %retval.0.i82.i, %iblock
  br i1 %cmp7.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.9.i.cleanup.i_crit_edge, %land.lhs.true.8.i.cleanup.i_crit_edge, %land.lhs.true.7.i.cleanup.i_crit_edge, %land.lhs.true.6.i.cleanup.i_crit_edge, %land.lhs.true.5.i.cleanup.i_crit_edge, %land.lhs.true.4.i.cleanup.i_crit_edge, %land.lhs.true.3.i.cleanup.i_crit_edge, %land.lhs.true.2.i.cleanup.i_crit_edge, %land.lhs.true.1.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  %bn.addr.0105.lcssa.i = phi i32 [ %iblock, %land.lhs.true.i.cleanup.i_crit_edge ], [ %sub.i, %land.lhs.true.1.i.cleanup.i_crit_edge ], [ %sub.1.i, %land.lhs.true.2.i.cleanup.i_crit_edge ], [ %sub.2.i, %land.lhs.true.3.i.cleanup.i_crit_edge ], [ %sub.3.i, %land.lhs.true.4.i.cleanup.i_crit_edge ], [ %sub.4.i, %land.lhs.true.5.i.cleanup.i_crit_edge ], [ %sub.5.i, %land.lhs.true.6.i.cleanup.i_crit_edge ], [ %sub.6.i, %land.lhs.true.7.i.cleanup.i_crit_edge ], [ %sub.7.i, %land.lhs.true.8.i.cleanup.i_crit_edge ], [ %sub.8.i, %land.lhs.true.9.i.cleanup.i_crit_edge ]
  %i.0103.lcssa.i = phi i32 [ 0, %land.lhs.true.i.cleanup.i_crit_edge ], [ 1, %land.lhs.true.1.i.cleanup.i_crit_edge ], [ 2, %land.lhs.true.2.i.cleanup.i_crit_edge ], [ 3, %land.lhs.true.3.i.cleanup.i_crit_edge ], [ 4, %land.lhs.true.4.i.cleanup.i_crit_edge ], [ 5, %land.lhs.true.5.i.cleanup.i_crit_edge ], [ 6, %land.lhs.true.6.i.cleanup.i_crit_edge ], [ 7, %land.lhs.true.7.i.cleanup.i_crit_edge ], [ 8, %land.lhs.true.8.i.cleanup.i_crit_edge ], [ 9, %land.lhs.true.9.i.cleanup.i_crit_edge ]
  %add.ptr.le.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 %i.0103.lcssa.i
  %17 = ptrtoint ptr %add.ptr.le.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.le.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #4
  %retval.0.i85.i = select i1 %cmp.i.i, i32 %18, i32 %19
  %add.i = add i32 %retval.0.i85.i, %bn.addr.0105.lcssa.i
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %size11.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 0, i32 1
  %20 = ptrtoint ptr %size11.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size11.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %retval.0.i88.i = select i1 %cmp.i.i, i32 %21, i32 %22
  %sub.i = sub i32 %iblock, %retval.0.i88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp5.1.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp5.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %size.1.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.1.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #4
  %retval.0.i82.1.i = select i1 %cmp.i.i, i32 %24, i32 %25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %retval.0.i82.1.i)
  %cmp7.1.i = icmp ult i32 %sub.i, %retval.0.i82.1.i
  br i1 %cmp7.1.i, label %land.lhs.true.1.i.cleanup.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

land.lhs.true.1.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %size11.1.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %size11.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size11.1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #4
  %retval.0.i88.1.i = select i1 %cmp.i.i, i32 %27, i32 %28
  %sub.1.i = sub i32 %sub.i, %retval.0.i88.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.1.i)
  %cmp5.2.i = icmp sgt i32 %sub.1.i, -1
  br i1 %cmp5.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %size.2.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 2, i32 1
  %29 = ptrtoint ptr %size.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size.2.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %retval.0.i82.2.i = select i1 %cmp.i.i, i32 %30, i32 %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %retval.0.i82.2.i)
  %cmp7.2.i = icmp ult i32 %sub.1.i, %retval.0.i82.2.i
  br i1 %cmp7.2.i, label %land.lhs.true.2.i.cleanup.i_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

land.lhs.true.2.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %size11.2.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 2, i32 1
  %32 = ptrtoint ptr %size11.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size11.2.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %retval.0.i88.2.i = select i1 %cmp.i.i, i32 %33, i32 %34
  %sub.2.i = sub i32 %sub.1.i, %retval.0.i88.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.2.i)
  %cmp5.3.i = icmp sgt i32 %sub.2.i, -1
  br i1 %cmp5.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %size.3.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %size.3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.3.i, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  %retval.0.i82.3.i = select i1 %cmp.i.i, i32 %36, i32 %37
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.2.i, i32 %retval.0.i82.3.i)
  %cmp7.3.i = icmp ult i32 %sub.2.i, %retval.0.i82.3.i
  br i1 %cmp7.3.i, label %land.lhs.true.3.i.cleanup.i_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3.i

land.lhs.true.3.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %size11.3.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %size11.3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size11.3.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  %retval.0.i88.3.i = select i1 %cmp.i.i, i32 %39, i32 %40
  %sub.3.i = sub i32 %sub.2.i, %retval.0.i88.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.3.i)
  %cmp5.4.i = icmp sgt i32 %sub.3.i, -1
  br i1 %cmp5.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %size.4.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 4, i32 1
  %41 = ptrtoint ptr %size.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.4.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  %retval.0.i82.4.i = select i1 %cmp.i.i, i32 %42, i32 %43
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.3.i, i32 %retval.0.i82.4.i)
  %cmp7.4.i = icmp ult i32 %sub.3.i, %retval.0.i82.4.i
  br i1 %cmp7.4.i, label %land.lhs.true.4.i.cleanup.i_crit_edge, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4.i

land.lhs.true.4.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %size11.4.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 4, i32 1
  %44 = ptrtoint ptr %size11.4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size11.4.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #4
  %retval.0.i88.4.i = select i1 %cmp.i.i, i32 %45, i32 %46
  %sub.4.i = sub i32 %sub.3.i, %retval.0.i88.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.4.i)
  %cmp5.5.i = icmp sgt i32 %sub.4.i, -1
  br i1 %cmp5.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %size.5.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %size.5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size.5.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  %retval.0.i82.5.i = select i1 %cmp.i.i, i32 %48, i32 %49
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.4.i, i32 %retval.0.i82.5.i)
  %cmp7.5.i = icmp ult i32 %sub.4.i, %retval.0.i82.5.i
  br i1 %cmp7.5.i, label %land.lhs.true.5.i.cleanup.i_crit_edge, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5.i

land.lhs.true.5.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %size11.5.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %size11.5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size11.5.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #4
  %retval.0.i88.5.i = select i1 %cmp.i.i, i32 %51, i32 %52
  %sub.5.i = sub i32 %sub.4.i, %retval.0.i88.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.5.i)
  %cmp5.6.i = icmp sgt i32 %sub.5.i, -1
  br i1 %cmp5.6.i, label %land.lhs.true.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %size.6.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 6, i32 1
  %53 = ptrtoint ptr %size.6.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size.6.i, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #4
  %retval.0.i82.6.i = select i1 %cmp.i.i, i32 %54, i32 %55
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.5.i, i32 %retval.0.i82.6.i)
  %cmp7.6.i = icmp ult i32 %sub.5.i, %retval.0.i82.6.i
  br i1 %cmp7.6.i, label %land.lhs.true.6.i.cleanup.i_crit_edge, label %land.lhs.true.6.i.for.inc.6.i_crit_edge

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6.i

land.lhs.true.6.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %size11.6.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 6, i32 1
  %56 = ptrtoint ptr %size11.6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size11.6.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #4
  %retval.0.i88.6.i = select i1 %cmp.i.i, i32 %57, i32 %58
  %sub.6.i = sub i32 %sub.5.i, %retval.0.i88.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.6.i)
  %cmp5.7.i = icmp sgt i32 %sub.6.i, -1
  br i1 %cmp5.7.i, label %land.lhs.true.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %size.7.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 4, i32 2
  %59 = ptrtoint ptr %size.7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size.7.i, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #4
  %retval.0.i82.7.i = select i1 %cmp.i.i, i32 %60, i32 %61
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.6.i, i32 %retval.0.i82.7.i)
  %cmp7.7.i = icmp ult i32 %sub.6.i, %retval.0.i82.7.i
  br i1 %cmp7.7.i, label %land.lhs.true.7.i.cleanup.i_crit_edge, label %land.lhs.true.7.i.for.inc.7.i_crit_edge

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7.i

land.lhs.true.7.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.7.i:                                      ; preds = %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %size11.7.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 4, i32 2
  %62 = ptrtoint ptr %size11.7.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size11.7.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #4
  %retval.0.i88.7.i = select i1 %cmp.i.i, i32 %63, i32 %64
  %sub.7.i = sub i32 %sub.6.i, %retval.0.i88.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.7.i)
  %cmp5.8.i = icmp sgt i32 %sub.7.i, -1
  br i1 %cmp5.8.i, label %land.lhs.true.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8.i

land.lhs.true.8.i:                                ; preds = %for.inc.7.i
  %size.8.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 8, i32 1
  %65 = ptrtoint ptr %size.8.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.8.i, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #4
  %retval.0.i82.8.i = select i1 %cmp.i.i, i32 %66, i32 %67
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.7.i, i32 %retval.0.i82.8.i)
  %cmp7.8.i = icmp ult i32 %sub.7.i, %retval.0.i82.8.i
  br i1 %cmp7.8.i, label %land.lhs.true.8.i.cleanup.i_crit_edge, label %land.lhs.true.8.i.for.inc.8.i_crit_edge

land.lhs.true.8.i.for.inc.8.i_crit_edge:          ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8.i

land.lhs.true.8.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.8.i:                                      ; preds = %land.lhs.true.8.i.for.inc.8.i_crit_edge, %for.inc.7.i.for.inc.8.i_crit_edge
  %size11.8.i = getelementptr %struct.direct, ptr %ve4_direct.i, i32 8, i32 1
  %68 = ptrtoint ptr %size11.8.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %size11.8.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #4
  %retval.0.i88.8.i = select i1 %cmp.i.i, i32 %69, i32 %70
  %sub.8.i = sub i32 %sub.7.i, %retval.0.i88.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.8.i)
  %cmp5.9.i = icmp sgt i32 %sub.8.i, -1
  br i1 %cmp5.9.i, label %land.lhs.true.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.9.i

land.lhs.true.9.i:                                ; preds = %for.inc.8.i
  %size.9.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 5, i32 2
  %71 = ptrtoint ptr %size.9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size.9.i, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #4
  %retval.0.i82.9.i = select i1 %cmp.i.i, i32 %72, i32 %73
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.8.i, i32 %retval.0.i82.9.i)
  %cmp7.9.i = icmp ult i32 %sub.8.i, %retval.0.i82.9.i
  br i1 %cmp7.9.i, label %land.lhs.true.9.i.cleanup.i_crit_edge, label %land.lhs.true.9.i.for.inc.9.i_crit_edge

land.lhs.true.9.i.for.inc.9.i_crit_edge:          ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.9.i

land.lhs.true.9.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

for.inc.9.i:                                      ; preds = %land.lhs.true.9.i.for.inc.9.i_crit_edge, %for.inc.8.i.for.inc.9.i_crit_edge
  %size11.9.i = getelementptr %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 5, i32 2
  %74 = ptrtoint ptr %size11.9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size11.9.i, align 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #4
  %retval.0.i88.9.i = select i1 %cmp.i.i, i32 %75, i32 %76
  %sub.9.i = sub i32 %sub.8.i, %retval.0.i88.9.i
  %mul.i = mul i32 %retval.0.i.i, %8
  %mul13.i = mul i32 %mul.i, %retval.0.i.i
  %div79.i = lshr i32 %mul13.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div79.i, i32 %sub.9.i)
  %cmp15.i = icmp ugt i32 %div79.i, %sub.9.i
  br i1 %cmp15.i, label %if.then16.i, label %do.end.i

if.then16.i:                                      ; preds = %for.inc.9.i
  %ve4_indir.i = getelementptr inbounds %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %ve4_indir.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ve4_indir.i, align 8
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #4
  %retval.0.i91.i = select i1 %cmp.i.i, i32 %78, i32 %79
  %conv.i = zext i32 %retval.0.i91.i to i64
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 26
  %80 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_bdev.i.i, align 4
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %81, i64 noundef %conv.i, i32 noundef %8, i32 noundef 8) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then16.i.cleanup_crit_edge, label %lor.lhs.false.i

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then16.i
  %82 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %call.i.i, align 4
  %84 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool21.not.i = icmp eq i32 %84, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %cleanup30.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup30.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %85 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data.i, align 4
  %sub.9.i.frozen = freeze i32 %sub.9.i
  %retval.0.i.i.frozen = freeze i32 %retval.0.i.i
  %div24.i = udiv i32 %sub.9.i.frozen, %retval.0.i.i.frozen
  %mul25.i = mul i32 %sub.9.i, %retval.0.i.i
  %rem.i = urem i32 %div24.i, %mul25.i
  %arrayidx26.i = getelementptr i32, ptr %86, i32 %rem.i
  %87 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx26.i, align 4
  %89 = ptrtoint ptr %byte_order.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %byte_order.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i93.i = icmp eq i32 %90, 1
  %91 = tail call i32 @llvm.bswap.i32(i32 %88) #4
  %retval.0.i94.i = select i1 %cmp.i93.i, i32 %88, i32 %91
  %92 = mul i32 %div24.i, %retval.0.i.i.frozen
  %rem28.i.decomposed = sub i32 %sub.9.i.frozen, %92
  %add29.i = add i32 %retval.0.i94.i, %rem28.i.decomposed
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #4
  br label %cleanup

do.end.i:                                         ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #6
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.end37.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.then7:                                         ; preds = %entry
  %i_sb.i49 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %93 = ptrtoint ptr %i_sb.i49 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb.i49, align 4
  %s_fs_info.i50 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 33
  %95 = ptrtoint ptr %s_fs_info.i50 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i50, align 16
  %vii_org.i51 = getelementptr inbounds %struct.vxfs_inode_info, ptr %ip, i32 0, i32 16
  %byte_order.i.i52 = getelementptr inbounds %struct.vxfs_sb_info, ptr %96, i32 0, i32 9
  %conv.i53 = sext i32 %iblock to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i62.for.body.i_crit_edge, %if.then7
  %i.0113.i = phi i32 [ 0, %if.then7 ], [ %inc.i, %for.inc.i62.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.vxfs_typed, ptr %vii_org.i51, i32 %i.0113.i
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %add.ptr.i, align 8
  %99 = ptrtoint ptr %byte_order.i.i52 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %byte_order.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %100)
  %cmp.i.i54 = icmp eq i32 %100, 1
  %101 = tail call i64 @llvm.bswap.i64(i64 %98) #4
  %retval.0.i.i55 = select i1 %cmp.i.i54, i64 %98, i64 %101
  %and.i = and i64 %retval.0.i.i55, 72057594037927935
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %conv.i53)
  %cmp2.i = icmp sgt i64 %and.i, %conv.i53
  br i1 %cmp2.i, label %for.body.i.for.inc.i62_crit_edge, label %if.end.i

for.body.i.for.inc.i62_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i62

if.end.i:                                         ; preds = %for.body.i
  %shr.i = lshr i64 %retval.0.i.i55, 56
  %trunc.i = trunc i64 %shr.i to i8
  %102 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %trunc.i, label %do.body39.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb14.i
    i8 3, label %if.end.i.sw.bb29.i_crit_edge
    i8 4, label %if.end.i.sw.bb29.i_crit_edge136
  ]

if.end.i.sw.bb29.i_crit_edge136:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb29.i

if.end.i.sw.bb29.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb29.i

sw.bb.i:                                          ; preds = %if.end.i
  %vt_block.i = getelementptr %struct.vxfs_typed, ptr %vii_org.i51, i32 %i.0113.i, i32 1
  %103 = ptrtoint ptr %vt_block.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %vt_block.i, align 8
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #4
  %retval.0.i79.i = select i1 %cmp.i.i54, i32 %104, i32 %105
  %vt_size.i = getelementptr %struct.vxfs_typed, ptr %vii_org.i51, i32 %i.0113.i, i32 2
  %106 = ptrtoint ptr %vt_size.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vt_size.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #4
  %retval.0.i82.i56 = select i1 %cmp.i.i54, i32 %107, i32 %108
  %109 = trunc i64 %retval.0.i.i55 to i32
  %conv8.i = sub i32 %iblock, %109
  %call9.i = tail call fastcc i32 @vxfs_bmap_indir(ptr noundef %ip, i32 noundef %retval.0.i79.i, i32 noundef %retval.0.i82.i56, i32 noundef %conv8.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, -2
  br i1 %cmp10.i, label %sw.bb.i.for.inc.i62_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i.for.inc.i62_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i62

sw.bb14.i:                                        ; preds = %if.end.i
  %sub16.i = sub nsw i64 %conv.i53, %and.i
  %vt_size17.i = getelementptr %struct.vxfs_typed, ptr %vii_org.i51, i32 %i.0113.i, i32 2
  %110 = ptrtoint ptr %vt_size17.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vt_size17.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #4
  %retval.0.i85.i57 = select i1 %cmp.i.i54, i32 %111, i32 %112
  %conv19.i = zext i32 %retval.0.i85.i57 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub16.i, i64 %conv19.i)
  %cmp20.i = icmp slt i64 %sub16.i, %conv19.i
  br i1 %cmp20.i, label %if.then22.i, label %sw.bb14.i.for.inc.i62_crit_edge

sw.bb14.i.for.inc.i62_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i62

if.then22.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #6
  %vt_block23.i = getelementptr %struct.vxfs_typed, ptr %vii_org.i51, i32 %i.0113.i, i32 1
  %113 = ptrtoint ptr %vt_block23.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %vt_block23.i, align 8
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #4
  %retval.0.i88.i58 = select i1 %cmp.i.i54, i32 %114, i32 %115
  %116 = trunc i64 %retval.0.i.i55 to i32
  %add.i59 = sub i32 %iblock, %116
  %conv27.i = add i32 %add.i59, %retval.0.i88.i58
  br label %cleanup

sw.bb29.i:                                        ; preds = %if.end.i.sw.bb29.i_crit_edge, %if.end.i.sw.bb29.i_crit_edge136
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  %vd4_block.i = getelementptr inbounds %struct.vxfs_typed_dev4, ptr %add.ptr.i, i32 0, i32 1
  %117 = ptrtoint ptr %vd4_block.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %vd4_block.i, align 8
  %119 = ptrtoint ptr %byte_order.i.i52 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %byte_order.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp.i90.i = icmp eq i32 %120, 1
  %121 = tail call i64 @llvm.bswap.i64(i64 %118) #4
  %retval.0.i91.i60 = select i1 %cmp.i90.i, i64 %118, i64 %121
  %vd4_size.i = getelementptr inbounds %struct.vxfs_typed_dev4, ptr %add.ptr.i, i32 0, i32 2
  %122 = ptrtoint ptr %vd4_size.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %vd4_size.i, align 8
  %124 = tail call i64 @llvm.bswap.i64(i64 %123) #4
  %retval.0.i94.i61 = select i1 %cmp.i90.i, i64 %123, i64 %124
  %vd4_dev.i = getelementptr inbounds %struct.vxfs_typed_dev4, ptr %add.ptr.i, i32 0, i32 3
  %125 = ptrtoint ptr %vd4_dev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vd4_dev.i, align 8
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #4
  %retval.0.i97.i = select i1 %cmp.i90.i, i32 %126, i32 %127
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %retval.0.i91.i60, i64 noundef %retval.0.i94.i61, i32 noundef %retval.0.i97.i) #7
  br label %cleanup

do.body39.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/freevxfs/vxfs_bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #4, !srcloc !48
  unreachable

for.inc.i62:                                      ; preds = %sw.bb14.i.for.inc.i62_crit_edge, %sw.bb.i.for.inc.i62_crit_edge, %for.body.i.for.inc.i62_crit_edge
  %inc.i = add nuw nsw i32 %i.0113.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %for.inc.i62.cleanup_crit_edge, label %for.inc.i62.for.body.i_crit_edge

for.inc.i62.for.body.i_crit_edge:                 ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i62.cleanup_crit_edge:                    ; preds = %for.inc.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %1 to i32
  %i_ino = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %128 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %i_ino, align 8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %129, i32 noundef %conv) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/freevxfs/vxfs_bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 289, 0\0A.popsection", ""() #4, !srcloc !49
  unreachable

do.end33:                                         ; preds = %entry.do.end33_crit_edge, %entry.do.end33_crit_edge135
  %i_ino35 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 11
  %130 = ptrtoint ptr %i_ino35 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %i_ino35, align 8
  %conv37 = zext i8 %1 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %131, i32 noundef %conv37) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %for.inc.i62.cleanup_crit_edge, %sw.bb29.i, %if.then22.i, %sw.bb.i.cleanup_crit_edge, %do.end37.i, %do.end.i, %cleanup30.i, %lor.lhs.false.i.cleanup_crit_edge, %if.then16.i.cleanup_crit_edge, %cleanup.i
  %retval.0 = phi i32 [ 0, %do.end33 ], [ %add.i, %cleanup.i ], [ %add29.i, %cleanup30.i ], [ 0, %do.end.i ], [ 0, %do.end37.i ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then16.i.cleanup_crit_edge ], [ %conv27.i, %if.then22.i ], [ 0, %sw.bb29.i ], [ 0, %for.inc.i62.cleanup_crit_edge ], [ %call9.i, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vxfs_bmap_indir(ptr nocapture noundef readonly %ip, i32 noundef %indir, i32 noundef %size, i32 noundef %block) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize192 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize192 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize192, align 16
  %div112193 = lshr i32 %3, 4
  %mul194 = mul i32 %div112193, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul194)
  %cmp195.not = icmp eq i32 %mul194, 0
  br i1 %cmp195.not, label %entry.cleanup70_crit_edge, label %for.body.lr.ph

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup70

for.body.lr.ph:                                   ; preds = %entry
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %byte_order.i = getelementptr inbounds %struct.vxfs_sb_info, ptr %5, i32 0, i32 9
  %conv13 = sext i32 %block to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %div112198 = phi i32 [ %div112193, %for.body.lr.ph ], [ %div112, %for.inc.for.body_crit_edge ]
  %6 = phi i32 [ %3, %for.body.lr.ph ], [ %53, %for.inc.for.body_crit_edge ]
  %7 = phi ptr [ %1, %for.body.lr.ph ], [ %51, %for.inc.for.body_crit_edge ]
  %i.0196 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div6 = udiv i32 %i.0196, %div112198
  %add = add i32 %div6, %indir
  %conv = zext i32 %add to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef %conv, i32 noundef %6, i32 noundef 8) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup70_crit_edge, label %lor.lhs.false

for.body.cleanup70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup70

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %call.i, align 4
  %12 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup70_crit_edge, label %if.end

lor.lhs.false.cleanup70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup70

if.end:                                           ; preds = %lor.lhs.false
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data, align 4
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  %s_blocksize10 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize10, align 16
  %div11113 = lshr i32 %18, 4
  %rem = urem i32 %i.0196, %div11113
  %add.ptr = getelementptr %struct.vxfs_typed, ptr %14, i32 %rem
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr, align 8
  %21 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  %23 = tail call i64 @llvm.bswap.i64(i64 %20) #4
  %retval.0.i = select i1 %cmp.i, i64 %20, i64 %23
  %and = and i64 %retval.0.i, 72057594037927935
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv13)
  %cmp14 = icmp sgt i64 %and, %conv13
  br i1 %cmp14, label %if.end.for.inc_crit_edge, label %if.end17

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end17:                                         ; preds = %if.end
  %shr = lshr i64 %retval.0.i, 56
  %trunc = trunc i64 %shr to i8
  %24 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %trunc, label %do.end58 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb30
    i8 3, label %if.end17.cleanup_crit_edge
    i8 4, label %if.end17.cleanup_crit_edge306
  ]

if.end17.cleanup_crit_edge306:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end17
  %vt_block = getelementptr %struct.vxfs_typed, ptr %14, i32 %rem, i32 1
  %25 = ptrtoint ptr %vt_block to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vt_block, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %retval.0.i119 = select i1 %cmp.i, i32 %26, i32 %27
  %vt_size = getelementptr %struct.vxfs_typed, ptr %14, i32 %rem, i32 2
  %28 = ptrtoint ptr %vt_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vt_size, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  %retval.0.i122 = select i1 %cmp.i, i32 %29, i32 %30
  %31 = trunc i64 %retval.0.i to i32
  %conv24 = sub i32 %block, %31
  %call25 = tail call fastcc i32 @vxfs_bmap_indir(ptr noundef %ip, i32 noundef %retval.0.i119, i32 noundef %retval.0.i122, i32 noundef %conv24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call25)
  %cmp26 = icmp eq i32 %call25, -2
  br i1 %cmp26, label %sw.bb.for.inc_crit_edge, label %sw.bb.if.then.i145_crit_edge

sw.bb.if.then.i145_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i145

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

sw.bb30:                                          ; preds = %if.end17
  %sub32 = sub nsw i64 %conv13, %and
  %vt_size33 = getelementptr %struct.vxfs_typed, ptr %14, i32 %rem, i32 2
  %32 = ptrtoint ptr %vt_size33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vt_size33, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  %retval.0.i125 = select i1 %cmp.i, i32 %33, i32 %34
  %conv35 = zext i32 %retval.0.i125 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub32, i64 %conv35)
  %cmp36.not = icmp slt i64 %sub32, %conv35
  br i1 %cmp36.not, label %if.end39, label %sw.bb30.for.inc_crit_edge

sw.bb30.for.inc_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end39:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  %vt_block40 = getelementptr %struct.vxfs_typed, ptr %14, i32 %rem, i32 1
  %35 = ptrtoint ptr %vt_block40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vt_block40, align 8
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #4
  %retval.0.i128 = select i1 %cmp.i, i32 %36, i32 %37
  %38 = trunc i64 %retval.0.i to i32
  %add42 = sub i32 %block, %38
  %conv45 = add i32 %add42, %retval.0.i128
  br label %if.then.i145

do.end58:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef 185, i64 noundef %retval.0.i) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/freevxfs/vxfs_bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #4, !srcloc !50
  unreachable

cleanup:                                          ; preds = %if.end17.cleanup_crit_edge, %if.end17.cleanup_crit_edge306
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  %vd4_block = getelementptr inbounds %struct.vxfs_typed_dev4, ptr %add.ptr, i32 0, i32 1
  %39 = ptrtoint ptr %vd4_block to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vd4_block, align 8
  %41 = ptrtoint ptr %byte_order.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %byte_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.i130 = icmp eq i32 %42, 1
  %43 = tail call i64 @llvm.bswap.i64(i64 %40) #4
  %retval.0.i131 = select i1 %cmp.i130, i64 %40, i64 %43
  %vd4_size = getelementptr inbounds %struct.vxfs_typed_dev4, ptr %add.ptr, i32 0, i32 2
  %44 = ptrtoint ptr %vd4_size to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %vd4_size, align 8
  %46 = tail call i64 @llvm.bswap.i64(i64 %45) #4
  %retval.0.i134 = select i1 %cmp.i130, i64 %45, i64 %46
  %vd4_dev = getelementptr inbounds %struct.vxfs_typed_dev4, ptr %add.ptr, i32 0, i32 3
  %47 = ptrtoint ptr %vd4_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vd4_dev, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #4
  %retval.0.i137 = select i1 %cmp.i130, i32 %48, i32 %49
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i64 noundef %retval.0.i131, i64 noundef %retval.0.i134, i32 noundef %retval.0.i137) #7
  br label %if.then.i145

for.inc:                                          ; preds = %sw.bb30.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.end.for.inc_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #4
  %inc = add nuw i32 %i.0196, 1
  %50 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocksize, align 16
  %div112 = lshr i32 %53, 4
  %mul = mul i32 %div112, %size
  %cmp = icmp ult i32 %inc, %mul
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.then.i145_crit_edge

for.inc.if.then.i145_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i145

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.then.i145:                                     ; preds = %for.inc.if.then.i145_crit_edge, %cleanup, %if.end39, %sw.bb.if.then.i145_crit_edge
  %pblock.3162 = phi i32 [ 0, %cleanup ], [ %conv45, %if.end39 ], [ %call25, %sw.bb.if.then.i145_crit_edge ], [ 0, %for.inc.if.then.i145_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #4
  br label %cleanup70

cleanup70:                                        ; preds = %if.then.i145, %lor.lhs.false.cleanup70_crit_edge, %for.body.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  %retval.2 = phi i32 [ %pblock.3162, %if.then.i145 ], [ 0, %entry.cleanup70_crit_edge ], [ 0, %lor.lhs.false.cleanup70_crit_edge ], [ 0, %for.body.cleanup70_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 287, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vxfs_bmap1._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vxfs_bmap1._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 292, i32 2}
!8 = !{ptr @vxfs_bmap1._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @vxfs_bmap1._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 103, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vxfs_bmap_ext4._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @vxfs_bmap_ext4._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 108, i32 2}
!17 = !{ptr @vxfs_bmap_ext4._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vxfs_bmap_ext4._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 246, i32 4}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vxfs_bmap_typed._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @vxfs_bmap_typed._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 247, i32 4}
!26 = !{ptr @vxfs_bmap_typed._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vxfs_bmap_typed._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 176, i32 4}
!30 = !{ptr @vxfs_bmap_indir._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vxfs_bmap_indir._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @vxfs_bmap_indir._entry.17, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 177, i32 4}
!34 = !{ptr @vxfs_bmap_indir._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/freevxfs/vxfs_bmap.c", i32 184, i32 4}
!37 = !{ptr @vxfs_bmap_indir._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @vxfs_bmap_indir._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2153838433, i64 2153838921, i64 2153838470, i64 2153838526, i64 2153838560, i64 2153838584, i64 2153838625, i64 2153838646, i64 2153838674, i64 2153838708}
!49 = !{i64 2153841857, i64 2153842345, i64 2153841894, i64 2153841950, i64 2153841984, i64 2153842008, i64 2153842049, i64 2153842070, i64 2153842098, i64 2153842132}
!50 = !{i64 2153833733, i64 2153834221, i64 2153833770, i64 2153833826, i64 2153833860, i64 2153833884, i64 2153833925, i64 2153833946, i64 2153833974, i64 2153834008}
