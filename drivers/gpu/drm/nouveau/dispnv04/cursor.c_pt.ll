; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/cursor.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/cursor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.93, %struct.anon.94, %struct.anon.95, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.93 = type { i32, i8, i32, i32 }
%struct.anon.94 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.101, %struct.anon.102, %struct.anon.104, ptr, %struct.anon.105, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.106, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.118 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.101 = type { ptr, i32, i32, i8 }
%struct.anon.102 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.103] }
%struct.anon.103 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.104 = type { i64, i64 }
%struct.anon.105 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.92 }
%struct.anon.92 = type { ptr, i64 }
%struct.anon.106 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.107, i8 }
%union.anon.107 = type { %struct.anon.111 }
%struct.anon.111 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.113 = type { i32 }
%struct.anon.114 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.115 = type { i16, i16 }
%struct.anon.116 = type { i16, i16, i16, %struct.anon.117, i16 }
%struct.anon.117 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.118 = type { ptr, %struct.mutex, i8 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.119, i32, i32 }
%union.anon.119 = type { %struct.anon.121 }
%struct.anon.121 = type { i16, i16 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nv04_cursor_init(ptr nocapture noundef writeonly %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %set_offset = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %set_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nv04_cursor_set_offset, ptr %set_offset, align 8
  %set_pos = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 3
  %1 = ptrtoint ptr %set_pos to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nv04_cursor_set_pos, ptr %set_pos, align 4
  %hide = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %hide to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @nv04_cursor_hide, ptr %hide, align 8
  %show = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 11, i32 5
  %3 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nv04_cursor_show, ptr %show, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_cursor_set_offset(ptr nocapture noundef readonly %nv_crtc, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nv_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nv_crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %arrayidx = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9
  %shr = lshr i32 %offset, 17
  %10 = trunc i32 %shr to i8
  %conv = or i8 %10, -128
  %arrayidx4 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 48
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx4, align 1
  %12 = lshr i32 %offset, 9
  %13 = trunc i32 %12 to i8
  %conv8 = and i8 %13, -4
  %arrayidx10 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 49
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %arrayidx10, align 1
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %nv_crtc, i32 0, i32 12, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and11 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %17 = or i8 %conv8, 2
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shr17 = lshr i32 %offset, 24
  %conv18 = trunc i32 %shr17 to i8
  %arrayidx20 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %7, i32 0, i32 %9, i32 1, i32 47
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %arrayidx20, align 1
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %nv_crtc, ptr noundef %arrayidx, i32 noundef 48)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %nv_crtc, ptr noundef %arrayidx, i32 noundef 49)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %nv_crtc, ptr noundef %arrayidx, i32 noundef 47)
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %21)
  %cmp = icmp eq i8 %21, 5
  br i1 %cmp, label %if.then23, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then23:                                        ; preds = %if.end
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 8
  %24 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 6816512, i32 6824704
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %26 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then5.i.i, !prof !9

if.then5.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %spec.select.i.i
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  br label %NVReadRAMDAC.exit.i

if.else.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  %conv.i.i = zext i32 %spec.select.i.i to i64
  %call10.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef %conv.i.i) #4
  br label %NVReadRAMDAC.exit.i

NVReadRAMDAC.exit.i:                              ; preds = %if.else.i.i, %if.then5.i.i
  %_data.0.i.i = phi i32 [ %28, %if.then5.i.i ], [ %call10.i.i, %if.else.i.i ]
  %29 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_private.i, align 4
  %map.i6.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3, i32 0, i32 6
  %31 = ptrtoint ptr %map.i6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i6.i, align 8
  %tobool2.not.i7.i = icmp eq ptr %32, null
  br i1 %tobool2.not.i7.i, label %if.else.i11.i, label %do.body.i.i, !prof !9

do.body.i.i:                                      ; preds = %NVReadRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %map.i6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i6.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %34, i32 %spec.select.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %_data.0.i.i) #4, !srcloc !13
  br label %if.end25

if.else.i11.i:                                    ; preds = %NVReadRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i9.i = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 2, i32 3
  %conv.i10.i = zext i32 %spec.select.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i9.i, i32 noundef 4, i64 noundef %conv.i10.i, i32 noundef %_data.0.i.i) #4
  br label %if.end25

if.end25:                                         ; preds = %if.else.i11.i, %do.body.i.i, %if.end.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_cursor_set_pos(ptr nocapture noundef %nv_crtc, i32 noundef %x, i32 noundef %y) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor_saved_x = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 8
  %0 = ptrtoint ptr %cursor_saved_x to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %x, ptr %cursor_saved_x, align 8
  %cursor_saved_y = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 9
  %1 = ptrtoint ptr %cursor_saved_y to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %y, ptr %cursor_saved_y, align 4
  %2 = ptrtoint ptr %nv_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nv_crtc, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %shl = shl i32 %y, 16
  %and3 = and i32 %x, 65535
  %or = or i32 %shl, %and3
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6816512, i32 6824704
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !9

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !13
  br label %NVWriteRAMDAC.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %or) #4
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_cursor_hide(ptr nocapture noundef readonly %nv_crtc, i1 noundef zeroext %update) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nv_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nv_crtc, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  tail call fastcc void @nv_show_cursor(ptr noundef %1, i32 noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv04_cursor_show(ptr nocapture noundef readonly %nv_crtc, i1 noundef zeroext %update) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nv_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nv_crtc, align 8
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %nv_crtc, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 8
  tail call fastcc void @nv_show_cursor(ptr noundef %1, i32 noundef %3, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crtc_wr_cio_state(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %crtcstate, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index1 = getelementptr inbounds %struct.nouveau_crtc, ptr %crtc, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 8
  %arrayidx = getelementptr %struct.nv04_crtc_reg, ptr %crtcstate, i32 0, i32 1, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  %mul6.i = shl i32 %3, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !9

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %index to i8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #4, !srcloc !15
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = sext i32 %add7.i to i64
  %conv8.i = and i32 %index, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef %conv8.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %11, null
  %add27.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !9

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr24.i = getelementptr i8, ptr %11, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %5) #4, !srcloc !15
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %5 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #4
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_show_cursor(ptr nocapture noundef readonly %dev, i32 noundef %head, i1 noundef zeroext %show) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %arrayidx2 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %5, i32 0, i32 %head, i32 1, i32 49
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %8 = and i8 %7, -2
  %masksel = zext i1 %show to i8
  %storemerge = or i8 %8, %masksel
  store i8 %storemerge, ptr %arrayidx2, align 1
  %9 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  %mul6.i = shl i32 %head, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !9

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 49) #4, !srcloc !15
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 49) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %13, null
  %add27.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !9

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr24.i = getelementptr i8, ptr %13, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %storemerge) #4, !srcloc !15
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %storemerge to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #4
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp = icmp eq i8 %15, 5
  br i1 %cmp, label %if.then8, label %NVWriteVgaCrtc.exit.if.end9_crit_edge

NVWriteVgaCrtc.exit.if.end9_crit_edge:            ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %NVWriteVgaCrtc.exit
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i.i = icmp eq i32 %head, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 6816512, i32 6824704
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 0, i32 6
  %18 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then5.i.i, !prof !9

if.then5.i.i:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %spec.select.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  br label %NVReadRAMDAC.exit.i

if.else.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3
  %conv.i.i = zext i32 %spec.select.i.i to i64
  %call10.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef %conv.i.i) #4
  br label %NVReadRAMDAC.exit.i

NVReadRAMDAC.exit.i:                              ; preds = %if.else.i.i, %if.then5.i.i
  %_data.0.i.i = phi i32 [ %20, %if.then5.i.i ], [ %call10.i.i, %if.else.i.i ]
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  %map.i6.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3, i32 0, i32 6
  %23 = ptrtoint ptr %map.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i6.i, align 8
  %tobool2.not.i7.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i7.i, label %if.else.i11.i, label %do.body.i.i, !prof !9

do.body.i.i:                                      ; preds = %NVReadRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %map.i6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i6.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %26, i32 %spec.select.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %_data.0.i.i) #4, !srcloc !13
  br label %if.end9

if.else.i11.i:                                    ; preds = %NVReadRAMDAC.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i9.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3
  %conv.i10.i = zext i32 %spec.select.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i9.i, i32 noundef 4, i64 noundef %conv.i10.i, i32 noundef %_data.0.i.i) #4
  br label %if.end9

if.end9:                                          ; preds = %if.else.i11.i, %do.body.i.i, %NVWriteVgaCrtc.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 5503141}
!11 = !{i64 2157558307}
!12 = !{i64 2157559368}
!13 = !{i64 5502723}
!14 = !{i64 2153043871}
!15 = !{i64 5502526}
