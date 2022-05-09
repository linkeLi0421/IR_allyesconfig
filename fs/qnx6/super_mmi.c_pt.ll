; ModuleID = '/llk/IR_all_yes/fs/qnx6/super_mmi.c_pt.bc'
source_filename = "../fs/qnx6/super_mmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.qnx6_sb_info = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.qnx6_mmi_super_block = type { i32, i32, i64, [12 x i8], [12 x i8], i32, i32, i32, i32, i32, [4 x i8], %struct.qnx6_root_node, %struct.qnx6_root_node, %struct.qnx6_root_node, %struct.qnx6_root_node }
%struct.qnx6_root_node = type { i64, [16 x i32], i8, i8, [6 x i8] }
%struct.qnx6_super_block = type { i32, i32, i64, i32, i32, i32, i16, i16, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.qnx6_root_node, %struct.qnx6_root_node, %struct.qnx6_root_node, %struct.qnx6_root_node }

@qnx6_mmi_fill_super._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013qnx6: Unable to read first mmi superblock\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qnx6_mmi_fill_super\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/qnx6/super_mmi.c\00", [44 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr = internal global ptr @qnx6_mmi_fill_super._entry, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qnx6: wrong signature (magic) in superblock #1.\0A\00", [45 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.5 = internal global ptr @qnx6_mmi_fill_super._entry.3, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013qnx6: superblock #1 checksum error\0A\00", [58 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.8 = internal global ptr @qnx6_mmi_fill_super._entry.6, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013qnx6: unable to set blocksize\0A\00", [63 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.11 = internal global ptr @qnx6_mmi_fill_super._entry.9, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013qnx6: unable to read the second superblock\0A\00", [50 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.14 = internal global ptr @qnx6_mmi_fill_super._entry.12, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013qnx6: wrong signature (magic) in superblock #2.\0A\00", [45 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.17 = internal global ptr @qnx6_mmi_fill_super._entry.15, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.19 = internal global ptr @qnx6_mmi_fill_super._entry.18, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013qnx6: unable to allocate memory.\0A\00", [60 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.22 = internal global ptr @qnx6_mmi_fill_super._entry.20, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016qnx6: superblock #1 active\0A\00", [34 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.25 = internal global ptr @qnx6_mmi_fill_super._entry.23, section ".printk_index", align 4
@qnx6_mmi_fill_super._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016qnx6: superblock #2 active\0A\00", [34 x i8] zeroinitializer }, align 32
@qnx6_mmi_fill_super._entry_ptr.28 = internal global ptr @qnx6_mmi_fill_super._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 48, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 55, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 63, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 73, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 86, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 92, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 99, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 105, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 121, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [23 x i8] c"../fs/qnx6/super_mmi.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 133, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @qnx6_mmi_fill_super._entry, ptr @qnx6_mmi_fill_super._entry.12, ptr @qnx6_mmi_fill_super._entry.15, ptr @qnx6_mmi_fill_super._entry.18, ptr @qnx6_mmi_fill_super._entry.20, ptr @qnx6_mmi_fill_super._entry.23, ptr @qnx6_mmi_fill_super._entry.26, ptr @qnx6_mmi_fill_super._entry.3, ptr @qnx6_mmi_fill_super._entry.6, ptr @qnx6_mmi_fill_super._entry.9, ptr @qnx6_mmi_fill_super._entry_ptr, ptr @qnx6_mmi_fill_super._entry_ptr.11, ptr @qnx6_mmi_fill_super._entry_ptr.14, ptr @qnx6_mmi_fill_super._entry_ptr.17, ptr @qnx6_mmi_fill_super._entry_ptr.19, ptr @qnx6_mmi_fill_super._entry_ptr.22, ptr @qnx6_mmi_fill_super._entry_ptr.25, ptr @qnx6_mmi_fill_super._entry_ptr.28, ptr @qnx6_mmi_fill_super._entry_ptr.5, ptr @qnx6_mmi_fill_super._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnx6_mmi_fill_super._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qnx6_mmi_fill_super(ptr noundef %s, i32 noundef %silent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 26
  %0 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %1, i64 noundef 0, i32 noundef %3, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %s_bytesex.i = getelementptr inbounds %struct.qnx6_sb_info, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %retval.0.i = select i1 %cmp.i, i32 %12, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1746473250, i32 %retval.0.i)
  %cmp.not = icmp ne i32 %retval.0.i, 1746473250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %silent)
  %tobool5.not = icmp eq i32 %silent, 0
  %or.cond = and i1 %tobool5.not, %cmp.not
  br i1 %or.cond, label %if.end.if.end118.thread236_crit_edge, label %if.end13

if.end.if.end118.thread236_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread236

if.end13:                                         ; preds = %if.end
  %sb_checksum = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %sb_checksum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_checksum, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %retval.0.i188 = select i1 %cmp.i, i32 %15, i32 %14
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %call16 = tail call i32 @crc32_be(i32 noundef 0, ptr noundef %add.ptr, i32 noundef 504) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i188, i32 %call16)
  %cmp17.not = icmp eq i32 %retval.0.i188, %call16
  br i1 %cmp17.not, label %if.end24, label %if.end13.if.end118.thread236_crit_edge

if.end13.if.end118.thread236_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread236

if.end24:                                         ; preds = %if.end13
  %sb_num_blocks = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %sb_num_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_num_blocks, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %retval.0.i191 = select i1 %cmp.i, i32 %18, i32 %17
  %sb_blocksize = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_blocksize, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %retval.0.i194 = select i1 %cmp.i, i32 %21, i32 %20
  %div = udiv i32 4096, %retval.0.i194
  %add = add i32 %retval.0.i191, %div
  %conv = zext i32 %add to i64
  %call29 = tail call i32 @sb_set_blocksize(ptr noundef %s, i32 noundef %retval.0.i194) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.if.end118.thread236_crit_edge, label %brelse.exit

if.end24.if.end118.thread236_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread236

brelse.exit:                                      ; preds = %if.end24
  tail call void @__brelse(ptr noundef nonnull %call.i) #7
  %22 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdev.i, align 4
  %24 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize.i, align 16
  %call.i200 = tail call ptr @__bread_gfp(ptr noundef %23, i64 noundef 0, i32 noundef %25, i32 noundef 8) #7
  %tobool39.not = icmp eq ptr %call.i200, null
  br i1 %tobool39.not, label %brelse.exit.cleanup_crit_edge, label %if.end41

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %brelse.exit
  %b_data42 = getelementptr inbounds %struct.buffer_head, ptr %call.i200, i32 0, i32 5
  %26 = ptrtoint ptr %b_data42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data42, align 4
  %28 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bdev.i, align 4
  %30 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize.i, align 16
  %call.i203 = tail call ptr @__bread_gfp(ptr noundef %29, i64 noundef %conv, i32 noundef %31, i32 noundef 8) #7
  %tobool44.not = icmp eq ptr %call.i203, null
  br i1 %tobool44.not, label %if.end41.if.end118.thread236_crit_edge, label %if.end51

if.end41.if.end118.thread236_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.thread236

if.end51:                                         ; preds = %if.end41
  %b_data52 = getelementptr inbounds %struct.buffer_head, ptr %call.i203, i32 0, i32 5
  %32 = ptrtoint ptr %b_data52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data52, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %36 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i205 = icmp eq i32 %37, 0
  %38 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %retval.0.i206 = select i1 %cmp.i205, i32 %38, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1746473250, i32 %retval.0.i206)
  %cmp55.not = icmp eq i32 %retval.0.i206, 1746473250
  br i1 %cmp55.not, label %if.end66, label %if.then57

if.then57:                                        ; preds = %if.end51
  br i1 %tobool5.not, label %if.then57.brelse.exit227.sink.split_crit_edge, label %if.then57.brelse.exit227_crit_edge

if.then57.brelse.exit227_crit_edge:               ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit227

if.then57.brelse.exit227.sink.split_crit_edge:    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit227.sink.split

if.end66:                                         ; preds = %if.end51
  %sb_checksum67 = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %33, i32 0, i32 1
  %39 = ptrtoint ptr %sb_checksum67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sb_checksum67, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %retval.0.i209 = select i1 %cmp.i205, i32 %41, i32 %40
  %add.ptr70 = getelementptr i8, ptr %33, i32 8
  %call71 = tail call i32 @crc32_be(i32 noundef 0, ptr noundef %add.ptr70, i32 noundef 504) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i209, i32 %call71)
  %cmp72.not = icmp eq i32 %retval.0.i209, %call71
  br i1 %cmp72.not, label %if.end80, label %if.end66.brelse.exit227.sink.split_crit_edge

if.end66.brelse.exit227.sink.split_crit_edge:     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit227.sink.split

if.end80:                                         ; preds = %if.end66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 392) #12
  %tobool82.not = icmp eq ptr %call7.i, null
  br i1 %tobool82.not, label %if.end80.brelse.exit227.sink.split_crit_edge, label %if.end89

if.end80.brelse.exit227.sink.split_crit_edge:     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit227.sink.split

if.end89:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %sb_serial = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %27, i32 0, i32 2
  %43 = ptrtoint ptr %sb_serial to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sb_serial, align 8
  %45 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i211 = icmp eq i32 %46, 0
  %47 = tail call i64 @llvm.bswap.i64(i64 %44) #7
  %retval.0.i212 = select i1 %cmp.i211, i64 %47, i64 %44
  %48 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr70, align 8
  %50 = tail call i64 @llvm.bswap.i64(i64 %49) #7
  %retval.0.i215 = select i1 %cmp.i211, i64 %50, i64 %49
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i212, i64 %retval.0.i215)
  %cmp93 = icmp ugt i64 %retval.0.i212, %retval.0.i215
  %. = select i1 %cmp93, ptr %27, ptr %33
  %b_data42.b_data52 = select i1 %cmp93, ptr %b_data42, ptr %b_data52
  %call.i200.call.i203 = select i1 %cmp93, ptr %call.i200, ptr %call.i203
  %call.i203.call.i200 = select i1 %cmp93, ptr %call.i203, ptr %call.i200
  %.str.24..str.27 = select i1 %cmp93, ptr @.str.24, ptr @.str.27
  tail call fastcc void @qnx6_mmi_copy_sb(ptr noundef nonnull %call7.i, ptr noundef %.)
  tail call void @qnx6_superblock_debug(ptr noundef nonnull %call7.i, ptr noundef %s) #7
  %51 = ptrtoint ptr %b_data42.b_data52 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data42.b_data52, align 4
  %53 = call ptr @memcpy(ptr %52, ptr %call7.i, i32 392)
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i200.call.i203, ptr %7, align 4
  %55 = load ptr, ptr %b_data42.b_data52, align 4
  %sb106 = getelementptr inbounds %struct.qnx6_sb_info, ptr %7, i32 0, i32 1
  %56 = ptrtoint ptr %sb106 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %sb106, align 4
  tail call void @__brelse(ptr noundef nonnull %call.i203.call.i200) #7
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.24..str.27) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %57 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_blocksize.i, align 16
  %div113 = udiv i32 4096, %58
  %s_blks_off = getelementptr inbounds %struct.qnx6_sb_info, ptr %7, i32 0, i32 2
  %59 = ptrtoint ptr %s_blks_off to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div113, ptr %s_blks_off, align 4
  %sb114 = getelementptr inbounds %struct.qnx6_sb_info, ptr %7, i32 0, i32 1
  %60 = ptrtoint ptr %sb114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sb114, align 4
  br label %cleanup

if.end118.thread236:                              ; preds = %if.end41.if.end118.thread236_crit_edge, %if.end24.if.end118.thread236_crit_edge, %if.end13.if.end118.thread236_crit_edge, %if.end.if.end118.thread236_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %if.end.if.end118.thread236_crit_edge ], [ @.str.7, %if.end13.if.end118.thread236_crit_edge ], [ @.str.10, %if.end24.if.end118.thread236_crit_edge ], [ @.str.13, %if.end41.if.end118.thread236_crit_edge ]
  %bh1.0.ph.ph = phi ptr [ %call.i, %if.end.if.end118.thread236_crit_edge ], [ %call.i, %if.end13.if.end118.thread236_crit_edge ], [ %call.i, %if.end24.if.end118.thread236_crit_edge ], [ %call.i200, %if.end41.if.end118.thread236_crit_edge ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #10
  tail call void @__brelse(ptr noundef nonnull %bh1.0.ph.ph) #7
  br label %cleanup

brelse.exit227.sink.split:                        ; preds = %if.end80.brelse.exit227.sink.split_crit_edge, %if.end66.brelse.exit227.sink.split_crit_edge, %if.then57.brelse.exit227.sink.split_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %if.then57.brelse.exit227.sink.split_crit_edge ], [ @.str.7, %if.end66.brelse.exit227.sink.split_crit_edge ], [ @.str.21, %if.end80.brelse.exit227.sink.split_crit_edge ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16.sink) #10
  br label %brelse.exit227

brelse.exit227:                                   ; preds = %brelse.exit227.sink.split, %if.then57.brelse.exit227_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i200) #7
  tail call void @__brelse(ptr noundef nonnull %call.i203) #7
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit227, %if.end118.thread236, %if.end89, %brelse.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %61, %if.end89 ], [ null, %do.end ], [ null, %brelse.exit227 ], [ null, %if.end118.thread236 ], [ null, %brelse.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_be(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sb_set_blocksize(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @qnx6_mmi_copy_sb(ptr nocapture noundef writeonly %qsb, ptr nocapture noundef readonly %sb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sb, align 8
  %2 = ptrtoint ptr %qsb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %qsb, align 8
  %sb_checksum = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 1
  %3 = ptrtoint ptr %sb_checksum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_checksum, align 4
  %sb_checksum2 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 1
  %5 = ptrtoint ptr %sb_checksum2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %sb_checksum2, align 4
  %sb_serial = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 2
  %6 = ptrtoint ptr %sb_serial to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sb_serial, align 8
  %sb_serial3 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 2
  %8 = ptrtoint ptr %sb_serial3 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sb_serial3, align 8
  %sb_blocksize = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 5
  %9 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_blocksize, align 8
  %sb_blocksize4 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 9
  %11 = ptrtoint ptr %sb_blocksize4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sb_blocksize4, align 8
  %sb_num_inodes = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 6
  %12 = ptrtoint ptr %sb_num_inodes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_num_inodes, align 4
  %sb_num_inodes5 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 10
  %14 = ptrtoint ptr %sb_num_inodes5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sb_num_inodes5, align 4
  %sb_free_inodes = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 7
  %15 = ptrtoint ptr %sb_free_inodes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_free_inodes, align 8
  %sb_free_inodes6 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 11
  %17 = ptrtoint ptr %sb_free_inodes6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sb_free_inodes6, align 8
  %sb_num_blocks = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 8
  %18 = ptrtoint ptr %sb_num_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_num_blocks, align 4
  %sb_num_blocks7 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 12
  %20 = ptrtoint ptr %sb_num_blocks7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sb_num_blocks7, align 4
  %sb_free_blocks = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 9
  %21 = ptrtoint ptr %sb_free_blocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_free_blocks, align 8
  %sb_free_blocks8 = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 13
  %23 = ptrtoint ptr %sb_free_blocks8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sb_free_blocks8, align 8
  %Inode = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 15
  %Inode9 = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 11
  %24 = call ptr @memcpy(ptr %Inode, ptr %Inode9, i32 80)
  %Bitmap = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 16
  %Bitmap10 = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 12
  %25 = call ptr @memcpy(ptr %Bitmap, ptr %Bitmap10, i32 80)
  %Longfile = getelementptr inbounds %struct.qnx6_super_block, ptr %qsb, i32 0, i32 17
  %Longfile11 = getelementptr inbounds %struct.qnx6_mmi_super_block, ptr %sb, i32 0, i32 13
  %26 = call ptr @memcpy(ptr %Longfile, ptr %Longfile11, i32 80)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qnx6_superblock_debug(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/qnx6/super_mmi.c", i32 48, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qnx6_mmi_fill_super._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qnx6_mmi_fill_super._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/qnx6/super_mmi.c", i32 55, i32 4}
!8 = !{ptr @qnx6_mmi_fill_super._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @qnx6_mmi_fill_super._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/qnx6/super_mmi.c", i32 63, i32 3}
!12 = !{ptr @qnx6_mmi_fill_super._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @qnx6_mmi_fill_super._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/qnx6/super_mmi.c", i32 73, i32 3}
!16 = !{ptr @qnx6_mmi_fill_super._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @qnx6_mmi_fill_super._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/qnx6/super_mmi.c", i32 86, i32 3}
!20 = !{ptr @qnx6_mmi_fill_super._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qnx6_mmi_fill_super._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/qnx6/super_mmi.c", i32 92, i32 4}
!24 = !{ptr @qnx6_mmi_fill_super._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @qnx6_mmi_fill_super._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @qnx6_mmi_fill_super._entry.18, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../fs/qnx6/super_mmi.c", i32 99, i32 3}
!28 = !{ptr @qnx6_mmi_fill_super._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/qnx6/super_mmi.c", i32 105, i32 3}
!31 = !{ptr @qnx6_mmi_fill_super._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @qnx6_mmi_fill_super._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/qnx6/super_mmi.c", i32 121, i32 3}
!35 = !{ptr @qnx6_mmi_fill_super._entry.23, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qnx6_mmi_fill_super._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/qnx6/super_mmi.c", i32 133, i32 3}
!39 = !{ptr @qnx6_mmi_fill_super._entry.26, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @qnx6_mmi_fill_super._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
