; ModuleID = '/llk/IR_all_yes/drivers/iommu/omap-iommu-debug.c_pt.bc'
source_filename = "../drivers/iommu/omap-iommu-debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.omap_iommu = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.spinlock, i32, i32, ptr, ptr, i32, i32, i32, %struct.iommu_device, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.iotlb_lock = type { i16, i16 }
%struct.cr_regs = type { i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@iommu_debug_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nr_tlb_entries\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @debug_read_regs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tlb\00", [28 x i8] zeroinitializer }, align 32
@tlb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tlb_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pagetable\00", [22 x i8] zeroinitializer }, align 32
@pagetable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pagetable_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap_iommu\00", [21 x i8] zeroinitializer }, align 32
@iommu_debug_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iommu_debug_lock, i64 52), ptr getelementptr (i8, ptr @iommu_debug_lock, i64 52) }, ptr @iommu_debug_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iommu_debug_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iommu_debug_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%20s: %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REVISION\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQSTATUS\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQENABLE\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WALKING_ST\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CNTL\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FAULT_AD\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TTB\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOCK\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LD_TLB\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CAM\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RAM\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GFLUSH\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"FLUSH_ENTRY\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READ_CAM\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"READ_RAM\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EMU_FAULT_AD\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%8s %8s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cam:\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ram:\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"-----------------------------------------\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%08x %08x %01x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"L: %8s %8s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"da:\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pte:\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"--------------------------\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"1: 0x%08x 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"2: 0x%08x 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"iommu_debug_root\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 23, i32 23 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 252, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 253, i32 22 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"regs_fops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 238, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 254, i32 22 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"tlb_fops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 239, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 255, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"pagetable_fops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 240, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 268, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"iommu_debug_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 21, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 48, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 49, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 50, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 51, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 52, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 53, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 54, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 55, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 56, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 57, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 58, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 59, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 60, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 61, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 62, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 63, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 171, i32 16 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 171, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 171, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 172, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 138, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 222, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 222, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 222, i32 39 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 223, i32 14 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 196, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [36 x i8] c"../drivers/iommu/omap-iommu-debug.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 206, i32 18 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @omap_iommu_debugfs_exit, ptr @iommu_debug_root, ptr @.str, ptr @.str.1, ptr @regs_fops, ptr @.str.2, ptr @tlb_fops, ptr @.str.3, ptr @pagetable_fops, ptr @.str.4, ptr @iommu_debug_lock, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debug_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagetable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_debug_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_iommu_debugfs_add(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iommu_debug_root, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %obj, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %2, ptr noundef nonnull %0) #7
  %debug_dir = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 5
  %3 = ptrtoint ptr %debug_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %debug_dir, align 4
  %nr_tlb_entries = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 10
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %nr_tlb_entries) #7
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %obj, ptr noundef nonnull @regs_fops) #7
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %obj, ptr noundef nonnull @tlb_fops) #7
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call, ptr noundef %obj, ptr noundef nonnull @pagetable_fops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_iommu_debugfs_remove(ptr nocapture noundef readonly %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_dir = getelementptr inbounds %struct.omap_iommu, ptr %obj, i32 0, i32 5
  %0 = ptrtoint ptr %debug_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debug_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debugfs_remove(ptr noundef nonnull %1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_iommu_debugfs_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef null) #7
  store ptr %call, ptr @iommu_debug_root, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_iommu_debugfs_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @iommu_debug_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @debug_read_regs(ptr nocapture noundef readonly %file, ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %domain.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %count, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.cleanup_crit_edge, label %if.end3

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end8.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @iommu_debug_lock, i32 noundef 0) #7
  %tobool.not.i19 = icmp eq ptr %1, null
  br i1 %tobool.not.i19, label %if.end3.err_crit_edge, label %if.end.i22

if.end3.err_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end.i22:                                       ; preds = %if.end3
  %dev.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %regbase.i.i.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regbase.i.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !86
  %call1.i.i20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %8) #7
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %call1.i.i20
  %sub.i.i = sub i32 %count, %call1.i.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i)
  %cmp.i.i21 = icmp slt i32 %sub.i.i, 32
  br i1 %cmp.i.i21, label %if.end.i22.omap_iommu_dump_ctx.exit_crit_edge, label %do.body4.i.i

if.end.i22.omap_iommu_dump_ctx.exit_crit_edge:    ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body4.i.i:                                     ; preds = %if.end.i22
  %9 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !86
  %call9.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, i32 noundef %11) #7
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %call9.i.i
  %sub11.i.i = sub i32 %sub.i.i, %call9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub11.i.i)
  %cmp12.i.i = icmp slt i32 %sub11.i.i, 32
  br i1 %cmp12.i.i, label %do.body4.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body22.i.i

do.body4.i.i.omap_iommu_dump_ctx.exit_crit_edge:  ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body22.i.i:                                    ; preds = %do.body4.i.i
  %12 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i402.i.i = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i402.i.i) #7, !srcloc !86
  %call27.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr10.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i32 noundef %14) #7
  %add.ptr28.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 %call27.i.i
  %sub29.i.i = sub i32 %sub11.i.i, %call27.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub29.i.i)
  %cmp30.i.i23 = icmp slt i32 %sub29.i.i, 32
  br i1 %cmp30.i.i23, label %do.body22.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body40.i.i

do.body22.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body40.i.i:                                    ; preds = %do.body22.i.i
  %15 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i404.i.i = getelementptr i8, ptr %16, i32 64
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i404.i.i) #7, !srcloc !86
  %call45.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr28.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %17) #7
  %add.ptr46.i.i = getelementptr i8, ptr %add.ptr28.i.i, i32 %call45.i.i
  %sub47.i.i = sub i32 %sub29.i.i, %call45.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub47.i.i)
  %cmp48.i.i = icmp slt i32 %sub47.i.i, 32
  br i1 %cmp48.i.i, label %do.body40.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body58.i.i

do.body40.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body58.i.i:                                    ; preds = %do.body40.i.i
  %18 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i406.i.i = getelementptr i8, ptr %19, i32 68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i406.i.i) #7, !srcloc !86
  %call63.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr46.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef %20) #7
  %add.ptr64.i.i = getelementptr i8, ptr %add.ptr46.i.i, i32 %call63.i.i
  %sub65.i.i = sub i32 %sub47.i.i, %call63.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub65.i.i)
  %cmp66.i.i = icmp slt i32 %sub65.i.i, 32
  br i1 %cmp66.i.i, label %do.body58.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body76.i.i

do.body58.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body76.i.i:                                    ; preds = %do.body58.i.i
  %21 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i408.i.i = getelementptr i8, ptr %22, i32 72
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i408.i.i) #7, !srcloc !86
  %call81.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr64.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, i32 noundef %23) #7
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr64.i.i, i32 %call81.i.i
  %sub83.i.i = sub i32 %sub65.i.i, %call81.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub83.i.i)
  %cmp84.i.i = icmp slt i32 %sub83.i.i, 32
  br i1 %cmp84.i.i, label %do.body76.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body94.i.i

do.body76.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body94.i.i:                                    ; preds = %do.body76.i.i
  %24 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i410.i.i = getelementptr i8, ptr %25, i32 76
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i410.i.i) #7, !srcloc !86
  %call99.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr82.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, i32 noundef %26) #7
  %add.ptr100.i.i = getelementptr i8, ptr %add.ptr82.i.i, i32 %call99.i.i
  %sub101.i.i = sub i32 %sub83.i.i, %call99.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub101.i.i)
  %cmp102.i.i = icmp slt i32 %sub101.i.i, 32
  br i1 %cmp102.i.i, label %do.body94.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body112.i.i

do.body94.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body112.i.i:                                   ; preds = %do.body94.i.i
  %27 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i412.i.i = getelementptr i8, ptr %28, i32 80
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412.i.i) #7, !srcloc !86
  %call117.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr100.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %29) #7
  %add.ptr118.i.i = getelementptr i8, ptr %add.ptr100.i.i, i32 %call117.i.i
  %sub119.i.i = sub i32 %sub101.i.i, %call117.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub119.i.i)
  %cmp120.i.i = icmp slt i32 %sub119.i.i, 32
  br i1 %cmp120.i.i, label %do.body112.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body130.i.i

do.body112.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body112.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body130.i.i:                                   ; preds = %do.body112.i.i
  %30 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i414.i.i = getelementptr i8, ptr %31, i32 84
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i414.i.i) #7, !srcloc !86
  %call135.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr118.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.16, i32 noundef %32) #7
  %add.ptr136.i.i = getelementptr i8, ptr %add.ptr118.i.i, i32 %call135.i.i
  %sub137.i.i = sub i32 %sub119.i.i, %call135.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub137.i.i)
  %cmp138.i.i = icmp slt i32 %sub137.i.i, 32
  br i1 %cmp138.i.i, label %do.body130.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body148.i.i

do.body130.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body130.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body148.i.i:                                   ; preds = %do.body130.i.i
  %33 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i416.i.i = getelementptr i8, ptr %34, i32 88
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i416.i.i) #7, !srcloc !86
  %call153.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr136.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, i32 noundef %35) #7
  %add.ptr154.i.i = getelementptr i8, ptr %add.ptr136.i.i, i32 %call153.i.i
  %sub155.i.i = sub i32 %sub137.i.i, %call153.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub155.i.i)
  %cmp156.i.i = icmp slt i32 %sub155.i.i, 32
  br i1 %cmp156.i.i, label %do.body148.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body166.i.i

do.body148.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body148.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body166.i.i:                                   ; preds = %do.body148.i.i
  %36 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i418.i.i = getelementptr i8, ptr %37, i32 92
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418.i.i) #7, !srcloc !86
  %call171.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr154.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.18, i32 noundef %38) #7
  %add.ptr172.i.i = getelementptr i8, ptr %add.ptr154.i.i, i32 %call171.i.i
  %sub173.i.i = sub i32 %sub155.i.i, %call171.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub173.i.i)
  %cmp174.i.i = icmp slt i32 %sub173.i.i, 32
  br i1 %cmp174.i.i, label %do.body166.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body184.i.i

do.body166.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body166.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body184.i.i:                                   ; preds = %do.body166.i.i
  %39 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i420.i.i = getelementptr i8, ptr %40, i32 96
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420.i.i) #7, !srcloc !86
  %call189.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr172.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.19, i32 noundef %41) #7
  %add.ptr190.i.i = getelementptr i8, ptr %add.ptr172.i.i, i32 %call189.i.i
  %sub191.i.i = sub i32 %sub173.i.i, %call189.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub191.i.i)
  %cmp192.i.i = icmp slt i32 %sub191.i.i, 32
  br i1 %cmp192.i.i, label %do.body184.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body202.i.i

do.body184.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body184.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body202.i.i:                                   ; preds = %do.body184.i.i
  %42 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i422.i.i = getelementptr i8, ptr %43, i32 100
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422.i.i) #7, !srcloc !86
  %call207.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr190.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, i32 noundef %44) #7
  %add.ptr208.i.i = getelementptr i8, ptr %add.ptr190.i.i, i32 %call207.i.i
  %sub209.i.i = sub i32 %sub191.i.i, %call207.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub209.i.i)
  %cmp210.i.i = icmp slt i32 %sub209.i.i, 32
  br i1 %cmp210.i.i, label %do.body202.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body220.i.i

do.body202.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body202.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body220.i.i:                                   ; preds = %do.body202.i.i
  %45 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i424.i.i = getelementptr i8, ptr %46, i32 104
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424.i.i) #7, !srcloc !86
  %call225.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr208.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef %47) #7
  %add.ptr226.i.i = getelementptr i8, ptr %add.ptr208.i.i, i32 %call225.i.i
  %sub227.i.i = sub i32 %sub209.i.i, %call225.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub227.i.i)
  %cmp228.i.i = icmp slt i32 %sub227.i.i, 32
  br i1 %cmp228.i.i, label %do.body220.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body238.i.i

do.body220.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body220.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body238.i.i:                                   ; preds = %do.body220.i.i
  %48 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i426.i.i = getelementptr i8, ptr %49, i32 108
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426.i.i) #7, !srcloc !86
  %call243.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr226.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.22, i32 noundef %50) #7
  %add.ptr244.i.i = getelementptr i8, ptr %add.ptr226.i.i, i32 %call243.i.i
  %sub245.i.i = sub i32 %sub227.i.i, %call243.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub245.i.i)
  %cmp246.i.i = icmp slt i32 %sub245.i.i, 32
  br i1 %cmp246.i.i, label %do.body238.i.i.omap_iommu_dump_ctx.exit_crit_edge, label %do.body256.i.i

do.body238.i.i.omap_iommu_dump_ctx.exit_crit_edge: ; preds = %do.body238.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_iommu_dump_ctx.exit

do.body256.i.i:                                   ; preds = %do.body238.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %regbase.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regbase.i.i.i, align 4
  %add.ptr.i428.i.i = getelementptr i8, ptr %52, i32 112
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428.i.i) #7, !srcloc !86
  %call261.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr244.i.i, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, i32 noundef %53) #7
  %add.ptr262.i.i = getelementptr i8, ptr %add.ptr244.i.i, i32 %call261.i.i
  br label %omap_iommu_dump_ctx.exit

omap_iommu_dump_ctx.exit:                         ; preds = %do.body256.i.i, %do.body238.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body220.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body202.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body184.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body166.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body148.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body130.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body112.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body94.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body76.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body58.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body40.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body22.i.i.omap_iommu_dump_ctx.exit_crit_edge, %do.body4.i.i.omap_iommu_dump_ctx.exit_crit_edge, %if.end.i22.omap_iommu_dump_ctx.exit_crit_edge
  %p.0.i.i = phi ptr [ %add.ptr.i.i, %if.end.i22.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr10.i.i, %do.body4.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr28.i.i, %do.body22.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr46.i.i, %do.body40.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr64.i.i, %do.body58.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr82.i.i, %do.body76.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr100.i.i, %do.body94.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr118.i.i, %do.body112.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr136.i.i, %do.body130.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr154.i.i, %do.body148.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr172.i.i, %do.body166.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr190.i.i, %do.body184.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr208.i.i, %do.body202.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr226.i.i, %do.body220.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr244.i.i, %do.body238.i.i.omap_iommu_dump_ctx.exit_crit_edge ], [ %add.ptr262.i.i, %do.body256.i.i ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %p.0.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call9.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %call.i10.i = tail call i32 @__pm_runtime_idle(ptr noundef %55, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i.i)
  %cmp = icmp slt i32 %sub.ptr.sub.i.i, 0
  br i1 %cmp, label %omap_iommu_dump_ctx.exit.err_crit_edge, label %if.end6

omap_iommu_dump_ctx.exit.err_crit_edge:           ; preds = %omap_iommu_dump_ctx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end6:                                          ; preds = %omap_iommu_dump_ctx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @simple_read_from_buffer(ptr noundef %userbuf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call9.i, i32 noundef %sub.ptr.sub.i.i) #7
  br label %err

err:                                              ; preds = %if.end6, %omap_iommu_dump_ctx.exit.err_crit_edge, %if.end3.err_crit_edge
  %bytes.0 = phi i32 [ %sub.ptr.sub.i.i, %omap_iommu_dump_ctx.exit.err_crit_edge ], [ %call7, %if.end6 ], [ -22, %if.end3.err_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @iommu_debug_lock) #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %bytes.0, %err ], [ -1, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlb_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @tlb_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlb_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %saved.i.i = alloca %struct.iotlb_lock, align 2
  %tmp1.i.i = alloca %struct.cr_regs, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %domain.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @iommu_debug_lock, i32 noundef 0) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.27) #7
  %nr_tlb_entries.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %nr_tlb_entries.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_tlb_entries.i, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8) #7
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.omap_dump_tlb_entries.exit_crit_edge, label %if.end7.i.i.i, !prof !87

if.end.omap_dump_tlb_entries.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_dump_tlb_entries.exit

if.end7.i.i.i:                                    ; preds = %if.end
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #10
  %tobool.not.i6 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i6, label %if.end7.i.i.i.omap_dump_tlb_entries.exit_crit_edge, label %if.end.i

if.end7.i.i.i.omap_dump_tlb_entries.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_dump_tlb_entries.exit

if.end.i:                                         ; preds = %if.end7.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved.i.i) #7
  %9 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %saved.i.i, align 2, !annotation !88
  %10 = getelementptr inbounds %struct.iotlb_lock, ptr %saved.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %10, align 2, !annotation !88
  %dev.i.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #7
  call void @iotlb_lock_get(ptr noundef %1, ptr noundef nonnull %saved.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.i.not.i = icmp eq i32 %5, 0
  br i1 %cmp16.i.not.i, label %if.end.i.__dump_tlb_entries.exit.i_crit_edge, label %if.end.i.land.rhs.i.i_crit_edge

if.end.i.land.rhs.i.i_crit_edge:                  ; preds = %if.end.i
  br label %land.rhs.i.i

if.end.i.__dump_tlb_entries.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dump_tlb_entries.exit.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.end.i.land.rhs.i.i_crit_edge
  %p.018.i.i = phi ptr [ %p.1.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ %call8.i.i.i, %if.end.i.land.rhs.i.i_crit_edge ]
  %i.017.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.end.i.land.rhs.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp1.i.i) #7
  call void @__iotlb_read_cr(ptr nonnull sret(%struct.cr_regs) align 4 %tmp1.i.i, ptr noundef %1, i32 noundef %i.017.i.i) #7
  %14 = ptrtoint ptr %tmp1.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tmp1.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp1.i.i) #7
  %16 = and i64 %15, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not.i.i = icmp eq i64 %16, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

land.rhs.i.i.for.inc.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.cr_regs, ptr %p.018.i.i, i32 1
  %17 = ptrtoint ptr %p.018.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %15, ptr %p.018.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %land.rhs.i.i.for.inc.i.i_crit_edge
  %p.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i ], [ %p.018.i.i, %land.rhs.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.inc.i.i.__dump_tlb_entries.exit.i_crit_edge, label %for.inc.i.i.land.rhs.i.i_crit_edge

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

for.inc.i.i.__dump_tlb_entries.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__dump_tlb_entries.exit.i

__dump_tlb_entries.exit.i:                        ; preds = %for.inc.i.i.__dump_tlb_entries.exit.i_crit_edge, %if.end.i.__dump_tlb_entries.exit.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ %call8.i.i.i, %if.end.i.__dump_tlb_entries.exit.i_crit_edge ], [ %p.1.i.i, %for.inc.i.i.__dump_tlb_entries.exit.i_crit_edge ]
  call void @iotlb_lock_set(ptr noundef %1, ptr noundef nonnull %saved.i.i) #7
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %call.i13.i.i = call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 4) #7
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %p.0.lcssa.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call8.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i.i)
  %cmp7.i = icmp sgt i32 %sub.ptr.sub.i.i, 0
  br i1 %cmp7.i, label %for.body.preheader.i, label %__dump_tlb_entries.exit.i.for.end.i_crit_edge

__dump_tlb_entries.exit.i.for.end.i_crit_edge:    ; preds = %__dump_tlb_entries.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.preheader.i:                             ; preds = %__dump_tlb_entries.exit.i
  %sub.ptr.div.i9.i = lshr i32 %sub.ptr.sub.i.i, 3
  %smax.i = call i32 @llvm.smax.i32(i32 %sub.ptr.div.i9.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.ptr.i = getelementptr %struct.cr_regs, ptr %call8.i.i.i, i32 %i.08.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 8
  %ram.i.i = getelementptr %struct.cr_regs, ptr %call8.i.i.i, i32 %i.08.i, i32 1
  %22 = ptrtoint ptr %ram.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ram.i.i, align 4
  %and.i.i = lshr i32 %21, 3
  %and.lobit.i.i = and i32 %and.i.i, 1
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %21, i32 noundef %23, i32 noundef %and.lobit.i.i) #7
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %__dump_tlb_entries.exit.i.for.end.i_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %omap_dump_tlb_entries.exit

omap_dump_tlb_entries.exit:                       ; preds = %for.end.i, %if.end7.i.i.i.omap_dump_tlb_entries.exit_crit_edge, %if.end.omap_dump_tlb_entries.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @iommu_debug_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %omap_dump_tlb_entries.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dump_tlb_entries.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotlb_lock_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iotlb_read_cr(ptr sret(%struct.cr_regs) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotlb_lock_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagetable_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pagetable_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pagetable_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %domain.i = getelementptr inbounds %struct.omap_iommu, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @iommu_debug_lock, i32 noundef 0) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.32) #7
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %page_table_lock.i = getelementptr inbounds %struct.omap_iommu, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock.i) #7
  %iopgd1.i = getelementptr inbounds %struct.omap_iommu, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %iopgd1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iopgd1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc15.i.for.body.i_crit_edge, %if.end
  %iopgd.042.i = phi ptr [ %7, %if.end ], [ %incdec.ptr17.i, %for.inc15.i.for.body.i_crit_edge ]
  %i.040.i = phi i32 [ 0, %if.end ], [ %inc16.i, %for.inc15.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %iopgd.042.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iopgd.042.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i4 = icmp eq i32 %9, 0
  br i1 %tobool.not.i4, label %for.body.i.for.inc15.i_crit_edge, label %if.end.i

for.body.i.for.inc15.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15.i

if.end.i:                                         ; preds = %for.body.i
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl nuw i32 %i.040.i, 20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %shl.i, i32 noundef %9) #7
  br label %for.inc15.i

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %9, -1024
  %10 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and5.i, i32 -2130706432, i32 8454144) #11, !srcloc !89
  %11 = inttoptr i32 %10 to ptr
  %shl13.i = shl i32 %i.040.i, 20
  br label %for.body9.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %if.end4.i
  %iopte.039.i = phi ptr [ %11, %if.end4.i ], [ %incdec.ptr.i, %for.inc.i.for.body9.i_crit_edge ]
  %j.037.i = phi i32 [ 0, %if.end4.i ], [ %inc.i, %for.inc.i.for.body9.i_crit_edge ]
  %12 = ptrtoint ptr %iopte.039.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iopte.039.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not.i = icmp eq i32 %13, 0
  br i1 %tobool10.not.i, label %for.body9.i.for.inc.i_crit_edge, label %if.end12.i

for.body9.i.for.inc.i_crit_edge:                  ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end12.i:                                       ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl14.i = shl nuw nsw i32 %j.037.i, 12
  %add.i = add nuw nsw i32 %shl14.i, %shl13.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %add.i, i32 noundef %13) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end12.i, %for.body9.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.037.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %iopte.039.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc.i.for.inc15.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9.i

for.inc.i.for.inc15.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %for.inc.i.for.inc15.i_crit_edge, %if.then3.i, %for.body.i.for.inc15.i_crit_edge
  %inc16.i = add nuw nsw i32 %i.040.i, 1
  %incdec.ptr17.i = getelementptr i32, ptr %iopgd.042.i, i32 1
  %exitcond43.not.i = icmp eq i32 %inc16.i, 4096
  br i1 %exitcond43.not.i, label %dump_ioptable.exit, label %for.inc15.i.for.body.i_crit_edge

for.inc15.i.for.body.i_crit_edge:                 ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dump_ioptable.exit:                               ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock.i) #7
  tail call void @mutex_unlock(ptr noundef nonnull @iommu_debug_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %dump_ioptable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dump_ioptable.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 252, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 253, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 254, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 255, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 268, i32 40}
!10 = !{ptr @iommu_debug_root, !11, !"iommu_debug_root", i1 false, i1 false}
!11 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 23, i32 23}
!12 = !{ptr @regs_fops, !13, !"regs_fops", i1 false, i1 false}
!13 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 238, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 21, i32 8}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @iommu_debug_lock, !15, !"iommu_debug_lock", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 48, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 49, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 50, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 51, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 52, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 53, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 54, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 55, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 56, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 57, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 58, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 59, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 60, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 61, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 62, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 63, i32 2}
!51 = !{ptr @tlb_fops, !52, !"tlb_fops", i1 false, i1 false}
!52 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 239, i32 1}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 171, i32 16}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 171, i32 29}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 171, i32 37}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 172, i32 14}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 138, i32 16}
!63 = !{ptr @pagetable_fops, !64, !"pagetable_fops", i1 false, i1 false}
!64 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 240, i32 1}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 222, i32 16}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 222, i32 32}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 222, i32 39}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 223, i32 14}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 196, i32 18}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iommu/omap-iommu-debug.c", i32 206, i32 18}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 689182}
!87 = !{!"branch_weights", i32 1, i32 2000}
!88 = !{!"auto-init"}
!89 = !{i64 2148233123, i64 2148233146, i64 2148233178, i64 2148233210, i64 2148233248, i64 2148233278}
