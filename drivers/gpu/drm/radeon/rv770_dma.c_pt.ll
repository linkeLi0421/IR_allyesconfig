; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv770_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv770_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.radeon_clock = type { %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_mc = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i64, i64 }
%struct.radeon_gart = type { i32, ptr, ptr, i32, i32, i32, ptr, ptr, i8 }
%struct.radeon_mode_info = type { ptr, ptr, i32, i8, [6 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, ptr, i32 }
%struct.radeon_scratch = type { i32, i32, [32 x i8], [32 x i32] }
%struct.radeon_doorbell = type { i32, i32, ptr, i32, [32 x i32] }
%struct.radeon_mman = type { %struct.ttm_device, i8 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.radeon_fence_driver = type { ptr, i32, i64, ptr, [8 x i64], %struct.atomic64_t, i8, i8, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.radeon_irq = type { i8, %struct.spinlock, [8 x %struct.atomic_t], [6 x i8], [6 x %struct.atomic_t], %struct.wait_queue_head, [7 x i8], [7 x i8], %union.radeon_irq_stat_regs, i8 }
%union.radeon_irq_stat_regs = type { %struct.evergreen_irq_stat_regs }
%struct.evergreen_irq_stat_regs = type { [6 x i32], [6 x i32], [6 x i32] }
%struct.radeon_gem = type { %struct.mutex, %struct.list_head }
%struct.radeon_pm = type { %struct.mutex, %struct.rw_semaphore, i32, i32, i32, i8, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, ptr, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i32, i32, [7 x %struct.radeon_pm_profile], i32, ptr, i8, i8, i8, i8, i8, i8, %struct.radeon_dpm }
%union.dfixed = type { i32 }
%struct.radeon_pm_profile = type { i32, i32, i32, i32 }
%struct.radeon_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, [6 x %struct.radeon_vce_state], i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, %struct.radeon_dpm_dynamic_state, %struct.radeon_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, i8, %struct.radeon_dpm_thermal, i32, i32, i32 }
%struct.radeon_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.radeon_dpm_dynamic_state = type { %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_array, %struct.radeon_clock_array, %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits, i32, i32, i16, i16, %struct.radeon_cac_leakage_table, %struct.radeon_phase_shedding_limits_table, ptr, ptr }
%struct.radeon_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.radeon_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.radeon_clock_voltage_dependency_table = type { i32, ptr }
%struct.radeon_clock_array = type { i32, ptr }
%struct.radeon_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.radeon_cac_leakage_table = type { i32, ptr }
%struct.radeon_phase_shedding_limits_table = type { i32, ptr }
%struct.radeon_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.radeon_dpm_thermal = type { %struct.work_struct, i32, i32, i8 }
%struct.radeon_uvd = type { i8, ptr, ptr, i64, i32, [30 x %struct.atomic_t], [30 x ptr], [30 x i32], %struct.delayed_work }
%struct.radeon_vce = type { ptr, i64, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, i32 }
%struct.radeon_wb = type { ptr, ptr, i64, i8, i8 }
%struct.radeon_dummy_page = type { i64, ptr, i32 }
%struct.radeon_surface_reg = type { ptr }
%struct.r600_vram_scratch = type { ptr, ptr, i64 }
%struct.r600_ih = type { ptr, ptr, i32, i32, i64, i32, %struct.atomic_t, i8 }
%struct.radeon_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32 }
%struct.radeon_mec = type { ptr, i64, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.r600_audio = type { i8, [7 x %struct.r600_audio_pin], i32, ptr, ptr, ptr }
%struct.r600_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.radeon_vm_manager = type { [16 x ptr], i32, i32, i64, i8, [16 x i32] }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.94, %struct.anon.95, [8 x ptr], %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103 }
%struct.anon.94 = type { ptr, ptr, ptr }
%struct.anon.95 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }

@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"radeon: moving bo (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rv770_dma.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 61, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 2721, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rv770_copy_dma(ptr noundef %rdev, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %num_gpu_pages, ptr noundef %resv) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %sync = alloca %struct.radeon_sync, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #4
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sync) #4
  %1 = call ptr @memset(ptr %sync, i32 255, i32 52)
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %dma_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %dma_ring_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_ring_index, align 4
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5
  call void @radeon_sync_create(ptr noundef nonnull %sync) #4
  %6 = shl i32 %num_gpu_pages, 10
  %div77 = and i32 %6, 1073740800
  %sub = add nuw nsw i32 %div77, 65534
  %div2 = udiv i32 %sub, 65535
  %mul = mul nuw nsw i32 %div2, 5
  %add3 = add nuw nsw i32 %mul, 8
  %call = call i32 @radeon_ring_lock(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %add3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call) #4
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #4
  %7 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = call i32 @radeon_sync_resv(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %resv, i1 noundef zeroext false) #4
  %idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 19
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %call6 = call i32 @radeon_sync_rings(ptr noundef %rdev, ptr noundef nonnull %sync, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div77)
  %10 = icmp eq i32 %div77, 0
  br i1 %10, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 11
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 2
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 7
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 16
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %5, i32 10
  %umax = call i32 @llvm.umax.i32(i32 %div2, i32 1)
  br label %for.body

for.body:                                         ; preds = %radeon_ring_write.exit129.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %radeon_ring_write.exit129.for.body_crit_edge ]
  %size_in_dw.0133 = phi i32 [ %div77, %for.body.lr.ph ], [ %sub10, %radeon_ring_write.exit129.for.body_crit_edge ]
  %src_offset.addr.0132 = phi i64 [ %src_offset, %for.body.lr.ph ], [ %add24, %radeon_ring_write.exit129.for.body_crit_edge ]
  %dst_offset.addr.0131 = phi i64 [ %dst_offset, %for.body.lr.ph ], [ %add27, %radeon_ring_write.exit129.for.body_crit_edge ]
  %11 = call i32 @llvm.umin.i32(i32 %size_in_dw.0133, i32 65535)
  %sub10 = sub i32 %size_in_dw.0133, %11
  %or = or i32 %11, 805306368
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp slt i32 %13, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.radeon_ring_write.exit_crit_edge

for.body.radeon_ring_write.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %for.body.radeon_ring_write.exit_crit_edge
  %14 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring1.i, align 8
  %16 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %or, ptr %arrayidx.i, align 4
  %19 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask.i, align 4
  %21 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %21, %20
  store i32 %and.i, ptr %wptr.i, align 4
  %22 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %24 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %25, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %26 = trunc i64 %dst_offset.addr.0131 to i32
  %conv = and i32 %26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i79 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i79, label %if.then.i80, label %radeon_ring_write.exit.radeon_ring_write.exit90_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit90_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit90

if.then.i80:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit90

radeon_ring_write.exit90:                         ; preds = %if.then.i80, %radeon_ring_write.exit.radeon_ring_write.exit90_crit_edge
  %27 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring1.i, align 8
  %29 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wptr.i, align 4
  %inc.i83 = add i32 %30, 1
  store i32 %inc.i83, ptr %wptr.i, align 4
  %arrayidx.i84 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %conv, ptr %arrayidx.i84, align 4
  %32 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ptr_mask.i, align 4
  %34 = load i32, ptr %wptr.i, align 4
  %and.i86 = and i32 %34, %33
  store i32 %and.i86, ptr %wptr.i, align 4
  %35 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count_dw.i, align 4
  %dec.i87 = add i32 %36, -1
  store i32 %dec.i87, ptr %count_dw.i, align 4
  %37 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i89 = add i32 %38, -1
  store i32 %dec4.i89, ptr %ring_free_dw.i, align 8
  %39 = trunc i64 %src_offset.addr.0132 to i32
  %conv14 = and i32 %39, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i92 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i92, label %if.then.i93, label %radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge

radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge: ; preds = %radeon_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit103

if.then.i93:                                      ; preds = %radeon_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit103

radeon_ring_write.exit103:                        ; preds = %if.then.i93, %radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge
  %40 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ring1.i, align 8
  %42 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wptr.i, align 4
  %inc.i96 = add i32 %43, 1
  store i32 %inc.i96, ptr %wptr.i, align 4
  %arrayidx.i97 = getelementptr i32, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %conv14, ptr %arrayidx.i97, align 4
  %45 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ptr_mask.i, align 4
  %47 = load i32, ptr %wptr.i, align 4
  %and.i99 = and i32 %47, %46
  store i32 %and.i99, ptr %wptr.i, align 4
  %48 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count_dw.i, align 4
  %dec.i100 = add i32 %49, -1
  store i32 %dec.i100, ptr %count_dw.i, align 4
  %50 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i102 = add i32 %51, -1
  store i32 %dec4.i102, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %dst_offset.addr.0131, 32
  %conv16 = trunc i64 %shr to i32
  %and17 = and i32 %conv16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i100)
  %cmp.i105 = icmp slt i32 %dec.i100, 1
  br i1 %cmp.i105, label %if.then.i106, label %radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge

radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge: ; preds = %radeon_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit116

if.then.i106:                                     ; preds = %radeon_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit116

radeon_ring_write.exit116:                        ; preds = %if.then.i106, %radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge
  %52 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ring1.i, align 8
  %54 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wptr.i, align 4
  %inc.i109 = add i32 %55, 1
  store i32 %inc.i109, ptr %wptr.i, align 4
  %arrayidx.i110 = getelementptr i32, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %and17, ptr %arrayidx.i110, align 4
  %57 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr_mask.i, align 4
  %59 = load i32, ptr %wptr.i, align 4
  %and.i112 = and i32 %59, %58
  store i32 %and.i112, ptr %wptr.i, align 4
  %60 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count_dw.i, align 4
  %dec.i113 = add i32 %61, -1
  store i32 %dec.i113, ptr %count_dw.i, align 4
  %62 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i115 = add i32 %63, -1
  store i32 %dec4.i115, ptr %ring_free_dw.i, align 8
  %shr18 = lshr i64 %src_offset.addr.0132, 32
  %conv20 = trunc i64 %shr18 to i32
  %and21 = and i32 %conv20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i113)
  %cmp.i118 = icmp slt i32 %dec.i113, 1
  br i1 %cmp.i118, label %if.then.i119, label %radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge

radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge: ; preds = %radeon_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit129

if.then.i119:                                     ; preds = %radeon_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit129

radeon_ring_write.exit129:                        ; preds = %if.then.i119, %radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge
  %64 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ring1.i, align 8
  %66 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wptr.i, align 4
  %inc.i122 = add i32 %67, 1
  store i32 %inc.i122, ptr %wptr.i, align 4
  %arrayidx.i123 = getelementptr i32, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %and21, ptr %arrayidx.i123, align 4
  %69 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ptr_mask.i, align 4
  %71 = load i32, ptr %wptr.i, align 4
  %and.i125 = and i32 %71, %70
  store i32 %and.i125, ptr %wptr.i, align 4
  %72 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count_dw.i, align 4
  %dec.i126 = add i32 %73, -1
  store i32 %dec.i126, ptr %count_dw.i, align 4
  %74 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i128 = add i32 %75, -1
  store i32 %dec4.i128, ptr %ring_free_dw.i, align 8
  %mul22 = shl nuw nsw i32 %11, 2
  %conv23 = zext i32 %mul22 to i64
  %add24 = add i64 %src_offset.addr.0132, %conv23
  %add27 = add i64 %dst_offset.addr.0131, %conv23
  %inc = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %radeon_ring_write.exit129.for.end_crit_edge, label %radeon_ring_write.exit129.for.body_crit_edge

radeon_ring_write.exit129.for.body_crit_edge:     ; preds = %radeon_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

radeon_ring_write.exit129.for.end_crit_edge:      ; preds = %radeon_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %radeon_ring_write.exit129.for.end_crit_edge, %if.end.for.end_crit_edge
  %76 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %idx, align 8
  %call29 = call i32 @radeon_fence_emit(ptr noundef %rdev, ptr noundef nonnull %fence, i32 noundef %77) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @radeon_ring_unlock_undo(ptr noundef %rdev, ptr noundef %arrayidx) #4
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef null) #4
  %78 = inttoptr i32 %call29 to ptr
  br label %cleanup

if.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @radeon_ring_unlock_commit(ptr noundef %rdev, ptr noundef %arrayidx, i1 noundef zeroext false) #4
  %79 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fence, align 4
  call void @radeon_sync_free(ptr noundef %rdev, ptr noundef nonnull %sync, ptr noundef %80) #4
  %81 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then31, %if.then
  %retval.0 = phi ptr [ %7, %if.then ], [ %78, %if.then31 ], [ %82, %if.end33 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sync) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_resv(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_rings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_undo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_unlock_commit(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv770_dma.c", i32 61, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
