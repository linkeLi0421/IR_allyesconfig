; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.89 = type { i32, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__UNIQUE_ID_import_ns318 = internal constant [26 x i8] c"omapdrm.import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@__const.omap_gem_prime_export.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@omap_dmabuf_ops = internal constant { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr null, ptr null, ptr null, ptr null, ptr @omap_gem_map_dma_buf, ptr @omap_gem_unmap_dma_buf, ptr @drm_gem_dmabuf_release, ptr @omap_gem_dmabuf_begin_cpu_access, ptr @omap_gem_dmabuf_end_cpu_access, ptr @omap_gem_dmabuf_mmap, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 90, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"omap_dmabuf_ops\00", align 1
@___asan_gen_.5 = private constant [45 x i8] c"../drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 79, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_import_ns318, ptr @.str, ptr @omap_dmabuf_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_gem_prime_export(ptr noundef %obj, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #4
  %0 = call ptr @memcpy(ptr %exp_info, ptr @__const.omap_gem_prime_export.exp_info, i32 24)
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @omap_dmabuf_ops, ptr %ops, align 4
  %call = tail call i32 @omap_gem_mmap_size(ptr noundef %obj) #4
  %size = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %size, align 4
  %flags1 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 4
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %flags, ptr %flags1, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %obj, ptr %priv, align 4
  %dev = getelementptr inbounds %struct.drm_gem_object, ptr %obj, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %call2 = call ptr @drm_gem_dmabuf_export(ptr noundef %6, ptr noundef nonnull %exp_info) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #4
  ret ptr %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_mmap_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_dmabuf_export(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @omap_gem_prime_import(ptr noundef %dev, ptr noundef %dma_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_buf, ptr %dma_buf, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @omap_dmabuf_ops
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dma_buf, ptr %dma_buf, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %cmp2 = icmp eq ptr %5, %dev
  br i1 %cmp2, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.then
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %3, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #4, !srcloc !15
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !16

if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then3
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !17

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then3.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef %.sink.i.i.i.i.i) #4
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  %call = tail call ptr @dma_buf_attach(ptr noundef %dma_buf, ptr noundef %9) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %file.i = getelementptr inbounds %struct.dma_buf, ptr %dma_buf, i32 0, i32 1
  %10 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file.i, align 4
  %f_count.i.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %f_count.i.i, i32 1, i32 3, i32 1) #4
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i.i, ptr %f_count.i.i, i32 1, ptr elementtype(i32) %f_count.i.i) #4, !srcloc !18
  %call10 = tail call ptr @dma_buf_map_attachment(ptr noundef %call, i32 noundef 1) #4
  %cmp.i46 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.end9.fail_detach_crit_edge, label %if.end14

if.end9.fail_detach_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_detach

if.end14:                                         ; preds = %if.end9
  %13 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_buf, align 4
  %call15 = tail call ptr @omap_gem_new_dmabuf(ptr noundef %dev, i32 noundef %14, ptr noundef %call10) #4
  %cmp.i47 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dma_buf_unmap_attachment(ptr noundef %call, ptr noundef %call10, i32 noundef 1) #4
  br label %fail_detach

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %call15, i32 0, i32 8
  %15 = ptrtoint ptr %import_attach to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %import_attach, align 4
  br label %cleanup

fail_detach:                                      ; preds = %if.then17, %if.end9.fail_detach_crit_edge
  %ret.0.in = phi ptr [ %call15, %if.then17 ], [ %call10, %if.end9.fail_detach_crit_edge ]
  tail call void @dma_buf_detach(ptr noundef %dma_buf, ptr noundef %call) #4
  tail call void @dma_buf_put(ptr noundef %dma_buf) #4
  br label %cleanup

cleanup:                                          ; preds = %fail_detach, %if.end19, %if.end4.cleanup_crit_edge, %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0.in, %fail_detach ], [ %call15, %if.end19 ], [ %3, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ %3, %if.end15.sink.split.i.i.i.i.i ], [ %call, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_map_attachment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_gem_new_dmabuf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_unmap_attachment(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_gem_map_dma_buf(ptr nocapture noundef readonly %attachment, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attachment to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attachment, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call ptr @omap_gem_get_sg(ptr noundef %3) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @omap_gem_dma_sync_buffer(ptr noundef %3, i32 noundef %dir) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_gem_unmap_dma_buf(ptr nocapture noundef readonly %attachment, ptr noundef %sg, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attachment to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attachment, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void @omap_gem_put_sg(ptr noundef %3, ptr noundef %sg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_dmabuf_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gem_dmabuf_begin_cpu_access(ptr nocapture noundef readonly %buffer, i32 noundef %dir) #0 align 64 {
entry:
  %pages = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buffer, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages) #4
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %pages, align 4, !annotation !19
  %call = tail call i32 @omap_gem_flags(ptr noundef %1) #4
  %and = and i32 %call, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 @omap_gem_get_pages(ptr noundef %1, ptr noundef nonnull %pages, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gem_dmabuf_end_cpu_access(ptr nocapture noundef readonly %buffer, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buffer, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @omap_gem_put_pages(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_gem_dmabuf_mmap(ptr nocapture noundef readonly %buffer, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buffer, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @omap_gem_mmap_size(ptr noundef %1) #4
  %call1 = tail call i32 @drm_gem_mmap_obj(ptr noundef %1, i32 noundef %call, ptr noundef %vma) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @omap_gem_mmap_obj(ptr noundef %1, ptr noundef %vma) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_gem_get_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_dma_sync_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gem_put_sg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_get_pages(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_put_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap_obj(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_gem_mmap_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__UNIQUE_ID_import_ns318, !1, !"__UNIQUE_ID_import_ns318", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c", i32 14, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c", i32 90, i32 2}
!4 = !{ptr @omap_dmabuf_ops, !5, !"omap_dmabuf_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c", i32 79, i32 33}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2148453985, i64 2148454017, i64 2148454046, i64 2148454080, i64 2148454111, i64 2148454134}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2148452455, i64 2148452481, i64 2148452510, i64 2148452544, i64 2148452575, i64 2148452598}
!19 = !{!"auto-init"}
