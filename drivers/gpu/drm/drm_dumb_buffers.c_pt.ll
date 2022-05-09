; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_dumb_buffers.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dumb_buffers.c"
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
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_mode_map_dumb = type { i32, i32, i64 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_create_dumb(ptr noundef %dev, ptr noundef %args, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %dumb_create = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dumb_create to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumb_create, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %8 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bpp, align 8
  %switch.tableidx = add i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 9
  br i1 %10, label %lor.lhs.false3.cleanup_crit_edge, label %if.end9

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false3
  %sub = add nuw i32 %9, 7
  %div51 = lshr i32 %sub, 3
  %mul52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 %div51)
  %mul.ov = extractvalue { i32, i1 } %mul52, 1
  br i1 %mul.ov, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %mul = mul i32 %div51, %5
  %mul53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 %7)
  %mul.ov54 = extractvalue { i32, i1 } %mul53, 1
  br i1 %mul.ov54, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %mul23 = mul i32 %mul, %7
  %add24 = add i32 %mul23, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add24)
  %cmp25 = icmp ult i32 %add24, 4096
  br i1 %cmp25, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  %handle = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %11 = call ptr @memset(ptr %handle, i32 0, i32 16)
  %12 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver, align 4
  %dumb_create30 = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dumb_create30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dumb_create30, align 4
  %call = tail call i32 %15(ptr noundef %file_priv, ptr noundef %dev, ptr noundef %args) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end27 ], [ -38, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_create_dumb_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %dumb_create.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dumb_create.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumb_create.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.drm_mode_create_dumb.exit_crit_edge, label %if.end.i

entry.drm_mode_create_dumb.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

if.end.i:                                         ; preds = %entry
  %width.i = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.drm_mode_create_dumb.exit_crit_edge, label %lor.lhs.false.i

if.end.i.drm_mode_create_dumb.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.drm_mode_create_dumb.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.drm_mode_create_dumb.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %bpp.i = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %bpp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bpp.i, align 8
  %switch.tableidx = add i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %10 = icmp ult i32 %switch.tableidx, 9
  br i1 %10, label %lor.lhs.false3.i.drm_mode_create_dumb.exit_crit_edge, label %if.end9.i

lor.lhs.false3.i.drm_mode_create_dumb.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

if.end9.i:                                        ; preds = %lor.lhs.false3.i
  %sub.i = add nuw i32 %9, 7
  %div51.i = lshr i32 %sub.i, 3
  %mul52.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 %div51.i) #3
  %mul.ov.i = extractvalue { i32, i1 } %mul52.i, 1
  br i1 %mul.ov.i, label %if.end9.i.drm_mode_create_dumb.exit_crit_edge, label %if.end15.i

if.end9.i.drm_mode_create_dumb.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

if.end15.i:                                       ; preds = %if.end9.i
  %mul.i = mul i32 %div51.i, %5
  %mul53.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 %7) #3
  %mul.ov54.i = extractvalue { i32, i1 } %mul53.i, 1
  br i1 %mul.ov54.i, label %if.end15.i.drm_mode_create_dumb.exit_crit_edge, label %if.end21.i

if.end15.i.drm_mode_create_dumb.exit_crit_edge:   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

if.end21.i:                                       ; preds = %if.end15.i
  %mul23.i = mul i32 %mul.i, %7
  %add24.i = add i32 %mul23.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add24.i)
  %cmp25.i = icmp ult i32 %add24.i, 4096
  br i1 %cmp25.i, label %if.end21.i.drm_mode_create_dumb.exit_crit_edge, label %if.end27.i

if.end21.i.drm_mode_create_dumb.exit_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_create_dumb.exit

if.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  %handle.i = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %data, i32 0, i32 4
  %11 = call ptr @memset(ptr %handle.i, i32 0, i32 16)
  %12 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver.i, align 4
  %dumb_create30.i = getelementptr inbounds %struct.drm_driver, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dumb_create30.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dumb_create30.i, align 4
  %call.i = tail call i32 %15(ptr noundef %file_priv, ptr noundef %dev, ptr noundef %data) #3
  br label %drm_mode_create_dumb.exit

drm_mode_create_dumb.exit:                        ; preds = %if.end27.i, %if.end21.i.drm_mode_create_dumb.exit_crit_edge, %if.end15.i.drm_mode_create_dumb.exit_crit_edge, %if.end9.i.drm_mode_create_dumb.exit_crit_edge, %lor.lhs.false3.i.drm_mode_create_dumb.exit_crit_edge, %lor.lhs.false.i.drm_mode_create_dumb.exit_crit_edge, %if.end.i.drm_mode_create_dumb.exit_crit_edge, %entry.drm_mode_create_dumb.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end27.i ], [ -38, %entry.drm_mode_create_dumb.exit_crit_edge ], [ -22, %lor.lhs.false.i.drm_mode_create_dumb.exit_crit_edge ], [ -22, %if.end.i.drm_mode_create_dumb.exit_crit_edge ], [ -22, %if.end9.i.drm_mode_create_dumb.exit_crit_edge ], [ -22, %if.end15.i.drm_mode_create_dumb.exit_crit_edge ], [ -22, %if.end21.i.drm_mode_create_dumb.exit_crit_edge ], [ -22, %lor.lhs.false3.i.drm_mode_create_dumb.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_mmap_dumb_ioctl(ptr noundef %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %dumb_create = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dumb_create to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumb_create, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %dumb_map_offset = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %dumb_map_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dumb_map_offset, align 4
  %tobool2.not = icmp eq ptr %5, null
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  %offset7 = getelementptr inbounds %struct.drm_mode_map_dumb, ptr %data, i32 0, i32 2
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %5(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %7, ptr noundef %offset7) #3
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call i32 @drm_gem_dumb_map_offset(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %7, ptr noundef %offset7) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call8, %if.else ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_destroy_dumb(ptr noundef %dev, i32 noundef %handle, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %dumb_create = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dumb_create to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dumb_create, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %dumb_destroy = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %dumb_destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dumb_destroy, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 %5(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %handle) #3
  br label %return

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 @drm_gem_dumb_destroy(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %handle) #3
  br label %return

return:                                           ; preds = %if.else, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then3 ], [ %call6, %if.else ], [ -38, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dumb_destroy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_destroy_dumb_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %driver.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i, align 4
  %dumb_create.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dumb_create.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dumb_create.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.drm_mode_destroy_dumb.exit_crit_edge, label %if.end.i

entry.drm_mode_destroy_dumb.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %drm_mode_destroy_dumb.exit

if.end.i:                                         ; preds = %entry
  %dumb_destroy.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %dumb_destroy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dumb_destroy.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 %7(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %1) #3
  br label %drm_mode_destroy_dumb.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call6.i = tail call i32 @drm_gem_dumb_destroy(ptr noundef %file_priv, ptr noundef %dev, i32 noundef %1) #3
  br label %drm_mode_destroy_dumb.exit

drm_mode_destroy_dumb.exit:                       ; preds = %if.else.i, %if.then3.i, %entry.drm_mode_destroy_dumb.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then3.i ], [ %call6.i, %if.else.i ], [ -38, %entry.drm_mode_destroy_dumb.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
