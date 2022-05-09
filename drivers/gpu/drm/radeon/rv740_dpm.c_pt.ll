; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv740_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv740_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dll_speed_setting = type { i16, i16, i32 }
%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.rv7xx_power_info = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %union.r7xx_clock_registers, i32, i32, i32, i32, [2 x i32], i16, i16, i16, [2 x i8], [32 x %struct.vddc_table_entry], i8, [3 x i8], i32, [2 x i8], [2 x i8], i32, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, %struct.RV770_SMC_STATETABLE, [2 x i8] }>
%union.r7xx_clock_registers = type { %struct.rv770_clock_registers }
%struct.rv770_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vddc_table_entry = type { i16, i8, i8, i32 }
%struct.RV770_SMC_STATETABLE = type { i8, i8, i8, i8, [32 x i8], [32 x i32], %struct.RV770_SMC_VOLTAGEMASKTABLE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE }
%struct.RV770_SMC_VOLTAGEMASKTABLE = type { [4 x i8], [4 x i32] }
%struct.RV770_SMC_SWSTATE = type { i8, i8, i8, i8, [3 x %struct.RV770_SMC_HW_PERFORMANCE_LEVEL] }
%struct.RV770_SMC_HW_PERFORMANCE_LEVEL = type { i8, %union.anon.108, i8, i8, i8, i8, i8, i8, i32, i32, %struct.RV770_SMC_SCLK_VALUE, %union.RV7XX_SMC_MCLK_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, i8, i8, i8, i8 }
%union.anon.108 = type { i8 }
%struct.RV770_SMC_SCLK_VALUE = type { i32, i32, i32, i32, i32, i32 }
%union.RV7XX_SMC_MCLK_VALUE = type { %struct.RV770_SMC_MCLK_VALUE }
%struct.RV770_SMC_MCLK_VALUE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RV770_SMC_VOLTAGE_VALUE = type { i16, i8, i8 }
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

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid encoded Reference Divider\0A\00", [61 x i8] zeroinitializer }, align 32
@dll_speed_table = internal constant { [16 x %struct.dll_speed_setting], [32 x i8] } { [16 x %struct.dll_speed_setting] [%struct.dll_speed_setting { i16 270, i16 320, i32 15 }, %struct.dll_speed_setting { i16 240, i16 270, i32 14 }, %struct.dll_speed_setting { i16 200, i16 240, i32 13 }, %struct.dll_speed_setting { i16 180, i16 200, i32 12 }, %struct.dll_speed_setting { i16 160, i16 180, i32 11 }, %struct.dll_speed_setting { i16 140, i16 160, i32 10 }, %struct.dll_speed_setting { i16 120, i16 140, i32 9 }, %struct.dll_speed_setting { i16 110, i16 120, i32 8 }, %struct.dll_speed_setting { i16 95, i16 110, i32 7 }, %struct.dll_speed_setting { i16 85, i16 95, i32 6 }, %struct.dll_speed_setting { i16 78, i16 85, i32 5 }, %struct.dll_speed_setting { i16 70, i16 78, i32 4 }, %struct.dll_speed_setting { i16 65, i16 70, i32 3 }, %struct.dll_speed_setting { i16 60, i16 65, i32 2 }, %struct.dll_speed_setting { i16 42, i16 60, i32 1 }, %struct.dll_speed_setting { i16 0, i16 42, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Target MCLK greater than largest MCLK in DLL speed table\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 59, i32 3 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"dll_speed_table\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 73, i32 33 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rv740_dpm.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 114, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @dll_speed_table, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dll_speed_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv740_get_decoded_reference_divider(i32 noundef %encoded_ref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %encoded_ref to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %encoded_ref, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 16, label %sw.bb1
    i32 17, label %sw.bb2
    i32 18, label %sw.bb3
    i32 19, label %sw.bb4
    i32 20, label %sw.bb5
    i32 21, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %ref.0 = phi i32 [ 0, %sw.default ], [ 5, %sw.bb6 ], [ 4, %sw.bb5 ], [ 3, %sw.bb4 ], [ 2, %sw.bb3 ], [ 3, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  ret i32 %ref.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv740_get_dll_speed(i1 noundef zeroext %is_gddr5, i32 noundef %memory_clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %is_gddr5, i32 4, i32 2
  %mul = mul i32 %., %memory_clock
  %div = udiv i32 %mul, 1000
  %conv1 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %conv1)
  %cmp = icmp ult i32 %conv1, 320
  br i1 %cmp, label %for.body.preheader, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.body.preheader:                               ; preds = %entry
  %0 = trunc i32 %div to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %conv1)
  %cmp9 = icmp ugt i32 %conv1, 270
  br i1 %cmp9, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 320, i16 %0)
  %cmp14.not = icmp ugt i16 %0, 320
  br i1 %cmp14.not, label %land.lhs.true.if.end19_crit_edge, label %land.lhs.true.if.then16_crit_edge

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %for.inc.14.if.then16_crit_edge, %land.lhs.true.14.if.then16_crit_edge, %land.lhs.true.13.if.then16_crit_edge, %land.lhs.true.12.if.then16_crit_edge, %land.lhs.true.11.if.then16_crit_edge, %land.lhs.true.10.if.then16_crit_edge, %land.lhs.true.9.if.then16_crit_edge, %land.lhs.true.8.if.then16_crit_edge, %land.lhs.true.7.if.then16_crit_edge, %land.lhs.true.6.if.then16_crit_edge, %land.lhs.true.5.if.then16_crit_edge, %land.lhs.true.4.if.then16_crit_edge, %land.lhs.true.3.if.then16_crit_edge, %land.lhs.true.2.if.then16_crit_edge, %land.lhs.true.1.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %i.029.lcssa = phi i32 [ 0, %land.lhs.true.if.then16_crit_edge ], [ 1, %land.lhs.true.1.if.then16_crit_edge ], [ 2, %land.lhs.true.2.if.then16_crit_edge ], [ 3, %land.lhs.true.3.if.then16_crit_edge ], [ 4, %land.lhs.true.4.if.then16_crit_edge ], [ 5, %land.lhs.true.5.if.then16_crit_edge ], [ 6, %land.lhs.true.6.if.then16_crit_edge ], [ 7, %land.lhs.true.7.if.then16_crit_edge ], [ 8, %land.lhs.true.8.if.then16_crit_edge ], [ 9, %land.lhs.true.9.if.then16_crit_edge ], [ 10, %land.lhs.true.10.if.then16_crit_edge ], [ 11, %land.lhs.true.11.if.then16_crit_edge ], [ 12, %land.lhs.true.12.if.then16_crit_edge ], [ 13, %land.lhs.true.13.if.then16_crit_edge ], [ 14, %land.lhs.true.14.if.then16_crit_edge ], [ 15, %for.inc.14.if.then16_crit_edge ]
  %dll_speed = getelementptr [16 x %struct.dll_speed_setting], ptr @dll_speed_table, i32 0, i32 %i.029.lcssa, i32 2
  %1 = ptrtoint ptr %dll_speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dll_speed, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %conv1)
  %cmp9.1 = icmp ugt i32 %conv1, 240
  br i1 %cmp9.1, label %land.lhs.true.1, label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 270, i16 %0)
  %cmp14.not.1 = icmp ugt i16 %0, 270
  br i1 %cmp14.not.1, label %land.lhs.true.1.if.end19_crit_edge, label %land.lhs.true.1.if.then16_crit_edge

land.lhs.true.1.if.then16_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.1.if.end19_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %conv1)
  %cmp9.2 = icmp ugt i32 %conv1, 200
  br i1 %cmp9.2, label %land.lhs.true.2, label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %0)
  %cmp14.not.2 = icmp ugt i16 %0, 240
  br i1 %cmp14.not.2, label %land.lhs.true.2.if.end19_crit_edge, label %land.lhs.true.2.if.then16_crit_edge

land.lhs.true.2.if.then16_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.2.if.end19_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %conv1)
  %cmp9.3 = icmp ugt i32 %conv1, 180
  br i1 %cmp9.3, label %land.lhs.true.3, label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp2(i16 200, i16 %0)
  %cmp14.not.3 = icmp ugt i16 %0, 200
  br i1 %cmp14.not.3, label %land.lhs.true.3.if.end19_crit_edge, label %land.lhs.true.3.if.then16_crit_edge

land.lhs.true.3.if.then16_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.3.if.end19_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %conv1)
  %cmp9.4 = icmp ugt i32 %conv1, 160
  br i1 %cmp9.4, label %land.lhs.true.4, label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp2(i16 180, i16 %0)
  %cmp14.not.4 = icmp ugt i16 %0, 180
  br i1 %cmp14.not.4, label %land.lhs.true.4.if.end19_crit_edge, label %land.lhs.true.4.if.then16_crit_edge

land.lhs.true.4.if.then16_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.4.if.end19_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %conv1)
  %cmp9.5 = icmp ugt i32 %conv1, 140
  br i1 %cmp9.5, label %land.lhs.true.5, label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %0)
  %cmp14.not.5 = icmp ugt i16 %0, 160
  br i1 %cmp14.not.5, label %land.lhs.true.5.if.end19_crit_edge, label %land.lhs.true.5.if.then16_crit_edge

land.lhs.true.5.if.then16_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.5.if.end19_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %conv1)
  %cmp9.6 = icmp ugt i32 %conv1, 120
  br i1 %cmp9.6, label %land.lhs.true.6, label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp2(i16 140, i16 %0)
  %cmp14.not.6 = icmp ugt i16 %0, 140
  br i1 %cmp14.not.6, label %land.lhs.true.6.if.end19_crit_edge, label %land.lhs.true.6.if.then16_crit_edge

land.lhs.true.6.if.then16_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.6.if.end19_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %conv1)
  %cmp9.7 = icmp ugt i32 %conv1, 110
  br i1 %cmp9.7, label %land.lhs.true.7, label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %0)
  %cmp14.not.7 = icmp ugt i16 %0, 120
  br i1 %cmp14.not.7, label %land.lhs.true.7.if.end19_crit_edge, label %land.lhs.true.7.if.then16_crit_edge

land.lhs.true.7.if.then16_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.7.if.end19_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %conv1)
  %cmp9.8 = icmp ugt i32 %conv1, 95
  br i1 %cmp9.8, label %land.lhs.true.8, label %for.inc.8

land.lhs.true.8:                                  ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp2(i16 110, i16 %0)
  %cmp14.not.8 = icmp ugt i16 %0, 110
  br i1 %cmp14.not.8, label %land.lhs.true.8.if.end19_crit_edge, label %land.lhs.true.8.if.then16_crit_edge

land.lhs.true.8.if.then16_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.8.if.end19_crit_edge:               ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv1)
  %cmp9.9 = icmp ugt i32 %conv1, 85
  br i1 %cmp9.9, label %land.lhs.true.9, label %for.inc.9

land.lhs.true.9:                                  ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp2(i16 95, i16 %0)
  %cmp14.not.9 = icmp ugt i16 %0, 95
  br i1 %cmp14.not.9, label %land.lhs.true.9.if.end19_crit_edge, label %land.lhs.true.9.if.then16_crit_edge

land.lhs.true.9.if.then16_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.9.if.end19_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %conv1)
  %cmp9.10 = icmp ugt i32 %conv1, 78
  br i1 %cmp9.10, label %land.lhs.true.10, label %for.inc.10

land.lhs.true.10:                                 ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp2(i16 85, i16 %0)
  %cmp14.not.10 = icmp ugt i16 %0, 85
  br i1 %cmp14.not.10, label %land.lhs.true.10.if.end19_crit_edge, label %land.lhs.true.10.if.then16_crit_edge

land.lhs.true.10.if.then16_crit_edge:             ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.10.if.end19_crit_edge:              ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %conv1)
  %cmp9.11 = icmp ugt i32 %conv1, 70
  br i1 %cmp9.11, label %land.lhs.true.11, label %for.inc.11

land.lhs.true.11:                                 ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %0)
  %cmp14.not.11 = icmp ugt i16 %0, 78
  br i1 %cmp14.not.11, label %land.lhs.true.11.if.end19_crit_edge, label %land.lhs.true.11.if.then16_crit_edge

land.lhs.true.11.if.then16_crit_edge:             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.11.if.end19_crit_edge:              ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %conv1)
  %cmp9.12 = icmp ugt i32 %conv1, 65
  br i1 %cmp9.12, label %land.lhs.true.12, label %for.inc.12

land.lhs.true.12:                                 ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp2(i16 70, i16 %0)
  %cmp14.not.12 = icmp ugt i16 %0, 70
  br i1 %cmp14.not.12, label %land.lhs.true.12.if.end19_crit_edge, label %land.lhs.true.12.if.then16_crit_edge

land.lhs.true.12.if.then16_crit_edge:             ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.12.if.end19_crit_edge:              ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %conv1)
  %cmp9.13 = icmp ugt i32 %conv1, 60
  br i1 %cmp9.13, label %land.lhs.true.13, label %for.inc.13

land.lhs.true.13:                                 ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %0)
  %cmp14.not.13 = icmp ugt i16 %0, 65
  br i1 %cmp14.not.13, label %land.lhs.true.13.if.end19_crit_edge, label %land.lhs.true.13.if.then16_crit_edge

land.lhs.true.13.if.then16_crit_edge:             ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.13.if.end19_crit_edge:              ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %conv1)
  %cmp9.14 = icmp ugt i32 %conv1, 42
  br i1 %cmp9.14, label %land.lhs.true.14, label %for.inc.14

land.lhs.true.14:                                 ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_const_cmp2(i16 60, i16 %0)
  %cmp14.not.14 = icmp ugt i16 %0, 60
  br i1 %cmp14.not.14, label %land.lhs.true.14.if.end19_crit_edge, label %land.lhs.true.14.if.then16_crit_edge

land.lhs.true.14.if.then16_crit_edge:             ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

land.lhs.true.14.if.end19_crit_edge:              ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

for.inc.14:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %cmp9.15.not = icmp eq i32 %conv1, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %0)
  %cmp14.not.15 = icmp ugt i16 %0, 42
  %or.cond = or i1 %cmp9.15.not, %cmp14.not.15
  br i1 %or.cond, label %for.inc.14.if.end19_crit_edge, label %for.inc.14.if.then16_crit_edge

for.inc.14.if.then16_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

for.inc.14.if.end19_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.end19:                                         ; preds = %for.inc.14.if.end19_crit_edge, %land.lhs.true.14.if.end19_crit_edge, %land.lhs.true.13.if.end19_crit_edge, %land.lhs.true.12.if.end19_crit_edge, %land.lhs.true.11.if.end19_crit_edge, %land.lhs.true.10.if.end19_crit_edge, %land.lhs.true.9.if.end19_crit_edge, %land.lhs.true.8.if.end19_crit_edge, %land.lhs.true.7.if.end19_crit_edge, %land.lhs.true.6.if.end19_crit_edge, %land.lhs.true.5.if.end19_crit_edge, %land.lhs.true.4.if.end19_crit_edge, %land.lhs.true.3.if.end19_crit_edge, %land.lhs.true.2.if.end19_crit_edge, %land.lhs.true.1.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %entry.if.end19_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16
  %retval.0 = phi i32 [ %2, %if.then16 ], [ 15, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv740_populate_sclk_value(ptr noundef %rdev, i32 noundef %engine_clock, ptr nocapture noundef writeonly %sclk) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #5
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clk_regs, align 4
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 1
  %3 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 2
  %5 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %cg_spll_spread_spectrum4 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 3
  %7 = ptrtoint ptr %cg_spll_spread_spectrum4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cg_spll_spread_spectrum4, align 4
  %cg_spll_spread_spectrum_26 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 4
  %9 = ptrtoint ptr %cg_spll_spread_spectrum_26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cg_spll_spread_spectrum_26, align 4
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %11 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spll, align 4
  %call7 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %engine_clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %13 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ref_div, align 4
  %add = add i32 %14, 1
  %conv = zext i32 %engine_clock to i64
  %conv8 = zext i32 %add to i64
  %15 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dividers, align 4
  %conv9 = zext i32 %16 to i64
  %mul = shl nuw nsw i64 %conv, 14
  %mul10 = mul i64 %mul, %conv8
  %mul11 = mul i64 %mul10, %conv9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul11)
  %cmp184 = icmp ult i64 %mul11, 4294967296
  br i1 %cmp184, label %if.then188, label %if.else194, !prof !15

if.then188:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv189 = trunc i64 %mul11 to i32
  %div192 = udiv i32 %conv189, %12
  br label %if.end198

if.else194:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul11) #8, !srcloc !16
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  %extract.t387 = trunc i64 %asmresult1.i to i32
  br label %if.end198

if.end198:                                        ; preds = %if.else194, %if.then188
  %tmp.0.off0 = phi i32 [ %div192, %if.then188 ], [ %extract.t387, %if.else194 ]
  %and201 = and i32 %2, -133170161
  %shl203 = shl i32 %14, 4
  %or204 = or i32 %shl203, %and201
  %shl206 = shl i32 %16, 20
  %or207 = or i32 %or204, %shl206
  %and208 = and i32 %4, -512
  %or209 = or i32 %and208, 2
  %and210 = and i32 %6, -335544320
  %or212 = or i32 %and210, %tmp.0.off0
  %or213 = or i32 %or212, 268435456
  %sclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 7
  %18 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sclk_ss, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool214.not = icmp eq i8 %19, 0
  br i1 %tobool214.not, label %if.end198.if.end237_crit_edge, label %if.then215

if.end198.if.end237_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end237

if.then215:                                       ; preds = %if.end198
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #5
  %20 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul217 = mul i32 %16, %engine_clock
  %call218 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 2, i32 noundef %mul217) #5
  br i1 %call218, label %if.then219, label %if.then215.if.end236_crit_edge

if.then215.if.end236_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

if.then219:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  %mul220 = mul i32 %12, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %21 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %rate, align 2
  %conv221 = zext i16 %22 to i32
  %mul222 = mul i32 %add, %conv221
  %div223 = udiv i32 %mul220, %mul222
  %23 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ss, align 2
  %conv224 = zext i16 %24 to i32
  %mul225 = shl i32 %tmp.0.off0, 2
  %mul226 = mul i32 %mul225, %conv224
  %mul227 = mul i32 %div223, 10000
  %div228 = udiv i32 %mul226, %mul227
  %and229 = and i32 %8, -65522
  %shl230 = shl i32 %div223, 4
  %or231 = or i32 %and229, %shl230
  %or232 = or i32 %or231, 1
  %and233 = and i32 %10, -67108864
  %or235 = or i32 %div228, %and233
  br label %if.end236

if.end236:                                        ; preds = %if.then219, %if.then215.if.end236_crit_edge
  %cg_spll_spread_spectrum.0 = phi i32 [ %or232, %if.then219 ], [ %8, %if.then215.if.end236_crit_edge ]
  %cg_spll_spread_spectrum_2.0 = phi i32 [ %or235, %if.then219 ], [ %10, %if.then215.if.end236_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #5
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %if.end198.if.end237_crit_edge
  %cg_spll_spread_spectrum.1 = phi i32 [ %cg_spll_spread_spectrum.0, %if.end236 ], [ %8, %if.end198.if.end237_crit_edge ]
  %cg_spll_spread_spectrum_2.1 = phi i32 [ %cg_spll_spread_spectrum_2.0, %if.end236 ], [ %10, %if.end198.if.end237_crit_edge ]
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 5
  %25 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %engine_clock, ptr %sclk_value, align 1
  %26 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %or207, ptr %sclk, align 1
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 1
  %27 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %or209, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 2
  %28 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %or213, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %vCG_SPLL_SPREAD_SPECTRUM = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 3
  %29 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %cg_spll_spread_spectrum.1, ptr %vCG_SPLL_SPREAD_SPECTRUM, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2 = getelementptr inbounds %struct.RV770_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 4
  %30 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1, ptr %vCG_SPLL_SPREAD_SPECTRUM_2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end237, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #5
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_pi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv740_populate_mclk_value(ptr noundef %rdev, i32 noundef %engine_clock, i32 noundef %memory_clock, ptr nocapture noundef writeonly %mclk) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #5
  %mpll_ad_func_cntl1 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %0 = ptrtoint ptr %mpll_ad_func_cntl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll_ad_func_cntl1, align 4
  %mpll_ad_func_cntl_23 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %2 = ptrtoint ptr %mpll_ad_func_cntl_23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpll_ad_func_cntl_23, align 4
  %mpll_dq_func_cntl5 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %4 = ptrtoint ptr %mpll_dq_func_cntl5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpll_dq_func_cntl5, align 4
  %mpll_dq_func_cntl_27 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %6 = ptrtoint ptr %mpll_dq_func_cntl_27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_dq_func_cntl_27, align 4
  %mclk_pwrmgt_cntl9 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %8 = ptrtoint ptr %mclk_pwrmgt_cntl9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_pwrmgt_cntl9, align 4
  %dll_cntl11 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %10 = ptrtoint ptr %dll_cntl11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dll_cntl11, align 4
  %mpll_ss113 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 11
  %12 = ptrtoint ptr %mpll_ss113 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mpll_ss113, align 4
  %mpll_ss215 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 12
  %14 = ptrtoint ptr %mpll_ss215 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mpll_ss215, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #5
  %16 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call16 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %memory_clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %17, align 4
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 4095
  %call17 = call i32 @rv770_map_clkf_to_ibias(ptr noundef %rdev, i32 noundef %bf.clear) #5
  %and = and i32 %1, -1073217536
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %19 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ref_div, align 4
  %shl = shl i32 %20, 7
  %21 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dividers, align 4
  %shl18 = shl i32 %22, 17
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load20 = load i32, ptr %17, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 14
  %bf.clear22 = and i32 %bf.lshr21, 4095
  %bf.clear26 = shl i32 %bf.load20, 12
  %shl27 = and i32 %bf.clear26, 67104768
  %shl29 = shl i32 %call17, 20
  %or = or i32 %shl, %shl29
  %or19 = or i32 %or, %and
  %or24 = or i32 %or19, %shl18
  %or28 = or i32 %or24, %bf.clear22
  %or30 = or i32 %or28, %shl27
  %vco_mode = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %24 = ptrtoint ptr %vco_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vco_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  %and34 = and i32 %3, -536870913
  %masksel = select i1 %tobool31.not, i32 0, i32 536870912
  %mpll_ad_func_cntl_2.0 = or i32 %masksel, %and34
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %call, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool36.not = icmp eq i8 %27, 0
  br i1 %tobool36.not, label %if.end.if.end63_crit_edge, label %if.then37

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then37:                                        ; preds = %if.end
  %and38 = and i32 %5, -1073217536
  %or44 = or i32 %or, %and38
  %or49 = or i32 %or44, %shl18
  %or53 = or i32 %or49, %bf.clear22
  %or55 = or i32 %or53, %shl27
  br i1 %tobool31.not, label %if.else60, label %if.then58

if.then58:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %or59 = or i32 %7, 536870912
  br label %if.end63

if.else60:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %and61 = and i32 %7, -536870913
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %if.then58, %if.end.if.end63_crit_edge
  %mpll_dq_func_cntl_2.0 = phi i32 [ %or59, %if.then58 ], [ %and61, %if.else60 ], [ %7, %if.end.if.end63_crit_edge ]
  %mpll_dq_func_cntl.0 = phi i32 [ %or55, %if.then58 ], [ %or55, %if.else60 ], [ %5, %if.end.if.end63_crit_edge ]
  %mclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mclk_ss, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool64.not = icmp eq i8 %29, 0
  br i1 %tobool64.not, label %if.end63.if.end91_crit_edge, label %if.then65

if.end63.if.end91_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then65:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #5
  %30 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul = mul i32 %22, %memory_clock
  %call67 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 1, i32 noundef %mul) #5
  br i1 %call67, label %if.then68, label %if.then65.if.end90_crit_edge

if.then65.if.end90_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.then68:                                        ; preds = %if.then65
  %mpll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %31 = ptrtoint ptr %mpll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mpll, align 4
  %33 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ref_div, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %34, label %sw.default.i [
    i32 0, label %if.then68.rv740_get_decoded_reference_divider.exit_crit_edge
    i32 16, label %sw.bb1.i
    i32 17, label %sw.bb2.i
    i32 18, label %sw.bb3.i
    i32 19, label %sw.bb4.i
    i32 20, label %sw.bb5.i
    i32 21, label %sw.bb6.i
  ]

if.then68.rv740_get_decoded_reference_divider.exit_crit_edge: ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.bb1.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.bb2.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.bb3.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.bb4.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.bb5.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.bb6.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv740_get_decoded_reference_divider.exit

sw.default.i:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %rv740_get_decoded_reference_divider.exit

rv740_get_decoded_reference_divider.exit:         ; preds = %sw.default.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then68.rv740_get_decoded_reference_divider.exit_crit_edge
  %ref.0.i = phi i32 [ 0, %sw.default.i ], [ 5, %sw.bb6.i ], [ 4, %sw.bb5.i ], [ 3, %sw.bb4.i ], [ 2, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %if.then68.rv740_get_decoded_reference_divider.exit_crit_edge ]
  %mul71 = mul i32 %32, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %36 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rate, align 2
  %conv = zext i16 %37 to i32
  %mul72 = mul nuw nsw i32 %ref.0.i, %conv
  %div = udiv i32 %mul71, %mul72
  %38 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ss, align 2
  %conv73 = zext i16 %39 to i32
  %mul74 = shl i32 %conv73, 18
  %40 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load75 = load i32, ptr %17, align 4
  %bf.lshr76 = lshr i32 %bf.load75, 14
  %bf.clear77 = and i32 %bf.lshr76, 4095
  %bf.clear79 = lshr i32 %bf.load75, 3
  %div80160 = and i32 %bf.clear79, 2047
  %add = add nuw nsw i32 %bf.clear77, %div80160
  %mul81 = mul i32 %mul74, %add
  %mul82 = mul i32 %div, 10000
  %div83 = udiv i32 %mul81, %mul82
  %and84 = and i32 %13, -67108864
  %or86 = or i32 %div83, %and84
  %and87 = and i32 %15, -4096
  %or89 = or i32 %div, %and87
  br label %if.end90

if.end90:                                         ; preds = %rv740_get_decoded_reference_divider.exit, %if.then65.if.end90_crit_edge
  %mpll_ss1.0 = phi i32 [ %or86, %rv740_get_decoded_reference_divider.exit ], [ %13, %if.then65.if.end90_crit_edge ]
  %mpll_ss2.0 = phi i32 [ %or89, %rv740_get_decoded_reference_divider.exit ], [ %15, %if.then65.if.end90_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #5
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end63.if.end91_crit_edge
  %mpll_ss1.1 = phi i32 [ %mpll_ss1.0, %if.end90 ], [ %13, %if.end63.if.end91_crit_edge ]
  %mpll_ss2.1 = phi i32 [ %mpll_ss2.0, %if.end90 ], [ %15, %if.end63.if.end91_crit_edge ]
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool93 = icmp ne i8 %42, 0
  %call94 = call i32 @rv740_get_dll_speed(i1 noundef zeroext %tobool93, i32 noundef %memory_clock)
  %and95 = and i32 %9, -32
  %or97 = or i32 %call94, %and95
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 8
  %43 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %memory_clock, ptr %mclk_value, align 1
  %44 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %or30, ptr %mclk, align 1
  %vMPLL_AD_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 1
  %45 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %mpll_ad_func_cntl_2.0, ptr %vMPLL_AD_FUNC_CNTL_2, align 1
  %vMPLL_DQ_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 2
  %46 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %mpll_dq_func_cntl.0, ptr %vMPLL_DQ_FUNC_CNTL, align 1
  %vMPLL_DQ_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 3
  %47 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %mpll_dq_func_cntl_2.0, ptr %vMPLL_DQ_FUNC_CNTL_2, align 1
  %vMCLK_PWRMGT_CNTL = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 4
  %48 = ptrtoint ptr %vMCLK_PWRMGT_CNTL to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %or97, ptr %vMCLK_PWRMGT_CNTL, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 5
  %49 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %11, ptr %vDLL_CNTL, align 1
  %vMPLL_SS = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 6
  %50 = ptrtoint ptr %vMPLL_SS to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %mpll_ss1.1, ptr %vMPLL_SS, align 1
  %vMPLL_SS2 = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 7
  %51 = ptrtoint ptr %vMPLL_SS2 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %mpll_ss2.1, ptr %vMPLL_SS2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #5
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_map_clkf_to_ibias(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv740_read_clock_registers(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %clk_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %clk_regs, align 4
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %6, i32 1540
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 1
  %9 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cg_spll_func_cntl_2, align 4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %11, i32 1544
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 2
  %14 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cg_spll_func_cntl_3, align 4
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %16, i32 1936
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %cg_spll_spread_spectrum = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 3
  %19 = ptrtoint ptr %cg_spll_spread_spectrum to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cg_spll_spread_spectrum, align 4
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %21, i32 1940
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %cg_spll_spread_spectrum_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 4
  %24 = ptrtoint ptr %cg_spll_spread_spectrum_2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cg_spll_spread_spectrum_2, align 4
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %26, i32 1572
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %mpll_ad_func_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %29 = ptrtoint ptr %mpll_ad_func_cntl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mpll_ad_func_cntl, align 4
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %31, i32 1576
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %mpll_ad_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %34 = ptrtoint ptr %mpll_ad_func_cntl_2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mpll_ad_func_cntl_2, align 4
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %36, i32 1580
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  %mpll_dq_func_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %39 = ptrtoint ptr %mpll_dq_func_cntl to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mpll_dq_func_cntl, align 4
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %41, i32 1584
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %mpll_dq_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %44 = ptrtoint ptr %mpll_dq_func_cntl_2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mpll_dq_func_cntl_2, align 4
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %46, i32 1608
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %mclk_pwrmgt_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %49 = ptrtoint ptr %mclk_pwrmgt_cntl to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mclk_pwrmgt_cntl, align 4
  %50 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %51, i32 1612
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %dll_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %54 = ptrtoint ptr %dll_cntl to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %dll_cntl, align 4
  %55 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %56, i32 2140
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  %mpll_ss1 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 11
  %59 = ptrtoint ptr %mpll_ss1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mpll_ss1, align 4
  %60 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %61, i32 2144
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #5, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !19
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %mpll_ss2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 12
  %64 = ptrtoint ptr %mpll_ss2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %mpll_ss2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv740_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #5
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %mpll_ad_func_cntl1 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %0 = ptrtoint ptr %mpll_ad_func_cntl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll_ad_func_cntl1, align 4
  %mpll_ad_func_cntl_23 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %2 = ptrtoint ptr %mpll_ad_func_cntl_23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpll_ad_func_cntl_23, align 4
  %mpll_dq_func_cntl5 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %4 = ptrtoint ptr %mpll_dq_func_cntl5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpll_dq_func_cntl5, align 4
  %mpll_dq_func_cntl_27 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %6 = ptrtoint ptr %mpll_dq_func_cntl_27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_dq_func_cntl_27, align 4
  %8 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_regs, align 4
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 1
  %10 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 2
  %12 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %mclk_pwrmgt_cntl12 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %14 = ptrtoint ptr %mclk_pwrmgt_cntl12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_pwrmgt_cntl12, align 4
  %dll_cntl14 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %16 = ptrtoint ptr %dll_cntl14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dll_cntl14, align 4
  %ACPIState = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8
  %initialState = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %ACPIState, ptr %initialState, i32 280)
  %19 = ptrtoint ptr %ACPIState to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ACPIState, align 1
  %21 = and i8 %20, -2
  store i8 %21, ptr %ACPIState, align 1
  %acpi_vddc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 36
  %22 = ptrtoint ptr %acpi_vddc to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %acpi_vddc, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not = icmp eq i16 %23, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vddc = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12
  %call19 = tail call i32 @rv770_populate_vddc_value(ptr noundef %rdev, i16 noundef zeroext %23, ptr noundef %vddc) #5
  %pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pcie_gen2, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %acpi_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 3
  %26 = ptrtoint ptr %acpi_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %acpi_pcie_gen2, align 1, !range !17
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i8 [ %27, %cond.true ], [ 0, %if.then.cond.end_crit_edge ]
  %gen2PCIE = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  %28 = ptrtoint ptr %gen2PCIE to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %cond, ptr %gen2PCIE, align 1
  %acpi_pcie_gen228 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 3
  %29 = ptrtoint ptr %acpi_pcie_gen228 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %acpi_pcie_gen228, align 1, !range !17
  %gen2XSP = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 4
  %31 = ptrtoint ptr %gen2XSP to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %gen2XSP, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %min_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 27
  %32 = ptrtoint ptr %min_vddc_in_table to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %min_vddc_in_table, align 4
  %vddc37 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12
  %call38 = tail call i32 @rv770_populate_vddc_value(ptr noundef %rdev, i16 noundef zeroext %33, ptr noundef %vddc37) #5
  %gen2PCIE42 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  %34 = ptrtoint ptr %gen2PCIE42 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %gen2PCIE42, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %or = or i32 %3, 50331648
  %or43 = or i32 %7, 50855936
  %or44 = or i32 %15, 16711680
  %or45 = or i32 %17, -16777216
  %or46 = or i32 %9, 11
  %and47 = and i32 %11, -512
  %or48 = or i32 %and47, 4
  %levels50 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4
  %mclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11
  %35 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %1, ptr %mclk, align 1
  %vMPLL_AD_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 1
  %36 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %or, ptr %vMPLL_AD_FUNC_CNTL_2, align 1
  %vMPLL_DQ_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 2
  %37 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %5, ptr %vMPLL_DQ_FUNC_CNTL, align 1
  %vMPLL_DQ_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 3
  %38 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %or43, ptr %vMPLL_DQ_FUNC_CNTL_2, align 1
  %vMCLK_PWRMGT_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 4
  %39 = ptrtoint ptr %vMCLK_PWRMGT_CNTL to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %or44, ptr %vMCLK_PWRMGT_CNTL, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 5
  %40 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %or45, ptr %vDLL_CNTL, align 1
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 8
  %41 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 0, ptr %mclk_value, align 1
  %sclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10
  %42 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %or46, ptr %sclk, align 1
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %or48, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %13, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 5
  %45 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 0, ptr %sclk_value, align 1
  %arrayidx93 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 1
  %46 = call ptr @memcpy(ptr %arrayidx93, ptr %levels50, i32 92)
  %arrayidx99 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 2
  %47 = call ptr @memcpy(ptr %arrayidx99, ptr %levels50, i32 92)
  %mvdd = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 13
  %call106 = tail call i32 @rv770_populate_mvdd_value(ptr noundef %rdev, i32 noundef 0, ptr noundef %mvdd) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_vddc_value(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_mvdd_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv740_enable_mclk_spread_spectrum(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1564
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = or i32 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %3) #5, !srcloc !21
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = and i32 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %6) #5, !srcloc !21
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rv740_get_mclk_frequency_ratio(i32 noundef %memory_clock) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %memory_clock, -47501
  call void @__sanitizer_cov_trace_const_cmp4(i32 -37501, i32 %0)
  %1 = icmp ult i32 %0, -37501
  %sub = add i32 %memory_clock, -10000
  %div = udiv i32 %sub, 2500
  %conv = trunc i32 %div to i8
  %mc_para_index.0 = select i1 %1, i8 0, i8 %conv
  ret i8 %mc_para_index.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv740_dpm.c", i32 59, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rv740_dpm.c", i32 114, i32 2}
!4 = !{ptr @dll_speed_table, !5, !"dll_speed_table", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rv740_dpm.c", i32 73, i32 33}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148888140, i64 2148888420, i64 2148888754, i64 2148889088}
!17 = !{i8 0, i8 2}
!18 = !{i64 6698708}
!19 = !{i64 2157418893}
!20 = !{i64 2157419300}
!21 = !{i64 6698290}
