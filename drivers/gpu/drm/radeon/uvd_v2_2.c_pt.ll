; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/uvd_v2_2.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/uvd_v2_2.c"
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
%struct.radeon_semaphore = type { ptr, i32, i64 }

@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"radeon: writing more dwords to the ring than expected!\0A\00", [40 x i8] zeroinitializer }, align 32
@switch.table.uvd_v2_2_resume = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 16777222, i32 16777221, i32 16777223, i32 16777227, i32 16777226, i32 16777225, i32 16777224, i32 16777224, i32 16777230, i32 16777228, i32 16777228, i32 16777232, i32 16777233, i32 16777234, i32 16777231, i32 16777239, i32 16777236, i32 16777238, i32 16777237, i32 16777238], [48 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [37 x i8] c"../drivers/gpu/drm/radeon/uvd_v2_2.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/radeon/radeon.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 2721, i32 3 }
@___asan_gen_.4 = private unnamed_addr constant [29 x i8] c"switch.table.uvd_v2_2_resume\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.uvd_v2_2_resume], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uvd_v2_2_resume to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvd_v2_2_fence_emit(ptr noundef %rdev, ptr nocapture noundef readonly %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
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
  store volatile i32 15805, ptr %arrayidx.i, align 4
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
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %18 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %seq, align 8
  %conv = trunc i64 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i27 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i27, label %if.then.i28, label %radeon_ring_write.exit.radeon_ring_write.exit38_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit38_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit38

if.then.i28:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit38

radeon_ring_write.exit38:                         ; preds = %if.then.i28, %radeon_ring_write.exit.radeon_ring_write.exit38_crit_edge
  %20 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ring1.i, align 8
  %22 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wptr.i, align 4
  %inc.i31 = add i32 %23, 1
  store i32 %inc.i31, ptr %wptr.i, align 4
  %arrayidx.i32 = getelementptr i32, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %conv, ptr %arrayidx.i32, align 4
  %25 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ptr_mask.i, align 4
  %27 = load i32, ptr %wptr.i, align 4
  %and.i34 = and i32 %27, %26
  store i32 %and.i34, ptr %wptr.i, align 4
  %28 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count_dw.i, align 4
  %dec.i35 = add i32 %29, -1
  store i32 %dec.i35, ptr %count_dw.i, align 4
  %30 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i37 = add i32 %31, -1
  store i32 %dec4.i37, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i35)
  %cmp.i40 = icmp slt i32 %dec.i35, 1
  br i1 %cmp.i40, label %if.then.i41, label %radeon_ring_write.exit38.radeon_ring_write.exit51_crit_edge

radeon_ring_write.exit38.radeon_ring_write.exit51_crit_edge: ; preds = %radeon_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit51

if.then.i41:                                      ; preds = %radeon_ring_write.exit38
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit51

radeon_ring_write.exit51:                         ; preds = %if.then.i41, %radeon_ring_write.exit38.radeon_ring_write.exit51_crit_edge
  %32 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring1.i, align 8
  %34 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wptr.i, align 4
  %inc.i44 = add i32 %35, 1
  store i32 %inc.i44, ptr %wptr.i, align 4
  %arrayidx.i45 = getelementptr i32, ptr %33, i32 %35
  %36 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 15300, ptr %arrayidx.i45, align 4
  %37 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ptr_mask.i, align 4
  %39 = load i32, ptr %wptr.i, align 4
  %and.i47 = and i32 %39, %38
  store i32 %and.i47, ptr %wptr.i, align 4
  %40 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count_dw.i, align 4
  %dec.i48 = add i32 %41, -1
  store i32 %dec.i48, ptr %count_dw.i, align 4
  %42 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i50 = add i32 %43, -1
  store i32 %dec4.i50, ptr %ring_free_dw.i, align 8
  %conv5 = trunc i64 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i48)
  %cmp.i53 = icmp slt i32 %dec.i48, 1
  br i1 %cmp.i53, label %if.then.i54, label %radeon_ring_write.exit51.radeon_ring_write.exit64_crit_edge

radeon_ring_write.exit51.radeon_ring_write.exit64_crit_edge: ; preds = %radeon_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit64

if.then.i54:                                      ; preds = %radeon_ring_write.exit51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit64

radeon_ring_write.exit64:                         ; preds = %if.then.i54, %radeon_ring_write.exit51.radeon_ring_write.exit64_crit_edge
  %44 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ring1.i, align 8
  %46 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wptr.i, align 4
  %inc.i57 = add i32 %47, 1
  store i32 %inc.i57, ptr %wptr.i, align 4
  %arrayidx.i58 = getelementptr i32, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %conv5, ptr %arrayidx.i58, align 4
  %49 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ptr_mask.i, align 4
  %51 = load i32, ptr %wptr.i, align 4
  %and.i60 = and i32 %51, %50
  store i32 %and.i60, ptr %wptr.i, align 4
  %52 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count_dw.i, align 4
  %dec.i61 = add i32 %53, -1
  store i32 %dec.i61, ptr %count_dw.i, align 4
  %54 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i63 = add i32 %55, -1
  store i32 %dec4.i63, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i61)
  %cmp.i66 = icmp slt i32 %dec.i61, 1
  br i1 %cmp.i66, label %if.then.i67, label %radeon_ring_write.exit64.radeon_ring_write.exit77_crit_edge

radeon_ring_write.exit64.radeon_ring_write.exit77_crit_edge: ; preds = %radeon_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit77

if.then.i67:                                      ; preds = %radeon_ring_write.exit64
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit77

radeon_ring_write.exit77:                         ; preds = %if.then.i67, %radeon_ring_write.exit64.radeon_ring_write.exit77_crit_edge
  %56 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ring1.i, align 8
  %58 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wptr.i, align 4
  %inc.i70 = add i32 %59, 1
  store i32 %inc.i70, ptr %wptr.i, align 4
  %arrayidx.i71 = getelementptr i32, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 15301, ptr %arrayidx.i71, align 4
  %61 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ptr_mask.i, align 4
  %63 = load i32, ptr %wptr.i, align 4
  %and.i73 = and i32 %63, %62
  store i32 %and.i73, ptr %wptr.i, align 4
  %64 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count_dw.i, align 4
  %dec.i74 = add i32 %65, -1
  store i32 %dec.i74, ptr %count_dw.i, align 4
  %66 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i76 = add i32 %67, -1
  store i32 %dec4.i76, ptr %ring_free_dw.i, align 8
  %shr = lshr i64 %3, 32
  %conv7 = trunc i64 %shr to i32
  %and8 = and i32 %conv7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i74)
  %cmp.i79 = icmp slt i32 %dec.i74, 1
  br i1 %cmp.i79, label %if.then.i80, label %radeon_ring_write.exit77.radeon_ring_write.exit90_crit_edge

radeon_ring_write.exit77.radeon_ring_write.exit90_crit_edge: ; preds = %radeon_ring_write.exit77
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit90

if.then.i80:                                      ; preds = %radeon_ring_write.exit77
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit90

radeon_ring_write.exit90:                         ; preds = %if.then.i80, %radeon_ring_write.exit77.radeon_ring_write.exit90_crit_edge
  %68 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ring1.i, align 8
  %70 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wptr.i, align 4
  %inc.i83 = add i32 %71, 1
  store i32 %inc.i83, ptr %wptr.i, align 4
  %arrayidx.i84 = getelementptr i32, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %and8, ptr %arrayidx.i84, align 4
  %73 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ptr_mask.i, align 4
  %75 = load i32, ptr %wptr.i, align 4
  %and.i86 = and i32 %75, %74
  store i32 %and.i86, ptr %wptr.i, align 4
  %76 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count_dw.i, align 4
  %dec.i87 = add i32 %77, -1
  store i32 %dec.i87, ptr %count_dw.i, align 4
  %78 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i89 = add i32 %79, -1
  store i32 %dec4.i89, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i87)
  %cmp.i92 = icmp slt i32 %dec.i87, 1
  br i1 %cmp.i92, label %if.then.i93, label %radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge

radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge: ; preds = %radeon_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit103

if.then.i93:                                      ; preds = %radeon_ring_write.exit90
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit103

radeon_ring_write.exit103:                        ; preds = %if.then.i93, %radeon_ring_write.exit90.radeon_ring_write.exit103_crit_edge
  %80 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ring1.i, align 8
  %82 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %wptr.i, align 4
  %inc.i96 = add i32 %83, 1
  store i32 %inc.i96, ptr %wptr.i, align 4
  %arrayidx.i97 = getelementptr i32, ptr %81, i32 %83
  %84 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 15299, ptr %arrayidx.i97, align 4
  %85 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ptr_mask.i, align 4
  %87 = load i32, ptr %wptr.i, align 4
  %and.i99 = and i32 %87, %86
  store i32 %and.i99, ptr %wptr.i, align 4
  %88 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %count_dw.i, align 4
  %dec.i100 = add i32 %89, -1
  store i32 %dec.i100, ptr %count_dw.i, align 4
  %90 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i102 = add i32 %91, -1
  store i32 %dec4.i102, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i100)
  %cmp.i105 = icmp slt i32 %dec.i100, 1
  br i1 %cmp.i105, label %if.then.i106, label %radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge

radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge: ; preds = %radeon_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit116

if.then.i106:                                     ; preds = %radeon_ring_write.exit103
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit116

radeon_ring_write.exit116:                        ; preds = %if.then.i106, %radeon_ring_write.exit103.radeon_ring_write.exit116_crit_edge
  %92 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ring1.i, align 8
  %94 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %wptr.i, align 4
  %inc.i109 = add i32 %95, 1
  store i32 %inc.i109, ptr %wptr.i, align 4
  %arrayidx.i110 = getelementptr i32, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 0, ptr %arrayidx.i110, align 4
  %97 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptr_mask.i, align 4
  %99 = load i32, ptr %wptr.i, align 4
  %and.i112 = and i32 %99, %98
  store i32 %and.i112, ptr %wptr.i, align 4
  %100 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count_dw.i, align 4
  %dec.i113 = add i32 %101, -1
  store i32 %dec.i113, ptr %count_dw.i, align 4
  %102 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i115 = add i32 %103, -1
  store i32 %dec4.i115, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i113)
  %cmp.i118 = icmp slt i32 %dec.i113, 1
  br i1 %cmp.i118, label %if.then.i119, label %radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge

radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge: ; preds = %radeon_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit129

if.then.i119:                                     ; preds = %radeon_ring_write.exit116
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit129

radeon_ring_write.exit129:                        ; preds = %if.then.i119, %radeon_ring_write.exit116.radeon_ring_write.exit129_crit_edge
  %104 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ring1.i, align 8
  %106 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %wptr.i, align 4
  %inc.i122 = add i32 %107, 1
  store i32 %inc.i122, ptr %wptr.i, align 4
  %arrayidx.i123 = getelementptr i32, ptr %105, i32 %107
  %108 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile i32 15300, ptr %arrayidx.i123, align 4
  %109 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ptr_mask.i, align 4
  %111 = load i32, ptr %wptr.i, align 4
  %and.i125 = and i32 %111, %110
  store i32 %and.i125, ptr %wptr.i, align 4
  %112 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %count_dw.i, align 4
  %dec.i126 = add i32 %113, -1
  store i32 %dec.i126, ptr %count_dw.i, align 4
  %114 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i128 = add i32 %115, -1
  store i32 %dec4.i128, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i126)
  %cmp.i131 = icmp slt i32 %dec.i126, 1
  br i1 %cmp.i131, label %if.then.i132, label %radeon_ring_write.exit129.radeon_ring_write.exit142_crit_edge

radeon_ring_write.exit129.radeon_ring_write.exit142_crit_edge: ; preds = %radeon_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit142

if.then.i132:                                     ; preds = %radeon_ring_write.exit129
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit142

radeon_ring_write.exit142:                        ; preds = %if.then.i132, %radeon_ring_write.exit129.radeon_ring_write.exit142_crit_edge
  %116 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ring1.i, align 8
  %118 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %wptr.i, align 4
  %inc.i135 = add i32 %119, 1
  store i32 %inc.i135, ptr %wptr.i, align 4
  %arrayidx.i136 = getelementptr i32, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile i32 0, ptr %arrayidx.i136, align 4
  %121 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ptr_mask.i, align 4
  %123 = load i32, ptr %wptr.i, align 4
  %and.i138 = and i32 %123, %122
  store i32 %and.i138, ptr %wptr.i, align 4
  %124 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %count_dw.i, align 4
  %dec.i139 = add i32 %125, -1
  store i32 %dec.i139, ptr %count_dw.i, align 4
  %126 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i141 = add i32 %127, -1
  store i32 %dec4.i141, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i139)
  %cmp.i144 = icmp slt i32 %dec.i139, 1
  br i1 %cmp.i144, label %if.then.i145, label %radeon_ring_write.exit142.radeon_ring_write.exit155_crit_edge

radeon_ring_write.exit142.radeon_ring_write.exit155_crit_edge: ; preds = %radeon_ring_write.exit142
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit155

if.then.i145:                                     ; preds = %radeon_ring_write.exit142
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit155

radeon_ring_write.exit155:                        ; preds = %if.then.i145, %radeon_ring_write.exit142.radeon_ring_write.exit155_crit_edge
  %128 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ring1.i, align 8
  %130 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %wptr.i, align 4
  %inc.i148 = add i32 %131, 1
  store i32 %inc.i148, ptr %wptr.i, align 4
  %arrayidx.i149 = getelementptr i32, ptr %129, i32 %131
  %132 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile i32 15301, ptr %arrayidx.i149, align 4
  %133 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ptr_mask.i, align 4
  %135 = load i32, ptr %wptr.i, align 4
  %and.i151 = and i32 %135, %134
  store i32 %and.i151, ptr %wptr.i, align 4
  %136 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %count_dw.i, align 4
  %dec.i152 = add i32 %137, -1
  store i32 %dec.i152, ptr %count_dw.i, align 4
  %138 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i154 = add i32 %139, -1
  store i32 %dec4.i154, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i152)
  %cmp.i157 = icmp slt i32 %dec.i152, 1
  br i1 %cmp.i157, label %if.then.i158, label %radeon_ring_write.exit155.radeon_ring_write.exit168_crit_edge

radeon_ring_write.exit155.radeon_ring_write.exit168_crit_edge: ; preds = %radeon_ring_write.exit155
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit168

if.then.i158:                                     ; preds = %radeon_ring_write.exit155
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit168

radeon_ring_write.exit168:                        ; preds = %if.then.i158, %radeon_ring_write.exit155.radeon_ring_write.exit168_crit_edge
  %140 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ring1.i, align 8
  %142 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %wptr.i, align 4
  %inc.i161 = add i32 %143, 1
  store i32 %inc.i161, ptr %wptr.i, align 4
  %arrayidx.i162 = getelementptr i32, ptr %141, i32 %143
  %144 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile i32 0, ptr %arrayidx.i162, align 4
  %145 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ptr_mask.i, align 4
  %147 = load i32, ptr %wptr.i, align 4
  %and.i164 = and i32 %147, %146
  store i32 %and.i164, ptr %wptr.i, align 4
  %148 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %count_dw.i, align 4
  %dec.i165 = add i32 %149, -1
  store i32 %dec.i165, ptr %count_dw.i, align 4
  %150 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i167 = add i32 %151, -1
  store i32 %dec4.i167, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i165)
  %cmp.i170 = icmp slt i32 %dec.i165, 1
  br i1 %cmp.i170, label %if.then.i171, label %radeon_ring_write.exit168.radeon_ring_write.exit181_crit_edge

radeon_ring_write.exit168.radeon_ring_write.exit181_crit_edge: ; preds = %radeon_ring_write.exit168
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit181

if.then.i171:                                     ; preds = %radeon_ring_write.exit168
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit181

radeon_ring_write.exit181:                        ; preds = %if.then.i171, %radeon_ring_write.exit168.radeon_ring_write.exit181_crit_edge
  %152 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ring1.i, align 8
  %154 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %wptr.i, align 4
  %inc.i174 = add i32 %155, 1
  store i32 %inc.i174, ptr %wptr.i, align 4
  %arrayidx.i175 = getelementptr i32, ptr %153, i32 %155
  %156 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 15299, ptr %arrayidx.i175, align 4
  %157 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %ptr_mask.i, align 4
  %159 = load i32, ptr %wptr.i, align 4
  %and.i177 = and i32 %159, %158
  store i32 %and.i177, ptr %wptr.i, align 4
  %160 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %count_dw.i, align 4
  %dec.i178 = add i32 %161, -1
  store i32 %dec.i178, ptr %count_dw.i, align 4
  %162 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i180 = add i32 %163, -1
  store i32 %dec4.i180, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i178)
  %cmp.i183 = icmp slt i32 %dec.i178, 1
  br i1 %cmp.i183, label %if.then.i184, label %radeon_ring_write.exit181.radeon_ring_write.exit194_crit_edge

radeon_ring_write.exit181.radeon_ring_write.exit194_crit_edge: ; preds = %radeon_ring_write.exit181
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit194

if.then.i184:                                     ; preds = %radeon_ring_write.exit181
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit194

radeon_ring_write.exit194:                        ; preds = %if.then.i184, %radeon_ring_write.exit181.radeon_ring_write.exit194_crit_edge
  %164 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ring1.i, align 8
  %166 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %wptr.i, align 4
  %inc.i187 = add i32 %167, 1
  store i32 %inc.i187, ptr %wptr.i, align 4
  %arrayidx.i188 = getelementptr i32, ptr %165, i32 %167
  %168 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 2, ptr %arrayidx.i188, align 4
  %169 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ptr_mask.i, align 4
  %171 = load i32, ptr %wptr.i, align 4
  %and.i190 = and i32 %171, %170
  store i32 %and.i190, ptr %wptr.i, align 4
  %172 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %count_dw.i, align 4
  %dec.i191 = add i32 %173, -1
  store i32 %dec.i191, ptr %count_dw.i, align 4
  %174 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i193 = add i32 %175, -1
  store i32 %dec4.i193, ptr %ring_free_dw.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @uvd_v2_2_semaphore_emit(ptr nocapture noundef readnone %rdev, ptr noundef %ring, ptr nocapture noundef readonly %semaphore, i1 noundef zeroext %emit_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gpu_addr = getelementptr inbounds %struct.radeon_semaphore, ptr %semaphore, i32 0, i32 2
  %0 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %gpu_addr, align 8
  %count_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 11
  %2 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count_dw.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %if.then.i, label %entry.radeon_ring_write.exit_crit_edge

entry.radeon_ring_write.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit

radeon_ring_write.exit:                           ; preds = %if.then.i, %entry.radeon_ring_write.exit_crit_edge
  %ring1.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring1.i, align 8
  %wptr.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 7
  %6 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wptr.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %wptr.i, align 4
  %arrayidx.i = getelementptr i32, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 15296, ptr %arrayidx.i, align 4
  %ptr_mask.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 16
  %9 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ptr_mask.i, align 4
  %11 = load i32, ptr %wptr.i, align 4
  %and.i = and i32 %11, %10
  store i32 %and.i, ptr %wptr.i, align 4
  %12 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count_dw.i, align 4
  %dec.i = add i32 %13, -1
  store i32 %dec.i, ptr %count_dw.i, align 4
  %ring_free_dw.i = getelementptr inbounds %struct.radeon_ring, ptr %ring, i32 0, i32 10
  %14 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i = add i32 %15, -1
  store i32 %dec4.i, ptr %ring_free_dw.i, align 8
  %16 = trunc i64 %1 to i32
  %17 = lshr i32 %16, 3
  %conv = and i32 %17, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp.i12 = icmp slt i32 %dec.i, 1
  br i1 %cmp.i12, label %if.then.i13, label %radeon_ring_write.exit.radeon_ring_write.exit23_crit_edge

radeon_ring_write.exit.radeon_ring_write.exit23_crit_edge: ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit23

if.then.i13:                                      ; preds = %radeon_ring_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit23

radeon_ring_write.exit23:                         ; preds = %if.then.i13, %radeon_ring_write.exit.radeon_ring_write.exit23_crit_edge
  %18 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ring1.i, align 8
  %20 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wptr.i, align 4
  %inc.i16 = add i32 %21, 1
  store i32 %inc.i16, ptr %wptr.i, align 4
  %arrayidx.i17 = getelementptr i32, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %conv, ptr %arrayidx.i17, align 4
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %25 = load i32, ptr %wptr.i, align 4
  %and.i19 = and i32 %25, %24
  store i32 %and.i19, ptr %wptr.i, align 4
  %26 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count_dw.i, align 4
  %dec.i20 = add i32 %27, -1
  store i32 %dec.i20, ptr %count_dw.i, align 4
  %28 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i22 = add i32 %29, -1
  store i32 %dec4.i22, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i20)
  %cmp.i25 = icmp slt i32 %dec.i20, 1
  br i1 %cmp.i25, label %if.then.i26, label %radeon_ring_write.exit23.radeon_ring_write.exit36_crit_edge

radeon_ring_write.exit23.radeon_ring_write.exit36_crit_edge: ; preds = %radeon_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit36

if.then.i26:                                      ; preds = %radeon_ring_write.exit23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit36

radeon_ring_write.exit36:                         ; preds = %if.then.i26, %radeon_ring_write.exit23.radeon_ring_write.exit36_crit_edge
  %30 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ring1.i, align 8
  %32 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wptr.i, align 4
  %inc.i29 = add i32 %33, 1
  store i32 %inc.i29, ptr %wptr.i, align 4
  %arrayidx.i30 = getelementptr i32, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 15297, ptr %arrayidx.i30, align 4
  %35 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr_mask.i, align 4
  %37 = load i32, ptr %wptr.i, align 4
  %and.i32 = and i32 %37, %36
  store i32 %and.i32, ptr %wptr.i, align 4
  %38 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count_dw.i, align 4
  %dec.i33 = add i32 %39, -1
  store i32 %dec.i33, ptr %count_dw.i, align 4
  %40 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i35 = add i32 %41, -1
  store i32 %dec4.i35, ptr %ring_free_dw.i, align 8
  %shr1 = lshr i64 %1, 23
  %42 = trunc i64 %shr1 to i32
  %conv3 = and i32 %42, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i33)
  %cmp.i38 = icmp slt i32 %dec.i33, 1
  br i1 %cmp.i38, label %if.then.i39, label %radeon_ring_write.exit36.radeon_ring_write.exit49_crit_edge

radeon_ring_write.exit36.radeon_ring_write.exit49_crit_edge: ; preds = %radeon_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit49

if.then.i39:                                      ; preds = %radeon_ring_write.exit36
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit49

radeon_ring_write.exit49:                         ; preds = %if.then.i39, %radeon_ring_write.exit36.radeon_ring_write.exit49_crit_edge
  %43 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ring1.i, align 8
  %45 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wptr.i, align 4
  %inc.i42 = add i32 %46, 1
  store i32 %inc.i42, ptr %wptr.i, align 4
  %arrayidx.i43 = getelementptr i32, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 %conv3, ptr %arrayidx.i43, align 4
  %48 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptr_mask.i, align 4
  %50 = load i32, ptr %wptr.i, align 4
  %and.i45 = and i32 %50, %49
  store i32 %and.i45, ptr %wptr.i, align 4
  %51 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count_dw.i, align 4
  %dec.i46 = add i32 %52, -1
  store i32 %dec.i46, ptr %count_dw.i, align 4
  %53 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i48 = add i32 %54, -1
  store i32 %dec4.i48, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i46)
  %cmp.i51 = icmp slt i32 %dec.i46, 1
  br i1 %cmp.i51, label %if.then.i52, label %radeon_ring_write.exit49.radeon_ring_write.exit62_crit_edge

radeon_ring_write.exit49.radeon_ring_write.exit62_crit_edge: ; preds = %radeon_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit62

if.then.i52:                                      ; preds = %radeon_ring_write.exit49
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit62

radeon_ring_write.exit62:                         ; preds = %if.then.i52, %radeon_ring_write.exit49.radeon_ring_write.exit62_crit_edge
  %55 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring1.i, align 8
  %57 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %wptr.i, align 4
  %inc.i55 = add i32 %58, 1
  store i32 %inc.i55, ptr %wptr.i, align 4
  %arrayidx.i56 = getelementptr i32, ptr %56, i32 %58
  %59 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 15298, ptr %arrayidx.i56, align 4
  %60 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ptr_mask.i, align 4
  %62 = load i32, ptr %wptr.i, align 4
  %and.i58 = and i32 %62, %61
  store i32 %and.i58, ptr %wptr.i, align 4
  %63 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %count_dw.i, align 4
  %dec.i59 = add i32 %64, -1
  store i32 %dec.i59, ptr %count_dw.i, align 4
  %65 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i61 = add i32 %66, -1
  store i32 %dec4.i61, ptr %ring_free_dw.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i59)
  %cmp.i64 = icmp slt i32 %dec.i59, 1
  br i1 %cmp.i64, label %if.then.i65, label %radeon_ring_write.exit62.radeon_ring_write.exit75_crit_edge

radeon_ring_write.exit62.radeon_ring_write.exit75_crit_edge: ; preds = %radeon_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #5
  br label %radeon_ring_write.exit75

if.then.i65:                                      ; preds = %radeon_ring_write.exit62
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %radeon_ring_write.exit75

radeon_ring_write.exit75:                         ; preds = %if.then.i65, %radeon_ring_write.exit62.radeon_ring_write.exit75_crit_edge
  %cond = zext i1 %emit_wait to i32
  %67 = ptrtoint ptr %ring1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ring1.i, align 8
  %69 = ptrtoint ptr %wptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wptr.i, align 4
  %inc.i68 = add i32 %70, 1
  store i32 %inc.i68, ptr %wptr.i, align 4
  %arrayidx.i69 = getelementptr i32, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 %cond, ptr %arrayidx.i69, align 4
  %72 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ptr_mask.i, align 4
  %74 = load i32, ptr %wptr.i, align 4
  %and.i71 = and i32 %74, %73
  store i32 %and.i71, ptr %wptr.i, align 4
  %75 = ptrtoint ptr %count_dw.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %count_dw.i, align 4
  %dec.i72 = add i32 %76, -1
  store i32 %dec.i72, ptr %count_dw.i, align 4
  %77 = ptrtoint ptr %ring_free_dw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ring_free_dw.i, align 8
  %dec4.i74 = add i32 %78, -1
  store i32 %dec4.i74, ptr %ring_free_dw.i, align 8
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvd_v2_2_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %1)
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @uvd_v1_0_resume(ptr noundef %rdev) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @radeon_uvd_resume(ptr noundef %rdev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 3
  %2 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gpu_addr, align 8
  %shr = lshr i64 %3, 3
  %uvd_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %4 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uvd_fw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %add5 = add i32 %7, 4099
  %and = lshr i32 %add5, 3
  %shr6 = and i32 %and, 536870400
  %conv = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv) #3
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 62680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %11 = tail call i32 @llvm.bswap.i32(i32 %shr6) #3
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %13, i32 62684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %11) #3, !srcloc !12
  %conv9 = add i32 %shr6, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv9) #3
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %16, i32 62688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %14) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %18, i32 62692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 8388608) #3, !srcloc !12
  %max_handles = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 4
  %19 = ptrtoint ptr %max_handles to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_handles, align 8
  %mul = mul i32 %20, 51200
  %add13 = add i32 %mul, 204800
  %shr14 = lshr exact i32 %add13, 3
  %conv15 = add i32 %conv9, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv15) #3
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %23, i32 62696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %21) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %24 = tail call i32 @llvm.bswap.i32(i32 %shr14) #3
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %26, i32 62700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %24) #3, !srcloc !12
  %27 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %gpu_addr, align 8
  %29 = trunc i64 %28 to i32
  %30 = lshr i32 %29, 28
  %conv21 = mul nuw nsw i32 %30, 4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %31 = tail call i32 @llvm.bswap.i32(i32 %conv21) #3
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %33, i32 62868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %31) #3, !srcloc !12
  %34 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gpu_addr, align 8
  %shr24 = lshr i64 %35, 32
  %36 = trunc i64 %shr24 to i32
  %37 = and i32 %36, 255
  %conv28 = or i32 %37, -2146893824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv28) #3
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %40, i32 62616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %38) #3, !srcloc !12
  %41 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %42, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %switch.tableidx)
  %43 = icmp ult i32 %switch.tableidx, 20
  br i1 %43, label %switch.lookup, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.uvd_v2_2_resume, i32 0, i32 %switch.tableidx
  %44 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %44)
  %switch.load = load i32, ptr %switch.gep, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %45 = tail call i32 @llvm.bswap.i32(i32 %switch.load) #3
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %47, i32 62676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %45) #3, !srcloc !12
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %switch.lookup ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon.h", i32 2721, i32 3}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2157415125}
!12 = !{i64 6690054}
