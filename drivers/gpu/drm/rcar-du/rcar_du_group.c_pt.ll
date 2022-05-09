; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_group.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_group.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.88, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.anon.84 = type { i32, ptr }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.88 = type { ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vsp1_du_crc_config = type { i32, i32 }

@rcar_du_group_set_dpad_levels.doflr_values = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 63, i32 16128], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"doflr_values\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_group.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 304, i32 19 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @rcar_du_group_set_dpad_levels.doflr_values], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_group_set_dpad_levels.doflr_values to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_group_read(ptr nocapture noundef readonly %rgrp, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %mmio_offset = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %2 = ptrtoint ptr %mmio_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmio_offset, align 4
  %add = add i32 %3, %reg
  %mmio.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !13
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_group_write(ptr nocapture noundef readonly %rgrp, i32 noundef %reg, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %mmio_offset = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %2 = ptrtoint ptr %mmio_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmio_offset, align 4
  %add = add i32 %3, %reg
  %mmio.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %data) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_group_get(ptr noundef %rgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %use_count = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 6
  %0 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %4 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i.i = add i32 %5, 32
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16806775) #4, !srcloc !16
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp ult i32 %11, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rgrp, align 8
  %14 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i41.i = add i32 %15, 52
  %mmio.i.i42.i = getelementptr inbounds %struct.rcar_du_device, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %mmio.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i42.i, align 8
  %add.ptr.i.i43.i = getelementptr i8, ptr %17, i32 %add.i41.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i43.i, i32 16807287) #4, !srcloc !16
  %18 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rgrp, align 8
  %20 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i45.i = add i32 %21, 56
  %mmio.i.i46.i = getelementptr inbounds %struct.rcar_du_device, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %mmio.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i46.i, align 8
  %add.ptr.i.i47.i = getelementptr i8, ptr %23, i32 %add.i45.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i47.i, i32 16807543) #4, !srcloc !16
  %24 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rgrp, align 8
  %26 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i49.i = add i32 %27, 60
  %mmio.i.i50.i = getelementptr inbounds %struct.rcar_du_device, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %mmio.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i.i50.i, align 8
  %add.ptr.i.i51.i = getelementptr i8, ptr %29, i32 %add.i49.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51.i, i32 30583) #4, !srcloc !16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %30 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rgrp, align 8
  %32 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i53.i = add i32 %33, 224
  %mmio.i.i54.i = getelementptr inbounds %struct.rcar_du_device, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %mmio.i.i54.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i.i54.i, align 8
  %add.ptr.i.i55.i = getelementptr i8, ptr %35, i32 %add.i53.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55.i, i32 16777318) #4, !srcloc !16
  %channels_mask.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 3
  %36 = ptrtoint ptr %channels_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channels_mask.i.i, align 4
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 2004353024, i32 2004353536
  %and2.i.i = shl i32 %37, 10
  %38 = and i32 %and2.i.i, 2048
  %39 = or i32 %spec.select.i.i, %38
  %40 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rgrp, align 8
  %42 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i.i.i = add i32 %43, 232
  %mmio.i.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %41, i32 0, i32 2
  %44 = ptrtoint ptr %mmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %45, i32 %add.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %46 = tail call i32 @llvm.bswap.i32(i32 %39) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %46) #4, !srcloc !16
  %cmms_mask.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 4
  %47 = ptrtoint ptr %cmms_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmms_mask.i, align 8
  %and.i = shl i32 %48, 5
  %49 = and i32 %and.i, 64
  %and2.i = shl i32 %48, 4
  %50 = and i32 %and2.i, 16
  %or.i = or i32 %49, %50
  %or5.i = or i32 %or.i, 2004418560
  %51 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rgrp, align 8
  %53 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i57.i = add i32 %54, 236
  %mmio.i.i58.i = getelementptr inbounds %struct.rcar_du_device, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %mmio.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i58.i, align 8
  %add.ptr.i.i59.i = getelementptr i8, ptr %56, i32 %add.i57.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %57 = tail call i32 @llvm.bswap.i32(i32 %or5.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59.i, i32 %57) #4, !srcloc !16
  %58 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %info.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp8.i = icmp ugt i32 %61, 1
  br i1 %cmp8.i, label %if.then9.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i
  %62 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rgrp, align 8
  %info.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.i.i = icmp ult i32 %67, 3
  %index.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %68 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %index.i.i, align 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp1.i.i = icmp eq i32 %69, 0
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.then.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge

if.then.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_du_group_setup_defr8.exit.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dpad0_source.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %63, i32 0, i32 11
  %70 = ptrtoint ptr %dpad0_source.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dpad0_source.i.i, align 4
  %shl.i.i = shl i32 %71, 4
  %vspd1_sink.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %63, i32 0, i32 13
  %72 = ptrtoint ptr %vspd1_sink.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vspd1_sink.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp5.i.i = icmp eq i32 %73, 2
  %spec.select.v.i.i = select i1 %cmp5.i.i, i32 2005925953, i32 2005925889
  %spec.select.i60.i = or i32 %spec.select.v.i.i, %shl.i.i
  br label %rcar_du_group_setup_defr8.exit.i

if.else.i.i:                                      ; preds = %if.then9.i
  %dpad0_source10.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %63, i32 0, i32 11
  %74 = ptrtoint ptr %dpad0_source10.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dpad0_source10.i.i, align 4
  %div29.i.i = lshr i32 %75, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %div29.i.i)
  %cmp11.i.i = icmp eq i32 %69, %div29.i.i
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.else.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge

if.else.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_du_group_setup_defr8.exit.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl14.i.i = shl i32 %75, 4
  %or15.i.i = or i32 %shl14.i.i, 2005925888
  br label %rcar_du_group_setup_defr8.exit.i

rcar_du_group_setup_defr8.exit.i:                 ; preds = %if.then12.i.i, %if.else.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge, %if.then2.i.i, %if.then.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge
  %defr8.0.i.i = phi i32 [ 2005925889, %if.then.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge ], [ %or15.i.i, %if.then12.i.i ], [ 2005925888, %if.else.i.i.rcar_du_group_setup_defr8.exit.i_crit_edge ], [ %spec.select.i60.i, %if.then2.i.i ]
  %76 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i.i62.i = add i32 %77, 131104
  %mmio.i.i.i63.i = getelementptr inbounds %struct.rcar_du_device, ptr %63, i32 0, i32 2
  %78 = ptrtoint ptr %mmio.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmio.i.i.i63.i, align 8
  %add.ptr.i.i.i64.i = getelementptr i8, ptr %79, i32 %add.i.i62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %80 = tail call i32 @llvm.bswap.i32(i32 %defr8.0.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i64.i, i32 %80) #4, !srcloc !16
  %81 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rgrp, align 8
  %info.i65.i = getelementptr inbounds %struct.rcar_du_device, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %info.i65.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %info.i65.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp.i66.i = icmp ult i32 %86, 3
  br i1 %cmp.i66.i, label %land.lhs.true.i.i, label %if.else.i70.i

land.lhs.true.i.i:                                ; preds = %rcar_du_group_setup_defr8.exit.i
  %87 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %index.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp1.i68.i = icmp eq i32 %88, 0
  br i1 %cmp1.i68.i, label %if.end13.i.i, label %land.lhs.true.i.i.if.end10.i_crit_edge

land.lhs.true.i.i.if.end10.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.else.i70.i:                                    ; preds = %rcar_du_group_setup_defr8.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %86)
  %cmp5.i69.i = icmp eq i32 %86, 3
  br i1 %cmp5.i69.i, label %land.lhs.true6.i.i, label %if.else.i70.i.if.end10.i_crit_edge

if.else.i70.i.if.end10.i_crit_edge:               ; preds = %if.else.i70.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true6.i.i:                               ; preds = %if.else.i70.i
  %num_crtcs7.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 5
  %89 = ptrtoint ptr %num_crtcs7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_crtcs7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp8.i.i = icmp ugt i32 %90, 1
  br i1 %cmp8.i.i, label %if.end13.thread.i.i, label %land.lhs.true6.i.i.if.end10.i_crit_edge

land.lhs.true6.i.i.if.end10.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end13.thread.i.i:                              ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index.i.i, align 8
  %mul.i.i = shl i32 %92, 1
  %arrayidx.i.i = getelementptr %struct.rcar_du_device, ptr %82, i32 0, i32 4, i32 %mul.i.i
  br label %for.body.lr.ph.i.i

if.end13.i.i:                                     ; preds = %land.lhs.true.i.i
  %crtcs.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %82, i32 0, i32 4
  %num_crtcs2.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %82, i32 0, i32 5
  %93 = ptrtoint ptr %num_crtcs2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_crtcs2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i71.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i71.i, label %if.end13.i.i.if.end10.i_crit_edge, label %if.end13.i.i.for.body.lr.ph.i.i_crit_edge

if.end13.i.i.for.body.lr.ph.i.i_crit_edge:        ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph.i.i

if.end13.i.i.if.end10.i_crit_edge:                ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

for.body.lr.ph.i.i:                               ; preds = %if.end13.i.i.for.body.lr.ph.i.i_crit_edge, %if.end13.thread.i.i
  %num_crtcs.087.i.i = phi i32 [ %90, %if.end13.thread.i.i ], [ %94, %if.end13.i.i.for.body.lr.ph.i.i_crit_edge ]
  %rcrtc.086.i.i = phi ptr [ %arrayidx.i.i, %if.end13.thread.i.i ], [ %crtcs.i.i, %if.end13.i.i.for.body.lr.ph.i.i_crit_edge ]
  %lvds_clk_mask.i.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %84, i32 0, i32 8
  %95 = ptrtoint ptr %lvds_clk_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %lvds_clk_mask.i.i, align 4
  %dsi_clk_mask.i.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %84, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %didsr.082.i.i = phi i32 [ 2005925888, %for.body.lr.ph.i.i ], [ %didsr.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.080.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rcrtc.179.i.i = phi ptr [ %rcrtc.086.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %index18.i.i = getelementptr inbounds %struct.rcar_du_crtc, ptr %rcrtc.179.i.i, i32 0, i32 5
  %97 = ptrtoint ptr %index18.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %index18.i.i, align 8
  %shl.i72.i = shl nuw i32 1, %98
  %and.i73.i = and i32 %shl.i72.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool19.not.i.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool19.not.i.i, label %if.else26.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul21.i.i = shl i32 %i.080.i.i, 1
  %add.i74.i = add i32 %mul21.i.i, 8
  %shl22.i.i = shl i32 2, %add.i74.i
  %or25.i.i = or i32 %shl22.i.i, %didsr.082.i.i
  br label %for.inc.i.i

if.else26.i.i:                                    ; preds = %for.body.i.i
  %99 = ptrtoint ptr %dsi_clk_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dsi_clk_mask.i.i, align 4
  %and30.i.i = and i32 %100, %shl.i72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.else26.i.i.for.inc.i.i_crit_edge, label %if.then32.i.i

if.else26.i.i.for.inc.i.i_crit_edge:              ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then32.i.i:                                    ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul33.i.i = shl i32 %i.080.i.i, 1
  %add34.i.i = add i32 %mul33.i.i, 8
  %shl35.i.i = shl i32 2, %add34.i.i
  %or36.i.i = or i32 %shl35.i.i, %didsr.082.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then32.i.i, %if.else26.i.i.for.inc.i.i_crit_edge, %if.then20.i.i
  %didsr.1.i.i = phi i32 [ %or25.i.i, %if.then20.i.i ], [ %or36.i.i, %if.then32.i.i ], [ %didsr.082.i.i, %if.else26.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %i.080.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.rcar_du_crtc, ptr %rcrtc.179.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %num_crtcs.087.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i.i76.i = add i32 %102, 131112
  %mmio.i.i.i77.i = getelementptr inbounds %struct.rcar_du_device, ptr %82, i32 0, i32 2
  %103 = ptrtoint ptr %mmio.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i.i.i77.i, align 8
  %add.ptr.i.i.i78.i = getelementptr i8, ptr %104, i32 %add.i.i76.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %105 = tail call i32 @llvm.bswap.i32(i32 %didsr.1.i.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i78.i, i32 %105) #4, !srcloc !16
  br label %if.end10.i

if.end10.i:                                       ; preds = %for.end.i.i, %if.end13.i.i.if.end10.i_crit_edge, %land.lhs.true6.i.i.if.end10.i_crit_edge, %if.else.i70.i.if.end10.i_crit_edge, %land.lhs.true.i.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %106 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp13.i = icmp ugt i32 %109, 2
  br i1 %cmp13.i, label %if.then14.i, label %if.end10.i.rcar_du_group_setup.exit_crit_edge

if.end10.i.rcar_du_group_setup.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_du_group_setup.exit

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %110 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rgrp, align 8
  %112 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i80.i = add i32 %113, 131128
  %mmio.i.i81.i = getelementptr inbounds %struct.rcar_du_device, ptr %111, i32 0, i32 2
  %114 = ptrtoint ptr %mmio.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mmio.i.i81.i, align 8
  %add.ptr.i.i82.i = getelementptr i8, ptr %115, i32 %add.i80.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82.i, i32 16815479) #4, !srcloc !16
  br label %rcar_du_group_setup.exit

rcar_du_group_setup.exit:                         ; preds = %if.then14.i, %if.end10.i.rcar_du_group_setup.exit_crit_edge
  %116 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rgrp, align 8
  %118 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i84.i = add i32 %119, 69632
  %mmio.i.i85.i = getelementptr inbounds %struct.rcar_du_device, ptr %117, i32 0, i32 2
  %120 = ptrtoint ptr %mmio.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmio.i.i85.i, align 8
  %add.ptr.i.i86.i = getelementptr i8, ptr %121, i32 %add.i84.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.i, i32 16777216) #4, !srcloc !16
  %lock.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %dptsr_planes.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 9
  %122 = ptrtoint ptr %dptsr_planes.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dptsr_planes.i, align 4
  %shl.i = shl i32 %123, 16
  %or17.i = or i32 %shl.i, %123
  %124 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rgrp, align 8
  %126 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i88.i = add i32 %127, 69636
  %mmio.i.i89.i = getelementptr inbounds %struct.rcar_du_device, ptr %125, i32 0, i32 2
  %128 = ptrtoint ptr %mmio.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio.i.i89.i, align 8
  %add.ptr.i.i90.i = getelementptr i8, ptr %129, i32 %add.i88.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %130 = tail call i32 @llvm.bswap.i32(i32 %or17.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i90.i, i32 %130) #4, !srcloc !16
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %done

done:                                             ; preds = %rcar_du_group_setup.exit, %entry.done_crit_edge
  %131 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %use_count, align 8
  %inc = add i32 %132, 1
  store i32 %inc, ptr %use_count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rcar_du_group_put(ptr nocapture noundef %rgrp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %use_count = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 6
  %0 = ptrtoint ptr %use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %use_count, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %use_count, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_group_start_stop(ptr nocapture noundef %rgrp, i1 noundef zeroext %start) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %used_crtcs = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 7
  %0 = ptrtoint ptr %used_crtcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used_crtcs, align 4
  br i1 %start, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc = add i32 %1, 1
  %2 = ptrtoint ptr %used_crtcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %used_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then1:                                         ; preds = %if.then
  %3 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rgrp, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %channels_mask.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channels_mask.i, align 4
  %index.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 8
  %mul.i = shl i32 %10, 1
  %shl.i = shl nuw i32 1, %mul.i
  %and.i = and i32 %shl.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.rcar_du_device, ptr %4, i32 0, i32 4, i32 %mul.i
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %arrayidx.i, i32 noundef 768, i32 noundef 512) #4
  br label %if.end

if.else.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #6
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %11 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmio_offset.i.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 131072) #4, !srcloc !16
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rgrp, align 8
  %info.i11 = getelementptr inbounds %struct.rcar_du_device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %info.i11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info.i11, align 4
  %channels_mask.i12 = getelementptr inbounds %struct.rcar_du_device_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %channels_mask.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channels_mask.i12, align 4
  %index.i13 = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %21 = ptrtoint ptr %index.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i13, align 8
  %mul.i14 = shl i32 %22, 1
  %shl.i15 = shl nuw i32 1, %mul.i14
  %and.i16 = and i32 %shl.i15, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %if.else.i23, label %if.then.i19

if.then.i19:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i18 = getelementptr %struct.rcar_du_device, ptr %16, i32 0, i32 4, i32 %mul.i14
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %arrayidx.i18, i32 noundef 768, i32 noundef 256) #4
  br label %if.end6

if.else.i23:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mmio_offset.i.i20 = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %23 = ptrtoint ptr %mmio_offset.i.i20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mmio_offset.i.i20, align 4
  %mmio.i.i.i21 = getelementptr inbounds %struct.rcar_du_device, ptr %16, i32 0, i32 2
  %25 = ptrtoint ptr %mmio.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i.i21, align 8
  %add.ptr.i.i.i22 = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i22, i32 65536) #4, !srcloc !16
  br label %if.end6

if.else:                                          ; preds = %entry
  %dec = add i32 %1, -1
  %27 = ptrtoint ptr %used_crtcs to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dec, ptr %used_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %if.then4, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then4:                                         ; preds = %if.else
  %28 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rgrp, align 8
  %info.i25 = getelementptr inbounds %struct.rcar_du_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %info.i25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %info.i25, align 4
  %channels_mask.i26 = getelementptr inbounds %struct.rcar_du_device_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %channels_mask.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channels_mask.i26, align 4
  %index.i27 = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %34 = ptrtoint ptr %index.i27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i27, align 8
  %mul.i28 = shl i32 %35, 1
  %shl.i29 = shl nuw i32 1, %mul.i28
  %and.i30 = and i32 %shl.i29, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %if.else.i37, label %if.then.i33

if.then.i33:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i32 = getelementptr %struct.rcar_du_device, ptr %29, i32 0, i32 4, i32 %mul.i28
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %arrayidx.i32, i32 noundef 768, i32 noundef 512) #4
  br label %if.end6

if.else.i37:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %mmio_offset.i.i34 = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %36 = ptrtoint ptr %mmio_offset.i.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mmio_offset.i.i34, align 4
  %mmio.i.i.i35 = getelementptr inbounds %struct.rcar_du_device, ptr %29, i32 0, i32 2
  %38 = ptrtoint ptr %mmio.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i.i35, align 8
  %add.ptr.i.i.i36 = getelementptr i8, ptr %39, i32 %37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i36, i32 131072) #4, !srcloc !16
  br label %if.end6

if.end6:                                          ; preds = %if.else.i37, %if.then.i33, %if.else.if.end6_crit_edge, %if.else.i23, %if.then.i19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_du_group_restart(ptr nocapture noundef %rgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %need_restart = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 12
  %0 = ptrtoint ptr %need_restart to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %need_restart, align 8
  %1 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rgrp, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.i, align 4
  %channels_mask.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channels_mask.i, align 4
  %index.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 8
  %mul.i = shl i32 %8, 1
  %shl.i = shl nuw i32 1, %mul.i
  %and.i = and i32 %shl.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.rcar_du_device, ptr %2, i32 0, i32 4, i32 %mul.i
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %arrayidx.i, i32 noundef 768, i32 noundef 512) #4
  br label %__rcar_du_group_start_stop.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mmio_offset.i.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %9 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mmio_offset.i.i, align 4
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 131072) #4, !srcloc !16
  br label %__rcar_du_group_start_stop.exit

__rcar_du_group_start_stop.exit:                  ; preds = %if.else.i, %if.then.i
  %13 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rgrp, align 8
  %info.i3 = getelementptr inbounds %struct.rcar_du_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %info.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i3, align 4
  %channels_mask.i4 = getelementptr inbounds %struct.rcar_du_device_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %channels_mask.i4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels_mask.i4, align 4
  %19 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index.i, align 8
  %mul.i6 = shl i32 %20, 1
  %shl.i7 = shl nuw i32 1, %mul.i6
  %and.i8 = and i32 %shl.i7, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool.not.i9 = icmp eq i32 %and.i8, 0
  br i1 %tobool.not.i9, label %if.else.i15, label %if.then.i11

if.then.i11:                                      ; preds = %__rcar_du_group_start_stop.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i10 = getelementptr %struct.rcar_du_device, ptr %14, i32 0, i32 4, i32 %mul.i6
  tail call void @rcar_du_crtc_dsysr_clr_set(ptr noundef %arrayidx.i10, i32 noundef 768, i32 noundef 256) #4
  br label %__rcar_du_group_start_stop.exit16

if.else.i15:                                      ; preds = %__rcar_du_group_start_stop.exit
  call void @__sanitizer_cov_trace_pc() #6
  %mmio_offset.i.i12 = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %21 = ptrtoint ptr %mmio_offset.i.i12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmio_offset.i.i12, align 4
  %mmio.i.i.i13 = getelementptr inbounds %struct.rcar_du_device, ptr %14, i32 0, i32 2
  %23 = ptrtoint ptr %mmio.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i.i13, align 8
  %add.ptr.i.i.i14 = getelementptr i8, ptr %24, i32 %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i14, i32 65536) #4, !srcloc !16
  br label %__rcar_du_group_start_stop.exit16

__rcar_du_group_start_stop.exit16:                ; preds = %if.else.i15, %if.then.i11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_set_dpad0_vsp1_routing(ptr nocapture noundef readonly %rcdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3 = icmp eq i32 %3, 2
  br i1 %cmp3, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %num_crtcs = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 5
  %4 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtcs, align 8
  %sub = add i32 %5, 1
  %div20 = lshr i32 %sub, 1
  %sub4 = add nsw i32 %div20, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %sub4, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %mul = shl i32 %cond, 1
  %clock = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 4, i32 %mul, i32 2
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.end.clk_prepare_enable.exit_crit_edge

cond.end.clk_prepare_enable.exit_crit_edge:       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %cond.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8_crit_edge, label %if.then3.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %7) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %cond.end.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %cond.end.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp6 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp6, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end8_crit_edge

clk_prepare_enable.exit.if.end8_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %clk_prepare_enable.exit.if.end8_crit_edge, %if.end.i.if.end8_crit_edge
  %arrayidx = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %cond
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp ult i32 %13, 3
  %index.i = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %cond, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.i = icmp eq i32 %15, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.then.i.rcar_du_group_setup_defr8.exit_crit_edge

if.then.i.rcar_du_group_setup_defr8.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_du_group_setup_defr8.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %dpad0_source.i = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %dpad0_source.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dpad0_source.i, align 4
  %shl.i = shl i32 %17, 4
  %vspd1_sink.i = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 13
  %18 = ptrtoint ptr %vspd1_sink.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vspd1_sink.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp5.i = icmp eq i32 %19, 2
  %spec.select.v.i = select i1 %cmp5.i, i32 2005925953, i32 2005925889
  %spec.select.i = or i32 %spec.select.v.i, %shl.i
  br label %rcar_du_group_setup_defr8.exit

if.else.i:                                        ; preds = %if.end8
  %dpad0_source10.i = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 11
  %20 = ptrtoint ptr %dpad0_source10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dpad0_source10.i, align 4
  %div29.i = lshr i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div29.i)
  %cmp11.i = icmp eq i32 %15, %div29.i
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i.rcar_du_group_setup_defr8.exit_crit_edge

if.else.i.rcar_du_group_setup_defr8.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_du_group_setup_defr8.exit

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl14.i = shl i32 %21, 4
  %or15.i = or i32 %shl14.i, 2005925888
  br label %rcar_du_group_setup_defr8.exit

rcar_du_group_setup_defr8.exit:                   ; preds = %if.then12.i, %if.else.i.rcar_du_group_setup_defr8.exit_crit_edge, %if.then2.i, %if.then.i.rcar_du_group_setup_defr8.exit_crit_edge
  %defr8.0.i = phi i32 [ 2005925889, %if.then.i.rcar_du_group_setup_defr8.exit_crit_edge ], [ %or15.i, %if.then12.i ], [ 2005925888, %if.else.i.rcar_du_group_setup_defr8.exit_crit_edge ], [ %spec.select.i, %if.then2.i ]
  %mmio_offset.i.i = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %cond, i32 1
  %22 = ptrtoint ptr %mmio_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mmio_offset.i.i, align 4
  %add.i.i = add i32 %23, 131104
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %9, i32 0, i32 2
  %24 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %26 = tail call i32 @llvm.bswap.i32(i32 %defr8.0.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %26) #4, !srcloc !16
  %27 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %28) #4
  tail call void @clk_unprepare(ptr noundef %28) #4
  br label %cleanup

cleanup:                                          ; preds = %rcar_du_group_setup_defr8.exit, %clk_prepare_enable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcar_du_group_setup_defr8.exit ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_group_set_routing(ptr nocapture noundef readonly %rgrp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgrp, align 8
  %mmio_offset.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 1
  %2 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mmio_offset.i, align 4
  %add.i = add i32 %3, 69632
  %mmio.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  %7 = and i32 %6, -84
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %dpad1_source = getelementptr inbounds %struct.rcar_du_device, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %dpad1_source to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dpad1_source, align 8
  %index = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 8
  %mul = shl i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul)
  %cmp = icmp eq i32 %10, %mul
  %or1 = or i32 %8, 1358954496
  %dorcr.0 = select i1 %cmp, i32 %8, i32 %or1
  %13 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rgrp, align 8
  %15 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mmio_offset.i, align 4
  %add.i13 = add i32 %16, 69632
  %mmio.i.i14 = getelementptr inbounds %struct.rcar_du_device, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %mmio.i.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i14, align 8
  %add.ptr.i.i15 = getelementptr i8, ptr %18, i32 %add.i13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %dorcr.0) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %19) #4, !srcloc !16
  %20 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rgrp, align 8
  %info.i = getelementptr inbounds %struct.rcar_du_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i = icmp ult i32 %25, 2
  br i1 %cmp.i, label %entry.rcar_du_group_set_dpad_levels.exit_crit_edge, label %for.cond.preheader.i

entry.rcar_du_group_set_dpad_levels.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcar_du_group_set_dpad_levels.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_crtcs.i = getelementptr inbounds %struct.rcar_du_group, ptr %rgrp, i32 0, i32 5
  %26 = ptrtoint ptr %num_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_crtcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp115.not.i = icmp eq i32 %27, 0
  br i1 %cmp115.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 8
  %mul.i = shl i32 %29, 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %doflr.017.i = phi i32 [ 2005925888, %for.body.lr.ph.i ], [ %doflr.1.i, %if.end4.i.for.body.i_crit_edge ]
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %add.i16 = add i32 %i.016.i, %mul.i
  %state.i = getelementptr %struct.rcar_du_device, ptr %21, i32 0, i32 4, i32 %add.i16, i32 0, i32 22
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state.i, align 4
  %outputs.i = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %outputs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %outputs.i, align 4
  %and.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.i, label %for.body.i.if.end4.i_crit_edge

for.body.i.if.end4.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then2.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i = getelementptr [2 x i32], ptr @rcar_du_group_set_dpad_levels.doflr_values, i32 0, i32 %i.016.i
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3.i, align 4
  %or.i = or i32 %35, %doflr.017.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %for.body.i.if.end4.i_crit_edge
  %doflr.1.i = phi i32 [ %doflr.017.i, %for.body.i.if.end4.i_crit_edge ], [ %or.i, %if.then2.i ]
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %if.end4.i.for.end.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %if.end4.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %doflr.0.lcssa.i = phi i32 [ 2005925888, %for.cond.preheader.i.for.end.i_crit_edge ], [ %doflr.1.i, %if.end4.i.for.end.i_crit_edge ]
  %36 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mmio_offset.i, align 4
  %add.i.i = add i32 %37, 131108
  %mmio.i.i.i = getelementptr inbounds %struct.rcar_du_device, ptr %21, i32 0, i32 2
  %38 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %39, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %40 = tail call i32 @llvm.bswap.i32(i32 %doflr.0.lcssa.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %40) #4, !srcloc !16
  br label %rcar_du_group_set_dpad_levels.exit

rcar_du_group_set_dpad_levels.exit:               ; preds = %for.end.i, %entry.rcar_du_group_set_dpad_levels.exit_crit_edge
  %41 = ptrtoint ptr %rgrp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rgrp, align 8
  %call3 = tail call i32 @rcar_du_set_dpad0_vsp1_routing(ptr noundef %42)
  ret i32 %call3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcar_du_crtc_dsysr_clr_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @rcar_du_group_set_dpad_levels.doflr_values, !1, !"doflr_values", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_group.c", i32 304, i32 19}
!2 = distinct !{null, !3, !"dpad_mask", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_group.c", i32 310, i32 19}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 2038256}
!14 = !{i64 2149578605}
!15 = !{i64 2149579960}
!16 = !{i64 2037838}
