; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/arb.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/arb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.90 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.97, %struct.anon.98, %struct.anon.100, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.102, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.114 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.99] }
%struct.anon.99 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.100 = type { i64, i64 }
%struct.anon.101 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { ptr, i64 }
%struct.anon.102 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.103, i8 }
%union.anon.103 = type { %struct.anon.107 }
%struct.anon.107 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.109 = type { i32 }
%struct.anon.110 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.111 = type { i16, i16 }
%struct.anon.112 = type { i16, i16, i16, %struct.anon.113, i16 }
%struct.anon.113 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr, %struct.mutex, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 416, i64 496]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 576, i64 976]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_calc_arb(ptr noundef %dev, i32 noundef %vclk, i32 noundef %bpp, ptr nocapture noundef writeonly %burst, ptr nocapture noundef writeonly %lwm) local_unnamed_addr #0 align 64 {
entry:
  %type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %device2.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %call3.i = tail call i32 @nouveau_hw_get_clock(ptr noundef %dev, i32 noundef 4) #4
  %call4.i = tail call i32 @nouveau_hw_get_clock(ptr noundef %dev, i32 noundef 1) #4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !9

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %5, i32 1049092
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !11
  br label %if.end.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call11.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i, i32 noundef 4, i64 noundef 1049092) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %_data.0.i = phi i32 [ %6, %if.then.i ], [ %call11.i, %if.else.i ]
  %dev13.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dev13.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13.i, align 4
  %9 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private.i, align 4
  %device.i.i = getelementptr i8, ptr %8, i32 -102
  %11 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device.i.i, align 2
  %13 = and i16 %12, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 1, i32 4
  %14 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i.i = icmp ult i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %13)
  %cmp5.not.i.i = icmp eq i16 %13, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp5.not.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %13)
  %cmp8.not.i.i = icmp eq i16 %13, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp8.not.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %13)
  %cmp11.not.i.i = icmp eq i16 %13, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 true, i1 %cmp11.not.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %13)
  %cmp14.not.i.i = icmp eq i16 %13, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 true, i1 %cmp14.not.i.i
  %16 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %if.else31.i [
    i16 416, label %if.end.i.if.then26.i_crit_edge
    i16 496, label %if.end.i.if.then26.i_crit_edge22
  ]

if.end.i.if.then26.i_crit_edge22:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26.i

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #4
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %type.i, align 4, !annotation !12
  %bus.i = getelementptr i8, ptr %8, i32 -128
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %domain_nr.i.i, align 8
  %call28.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %21, i32 noundef 0, i32 noundef 1) #4
  %call29.i = call i32 @pci_read_config_dword(ptr noundef %call28.i, i32 noundef 124, ptr noundef nonnull %type.i) #4
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  %shr.i = lshr i32 %23, 12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #4
  br label %if.end90.i

if.else31.i:                                      ; preds = %if.end.i
  %24 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i, align 8
  %tobool37.not.i = icmp eq ptr %25, null
  br i1 %tobool37.not.i, label %if.else51.i, label %if.then44.i, !prof !9

if.then44.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr48.i = getelementptr i8, ptr %25, i32 1049088
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !13
  br label %if.end53.i

if.else51.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #6
  %call52.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i, i32 noundef 4, i64 noundef 1049088) #4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else51.i, %if.then44.i
  %_data34.0.i = phi i32 [ %26, %if.then44.i ], [ %call52.i, %if.else51.i ]
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i, align 8
  %tobool62.not.i = icmp eq ptr %28, null
  br i1 %tobool62.not.i, label %if.else76.i, label %if.then69.i, !prof !9

if.then69.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr73.i = getelementptr i8, ptr %28, i32 1052672
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73.i) #4, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !14
  br label %if.end78.i

if.else76.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  %call77.i = tail call i32 @nvif_object_rd(ptr noundef %device2.i, i32 noundef 4, i64 noundef 1052672) #4
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.else76.i, %if.then69.i
  %_data59.0.i = phi i32 [ %29, %if.then69.i ], [ %call77.i, %if.else76.i ]
  %and80.i = and i32 %_data59.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  %cond.i = select i1 %tobool81.not.i, i32 64, i32 128
  %and83.i = and i32 %_data.0.i, 15
  %shr85.i = lshr i32 %_data.0.i, 4
  %and86.i = and i32 %shr85.i, 15
  %shr87.i = lshr i32 %_data.0.i, 31
  %add.i = add nuw nsw i32 %and86.i, %shr87.i
  %phi.bo.i = add nuw nsw i32 %and83.i, 13
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.end78.i, %if.then26.i
  %sim_data.sroa.15.0.i = phi i32 [ %add.i, %if.end78.i ], [ 10, %if.then26.i ]
  %sim_data.sroa.19.0.i = phi i32 [ %phi.bo.i, %if.end78.i ], [ 16, %if.then26.i ]
  %sim_data.sroa.22.0.in.i = phi i32 [ %_data34.0.i, %if.end78.i ], [ %shr.i, %if.then26.i ]
  %sim_data.sroa.25.0.i = phi i32 [ %cond.i, %if.end78.i ], [ 64, %if.then26.i ]
  %30 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp94.i = icmp eq i8 %31, 1
  br i1 %cmp94.i, label %if.then96.i, label %if.else97.i

if.then96.i:                                      ; preds = %if.end90.i
  %div6.i.i = sdiv i32 10000000, %call4.i
  %div9.i.i = sdiv i32 10000000, %vclk
  %mul10.i.i = mul i32 %bpp, %vclk
  %div11.i.i = sdiv i32 %mul10.i.i, 8
  %mul15.i.i = mul nuw nsw i32 %sim_data.sroa.15.0.i, 3000000
  %div16.i.i = sdiv i32 %mul15.i.i, %call3.i
  %add17.i.i = add nsw i32 %div9.i.i, %div6.i.i
  %add18.i.i = add nsw i32 %add17.i.i, %div16.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then96.i
  %mclk_extra.059.i.i = phi i32 [ 3, %if.then96.i ], [ %spec.select58.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %add2.i.i = add i32 %mclk_extra.059.i.i, %sim_data.sroa.19.0.i
  %mul3.i.i = mul i32 %add2.i.i, 1000000
  %div.i.i = sdiv i32 %mul3.i.i, %call3.i
  %add19.i.i = add i32 %add18.i.i, %div.i.i
  %mul20.i.i = mul i32 %add19.i.i, %div11.i.i
  %div21.i.i = sdiv i32 %mul20.i.i, 1000000
  %sub.i.i = add nsw i32 %div21.i.i, -383
  %mul23.i.i = mul i32 %sub.i.i, %vclk
  %div24.i.i = sdiv i32 %mul23.i.i, %call3.i
  %mul25.i.i = mul i32 %div24.i.i, %bpp
  %div26.i.i = sdiv i32 %mul25.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.i.i, i32 %sub.i.i)
  %cmp.i138.i = icmp slt i32 %div26.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 383999999, i32 %mul20.i.i)
  %cmp27.i.i = icmp sgt i32 %mul20.i.i, 383999999
  %or.cond.i139.i = select i1 %cmp.i138.i, i1 %cmp27.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 518999999, i32 %mul20.i.i)
  %cmp28.i.i = icmp sgt i32 %mul20.i.i, 518999999
  %or.cond57.i.i = select i1 %or.cond.i139.i, i1 true, i1 %cmp28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mclk_extra.059.i.i)
  %tobool29.not.i.i = icmp ne i32 %mclk_extra.059.i.i, 0
  %dec.i.i = sext i1 %or.cond57.i.i to i32
  %spec.select58.i.i = add i32 %mclk_extra.059.i.i, %dec.i.i
  %tobool.not.i.i = select i1 %or.cond57.i.i, i1 %tobool29.not.i.i, i1 false
  br i1 %tobool.not.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %nv04_calc_arb.exit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

nv04_calc_arb.exit.i:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = call i32 @llvm.smax.i32(i32 %div21.i.i, i32 383) #4
  %33 = add nuw nsw i32 %32, 1
  br label %nv04_update_arb.exit

if.else97.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #6
  %sim_data.sroa.22.0.i = and i32 %sim_data.sroa.22.0.in.i, 1
  %mul.i.i = mul i32 %sim_data.sroa.25.0.i, %call3.i
  %div.i142.i = sdiv i32 %mul.i.i, 8
  %mul1.i.i = mul i32 %bpp, %vclk
  %div2.i.i = sdiv i32 %mul1.i.i, 8
  %cond.i.i = select i1 %or.cond23.i.i, i32 1024, i32 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sim_data.sroa.22.0.i)
  %cmp.i144.i = icmp eq i32 %sim_data.sroa.22.0.i, 0
  %cond3.i.i = select i1 %cmp.i144.i, i32 2, i32 1
  %mul5.i.i = mul nuw nsw i32 %cond3.i.i, %sim_data.sroa.25.0.i
  %div6.i145164165166.i = lshr exact i32 %mul5.i.i, 5
  %add.i146.i = add nuw nsw i32 %div6.i145164165166.i, 18
  %mul8.i.i = mul nuw nsw i32 %add.i146.i, 1000000
  %div9.i147.i = sdiv i32 %mul8.i.i, %call3.i
  %div12.i.i = sdiv i32 9000000, %call4.i
  %add13.i.i = add nsw i32 %div12.i.i, %div9.i147.i
  %div16.i148.i = sdiv i32 4000000, %vclk
  %add17.i149.i = add nsw i32 %add13.i.i, %div16.i148.i
  %mul18.i.i = shl nuw nsw i32 %sim_data.sroa.15.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bpp)
  %cmp24.i.i = icmp eq i32 %bpp, 32
  %cond25.i.i = select i1 %cmp24.i.i, i32 8, i32 4
  %add22.i.i = add nuw nsw i32 %mul18.i.i, %cond25.i.i
  %add26.i.i = add nuw nsw i32 %add22.i.i, %add.i146.i
  %mul28.i.i = mul nuw nsw i32 %add26.i.i, 1000000
  %div29.i.i = sdiv i32 %mul28.i.i, %call3.i
  %add32.i.i = add nsw i32 %add17.i149.i, 80
  %add33.i.i = add nsw i32 %add32.i.i, %div29.i.i
  %add34.i.i = select i1 %or.cond23.i.i, i32 0, i32 %add33.i.i
  %extra_lat.0.i.i = add nsw i32 %add34.i.i, %div29.i.i
  %add35.i.i = or i32 %cond.i.i, 1
  %mul36.i.i = mul i32 %extra_lat.0.i.i, %div2.i.i
  %div37.neg.i.i = sdiv i32 %mul36.i.i, -1000000
  %sub.i151.i = add nsw i32 %add35.i.i, %div37.neg.i.i
  %div38.i.i = sdiv i32 %mul.i.i, 8000
  %mul39.i.i = mul i32 %sub.i151.i, %div38.i.i
  %sub40.i.i = sub nsw i32 %div.i142.i, %div2.i.i
  %div41.i.i = sdiv i32 %sub40.i.i, 1000
  %div42.i.i = sdiv i32 %mul39.i.i, %div41.i.i
  %mul45.i.i = mul i32 %div.i142.i, 80
  %div46.i.i = sdiv i32 %mul45.i.i, 1000000
  %34 = call i32 @llvm.smin.i32(i32 %div42.i.i, i32 %div46.i.i) #4
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 1024) #4
  %36 = call i32 @llvm.ctlz.i32(i32 %35, i1 true) #4, !range !15
  %sub.i.i.op.i.i.i = xor i32 %36, 31
  %cond75.i.i = shl nuw i32 1, %sub.i.i.op.i.i.i
  %add77.i.i = add nsw i32 %extra_lat.0.i.i, %add17.i149.i
  %mul78.i.i = mul i32 %add77.i.i, %div2.i.i
  %div79.i.i = sdiv i32 %mul78.i.i, 1000000
  %add80.i.i = add nsw i32 %div79.i.i, 1
  %mul83.i.i = mul i32 %add17.i149.i, %div2.i.i
  %div84.i.i = sdiv i32 %mul83.i.i, 1000000
  %mul87.i.i = shl i32 %div2.i.i, %sub.i.i.op.i.i.i
  %div88.i.i = sdiv i32 %mul87.i.i, %div.i142.i
  %add80.neg.i.i = xor i32 %div79.i.i, -1
  %sub82.i.i = add nsw i32 %div84.i.i, %cond.i.i
  %add85.i.i = add nsw i32 %sub82.i.i, %add80.neg.i.i
  %add89.i.i = sub i32 %add85.i.i, %cond75.i.i
  %sub90.i.i = add i32 %add89.i.i, %div88.i.i
  %mul91.i.i = mul i32 %sub90.i.i, 10
  %div92.i.i = sdiv i32 %mul91.i.i, 100
  %add93.i.i = add nsw i32 %add80.i.i, %div92.i.i
  br label %nv04_update_arb.exit

nv04_update_arb.exit:                             ; preds = %if.else97.i, %nv04_calc_arb.exit.i
  %fifo_data.sroa.6.0.i = phi i32 [ 128, %nv04_calc_arb.exit.i ], [ %cond75.i.i, %if.else97.i ]
  %fifo_data.sroa.0.0.i = phi i32 [ %33, %nv04_calc_arb.exit.i ], [ %add93.i.i, %if.else97.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %fifo_data.sroa.6.0.i)
  %tobool.not.i.i.i = icmp ult i32 %fifo_data.sroa.6.0.i, 16
  %shr100.i = ashr i32 %fifo_data.sroa.6.0.i, 4
  %37 = call i32 @llvm.ctlz.i32(i32 %shr100.i, i1 true) #4, !range !15
  %sub.i.op.i.i = xor i32 %37, 31
  %sub.i153.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %38 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub.i153.i, ptr %burst, align 4
  %shr117.i = ashr i32 %fifo_data.sroa.0.0.i, 3
  br label %if.end14

if.else:                                          ; preds = %entry
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %39 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1, align 4
  %device3 = getelementptr i8, ptr %40, i32 -102
  %41 = ptrtoint ptr %device3 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %device3, align 2
  %43 = and i16 %42, -16
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %43, label %if.else13 [
    i16 576, label %if.else.if.then12_crit_edge
    i16 976, label %if.else.if.then12_crit_edge23
  ]

if.else.if.then12_crit_edge23:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.else.if.then12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %if.else.if.then12_crit_edge, %if.else.if.then12_crit_edge23
  %45 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 128, ptr %burst, align 4
  br label %if.end14

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %burst, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12, %nv04_update_arb.exit
  %.sink = phi i32 [ 1152, %if.then12 ], [ 192, %if.else13 ], [ %shr117.i, %nv04_update_arb.exit ]
  %47 = ptrtoint ptr %lwm to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %lwm, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_hw_get_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
!10 = !{i64 5394275}
!11 = !{i64 2157321837}
!12 = !{!"auto-init"}
!13 = !{i64 2157324170}
!14 = !{i64 2157325291}
!15 = !{i32 0, i32 33}
