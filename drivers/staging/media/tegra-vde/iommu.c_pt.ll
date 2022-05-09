; ModuleID = '/llk/IR_all_yes/drivers/staging/media/tegra-vde/iommu.c_pt.bc'
source_filename = "../drivers/staging/media/tegra-vde/iommu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tegra_vde = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.list_head, %struct.miscdevice, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, %struct.iova_domain, ptr, ptr, ptr, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.sg_table = type { ptr, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@platform_bus_type = external dso_local global %struct.bus_type, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_vde_iommu_map(ptr noundef %vde, ptr nocapture noundef readonly %sgt, ptr nocapture noundef writeonly %iovap, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %aperture_end = getelementptr inbounds %struct.iommu_domain, ptr %1, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %aperture_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aperture_end, align 4
  %iova1 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20
  %granule.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20, i32 4
  %4 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %granule.i, align 4
  %sub.i = add i32 %size, -1
  %add.i = add i32 %sub.i, %5
  %neg.i = sub i32 0, %5
  %and.i = and i32 %add.i, %neg.i
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 false) #3, !range !9
  %shr = lshr i32 %and.i, %6
  %shr5 = lshr i32 %3, %6
  %call6 = tail call ptr @alloc_iova(ptr noundef %iova1, i32 noundef %shr, i32 noundef %shr5, i1 noundef zeroext true) #3
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %pfn_lo.i = getelementptr inbounds %struct.iova, ptr %call6, i32 0, i32 2
  %7 = ptrtoint ptr %pfn_lo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pfn_lo.i, align 4
  %9 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %granule.i, align 4
  %11 = tail call i32 @llvm.cttz.i32(i32 %10, i1 false) #3, !range !9
  %shl.i = shl i32 %8, %11
  %12 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %domain, align 4
  %14 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %sgt, i32 0, i32 2
  %16 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %orig_nents.i, align 4
  %call.i = tail call i32 @iommu_map_sg(ptr noundef %13, i32 noundef %shl.i, ptr noundef %15, i32 noundef %17, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__free_iova(ptr noundef %iova1, ptr noundef nonnull %call6) #3
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %iovap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6, ptr %iovap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -6, %if.then12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_iova(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_iova(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_vde_iommu_unmap(ptr noundef %vde, ptr noundef %iova) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iova1 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20
  %granule.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20, i32 4
  %0 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %granule.i, align 4
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #3, !range !9
  %pfn_hi.i = getelementptr inbounds %struct.iova, ptr %iova, i32 0, i32 1
  %3 = ptrtoint ptr %pfn_hi.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pfn_hi.i, align 4
  %pfn_lo.i = getelementptr inbounds %struct.iova, ptr %iova, i32 0, i32 2
  %5 = ptrtoint ptr %pfn_lo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pfn_lo.i, align 4
  %sub.i = add i32 %4, 1
  %add.i = sub i32 %sub.i, %6
  %shl = shl i32 %add.i, %2
  %shl.i = shl i32 %6, %2
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  %call5 = tail call i32 @iommu_unmap(ptr noundef %8, i32 noundef %shl.i, i32 noundef %shl) #3
  tail call void @__free_iova(ptr noundef %iova1, ptr noundef %iova) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_vde_iommu_init(ptr noundef %vde) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call = tail call ptr @iommu_group_get(ptr noundef %1) #3
  %group = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 19
  %2 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %group, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %archdata = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 26
  %3 = ptrtoint ptr %archdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %archdata, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @arm_iommu_detach_device(ptr noundef %1) #3
  tail call void @arm_iommu_release_mapping(ptr noundef nonnull %4) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %call8 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #3
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %5 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %domain, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end7.put_group_crit_edge, label %if.end12

if.end7.put_group_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %put_group

if.end12:                                         ; preds = %if.end7
  %call13 = tail call i32 @iova_cache_get() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.free_domain_crit_edge

if.end12.free_domain_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %free_domain

if.end16:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %pgsize_bitmap = getelementptr inbounds %struct.iommu_domain, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgsize_bitmap, align 4
  %10 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #3, !range !9
  %iova19 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20
  %shl = shl nuw i32 1, %10
  tail call void @init_iova_domain(ptr noundef %iova19, i32 noundef %shl, i32 noundef 0) #3
  %11 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %domain, align 4
  %13 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %group, align 4
  %call22 = tail call i32 @iommu_attach_group(ptr noundef %12, ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end16.put_iova_crit_edge

if.end16.put_iova_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %put_iova

if.end25:                                         ; preds = %if.end16
  %granule.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20, i32 4
  %15 = ptrtoint ptr %granule.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %granule.i, align 4
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #3, !range !9
  %shr = lshr i32 1610612736, %17
  %shr29 = lshr i32 1879048192, %17
  %call30 = tail call ptr @reserve_iova(ptr noundef %iova19, i32 noundef %shr, i32 noundef %shr29) #3
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end25.detach_group_crit_edge, label %if.end33

if.end25.detach_group_crit_edge:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %detach_group

if.end33:                                         ; preds = %if.end25
  %iova_resv_static_addresses = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 21
  %18 = ptrtoint ptr %iova_resv_static_addresses to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call30, ptr %iova_resv_static_addresses, align 4
  %shr35 = lshr i32 -1, %17
  %add = add i32 %shr35, 1
  %call37 = tail call ptr @reserve_iova(ptr noundef %iova19, i32 noundef %shr35, i32 noundef %add) #3
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %iova_resv_static_addresses to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iova_resv_static_addresses, align 4
  tail call void @__free_iova(ptr noundef %iova19, ptr noundef %20) #3
  br label %detach_group

if.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %iova_resv_last_page = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 22
  %21 = ptrtoint ptr %iova_resv_last_page to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %iova_resv_last_page, align 4
  br label %cleanup

detach_group:                                     ; preds = %if.then39, %if.end25.detach_group_crit_edge
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain, align 4
  %24 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %group, align 4
  tail call void @iommu_detach_group(ptr noundef %23, ptr noundef %25) #3
  br label %put_iova

put_iova:                                         ; preds = %detach_group, %if.end16.put_iova_crit_edge
  %err.1 = phi i32 [ %call22, %if.end16.put_iova_crit_edge ], [ -12, %detach_group ]
  tail call void @put_iova_domain(ptr noundef %iova19) #3
  tail call void @iova_cache_put() #3
  br label %free_domain

free_domain:                                      ; preds = %put_iova, %if.end12.free_domain_crit_edge
  %err.2 = phi i32 [ %call13, %if.end12.free_domain_crit_edge ], [ %err.1, %put_iova ]
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %27) #3
  br label %put_group

put_group:                                        ; preds = %free_domain, %if.end7.put_group_crit_edge
  %err.3 = phi i32 [ %err.2, %free_domain ], [ -12, %if.end7.put_group_crit_edge ]
  %28 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %29) #3
  br label %cleanup

cleanup:                                          ; preds = %put_group, %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %put_group ], [ 0, %if.end40 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_group_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_detach_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_iommu_release_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iova_cache_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_iova_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_attach_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @reserve_iova(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_detach_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_iova_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iova_cache_put() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_vde_iommu_deinit(ptr noundef %vde) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %iova = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20
  %iova_resv_last_page = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 22
  %2 = ptrtoint ptr %iova_resv_last_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iova_resv_last_page, align 4
  tail call void @__free_iova(ptr noundef %iova, ptr noundef %3) #3
  %iova_resv_static_addresses = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 21
  %4 = ptrtoint ptr %iova_resv_static_addresses to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iova_resv_static_addresses, align 4
  tail call void @__free_iova(ptr noundef %iova, ptr noundef %5) #3
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %group = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 19
  %8 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group, align 4
  tail call void @iommu_detach_group(ptr noundef %7, ptr noundef %9) #3
  tail call void @put_iova_domain(ptr noundef %iova) #3
  tail call void @iova_cache_put() #3
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 4
  tail call void @iommu_domain_free(ptr noundef %11) #3
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  tail call void @iommu_group_put(ptr noundef %13) #3
  %14 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %domain, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i32 0, i32 33}
