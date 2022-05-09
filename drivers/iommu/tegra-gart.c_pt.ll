; ModuleID = '/llk/IR_all_yes/drivers/iommu/tegra-gart.c_pt.bc'
source_filename = "../drivers/iommu/tegra-gart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.gart_device = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.iommu_device, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.79 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.79 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }

@tegra_gart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"gart: Memory aperture resource unavailable\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_gart_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iommu/tegra-gart.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_gart_probe._entry_ptr = internal global ptr @tegra_gart_probe._entry, section ".printk_index", align 4
@gart_handle = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra_gart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gart->pte_lock\00", [16 x i8] zeroinitializer }, align 32
@tegra_gart_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gart->dom_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gart\00", [27 x i8] zeroinitializer }, align 32
@gart_iommu_ops = internal constant { %struct.iommu_ops, [60 x i8] } { %struct.iommu_ops { ptr @gart_iommu_capable, ptr @gart_iommu_domain_alloc, ptr @gart_iommu_domain_free, ptr @gart_iommu_attach_dev, ptr @gart_iommu_detach_dev, ptr @gart_iommu_map, ptr null, ptr @gart_iommu_unmap, ptr null, ptr null, ptr @gart_iommu_sync_map, ptr @gart_iommu_sync, ptr @gart_iommu_iova_to_phys, ptr @gart_iommu_probe_device, ptr @gart_iommu_release_device, ptr null, ptr @generic_device_group, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gart_iommu_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4096, ptr null }, [60 x i8] zeroinitializer }, align 32
@__param_str_gart_debug = internal constant [22 x i8] c"tegra_gart.gart_debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@gart_debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_gart_debug = internal constant %struct.kernel_param { ptr @__param_str_gart_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @gart_debug } }, section "__param", align 4
@__UNIQUE_ID_gart_debugtype229 = internal constant [36 x i8] c"tegra_gart.parmtype=gart_debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_gart_debug230 = internal constant [49 x i8] c"tegra_gart.parm=gart_debug:Enable GART debugging\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__gart_iommu_map._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gart: Page entry is in-use\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__gart_iommu_map\00", [47 x i8] zeroinitializer }, align 32
@__gart_iommu_map._entry_ptr = internal global ptr @__gart_iommu_map._entry, section ".printk_index", align 4
@__gart_iommu_unmap._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, align 1
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gart: Page entry is invalid\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__gart_iommu_unmap\00", [45 x i8] zeroinitializer }, align 32
@__gart_iommu_unmap._entry_ptr = internal global ptr @__gart_iommu_unmap._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 333, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"gart_handle\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 49, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 347, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 348, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 352, i32 56 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"gart_iommu_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 278, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"gart_debug\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 51, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 171, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [30 x i8] c"../drivers/iommu/tegra-gart.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 200, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_gart_debug230, ptr @__UNIQUE_ID_gart_debugtype229, ptr @__gart_iommu_map._entry, ptr @__gart_iommu_map._entry_ptr, ptr @__gart_iommu_unmap._entry, ptr @__gart_iommu_unmap._entry_ptr, ptr @__param_gart_debug, ptr @tegra_gart_probe._entry, ptr @tegra_gart_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gart_handle, ptr @tegra_gart_probe.__key, ptr @.str.5, ptr @tegra_gart_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @gart_iommu_ops, ptr @gart_debug, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gart_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_gart_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gart_iommu_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gart_debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_gart_suspend(ptr nocapture noundef readonly %gart) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %savedata = getelementptr inbounds %struct.gart_device, ptr %gart, i32 0, i32 1
  %0 = ptrtoint ptr %savedata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %savedata, align 4
  %2 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gart, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !47
  %4 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gart, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !48
  %iovmm_base = getelementptr inbounds %struct.gart_device, ptr %gart, i32 0, i32 2
  %7 = ptrtoint ptr %iovmm_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iovmm_base, align 4
  %iovmm_end = getelementptr inbounds %struct.gart_device, ptr %gart, i32 0, i32 3
  %9 = ptrtoint ptr %iovmm_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iovmm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp11 = icmp ult i32 %8, %10
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %data.013 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %iova.012 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %11 = tail call i32 @llvm.bswap.i32(i32 %iova.012) #8
  %12 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gart, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #8, !srcloc !47
  %14 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gart, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !48
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  %incdec.ptr = getelementptr i32, ptr %data.013, i32 1
  %18 = ptrtoint ptr %data.013 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data.013, align 4
  %add = add i32 %iova.012, 4096
  %19 = ptrtoint ptr %iovmm_end to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iovmm_end, align 4
  %cmp = icmp ult i32 %add, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_gart_resume(ptr nocapture noundef readonly %gart) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iovmm_base.i = getelementptr inbounds %struct.gart_device, ptr %gart, i32 0, i32 2
  %0 = ptrtoint ptr %iovmm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iovmm_base.i, align 4
  %iovmm_end.i = getelementptr inbounds %struct.gart_device, ptr %gart, i32 0, i32 3
  %2 = ptrtoint ptr %iovmm_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iovmm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp10.i = icmp ult i32 %1, %3
  br i1 %cmp10.i, label %for.body.i.preheader, label %entry.do_gart_setup.exit_crit_edge

entry.do_gart_setup.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_gart_setup.exit

for.body.i.preheader:                             ; preds = %entry
  %savedata = getelementptr inbounds %struct.gart_device, ptr %gart, i32 0, i32 1
  %4 = ptrtoint ptr %savedata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %savedata, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %data.addr.012.i = phi ptr [ %data.addr.1.i, %cond.end.i.for.body.i_crit_edge ], [ %5, %for.body.i.preheader ]
  %iova.011.i = phi i32 [ %add.i, %cond.end.i.for.body.i_crit_edge ], [ %1, %for.body.i.preheader ]
  %tobool.not.i = icmp eq ptr %data.addr.012.i, null
  br i1 %tobool.not.i, label %for.body.i.cond.end.i_crit_edge, label %cond.true.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i = getelementptr i32, ptr %data.addr.012.i, i32 1
  %6 = ptrtoint ptr %data.addr.012.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.addr.012.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.i.cond.end.i_crit_edge
  %data.addr.1.i = phi ptr [ %incdec.ptr.i, %cond.true.i ], [ null, %for.body.i.cond.end.i_crit_edge ]
  %cond.i = phi i32 [ %7, %cond.true.i ], [ 0, %for.body.i.cond.end.i_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %iova.011.i) #8
  %9 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gart, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #8, !srcloc !47
  %11 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %12 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gart, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %11) #8, !srcloc !47
  %add.i = add i32 %iova.011.i, 4096
  %14 = ptrtoint ptr %iovmm_end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iovmm_end.i, align 4
  %cmp.i = icmp ult i32 %add.i, %15
  br i1 %cmp.i, label %cond.end.i.for.body.i_crit_edge, label %cond.end.i.do_gart_setup.exit_crit_edge

cond.end.i.do_gart_setup.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_gart_setup.exit

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do_gart_setup.exit:                               ; preds = %cond.end.i.do_gart_setup.exit_crit_edge, %entry.do_gart_setup.exit_crit_edge
  %16 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gart, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 16777216) #8, !srcloc !47
  %18 = ptrtoint ptr %gart to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gart, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_gart_probe(ptr noundef %dev, ptr nocapture noundef readonly %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #12
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  store ptr %call7.i.i, ptr @gart_handle, align 4
  %dev10 = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev10, align 4
  %regs = getelementptr inbounds %struct.tegra_mc, ptr %mc, i32 0, i32 3
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %3, i32 36
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr11, ptr %call7.i.i, align 8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %iovmm_base = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %iovmm_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %iovmm_base, align 8
  %end = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %add = add i32 %9, 1
  %iovmm_end = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %iovmm_end to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %iovmm_end, align 4
  %pte_lock = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %pte_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @tegra_gart_probe.__key, i16 noundef signext 3) #8
  %dom_lock = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %dom_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tegra_gart_probe.__key.6, i16 noundef signext 3) #8
  %11 = ptrtoint ptr %iovmm_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iovmm_base, align 8
  %13 = ptrtoint ptr %iovmm_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iovmm_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp10.i = icmp ult i32 %12, %14
  br i1 %cmp10.i, label %if.end9.cond.end.i_crit_edge, label %if.end9.do_gart_setup.exit_crit_edge

if.end9.do_gart_setup.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_gart_setup.exit

if.end9.cond.end.i_crit_edge:                     ; preds = %if.end9
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %if.end9.cond.end.i_crit_edge
  %iova.011.i = phi i32 [ %add.i, %cond.end.i.cond.end.i_crit_edge ], [ %12, %if.end9.cond.end.i_crit_edge ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %iova.011.i) #8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #8, !srcloc !47
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #8, !srcloc !47
  %add.i = add i32 %iova.011.i, 4096
  %20 = ptrtoint ptr %iovmm_end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iovmm_end, align 4
  %cmp.i = icmp ult i32 %add.i, %21
  br i1 %cmp.i, label %cond.end.i.cond.end.i_crit_edge, label %cond.end.i.do_gart_setup.exit_crit_edge

cond.end.i.do_gart_setup.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_gart_setup.exit

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

do_gart_setup.exit:                               ; preds = %cond.end.i.do_gart_setup.exit_crit_edge, %if.end9.do_gart_setup.exit_crit_edge
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 16777216) #8, !srcloc !47
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !48
  %iommu = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 8
  %call21 = tail call i32 (ptr, ptr, ptr, ptr, ...) @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %dev, ptr noundef null, ptr noundef nonnull @.str.8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %do_gart_setup.exit.free_gart_crit_edge

do_gart_setup.exit.free_gart_crit_edge:           ; preds = %do_gart_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_gart

if.end24:                                         ; preds = %do_gart_setup.exit
  %call26 = tail call i32 @iommu_device_register(ptr noundef %iommu, ptr noundef nonnull @gart_iommu_ops, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.remove_sysfs_crit_edge

if.end24.remove_sysfs_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %remove_sysfs

if.end29:                                         ; preds = %if.end24
  %27 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end, align 4
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call, align 4
  %sub.i = add i32 %28, 1
  %add.i67 = sub i32 %sub.i, %30
  %31 = lshr i32 %add.i67, 10
  %mul = and i32 %31, 4194300
  %call31 = tail call noalias ptr @vmalloc(i32 noundef %mul) #13
  %savedata = getelementptr inbounds %struct.gart_device, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %savedata to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call31, ptr %savedata, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iommu_device_unregister(ptr noundef %iommu) #8
  br label %remove_sysfs

remove_sysfs:                                     ; preds = %if.then34, %if.end24.remove_sysfs_crit_edge
  %err.0 = phi i32 [ %call26, %if.end24.remove_sysfs_crit_edge ], [ -12, %if.then34 ]
  tail call void @iommu_device_sysfs_remove(ptr noundef %iommu) #8
  br label %free_gart

free_gart:                                        ; preds = %remove_sysfs, %do_gart_setup.exit.free_gart_crit_edge
  %err.1 = phi i32 [ %call21, %do_gart_setup.exit.free_gart_crit_edge ], [ %err.0, %remove_sysfs ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %33 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_gart, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end3
  %retval.0 = phi ptr [ %33, %free_gart ], [ inttoptr (i32 -6 to ptr), %do.end3 ], [ %call7.i.i, %if.end29.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_sysfs_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_device_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gart_iommu_capable(i32 noundef %cap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @gart_iommu_domain_alloc(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @gart_handle, align 4
  %iovmm_base = getelementptr inbounds %struct.gart_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iovmm_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iovmm_base, align 4
  %geometry = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %geometry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %geometry, align 4
  %iovmm_end = getelementptr inbounds %struct.gart_device, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %iovmm_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iovmm_end, align 4
  %sub = add i32 %6, -1
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %aperture_end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %aperture_end, align 8
  %force_aperture = getelementptr inbounds %struct.iommu_domain, ptr %call7.i.i, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %force_aperture to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %force_aperture, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then1 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gart_iommu_domain_free(ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %active_domain = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %active_domain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active_domain, align 4
  %cmp = icmp eq ptr %2, %domain
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !49

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 163, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %domain) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gart_iommu_attach_dev(ptr noundef %domain, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %dom_lock = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dom_lock) #8
  %active_domain = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %active_domain to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %active_domain, align 4
  %tobool.not = icmp eq ptr %2, null
  %cmp.not = icmp eq ptr %2, %domain
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.else, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.else:                                          ; preds = %entry
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %3 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

if.else.dev_iommu_priv_get.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %if.else.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then.i ], [ null, %if.else.dev_iommu_priv_get.exit_crit_edge ]
  %cmp2.not = icmp eq ptr %retval.0.i, %domain
  br i1 %cmp2.not, label %dev_iommu_priv_get.exit.if.end5_crit_edge, label %if.then3

dev_iommu_priv_get.exit.if.end5_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %domain, ptr %priv1.i, align 4
  %8 = ptrtoint ptr %active_domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %domain, ptr %active_domain, align 4
  %active_devices = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 6
  %9 = ptrtoint ptr %active_devices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_devices, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %active_devices, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %dev_iommu_priv_get.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ 0, %if.then3 ], [ 0, %dev_iommu_priv_get.exit.if.end5_crit_edge ], [ -16, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dom_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gart_iommu_detach_dev(ptr noundef readnone %domain, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %dom_lock = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %dom_lock) #8
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %1 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.dev_iommu_priv_get.exit_crit_edge, label %if.then.i

entry.dev_iommu_priv_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_iommu_priv_get.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.dev_iommu, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  br label %dev_iommu_priv_get.exit

dev_iommu_priv_get.exit:                          ; preds = %if.then.i, %entry.dev_iommu_priv_get.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.then.i ], [ null, %entry.dev_iommu_priv_get.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i, %domain
  br i1 %cmp, label %if.then, label %dev_iommu_priv_get.exit.if.end3_crit_edge

dev_iommu_priv_get.exit.if.end3_crit_edge:        ; preds = %dev_iommu_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %dev_iommu_priv_get.exit
  %priv1.i = getelementptr inbounds %struct.dev_iommu, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %priv1.i, align 4
  %active_devices = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 6
  %6 = ptrtoint ptr %active_devices to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_devices, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %active_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1 = icmp eq i32 %dec, 0
  br i1 %cmp1, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %active_domain = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 7
  %8 = ptrtoint ptr %active_domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %active_domain, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %dev_iommu_priv_get.exit.if.end3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dom_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gart_iommu_map(ptr nocapture noundef readnone %domain, i32 noundef %iova, i32 noundef %pa, i32 noundef %bytes, i32 noundef %prot, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %iovmm_base.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %iovmm_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iovmm_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %iova)
  %cmp.i = icmp ule i32 %2, %iova
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %bytes)
  %cmp1.not.i = icmp eq i32 %bytes, 4096
  %or.cond.i = and i1 %cmp1.not.i, %cmp.i
  br i1 %or.cond.i, label %gart_iova_range_invalid.exit, label %entry.cleanup_crit_edge, !prof !50

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gart_iova_range_invalid.exit:                     ; preds = %entry
  %add.i = add i32 %iova, 4096
  %iovmm_end.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %iovmm_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iovmm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp2.i = icmp ugt i32 %add.i, %4
  br i1 %cmp2.i, label %gart_iova_range_invalid.exit.cleanup_crit_edge, label %if.end

gart_iova_range_invalid.exit.cleanup_crit_edge:   ; preds = %gart_iova_range_invalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %gart_iova_range_invalid.exit
  %pte_lock = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %pte_lock) #8
  %5 = load i8, ptr @gart_debug, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %.pre.i = tail call i32 @llvm.bswap.i32(i32 %iova) #8
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %.pre.i) #8, !srcloc !47
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !48
  %.mask.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.i.not.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.i.not.i, label %land.rhs.i.if.end.i_crit_edge, label %do.end.i, !prof !52

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.9) #11
  br label %__gart_iommu_map.exit

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %or.i = or i32 %pa, -2147483648
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %.pre.i) #8, !srcloc !47
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %15) #8, !srcloc !47
  br label %__gart_iommu_map.exit

__gart_iommu_map.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end.i ]
  tail call void @_raw_spin_unlock(ptr noundef %pte_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %__gart_iommu_map.exit, %gart_iova_range_invalid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__gart_iommu_map.exit ], [ -22, %gart_iova_range_invalid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gart_iommu_unmap(ptr nocapture noundef readnone %domain, i32 noundef %iova, i32 noundef %bytes, ptr nocapture noundef readnone %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %iovmm_base.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %iovmm_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iovmm_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %iova)
  %cmp.i = icmp ule i32 %2, %iova
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %bytes)
  %cmp1.not.i = icmp eq i32 %bytes, 4096
  %or.cond.i = and i1 %cmp1.not.i, %cmp.i
  br i1 %or.cond.i, label %gart_iova_range_invalid.exit, label %entry.cleanup_crit_edge, !prof !50

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gart_iova_range_invalid.exit:                     ; preds = %entry
  %add.i = add i32 %iova, 4096
  %iovmm_end.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %iovmm_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iovmm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp2.i = icmp ugt i32 %add.i, %4
  br i1 %cmp2.i, label %gart_iova_range_invalid.exit.cleanup_crit_edge, label %if.end

gart_iova_range_invalid.exit.cleanup_crit_edge:   ; preds = %gart_iova_range_invalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %gart_iova_range_invalid.exit
  %pte_lock = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %pte_lock) #8
  %5 = load i8, ptr @gart_debug, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %.pre.i = tail call i32 @llvm.bswap.i32(i32 %iova) #8
  br i1 %tobool.not.i, label %if.end._crit_edge, label %land.rhs.i

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %13

land.rhs.i:                                       ; preds = %if.end
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %.pre.i) #8, !srcloc !47
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #8, !srcloc !48
  %.mask.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i.i)
  %tobool.i.not.i = icmp eq i32 %.mask.i.i, 0
  br i1 %tobool.i.not.i, label %__gart_iommu_unmap.exit, label %land.rhs.i._crit_edge, !prof !49

land.rhs.i._crit_edge:                            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %13

__gart_iommu_unmap.exit:                          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11) #11
  br label %cleanup.sink.split

13:                                               ; preds = %land.rhs.i._crit_edge, %if.end._crit_edge
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %0, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %.pre.i) #8, !srcloc !47
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %0, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #8, !srcloc !47
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %13, %__gart_iommu_unmap.exit
  %retval.0.ph = phi i32 [ 0, %__gart_iommu_unmap.exit ], [ 4096, %13 ]
  tail call void @_raw_spin_unlock(ptr noundef %pte_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %gart_iova_range_invalid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gart_iova_range_invalid.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gart_iommu_sync_map(ptr nocapture noundef readnone %domain, i32 noundef %iova, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gart_iommu_sync(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !48
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gart_iommu_iova_to_phys(ptr nocapture noundef readnone %domain, i32 noundef %iova) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @gart_handle, align 4
  %iovmm_base.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %iovmm_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iovmm_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %iova)
  %cmp.i.not = icmp ugt i32 %2, %iova
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %gart_iova_range_invalid.exit, !prof !53

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gart_iova_range_invalid.exit:                     ; preds = %entry
  %add.i = add i32 %iova, 4096
  %iovmm_end.i = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %iovmm_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iovmm_end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp2.i = icmp ugt i32 %add.i, %4
  br i1 %cmp2.i, label %gart_iova_range_invalid.exit.cleanup_crit_edge, label %if.end

gart_iova_range_invalid.exit.cleanup_crit_edge:   ; preds = %gart_iova_range_invalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %gart_iova_range_invalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pte_lock = getelementptr inbounds %struct.gart_device, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %pte_lock) #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %iova) #8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #8, !srcloc !47
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !48
  tail call void @_raw_spin_unlock(ptr noundef %pte_lock) #8
  %11 = and i32 %10, 15794047
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gart_iova_range_invalid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end ], [ -22, %gart_iova_range_invalid.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @gart_iommu_probe_device(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 37
  %0 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %dev_iommu_fwspec_get.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

dev_iommu_fwspec_get.exit:                        ; preds = %entry
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwspec.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %dev_iommu_fwspec_get.exit.return_crit_edge, label %if.end

dev_iommu_fwspec_get.exit.return_crit_edge:       ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load ptr, ptr @gart_handle, align 4
  %iommu = getelementptr inbounds %struct.gart_device, ptr %4, i32 0, i32 8
  br label %return

return:                                           ; preds = %if.end, %dev_iommu_fwspec_get.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %iommu, %if.end ], [ inttoptr (i32 -19 to ptr), %dev_iommu_fwspec_get.exit.return_crit_edge ], [ inttoptr (i32 -19 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gart_iommu_release_device(ptr nocapture noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @generic_device_group(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gart_iommu_of_xlate(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %args) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iommu/tegra-gart.c", i32 333, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_gart_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_gart_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tegra_gart_probe.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/iommu/tegra-gart.c", i32 347, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tegra_gart_probe.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/iommu/tegra-gart.c", i32 348, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iommu/tegra-gart.c", i32 352, i32 56}
!16 = !{ptr @__param_gart_debug, !17, !"__param_gart_debug", i1 false, i1 false}
!17 = !{!"../drivers/iommu/tegra-gart.c", i32 379, i32 1}
!18 = !{ptr @__UNIQUE_ID_gart_debugtype229, !17, !"__UNIQUE_ID_gart_debugtype229", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_gart_debug230, !20, !"__UNIQUE_ID_gart_debug230", i1 false, i1 false}
!20 = !{!"../drivers/iommu/tegra-gart.c", i32 380, i32 1}
!21 = !{ptr @gart_handle, !22, !"gart_handle", i1 false, i1 false}
!22 = !{!"../drivers/iommu/tegra-gart.c", i32 49, i32 28}
!23 = !{ptr @gart_debug, !24, !"gart_debug", i1 false, i1 false}
!24 = !{!"../drivers/iommu/tegra-gart.c", i32 51, i32 13}
!25 = !{ptr @gart_iommu_ops, !26, !"gart_iommu_ops", i1 false, i1 false}
!26 = !{!"../drivers/iommu/tegra-gart.c", i32 278, i32 31}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iommu/tegra-gart.c", i32 171, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__gart_iommu_map._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @__gart_iommu_map._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iommu/tegra-gart.c", i32 200, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__gart_iommu_unmap._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @__gart_iommu_unmap._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__param_str_gart_debug, !17, !"__param_str_gart_debug", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 692418}
!48 = !{i64 692836}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 4000000, i32 4001}
!51 = !{i8 0, i8 2}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!"branch_weights", i32 4001, i32 4000000}
