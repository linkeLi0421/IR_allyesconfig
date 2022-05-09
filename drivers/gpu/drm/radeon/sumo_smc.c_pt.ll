; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/sumo_smc.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/sumo_smc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sumo_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sumo_sys_info, %struct.sumo_pl, %struct.sumo_pl, %struct.sumo_pl, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.radeon_ps, %struct.sumo_ps, %struct.radeon_ps, %struct.sumo_ps }
%struct.sumo_sys_info = type { i32, i32, i32, i16, i8, i8, %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_disp_clock_voltage_mapping_table, %struct.sumo_vid_mapping_table, [10 x i32], [10 x i32], [10 x i32], i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.sumo_sclk_voltage_mapping_table = type { i32, [5 x %struct.sumo_sclk_voltage_mapping_entry] }
%struct.sumo_sclk_voltage_mapping_entry = type { i32, i16, i16 }
%struct.sumo_disp_clock_voltage_mapping_table = type { i32, [4 x i32] }
%struct.sumo_vid_mapping_table = type { i32, [4 x %struct.sumo_vid_mapping_entry] }
%struct.sumo_vid_mapping_entry = type { i16, i16 }
%struct.sumo_pl = type { i32, i32, i32, i32, i32, i32 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.sumo_ps = type { [5 x %struct.sumo_pl], i32, i32 }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.sumo_set_tdp_limit = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1300, i32 1300, i32 1304, i32 1304, i32 1308, i32 0, i32 0, i32 1308], [32 x i8] zeroinitializer }, align 32
@switch.table.sumo_set_tdp_limit.1 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16, i32 0, i32 16, i32 0, i32 16, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [37 x i8] c"../drivers/gpu/drm/radeon/sumo_smc.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [32 x i8] c"switch.table.sumo_set_tdp_limit\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [34 x i8] c"switch.table.sumo_set_tdp_limit.1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @switch.table.sumo_set_tdp_limit, ptr @switch.table.sumo_set_tdp_limit.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sumo_set_tdp_limit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sumo_set_tdp_limit.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_initialize_m3_arb(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sumo_get_pi(ptr noundef %rdev) #3
  %enable_dynamic_m3_arbiter = getelementptr inbounds %struct.sumo_power_info, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %enable_dynamic_m3_arbiter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_dynamic_m3_arbiter, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body13.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body13.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1288, i32 noundef %3) #3
  %arrayidx.1 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1292, i32 noundef %5) #3
  %arrayidx.2 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1296, i32 noundef %7) #3
  %arrayidx.3 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.3, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1300, i32 noundef %9) #3
  %arrayidx.4 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.4, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1304, i32 noundef %11) #3
  %arrayidx.5 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.5, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1308, i32 noundef %13) #3
  %arrayidx.6 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.6, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1312, i32 noundef %15) #3
  %arrayidx.7 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.7, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1316, i32 noundef %17) #3
  %arrayidx.8 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.8, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1320, i32 noundef %19) #3
  %arrayidx.9 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 9, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.9, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1324, i32 noundef %21) #3
  %arrayidx7 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 0
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1328, i32 noundef %23) #3
  %arrayidx7.1 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 1
  %24 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx7.1, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1332, i32 noundef %25) #3
  %arrayidx7.2 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 2
  %26 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx7.2, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1336, i32 noundef %27) #3
  %arrayidx7.3 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 3
  %28 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.3, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1340, i32 noundef %29) #3
  %arrayidx7.4 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 4
  %30 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx7.4, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1344, i32 noundef %31) #3
  %arrayidx7.5 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 5
  %32 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx7.5, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1348, i32 noundef %33) #3
  %arrayidx7.6 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 6
  %34 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx7.6, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1352, i32 noundef %35) #3
  %arrayidx7.7 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 7
  %36 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx7.7, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1356, i32 noundef %37) #3
  %arrayidx7.8 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 8
  %38 = ptrtoint ptr %arrayidx7.8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.8, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1360, i32 noundef %39) #3
  %arrayidx7.9 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 10, i32 9
  %40 = ptrtoint ptr %arrayidx7.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7.9, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1364, i32 noundef %41) #3
  %arrayidx18 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 0
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx18, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1368, i32 noundef %43) #3
  %arrayidx18.1 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 1
  %44 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx18.1, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1372, i32 noundef %45) #3
  %arrayidx18.2 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 2
  %46 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx18.2, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1376, i32 noundef %47) #3
  %arrayidx18.3 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 3
  %48 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx18.3, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1380, i32 noundef %49) #3
  %arrayidx18.4 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 4
  %50 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx18.4, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1384, i32 noundef %51) #3
  %arrayidx18.5 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 5
  %52 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx18.5, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1388, i32 noundef %53) #3
  %arrayidx18.6 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 6
  %54 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx18.6, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1392, i32 noundef %55) #3
  %arrayidx18.7 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 7
  %56 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx18.7, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1396, i32 noundef %57) #3
  %arrayidx18.8 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 8
  %58 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx18.8, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1400, i32 noundef %59) #3
  %arrayidx18.9 = getelementptr %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 11, i32 9
  %60 = ptrtoint ptr %arrayidx18.9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx18.9, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1404, i32 noundef %61) #3
  br label %cleanup

cleanup:                                          ; preds = %for.body13.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sumo_get_pi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_rcu_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_smu_notify_alt_vddnb_change(ptr noundef %rdev, i1 noundef zeroext %powersaving, i1 noundef zeroext %force_nbps1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @sumo_get_pi(ptr noundef %rdev) #3
  %enable_alt_vddnb.i = getelementptr inbounds %struct.sumo_power_info, ptr %call.i, i32 0, i32 17
  %0 = ptrtoint ptr %enable_alt_vddnb.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable_alt_vddnb.i, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %3, -45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sumo_is_alt_vddnb_supported.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sumo_is_alt_vddnb_supported.exit:                 ; preds = %if.end.i
  %fw_version.i = getelementptr inbounds %struct.sumo_power_info, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68607, i32 %5)
  %cmp5.i = icmp ugt i32 %5, 68607
  br i1 %cmp5.i, label %if.end, label %sumo_is_alt_vddnb_supported.exit.cleanup_crit_edge

sumo_is_alt_vddnb_supported.exit.cleanup_crit_edge: ; preds = %sumo_is_alt_vddnb_supported.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sumo_is_alt_vddnb_supported.exit
  call void @__sanitizer_cov_trace_pc() #5
  %spec.select = zext i1 %powersaving to i32
  %or6 = or i32 %spec.select, 2
  %param.1 = select i1 %force_nbps1, i32 %or6, i32 %spec.select
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1072, i32 noundef %param.1) #3
  tail call fastcc void @sumo_send_msg_to_smu(ptr noundef %rdev, i32 noundef 27)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sumo_is_alt_vddnb_supported.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sumo_send_msg_to_smu(ptr nocapture noundef readonly %rdev, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp66 = icmp sgt i32 %1, 0
  br i1 %cmp66, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 292
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  %5 = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #3
  %inc = add nuw nsw i32 %i.067, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %shl = shl i32 %id, 1
  %or = or i32 %shl, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %11, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %9) #3, !srcloc !13
  %12 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp368 = icmp sgt i32 %13, 0
  br i1 %cmp368, label %for.end.for.body4_crit_edge, label %for.end.for.end36_crit_edge

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end36

for.end.for.body4_crit_edge:                      ; preds = %for.end
  br label %for.body4

for.body4:                                        ; preds = %if.end9.for.body4_crit_edge, %for.end.for.body4_crit_edge
  %i.169 = phi i32 [ %inc11, %if.end9.for.body4_crit_edge ], [ 0, %for.end.for.body4_crit_edge ]
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %15, i32 288
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end9, label %for.end12thread-pre-split

if.end9:                                          ; preds = %for.body4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #3
  %inc11 = add nuw nsw i32 %i.169, 1
  %19 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usec_timeout, align 4
  %cmp3 = icmp slt i32 %inc11, %20
  br i1 %cmp3, label %if.end9.for.body4_crit_edge, label %if.end9.for.end12_crit_edge

if.end9.for.end12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end12

if.end9.for.body4_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body4

for.end12thread-pre-split:                        ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %usec_timeout, align 4
  br label %for.end12

for.end12:                                        ; preds = %for.end12thread-pre-split, %if.end9.for.end12_crit_edge
  %22 = phi i32 [ %.pr, %for.end12thread-pre-split ], [ %20, %if.end9.for.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1570 = icmp sgt i32 %22, 0
  br i1 %cmp1570, label %for.end12.for.body16_crit_edge, label %for.end12.for.end24thread-pre-split_crit_edge

for.end12.for.end24thread-pre-split_crit_edge:    ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end24thread-pre-split

for.end12.for.body16_crit_edge:                   ; preds = %for.end12
  br label %for.body16

for.body16:                                       ; preds = %if.end21.for.body16_crit_edge, %for.end12.for.body16_crit_edge
  %i.271 = phi i32 [ %inc23, %if.end21.for.body16_crit_edge ], [ 0, %for.end12.for.body16_crit_edge ]
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %24, i32 292
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.end21, label %for.body16.for.end24thread-pre-split_crit_edge

for.body16.for.end24thread-pre-split_crit_edge:   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end24thread-pre-split

if.end21:                                         ; preds = %for.body16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #3
  %inc23 = add nuw nsw i32 %i.271, 1
  %28 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout, align 4
  %cmp15 = icmp slt i32 %inc23, %29
  br i1 %cmp15, label %if.end21.for.body16_crit_edge, label %if.end21.for.end24_crit_edge

if.end21.for.end24_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end24

if.end21.for.body16_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body16

for.end24thread-pre-split:                        ; preds = %for.body16.for.end24thread-pre-split_crit_edge, %for.end12.for.end24thread-pre-split_crit_edge
  %30 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr75 = load i32, ptr %usec_timeout, align 4
  br label %for.end24

for.end24:                                        ; preds = %for.end24thread-pre-split, %if.end21.for.end24_crit_edge
  %31 = phi i32 [ %.pr75, %for.end24thread-pre-split ], [ %29, %if.end21.for.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2772 = icmp sgt i32 %31, 0
  br i1 %cmp2772, label %for.end24.for.body28_crit_edge, label %for.end24.for.end36_crit_edge

for.end24.for.end36_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end36

for.end24.for.body28_crit_edge:                   ; preds = %for.end24
  br label %for.body28

for.body28:                                       ; preds = %if.end33.for.body28_crit_edge, %for.end24.for.body28_crit_edge
  %i.373 = phi i32 [ %inc35, %if.end33.for.body28_crit_edge ], [ 0, %for.end24.for.body28_crit_edge ]
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %33, i32 292
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #3, !srcloc !10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool31.not = icmp eq i32 %35, 0
  br i1 %tobool31.not, label %if.end33, label %for.body28.for.end36_crit_edge

for.body28.for.end36_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end36

if.end33:                                         ; preds = %for.body28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #3
  %inc35 = add nuw nsw i32 %i.373, 1
  %37 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usec_timeout, align 4
  %cmp27 = icmp slt i32 %inc35, %38
  br i1 %cmp27, label %if.end33.for.body28_crit_edge, label %if.end33.for.end36_crit_edge

if.end33.for.end36_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end36

if.end33.for.body28_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body28

for.end36:                                        ; preds = %if.end33.for.end36_crit_edge, %for.body28.for.end36_crit_edge, %for.end24.for.end36_crit_edge, %for.end.for.end36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %39 = tail call i32 @llvm.bswap.i32(i32 %shl) #3
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %41, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %39) #3, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_smu_pg_init(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sumo_send_msg_to_smu(ptr noundef %rdev, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_enable_boost_timer(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sumo_get_pi(ptr noundef %rdev) #3
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_xclk, align 4
  %call1 = tail call i32 %3(ptr noundef %rdev) #3
  %call2 = tail call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1076) #3
  %and = lshr i32 %call2, 4
  %shr = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp3.not.i = icmp eq i32 %shr, 0
  br i1 %cmp3.not.i, label %entry.sumo_power_of_4.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sumo_power_of_4.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sumo_power_of_4.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ret.04.i = phi i32 [ %mul.i, %for.body.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %mul.i = shl i32 %ret.04.i, 2
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shr
  br i1 %exitcond.not.i, label %for.body.i.sumo_power_of_4.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.sumo_power_of_4.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sumo_power_of_4.exit

sumo_power_of_4.exit:                             ; preds = %for.body.i.sumo_power_of_4.exit_crit_edge, %entry.sumo_power_of_4.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 1, %entry.sumo_power_of_4.exit_crit_edge ], [ %mul.i, %for.body.i.sumo_power_of_4.exit_crit_edge ]
  %div = udiv i32 %call1, 100
  %div4 = udiv i32 %div, %ret.0.lcssa.i
  %shl = mul i32 %div4, 6553600
  %shl5 = shl nuw nsw i32 %shr, 4
  %or = or i32 %shl, %shl5
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1292, i32 noundef %or) #3
  %sclk_dpm_boost_margin = getelementptr inbounds %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 12
  %4 = ptrtoint ptr %sclk_dpm_boost_margin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sclk_dpm_boost_margin, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1348, i32 noundef %5) #3
  %sclk_dpm_throttle_margin = getelementptr inbounds %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 13
  %6 = ptrtoint ptr %sclk_dpm_throttle_margin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk_dpm_throttle_margin, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1352, i32 noundef %7) #3
  %gnb_tdp_limit = getelementptr inbounds %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 15
  %8 = ptrtoint ptr %gnb_tdp_limit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gnb_tdp_limit, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1344, i32 noundef %9) #3
  %sclk_dpm_tdp_limit_pg = getelementptr inbounds %struct.sumo_power_info, ptr %call, i32 0, i32 11, i32 14
  %10 = ptrtoint ptr %sclk_dpm_tdp_limit_pg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sclk_dpm_tdp_limit_pg, align 4
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1312, i32 noundef %11) #3
  tail call fastcc void @sumo_send_msg_to_smu(ptr noundef %rdev, i32 noundef 20)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_rcu_rreg(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_set_tdp_limit(ptr noundef %rdev, i32 noundef %index, i32 noundef %tdp_limit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %index)
  %0 = icmp ult i32 %index, 8
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.sumo_set_tdp_limit, i32 0, i32 %index
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep12 = getelementptr inbounds [8 x i32], ptr @switch.table.sumo_set_tdp_limit.1, i32 0, i32 %index
  %2 = ptrtoint ptr %switch.gep12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load13 = load i32, ptr %switch.gep12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %regoffset.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %shift.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load13, %switch.lookup ]
  %call = tail call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef %regoffset.0) #3
  %shl = shl nuw nsw i32 4095, %shift.0
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  %shl6 = shl i32 %tdp_limit, %shift.0
  %or = or i32 %and, %shl6
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef %regoffset.0, i32 noundef %or) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_boost_state_enable(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1288) #3
  %and = and i32 %call, -2
  %not.enable = xor i1 %enable, true
  %cond = zext i1 %not.enable to i32
  %or = or i32 %and, %cond
  tail call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1288, i32 noundef %or) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_get_running_fw_version(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 780) #3
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
!9 = !{i8 0, i8 2}
!10 = !{i64 6691643}
!11 = !{i64 2157411828}
!12 = !{i64 2157412235}
!13 = !{i64 6691225}
