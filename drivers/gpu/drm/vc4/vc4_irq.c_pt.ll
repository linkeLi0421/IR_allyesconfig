; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.89, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.90, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.89 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.90 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.vc4_exec_info = type { i64, i64, ptr, i32, i32, ptr, ptr, i32, [4 x ptr], i32, %struct.list_head, %struct.list_head, [2 x i32], ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i8 }
%struct.dma_fence = type { ptr, ptr, %union.anon.79, i64, i64, i32, %struct.kref, i32 }
%union.anon.79 = type { i64 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"render_wait.lock\00", [47 x i8] zeroinitializer }, align 32
@render_wait = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @render_wait, i64 44), ptr getelementptr (i8, ptr @render_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@vc4_irq_prepare.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&vc4->job_wait_queue\00", [43 x i8] zeroinitializer }, align 32
@vc4_irq_prepare.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&vc4->overflow_mem_work)\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't allocate binner overflow mem\0A\00", [57 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"render_wait\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 59, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 249, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 250, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [33 x i8] c"../drivers/gpu/drm/vc4/vc4_irq.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 80, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @render_wait, ptr @vc4_irq_prepare.__key, ptr @.str.1, ptr @vc4_irq_prepare.__key.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @render_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_irq_prepare.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_irq_prepare.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_irq_enable(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #4, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_irq_disable(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d, align 4
  %regs6 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs6, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 117440512) #4, !srcloc !21
  %irq = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %11) #4
  %overflow_mem_work = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29
  %call8 = tail call zeroext i1 @cancel_work_sync(ptr noundef %overflow_mem_work) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vc4_irq_install(ptr noundef %dev, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %irq)
  %cmp = icmp eq i32 %irq, -2147483648
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.vc4_irq_prepare.exit_crit_edge, label %do.body.i

if.end.vc4_irq_prepare.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %vc4_irq_prepare.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %job_wait_queue.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %job_wait_queue.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @vc4_irq_prepare.__key) #4
  %overflow_mem_work.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29
  tail call void @__init_work(ptr noundef %overflow_mem_work.i, i32 noundef 0) #4
  %2 = ptrtoint ptr %overflow_mem_work.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %overflow_mem_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @vc4_irq_prepare.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry5.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29, i32 1
  %3 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29, i32 2
  %5 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vc4_overflow_mem_work, ptr %func.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #4, !srcloc !21
  br label %vc4_irq_prepare.exit

vc4_irq_prepare.exit:                             ; preds = %do.body.i, %if.end.vc4_irq_prepare.exit_crit_edge
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %name = getelementptr inbounds %struct.drm_driver, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @vc4_irq, ptr noundef null, i32 noundef 0, ptr noundef %13, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %vc4_irq_prepare.exit.cleanup_crit_edge

vc4_irq_prepare.exit.cleanup_crit_edge:           ; preds = %vc4_irq_prepare.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %vc4_irq_prepare.exit
  %14 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v3d.i, align 4
  %tobool.not.i9 = icmp eq ptr %15, null
  br i1 %tobool.not.i9, label %if.end2.cleanup_crit_edge, label %do.body.i12

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.i12:                                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %v3d.i, align 4
  %regs.i10 = getelementptr inbounds %struct.vc4_v3d, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 50331648) #4, !srcloc !21
  br label %cleanup

cleanup:                                          ; preds = %do.body.i12, %if.end2.cleanup_crit_edge, %vc4_irq_prepare.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %entry.cleanup_crit_edge ], [ %call.i, %vc4_irq_prepare.exit.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ 0, %do.body.i12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vc4_irq(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !25
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !26
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d, align 4
  %regs4 = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs4, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #4, !srcloc !21
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v3d, align 4
  %regs10 = getelementptr inbounds %struct.vc4_v3d, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs10, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 67108864) #4, !srcloc !21
  %overflow_mem_work = getelementptr inbounds %struct.vc4_dev, ptr %arg, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %overflow_mem_work) #4
  br label %if.end

if.end:                                           ; preds = %do.body6, %entry.if.end_crit_edge
  %status.0 = phi i32 [ 1, %do.body6 ], [ 0, %entry.if.end_crit_edge ]
  %and13 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %if.then15

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then15:                                        ; preds = %if.end
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %arg, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %job_lock) #4
  %bin_job_list.i.i = getelementptr inbounds %struct.vc4_dev, ptr %arg, i32 0, i32 16
  %15 = ptrtoint ptr %bin_job_list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %bin_job_list.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %16, %bin_job_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -60
  %tobool.not19.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not19.i
  br i1 %tobool.not.i, label %if.then15.vc4_irq_finish_bin_job.exit_crit_edge, label %if.end.i

if.then15.vc4_irq_finish_bin_job.exit_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %vc4_irq_finish_bin_job.exit

if.end.i:                                         ; preds = %if.then15
  tail call void @vc4_move_job_to_render(ptr noundef %arg, ptr noundef nonnull %add.ptr.i.i) #4
  %17 = ptrtoint ptr %bin_job_list.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %bin_job_list.i.i, align 4
  %cmp.not.i16.i = icmp eq ptr %18, %bin_job_list.i.i
  %add.ptr.i17.i = getelementptr i8, ptr %18, i32 -60
  %tobool3.not20.i = icmp eq ptr %add.ptr.i17.i, null
  %tobool3.not.i = or i1 %cmp.not.i16.i, %tobool3.not20.i
  br i1 %tobool3.not.i, label %if.end.i.vc4_irq_finish_bin_job.exit_crit_edge, label %land.lhs.true.i

if.end.i.vc4_irq_finish_bin_job.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vc4_irq_finish_bin_job.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %perfmon.i = getelementptr i8, ptr %18, i32 108
  %19 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %perfmon.i, align 8
  %perfmon4.i = getelementptr i8, ptr %16, i32 108
  %21 = ptrtoint ptr %perfmon4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %perfmon4.i, align 8
  %cmp.i = icmp eq ptr %20, %22
  br i1 %cmp.i, label %if.then5.i, label %land.lhs.true.i.vc4_irq_finish_bin_job.exit_crit_edge

land.lhs.true.i.vc4_irq_finish_bin_job.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vc4_irq_finish_bin_job.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vc4_submit_next_bin_job(ptr noundef %arg) #4
  br label %vc4_irq_finish_bin_job.exit

vc4_irq_finish_bin_job.exit:                      ; preds = %if.then5.i, %land.lhs.true.i.vc4_irq_finish_bin_job.exit_crit_edge, %if.end.i.vc4_irq_finish_bin_job.exit_crit_edge, %if.then15.vc4_irq_finish_bin_job.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %job_lock) #4
  br label %if.end17

if.end17:                                         ; preds = %vc4_irq_finish_bin_job.exit, %if.end.if.end17_crit_edge
  %status.1 = phi i32 [ 1, %vc4_irq_finish_bin_job.exit ], [ %status.0, %if.end.if.end17_crit_edge ]
  %and18 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %job_lock21 = getelementptr inbounds %struct.vc4_dev, ptr %arg, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %job_lock21) #4
  tail call fastcc void @vc4_irq_finish_render_job(ptr noundef %arg)
  tail call void @_raw_spin_unlock(ptr noundef %job_lock21) #4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %status.2 = phi i32 [ 1, %if.then20 ], [ %status.1, %if.end17.if.end23_crit_edge ]
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_irq_uninstall(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %v3d.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.vc4_irq_disable.exit_crit_edge, label %do.body.i

entry.vc4_irq_disable.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vc4_irq_disable.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v3d.i, align 4
  %regs.i = getelementptr inbounds %struct.vc4_v3d, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 117440512) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %v3d.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %v3d.i, align 4
  %regs6.i = getelementptr inbounds %struct.vc4_v3d, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 117440512) #4, !srcloc !21
  %irq.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %11) #4
  %overflow_mem_work.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 29
  %call8.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %overflow_mem_work.i) #4
  br label %vc4_irq_disable.exit

vc4_irq_disable.exit:                             ; preds = %do.body.i, %entry.vc4_irq_disable.exit_crit_edge
  %irq = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_irq_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %v3d = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 117440512) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v3d, align 4
  %regs5 = getelementptr inbounds %struct.vc4_v3d, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs5, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 117440512) #4, !srcloc !21
  %job_lock = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 19
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #4
  %bin_job_list.i.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %bin_job_list.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %bin_job_list.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %9, %bin_job_list.i.i
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -60
  %tobool.not13.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not13.i
  br i1 %tobool.not.i, label %entry.vc4_cancel_bin_job.exit_crit_edge, label %if.end.i

entry.vc4_cancel_bin_job.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vc4_cancel_bin_job.exit

if.end.i:                                         ; preds = %entry
  %perfmon.i = getelementptr i8, ptr %9, i32 108
  %10 = ptrtoint ptr %perfmon.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %perfmon.i, align 8
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vc4_perfmon_stop(ptr noundef %dev, ptr noundef nonnull %11, i1 noundef zeroext false) #4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.i.__list_del_entry.exit.i.i_crit_edge

if.end5.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end5.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %19, ptr noundef %bin_job_list.i.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %9, ptr %prev.i2.i.i, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %bin_job_list.i.i, ptr %9, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %9, ptr %19, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  tail call void @vc4_submit_next_bin_job(ptr noundef %dev) #4
  br label %vc4_cancel_bin_job.exit

vc4_cancel_bin_job.exit:                          ; preds = %list_move_tail.exit.i, %entry.vc4_cancel_bin_job.exit_crit_edge
  tail call fastcc void @vc4_irq_finish_render_job(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_irq_finish_render_job(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %render_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.not.i = icmp eq ptr %1, %render_job_list.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %tobool.not65 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not65
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %finished_seqno = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %finished_seqno to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %finished_seqno, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %finished_seqno, align 8
  %job_done_list = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %11, ptr noundef %job_done_list) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %job_done_list, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %bin_job_list.i = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 16
  %16 = ptrtoint ptr %bin_job_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %bin_job_list.i, align 4
  %cmp.not.i57 = icmp eq ptr %17, %bin_job_list.i
  %add.ptr.i58 = getelementptr i8, ptr %17, i32 -60
  %spec.select.i59 = select i1 %cmp.not.i57, ptr null, ptr %add.ptr.i58
  %18 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.not.i61 = icmp eq ptr %19, %render_job_list.i
  %add.ptr.i62 = getelementptr i8, ptr %19, i32 -60
  %perfmon = getelementptr i8, ptr %1, i32 108
  %20 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %perfmon, align 8
  %tobool4.not = icmp ne ptr %21, null
  %tobool5.not66 = icmp eq ptr %add.ptr.i62, null
  %tobool5.not = or i1 %cmp.not.i61, %tobool5.not66
  %or.cond = select i1 %tobool4.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %land.lhs.true6, label %list_move_tail.exit.if.end12_crit_edge

list_move_tail.exit.if.end12_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

land.lhs.true6:                                   ; preds = %list_move_tail.exit
  %tobool7.not = icmp eq ptr %spec.select.i59, null
  br i1 %tobool7.not, label %land.lhs.true6.if.then10_crit_edge, label %lor.lhs.false

land.lhs.true6.if.then10_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

lor.lhs.false:                                    ; preds = %land.lhs.true6
  %perfmon8 = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i59, i32 0, i32 38
  %22 = ptrtoint ptr %perfmon8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %perfmon8, align 8
  %cmp.not = icmp eq ptr %23, %21
  br i1 %cmp.not, label %lor.lhs.false.if.end12_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %land.lhs.true6.if.then10_crit_edge
  tail call void @vc4_perfmon_stop(ptr noundef %dev, ptr noundef nonnull %21, i1 noundef zeroext true) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %lor.lhs.false.if.end12_crit_edge, %list_move_tail.exit.if.end12_crit_edge
  br i1 %tobool5.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vc4_submit_next_render_job(ptr noundef %dev) #4
  br label %if.end22

if.else:                                          ; preds = %if.end12
  %tobool15.not = icmp eq ptr %spec.select.i59, null
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %land.lhs.true16

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

land.lhs.true16:                                  ; preds = %if.else
  %perfmon17 = getelementptr inbounds %struct.vc4_exec_info, ptr %spec.select.i59, i32 0, i32 38
  %24 = ptrtoint ptr %perfmon17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %perfmon17, align 8
  %26 = ptrtoint ptr %perfmon to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %perfmon, align 8
  %cmp19.not = icmp eq ptr %25, %27
  br i1 %cmp19.not, label %land.lhs.true16.if.end22_crit_edge, label %if.then20

land.lhs.true16.if.end22_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vc4_submit_next_bin_job(ptr noundef %dev) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true16.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then14
  %fence = getelementptr i8, ptr %1, i32 -44
  %28 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fence, align 8
  %tobool23.not = icmp eq ptr %29, null
  br i1 %tobool23.not, label %if.end22.if.end29_crit_edge, label %if.then24

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then24:                                        ; preds = %if.end22
  %call26 = tail call i32 @dma_fence_signal_locked(ptr noundef nonnull %29) #4
  %30 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fence, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then24.dma_fence_put.exit_crit_edge, label %if.then.i

if.then24.dma_fence_put.exit_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.then24
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %31, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #4
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #4, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !34

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #4
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  tail call void @dma_fence_release(ptr noundef %refcount.i) #4
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.then24.dma_fence_put.exit_crit_edge
  %33 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fence, align 8
  br label %if.end29

if.end29:                                         ; preds = %dma_fence_put.exit, %if.end22.if.end29_crit_edge
  %job_wait_queue = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %job_wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  %job_done_work = getelementptr inbounds %struct.vc4_dev, ptr %dev, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i64 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %job_done_work) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vc4_overflow_mem_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bin_bo_lock = getelementptr i8, ptr %work, i32 724
  tail call void @mutex_lock_nested(ptr noundef %bin_bo_lock, i32 noundef 0) #4
  %bin_bo = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %bin_bo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bin_bo, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.complete_crit_edge, label %if.end

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %complete

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -2908
  %call = tail call i32 @vc4_v3d_get_bin_slot(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %do.body4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %complete

do.body4:                                         ; preds = %if.end
  %job_lock = getelementptr i8, ptr %work, i32 -172
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %job_lock) #4
  %bin_alloc_overflow = getelementptr i8, ptr %work, i32 -8
  %2 = ptrtoint ptr %bin_alloc_overflow to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bin_alloc_overflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  br i1 %tobool11.not, label %do.body4.if.end23_crit_edge, label %if.then12

do.body4.if.end23_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then12:                                        ; preds = %do.body4
  %bin_job_list.i = getelementptr i8, ptr %work, i32 -196
  %4 = ptrtoint ptr %bin_job_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bin_job_list.i, align 4
  %cmp.not.i = icmp eq ptr %5, %bin_job_list.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -60
  %tobool14.not81 = icmp eq ptr %add.ptr.i, null
  %tobool14.not = or i1 %cmp.not.i, %tobool14.not81
  br i1 %tobool14.not, label %if.then15, label %if.then12.if.then19_crit_edge

if.then12.if.then19_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.then15:                                        ; preds = %if.then12
  %render_job_list.i = getelementptr i8, ptr %work, i32 -188
  %6 = ptrtoint ptr %render_job_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %render_job_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %render_job_list.i
  br i1 %cmp.i.not.i, label %if.then15.if.else_crit_edge, label %if.end17

if.then15.if.else_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.end17:                                         ; preds = %if.then15
  %prev.i = getelementptr i8, ptr %work, i32 -184
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %9, i32 -60
  %tobool18.not = icmp eq ptr %add.ptr.i74, null
  br i1 %tobool18.not, label %if.end17.if.else_crit_edge, label %if.end17.if.then19_crit_edge

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.then12.if.then19_crit_edge
  %10 = phi ptr [ %9, %if.end17.if.then19_crit_edge ], [ %5, %if.then12.if.then19_crit_edge ]
  %bin_slots = getelementptr i8, ptr %10, i32 52
  %11 = ptrtoint ptr %bin_slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bin_slots, align 8
  %or = or i32 %12, %3
  store i32 %or, ptr %bin_slots, align 8
  br label %if.end23

if.else:                                          ; preds = %if.end17.if.else_crit_edge, %if.then15.if.else_crit_edge
  %neg = xor i32 %3, -1
  %bin_alloc_used = getelementptr i8, ptr %work, i32 -12
  %13 = ptrtoint ptr %bin_alloc_used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bin_alloc_used, align 8
  %and = and i32 %14, %neg
  store i32 %and, ptr %bin_alloc_used, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19, %do.body4.if.end23_crit_edge
  %shl = shl nuw i32 1, %call
  %15 = ptrtoint ptr %bin_alloc_overflow to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %bin_alloc_overflow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %paddr, align 8
  %bin_alloc_size = getelementptr i8, ptr %work, i32 -16
  %18 = ptrtoint ptr %bin_alloc_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bin_alloc_size, align 4
  %mul = mul i32 %19, %call
  %add = add i32 %mul, %17
  %20 = tail call i32 @llvm.bswap.i32(i32 %add)
  %v3d = getelementptr i8, ptr %work, i32 -568
  %21 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %v3d, align 4
  %regs = getelementptr inbounds %struct.vc4_v3d, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %24, i32 776
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %20) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %v3d, align 4
  %regs35 = getelementptr inbounds %struct.vc4_v3d, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %regs35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs35, align 4
  %add.ptr36 = getelementptr i8, ptr %31, i32 780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %27) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %v3d, align 4
  %regs41 = getelementptr inbounds %struct.vc4_v3d, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %regs41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs41, align 4
  %add.ptr42 = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 67108864) #4, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %v3d to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %v3d, align 4
  %regs47 = getelementptr inbounds %struct.vc4_v3d, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %regs47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs47, align 4
  %add.ptr48 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 67108864) #4, !srcloc !21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %job_lock, i32 noundef %call8) #4
  br label %complete

complete:                                         ; preds = %if.end23, %if.then2, %entry.complete_crit_edge
  tail call void @mutex_unlock(ptr noundef %bin_bo_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc4_v3d_get_bin_slot(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_move_job_to_render(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_submit_next_bin_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_perfmon_stop(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc4_submit_next_render_job(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_irq.c", i32 59, i32 1}
!2 = !{ptr @render_wait, !1, !"render_wait", i1 false, i1 false}
!3 = !{ptr @vc4_irq_prepare.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/vc4/vc4_irq.c", i32 249, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vc4_irq_prepare.__key.2, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/vc4/vc4_irq.c", i32 250, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/vc4/vc4_irq.c", i32 80, i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2156836394}
!21 = !{i64 7176773}
!22 = !{i64 2156837502}
!23 = !{i64 2156838712}
!24 = !{i64 2156835398}
!25 = !{i64 2156831804}
!26 = !{i64 7177191}
!27 = !{i64 2156832319}
!28 = !{i64 2156832603}
!29 = !{i64 2156833284}
!30 = !{i64 2156839937}
!31 = !{i64 2156841147}
!32 = !{i64 2148573304}
!33 = !{i64 2148487768, i64 2148487800, i64 2148487829, i64 2148487863, i64 2148487894, i64 2148487917}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2149619274}
!36 = !{i64 2156829400}
!37 = !{i64 2156830031}
!38 = !{i64 2156830666}
!39 = !{i64 2156831328}
