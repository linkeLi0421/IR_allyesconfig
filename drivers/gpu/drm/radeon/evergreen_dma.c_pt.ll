; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/evergreen_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/evergreen_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
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
@___asan_gen_.3 = private constant [42 x i8] c"../drivers/gpu/drm/radeon/evergreen_dma.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 126, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 2721, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_dma_fence_ring_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 8
  %gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %1, i32 2
  %2 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr, align 8
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %4 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %6 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %8 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1610612736, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %11 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ptr_mask.i, align 4
  %13 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %13, %12
  store i32 %and.i, ptr %wptr.i, align 4
  %14 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %16 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %17, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %18 = trunc i64 %3 to i32
  %conv = and i32 %18, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i21 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i21, label %if.then.i22, label %radeon_ring_write.exit.radeon_ring_write.exit32_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit32_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit32

if.then.i22:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit32

radeon_ring_write.exit32:                         ; preds = %if.then.i22, %radeon_ring_write.exit.radeon_ring_write.exit32_crit_edge
  %19 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring1.i, align 8
  %21 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wptr.i, align 4
  %inc.i25 = add i32 %22, 1
  store i32 %inc.i25, ptr %wptr.i, align 4
  %arrayidx.i26 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %conv, ptr %arrayidx.i26, align 4
  %24 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ptr_mask.i, align 4
  %26 = load i32, ptr %wptr.i, align 4
  %and.i28 = and i32 %26, %25
  store i32 %and.i28, ptr %wptr.i, align 4
  %27 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count_dw.i, align 4
  %dec.i29 = add i32 %28, -1
  store i32 %dec.i29, ptr %count_dw.i, align 4
  %29 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i31 = add i32 %30, -1
  store i32 %dec4.i31, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv6 = trunc i64 %shr to i32
  %and7 = and i32 %conv6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i29)
  %cmp.i34 = icmp slt i32 %dec.i29, 1
  br i1 %cmp.i34, label %if.then.i35, label %radeon_ring_write.exit32.radeon_ring_write.exit45_crit_edge

radeon_ring_write.exit32.radeon_ring_write.exit45_crit_edge: ; preds = %radeon_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit45

if.then.i35:                                      ; preds = %radeon_ring_write.exit32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit45

radeon_ring_write.exit45:                         ; preds = %if.then.i35, %radeon_ring_write.exit32.radeon_ring_write.exit45_crit_edge
  %31 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ring1.i, align 8
  %33 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wptr.i, align 4
  %inc.i38 = add i32 %34, 1
  store i32 %inc.i38, ptr %wptr.i, align 4
  %arrayidx.i39 = getelementptr i32, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 %and7, ptr %arrayidx.i39, align 4
  %36 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ptr_mask.i, align 4
  %38 = load i32, ptr %wptr.i, align 4
  %and.i41 = and i32 %38, %37
  store i32 %and.i41, ptr %wptr.i, align 4
  %39 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count_dw.i, align 4
  %dec.i42 = add i32 %40, -1
  store i32 %dec.i42, ptr %count_dw.i, align 4
  %41 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i44 = add i32 %42, -1
  store i32 %dec4.i44, ptr %ring_free_dw.i, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %seq, align 8
  %conv8 = trunc i64 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i42)
  %cmp.i47 = icmp slt i32 %dec.i42, 1
  br i1 %cmp.i47, label %if.then.i48, label %radeon_ring_write.exit45.radeon_ring_write.exit58_crit_edge

radeon_ring_write.exit45.radeon_ring_write.exit58_crit_edge: ; preds = %radeon_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit58

if.then.i48:                                      ; preds = %radeon_ring_write.exit45
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit58

radeon_ring_write.exit58:                         ; preds = %if.then.i48, %radeon_ring_write.exit45.radeon_ring_write.exit58_crit_edge
  %45 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ring1.i, align 8
  %47 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wptr.i, align 4
  %inc.i51 = add i32 %48, 1
  store i32 %inc.i51, ptr %wptr.i, align 4
  %arrayidx.i52 = getelementptr i32, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %conv8, ptr %arrayidx.i52, align 4
  %50 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptr_mask.i, align 4
  %52 = load i32, ptr %wptr.i, align 4
  %and.i54 = and i32 %52, %51
  store i32 %and.i54, ptr %wptr.i, align 4
  %53 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count_dw.i, align 4
  %dec.i55 = add i32 %54, -1
  store i32 %dec.i55, ptr %count_dw.i, align 4
  %55 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i57 = add i32 %56, -1
  store i32 %dec4.i57, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i55)
  %cmp.i60 = icmp slt i32 %dec.i55, 1
  br i1 %cmp.i60, label %if.then.i61, label %radeon_ring_write.exit58.radeon_ring_write.exit71_crit_edge

radeon_ring_write.exit58.radeon_ring_write.exit71_crit_edge: ; preds = %radeon_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit71

if.then.i61:                                      ; preds = %radeon_ring_write.exit58
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit71

radeon_ring_write.exit71:                         ; preds = %if.then.i61, %radeon_ring_write.exit58.radeon_ring_write.exit71_crit_edge
  %57 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ring1.i, align 8
  %59 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wptr.i, align 4
  %inc.i64 = add i32 %60, 1
  store i32 %inc.i64, ptr %wptr.i, align 4
  %arrayidx.i65 = getelementptr i32, ptr %58, i32 %60
  %61 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 1879048192, ptr %arrayidx.i65, align 4
  %62 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ptr_mask.i, align 4
  %64 = load i32, ptr %wptr.i, align 4
  %and.i67 = and i32 %64, %63
  store i32 %and.i67, ptr %wptr.i, align 4
  %65 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count_dw.i, align 4
  %dec.i68 = add i32 %66, -1
  store i32 %dec.i68, ptr %count_dw.i, align 4
  %67 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i70 = add i32 %68, -1
  store i32 %dec4.i70, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i68)
  %cmp.i73 = icmp slt i32 %dec.i68, 1
  br i1 %cmp.i73, label %if.then.i74, label %radeon_ring_write.exit71.radeon_ring_write.exit84_crit_edge

radeon_ring_write.exit71.radeon_ring_write.exit84_crit_edge: ; preds = %radeon_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit84

if.then.i74:                                      ; preds = %radeon_ring_write.exit71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit84

radeon_ring_write.exit84:                         ; preds = %if.then.i74, %radeon_ring_write.exit71.radeon_ring_write.exit84_crit_edge
  %69 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ring1.i, align 8
  %71 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wptr.i, align 4
  %inc.i77 = add i32 %72, 1
  store i32 %inc.i77, ptr %wptr.i, align 4
  %arrayidx.i78 = getelementptr i32, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 -1879048192, ptr %arrayidx.i78, align 4
  %74 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ptr_mask.i, align 4
  %76 = load i32, ptr %wptr.i, align 4
  %and.i80 = and i32 %76, %75
  store i32 %and.i80, ptr %wptr.i, align 4
  %77 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i, align 4
  %dec.i81 = add i32 %78, -1
  store i32 %dec.i81, ptr %count_dw.i, align 4
  %79 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i83 = add i32 %80, -1
  store i32 %dec4.i83, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i81)
  %cmp.i86 = icmp slt i32 %dec.i81, 1
  br i1 %cmp.i86, label %if.then.i87, label %radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge

radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge: ; preds = %radeon_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit97

if.then.i87:                                      ; preds = %radeon_ring_write.exit84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit97

radeon_ring_write.exit97:                         ; preds = %if.then.i87, %radeon_ring_write.exit84.radeon_ring_write.exit97_crit_edge
  %81 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ring1.i, align 8
  %83 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %wptr.i, align 4
  %inc.i90 = add i32 %84, 1
  store i32 %inc.i90, ptr %wptr.i, align 4
  %arrayidx.i91 = getelementptr i32, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 988448, ptr %arrayidx.i91, align 4
  %86 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ptr_mask.i, align 4
  %88 = load i32, ptr %wptr.i, align 4
  %and.i93 = and i32 %88, %87
  store i32 %and.i93, ptr %wptr.i, align 4
  %89 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count_dw.i, align 4
  %dec.i94 = add i32 %90, -1
  store i32 %dec.i94, ptr %count_dw.i, align 4
  %91 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i96 = add i32 %92, -1
  store i32 %dec4.i96, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i94)
  %cmp.i99 = icmp slt i32 %dec.i94, 1
  br i1 %cmp.i99, label %if.then.i100, label %radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge

radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge: ; preds = %radeon_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit110

if.then.i100:                                     ; preds = %radeon_ring_write.exit97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit110

radeon_ring_write.exit110:                        ; preds = %if.then.i100, %radeon_ring_write.exit97.radeon_ring_write.exit110_crit_edge
  %93 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ring1.i, align 8
  %95 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wptr.i, align 4
  %inc.i103 = add i32 %96, 1
  store i32 %inc.i103, ptr %wptr.i, align 4
  %arrayidx.i104 = getelementptr i32, ptr %94, i32 %96
  %97 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 1, ptr %arrayidx.i104, align 4
  %98 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr_mask.i, align 4
  %100 = load i32, ptr %wptr.i, align 4
  %and.i106 = and i32 %100, %99
  store i32 %and.i106, ptr %wptr.i, align 4
  %101 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count_dw.i, align 4
  %dec.i107 = add i32 %102, -1
  store i32 %dec.i107, ptr %count_dw.i, align 4
  %103 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i109 = add i32 %104, -1
  store i32 %dec4.i109, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @evergreen_dma_ring_ib_execute(ptr noundef %rdev, ptr nocapture noundef readonly %ib) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ring2 = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 4
  %0 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring2, align 4
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 8, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %wptr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %4 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wptr, align 4
  %add = add i32 %5, 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then
  %next_rptr.0 = phi i32 [ %add, %if.then ], [ %inc, %while.cond.while.cond_crit_edge ]
  %and = and i32 %next_rptr.0, 7
  %cmp.not = icmp eq i32 %and, 5
  %inc = add i32 %next_rptr.0, 1
  br i1 %cmp.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add3 = add i32 %next_rptr.0, 3
  %count_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %6 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp slt i32 %7, 1
  br i1 %cmp.i, label %if.then.i, label %while.end.radeon_ring_write.exit_crit_edge

while.end.radeon_ring_write.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %while.end.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %8 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ring1.i, align 8
  %10 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wptr, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %wptr, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 536870913, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %13 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptr_mask.i, align 4
  %15 = load i32, ptr %wptr, align 4
  %and.i = and i32 %15, %14
  store i32 %and.i, ptr %wptr, align 4
  %16 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %18 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %19, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %next_rptr_gpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 5
  %20 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %next_rptr_gpu_addr, align 8
  %22 = trunc i64 %21 to i32
  %conv = and i32 %22, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i42 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i42, label %if.then.i43, label %radeon_ring_write.exit.radeon_ring_write.exit53_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit53_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit53

if.then.i43:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit53

radeon_ring_write.exit53:                         ; preds = %if.then.i43, %radeon_ring_write.exit.radeon_ring_write.exit53_crit_edge
  %23 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ring1.i, align 8
  %25 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wptr, align 4
  %inc.i46 = add i32 %26, 1
  store i32 %inc.i46, ptr %wptr, align 4
  %arrayidx.i47 = getelementptr i32, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 %conv, ptr %arrayidx.i47, align 4
  %28 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptr_mask.i, align 4
  %30 = load i32, ptr %wptr, align 4
  %and.i49 = and i32 %30, %29
  store i32 %and.i49, ptr %wptr, align 4
  %31 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count_dw.i, align 4
  %dec.i50 = add i32 %32, -1
  store i32 %dec.i50, ptr %count_dw.i, align 4
  %33 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i52 = add i32 %34, -1
  store i32 %dec4.i52, ptr %ring_free_dw.i, align 8
  %35 = ptrtoint ptr %next_rptr_gpu_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %next_rptr_gpu_addr, align 8
  %shr = lshr i64 %36, 32
  %conv7 = trunc i64 %shr to i32
  %and8 = and i32 %conv7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i50)
  %cmp.i55 = icmp slt i32 %dec.i50, 1
  br i1 %cmp.i55, label %if.then.i56, label %radeon_ring_write.exit53.radeon_ring_write.exit66_crit_edge

radeon_ring_write.exit53.radeon_ring_write.exit66_crit_edge: ; preds = %radeon_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit66

if.then.i56:                                      ; preds = %radeon_ring_write.exit53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit66

radeon_ring_write.exit66:                         ; preds = %if.then.i56, %radeon_ring_write.exit53.radeon_ring_write.exit66_crit_edge
  %37 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ring1.i, align 8
  %39 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wptr, align 4
  %inc.i59 = add i32 %40, 1
  store i32 %inc.i59, ptr %wptr, align 4
  %arrayidx.i60 = getelementptr i32, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 %and8, ptr %arrayidx.i60, align 4
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptr_mask.i, align 4
  %44 = load i32, ptr %wptr, align 4
  %and.i62 = and i32 %44, %43
  store i32 %and.i62, ptr %wptr, align 4
  %45 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %count_dw.i, align 4
  %dec.i63 = add i32 %46, -1
  store i32 %dec.i63, ptr %count_dw.i, align 4
  %47 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i65 = add i32 %48, -1
  store i32 %dec4.i65, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i63)
  %cmp.i68 = icmp slt i32 %dec.i63, 1
  br i1 %cmp.i68, label %if.then.i69, label %radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge

radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge: ; preds = %radeon_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit79

if.then.i69:                                      ; preds = %radeon_ring_write.exit66
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit79

radeon_ring_write.exit79:                         ; preds = %if.then.i69, %radeon_ring_write.exit66.radeon_ring_write.exit79_crit_edge
  %49 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ring1.i, align 8
  %51 = ptrtoint ptr %wptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wptr, align 4
  %inc.i72 = add i32 %52, 1
  store i32 %inc.i72, ptr %wptr, align 4
  %arrayidx.i73 = getelementptr i32, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %add3, ptr %arrayidx.i73, align 4
  %54 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptr_mask.i, align 4
  %56 = load i32, ptr %wptr, align 4
  %and.i75 = and i32 %56, %55
  store i32 %and.i75, ptr %wptr, align 4
  %57 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count_dw.i, align 4
  %dec.i76 = add i32 %58, -1
  store i32 %dec.i76, ptr %count_dw.i, align 4
  %59 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i78 = add i32 %60, -1
  store i32 %dec4.i78, ptr %ring_free_dw.i, align 8
  br label %if.end

if.end:                                           ; preds = %radeon_ring_write.exit79, %entry.if.end_crit_edge
  %wptr10 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 7
  %61 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wptr10, align 4
  %and11132 = and i32 %62, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and11132)
  %cmp12.not133 = icmp eq i32 %and11132, 5
  br i1 %cmp12.not133, label %if.end.while.end15_crit_edge, label %while.body14.lr.ph

if.end.while.end15_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end15

while.body14.lr.ph:                               ; preds = %if.end
  %count_dw.i80 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %ring1.i83 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %ptr_mask.i87 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %ring_free_dw.i90 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  br label %while.body14

while.body14:                                     ; preds = %radeon_ring_write.exit92.while.body14_crit_edge, %while.body14.lr.ph
  %63 = ptrtoint ptr %count_dw.i80 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count_dw.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp.i81 = icmp slt i32 %64, 1
  br i1 %cmp.i81, label %if.then.i82, label %while.body14.radeon_ring_write.exit92_crit_edge

while.body14.radeon_ring_write.exit92_crit_edge:  ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit92

if.then.i82:                                      ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit92

radeon_ring_write.exit92:                         ; preds = %if.then.i82, %while.body14.radeon_ring_write.exit92_crit_edge
  %65 = ptrtoint ptr %ring1.i83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ring1.i83, align 8
  %67 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wptr10, align 4
  %inc.i85 = add i32 %68, 1
  store i32 %inc.i85, ptr %wptr10, align 4
  %arrayidx.i86 = getelementptr i32, ptr %66, i32 %68
  %69 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 -268435456, ptr %arrayidx.i86, align 4
  %70 = ptrtoint ptr %ptr_mask.i87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ptr_mask.i87, align 4
  %72 = load i32, ptr %wptr10, align 4
  %and.i88 = and i32 %72, %71
  store i32 %and.i88, ptr %wptr10, align 4
  %73 = ptrtoint ptr %count_dw.i80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count_dw.i80, align 4
  %dec.i89 = add i32 %74, -1
  store i32 %dec.i89, ptr %count_dw.i80, align 4
  %75 = ptrtoint ptr %ring_free_dw.i90 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ring_free_dw.i90, align 8
  %dec4.i91 = add i32 %76, -1
  store i32 %dec4.i91, ptr %ring_free_dw.i90, align 8
  %and11 = and i32 %and.i88, 7
  %cmp12.not = icmp eq i32 %and11, 5
  br i1 %cmp12.not, label %radeon_ring_write.exit92.while.end15_crit_edge, label %radeon_ring_write.exit92.while.body14_crit_edge

radeon_ring_write.exit92.while.body14_crit_edge:  ; preds = %radeon_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body14

radeon_ring_write.exit92.while.end15_crit_edge:   ; preds = %radeon_ring_write.exit92
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end15

while.end15:                                      ; preds = %radeon_ring_write.exit92.while.end15_crit_edge, %if.end.while.end15_crit_edge
  %count_dw.i93 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 11
  %77 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count_dw.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp.i94 = icmp slt i32 %78, 1
  br i1 %cmp.i94, label %if.then.i95, label %while.end15.radeon_ring_write.exit105_crit_edge

while.end15.radeon_ring_write.exit105_crit_edge:  ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit105

if.then.i95:                                      ; preds = %while.end15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit105

radeon_ring_write.exit105:                        ; preds = %if.then.i95, %while.end15.radeon_ring_write.exit105_crit_edge
  %ring1.i96 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 2
  %79 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ring1.i96, align 8
  %81 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %wptr10, align 4
  %inc.i98 = add i32 %82, 1
  store i32 %inc.i98, ptr %wptr10, align 4
  %arrayidx.i99 = getelementptr i32, ptr %80, i32 %82
  %83 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile i32 1073741824, ptr %arrayidx.i99, align 4
  %ptr_mask.i100 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 16
  %84 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ptr_mask.i100, align 4
  %86 = load i32, ptr %wptr10, align 4
  %and.i101 = and i32 %86, %85
  store i32 %and.i101, ptr %wptr10, align 4
  %87 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count_dw.i93, align 4
  %dec.i102 = add i32 %88, -1
  store i32 %dec.i102, ptr %count_dw.i93, align 4
  %ring_free_dw.i103 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %1, i32 10
  %89 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i104 = add i32 %90, -1
  store i32 %dec4.i104, ptr %ring_free_dw.i103, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 2
  %91 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %gpu_addr, align 8
  %93 = trunc i64 %92 to i32
  %conv17 = and i32 %93, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i102)
  %cmp.i107 = icmp slt i32 %dec.i102, 1
  br i1 %cmp.i107, label %if.then.i108, label %radeon_ring_write.exit105.radeon_ring_write.exit118_crit_edge

radeon_ring_write.exit105.radeon_ring_write.exit118_crit_edge: ; preds = %radeon_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit118

if.then.i108:                                     ; preds = %radeon_ring_write.exit105
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit118

radeon_ring_write.exit118:                        ; preds = %if.then.i108, %radeon_ring_write.exit105.radeon_ring_write.exit118_crit_edge
  %94 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ring1.i96, align 8
  %96 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wptr10, align 4
  %inc.i111 = add i32 %97, 1
  store i32 %inc.i111, ptr %wptr10, align 4
  %arrayidx.i112 = getelementptr i32, ptr %95, i32 %97
  %98 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 %conv17, ptr %arrayidx.i112, align 4
  %99 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ptr_mask.i100, align 4
  %101 = load i32, ptr %wptr10, align 4
  %and.i114 = and i32 %101, %100
  store i32 %and.i114, ptr %wptr10, align 4
  %102 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %count_dw.i93, align 4
  %dec.i115 = add i32 %103, -1
  store i32 %dec.i115, ptr %count_dw.i93, align 4
  %104 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i117 = add i32 %105, -1
  store i32 %dec4.i117, ptr %ring_free_dw.i103, align 8
  %length_dw = getelementptr inbounds %struct.radeon_ib, ptr %ib, i32 0, i32 1
  %106 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length_dw, align 4
  %108 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %gpu_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i115)
  %cmp.i120 = icmp slt i32 %dec.i115, 1
  br i1 %cmp.i120, label %if.then.i121, label %radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge

radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge: ; preds = %radeon_ring_write.exit118
  call void @__sanitizer_cov_trace_pc() #6
  br label %radeon_ring_write.exit131

if.then.i121:                                     ; preds = %radeon_ring_write.exit118
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %radeon_ring_write.exit131

radeon_ring_write.exit131:                        ; preds = %if.then.i121, %radeon_ring_write.exit118.radeon_ring_write.exit131_crit_edge
  %shl = shl i32 %107, 12
  %shr19 = lshr i64 %109, 32
  %conv21 = trunc i64 %shr19 to i32
  %and22 = and i32 %conv21, 255
  %or = or i32 %and22, %shl
  %110 = ptrtoint ptr %ring1.i96 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ring1.i96, align 8
  %112 = ptrtoint ptr %wptr10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wptr10, align 4
  %inc.i124 = add i32 %113, 1
  store i32 %inc.i124, ptr %wptr10, align 4
  %arrayidx.i125 = getelementptr i32, ptr %111, i32 %113
  %114 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %or, ptr %arrayidx.i125, align 4
  %115 = ptrtoint ptr %ptr_mask.i100 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ptr_mask.i100, align 4
  %117 = load i32, ptr %wptr10, align 4
  %and.i127 = and i32 %117, %116
  store i32 %and.i127, ptr %wptr10, align 4
  %118 = ptrtoint ptr %count_dw.i93 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %count_dw.i93, align 4
  %dec.i128 = add i32 %119, -1
  store i32 %dec.i128, ptr %count_dw.i93, align 4
  %120 = ptrtoint ptr %ring_free_dw.i103 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ring_free_dw.i103, align 8
  %dec4.i130 = add i32 %121, -1
  store i32 %dec4.i130, ptr %ring_free_dw.i103, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @evergreen_copy_dma(ptr noundef %rdev, i64 noundef %src_offset, i64 noundef %dst_offset, i32 noundef %num_gpu_pages, ptr noundef %resv) local_unnamed_addr #0 align 64 {
entry:
  %fence = alloca ptr, align 4
  %sync = alloca %struct.radeon_sync, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #4
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fence, align 4, !annotation !14
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
  %sub = add nuw nsw i32 %div77, 1048574
  %div2 = udiv i32 %sub, 1048575
  %mul = mul nuw nsw i32 %div2, 5
  %add3 = add nuw nsw i32 %mul, 11
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
  %11 = call i32 @llvm.umin.i32(i32 %size_in_dw.0133, i32 1048575)
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @evergreen_dma_is_lockup(ptr noundef %rdev, ptr noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @evergreen_gpu_check_soft_reset(ptr noundef %rdev) #4
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @radeon_ring_lockup_update(ptr noundef %rdev, ptr noundef %ring) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call zeroext i1 @radeon_ring_test_lockup(ptr noundef %rdev, ptr noundef %ring) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call1, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_gpu_check_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_lockup_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_test_lockup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
!1 = !{!"../drivers/gpu/drm/radeon/evergreen_dma.c", i32 126, i32 3}
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
!13 = !{i8 0, i8 2}
!14 = !{!"auto-init"}
