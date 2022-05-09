; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_prime.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_prime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.89 = type { i32, ptr }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.82, i8 }
%union.anon.82 = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.97, %struct.anon.98, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.101, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.113 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.97 = type { ptr, i32, i32, i8 }
%struct.anon.98 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.99 = type { i64, i64 }
%struct.anon.100 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { ptr, i64 }
%struct.anon.101 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.102, i8 }
%union.anon.102 = type { %struct.anon.106 }
%struct.anon.106 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.108 = type { i32 }
%struct.anon.109 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.110 = type { i16, i16 }
%struct.anon.111 = type { i16, i16, i16, %struct.anon.112, i16 }
%struct.anon.112 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@nouveau_gem_object_funcs = external dso_local constant %struct.drm_gem_object_funcs, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_gem_prime_get_sg_table(ptr nocapture noundef readonly %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages, align 4
  %call3 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %1, ptr noundef %5, i32 noundef %7) #4
  ret ptr %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_gem_prime_import_sg_table(ptr noundef %dev, ptr nocapture noundef readonly %attach, ptr noundef %sg) local_unnamed_addr #0 align 64 {
entry:
  %size = alloca i64, align 8
  %align = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %2 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attach, align 4
  %resv = getelementptr inbounds %struct.dma_buf, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size) #4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %size, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %align) #4
  %9 = ptrtoint ptr %align to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %align, align 4
  %call.i = tail call i32 @ww_mutex_lock(ptr noundef %5, ptr noundef null) #4
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2
  %call4 = call ptr @nouveau_bo_alloc(ptr noundef %client, ptr noundef nonnull %size, ptr noundef nonnull %align, i32 noundef 4, i32 noundef 0, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end:                                           ; preds = %entry
  %valid_domains = getelementptr inbounds %struct.nouveau_bo, ptr %call4, i32 0, i32 2
  %10 = ptrtoint ptr %valid_domains to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %valid_domains, align 8
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call4, i32 0, i32 11
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @nouveau_gem_object_funcs, ptr %funcs, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  %conv9 = trunc i64 %13 to i32
  %call10 = call i32 @drm_gem_object_init(ptr noundef %dev, ptr noundef %call4, i32 noundef %conv9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  %tobool5.not.i = icmp eq ptr %call4, null
  br i1 %tobool5.not.i, label %if.then11.unlock_crit_edge, label %if.then6.i

if.then11.unlock_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then6.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  call void @ttm_bo_put(ptr noundef nonnull %call4) #4
  br label %unlock

if.end14:                                         ; preds = %if.end
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %16 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %align, align 4
  %call15 = call i32 @nouveau_bo_init(ptr noundef %call4, i64 noundef %15, i32 noundef %17, i32 noundef 4, ptr noundef %sg, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.unlock_crit_edge, label %if.then17

if.end14.unlock_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.then17:                                        ; preds = %if.end14
  %tobool5.not.i29 = icmp eq ptr %call4, null
  br i1 %tobool5.not.i29, label %if.then17.nouveau_bo_ref.exit31_crit_edge, label %if.then6.i30

if.then17.nouveau_bo_ref.exit31_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %nouveau_bo_ref.exit31

if.then6.i30:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  call void @ttm_bo_put(ptr noundef nonnull %call4) #4
  br label %nouveau_bo_ref.exit31

nouveau_bo_ref.exit31:                            ; preds = %if.then6.i30, %if.then17.nouveau_bo_ref.exit31_crit_edge
  %18 = inttoptr i32 %call15 to ptr
  br label %unlock

unlock:                                           ; preds = %nouveau_bo_ref.exit31, %if.end14.unlock_crit_edge, %if.then6.i, %if.then11.unlock_crit_edge, %entry.unlock_crit_edge
  %obj.0 = phi ptr [ %18, %nouveau_bo_ref.exit31 ], [ %call4, %entry.unlock_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then11.unlock_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then6.i ], [ %call4, %if.end14.unlock_crit_edge ]
  call void @dma_resv_reset_shared_max(ptr noundef %5) #4
  call void @ww_mutex_unlock(ptr noundef %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %align) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size) #4
  ret ptr %obj.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_bo_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_init(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_prime_pin(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @nouveau_bo_pin(ptr noundef %obj, i32 noundef 4, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv35.i = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 9
  %0 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv35.i, align 8
  %call.i.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -4
  %retval.1.i = select i1 %cmp.i, i32 -512, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool3.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end5:                                          ; preds = %if.end
  %moving = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 11
  %2 = ptrtoint ptr %moving to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %moving, align 8
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %3, i1 noundef zeroext true, i32 noundef 2147483647) #4
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end5.if.end12_crit_edge
  %ret.0 = phi i32 [ %4, %if.then8 ], [ 0, %if.end5.if.end12_crit_edge ]
  %bdev.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 1
  %5 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #4
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 6
  %7 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %obj, ptr noundef %8, ptr noundef null) #4
  %9 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #4
  %11 = ptrtoint ptr %resv35.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resv35.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %12) #4
  tail call void @ww_mutex_unlock(ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool14.not = icmp eq i32 %ret.0, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end12.error_crit_edge

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

error:                                            ; preds = %if.end12.error_crit_edge, %if.end.error_crit_edge
  %ret.1 = phi i32 [ %retval.1.i, %if.end.error_crit_edge ], [ %ret.0, %if.end12.error_crit_edge ]
  %call17 = tail call i32 @nouveau_bo_unpin(ptr noundef %obj) #4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %error ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_gem_prime_unpin(ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @nouveau_bo_unpin(ptr noundef %obj) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
