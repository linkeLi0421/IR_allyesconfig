; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.174, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.173, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.173 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.174 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device_tegra_func = type { i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@nvkm_device_tegra_new.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouveau\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvkm_device_tegra_new\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPU clock set to %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwr\00", [28 x i8] zeroinitializer }, align 32
@tegra_sku_info = external dso_local local_unnamed_addr global %struct.tegra_sku_info, align 4
@nvkm_device_tegra_func = internal constant { %struct.nvkm_device_func, [60 x i8] } { %struct.nvkm_device_func { ptr null, ptr @nvkm_device_tegra, ptr @nvkm_device_tegra_dtor, ptr null, ptr @nvkm_device_tegra_init, ptr @nvkm_device_tegra_fini, ptr @nvkm_device_tegra_resource_addr, ptr @nvkm_device_tegra_resource_size, i8 0 }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_device_tegra_probe_iommu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tdev->iommu.mutex\00", [45 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@nvkm_device_tegra_probe_iommu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 142, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported IOMMU page size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvkm_device_tegra_probe_iommu\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_device_tegra_probe_iommu._entry_ptr = internal global ptr @nvkm_device_tegra_probe_iommu._entry, section ".printk_index", align 4
@nvkm_device_tegra_probe_iommu._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.4, i32 170, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot initialize IOMMU MM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvkm_device_tegra_probe_iommu._entry_ptr.16 = internal global ptr @nvkm_device_tegra_probe_iommu._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stall\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nvkm\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 292, i32 46 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 299, i32 49 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 319, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 323, i32 44 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 329, i32 43 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"nvkm_device_tegra_func\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 264, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 124, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 142, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 170, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 241, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [54 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 246, i32 19 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @nvkm_device_tegra_probe_iommu._entry, ptr @nvkm_device_tegra_probe_iommu._entry.13, ptr @nvkm_device_tegra_probe_iommu._entry_ptr, ptr @nvkm_device_tegra_probe_iommu._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @nvkm_device_tegra_func, ptr @nvkm_device_tegra_probe_iommu.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_tegra_func to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_tegra_probe_iommu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_tegra_probe_iommu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_device_tegra_probe_iommu._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_device_tegra_new(ptr noundef %func, ptr noundef %pdev, ptr noundef %cfg, ptr noundef %dbg, i1 noundef zeroext %detect, i1 noundef zeroext %mmio, i64 noundef %subdev_mask, ptr nocapture noundef writeonly %pdevice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 744) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %call7.i.i, align 8
  %pdev3 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev3, align 8
  %require_vdd = getelementptr inbounds %struct.nvkm_device_tegra_func, ptr %func, i32 0, i32 2
  %3 = ptrtoint ptr %require_vdd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %require_vdd, align 1, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call6 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str) #7
  %vdd = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %vdd, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call6 to i32
  br label %free

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %dev14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev14, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rst = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i.i, ptr %rst, align 8
  %cmp.i141 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call.i.i to i32
  br label %free

if.end21:                                         ; preds = %if.end13
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev14, ptr noundef nonnull @.str.1) #7
  %clk = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %clk, align 4
  %cmp.i142 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call23 to i32
  br label %free

if.end29:                                         ; preds = %if.end21
  %call31 = tail call i32 @clk_get_rate(ptr noundef %call23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp eq i32 %call31, 0
  br i1 %cmp, label %if.then32, label %if.end29.if.end48_crit_edge

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then32:                                        ; preds = %if.end29
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call34 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then32.free_crit_edge, label %if.end37

if.then32.free_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end37:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call39 = tail call i32 @clk_get_rate(ptr noundef %14) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvkm_device_tegra_new.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvkm_device_tegra_new, %if.then45)) #7
          to label %if.end48 [label %if.then45], !srcloc !45

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nvkm_device_tegra_new.__UNIQUE_ID_ddebug293, ptr noundef %dev14, ptr noundef nonnull @.str.5, i32 noundef %call39) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end37, %if.end29.if.end48_crit_edge
  %require_ref_clk = getelementptr inbounds %struct.nvkm_device_tegra_func, ptr %func, i32 0, i32 1
  %15 = ptrtoint ptr %require_ref_clk to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %require_ref_clk, align 1, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool49.not = icmp eq i8 %16, 0
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call ptr @devm_clk_get(ptr noundef %dev14, ptr noundef nonnull @.str.6) #7
  %clk_ref = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call52, ptr %clk_ref, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  %clk_ref54 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %clk_ref54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_ref54, align 8
  %cmp.i143 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %19 to i32
  br label %free

if.end59:                                         ; preds = %if.end53
  %call61 = tail call ptr @devm_clk_get(ptr noundef %dev14, ptr noundef nonnull @.str.7) #7
  %clk_pwr = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %clk_pwr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call61, ptr %clk_pwr, align 4
  %cmp.i144 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then64, label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call61 to i32
  br label %free

if.end67:                                         ; preds = %if.end59
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %26)
  %cmp70 = icmp eq i8 %26, 64
  br i1 %cmp70, label %if.end67.cond.end_crit_edge, label %cond.false

if.end67.cond.end_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom = zext i8 %26 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end67.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end67.cond.end_crit_edge ]
  %call75 = tail call i32 @dma_set_mask(ptr noundef %dev14, i64 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %cond.end.free_crit_edge

cond.end.free_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end78:                                         ; preds = %cond.end
  tail call fastcc void @nvkm_device_tegra_probe_iommu(ptr noundef nonnull %call7.i.i)
  %call79 = tail call fastcc i32 @nvkm_device_tegra_power_up(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.remove_crit_edge

if.end78.remove_crit_edge:                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove

if.end82:                                         ; preds = %if.end78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 10) to i32))
  %27 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 10), align 4
  %gpu_speedo = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %gpu_speedo to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %gpu_speedo, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 9) to i32))
  %29 = load i32, ptr getelementptr inbounds (%struct.tegra_sku_info, ptr @tegra_sku_info, i32 0, i32 9), align 4
  %gpu_speedo_id = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 11
  %30 = ptrtoint ptr %gpu_speedo_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %gpu_speedo_id, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %conv84 = sext i32 %32 to i64
  %device = getelementptr inbounds %struct.nvkm_device_tegra, ptr %call7.i.i, i32 0, i32 1
  %call87 = tail call i32 @nvkm_device_ctor(ptr noundef nonnull @nvkm_device_tegra_func, ptr noundef null, ptr noundef %dev14, i32 noundef 3, i64 noundef %conv84, ptr noundef null, ptr noundef %cfg, ptr noundef %dbg, i1 noundef zeroext %detect, i1 noundef zeroext %mmio, i64 noundef %subdev_mask, ptr noundef %device) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %powerdown

if.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %pdevice to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %device, ptr %pdevice, align 4
  br label %cleanup

powerdown:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nvkm_device_tegra_power_down(ptr noundef nonnull %call7.i.i)
  br label %remove

remove:                                           ; preds = %powerdown, %if.end78.remove_crit_edge
  %ret.0 = phi i32 [ %call79, %if.end78.remove_crit_edge ], [ %call87, %powerdown ]
  tail call fastcc void @nvkm_device_tegra_remove_iommu(ptr noundef nonnull %call7.i.i)
  br label %free

free:                                             ; preds = %remove, %cond.end.free_crit_edge, %if.then64, %if.then56, %if.then32.free_crit_edge, %if.then26, %if.then18, %if.then9
  %ret.1 = phi i32 [ %6, %if.then9 ], [ %8, %if.then18 ], [ %10, %if.then26 ], [ %call34, %if.then32.free_crit_edge ], [ %20, %if.then56 ], [ %22, %if.then64 ], [ %call75, %cond.end.free_crit_edge ], [ %ret.0, %remove ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end90, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free ], [ 0, %if.end90 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_device_tegra_probe_iommu(ptr noundef %tdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %archdata = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 26
  %2 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %archdata, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @arm_iommu_detach_device(ptr noundef %dev1) #7
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tdev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %iommu = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %iommu, ptr noundef nonnull @.str.8, ptr noundef nonnull @nvkm_device_tegra_probe_iommu.__key) #7
  %call = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #7
  br i1 %call, label %if.then8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %do.body
  %call9 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #7
  %domain = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %domain, align 4
  %tobool13.not = icmp eq ptr %call9, null
  br i1 %tobool13.not, label %if.then8.error_crit_edge, label %if.end15

if.then8.error_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end15:                                         ; preds = %if.then8
  %ops = getelementptr inbounds %struct.iommu_domain, ptr %call9, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %pgsize_bitmap18 = getelementptr inbounds %struct.iommu_ops, ptr %10, i32 0, i32 39
  %11 = ptrtoint ptr %pgsize_bitmap18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pgsize_bitmap18, align 4
  %and = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %pgshift = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 3
  %13 = ptrtoint ptr %pgshift to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 12, ptr %pgshift, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end15
  %and22 = and i32 %12, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not.i = icmp eq i32 %and22, 0
  %14 = tail call i32 @llvm.ctlz.i32(i32 %and22, i1 true) #7, !range !46
  %sub.i = sub nuw nsw i32 32, %14
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %pgshift25 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %pgshift25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond.i, ptr %pgshift25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 0
  br i1 %cmp, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %free_domain

if.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %cond.i, -1
  %16 = ptrtoint ptr %pgshift25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %pgshift25, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.then20
  %call38 = tail call i32 @iommu_attach_device(ptr noundef nonnull %call9, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.free_domain_crit_edge

if.end35.free_domain_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_domain

if.end41:                                         ; preds = %if.end35
  %mm = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %tdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tdev, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %sh_prom = zext i8 %20 to i64
  %shl = shl nuw i64 1, %sh_prom
  %pgshift46 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %pgshift46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pgshift46, align 4
  %sh_prom47 = zext i32 %22 to i64
  %shr = lshr i64 %shl, %sh_prom47
  %conv48 = trunc i64 %shr to i32
  %call49 = tail call i32 @nvkm_mm_init(ptr noundef %mm, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %conv48, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end41.cleanup_crit_edge, label %detach_device

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

detach_device:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %domain, align 4
  tail call void @iommu_detach_device(ptr noundef %24, ptr noundef %dev1) #7
  br label %free_domain

free_domain:                                      ; preds = %detach_device, %if.end35.free_domain_crit_edge, %do.end31
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %26) #7
  br label %error

error:                                            ; preds = %free_domain, %if.then8.error_crit_edge
  %27 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %domain, align 4
  %pgshift61 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 3
  %28 = ptrtoint ptr %pgshift61 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %pgshift61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end41.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_device_tegra_power_up(ptr nocapture noundef readonly %tdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 8
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 5
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.err_clk_crit_edge

if.end4.err_clk_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end8, label %if.end.i.err_clk.sink.split_crit_edge

if.end.i.err_clk.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk.sink.split

if.end8:                                          ; preds = %if.end.i
  %clk_ref = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 6
  %4 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ref, align 8
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %if.then10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end8
  %call.i69 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.then10.err_clk_ref_crit_edge

if.then10.err_clk_ref_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_ref

if.end.i73:                                       ; preds = %if.then10
  %call1.i71 = tail call i32 @clk_enable(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end.i73.if.end16_crit_edge, label %if.end.i73.err_clk_ref.sink.split_crit_edge

if.end.i73.err_clk_ref.sink.split_crit_edge:      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_ref.sink.split

if.end.i73.if.end16_crit_edge:                    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end16:                                         ; preds = %if.end.i73.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %clk_pwr = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 7
  %6 = ptrtoint ptr %clk_pwr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_pwr, align 4
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end.i81, label %if.end16.err_clk_pwr_crit_edge

if.end16.err_clk_pwr_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_pwr

if.end.i81:                                       ; preds = %if.end16
  %call1.i79 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool2.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool2.not.i80, label %if.end20, label %if.end.i81.err_clk_pwr.sink.split_crit_edge

if.end.i81.err_clk_pwr.sink.split_crit_edge:      ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_pwr.sink.split

if.end20:                                         ; preds = %if.end.i81
  %8 = ptrtoint ptr %clk_pwr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_pwr, align 4
  %call22 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef 204000000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #7
  %pdev = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 13
  %13 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pm_domain, align 8
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %if.then24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  %rst = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 4
  %15 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rst, align 8
  %call25 = tail call i32 @reset_control_assert(ptr noundef %16) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #7
  %call26 = tail call i32 @tegra_powergate_remove_clamping(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %err_clamp

if.end29:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #7
  %19 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rst, align 8
  %call31 = tail call i32 @reset_control_deassert(ptr noundef %20) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  br label %cleanup

err_clamp:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %clk_pwr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_pwr, align 4
  tail call void @clk_disable(ptr noundef %23) #7
  br label %err_clk_pwr.sink.split

err_clk_pwr.sink.split:                           ; preds = %err_clamp, %if.end.i81.err_clk_pwr.sink.split_crit_edge
  %.sink = phi ptr [ %23, %err_clamp ], [ %7, %if.end.i81.err_clk_pwr.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call26, %err_clamp ], [ %call1.i79, %if.end.i81.err_clk_pwr.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %err_clk_pwr

err_clk_pwr:                                      ; preds = %err_clk_pwr.sink.split, %if.end16.err_clk_pwr_crit_edge
  %ret.0 = phi i32 [ %call.i77, %if.end16.err_clk_pwr_crit_edge ], [ %ret.0.ph, %err_clk_pwr.sink.split ]
  %24 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_ref, align 8
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %err_clk_pwr.err_clk_ref_crit_edge, label %if.then36

err_clk_pwr.err_clk_ref_crit_edge:                ; preds = %err_clk_pwr
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk_ref

if.then36:                                        ; preds = %err_clk_pwr
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %25) #7
  br label %err_clk_ref.sink.split

err_clk_ref.sink.split:                           ; preds = %if.then36, %if.end.i73.err_clk_ref.sink.split_crit_edge
  %.sink91 = phi ptr [ %25, %if.then36 ], [ %5, %if.end.i73.err_clk_ref.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %if.then36 ], [ %call1.i71, %if.end.i73.err_clk_ref.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %.sink91) #7
  br label %err_clk_ref

err_clk_ref:                                      ; preds = %err_clk_ref.sink.split, %err_clk_pwr.err_clk_ref_crit_edge, %if.then10.err_clk_ref_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_clk_pwr.err_clk_ref_crit_edge ], [ %call.i69, %if.then10.err_clk_ref_crit_edge ], [ %ret.1.ph, %err_clk_ref.sink.split ]
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  br label %err_clk.sink.split

err_clk.sink.split:                               ; preds = %err_clk_ref, %if.end.i.err_clk.sink.split_crit_edge
  %.sink92 = phi ptr [ %27, %err_clk_ref ], [ %3, %if.end.i.err_clk.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %err_clk_ref ], [ %call1.i, %if.end.i.err_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink92) #7
  br label %err_clk

err_clk:                                          ; preds = %err_clk.sink.split, %if.end4.err_clk_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end4.err_clk_crit_edge ], [ %ret.2.ph, %err_clk.sink.split ]
  %28 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdd, align 8
  %tobool41.not = icmp eq ptr %29, null
  br i1 %tobool41.not, label %err_clk.cleanup_crit_edge, label %if.then42

err_clk.cleanup_crit_edge:                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call i32 @regulator_disable(ptr noundef nonnull %29) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %err_clk.cleanup_crit_edge, %if.end29, %if.end20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ 0, %if.end20.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %ret.2, %if.then42 ], [ %ret.2, %err_clk.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_device_tegra_power_down(ptr nocapture noundef readonly %tdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_pwr = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 7
  %0 = ptrtoint ptr %clk_pwr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_pwr, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %clk_ref = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 6
  %2 = ptrtoint ptr %clk_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ref, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %3) #7
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #7
  %vdd = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 8
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdd, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @regulator_disable(ptr noundef nonnull %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_device_tegra_remove_iommu(ptr noundef %tdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mm = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 9, i32 1
  %call = tail call i32 @nvkm_mm_fini(ptr noundef %mm) #7
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %dev = getelementptr inbounds %struct.nvkm_device_tegra, ptr %tdev, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void @iommu_detach_device(ptr noundef %3, ptr noundef %5) #7
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_remove_clamping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_device_tegra(ptr noundef readnone %device) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %device, i32 -8
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_device_tegra_dtor(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -8
  tail call fastcc void @nvkm_device_tegra_power_down(ptr noundef %add.ptr.i)
  %domain.i = getelementptr i8, ptr %device, i32 720
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.nvkm_device_tegra_remove_iommu.exit_crit_edge, label %if.then.i

entry.nvkm_device_tegra_remove_iommu.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nvkm_device_tegra_remove_iommu.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mm.i = getelementptr i8, ptr %device, i32 696
  %call.i = tail call i32 @nvkm_mm_fini(ptr noundef %mm.i) #7
  %2 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain.i, align 4
  %dev.i = getelementptr i8, ptr %device, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call void @iommu_detach_device(ptr noundef %3, ptr noundef %5) #7
  %6 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain.i, align 4
  tail call void @iommu_domain_free(ptr noundef %7) #7
  br label %nvkm_device_tegra_remove_iommu.exit

nvkm_device_tegra_remove_iommu.exit:              ; preds = %if.then.i, %entry.nvkm_device_tegra_remove_iommu.exit_crit_edge
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_init(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %device, i32 576
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call1 = tail call i32 @platform_get_irq_byname(ptr noundef %1, ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %device, i32 -8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call1, ptr noundef nonnull @nvkm_device_tegra_intr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq5 = getelementptr i8, ptr %device, i32 580
  %2 = ptrtoint ptr %irq5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %irq5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvkm_device_tegra_fini(ptr noundef %device, i1 noundef zeroext %suspend) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %device, i32 580
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %device, i32 -8
  %call2 = tail call ptr @free_irq(i32 noundef %1, ptr noundef %add.ptr.i) #7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_resource_addr(ptr nocapture noundef readonly %device, i32 noundef %bar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr i8, ptr %device, i32 576
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %call1.i = tail call ptr @platform_get_resource(ptr noundef %1, i32 noundef 512, i32 noundef %bar) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_resource_size(ptr nocapture noundef readonly %device, i32 noundef %bar) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr i8, ptr %device, i32 576
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 8
  %call1.i = tail call ptr @platform_get_resource(ptr noundef %1, i32 noundef 512, i32 noundef %bar) #7
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %end.i = getelementptr inbounds %struct.resource, ptr %call1.i, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1.i, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add.i, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_device_tegra_intr(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  %handled = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %arg, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %handled) #7
  %0 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %handled, align 1
  tail call void @nvkm_mc_intr_unarm(ptr noundef %device1) #7
  call void @nvkm_mc_intr(ptr noundef %device1, ptr noundef nonnull %handled) #7
  call void @nvkm_mc_intr_rearm(ptr noundef %device1) #7
  %1 = ptrtoint ptr %handled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %handled, align 1, !range !44
  %3 = zext i8 %2 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %handled) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_unarm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_rearm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 292, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 299, i32 49}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 319, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nvkm_device_tegra_new.__UNIQUE_ID_ddebug293, !5, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 323, i32 44}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 329, i32 43}
!14 = !{ptr @nvkm_device_tegra_probe_iommu.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 124, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 142, i32 5}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nvkm_device_tegra_probe_iommu._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @nvkm_device_tegra_probe_iommu._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 170, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nvkm_device_tegra_probe_iommu._entry.13, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvkm_device_tegra_probe_iommu._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @nvkm_device_tegra_func, !30, !"nvkm_device_tegra_func", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 264, i32 1}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 241, i32 44}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/tegra.c", i32 246, i32 19}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{i64 2148216586, i64 2148216591, i64 2148216604, i64 2148216648, i64 2148216682, i64 2148216703}
!46 = !{i32 0, i32 33}
