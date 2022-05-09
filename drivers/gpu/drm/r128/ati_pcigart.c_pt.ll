; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/r128/ati_pcigart.c_pt.bc'
source_filename = "../drivers/gpu/drm/r128/ati_pcigart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_ati_pcigart_info = type { i32, i32, ptr, i32, i32, ptr, %struct.drm_local_map, i32 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }
%struct.drm_dma_handle = type { i32, ptr, i32 }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no scatter/gather memory!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI: no table in VRAM: using normal RAM\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to set dma mask to 0x%Lx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot allocate PCI GART page!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PCI: Gart Table: VRAM %08LX mapped at %08lX\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to map PCIGART pages!\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 89, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 136, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 139, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 147, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 157, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [38 x i8] c"../drivers/gpu/drm/r128/ati_pcigart.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 180, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ati_pcigart_cleanup(ptr nocapture noundef readonly %dev, ptr nocapture noundef %gart_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_addr = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 3
  %4 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end18, label %if.then4

if.then4:                                         ; preds = %if.end
  %table_size = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 7
  %6 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %table_size, align 4
  %div46 = lshr i32 %7, 2
  %pages5 = getelementptr inbounds %struct.drm_sg_mem, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pages5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pages5, align 4
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %div46)
  %busaddr = getelementptr inbounds %struct.drm_sg_mem, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp750.not = icmp eq i32 %10, 0
  br i1 %cmp750.not, label %if.then4.for.end_crit_edge, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %if.then4.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %if.then4.for.body_crit_edge ]
  %11 = ptrtoint ptr %busaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %busaddr, align 4
  %arrayidx = getelementptr i32, ptr %12, i32 %i.051
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %for.body.for.end_crit_edge, label %if.end10

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end10:                                         ; preds = %for.body
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %14, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #4
  %inc = add nuw i32 %i.051, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %for.body.for.end_crit_edge, %if.then4.for.end_crit_edge
  %15 = ptrtoint ptr %gart_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gart_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %if.end18.thread, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bus_addr, align 4
  br label %land.lhs.true

if.end18:                                         ; preds = %if.end
  %18 = ptrtoint ptr %gart_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %gart_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp20 = icmp eq i32 %.pr, 1
  br i1 %cmp20, label %if.end18.land.lhs.true_crit_edge, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18.land.lhs.true_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end18.land.lhs.true_crit_edge, %if.end18.thread
  %table_handle = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 5
  %19 = ptrtoint ptr %table_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %table_handle, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %if.then22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  %size.i = getelementptr inbounds %struct.drm_dma_handle, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %vaddr.i = getelementptr inbounds %struct.drm_dma_handle, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vaddr.i, align 4
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %20, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28, i32 noundef 0) #4
  tail call void @kfree(ptr noundef nonnull %20) #4
  %29 = ptrtoint ptr %table_handle to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %table_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %land.lhs.true.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then22 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 1, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_ati_pcigart_init(ptr nocapture noundef readonly %dev, ptr nocapture noundef %gart_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %done

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %gart_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gart_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #4
  %table_mask = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 4
  %6 = ptrtoint ptr %table_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %table_mask, align 4
  %conv = zext i32 %7 to i64
  %call = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %table_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %table_mask, align 4
  %conv8 = zext i32 %9 to i64
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i64 noundef %conv8) #4
  br label %done

if.end9:                                          ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 12) #7
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end9.if.then12_crit_edge, label %if.end.i

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end.i:                                         ; preds = %if.end9
  %table_size.i = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 7
  %11 = ptrtoint ptr %table_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %table_size.i, align 4
  %size.i = getelementptr inbounds %struct.drm_dma_handle, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size.i, align 8
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev2, align 4
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %15, i32 noundef %12, ptr noundef nonnull %call7.i.i, i32 noundef 3264, i32 noundef 0) #4
  %vaddr.i = getelementptr inbounds %struct.drm_dma_handle, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %vaddr.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end13

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %if.then12

if.then12:                                        ; preds = %if.then6.i, %if.end9.if.then12_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  br label %done

if.end13:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %table_handle.i = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 5
  %17 = ptrtoint ptr %table_handle.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %table_handle.i, align 4
  %18 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vaddr.i, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i.i, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %addr = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 2
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %bus_addr = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 3
  %24 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_addr, align 4
  %conv17 = zext i32 %25 to i64
  %26 = ptrtoint ptr %23 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i64 noundef %conv17, i32 noundef %26) #4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end13
  %address.0 = phi ptr [ %19, %if.end13 ], [ %23, %if.else ]
  %pci_gart.0 = phi ptr [ %19, %if.end13 ], [ null, %if.else ]
  %bus_address.0 = phi i32 [ %21, %if.end13 ], [ %25, %if.else ]
  %table_size = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 7
  %27 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %table_size, align 4
  %div121 = lshr i32 %28, 2
  %pages20 = getelementptr inbounds %struct.drm_sg_mem, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %pages20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pages20, align 4
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 %div121)
  %32 = ptrtoint ptr %gart_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gart_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp25 = icmp eq i32 %33, 1
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %mul = and i32 %28, -4
  %34 = call ptr @memset(ptr %pci_gart.0, i32 0, i32 %mul)
  br label %if.end30

if.else28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %handle = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 6, i32 4
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle, align 4
  %mul29 = and i32 %28, -4
  tail call void @mmioset(ptr noundef %36, i32 noundef 0, i32 noundef %mul29) #4
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp31129.not = icmp eq i32 %31, 0
  br i1 %cmp31129.not, label %if.end30.for.end67_crit_edge, label %for.body.lr.ph

if.end30.for.end67_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end67

for.body.lr.ph:                                   ; preds = %if.end30
  %pagelist = getelementptr inbounds %struct.drm_sg_mem, ptr %1, i32 0, i32 3
  %busaddr35 = getelementptr inbounds %struct.drm_sg_mem, ptr %1, i32 0, i32 4
  %gart_reg_if = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 1
  %handle61 = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 6, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %if.end63.for.body_crit_edge ]
  %37 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pagelist, align 4
  %arrayidx = getelementptr ptr, ptr %38, i32 %i.0131
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %call34 = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %40, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #4
  %41 = ptrtoint ptr %busaddr35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %busaddr35, align 4
  %arrayidx36 = getelementptr i32, ptr %42, i32 %i.0131
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call34, ptr %arrayidx36, align 4
  %44 = load ptr, ptr %busaddr35, align 4
  %arrayidx39 = getelementptr i32, ptr %44, i32 %i.0131
  %45 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx39, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not = icmp eq i32 %46, -1
  br i1 %cmp.i.not, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  %call43 = tail call i32 @drm_ati_pcigart_cleanup(ptr noundef %dev, ptr noundef %gart_info)
  br label %done

if.end44:                                         ; preds = %for.body
  %47 = ptrtoint ptr %busaddr35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %busaddr35, align 4
  %arrayidx46 = getelementptr i32, ptr %48, i32 %i.0131
  %49 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx46, align 4
  %51 = ptrtoint ptr %gart_reg_if to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gart_reg_if, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %if.end44.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb51
  ]

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %50, 12
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %shr = lshr i32 %50, 8
  %or52 = or i32 %shr, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sw.bb, %if.end44.sw.epilog_crit_edge
  %val.0 = phi i32 [ %or52, %sw.bb51 ], [ %or, %sw.bb ], [ %50, %if.end44.sw.epilog_crit_edge ]
  %54 = ptrtoint ptr %gart_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %gart_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp55 = icmp eq i32 %55, 1
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %arrayidx58 = getelementptr i32, ptr %pci_gart.0, i32 %i.0131
  %57 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx58, align 4
  br label %if.end63

if.else59:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %mul60 = shl i32 %i.0131, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %58 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %59 = ptrtoint ptr %handle61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %handle61, align 4
  %add.ptr62 = getelementptr i8, ptr %60, i32 %mul60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %58) #4, !srcloc !22
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.then57
  %inc66 = add nuw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc66, %31
  br i1 %exitcond.not, label %if.end63.for.end67_crit_edge, label %if.end63.for.body_crit_edge

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end63.for.end67_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end67

for.end67:                                        ; preds = %if.end63.for.end67_crit_edge, %if.end30.for.end67_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  br label %done

done:                                             ; preds = %for.end67, %if.then42, %if.then12, %if.then6, %if.then
  %address.1 = phi ptr [ null, %if.then6 ], [ null, %if.then12 ], [ null, %if.then42 ], [ %address.0, %for.end67 ], [ null, %if.then ]
  %bus_address.1 = phi i32 [ 0, %if.then6 ], [ 0, %if.then12 ], [ 0, %if.then42 ], [ %bus_address.0, %for.end67 ], [ 0, %if.then ]
  %ret.0 = phi i32 [ -14, %if.then6 ], [ -12, %if.then12 ], [ -12, %if.then42 ], [ 0, %for.end67 ], [ -12, %if.then ]
  %addr71 = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 2
  %61 = ptrtoint ptr %addr71 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %address.1, ptr %addr71, align 4
  %bus_addr72 = getelementptr inbounds %struct.drm_ati_pcigart_info, ptr %gart_info, i32 0, i32 3
  %62 = ptrtoint ptr %bus_addr72 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %bus_address.1, ptr %bus_addr72, align 4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/r128/ati_pcigart.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/r128/ati_pcigart.c", i32 136, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/r128/ati_pcigart.c", i32 139, i32 4}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/r128/ati_pcigart.c", i32 147, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/r128/ati_pcigart.c", i32 157, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/r128/ati_pcigart.c", i32 180, i32 4}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2154663950}
!22 = !{i64 4984070}
!23 = !{i64 2154664292}
