; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/reset.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }

@mlx4_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Couldn't allocate memory to save HCA PCI header, aborting\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mlx4_reset\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlx4/reset.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr = internal global ptr @mlx4_reset._entry, section ".printk_index", align 4
@mlx4_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 87, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't save HCA PCI header, aborting\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.7 = internal global ptr @mlx4_reset._entry.5, section ".printk_index", align 4
@mlx4_reset._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 97, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Couldn't map HCA reset register, aborting\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.10 = internal global ptr @mlx4_reset._entry.8, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx4_reset._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to obtain HW semaphore, aborting\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.13 = internal global ptr @mlx4_reset._entry.11, section ".printk_index", align 4
@mlx4_reset._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"PCI device did not come back after reset, aborting\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.16 = internal global ptr @mlx4_reset._entry.14, section ".printk_index", align 4
@mlx4_reset._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Couldn't restore HCA PCI Express Device Control register, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.19 = internal global ptr @mlx4_reset._entry.17, section ".printk_index", align 4
@mlx4_reset._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Couldn't restore HCA PCI Express Link control register, aborting\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.22 = internal global ptr @mlx4_reset._entry.20, section ".printk_index", align 4
@mlx4_reset._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't restore HCA reg %x, aborting\0A\00", [57 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.25 = internal global ptr @mlx4_reset._entry.23, section ".printk_index", align 4
@mlx4_reset._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't restore HCA COMMAND, aborting\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx4_reset._entry_ptr.28 = internal global ptr @mlx4_reset._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 75, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 97, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 112, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 136, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 147, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 155, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 167, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlx4/reset.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 176, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @mlx4_reset._entry, ptr @mlx4_reset._entry.11, ptr @mlx4_reset._entry.14, ptr @mlx4_reset._entry.17, ptr @mlx4_reset._entry.20, ptr @mlx4_reset._entry.23, ptr @mlx4_reset._entry.26, ptr @mlx4_reset._entry.5, ptr @mlx4_reset._entry.8, ptr @mlx4_reset._entry_ptr, ptr @mlx4_reset._entry_ptr.10, ptr @mlx4_reset._entry_ptr.13, ptr @mlx4_reset._entry_ptr.16, ptr @mlx4_reset._entry_ptr.19, ptr @mlx4_reset._entry_ptr.22, ptr @mlx4_reset._entry_ptr.25, ptr @mlx4_reset._entry_ptr.28, ptr @mlx4_reset._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_reset._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %vendor = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vendor) #5
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %vendor, align 2, !annotation !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #8
  %tobool.not = icmp eq ptr %call7.i, null
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #9
  br label %out

if.end:                                           ; preds = %entry
  %pcie_cap.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %pcie_cap.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcie_cap.i, align 8
  %conv.i = zext i8 %7 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0202 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = and i32 %i.0202, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %8)
  %switch = icmp eq i32 %8, 22
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %mul = shl i32 %i.0202, 2
  %add.ptr = getelementptr i32, ptr %call7.i, i32 %i.0202
  %call11 = tail call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %mul, ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end8.for.inc_crit_edge, label %if.then13

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.6) #9
  br label %out

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %resource = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 47
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resource, align 8
  %add = add i32 %22, 983040
  %call23 = tail call ptr @ioremap(i32 noundef %add, i32 noundef 1024) #5
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.then25, label %if.end32

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.9) #9
  br label %out

if.end32:                                         ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.ptr35 = getelementptr i8, ptr %call23, i32 1020
  %add33.neg = sub i32 -1000, %27
  br label %do.body34

do.body34:                                        ; preds = %if.end40.do.body34_crit_edge, %if.end32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool38.not = icmp eq i32 %28, 0
  br i1 %tobool38.not, label %do.body53, label %if.end40

if.end40:                                         ; preds = %do.body34
  tail call void @msleep(i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add33.neg, %29
  %cmp42 = icmp slt i32 %sub, 0
  br i1 %cmp42, label %if.end40.do.body34_crit_edge, label %do.end48.critedge

if.end40.do.body34_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

do.end48.critedge:                                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.12) #9
  tail call void @iounmap(ptr noundef nonnull %call23) #5
  br label %out

do.body53:                                        ; preds = %do.body34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %add.ptr56 = getelementptr i8, ptr %call23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 1) #5, !srcloc !53
  tail call void @iounmap(ptr noundef nonnull %call23) #5
  tail call void @msleep(i32 noundef 1000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %add57.neg = sub i32 -200, %34
  br label %do.body58

do.body58:                                        ; preds = %if.end66.do.body58_crit_edge, %do.body53
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call61 = call i32 @pci_read_config_word(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %vendor) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %do.body58.if.end66_crit_edge

do.body58.if.end66_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true:                                    ; preds = %do.body58
  %39 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %40)
  %cmp63.not = icmp eq i16 %40, -1
  br i1 %cmp63.not, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %do.body58.if.end66_crit_edge
  call void @msleep(i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub68 = add i32 %add57.neg, %41
  %cmp69 = icmp slt i32 %sub68, 0
  br i1 %cmp69, label %if.end66.do.body58_crit_edge, label %do.end71

if.end66.do.body58_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

do.end71:                                         ; preds = %if.end66
  %42 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %42)
  %.pr = load i16, ptr %vendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %.pr)
  %cmp73 = icmp eq i16 %.pr, -1
  br i1 %cmp73, label %if.then75, label %do.end71.if.end82_crit_edge

do.end71.if.end82_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

if.then75:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81, ptr noundef nonnull @.str.15) #9
  br label %out

if.end82:                                         ; preds = %do.end71.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool83.not = icmp eq i8 %7, 0
  br i1 %tobool83.not, label %if.end82.for.body120.preheader_crit_edge, label %if.then84

if.end82.for.body120.preheader_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body120.preheader

for.body120.preheader:                            ; preds = %if.end99.for.body120.preheader_crit_edge, %if.end82.for.body120.preheader_crit_edge
  br label %for.body120

if.then84:                                        ; preds = %if.end82
  %add85 = add nuw nsw i32 %conv.i, 8
  %div198 = lshr i32 %add85, 2
  %arrayidx86 = getelementptr i32, ptr %call7.i, i32 %div198
  %47 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx86, align 4
  %conv87 = trunc i32 %48 to i16
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call90 = call i32 @pcie_capability_write_word(ptr noundef %52, i32 noundef 8, i16 noundef zeroext %conv87) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end99, label %if.then92

if.then92:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.18) #9
  br label %out

if.end99:                                         ; preds = %if.then84
  %add100 = add nuw nsw i32 %conv.i, 16
  %div101199 = lshr i32 %add100, 2
  %arrayidx102 = getelementptr i32, ptr %call7.i, i32 %div101199
  %57 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx102, align 4
  %conv103 = trunc i32 %58 to i16
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call106 = call i32 @pcie_capability_write_word(ptr noundef %62, i32 noundef 16, i16 noundef zeroext %conv103) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end99.for.body120.preheader_crit_edge, label %if.then108

if.end99.for.body120.preheader_crit_edge:         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body120.preheader

if.then108:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev114, ptr noundef nonnull @.str.21) #9
  br label %out

for.body120:                                      ; preds = %for.inc140.for.body120_crit_edge, %for.body120.preheader
  %i.1204 = phi i32 [ %inc141, %for.inc140.for.body120_crit_edge ], [ 0, %for.body120.preheader ]
  %mul121 = shl i32 %i.1204, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul121)
  %cmp122 = icmp eq i32 %mul121, 4
  br i1 %cmp122, label %for.body120.for.inc140_crit_edge, label %if.end125

for.body120.for.inc140_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc140

if.end125:                                        ; preds = %for.body120
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %arrayidx129 = getelementptr i32, ptr %call7.i, i32 %i.1204
  %71 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx129, align 4
  %call130 = call i32 @pci_write_config_dword(ptr noundef %70, i32 noundef %mul121, i32 noundef %72) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end125.for.inc140_crit_edge, label %if.then132

if.end125.for.inc140_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc140

if.then132:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev138, ptr noundef nonnull @.str.24, i32 noundef %i.1204) #9
  br label %out

for.inc140:                                       ; preds = %if.end125.for.inc140_crit_edge, %for.body120.for.inc140_crit_edge
  %inc141 = add nuw nsw i32 %i.1204, 1
  %exitcond207.not = icmp eq i32 %inc141, 16
  br i1 %exitcond207.not, label %for.end142, label %for.inc140.for.body120_crit_edge

for.inc140.for.body120_crit_edge:                 ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body120

for.end142:                                       ; preds = %for.inc140
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %arrayidx145 = getelementptr i32, ptr %call7.i, i32 1
  %81 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx145, align 4
  %call146 = call i32 @pci_write_config_dword(ptr noundef %80, i32 noundef 4, i32 noundef %82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.end142.out_crit_edge, label %if.then148

for.end142.out_crit_edge:                         ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then148:                                       ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev154 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev154, ptr noundef nonnull @.str.27) #9
  br label %out

out:                                              ; preds = %if.then148, %for.end142.out_crit_edge, %if.then132, %if.then108, %if.then92, %if.then75, %do.end48.critedge, %if.then25, %if.then13, %if.then
  %err.0 = phi i32 [ -19, %if.then13 ], [ -11, %do.end48.critedge ], [ -19, %if.then75 ], [ -19, %if.then92 ], [ -19, %if.then108 ], [ -19, %if.then132 ], [ -19, %if.then148 ], [ 0, %for.end142.out_crit_edge ], [ -12, %if.then25 ], [ -12, %if.then ]
  call void @kfree(ptr noundef %call7.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vendor) #5
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 75, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 87, i32 4}
!10 = !{ptr @mlx4_reset._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx4_reset._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 97, i32 3}
!14 = !{ptr @mlx4_reset._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mlx4_reset._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 112, i32 3}
!18 = !{ptr @mlx4_reset._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx4_reset._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 136, i32 3}
!22 = !{ptr @mlx4_reset._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mlx4_reset._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 147, i32 4}
!26 = !{ptr @mlx4_reset._entry.17, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mlx4_reset._entry_ptr.19, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.21, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 155, i32 4}
!30 = !{ptr @mlx4_reset._entry.20, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mlx4_reset._entry_ptr.22, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 167, i32 4}
!34 = !{ptr @mlx4_reset._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mlx4_reset._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx4/reset.c", i32 176, i32 3}
!38 = !{ptr @mlx4_reset._entry.26, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlx4_reset._entry_ptr.28, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 4983374}
!51 = !{i64 2156599049}
!52 = !{i64 2156601636}
!53 = !{i64 4982956}
