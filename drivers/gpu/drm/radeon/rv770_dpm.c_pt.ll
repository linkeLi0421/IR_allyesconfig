; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv770_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv770_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.89] }
%struct.anon.89 = type { [12 x %struct.ttm_pool_type] }
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
%struct.rv7xx_pl = type { i32, i32, i16, i16, i32, i32 }
%struct.rv7xx_power_info = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %union.r7xx_clock_registers, i32, i32, i32, i32, [2 x i32], i16, i16, i16, [2 x i8], [32 x %struct.vddc_table_entry], i8, [3 x i8], i32, [2 x i8], [2 x i8], i32, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, %struct.RV770_SMC_STATETABLE, [2 x i8] }>
%union.r7xx_clock_registers = type { %struct.rv770_clock_registers }
%struct.rv770_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vddc_table_entry = type { i16, i8, i8, i32 }
%struct.RV770_SMC_STATETABLE = type { i8, i8, i8, i8, [32 x i8], [32 x i32], %struct.RV770_SMC_VOLTAGEMASKTABLE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE }
%struct.RV770_SMC_VOLTAGEMASKTABLE = type { [4 x i8], [4 x i32] }
%struct.RV770_SMC_SWSTATE = type { i8, i8, i8, i8, [3 x %struct.RV770_SMC_HW_PERFORMANCE_LEVEL] }
%struct.RV770_SMC_HW_PERFORMANCE_LEVEL = type { i8, %union.anon, i8, i8, i8, i8, i8, i8, i32, i32, %struct.RV770_SMC_SCLK_VALUE, %union.RV7XX_SMC_MCLK_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, i8, i8, i8, i8 }
%union.anon = type { i8 }
%struct.RV770_SMC_SCLK_VALUE = type { i32, i32, i32, i32, i32, i32 }
%union.RV7XX_SMC_MCLK_VALUE = type { %struct.RV770_SMC_MCLK_VALUE }
%struct.RV770_SMC_MCLK_VALUE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RV770_SMC_VOLTAGE_VALUE = type { i16, i8, i8 }
%struct.rv7xx_ps = type { %struct.rv7xx_pl, %struct.rv7xx_pl, %struct.rv7xx_pl, i8 }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.95, %struct.anon.96, [8 x ptr], %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.anon.95 = type { ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.atom_memory_info = type { i8, i8 }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ATOM_PPLIB_STATE = type { i8, [1 x i8] }
%struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i16, i32 }>
%struct._ATOM_PPLIB_R600_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i16, i32 }>
%struct.evergreen_power_info = type { %struct.rv7xx_power_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, %struct.evergreen_mc_reg_table, %struct.atom_voltage_table, %struct.atom_voltage_table, %struct.evergreen_arb_registers, %struct.evergreen_ulv_param, [2 x %struct.at], i16, %struct.radeon_ps, %struct.rv7xx_ps, %struct.radeon_ps, %struct.rv7xx_ps }
%struct.evergreen_mc_reg_table = type { i8, i8, i16, [16 x %struct.evergreen_mc_reg_entry], [16 x %struct.SMC_Evergreen_MCRegisterAddress] }
%struct.evergreen_mc_reg_entry = type { i32, [16 x i32] }
%struct.SMC_Evergreen_MCRegisterAddress = type { i16, i16 }
%struct.atom_voltage_table = type { i32, i32, i32, [32 x %struct.atom_voltage_table_entry] }
%struct.atom_voltage_table_entry = type { i16, i32 }
%struct.evergreen_arb_registers = type { i32, i32, i32, i32 }
%struct.evergreen_ulv_param = type { i8, ptr }
%struct.at = type { i32, i32, i32, i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not force DPM to low.\0A\00", [35 x i8] zeroinitializer }, align 32
@r600_utc = external dso_local local_unnamed_addr constant [15 x i32], align 4
@r600_dtc = external dso_local local_unnamed_addr constant [15 x i32], align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rv770_set_sw_state failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rv770_construct_vddc_table failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rv770_upload_firmware failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rv770_init_smc_table failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Could not enable thermal interrupts.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"rv770_restrict_performance_levels_before_switch failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv770_halt_smc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rv770_upload_sw_state failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rv770_resume_smc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@radeon_aspm = external dso_local local_unnamed_addr global i32, align 4
@rv770_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rv770_dpm_print_power_state\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/rv770_dpm.c\00", [61 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr = internal global ptr @rv770_dpm_print_power_state._entry, section ".printk_index", align 4
@rv770_dpm_print_power_state._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.13, i32 2446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\09\09power level 0    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr.16 = internal global ptr @rv770_dpm_print_power_state._entry.14, section ".printk_index", align 4
@rv770_dpm_print_power_state._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.13, i32 2449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\09\09power level 1    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr.19 = internal global ptr @rv770_dpm_print_power_state._entry.17, section ".printk_index", align 4
@rv770_dpm_print_power_state._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.13, i32 2452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\09\09power level 2    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr.22 = internal global ptr @rv770_dpm_print_power_state._entry.20, section ".printk_index", align 4
@rv770_dpm_print_power_state._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.12, ptr @.str.13, i32 2456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09\09power level 0    sclk: %u mclk: %u vddc: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr.25 = internal global ptr @rv770_dpm_print_power_state._entry.23, section ".printk_index", align 4
@rv770_dpm_print_power_state._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.13, i32 2459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09\09power level 1    sclk: %u mclk: %u vddc: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr.28 = internal global ptr @rv770_dpm_print_power_state._entry.26, section ".printk_index", align 4
@rv770_dpm_print_power_state._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.12, ptr @.str.13, i32 2462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\09\09power level 2    sclk: %u mclk: %u vddc: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@rv770_dpm_print_power_state._entry_ptr.31 = internal global ptr @rv770_dpm_print_power_state._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"power level %d    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"power level %d    sclk: %u mclk: %u vddc: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@__const.rv770_populate_mclk_value.encoded_reference_dividers = private unnamed_addr constant [5 x i8] c"\00\10\11\14\15", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.rv770_set_dpm_event_sources = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 1, i32 4], [20 x i8] zeroinitializer }, align 32
@switch.table.rv770_dpm_enable = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\01\01\01\00\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 176]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.48 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 197, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1422, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1911, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1950, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1955, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 1994, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2047, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2053, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2058, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2066, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2442, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2445, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2448, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2451, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2455, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2458, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2461, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2478, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2486, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2488, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rv770_dpm.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2491, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [41 x i8] c"switch.table.rv770_set_dpm_event_sources\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [30 x i8] c"switch.table.rv770_dpm_enable\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @rv770_dpm_print_power_state._entry, ptr @rv770_dpm_print_power_state._entry.14, ptr @rv770_dpm_print_power_state._entry.17, ptr @rv770_dpm_print_power_state._entry.20, ptr @rv770_dpm_print_power_state._entry.23, ptr @rv770_dpm_print_power_state._entry.26, ptr @rv770_dpm_print_power_state._entry.29, ptr @rv770_dpm_print_power_state._entry_ptr, ptr @rv770_dpm_print_power_state._entry_ptr.16, ptr @rv770_dpm_print_power_state._entry_ptr.19, ptr @rv770_dpm_print_power_state._entry_ptr.22, ptr @rv770_dpm_print_power_state._entry_ptr.25, ptr @rv770_dpm_print_power_state._entry_ptr.28, ptr @rv770_dpm_print_power_state._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @switch.table.rv770_set_dpm_event_sources, ptr @switch.table.rv770_dpm_enable], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_dpm_print_power_state._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_set_dpm_event_sources to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_dpm_enable to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rv770_get_ps(ptr nocapture noundef readonly %rps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @rv770_get_pi(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @evergreen_get_pi(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_restore_cgcg(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 1604
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp slt i32 %6, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %brmerge, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %8, i32 1604
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %10 = or i32 %9, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %12, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %10) #13, !srcloc !74
  br label %if.end11

if.end11:                                         ; preds = %do.body, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_stop_dpm(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 21) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %3) #13, !srcloc !74
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %7, i32 1604
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %9) #13, !srcloc !74
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %13, i32 1608
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %15 = or i32 %14, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %17, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %15) #13, !srcloc !74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_send_msg_to_smc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rv770_dpm_enabled(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_enable_thermal_protection(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = and i32 %2, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %3) #13, !srcloc !74
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %6) #13, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_enable_acpi_pm(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #13, !srcloc !74
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @rv770_get_seq_value(ptr nocapture readnone %rdev, ptr nocapture noundef readonly %pl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %conv = select i1 %tobool.not, i8 6, i8 5
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext %reg_offset, i32 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %soft_regs_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %soft_regs_start, align 2
  %add = add i16 %3, %reg_offset
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 59
  %4 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sram_end, align 4
  %call3 = tail call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add, i32 noundef %value, i16 noundef zeroext %5) #13
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_write_smc_sram_dword(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_populate_smc_t(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %radeon_state, ptr nocapture noundef writeonly %smc_state) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_state, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %medium to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %medium, align 4
  %lmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %lmp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lmp, align 4
  %mul = mul i32 %7, %5
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %low, align 4
  %rlp = getelementptr inbounds %struct.rv7xx_power_info, ptr %3, i32 0, i32 53
  %10 = ptrtoint ptr %rlp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rlp, align 4
  %sub = sub i32 5, %11
  %mul4 = mul i32 %sub, %9
  %add = add i32 %mul4, %mul
  %sub8 = sub i32 100, %11
  %mul9 = mul i32 %sub8, %9
  %add14 = add i32 %mul9, %mul
  %mul17 = mul i32 %add, %7
  %div = sdiv i32 %mul17, %add14
  %sub18 = sub i32 %7, %div
  %mul23 = mul i32 %add, %sub8
  %div24 = sdiv i32 %mul23, %add14
  %add25 = add i32 %div24, %11
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %lhp = getelementptr inbounds %struct.rv7xx_power_info, ptr %3, i32 0, i32 55
  %14 = ptrtoint ptr %lhp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lhp, align 4
  %mul29 = mul i32 %15, %13
  %rmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %3, i32 0, i32 54
  %16 = ptrtoint ptr %rmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmp, align 4
  %sub32 = sub i32 5, %17
  %mul33 = mul i32 %sub32, %5
  %add34 = add i32 %mul33, %mul29
  %sub38 = sub i32 100, %17
  %mul39 = mul i32 %sub38, %5
  %add44 = add i32 %mul39, %mul29
  %mul47 = mul i32 %add34, %15
  %div48 = sdiv i32 %mul47, %add44
  %sub49 = sub i32 %15, %div48
  %mul55 = mul i32 %add34, %sub38
  %div56 = sdiv i32 %mul55, %add44
  %add57 = add i32 %div56, %17
  %bsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %3, i32 0, i32 43
  %conv62 = and i32 %add25, 255
  %18 = ptrtoint ptr %bsp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bsp, align 4
  %mul63 = mul i32 %19, %conv62
  %div64 = udiv i32 %mul63, 200
  %aT = getelementptr %struct.RV770_SMC_SWSTATE, ptr %smc_state, i32 0, i32 4, i32 0, i32 8
  %20 = ptrtoint ptr %aT to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %div64, ptr %aT, align 1
  %conv62.1 = and i32 %add57, 255
  %21 = load i32, ptr %bsp, align 4
  %mul63.1 = mul i32 %21, %conv62.1
  %div64.1 = udiv i32 %mul63.1, 200
  %conv66.1 = and i32 %sub18, 255
  %mul68.1 = mul i32 %21, %conv66.1
  %div69.1 = udiv i32 %mul68.1, 200
  %shl70.1 = shl i32 %div69.1, 16
  %or.1 = or i32 %shl70.1, %div64.1
  %aT.1 = getelementptr %struct.RV770_SMC_SWSTATE, ptr %smc_state, i32 0, i32 4, i32 1, i32 8
  %22 = ptrtoint ptr %aT.1 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %or.1, ptr %aT.1, align 1
  %pbsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %3, i32 0, i32 45
  %23 = ptrtoint ptr %pbsp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pbsp, align 4
  %mul74 = mul i32 %24, 100
  %div75 = udiv i32 %mul74, 200
  %conv78 = and i32 %sub49, 255
  %mul80 = mul i32 %24, %conv78
  %div81 = udiv i32 %mul80, 200
  %shl82 = shl i32 %div81, 16
  %or83 = or i32 %shl82, %div75
  %aT86 = getelementptr %struct.RV770_SMC_SWSTATE, ptr %smc_state, i32 0, i32 4, i32 2, i32 8
  %25 = ptrtoint ptr %aT86 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %or83, ptr %aT86, align 1
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_populate_smc_sp(ptr nocapture noundef readonly %rdev, ptr nocapture readnone %radeon_state, ptr nocapture noundef writeonly %smc_state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %dsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsp, align 4
  %bSP = getelementptr %struct.RV770_SMC_SWSTATE, ptr %smc_state, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %bSP to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %bSP, align 1
  %5 = load i32, ptr %dsp, align 4
  %bSP.1 = getelementptr %struct.RV770_SMC_SWSTATE, ptr %smc_state, i32 0, i32 4, i32 1, i32 9
  %6 = ptrtoint ptr %bSP.1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %bSP.1, align 1
  %psp = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 48
  %7 = ptrtoint ptr %psp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %psp, align 4
  %bSP3 = getelementptr %struct.RV770_SMC_SWSTATE, ptr %smc_state, i32 0, i32 4, i32 2, i32 9
  %9 = ptrtoint ptr %bSP3 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %bSP3, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv770_map_clkf_to_ibias(ptr nocapture readnone %rdev, i32 noundef %clkf) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %clkf)
  %cmp = icmp ult i32 %clkf, 17
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %clkf)
  %cmp1 = icmp ult i32 %clkf, 26
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %clkf)
  %cmp4 = icmp ult i32 %clkf, 34
  br i1 %cmp4, label %if.end3.return_crit_edge, label %if.end6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %clkf)
  %cmp7 = icmp ult i32 %clkf, 40
  br i1 %cmp7, label %if.end6.return_crit_edge, label %if.end9

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %clkf)
  %cmp10 = icmp ult i32 %clkf, 50
  %. = select i1 %cmp10, i32 157, i32 198
  br label %return

return:                                           ; preds = %if.end9, %if.end6.return_crit_edge, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 75, %entry.return_crit_edge ], [ 91, %if.end.return_crit_edge ], [ 43, %if.end3.return_crit_edge ], [ 108, %if.end6.return_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_populate_vddc_value(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %vddc, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %voltage_control, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %valid_vddc_entries = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %valid_vddc_entries to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid_vddc_entries, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp37.not = icmp eq i8 %5, 0
  br i1 %cmp37.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.RV770_SMC_VOLTAGE_VALUE, ptr %voltage, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %index, align 1
  %7 = ptrtoint ptr %voltage to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %voltage, align 1
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rv7xx_power_info, ptr %1, i32 0, i32 29, i32 %i.038
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %vddc)
  %cmp5.not = icmp ult i16 %9, %vddc
  br i1 %cmp5.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %vddc_index = getelementptr %struct.rv7xx_power_info, ptr %1, i32 0, i32 29, i32 %i.038, i32 1
  %10 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vddc_index, align 2
  %index10 = getelementptr inbounds %struct.RV770_SMC_VOLTAGE_VALUE, ptr %voltage, i32 0, i32 1
  %12 = ptrtoint ptr %index10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %index10, align 1
  %13 = ptrtoint ptr %voltage to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %vddc, ptr %voltage, align 1
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then7, %for.cond.preheader.for.end_crit_edge
  %i.035 = phi i32 [ %i.038, %if.then7 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  %14 = ptrtoint ptr %valid_vddc_entries to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %valid_vddc_entries, align 4
  %conv14 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.035, i32 %conv14)
  %cmp15 = icmp eq i32 %i.035, %conv14
  %. = select i1 %cmp15, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %for.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv770_populate_mvdd_value(ptr nocapture noundef readonly %rdev, i32 noundef %mclk, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mvdd_control, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %index = getelementptr inbounds %struct.RV770_SMC_VOLTAGE_VALUE, ptr %voltage, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %index, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %mvdd_split_frequency = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %mvdd_split_frequency to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mvdd_split_frequency, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mclk)
  %cmp.not = icmp ult i32 %6, %mclk
  %index4 = getelementptr inbounds %struct.RV770_SMC_VOLTAGE_VALUE, ptr %voltage, i32 0, i32 1
  br i1 %cmp.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %index4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %index4, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %index4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %index4, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %if.then
  %storemerge13 = phi i16 [ -1, %if.then ], [ -1, %if.else ], [ 0, %if.then1 ]
  %9 = ptrtoint ptr %voltage to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %storemerge13, ptr %voltage, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_calculate_memory_refresh_rate(ptr nocapture noundef readonly %rdev, i32 noundef %engine_clock) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 10080
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = lshr i32 %2, 27
  %shr = and i32 %3, 7
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 10752
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %7 = lshr i32 %6, 24
  %and2 = and i32 %7, 3
  %shl4 = shl nuw nsw i32 8, %and2
  %mul = mul i32 %engine_clock, 10
  %mul5 = mul i32 %mul, %shl4
  %8 = add nuw nsw i32 %shr, 10
  %div9 = lshr i32 %mul5, %8
  %sub = add nsw i32 %div9, -32
  %div610 = lshr i32 %sub, 6
  ret i32 %div610
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_enable_backbias(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = or i32 %2, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %3) #13, !srcloc !74
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = and i32 %2, -3073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %6) #13, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_setup_bsp(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_xclk, align 4
  %call1 = tail call i32 %5(ptr noundef %rdev) #13
  %asi = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %asi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %asi, align 4
  %bsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 43
  %bsu = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 44
  tail call void @r600_calculate_u_and_p(i32 noundef %7, i32 noundef %call1, i32 noundef 16, ptr noundef %bsp, ptr noundef %bsu) #13
  %pasi = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 50
  %8 = ptrtoint ptr %pasi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pasi, align 4
  %pbsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 45
  %pbsu = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 46
  tail call void @r600_calculate_u_and_p(i32 noundef %9, i32 noundef %call1, i32 noundef 16, ptr noundef %pbsp, ptr noundef %pbsu) #13
  %10 = ptrtoint ptr %bsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bsp, align 4
  %12 = ptrtoint ptr %bsu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bsu, align 4
  %shl4 = shl i32 %13, 16
  %or = or i32 %shl4, %11
  %dsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 47
  %14 = ptrtoint ptr %dsp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %dsp, align 4
  %15 = ptrtoint ptr %pbsp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pbsp, align 4
  %17 = ptrtoint ptr %pbsu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pbsu, align 4
  %shl8 = shl i32 %18, 16
  %or9 = or i32 %shl8, %16
  %psp = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 48
  %19 = ptrtoint ptr %psp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or9, ptr %psp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 1744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #13, !srcloc !74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_calculate_u_and_p(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_git(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1752
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = and i32 %2, 65535
  %4 = or i32 %3, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 1752
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %4) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_tp(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %r100_mm_wreg.exit.r100_mm_wreg.exit_crit_edge, %entry
  %i.061 = phi i32 [ 0, %entry ], [ %inc, %r100_mm_wreg.exit.r100_mm_wreg.exit_crit_edge ]
  %arrayidx1 = getelementptr [15 x i32], ptr @r600_dtc, i32 0, i32 %i.061
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %shl2 = shl i32 %1, 10
  %arrayidx = getelementptr [15 x i32], ptr @r600_utc, i32 0, i32 %i.061
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %or = or i32 %shl2, %3
  %mul = shl i32 %i.061, 2
  %add = add nuw nsw i32 %mul, 1684
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #13, !srcloc !74
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %do.body, label %r100_mm_wreg.exit.r100_mm_wreg.exit_crit_edge

r100_mm_wreg.exit.r100_mm_wreg.exit_crit_edge:    ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %r100_mm_wreg.exit

do.body:                                          ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %8, i32 1604
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %10 = and i32 %9, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %12, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %10) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_tpp(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 131072) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_sstp(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -939524096) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_engine_speed_parameters(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1552
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %5, i32 1552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %3) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_vc(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %vrc = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %vrc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vrc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_clear_vc(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_upload_firmware(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void @rv770_reset_smc(ptr noundef %rdev) #13
  tail call void @rv770_stop_smc_clock(ptr noundef %rdev) #13
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sram_end, align 4
  %call1 = tail call i32 @rv770_load_smc_ucode(ptr noundef %rdev, i16 noundef zeroext %3) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_reset_smc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_stop_smc_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_load_smc_ucode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv770_populate_initial_mvdd_value(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %s0_vid_lower_smio_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %s0_vid_lower_smio_cntl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s0_vid_lower_smio_cntl, align 4
  %mvdd_mask_low = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %mvdd_mask_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mvdd_mask_low, align 4
  %mvdd_low_smio = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %mvdd_low_smio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mvdd_low_smio, align 4
  %8 = xor i32 %7, %3
  %9 = and i32 %8, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %not.cmp = xor i1 %cmp, true
  %spec.select = zext i1 %not.cmp to i8
  %not.cmp12 = xor i1 %cmp, true
  %spec.select11 = sext i1 %not.cmp12 to i16
  %10 = getelementptr inbounds %struct.RV770_SMC_VOLTAGE_VALUE, ptr %voltage, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 1
  %12 = ptrtoint ptr %voltage to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %spec.select11, ptr %voltage, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @rv770_get_memory_module_index(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5940
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = lshr i32 %2, 8
  %conv = trunc i32 %3 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_enable_voltage_control(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = or i32 %2, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %3) #13, !srcloc !74
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = and i32 %2, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %8, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %6) #13, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_halt_smc(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 16) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call zeroext i8 @rv770_wait_for_smc_inactive(ptr noundef %rdev) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call2)
  %cmp4.not = icmp eq i8 %call2, 1
  %. = select i1 %cmp4.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_wait_for_smc_inactive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_resume_smc(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 17) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_set_sw_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 32) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_set_boot_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 64) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_set_uvd_clock_before_set_eng_clock(ptr noundef %rdev, ptr nocapture noundef readonly %new_ps, ptr nocapture noundef readonly %old_ps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %ps_priv.i21 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i21, align 4
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 3
  %4 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vclk, align 4
  %vclk2 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 3
  %6 = ptrtoint ptr %vclk2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vclk2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 4
  %8 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dclk, align 4
  %dclk3 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.not = icmp ult i32 %13, %15
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 20, i32 12
  %18 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_uvd_clocks, align 4
  %dclk11 = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 4
  %20 = ptrtoint ptr %dclk11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dclk11, align 4
  %call12 = tail call i32 %19(ptr noundef %rdev, i32 noundef %5, i32 noundef %21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_set_uvd_clock_after_set_eng_clock(ptr noundef %rdev, ptr nocapture noundef readonly %new_ps, ptr nocapture noundef readonly %old_ps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %ps_priv.i21 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i21, align 4
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 3
  %4 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vclk, align 4
  %vclk2 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 3
  %6 = ptrtoint ptr %vclk2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vclk2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 4
  %8 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dclk, align 4
  %dclk3 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4 = icmp eq i32 %9, %11
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7 = icmp ult i32 %13, %15
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %16 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %17, i32 0, i32 20, i32 12
  %18 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_uvd_clocks, align 4
  %dclk11 = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 4
  %20 = ptrtoint ptr %dclk11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dclk11, align 4
  %call12 = tail call i32 %19(ptr noundef %rdev, i32 noundef %5, i32 noundef %21) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_restrict_performance_levels_before_switch(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 65) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 21) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call2)
  %cmp4.not = icmp eq i8 %call2, 1
  %. = select i1 %cmp4.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.else13 [
    i32 2, label %if.then
    i32 1, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 19) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp1.not = icmp eq i8 %call, 1
  br i1 %cmp1.not, label %if.then.if.end21_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then6:                                         ; preds = %entry
  %call7 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 65) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call7)
  %cmp9.not = icmp eq i8 %call7, 1
  br i1 %cmp9.not, label %if.then6.if.end21_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.else13:                                        ; preds = %entry
  %call14 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 65) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call14)
  %cmp16.not = icmp eq i8 %call14, 1
  br i1 %cmp16.not, label %if.else13.if.end21_crit_edge, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else13.if.end21_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %if.else13.if.end21_crit_edge, %if.then6.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %msg.0 = phi i16 [ 66, %if.then.if.end21_crit_edge ], [ 21, %if.then6.if.end21_crit_edge ], [ 19, %if.else13.if.end21_crit_edge ]
  %call22 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext %msg.0) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call22)
  %cmp24.not = icmp eq i8 %call22, 1
  br i1 %cmp24.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %1 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %level, ptr %forced_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end21.cleanup_crit_edge, %if.else13.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.else13.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r7xx_start_smc(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rv770_start_smc(ptr noundef %rdev) #13
  tail call void @rv770_start_smc_clock(ptr noundef %rdev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_start_smc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_start_smc_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r7xx_stop_smc(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rv770_reset_smc(ptr noundef %rdev) #13
  tail call void @rv770_stop_smc_clock(ptr noundef %rdev) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_read_voltage_smio_registers(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1656
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #13
  %s0_vid_lower_smio_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %s0_vid_lower_smio_cntl to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %s0_vid_lower_smio_cntl, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_reset_smio_status(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = lshr i32 %2, 30
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %entry.unreachabledefault [
    i32 3, label %sw.bb
    i32 2, label %sw.bb3
    i32 1, label %sw.bb5
    i32 0, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i22 = getelementptr i8, ptr %6, i32 1668
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %9, i32 1664
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %12, i32 1660
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb
  %.sink = phi i32 [ %13, %sw.bb5 ], [ %10, %sw.bb3 ], [ %7, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %15, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %.sink) #13, !srcloc !74
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %17, i32 1596
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %19 = and i32 %18, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %21, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %19) #13, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_get_memory_type(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 10752
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %5 = and i32 %4, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %5)
  %cmp = icmp eq i32 %5, 80
  %. = zext i1 %cmp to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %., ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_get_pcie_gen2_status(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %pciep_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %2 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pciep_rreg, align 4
  %call1 = tail call i32 %3(ptr noundef %rdev, i32 noundef 164) #13
  %4 = and i32 %call1, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %4)
  %.not = icmp eq i32 %4, 25165824
  %5 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 1
  br i1 %.not, label %if.then7, label %if.else14

if.then7:                                         ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %5, align 1
  %and8 = and i32 %call1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %boot_in_gen212 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 4
  br i1 %tobool9.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %boot_in_gen212 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %boot_in_gen212, align 4
  br label %if.end16

if.else11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %boot_in_gen212 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %boot_in_gen212, align 4
  br label %if.end16

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  %boot_in_gen215 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %boot_in_gen215 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %boot_in_gen215, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.else11, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_get_max_vddc(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %vddc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc) #13
  %2 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %vddc, align 2, !annotation !76
  %call1 = call i32 @radeon_atom_get_max_vddc(ptr noundef %rdev, i8 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %vddc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vddc, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i16 [ %4, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %5 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_max_vddc(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_program_response_times(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %voltage_response_time1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %0 = ptrtoint ptr %voltage_response_time1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %voltage_response_time1, align 4
  %backbias_response_time4 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %2 = ptrtoint ptr %backbias_response_time4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %backbias_response_time4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.store.select = select i1 %cmp, i32 1000, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp eq i32 %3, 0
  %spec.store.select18 = select i1 %cmp5, i32 1000, i32 %3
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_xclk, align 4
  %call = tail call i32 %7(ptr noundef %rdev) #13
  %mul = mul i32 %call, %spec.store.select
  %div = udiv i32 %mul, 1600
  %mul8 = mul i32 %call, %spec.store.select18
  %div9 = udiv i32 %mul8, 1600
  %mul10 = mul i32 %call, 15000
  %div11 = udiv i32 %mul10, 1600
  %mul12 = mul i32 %call, 100000
  %div13 = udiv i32 %mul12, 1600
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %8 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i.i, align 4
  %soft_regs_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %soft_regs_start.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %soft_regs_start.i, align 2
  %add.i = add i16 %11, 16
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %9, i32 0, i32 59
  %12 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sram_end.i, align 4
  %call3.i = tail call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add.i, i32 noundef %div, i16 noundef zeroext %13) #13
  %14 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.i, align 4
  %soft_regs_start.i32 = getelementptr inbounds %struct.rv7xx_power_info, ptr %15, i32 0, i32 58
  %16 = ptrtoint ptr %soft_regs_start.i32 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %soft_regs_start.i32, align 2
  %add.i33 = add i16 %17, 12
  %sram_end.i34 = getelementptr inbounds %struct.rv7xx_power_info, ptr %15, i32 0, i32 59
  %18 = ptrtoint ptr %sram_end.i34 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sram_end.i34, align 4
  %call3.i35 = tail call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add.i33, i32 noundef %div9, i16 noundef zeroext %19) #13
  %20 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i.i, align 4
  %soft_regs_start.i37 = getelementptr inbounds %struct.rv7xx_power_info, ptr %21, i32 0, i32 58
  %22 = ptrtoint ptr %soft_regs_start.i37 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %soft_regs_start.i37, align 2
  %add.i38 = add i16 %23, 44
  %sram_end.i39 = getelementptr inbounds %struct.rv7xx_power_info, ptr %21, i32 0, i32 59
  %24 = ptrtoint ptr %sram_end.i39 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sram_end.i39, align 4
  %call3.i40 = tail call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add.i38, i32 noundef %div11, i16 noundef zeroext %25) #13
  %26 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i.i, align 4
  %soft_regs_start.i42 = getelementptr inbounds %struct.rv7xx_power_info, ptr %27, i32 0, i32 58
  %28 = ptrtoint ptr %soft_regs_start.i42 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %soft_regs_start.i42, align 2
  %sram_end.i43 = getelementptr inbounds %struct.rv7xx_power_info, ptr %27, i32 0, i32 59
  %30 = ptrtoint ptr %sram_end.i43 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sram_end.i43, align 4
  %call3.i44 = tail call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %29, i32 noundef %div13, i16 noundef zeroext %31) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_enable_auto_throttle_source(ptr nocapture noundef readonly %rdev, i32 noundef %source, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %active_auto_throttle_sources = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %active_auto_throttle_sources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active_auto_throttle_sources, align 4
  %shl = shl nuw i32 1, %source
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %3, %shl
  br label %if.end16.sink.split

if.else:                                          ; preds = %entry
  br i1 %tobool1.not, label %if.else.if.end16_crit_edge, label %if.then10

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %neg = xor i32 %shl, -1
  %and13 = and i32 %3, %neg
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then10, %if.then2
  %and13.sink27 = phi i32 [ %and13, %if.then10 ], [ %or, %if.then2 ]
  %4 = ptrtoint ptr %active_auto_throttle_sources to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and13.sink27, ptr %active_auto_throttle_sources, align 4
  tail call fastcc void @rv770_set_dpm_event_sources(ptr noundef %rdev, i32 noundef %and13.sink27)
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv770_set_dpm_event_sources(ptr nocapture noundef readonly %rdev, i32 noundef %sources) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %sources, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %do.body15

switch.lookup:                                    ; preds = %entry
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rv770_set_dpm_event_sources, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1836
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %7 = and i32 %6, -117440513
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #13
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %11, i32 1836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %9) #13, !srcloc !74
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %2, i32 0, i32 14
  %12 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %thermal_protection, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %switch.lookup.if.end22_crit_edge, label %do.body8

switch.lookup.if.end22_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.body8:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %15, i32 1596
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %17 = and i32 %16, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %19, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %17) #13, !srcloc !74
  br label %if.end22

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rmmio.i43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %21, i32 1596
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %23 = or i32 %22, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %24 = ptrtoint ptr %rmmio.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i43, align 4
  %add.ptr.i48 = getelementptr i8, ptr %25, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %23) #13, !srcloc !74
  br label %if.end22

if.end22:                                         ; preds = %do.body15, %do.body8, %switch.lookup.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_enable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %gpio_pins.i.i = alloca i32, align 4
  %gpio_mask.i.i = alloca i32, align 4
  %memory_info.i = alloca %struct.atom_memory_info, align 1
  %min.i = alloca i16, align 2
  %max.i = alloca i16, align 2
  %step.i = alloca i16, align 2
  %gpio_pins.i = alloca i32, align 4
  %gpio_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %boot_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %2 = ptrtoint ptr %boot_ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps1, align 4
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gfx_clock_gating, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1596
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %11, i32 1604
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp slt i32 %12, 0
  %brmerge.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %brmerge.i, label %if.then.if.end_crit_edge, label %do.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %14, i32 1604
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %16 = or i32 %15, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %18, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %16) #13, !srcloc !74
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rmmio.i.i100 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %20, i32 1596
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i101) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i102.not = icmp eq i32 %22, 0
  br i1 %tobool.not.i102.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %voltage_control, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not = icmp eq i8 %24, 0
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %25 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %26, i32 1596
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i104) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %28 = or i32 %27, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %29 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %30, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %28) #13, !srcloc !74
  %31 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min.i) #13
  %33 = ptrtoint ptr %min.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %min.i, align 2, !annotation !76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max.i) #13
  %34 = ptrtoint ptr %max.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %max.i, align 2, !annotation !76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %step.i) #13
  %35 = ptrtoint ptr %step.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %step.i, align 2, !annotation !76
  %call1.i = call i32 @radeon_atom_get_min_voltage(ptr noundef %rdev, i8 noundef zeroext 1, ptr noundef nonnull %min.i) #13
  %call2.i = call i32 @radeon_atom_get_max_voltage(ptr noundef %rdev, i8 noundef zeroext 1, ptr noundef nonnull %max.i) #13
  %call3.i = call i32 @radeon_atom_get_voltage_step(ptr noundef %rdev, i8 noundef zeroext 1, ptr noundef nonnull %step.i) #13
  %36 = ptrtoint ptr %max.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max.i, align 2
  %conv.i = zext i16 %37 to i32
  %38 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %min.i, align 2
  %conv4.i = zext i16 %39 to i32
  %sub.i = sub nsw i32 %conv.i, %conv4.i
  %40 = ptrtoint ptr %step.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %step.i, align 2
  %conv5.i = zext i16 %41 to i32
  %div.i = sdiv i32 %sub.i, %conv5.i
  %add.i = add nsw i32 %div.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 32
  br i1 %cmp.i, label %if.then9, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp787.not.i = icmp eq i32 %add.i, 0
  br i1 %cmp787.not.i, label %for.cond.preheader.i.rv770_construct_vddc_table.exit.thread_crit_edge, label %if.end46.peel.i

for.cond.preheader.i.rv770_construct_vddc_table.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_construct_vddc_table.exit.thread

if.end46.peel.i:                                  ; preds = %for.cond.preheader.i
  %vddc_mask_low.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %32, i32 0, i32 21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pins.i) #13
  %42 = ptrtoint ptr %gpio_pins.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %gpio_pins.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_mask.i) #13
  %43 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %gpio_mask.i, align 4, !annotation !76
  %arrayidx.peel.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 0
  %44 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %39, ptr %arrayidx.peel.i, align 4
  %call16.peel.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %39, i8 noundef zeroext 1, ptr noundef nonnull %gpio_pins.i, ptr noundef nonnull %gpio_mask.i) #13
  %45 = ptrtoint ptr %gpio_pins.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %gpio_pins.i, align 4
  %47 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gpio_mask.i, align 4
  %and.peel.i = and i32 %48, %46
  %low_smio.peel.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 0, i32 3
  %49 = ptrtoint ptr %low_smio.peel.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and.peel.i, ptr %low_smio.peel.i, align 4
  %high_smio.peel.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 0, i32 2
  %50 = ptrtoint ptr %high_smio.peel.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %high_smio.peel.i, align 1
  %51 = load i32, ptr %gpio_mask.i, align 4
  %52 = ptrtoint ptr %vddc_mask_low.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %vddc_mask_low.i, align 4
  %vddc_index49.peel.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 0, i32 1
  %53 = ptrtoint ptr %vddc_index49.peel.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %vddc_index49.peel.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_mask.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pins.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %exitcond.peel.not.i = icmp eq i32 %div.i, 0
  br i1 %exitcond.peel.not.i, label %if.end46.peel.i.rv770_construct_vddc_table.exit.thread_crit_edge, label %if.end46.peel.i.if.then23.i_crit_edge

if.end46.peel.i.if.then23.i_crit_edge:            ; preds = %if.end46.peel.i
  br label %if.then23.i

if.end46.peel.i.rv770_construct_vddc_table.exit.thread_crit_edge: ; preds = %if.end46.peel.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_construct_vddc_table.exit.thread

if.then23.i:                                      ; preds = %if.end46.i.if.then23.i_crit_edge, %if.end46.peel.i.if.then23.i_crit_edge
  %i.090.i = phi i32 [ %inc50.i, %if.end46.i.if.then23.i_crit_edge ], [ 1, %if.end46.peel.i.if.then23.i_crit_edge ]
  %vddc_index.088.i = phi i8 [ %vddc_index.1.i, %if.end46.i.if.then23.i_crit_edge ], [ 0, %if.end46.peel.i.if.then23.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pins.i) #13
  %54 = ptrtoint ptr %gpio_pins.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %gpio_pins.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_mask.i) #13
  %55 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %gpio_mask.i, align 4, !annotation !76
  %56 = ptrtoint ptr %min.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %min.i, align 2
  %58 = ptrtoint ptr %step.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %step.i, align 2
  %60 = trunc i32 %i.090.i to i16
  %61 = mul i16 %59, %60
  %conv12.i = add i16 %61, %57
  %arrayidx.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 %i.090.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv12.i, ptr %arrayidx.i, align 4
  %call16.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %conv12.i, i8 noundef zeroext 1, ptr noundef nonnull %gpio_pins.i, ptr noundef nonnull %gpio_mask.i) #13
  %63 = ptrtoint ptr %gpio_pins.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gpio_pins.i, align 4
  %65 = ptrtoint ptr %gpio_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gpio_mask.i, align 4
  %and.i = and i32 %66, %64
  %low_smio.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 %i.090.i, i32 3
  %67 = ptrtoint ptr %low_smio.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and.i, ptr %low_smio.i, align 4
  %high_smio.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 %i.090.i, i32 2
  %68 = ptrtoint ptr %high_smio.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %high_smio.i, align 1
  %69 = load i32, ptr %gpio_mask.i, align 4
  %70 = ptrtoint ptr %vddc_mask_low.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %vddc_mask_low.i, align 4
  %71 = load i32, ptr %low_smio.i, align 4
  %sub28.i = add i32 %i.090.i, -1
  %low_smio30.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 %sub28.i, i32 3
  %72 = ptrtoint ptr %low_smio30.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %low_smio30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp31.not.i = icmp eq i32 %71, %73
  br i1 %cmp31.not.i, label %lor.lhs.false.i, label %if.then23.i.if.then44.i_crit_edge

if.then23.i.if.then44.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44.i

lor.lhs.false.i:                                  ; preds = %if.then23.i
  %high_smio40.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 %sub28.i, i32 2
  %74 = ptrtoint ptr %high_smio40.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %high_smio40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp42.not.i = icmp eq i8 %75, 0
  br i1 %cmp42.not.i, label %lor.lhs.false.i.if.end46.i_crit_edge, label %lor.lhs.false.i.if.then44.i_crit_edge

lor.lhs.false.i.if.then44.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then44.i

lor.lhs.false.i.if.end46.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then44.i:                                      ; preds = %lor.lhs.false.i.if.then44.i_crit_edge, %if.then23.i.if.then44.i_crit_edge
  %inc.i = add i8 %vddc_index.088.i, 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %lor.lhs.false.i.if.end46.i_crit_edge
  %vddc_index.1.i = phi i8 [ %inc.i, %if.then44.i ], [ %vddc_index.088.i, %lor.lhs.false.i.if.end46.i_crit_edge ]
  %vddc_index49.i = getelementptr %struct.rv7xx_power_info, ptr %32, i32 0, i32 29, i32 %i.090.i, i32 1
  %76 = ptrtoint ptr %vddc_index49.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %vddc_index.1.i, ptr %vddc_index49.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_mask.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pins.i) #13
  %inc50.i = add nuw i32 %i.090.i, 1
  %exitcond.not.i = icmp eq i32 %i.090.i, %div.i
  br i1 %exitcond.not.i, label %if.end46.i.rv770_construct_vddc_table.exit.thread_crit_edge, label %if.end46.i.if.then23.i_crit_edge, !llvm.loop !77

if.end46.i.if.then23.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then23.i

if.end46.i.rv770_construct_vddc_table.exit.thread_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_construct_vddc_table.exit.thread

rv770_construct_vddc_table.exit.thread:           ; preds = %if.end46.i.rv770_construct_vddc_table.exit.thread_crit_edge, %if.end46.peel.i.rv770_construct_vddc_table.exit.thread_crit_edge, %for.cond.preheader.i.rv770_construct_vddc_table.exit.thread_crit_edge
  %conv51.i = trunc i32 %add.i to i8
  %valid_vddc_entries.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %32, i32 0, i32 30
  %77 = ptrtoint ptr %valid_vddc_entries.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv51.i, ptr %valid_vddc_entries.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %step.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min.i) #13
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %step.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min.i) #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end11:                                         ; preds = %rv770_construct_vddc_table.exit.thread, %if.end4.if.end11_crit_edge
  %dcodt = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 16
  %78 = ptrtoint ptr %dcodt to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dcodt, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool12.not = icmp eq i8 %79, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  %80 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv.i, align 4
  %mclk_odt_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %81, i32 0, i32 32
  %82 = ptrtoint ptr %mclk_odt_threshold.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mclk_odt_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i107 = icmp eq i32 %83, 0
  br i1 %cmp.i107, label %if.then13.if.end14_crit_edge, label %if.end.i

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i:                                         ; preds = %if.then13
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %84 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %family.i, align 4
  %86 = and i32 %85, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %86)
  %switch.i = icmp eq i32 %86, 36
  br i1 %switch.i, label %if.then4.i, label %if.end.i.if.end14_crit_edge

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @rv730_get_odt_values(ptr noundef %rdev) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then4.i, %if.end.i.if.end14_crit_edge, %if.then13.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mvdd_control, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool15.not = icmp eq i8 %88, 0
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %89 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %memory_info.i) #13
  %91 = ptrtoint ptr %memory_info.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %memory_info.i, align 1, !annotation !76
  %92 = getelementptr inbounds %struct.atom_memory_info, ptr %memory_info.i, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %92, align 1, !annotation !76
  %94 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %95, i32 5940
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %97 = lshr i32 %96, 8
  %conv.i.i = trunc i32 %97 to i8
  %call2.i109 = call i32 @radeon_atom_get_memory_info(ptr noundef %rdev, i8 noundef zeroext %conv.i.i, ptr noundef nonnull %memory_info.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i109)
  %tobool.not.i110 = icmp eq i32 %call2.i109, 0
  br i1 %tobool.not.i110, label %if.end.i111, label %if.then.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %mvdd_control.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %90, i32 0, i32 6
  %98 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %mvdd_control.i, align 2
  br label %rv770_get_mvdd_configuration.exit

if.end.i111:                                      ; preds = %if.then16
  %99 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %100)
  %cmp.i.i = icmp eq i8 %100, 48
  %..i.i = select i1 %cmp.i.i, i32 30000, i32 0
  %mvdd_split_frequency.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %90, i32 0, i32 23
  %101 = ptrtoint ptr %mvdd_split_frequency.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %..i.i, ptr %mvdd_split_frequency.i, align 4
  br i1 %cmp.i.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #15
  %mvdd_control6.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %90, i32 0, i32 6
  %102 = ptrtoint ptr %mvdd_control6.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %mvdd_control6.i, align 2
  br label %rv770_get_mvdd_configuration.exit

if.end7.i:                                        ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #15
  %103 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_pins.i.i) #13
  %105 = ptrtoint ptr %gpio_pins.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %gpio_pins.i.i, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_mask.i.i) #13
  %106 = ptrtoint ptr %gpio_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %gpio_mask.i.i, align 4, !annotation !76
  %call1.i.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext -1, i8 noundef zeroext 2, ptr noundef nonnull %gpio_pins.i.i, ptr noundef nonnull %gpio_mask.i.i) #13
  %107 = ptrtoint ptr %gpio_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %gpio_mask.i.i, align 4
  %mvdd_mask_low.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %104, i32 0, i32 22
  %109 = ptrtoint ptr %mvdd_mask_low.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %mvdd_mask_low.i.i, align 4
  %110 = ptrtoint ptr %gpio_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %gpio_pins.i.i, align 4
  %and.i.i = and i32 %111, %108
  %mvdd_low_smio.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %104, i32 0, i32 24
  %arrayidx.i.i = getelementptr %struct.rv7xx_power_info, ptr %104, i32 0, i32 24, i32 1
  %112 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and.i.i, ptr %arrayidx.i.i, align 4
  %call2.i.i = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %gpio_pins.i.i, ptr noundef nonnull %gpio_mask.i.i) #13
  %113 = ptrtoint ptr %gpio_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %gpio_pins.i.i, align 4
  %115 = ptrtoint ptr %gpio_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %gpio_mask.i.i, align 4
  %and3.i.i = and i32 %116, %114
  %117 = ptrtoint ptr %mvdd_low_smio.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and3.i.i, ptr %mvdd_low_smio.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_mask.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_pins.i.i) #13
  br label %rv770_get_mvdd_configuration.exit

rv770_get_mvdd_configuration.exit:                ; preds = %if.end7.i, %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %memory_info.i) #13
  br label %if.end21

if.end21:                                         ; preds = %rv770_get_mvdd_configuration.exit, %if.end14.if.end21_crit_edge
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %118 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %platform_caps, align 4
  %and = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end21.if.end26_crit_edge, label %if.then25

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %120 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %121, i32 1596
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i113) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %123 = or i32 %122, 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %124 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i15.i114 = getelementptr i8, ptr %125, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i114, i32 %123) #13, !srcloc !74
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %126 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv.i, align 4
  %sclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %127, i32 0, i32 7
  %128 = ptrtoint ptr %sclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %sclk_ss.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool1.not.i = icmp eq i8 %129, 0
  br i1 %tobool1.not.i, label %if.end26.if.end.i122_crit_edge, label %do.body.i121

if.end26.if.end.i122_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i122

do.body.i121:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %130 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i120 = getelementptr i8, ptr %131, i32 1596
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i120) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %133 = or i32 %132, 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %134 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %135, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 %133) #13, !srcloc !74
  br label %if.end.i122

if.end.i122:                                      ; preds = %do.body.i121, %if.end26.if.end.i122_crit_edge
  %mclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %127, i32 0, i32 8
  %136 = ptrtoint ptr %mclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %mclk_ss.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool4.not.i = icmp eq i8 %137, 0
  br i1 %tobool4.not.i, label %if.end.i122.rv770_enable_spread_spectrum.exit_crit_edge, label %if.then5.i125

if.end.i122.rv770_enable_spread_spectrum.exit_crit_edge: ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_enable_spread_spectrum.exit

if.then5.i125:                                    ; preds = %if.end.i122
  %family.i123 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %138 = ptrtoint ptr %family.i123 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %family.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %139)
  %cmp.i124 = icmp eq i32 %139, 38
  br i1 %cmp.i124, label %if.end34.sink.split.i, label %if.then5.i125.rv770_enable_spread_spectrum.exit_crit_edge

if.then5.i125.rv770_enable_spread_spectrum.exit_crit_edge: ; preds = %if.then5.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_enable_spread_spectrum.exit

if.end34.sink.split.i:                            ; preds = %if.then5.i125
  call void @__sanitizer_cov_trace_pc() #15
  call void @rv740_enable_mclk_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext true) #13
  br label %rv770_enable_spread_spectrum.exit

rv770_enable_spread_spectrum.exit:                ; preds = %if.end34.sink.split.i, %if.then5.i125.rv770_enable_spread_spectrum.exit_crit_edge, %if.end.i122.rv770_enable_spread_spectrum.exit_crit_edge
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 14
  %140 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %thermal_protection, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool27.not = icmp eq i8 %141, 0
  br i1 %tobool27.not, label %rv770_enable_spread_spectrum.exit.if.end29_crit_edge, label %if.then28

rv770_enable_spread_spectrum.exit.if.end29_crit_edge: ; preds = %rv770_enable_spread_spectrum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then28:                                        ; preds = %rv770_enable_spread_spectrum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %142 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i127 = getelementptr i8, ptr %143, i32 1596
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i127) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %145 = and i32 %144, -67108865
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %146 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i15.i128 = getelementptr i8, ptr %147, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i128, i32 %145) #13, !srcloc !74
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %rv770_enable_spread_spectrum.exit.if.end29_crit_edge
  %148 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv.i, align 4
  %family.i132 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %150 = ptrtoint ptr %family.i132 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %family.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %151)
  %cmp.i133 = icmp eq i32 %151, 35
  br i1 %cmp.i133, label %land.lhs.true.i, label %if.end29.rv770_program_mpll_timing_parameters.exit_crit_edge

if.end29.rv770_program_mpll_timing_parameters.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_program_mpll_timing_parameters.exit

land.lhs.true.i:                                  ; preds = %if.end29
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %149, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i134 = icmp eq i8 %153, 0
  br i1 %tobool.not.i134, label %if.then.i137, label %land.lhs.true.i.rv770_program_mpll_timing_parameters.exit_crit_edge

land.lhs.true.i.rv770_program_mpll_timing_parameters.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_program_mpll_timing_parameters.exit

if.then.i137:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %ref_div.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %149, i32 0, i32 38
  %154 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ref_div.i, align 4
  %mul.i = mul i32 %155, 100
  %or.i = or i32 %mul.i, 9830400
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %156 = call i32 @llvm.bswap.i32(i32 %or.i) #13
  %157 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %158, i32 1620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i136, i32 %156) #13, !srcloc !74
  br label %rv770_program_mpll_timing_parameters.exit

rv770_program_mpll_timing_parameters.exit:        ; preds = %if.then.i137, %land.lhs.true.i.rv770_program_mpll_timing_parameters.exit_crit_edge, %if.end29.rv770_program_mpll_timing_parameters.exit_crit_edge
  %159 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %priv.i, align 4
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %161 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %asic.i, align 8
  %get_xclk.i = getelementptr inbounds %struct.radeon_asic, ptr %162, i32 0, i32 9
  %163 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %get_xclk.i, align 4
  %call1.i140 = call i32 %164(ptr noundef %rdev) #13
  %asi.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 49
  %165 = ptrtoint ptr %asi.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %asi.i, align 4
  %bsp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 43
  %bsu.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 44
  call void @r600_calculate_u_and_p(i32 noundef %166, i32 noundef %call1.i140, i32 noundef 16, ptr noundef %bsp.i, ptr noundef %bsu.i) #13
  %pasi.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 50
  %167 = ptrtoint ptr %pasi.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pasi.i, align 4
  %pbsp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 45
  %pbsu.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 46
  call void @r600_calculate_u_and_p(i32 noundef %168, i32 noundef %call1.i140, i32 noundef 16, ptr noundef %pbsp.i, ptr noundef %pbsu.i) #13
  %169 = ptrtoint ptr %bsp.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %bsp.i, align 4
  %171 = ptrtoint ptr %bsu.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %bsu.i, align 4
  %shl4.i = shl i32 %172, 16
  %or.i141 = or i32 %shl4.i, %170
  %dsp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 47
  %173 = ptrtoint ptr %dsp.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or.i141, ptr %dsp.i, align 4
  %174 = ptrtoint ptr %pbsp.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pbsp.i, align 4
  %176 = ptrtoint ptr %pbsu.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %pbsu.i, align 4
  %shl8.i = shl i32 %177, 16
  %or9.i = or i32 %shl8.i, %175
  %psp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %160, i32 0, i32 48
  %178 = ptrtoint ptr %psp.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or9.i, ptr %psp.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %179 = call i32 @llvm.bswap.i32(i32 %or.i141) #13
  %180 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %181, i32 1744
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i143, i32 %179) #13, !srcloc !74
  %182 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %183, i32 1752
  %184 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i145) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %185 = and i32 %184, 65535
  %186 = or i32 %185, 131072
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %187 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %188, i32 1752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %186) #13, !srcloc !74
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %r100_mm_wreg.exit.i.r100_mm_wreg.exit.i_crit_edge, %rv770_program_mpll_timing_parameters.exit
  %i.061.i = phi i32 [ 0, %rv770_program_mpll_timing_parameters.exit ], [ %inc.i152, %r100_mm_wreg.exit.i.r100_mm_wreg.exit.i_crit_edge ]
  %arrayidx1.i = getelementptr [15 x i32], ptr @r600_dtc, i32 0, i32 %i.061.i
  %189 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx1.i, align 4
  %shl2.i = shl i32 %190, 10
  %arrayidx.i147 = getelementptr [15 x i32], ptr @r600_utc, i32 0, i32 %i.061.i
  %191 = ptrtoint ptr %arrayidx.i147 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i147, align 4
  %or.i148 = or i32 %shl2.i, %192
  %mul.i149 = shl i32 %i.061.i, 2
  %add.i150 = add nuw nsw i32 %mul.i149, 1684
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %193 = call i32 @llvm.bswap.i32(i32 %or.i148) #13
  %194 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %195, i32 %add.i150
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151, i32 %193) #13, !srcloc !74
  %inc.i152 = add nuw nsw i32 %i.061.i, 1
  %exitcond.not.i153 = icmp eq i32 %inc.i152, 15
  br i1 %exitcond.not.i153, label %rv770_program_tp.exit, label %r100_mm_wreg.exit.i.r100_mm_wreg.exit.i_crit_edge

r100_mm_wreg.exit.i.r100_mm_wreg.exit.i_crit_edge: ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %r100_mm_wreg.exit.i

rv770_program_tp.exit:                            ; preds = %r100_mm_wreg.exit.i
  %196 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %197, i32 1604
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %199 = and i32 %198, -536870913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %200 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %201, i32 1604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %199) #13, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %202 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %203, i32 1600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i156, i32 131072) #13, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %204 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %205, i32 1768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158, i32 -939524096) #13, !srcloc !74
  %206 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %207, i32 1552
  %208 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i160) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %209 = or i32 %208, 536870912
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %210 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i5.i161 = getelementptr i8, ptr %211, i32 1552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i161, i32 %209) #13, !srcloc !74
  %212 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %213, i32 1812
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i163) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %215 = or i32 %214, 15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %216 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i5.i164 = getelementptr i8, ptr %217, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i164, i32 %215) #13, !srcloc !74
  %218 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %priv.i, align 4
  %vrc.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %219, i32 0, i32 51
  %220 = ptrtoint ptr %vrc.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %vrc.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %222 = call i32 @llvm.bswap.i32(i32 %221) #13
  %223 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i167 = getelementptr i8, ptr %224, i32 1680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i167, i32 %222) #13, !srcloc !74
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 2
  %225 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool30.not = icmp eq i8 %226, 0
  br i1 %tobool30.not, label %rv770_program_tp.exit.if.end32_crit_edge, label %if.then31

rv770_program_tp.exit.if.end32_crit_edge:         ; preds = %rv770_program_tp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.then31:                                        ; preds = %rv770_program_tp.exit
  %pciep_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %227 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call1.i.i168 = call i32 %228(ptr noundef %rdev, i32 noundef 164) #13
  %229 = and i32 %call1.i.i168, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %if.then31.rv770_enable_dynamic_pcie_gen2.exit_crit_edge, label %if.then12.i.i

if.then31.rv770_enable_dynamic_pcie_gen2.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_enable_dynamic_pcie_gen2.exit

if.then12.i.i:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %and.i.i169 = and i32 %call1.i.i168, -12290
  %or2.i.i = or i32 %and.i.i169, 4097
  %pciep_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %231 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pciep_wreg.i.i, align 8
  call void %232(ptr noundef %rdev, i32 noundef 164, i32 noundef %or2.i.i) #13
  br label %rv770_enable_dynamic_pcie_gen2.exit

rv770_enable_dynamic_pcie_gen2.exit:              ; preds = %if.then12.i.i, %if.then31.rv770_enable_dynamic_pcie_gen2.exit_crit_edge
  %233 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %234, i32 1596
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i171) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %236 = or i32 %235, 268435456
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %237 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i18.i172 = getelementptr i8, ptr %238, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i172, i32 %236) #13, !srcloc !74
  br label %if.end32

if.end32:                                         ; preds = %rv770_enable_dynamic_pcie_gen2.exit, %rv770_program_tp.exit.if.end32_crit_edge
  %239 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %priv.i, align 4
  call void @rv770_reset_smc(ptr noundef %rdev) #13
  call void @rv770_stop_smc_clock(ptr noundef %rdev) #13
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %240, i32 0, i32 59
  %241 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %sram_end.i, align 4
  %call1.i176 = call i32 @rv770_load_smc_ucode(ptr noundef %rdev, i16 noundef zeroext %242) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool34.not = icmp eq i32 %call1.i176, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %243 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %priv.i, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %245 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ps_priv.i.i, align 4
  %smc_statetable.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60
  %247 = call ptr @memset(ptr %smc_statetable.i, i32 0, i32 1304)
  %low.i = getelementptr inbounds %struct.rv7xx_ps, ptr %246, i32 0, i32 2
  %248 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %low.i, align 4
  %boot_sclk.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 35
  %250 = ptrtoint ptr %boot_sclk.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %249, ptr %boot_sclk.i, align 4
  %251 = load ptr, ptr %priv.i, align 4
  %valid_vddc_entries.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %251, i32 0, i32 30
  %252 = ptrtoint ptr %valid_vddc_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %valid_vddc_entries.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %cmp2.not.i.i = icmp eq i8 %253, 0
  br i1 %cmp2.not.i.i, label %if.end36.for.end.i.i_crit_edge, label %if.end36.for.body.i.i_crit_edge

if.end36.for.body.i.i_crit_edge:                  ; preds = %if.end36
  br label %for.body.i.i

if.end36.for.end.i.i_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end36.for.body.i.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end36.for.body.i.i_crit_edge ]
  %high_smio.i.i = getelementptr %struct.rv7xx_power_info, ptr %251, i32 0, i32 29, i32 %i.03.i.i, i32 2
  %254 = ptrtoint ptr %high_smio.i.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %high_smio.i.i, align 1
  %vddc_index.i.i = getelementptr %struct.rv7xx_power_info, ptr %251, i32 0, i32 29, i32 %i.03.i.i, i32 1
  %256 = ptrtoint ptr %vddc_index.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %vddc_index.i.i, align 2
  %idxprom.i.i = zext i8 %257 to i32
  %arrayidx4.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 4, i32 %idxprom.i.i
  %258 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %255, ptr %arrayidx4.i.i, align 1
  %low_smio.i.i = getelementptr %struct.rv7xx_power_info, ptr %251, i32 0, i32 29, i32 %i.03.i.i, i32 3
  %259 = ptrtoint ptr %low_smio.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %low_smio.i.i, align 4
  %261 = load i8, ptr %vddc_index.i.i, align 2
  %idxprom10.i.i = zext i8 %261 to i32
  %arrayidx11.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 5, i32 %idxprom10.i.i
  %262 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_storeN_noabort(i32 %262, i32 4)
  store i32 %260, ptr %arrayidx11.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.03.i.i, 1
  %263 = ptrtoint ptr %valid_vddc_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %valid_vddc_entries.i.i, align 4
  %conv.i.i178 = zext i8 %264 to i32
  %cmp.i.i179 = icmp ult i32 %inc.i.i, %conv.i.i178
  br i1 %cmp.i.i179, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end36.for.end.i.i_crit_edge
  %voltageMaskTable.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 6
  %265 = ptrtoint ptr %voltageMaskTable.i.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %voltageMaskTable.i.i, align 1
  %vddc_mask_low.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %251, i32 0, i32 21
  %266 = ptrtoint ptr %vddc_mask_low.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %vddc_mask_low.i.i, align 4
  %lowMask.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 6, i32 1
  %268 = ptrtoint ptr %lowMask.i.i to i32
  call void @__asan_storeN_noabort(i32 %268, i32 4)
  store i32 %267, ptr %lowMask.i.i, align 1
  %269 = ptrtoint ptr %valid_vddc_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %valid_vddc_entries.i.i, align 4
  %conv17.i.i = zext i8 %270 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %cmp184.not.i.i = icmp eq i8 %270, 0
  br i1 %cmp184.not.i.i, label %for.end.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge, label %land.rhs.lr.ph.i.i

for.end.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_smc_vddc_table.exit.i

land.rhs.lr.ph.i.i:                               ; preds = %for.end.i.i
  %max_vddc_in_table.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %251, i32 0, i32 26
  %271 = ptrtoint ptr %max_vddc_in_table.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %max_vddc_in_table.i.i, align 2
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc27.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %i.15.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc28.i.i, %for.inc27.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx22.i.i = getelementptr %struct.rv7xx_power_info, ptr %251, i32 0, i32 29, i32 %i.15.i.i
  %273 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %arrayidx22.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %272, i16 %274)
  %cmp24.i.i = icmp ugt i16 %272, %274
  br i1 %cmp24.i.i, label %for.inc27.i.i, label %land.rhs.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge

land.rhs.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_smc_vddc_table.exit.i

for.inc27.i.i:                                    ; preds = %land.rhs.i.i
  %inc28.i.i = add nuw nsw i32 %i.15.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc28.i.i, %conv17.i.i
  br i1 %exitcond.not.i.i, label %for.inc27.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge, label %for.inc27.i.i.land.rhs.i.i_crit_edge

for.inc27.i.i.land.rhs.i.i_crit_edge:             ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i.i

for.inc27.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge: ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_smc_vddc_table.exit.i

rv770_populate_smc_vddc_table.exit.i:             ; preds = %for.inc27.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge, %land.rhs.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge, %for.end.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge
  %i.1.lcssa.i.i = phi i32 [ 0, %for.end.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge ], [ %conv17.i.i, %for.inc27.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge ], [ %i.15.i.i, %land.rhs.i.i.rv770_populate_smc_vddc_table.exit.i_crit_edge ]
  %vddc_index32.i.i = getelementptr %struct.rv7xx_power_info, ptr %251, i32 0, i32 29, i32 %i.1.lcssa.i.i, i32 1
  %275 = ptrtoint ptr %vddc_index32.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %vddc_index32.i.i, align 2
  %maxVDDCIndexInPPTable.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 2
  %277 = ptrtoint ptr %maxVDDCIndexInPPTable.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %maxVDDCIndexInPPTable.i.i, align 1
  %278 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %priv.i, align 4
  %mvdd_control.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %279, i32 0, i32 6
  %280 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %mvdd_control.i.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool.not.i.i = icmp eq i8 %281, 0
  br i1 %tobool.not.i.i, label %rv770_populate_smc_vddc_table.exit.i.rv770_populate_smc_mvdd_table.exit.i_crit_edge, label %if.then.i.i

rv770_populate_smc_vddc_table.exit.i.rv770_populate_smc_mvdd_table.exit.i_crit_edge: ; preds = %rv770_populate_smc_vddc_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_smc_mvdd_table.exit.i

if.then.i.i:                                      ; preds = %rv770_populate_smc_vddc_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %mvdd_low_smio.i.i180 = getelementptr inbounds %struct.rv7xx_power_info, ptr %279, i32 0, i32 24
  %arrayidx.i.i181 = getelementptr %struct.rv7xx_power_info, ptr %279, i32 0, i32 24, i32 1
  %282 = ptrtoint ptr %arrayidx.i.i181 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx.i.i181, align 4
  %lowSMIO.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 5
  %arrayidx1.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 5, i32 1
  %284 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %arrayidx1.i.i, align 1
  %or.i.i = or i32 %285, %283
  store i32 %or.i.i, ptr %arrayidx1.i.i, align 1
  %286 = ptrtoint ptr %mvdd_low_smio.i.i180 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %mvdd_low_smio.i.i180, align 4
  %288 = ptrtoint ptr %lowSMIO.i.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %289 = load i32, ptr %lowSMIO.i.i, align 1
  %or6.i.i = or i32 %289, %287
  store i32 %or6.i.i, ptr %lowSMIO.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 6, i32 0, i32 1
  %290 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %arrayidx7.i.i, align 1
  %mvdd_mask_low.i.i182 = getelementptr inbounds %struct.rv7xx_power_info, ptr %279, i32 0, i32 22
  %291 = ptrtoint ptr %mvdd_mask_low.i.i182 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %mvdd_mask_low.i.i182, align 4
  %arrayidx9.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 6, i32 1, i32 1
  %293 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_storeN_noabort(i32 %293, i32 4)
  store i32 %292, ptr %arrayidx9.i.i, align 1
  br label %rv770_populate_smc_mvdd_table.exit.i

rv770_populate_smc_mvdd_table.exit.i:             ; preds = %if.then.i.i, %rv770_populate_smc_vddc_table.exit.i.rv770_populate_smc_mvdd_table.exit.i_crit_edge
  %int_thermal_type.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %294 = ptrtoint ptr %int_thermal_type.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %int_thermal_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %295)
  %296 = icmp ult i32 %295, 6
  br i1 %296, label %switch.lookup, label %rv770_populate_smc_mvdd_table.exit.i.sw.epilog.i_crit_edge

rv770_populate_smc_mvdd_table.exit.i.sw.epilog.i_crit_edge: ; preds = %rv770_populate_smc_mvdd_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %rv770_populate_smc_mvdd_table.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.rv770_dpm_enable, i32 0, i32 %295
  %297 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %297)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %rv770_populate_smc_mvdd_table.exit.i.sw.epilog.i_crit_edge
  %.sink.i = phi i8 [ %switch.load, %switch.lookup ], [ 1, %rv770_populate_smc_mvdd_table.exit.i.sw.epilog.i_crit_edge ]
  %298 = ptrtoint ptr %smc_statetable.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %.sink.i, ptr %smc_statetable.i, align 1
  %299 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %platform_caps, align 4
  %and.i183 = and i32 %300, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.not.i184 = icmp eq i32 %and.i183, 0
  br i1 %tobool.not.i184, label %sw.epilog.i.if.end30.i_crit_edge, label %if.then.i185

sw.epilog.i.if.end30.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then.i185:                                     ; preds = %sw.epilog.i
  %systemFlags.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 1
  %301 = ptrtoint ptr %systemFlags.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %systemFlags.i, align 1
  %303 = or i8 %302, 1
  store i8 %303, ptr %systemFlags.i, align 1
  %304 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %platform_caps, align 4
  %and13.i = and i32 %305, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.then.i185.if.end.i186_crit_edge, label %if.then15.i

if.then.i185.if.end.i186_crit_edge:               ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i186

if.then15.i:                                      ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #15
  %extraFlags.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 3
  %306 = ptrtoint ptr %extraFlags.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %extraFlags.i, align 1
  %308 = or i8 %307, 8
  store i8 %308, ptr %extraFlags.i, align 1
  br label %if.end.i186

if.end.i186:                                      ; preds = %if.then15.i, %if.then.i185.if.end.i186_crit_edge
  %309 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %platform_caps, align 4
  %and22.i = and i32 %310, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end.i186.if.end30.i_crit_edge, label %if.then24.i

if.end.i186.if.end30.i_crit_edge:                 ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then24.i:                                      ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #15
  %extraFlags25.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 3
  %311 = ptrtoint ptr %extraFlags25.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %extraFlags25.i, align 1
  %313 = or i8 %312, 1
  store i8 %313, ptr %extraFlags25.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then24.i, %if.end.i186.if.end30.i_crit_edge, %sw.epilog.i.if.end30.i_crit_edge
  %314 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %platform_caps, align 4
  %and34.i = and i32 %315, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end30.i.if.end41.i_crit_edge, label %if.then36.i

if.end30.i.if.end41.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %systemFlags37.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 1
  %316 = ptrtoint ptr %systemFlags37.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %systemFlags37.i, align 1
  %318 = or i8 %317, 2
  store i8 %318, ptr %systemFlags37.i, align 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then36.i, %if.end30.i.if.end41.i_crit_edge
  %319 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %244, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %320)
  %tobool42.not.i = icmp eq i8 %320, 0
  br i1 %tobool42.not.i, label %if.end41.i.if.end48.i_crit_edge, label %if.then43.i

if.end41.i.if.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48.i

if.then43.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %systemFlags44.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 1
  %321 = ptrtoint ptr %systemFlags44.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %systemFlags44.i, align 1
  %323 = or i8 %322, 4
  store i8 %323, ptr %systemFlags44.i, align 1
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then43.i, %if.end41.i.if.end48.i_crit_edge
  %324 = ptrtoint ptr %family.i132 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %family.i132, align 4
  %326 = and i32 %325, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %326)
  %switch.i188 = icmp eq i32 %326, 36
  br i1 %switch.i188, label %if.end56.i, label %if.else.i

if.else.i:                                        ; preds = %if.end48.i
  %327 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ps_priv.i.i, align 4
  %329 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %priv.i, align 4
  %clk_regs.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19
  %mpll_ad_func_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 5
  %331 = ptrtoint ptr %mpll_ad_func_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %mpll_ad_func_cntl.i.i, align 4
  %levels.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4
  %mclk.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11
  %333 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_storeN_noabort(i32 %333, i32 4)
  store i32 %332, ptr %mclk.i.i, align 1
  %mpll_ad_func_cntl_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 6
  %334 = ptrtoint ptr %mpll_ad_func_cntl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %mpll_ad_func_cntl_2.i.i, align 4
  %vMPLL_AD_FUNC_CNTL_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 1
  %336 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %336, i32 4)
  store i32 %335, ptr %vMPLL_AD_FUNC_CNTL_2.i.i, align 1
  %mpll_dq_func_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 7
  %337 = ptrtoint ptr %mpll_dq_func_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %mpll_dq_func_cntl.i.i, align 4
  %vMPLL_DQ_FUNC_CNTL.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 2
  %339 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i.i to i32
  call void @__asan_storeN_noabort(i32 %339, i32 4)
  store i32 %338, ptr %vMPLL_DQ_FUNC_CNTL.i.i, align 1
  %mpll_dq_func_cntl_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 8
  %340 = ptrtoint ptr %mpll_dq_func_cntl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %mpll_dq_func_cntl_2.i.i, align 4
  %vMPLL_DQ_FUNC_CNTL_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 3
  %342 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %342, i32 4)
  store i32 %341, ptr %vMPLL_DQ_FUNC_CNTL_2.i.i, align 1
  %mclk_pwrmgt_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 9
  %343 = ptrtoint ptr %mclk_pwrmgt_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %mclk_pwrmgt_cntl.i.i, align 4
  %vMCLK_PWRMGT_CNTL.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 4
  %345 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i.i to i32
  call void @__asan_storeN_noabort(i32 %345, i32 4)
  store i32 %344, ptr %vMCLK_PWRMGT_CNTL.i.i, align 1
  %dll_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 10
  %346 = ptrtoint ptr %dll_cntl.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %dll_cntl.i.i, align 4
  %vDLL_CNTL.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 5
  %348 = ptrtoint ptr %vDLL_CNTL.i.i to i32
  call void @__asan_storeN_noabort(i32 %348, i32 4)
  store i32 %347, ptr %vDLL_CNTL.i.i, align 1
  %mpll_ss1.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 11
  %349 = ptrtoint ptr %mpll_ss1.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %mpll_ss1.i.i, align 4
  %vMPLL_SS.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 6
  %351 = ptrtoint ptr %vMPLL_SS.i.i to i32
  call void @__asan_storeN_noabort(i32 %351, i32 4)
  store i32 %350, ptr %vMPLL_SS.i.i, align 1
  %mpll_ss2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 12
  %352 = ptrtoint ptr %mpll_ss2.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %mpll_ss2.i.i, align 4
  %vMPLL_SS2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 7
  %354 = ptrtoint ptr %vMPLL_SS2.i.i to i32
  call void @__asan_storeN_noabort(i32 %354, i32 4)
  store i32 %353, ptr %vMPLL_SS2.i.i, align 1
  %low.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %328, i32 0, i32 2
  %mclk37.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %328, i32 0, i32 2, i32 1
  %355 = ptrtoint ptr %mclk37.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %mclk37.i.i, align 4
  %mclk_value.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 11, i32 0, i32 8
  %357 = ptrtoint ptr %mclk_value.i.i to i32
  call void @__asan_storeN_noabort(i32 %357, i32 4)
  store i32 %356, ptr %mclk_value.i.i, align 1
  %358 = ptrtoint ptr %clk_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %clk_regs.i.i, align 4
  %sclk.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 10
  %360 = ptrtoint ptr %sclk.i.i to i32
  call void @__asan_storeN_noabort(i32 %360, i32 4)
  store i32 %359, ptr %sclk.i.i, align 1
  %cg_spll_func_cntl_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 1
  %361 = ptrtoint ptr %cg_spll_func_cntl_2.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %cg_spll_func_cntl_2.i.i, align 4
  %vCG_SPLL_FUNC_CNTL_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 10, i32 1
  %363 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %363, i32 4)
  store i32 %362, ptr %vCG_SPLL_FUNC_CNTL_2.i.i, align 1
  %cg_spll_func_cntl_3.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 2
  %364 = ptrtoint ptr %cg_spll_func_cntl_3.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %cg_spll_func_cntl_3.i.i, align 4
  %vCG_SPLL_FUNC_CNTL_3.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 10, i32 2
  %366 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i.i to i32
  call void @__asan_storeN_noabort(i32 %366, i32 4)
  store i32 %365, ptr %vCG_SPLL_FUNC_CNTL_3.i.i, align 1
  %cg_spll_spread_spectrum.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 3
  %367 = ptrtoint ptr %cg_spll_spread_spectrum.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %cg_spll_spread_spectrum.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 10, i32 3
  %369 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i to i32
  call void @__asan_storeN_noabort(i32 %369, i32 4)
  store i32 %368, ptr %vCG_SPLL_SPREAD_SPECTRUM.i.i, align 1
  %cg_spll_spread_spectrum_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 19, i32 0, i32 4
  %370 = ptrtoint ptr %cg_spll_spread_spectrum_2.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %cg_spll_spread_spectrum_2.i.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 10, i32 4
  %372 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i to i32
  call void @__asan_storeN_noabort(i32 %372, i32 4)
  store i32 %371, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i.i, align 1
  %373 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %low.i.i, align 4
  %sclk_value.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 10, i32 5
  %375 = ptrtoint ptr %sclk_value.i.i to i32
  call void @__asan_storeN_noabort(i32 %375, i32 4)
  store i32 %374, ptr %sclk_value.i.i, align 1
  %376 = ptrtoint ptr %levels.i.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 10, ptr %levels.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %328, i32 0, i32 2, i32 4
  %377 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %378, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %conv.i.i.i = select i1 %tobool.not.i.i.i, i8 6, i8 5
  %379 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 1
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %conv.i.i.i, ptr %379, align 1
  %vddc.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %328, i32 0, i32 2, i32 2
  %381 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %vddc.i.i, align 4
  %vddc84.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 12
  %383 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %priv.i, align 4
  %voltage_control.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %384, i32 0, i32 5
  %385 = ptrtoint ptr %voltage_control.i.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %voltage_control.i.i.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %386)
  %tobool.not.i1.i.i = icmp eq i8 %386, 0
  br i1 %tobool.not.i1.i.i, label %if.else.i.rv770_populate_vddc_value.exit.sink.split.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.else.i.rv770_populate_vddc_value.exit.sink.split.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit.sink.split.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.else.i
  %valid_vddc_entries.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %384, i32 0, i32 30
  %387 = ptrtoint ptr %valid_vddc_entries.i.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %valid_vddc_entries.i.i.i, align 4
  %conv.i2.i.i = zext i8 %388 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %388)
  %cmp37.not.i.i.i = icmp eq i8 %388, 0
  br i1 %cmp37.not.i.i.i, label %for.cond.preheader.i.i.i.rv770_populate_vddc_value.exit.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.rv770_populate_vddc_value.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.038.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.rv7xx_power_info, ptr %384, i32 0, i32 29, i32 %i.038.i.i.i
  %389 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %390, i16 %382)
  %cmp5.not.i.i.i = icmp ult i16 %390, %382
  br i1 %cmp5.not.i.i.i, label %for.inc.i.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vddc_index.i.i.i = getelementptr %struct.rv7xx_power_info, ptr %384, i32 0, i32 29, i32 %i.038.i.i.i, i32 1
  %391 = ptrtoint ptr %vddc_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %vddc_index.i.i.i, align 2
  br label %rv770_populate_vddc_value.exit.sink.split.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.038.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i2.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.rv770_populate_vddc_value.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i.i

for.inc.i.i.i.rv770_populate_vddc_value.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit.i.i

rv770_populate_vddc_value.exit.sink.split.i.i:    ; preds = %if.then7.i.i.i, %if.else.i.rv770_populate_vddc_value.exit.sink.split.i.i_crit_edge
  %.sink10.i.i = phi i8 [ %392, %if.then7.i.i.i ], [ 0, %if.else.i.rv770_populate_vddc_value.exit.sink.split.i.i_crit_edge ]
  %.sink9.i.i = phi i16 [ %382, %if.then7.i.i.i ], [ 0, %if.else.i.rv770_populate_vddc_value.exit.sink.split.i.i_crit_edge ]
  %index10.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 12, i32 1
  %393 = ptrtoint ptr %index10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %.sink10.i.i, ptr %index10.i.i.i, align 1
  %394 = ptrtoint ptr %vddc84.i.i to i32
  call void @__asan_storeN_noabort(i32 %394, i32 2)
  store i16 %.sink9.i.i, ptr %vddc84.i.i, align 1
  br label %rv770_populate_vddc_value.exit.i.i

rv770_populate_vddc_value.exit.i.i:               ; preds = %rv770_populate_vddc_value.exit.sink.split.i.i, %for.inc.i.i.i.rv770_populate_vddc_value.exit.i.i_crit_edge, %for.cond.preheader.i.i.i.rv770_populate_vddc_value.exit.i.i_crit_edge
  %mvdd.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 13
  %395 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %priv.i, align 4
  %s0_vid_lower_smio_cntl.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %396, i32 0, i32 20
  %397 = ptrtoint ptr %s0_vid_lower_smio_cntl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %s0_vid_lower_smio_cntl.i.i.i, align 4
  %mvdd_mask_low.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %396, i32 0, i32 22
  %399 = ptrtoint ptr %mvdd_mask_low.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %mvdd_mask_low.i.i.i, align 4
  %mvdd_low_smio.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %396, i32 0, i32 24
  %401 = ptrtoint ptr %mvdd_low_smio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %mvdd_low_smio.i.i.i, align 4
  %403 = xor i32 %402, %398
  %404 = and i32 %403, %400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %cmp.i.i.i = icmp ne i32 %404, 0
  %spec.select.i.i.i = zext i1 %cmp.i.i.i to i8
  %spec.select11.i.i.i = sext i1 %cmp.i.i.i to i16
  %405 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 13, i32 1
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %spec.select.i.i.i, ptr %405, align 1
  %407 = ptrtoint ptr %mvdd.i.i to i32
  call void @__asan_storeN_noabort(i32 %407, i32 2)
  store i16 %spec.select11.i.i.i, ptr %mvdd.i.i, align 1
  %aT.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 8
  %408 = ptrtoint ptr %aT.i.i to i32
  call void @__asan_storeN_noabort(i32 %408, i32 4)
  store i32 65535, ptr %aT.i.i, align 1
  %dsp.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 47
  %409 = ptrtoint ptr %dsp.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %dsp.i.i, align 4
  %bSP.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 9
  %411 = ptrtoint ptr %bSP.i.i to i32
  call void @__asan_storeN_noabort(i32 %411, i32 4)
  store i32 %410, ptr %bSP.i.i, align 1
  %boot_in_gen2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 4
  %412 = ptrtoint ptr %boot_in_gen2.i.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %boot_in_gen2.i.i, align 4, !range !75
  %414 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 3
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 %413, ptr %414, align 1
  %416 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %flags.i.i.i, align 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 4
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 %419, ptr %420, align 1
  %422 = ptrtoint ptr %family.i132 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %family.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %423)
  %cmp.i134.i = icmp eq i32 %423, 38
  br i1 %cmp.i134.i, label %if.then115.i.i, label %rv770_populate_vddc_value.exit.i.i.if.end56.thread.i_crit_edge

rv770_populate_vddc_value.exit.i.i.if.end56.thread.i_crit_edge: ; preds = %rv770_populate_vddc_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.thread.i

if.then115.i.i:                                   ; preds = %rv770_populate_vddc_value.exit.i.i
  %424 = ptrtoint ptr %330 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %330, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool116.not.i.i = icmp eq i8 %425, 0
  br i1 %tobool116.not.i.i, label %if.then115.i.i.if.end56.thread.i_crit_edge, label %if.then117.i.i

if.then115.i.i.if.end56.thread.i_crit_edge:       ; preds = %if.then115.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.thread.i

if.then117.i.i:                                   ; preds = %if.then115.i.i
  %426 = ptrtoint ptr %mclk37.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %mclk37.i.i, align 4
  %mclk_strobe_mode_threshold.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 41
  %428 = ptrtoint ptr %mclk_strobe_mode_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %mclk_strobe_mode_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %427, i32 %429)
  %cmp120.not.i.i = icmp ugt i32 %427, %429
  br i1 %cmp120.not.i.i, label %if.then117.i.i.if.end134.i.i_crit_edge, label %if.then121.i.i

if.then117.i.i.if.end134.i.i_crit_edge:           ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134.i.i

if.then121.i.i:                                   ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call124.i.i = call zeroext i8 @rv740_get_mclk_frequency_ratio(i32 noundef %427) #13
  %430 = or i8 %call124.i.i, 16
  br label %if.end134.i.i

if.end134.i.i:                                    ; preds = %if.then121.i.i, %if.then117.i.i.if.end134.i.i_crit_edge
  %.sink7.i.i = phi i8 [ %430, %if.then121.i.i ], [ 0, %if.then117.i.i.if.end134.i.i_crit_edge ]
  %431 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 6
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %.sink7.i.i, ptr %431, align 1
  %433 = ptrtoint ptr %mclk37.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %mclk37.i.i, align 4
  %mclk_edc_enable_threshold.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %330, i32 0, i32 42
  %435 = ptrtoint ptr %mclk_edc_enable_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %mclk_edc_enable_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %434, i32 %436)
  %cmp137.not.i.i = icmp ult i32 %434, %436
  %mcFlags147.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 0, i32 7
  %..i.i189 = select i1 %cmp137.not.i.i, i8 0, i8 3
  %437 = ptrtoint ptr %mcFlags147.i.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %..i.i189, ptr %mcFlags147.i.i, align 1
  br label %if.end56.thread.i

if.end56.thread.i:                                ; preds = %if.end134.i.i, %if.then115.i.i.if.end56.thread.i_crit_edge, %rv770_populate_vddc_value.exit.i.i.if.end56.thread.i_crit_edge
  %initialState.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7
  %arrayidx153.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 1
  %438 = call ptr @memcpy(ptr %arrayidx153.i.i, ptr %levels.i.i, i32 92)
  %arrayidx159.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7, i32 4, i32 2
  %439 = call ptr @memcpy(ptr %arrayidx159.i.i, ptr %levels.i.i, i32 92)
  %440 = ptrtoint ptr %initialState.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %initialState.i.i, align 1
  %442 = or i8 %441, 1
  store i8 %442, ptr %initialState.i.i, align 1
  br label %if.end59.i

if.end56.i:                                       ; preds = %if.end48.i
  %call54.i = call i32 @rv730_populate_smc_initial_state(ptr noundef %rdev, ptr noundef %3, ptr noundef %smc_statetable.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool57.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool57.not.i, label %if.end56.i.if.end59.i_crit_edge, label %if.end56.i.if.then39_crit_edge

if.end56.i.if.then39_crit_edge:                   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

if.end56.i.if.end59.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end56.i.if.end59.i_crit_edge, %if.end56.thread.i
  %443 = ptrtoint ptr %family.i132 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load i32, ptr %family.i132, align 4
  %445 = zext i32 %444 to i64
  call void @__sanitizer_cov_trace_switch(i64 %445, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %444, label %if.else75.i [
    i32 38, label %if.then63.i
    i32 36, label %if.end59.i.if.then73.i_crit_edge
    i32 37, label %if.end59.i.if.then73.i_crit_edge240
  ]

if.end59.i.if.then73.i_crit_edge240:              ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then73.i

if.end59.i.if.then73.i_crit_edge:                 ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then73.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #15
  %call64.i = call i32 @rv740_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %smc_statetable.i) #13
  br label %if.end78.i

if.then73.i:                                      ; preds = %if.end59.i.if.then73.i_crit_edge, %if.end59.i.if.then73.i_crit_edge240
  %call74.i = call i32 @rv730_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %smc_statetable.i) #13
  br label %if.end78.i

if.else75.i:                                      ; preds = %if.end59.i
  %446 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %priv.i, align 4
  %clk_regs.i136.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19
  %mpll_ad_func_cntl1.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19, i32 0, i32 5
  %448 = ptrtoint ptr %mpll_ad_func_cntl1.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %mpll_ad_func_cntl1.i.i, align 4
  %mpll_ad_func_cntl_23.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19, i32 0, i32 6
  %450 = ptrtoint ptr %mpll_ad_func_cntl_23.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %mpll_ad_func_cntl_23.i.i, align 4
  %mpll_dq_func_cntl5.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19, i32 0, i32 7
  %452 = ptrtoint ptr %mpll_dq_func_cntl5.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %mpll_dq_func_cntl5.i.i, align 4
  %mpll_dq_func_cntl_27.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19, i32 0, i32 8
  %454 = ptrtoint ptr %mpll_dq_func_cntl_27.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %mpll_dq_func_cntl_27.i.i, align 4
  %456 = ptrtoint ptr %clk_regs.i136.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %clk_regs.i136.i, align 4
  %cg_spll_func_cntl_2.i137.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19, i32 0, i32 1
  %458 = ptrtoint ptr %cg_spll_func_cntl_2.i137.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %cg_spll_func_cntl_2.i137.i, align 4
  %cg_spll_func_cntl_3.i138.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 19, i32 0, i32 2
  %460 = ptrtoint ptr %cg_spll_func_cntl_3.i138.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %cg_spll_func_cntl_3.i138.i, align 4
  %ACPIState.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8
  %initialState.i139.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7
  %462 = call ptr @memcpy(ptr %ACPIState.i.i, ptr %initialState.i139.i, i32 280)
  %463 = ptrtoint ptr %ACPIState.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %ACPIState.i.i, align 1
  %465 = and i8 %464, -2
  store i8 %465, ptr %ACPIState.i.i, align 1
  %acpi_vddc.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 36
  %466 = ptrtoint ptr %acpi_vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %466)
  %467 = load i16, ptr %acpi_vddc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %467)
  %tobool.not.i140.i = icmp eq i16 %467, 0
  br i1 %tobool.not.i140.i, label %if.else45.i.i, label %if.then.i144.i

if.then.i144.i:                                   ; preds = %if.else75.i
  %vddc.i141.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 12
  %468 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %priv.i, align 4
  %voltage_control.i.i142.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %469, i32 0, i32 5
  %470 = ptrtoint ptr %voltage_control.i.i142.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %voltage_control.i.i142.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %471)
  %tobool.not.i.i143.i = icmp eq i8 %471, 0
  br i1 %tobool.not.i.i143.i, label %if.then.i144.i.rv770_populate_vddc_value.exit.sink.split.i159.i_crit_edge, label %for.cond.preheader.i.i148.i

if.then.i144.i.rv770_populate_vddc_value.exit.sink.split.i159.i_crit_edge: ; preds = %if.then.i144.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit.sink.split.i159.i

for.cond.preheader.i.i148.i:                      ; preds = %if.then.i144.i
  %valid_vddc_entries.i.i145.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %469, i32 0, i32 30
  %472 = ptrtoint ptr %valid_vddc_entries.i.i145.i to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %valid_vddc_entries.i.i145.i, align 4
  %conv.i.i146.i = zext i8 %473 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %473)
  %cmp37.not.i.i147.i = icmp eq i8 %473, 0
  br i1 %cmp37.not.i.i147.i, label %for.cond.preheader.i.i148.i.rv770_populate_vddc_value.exit.i160.i_crit_edge, label %for.cond.preheader.i.i148.i.for.body.i.i152.i_crit_edge

for.cond.preheader.i.i148.i.for.body.i.i152.i_crit_edge: ; preds = %for.cond.preheader.i.i148.i
  br label %for.body.i.i152.i

for.cond.preheader.i.i148.i.rv770_populate_vddc_value.exit.i160.i_crit_edge: ; preds = %for.cond.preheader.i.i148.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit.i160.i

for.body.i.i152.i:                                ; preds = %for.inc.i.i157.i.for.body.i.i152.i_crit_edge, %for.cond.preheader.i.i148.i.for.body.i.i152.i_crit_edge
  %i.038.i.i149.i = phi i32 [ %inc.i.i155.i, %for.inc.i.i157.i.for.body.i.i152.i_crit_edge ], [ 0, %for.cond.preheader.i.i148.i.for.body.i.i152.i_crit_edge ]
  %arrayidx.i.i150.i = getelementptr %struct.rv7xx_power_info, ptr %469, i32 0, i32 29, i32 %i.038.i.i149.i
  %474 = ptrtoint ptr %arrayidx.i.i150.i to i32
  call void @__asan_load2_noabort(i32 %474)
  %475 = load i16, ptr %arrayidx.i.i150.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %475, i16 %467)
  %cmp5.not.i.i151.i = icmp ult i16 %475, %467
  br i1 %cmp5.not.i.i151.i, label %for.inc.i.i157.i, label %if.then7.i.i154.i

if.then7.i.i154.i:                                ; preds = %for.body.i.i152.i
  call void @__sanitizer_cov_trace_pc() #15
  %vddc_index.i.i153.i = getelementptr %struct.rv7xx_power_info, ptr %469, i32 0, i32 29, i32 %i.038.i.i149.i, i32 1
  %476 = ptrtoint ptr %vddc_index.i.i153.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %vddc_index.i.i153.i, align 2
  br label %rv770_populate_vddc_value.exit.sink.split.i159.i

for.inc.i.i157.i:                                 ; preds = %for.body.i.i152.i
  %inc.i.i155.i = add nuw nsw i32 %i.038.i.i149.i, 1
  %exitcond.not.i.i156.i = icmp eq i32 %inc.i.i155.i, %conv.i.i146.i
  br i1 %exitcond.not.i.i156.i, label %for.inc.i.i157.i.rv770_populate_vddc_value.exit.i160.i_crit_edge, label %for.inc.i.i157.i.for.body.i.i152.i_crit_edge

for.inc.i.i157.i.for.body.i.i152.i_crit_edge:     ; preds = %for.inc.i.i157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i152.i

for.inc.i.i157.i.rv770_populate_vddc_value.exit.i160.i_crit_edge: ; preds = %for.inc.i.i157.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit.i160.i

rv770_populate_vddc_value.exit.sink.split.i159.i: ; preds = %if.then7.i.i154.i, %if.then.i144.i.rv770_populate_vddc_value.exit.sink.split.i159.i_crit_edge
  %.sink38.i.i = phi i8 [ %477, %if.then7.i.i154.i ], [ 0, %if.then.i144.i.rv770_populate_vddc_value.exit.sink.split.i159.i_crit_edge ]
  %.sink37.i.i = phi i16 [ %467, %if.then7.i.i154.i ], [ 0, %if.then.i144.i.rv770_populate_vddc_value.exit.sink.split.i159.i_crit_edge ]
  %index10.i.i158.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 12, i32 1
  %478 = ptrtoint ptr %index10.i.i158.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %.sink38.i.i, ptr %index10.i.i158.i, align 1
  %479 = ptrtoint ptr %vddc.i141.i to i32
  call void @__asan_storeN_noabort(i32 %479, i32 2)
  store i16 %.sink37.i.i, ptr %vddc.i141.i, align 1
  br label %rv770_populate_vddc_value.exit.i160.i

rv770_populate_vddc_value.exit.i160.i:            ; preds = %rv770_populate_vddc_value.exit.sink.split.i159.i, %for.inc.i.i157.i.rv770_populate_vddc_value.exit.i160.i_crit_edge, %for.cond.preheader.i.i148.i.rv770_populate_vddc_value.exit.i160.i_crit_edge
  %pcie_gen2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 1
  %480 = ptrtoint ptr %pcie_gen2.i.i to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %pcie_gen2.i.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %481)
  %tobool16.not.i.i = icmp eq i8 %481, 0
  br i1 %tobool16.not.i.i, label %if.else27.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %rv770_populate_vddc_value.exit.i160.i
  %acpi_pcie_gen2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 3
  %482 = ptrtoint ptr %acpi_pcie_gen2.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %acpi_pcie_gen2.i.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %tobool18.not.i.i = icmp eq i8 %483, 0
  %gen2PCIE26.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 3
  br i1 %tobool18.not.i.i, label %if.else.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %484 = ptrtoint ptr %gen2PCIE26.i.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 1, ptr %gen2PCIE26.i.i, align 1
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %485 = ptrtoint ptr %gen2PCIE26.i.i to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 0, ptr %gen2PCIE26.i.i, align 1
  br label %if.end32.i.i

if.else27.i.i:                                    ; preds = %rv770_populate_vddc_value.exit.i160.i
  call void @__sanitizer_cov_trace_pc() #15
  %gen2PCIE31.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 3
  %486 = ptrtoint ptr %gen2PCIE31.i.i to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 0, ptr %gen2PCIE31.i.i, align 1
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else27.i.i, %if.else.i.i, %if.then19.i.i
  %acpi_pcie_gen233.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 3
  %487 = ptrtoint ptr %acpi_pcie_gen233.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %acpi_pcie_gen233.i.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %tobool34.not.i.i = icmp eq i8 %488, 0
  %gen2XSP43.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 4
  br i1 %tobool34.not.i.i, label %if.else39.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %489 = ptrtoint ptr %gen2XSP43.i.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 1, ptr %gen2XSP43.i.i, align 1
  br label %if.end78.thread.i

if.else39.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %490 = ptrtoint ptr %gen2XSP43.i.i to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 0, ptr %gen2XSP43.i.i, align 1
  br label %if.end78.thread.i

if.else45.i.i:                                    ; preds = %if.else75.i
  %min_vddc_in_table.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %447, i32 0, i32 27
  %491 = ptrtoint ptr %min_vddc_in_table.i.i to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %min_vddc_in_table.i.i, align 4
  %vddc49.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 12
  %493 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %priv.i, align 4
  %voltage_control.i2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %494, i32 0, i32 5
  %495 = ptrtoint ptr %voltage_control.i2.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %voltage_control.i2.i.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool.not.i3.i.i = icmp eq i8 %496, 0
  br i1 %tobool.not.i3.i.i, label %if.else45.i.i.rv770_populate_vddc_value.exit26.sink.split.i.i_crit_edge, label %for.cond.preheader.i7.i.i

if.else45.i.i.rv770_populate_vddc_value.exit26.sink.split.i.i_crit_edge: ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit26.sink.split.i.i

for.cond.preheader.i7.i.i:                        ; preds = %if.else45.i.i
  %valid_vddc_entries.i4.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %494, i32 0, i32 30
  %497 = ptrtoint ptr %valid_vddc_entries.i4.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %valid_vddc_entries.i4.i.i, align 4
  %conv.i5.i.i = zext i8 %498 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %498)
  %cmp37.not.i6.i.i = icmp eq i8 %498, 0
  br i1 %cmp37.not.i6.i.i, label %for.cond.preheader.i7.i.i.rv770_populate_vddc_value.exit26.i.i_crit_edge, label %for.cond.preheader.i7.i.i.for.body.i13.i.i_crit_edge

for.cond.preheader.i7.i.i.for.body.i13.i.i_crit_edge: ; preds = %for.cond.preheader.i7.i.i
  br label %for.body.i13.i.i

for.cond.preheader.i7.i.i.rv770_populate_vddc_value.exit26.i.i_crit_edge: ; preds = %for.cond.preheader.i7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit26.i.i

for.body.i13.i.i:                                 ; preds = %for.inc.i19.i.i.for.body.i13.i.i_crit_edge, %for.cond.preheader.i7.i.i.for.body.i13.i.i_crit_edge
  %i.038.i10.i.i = phi i32 [ %inc.i17.i.i, %for.inc.i19.i.i.for.body.i13.i.i_crit_edge ], [ 0, %for.cond.preheader.i7.i.i.for.body.i13.i.i_crit_edge ]
  %arrayidx.i11.i.i = getelementptr %struct.rv7xx_power_info, ptr %494, i32 0, i32 29, i32 %i.038.i10.i.i
  %499 = ptrtoint ptr %arrayidx.i11.i.i to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %arrayidx.i11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %500, i16 %492)
  %cmp5.not.i12.i.i = icmp ult i16 %500, %492
  br i1 %cmp5.not.i12.i.i, label %for.inc.i19.i.i, label %if.then7.i16.i.i

if.then7.i16.i.i:                                 ; preds = %for.body.i13.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %vddc_index.i14.i.i = getelementptr %struct.rv7xx_power_info, ptr %494, i32 0, i32 29, i32 %i.038.i10.i.i, i32 1
  %501 = ptrtoint ptr %vddc_index.i14.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %vddc_index.i14.i.i, align 2
  br label %rv770_populate_vddc_value.exit26.sink.split.i.i

for.inc.i19.i.i:                                  ; preds = %for.body.i13.i.i
  %inc.i17.i.i = add nuw nsw i32 %i.038.i10.i.i, 1
  %exitcond.not.i18.i.i = icmp eq i32 %inc.i17.i.i, %conv.i5.i.i
  br i1 %exitcond.not.i18.i.i, label %for.inc.i19.i.i.rv770_populate_vddc_value.exit26.i.i_crit_edge, label %for.inc.i19.i.i.for.body.i13.i.i_crit_edge

for.inc.i19.i.i.for.body.i13.i.i_crit_edge:       ; preds = %for.inc.i19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i13.i.i

for.inc.i19.i.i.rv770_populate_vddc_value.exit26.i.i_crit_edge: ; preds = %for.inc.i19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_vddc_value.exit26.i.i

rv770_populate_vddc_value.exit26.sink.split.i.i:  ; preds = %if.then7.i16.i.i, %if.else45.i.i.rv770_populate_vddc_value.exit26.sink.split.i.i_crit_edge
  %.sink40.i.i = phi i8 [ %502, %if.then7.i16.i.i ], [ 0, %if.else45.i.i.rv770_populate_vddc_value.exit26.sink.split.i.i_crit_edge ]
  %.sink39.i.i = phi i16 [ %492, %if.then7.i16.i.i ], [ 0, %if.else45.i.i.rv770_populate_vddc_value.exit26.sink.split.i.i_crit_edge ]
  %index10.i15.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 12, i32 1
  %503 = ptrtoint ptr %index10.i15.i.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 %.sink40.i.i, ptr %index10.i15.i.i, align 1
  %504 = ptrtoint ptr %vddc49.i.i to i32
  call void @__asan_storeN_noabort(i32 %504, i32 2)
  store i16 %.sink39.i.i, ptr %vddc49.i.i, align 1
  br label %rv770_populate_vddc_value.exit26.i.i

rv770_populate_vddc_value.exit26.i.i:             ; preds = %rv770_populate_vddc_value.exit26.sink.split.i.i, %for.inc.i19.i.i.rv770_populate_vddc_value.exit26.i.i_crit_edge, %for.cond.preheader.i7.i.i.rv770_populate_vddc_value.exit26.i.i_crit_edge
  %gen2PCIE54.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 3
  %505 = ptrtoint ptr %gen2PCIE54.i.i to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %gen2PCIE54.i.i, align 1
  br label %if.end78.thread.i

if.end78.thread.i:                                ; preds = %rv770_populate_vddc_value.exit26.i.i, %if.else39.i.i, %if.then35.i.i
  %or.i161.i = or i32 %451, 50331648
  %or56.i.i = or i32 %455, 50331648
  %or57.i.i = or i32 %457, 11
  %and58.i.i = and i32 %459, -512
  %or59.i.i = or i32 %and58.i.i, 4
  %mclk.i162.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11
  %506 = ptrtoint ptr %mclk.i162.i to i32
  call void @__asan_storeN_noabort(i32 %506, i32 4)
  store i32 %449, ptr %mclk.i162.i, align 1
  %vMPLL_AD_FUNC_CNTL_2.i163.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11, i32 0, i32 1
  %507 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2.i163.i to i32
  call void @__asan_storeN_noabort(i32 %507, i32 4)
  store i32 %or.i161.i, ptr %vMPLL_AD_FUNC_CNTL_2.i163.i, align 1
  %vMPLL_DQ_FUNC_CNTL.i164.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11, i32 0, i32 2
  %508 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i164.i to i32
  call void @__asan_storeN_noabort(i32 %508, i32 4)
  store i32 %453, ptr %vMPLL_DQ_FUNC_CNTL.i164.i, align 1
  %vMPLL_DQ_FUNC_CNTL_2.i165.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11, i32 0, i32 3
  %509 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2.i165.i to i32
  call void @__asan_storeN_noabort(i32 %509, i32 4)
  store i32 %or56.i.i, ptr %vMPLL_DQ_FUNC_CNTL_2.i165.i, align 1
  %vMCLK_PWRMGT_CNTL.i166.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11, i32 0, i32 4
  %510 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i166.i to i32
  call void @__asan_storeN_noabort(i32 %510, i32 4)
  store i32 16711680, ptr %vMCLK_PWRMGT_CNTL.i166.i, align 1
  %vDLL_CNTL.i167.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11, i32 0, i32 5
  %511 = ptrtoint ptr %vDLL_CNTL.i167.i to i32
  call void @__asan_storeN_noabort(i32 %511, i32 4)
  store i32 -16777216, ptr %vDLL_CNTL.i167.i, align 1
  %mclk_value.i168.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 11, i32 0, i32 8
  %512 = ptrtoint ptr %mclk_value.i168.i to i32
  call void @__asan_storeN_noabort(i32 %512, i32 4)
  store i32 0, ptr %mclk_value.i168.i, align 1
  %sclk.i169.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 10
  %513 = ptrtoint ptr %sclk.i169.i to i32
  call void @__asan_storeN_noabort(i32 %513, i32 4)
  store i32 %or57.i.i, ptr %sclk.i169.i, align 1
  %vCG_SPLL_FUNC_CNTL_2.i170.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 10, i32 1
  %514 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i170.i to i32
  call void @__asan_storeN_noabort(i32 %514, i32 4)
  store i32 %or59.i.i, ptr %vCG_SPLL_FUNC_CNTL_2.i170.i, align 1
  %vCG_SPLL_FUNC_CNTL_3.i171.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 10, i32 2
  %515 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i171.i to i32
  call void @__asan_storeN_noabort(i32 %515, i32 4)
  store i32 %461, ptr %vCG_SPLL_FUNC_CNTL_3.i171.i, align 1
  %sclk_value.i172.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 10, i32 5
  %516 = ptrtoint ptr %sclk_value.i172.i to i32
  call void @__asan_storeN_noabort(i32 %516, i32 4)
  store i32 0, ptr %sclk_value.i172.i, align 1
  %517 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %priv.i, align 4
  %mvdd_control.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %518, i32 0, i32 6
  %519 = ptrtoint ptr %mvdd_control.i.i.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %mvdd_control.i.i.i, align 2, !range !75
  %521 = xor i8 %520, 1
  %sext.i.i = add nsw i8 %520, -1
  %spec.select41.i.i = sext i8 %sext.i.i to i16
  %522 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 13, i32 1
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %521, ptr %522, align 1
  %mvdd.i173.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 0, i32 13
  %levels61.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4
  %524 = ptrtoint ptr %mvdd.i173.i to i32
  call void @__asan_storeN_noabort(i32 %524, i32 2)
  store i16 %spec.select41.i.i, ptr %mvdd.i173.i, align 1
  %arrayidx108.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 1
  %525 = call ptr @memcpy(ptr %arrayidx108.i.i, ptr %levels61.i.i, i32 92)
  %arrayidx114.i.i = getelementptr %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 8, i32 4, i32 2
  %526 = call ptr @memcpy(ptr %arrayidx114.i.i, ptr %levels61.i.i, i32 92)
  br label %rv770_init_smc_table.exit

if.end78.i:                                       ; preds = %if.then73.i, %if.then63.i
  %ret.1.i = phi i32 [ %call64.i, %if.then63.i ], [ %call74.i, %if.then73.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool79.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool79.not.i, label %if.end78.i.rv770_init_smc_table.exit_crit_edge, label %if.end78.i.if.then39_crit_edge

if.end78.i.if.then39_crit_edge:                   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

if.end78.i.rv770_init_smc_table.exit_crit_edge:   ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_init_smc_table.exit

rv770_init_smc_table.exit:                        ; preds = %if.end78.i.rv770_init_smc_table.exit_crit_edge, %if.end78.thread.i
  %driverState.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 9
  %initialState.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 60, i32 7
  %527 = call ptr @memcpy(ptr %driverState.i, ptr %initialState.i, i32 280)
  %state_table_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 57
  %528 = ptrtoint ptr %state_table_start.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %state_table_start.i, align 4
  %sram_end.i190 = getelementptr inbounds %struct.rv7xx_power_info, ptr %244, i32 0, i32 59
  %530 = ptrtoint ptr %sram_end.i190 to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %sram_end.i190, align 4
  %call82.i = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %529, ptr noundef %smc_statetable.i, i16 noundef zeroext 1304, i16 noundef zeroext %531) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool38.not = icmp eq i32 %call82.i, 0
  br i1 %tobool38.not, label %if.end40, label %rv770_init_smc_table.exit.if.then39_crit_edge

rv770_init_smc_table.exit.if.then39_crit_edge:    ; preds = %rv770_init_smc_table.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

if.then39:                                        ; preds = %rv770_init_smc_table.exit.if.then39_crit_edge, %if.end78.i.if.then39_crit_edge, %if.end56.i.if.then39_crit_edge
  %retval.0.i191221 = phi i32 [ %call82.i, %rv770_init_smc_table.exit.if.then39_crit_edge ], [ %ret.1.i, %if.end78.i.if.then39_crit_edge ], [ %call54.i, %if.end56.i.if.then39_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #13
  br label %cleanup

if.end40:                                         ; preds = %rv770_init_smc_table.exit
  %voltage_response_time1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %532 = ptrtoint ptr %voltage_response_time1.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %voltage_response_time1.i, align 4
  %backbias_response_time4.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %534 = ptrtoint ptr %backbias_response_time4.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %backbias_response_time4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %cmp.i192 = icmp eq i32 %533, 0
  %spec.store.select.i = select i1 %cmp.i192, i32 1000, i32 %533
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %535)
  %cmp5.i = icmp eq i32 %535, 0
  %spec.store.select18.i = select i1 %cmp5.i, i32 1000, i32 %535
  %536 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %asic.i, align 8
  %get_xclk.i194 = getelementptr inbounds %struct.radeon_asic, ptr %537, i32 0, i32 9
  %538 = ptrtoint ptr %get_xclk.i194 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %get_xclk.i194, align 4
  %call.i = call i32 %539(ptr noundef %rdev) #13
  %mul.i195 = mul i32 %call.i, %spec.store.select.i
  %div.i196 = udiv i32 %mul.i195, 1600
  %mul8.i = mul i32 %call.i, %spec.store.select18.i
  %div9.i = udiv i32 %mul8.i, 1600
  %mul10.i = mul i32 %call.i, 15000
  %div11.i = udiv i32 %mul10.i, 1600
  %mul12.i = mul i32 %call.i, 100000
  %div13.i = udiv i32 %mul12.i, 1600
  %540 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %priv.i, align 4
  %soft_regs_start.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %541, i32 0, i32 58
  %542 = ptrtoint ptr %soft_regs_start.i.i to i32
  call void @__asan_load2_noabort(i32 %542)
  %543 = load i16, ptr %soft_regs_start.i.i, align 2
  %add.i.i = add i16 %543, 16
  %sram_end.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %541, i32 0, i32 59
  %544 = ptrtoint ptr %sram_end.i.i to i32
  call void @__asan_load2_noabort(i32 %544)
  %545 = load i16, ptr %sram_end.i.i, align 4
  %call3.i.i = call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add.i.i, i32 noundef %div.i196, i16 noundef zeroext %545) #13
  %546 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %priv.i, align 4
  %soft_regs_start.i32.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %547, i32 0, i32 58
  %548 = ptrtoint ptr %soft_regs_start.i32.i to i32
  call void @__asan_load2_noabort(i32 %548)
  %549 = load i16, ptr %soft_regs_start.i32.i, align 2
  %add.i33.i = add i16 %549, 12
  %sram_end.i34.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %547, i32 0, i32 59
  %550 = ptrtoint ptr %sram_end.i34.i to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %sram_end.i34.i, align 4
  %call3.i35.i = call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add.i33.i, i32 noundef %div9.i, i16 noundef zeroext %551) #13
  %552 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %priv.i, align 4
  %soft_regs_start.i37.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %553, i32 0, i32 58
  %554 = ptrtoint ptr %soft_regs_start.i37.i to i32
  call void @__asan_load2_noabort(i32 %554)
  %555 = load i16, ptr %soft_regs_start.i37.i, align 2
  %add.i38.i = add i16 %555, 44
  %sram_end.i39.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %553, i32 0, i32 59
  %556 = ptrtoint ptr %sram_end.i39.i to i32
  call void @__asan_load2_noabort(i32 %556)
  %557 = load i16, ptr %sram_end.i39.i, align 4
  %call3.i40.i = call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add.i38.i, i32 noundef %div11.i, i16 noundef zeroext %557) #13
  %558 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %priv.i, align 4
  %soft_regs_start.i42.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %559, i32 0, i32 58
  %560 = ptrtoint ptr %soft_regs_start.i42.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %soft_regs_start.i42.i, align 2
  %sram_end.i43.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %559, i32 0, i32 59
  %562 = ptrtoint ptr %sram_end.i43.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %sram_end.i43.i, align 4
  %call3.i44.i = call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %561, i32 noundef %div13.i, i16 noundef zeroext %563) #13
  call void @rv770_start_smc(ptr noundef %rdev) #13
  call void @rv770_start_smc_clock(ptr noundef %rdev) #13
  %564 = ptrtoint ptr %family.i132 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %family.i132, align 4
  %566 = and i32 %565, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %566)
  %switch = icmp eq i32 %566, 36
  br i1 %switch, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  call void @rv730_start_dpm(ptr noundef %rdev) #13
  br label %if.end44

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %567 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i199 = getelementptr i8, ptr %568, i32 1604
  %569 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i199) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %570 = and i32 %569, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %571 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %572, i32 1604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %570) #13, !srcloc !74
  %573 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %574, i32 1608
  %575 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %576 = and i32 %575, -536870913
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %577 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %578, i32 1608
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %576) #13, !srcloc !74
  %579 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %580, i32 1596
  %581 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %582 = or i32 %581, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %583 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %584, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %582) #13, !srcloc !74
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then43
  %585 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %gfx_clock_gating, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %586)
  %tobool46.not = icmp eq i8 %586, 0
  br i1 %tobool46.not, label %if.end44.if.end48_crit_edge, label %if.then47

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %587 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %588, i32 1604
  %589 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i201) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %590 = or i32 %589, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %591 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i37.i202 = getelementptr i8, ptr %592, i32 1604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i202, i32 %590) #13, !srcloc !74
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end44.if.end48_crit_edge
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 11
  %593 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %mg_clock_gating, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool49.not = icmp eq i8 %594, 0
  br i1 %tobool49.not, label %if.end48.if.end51_crit_edge, label %if.then50

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then50:                                        ; preds = %if.end48
  %595 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %priv.i, align 4
  %597 = ptrtoint ptr %family.i132 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %family.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %598)
  %cmp.i207 = icmp eq i32 %598, 35
  %..i = select i1 %cmp.i207, i32 4096, i32 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %599 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i.i209 = getelementptr i8, ptr %600, i32 2000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i209, i32 %..i) #13, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %601 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %602, i32 2004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 65535) #13, !srcloc !74
  %mgcgtssm.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %596, i32 0, i32 12
  %603 = ptrtoint ptr %mgcgtssm.i to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %mgcgtssm.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %604)
  %tobool2.not.i = icmp eq i8 %604, 0
  br i1 %tobool2.not.i, label %if.then50.if.end51_crit_edge, label %if.then3.i

if.then50.if.end51_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then3.i:                                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %605 = ptrtoint ptr %rmmio.i.i100 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %rmmio.i.i100, align 4
  %add.ptr.i20.i211 = getelementptr i8, ptr %606, i32 37200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i211, i32 37973) #13, !srcloc !74
  br label %if.end51

if.end51:                                         ; preds = %if.then3.i, %if.then50.if.end51_crit_edge, %if.end48.if.end51_crit_edge
  %607 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %priv.i, align 4
  %active_auto_throttle_sources.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %608, i32 0, i32 39
  %609 = ptrtoint ptr %active_auto_throttle_sources.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load i32, ptr %active_auto_throttle_sources.i, align 4
  %and.i213 = and i32 %610, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213)
  %tobool1.not.i214 = icmp eq i32 %and.i213, 0
  br i1 %tobool1.not.i214, label %if.then2.i, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then2.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  %or.i216 = or i32 %610, 1
  %611 = ptrtoint ptr %active_auto_throttle_sources.i to i32
  call void @__asan_store4_noabort(i32 %611)
  store i32 %or.i216, ptr %active_auto_throttle_sources.i, align 4
  call fastcc void @rv770_set_dpm_event_sources(ptr noundef %rdev, i32 noundef %or.i216) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end51.cleanup_crit_edge, %if.then39, %if.then35, %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ %call1.i176, %if.then35 ], [ %retval.0.i191221, %if.then39 ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_start_dpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_late_enable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %land.lhs.true

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup12

land.lhs.true:                                    ; preds = %entry
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %2 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_thermal_type, align 4
  %call = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %3) #13
  br i1 %call, label %if.then, label %land.lhs.true.cleanup12_crit_edge

land.lhs.true.cleanup12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup12

if.then:                                          ; preds = %land.lhs.true
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1844
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %7 = and i32 %6, -16711681
  %8 = or i32 %7, 7864320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %9 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 1844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %8) #13, !srcloc !74
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %12, i32 1844
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %14 = and i32 %13, -65281
  %15 = or i32 %14, 23040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %17, i32 1844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %15) #13, !srcloc !74
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %19, i32 1836
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %21 = and i32 %20, -12599041
  %22 = or i32 %21, 7680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %24, i32 1836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %22) #13, !srcloc !74
  %min_temp28.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 1
  %25 = ptrtoint ptr %min_temp28.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 90000, ptr %min_temp28.i, align 4
  %max_temp32.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 2
  %26 = ptrtoint ptr %max_temp32.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 120000, ptr %max_temp32.i, align 4
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %27 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %28 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %asic, align 8
  %irq5 = getelementptr inbounds %struct.radeon_asic, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq5, align 4
  %call6 = tail call i32 %31(ptr noundef %rdev) #13
  %call7 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 22) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call7)
  %cmp.not = icmp eq i8 %call7, 1
  br i1 %cmp.not, label %if.then.cleanup12_crit_edge, label %if.then9

if.then.cleanup12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #13
  br label %cleanup12

cleanup12:                                        ; preds = %if.then9, %if.then.cleanup12_crit_edge, %land.lhs.true.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_dpm_disable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1596
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.not = icmp eq i32 %5, 0
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %7, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 0) #13, !srcloc !74
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %thermal_protection, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %11, i32 1596
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %13 = or i32 %12, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %15, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %13) #13, !srcloc !74
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %17, i32 1936
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %21, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %19) #13, !srcloc !74
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %23, i32 1596
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %25 = and i32 %24, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %27, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %25) #13, !srcloc !74
  %28 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %29, i32 1944
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %31 = and i32 %30, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %33, i32 1944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %31) #13, !srcloc !74
  %family30.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %34 = ptrtoint ptr %family30.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %family30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %35)
  %cmp31.i = icmp eq i32 %35, 38
  br i1 %cmp31.i, label %if.end34.sink.split.i, label %if.end3.rv770_enable_spread_spectrum.exit_crit_edge

if.end3.rv770_enable_spread_spectrum.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_enable_spread_spectrum.exit

if.end34.sink.split.i:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rv740_enable_mclk_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext false) #13
  br label %rv770_enable_spread_spectrum.exit

rv770_enable_spread_spectrum.exit:                ; preds = %if.end34.sink.split.i, %if.end3.rv770_enable_spread_spectrum.exit_crit_edge
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool4.not = icmp eq i8 %37, 0
  br i1 %tobool4.not, label %rv770_enable_spread_spectrum.exit.if.end6_crit_edge, label %if.then5

rv770_enable_spread_spectrum.exit.if.end6_crit_edge: ; preds = %rv770_enable_spread_spectrum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %rv770_enable_spread_spectrum.exit
  %38 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv.i, align 4
  %pciep_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %40 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call1.i.i = tail call i32 %41(ptr noundef %rdev, i32 noundef 164) #13
  %boot_in_gen2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %39, i32 0, i32 4
  %42 = ptrtoint ptr %boot_in_gen2.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %boot_in_gen2.i.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i.i = icmp eq i8 %43, 0
  %and6.i.i = and i32 %call1.i.i, -12290
  %spec.select.i.i = select i1 %tobool3.not.i.i, i32 %and6.i.i, i32 %call1.i.i
  %44 = and i32 %spec.select.i.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %if.then5.rv770_enable_dynamic_pcie_gen2.exit_crit_edge, label %if.then12.i.i

if.then5.rv770_enable_dynamic_pcie_gen2.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_enable_dynamic_pcie_gen2.exit

if.then12.i.i:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  %pciep_wreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %46 = ptrtoint ptr %pciep_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pciep_wreg.i.i, align 8
  tail call void %47(ptr noundef %rdev, i32 noundef 164, i32 noundef %spec.select.i.i) #13
  br label %rv770_enable_dynamic_pcie_gen2.exit

rv770_enable_dynamic_pcie_gen2.exit:              ; preds = %if.then12.i.i, %if.then5.rv770_enable_dynamic_pcie_gen2.exit_crit_edge
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %49, i32 1596
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %51 = and i32 %50, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %53, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %51) #13, !srcloc !74
  br label %if.end6

if.end6:                                          ; preds = %rv770_enable_dynamic_pcie_gen2.exit, %rv770_enable_spread_spectrum.exit.if.end6_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %irq, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool7.not = icmp eq i8 %55, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %56 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %int_thermal_type, align 4
  %call8 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %57) #13
  br i1 %call8, label %if.then9, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %58 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %59 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %asic, align 8
  %irq11 = getelementptr inbounds %struct.radeon_asic, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %irq11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %irq11, align 4
  %call12 = tail call i32 %62(ptr noundef %rdev) #13
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 10
  %63 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %gfx_clock_gating, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool14.not = icmp eq i8 %64, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %66, i32 1604
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13
  %68 = and i32 %67, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %70, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %68) #13, !srcloc !74
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %72, i32 1604
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %74 = or i32 %73, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %75 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %76, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %74) #13, !srcloc !74
  %77 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %78, i32 1604
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %80 = and i32 %79, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %81 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %82, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 %80) #13, !srcloc !74
  %83 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %84, i32 39152
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 11
  %86 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %mg_clock_gating, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool17.not = icmp eq i8 %87, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %88 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i24.i53 = getelementptr i8, ptr %89, i32 2000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i53, i32 -1) #13, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %90 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %91, i32 2004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 -3145729) #13, !srcloc !74
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %92 = ptrtoint ptr %family30.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %family30.i, align 4
  %94 = and i32 %93, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %94)
  %switch = icmp eq i32 %94, 36
  br i1 %switch, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rv730_stop_dpm(ptr noundef %rdev) #13
  br label %if.end23

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rv770_stop_dpm(ptr noundef %rdev)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then22
  tail call void @rv770_reset_smc(ptr noundef %rdev) #13
  tail call void @rv770_stop_smc_clock(ptr noundef %rdev) #13
  tail call void @rv770_reset_smio_status(ptr noundef %rdev)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_stop_dpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %state.i = alloca %struct.RV770_SMC_SWSTATE, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %2 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requested_ps, align 4
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %4 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_ps, align 4
  %call.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 65) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i)
  %cmp.not.i = icmp eq i8 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call2.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 21) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call2.i)
  %cmp4.not.i = icmp eq i8 %call2.i, 1
  br i1 %cmp4.not.i, label %if.end, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps_priv.i.i, align 4
  %ps_priv.i21.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps_priv.i21.i, align 4
  %vclk.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vclk.i, align 4
  %vclk2.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp eq i32 %11, %13
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end.i60_crit_edge

if.end.if.end.i60_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i60

land.lhs.true.i:                                  ; preds = %if.end
  %dclk.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dclk.i, align 4
  %dclk3.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %dclk3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp4.i = icmp eq i32 %15, %17
  br i1 %cmp4.i, label %land.lhs.true.i.rv770_set_uvd_clock_before_set_eng_clock.exit_crit_edge, label %land.lhs.true.i.if.end.i60_crit_edge

land.lhs.true.i.if.end.i60_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i60

land.lhs.true.i.rv770_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_set_uvd_clock_before_set_eng_clock.exit

if.end.i60:                                       ; preds = %land.lhs.true.i.if.end.i60_crit_edge, %if.end.if.end.i60_crit_edge
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %7, align 4
  %20 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp7.not.i = icmp ult i32 %19, %21
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end.i60.rv770_set_uvd_clock_before_set_eng_clock.exit_crit_edge

if.end.i60.rv770_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_set_uvd_clock_before_set_eng_clock.exit

if.end9.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #15
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %22 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic.i, align 8
  %set_uvd_clocks.i = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 20, i32 12
  %24 = ptrtoint ptr %set_uvd_clocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_uvd_clocks.i, align 4
  %dclk11.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %dclk11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dclk11.i, align 4
  %call12.i = tail call i32 %25(ptr noundef %rdev, i32 noundef %11, i32 noundef %27) #13
  br label %rv770_set_uvd_clock_before_set_eng_clock.exit

rv770_set_uvd_clock_before_set_eng_clock.exit:    ; preds = %if.end9.i, %if.end.i60.rv770_set_uvd_clock_before_set_eng_clock.exit_crit_edge, %land.lhs.true.i.rv770_set_uvd_clock_before_set_eng_clock.exit_crit_edge
  %call.i61 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 16) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i61)
  %cmp.not.i62 = icmp eq i8 %call.i61, 1
  br i1 %cmp.not.i62, label %if.end.i66, label %rv770_set_uvd_clock_before_set_eng_clock.exit.if.then6_crit_edge

rv770_set_uvd_clock_before_set_eng_clock.exit.if.then6_crit_edge: ; preds = %rv770_set_uvd_clock_before_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.end.i66:                                       ; preds = %rv770_set_uvd_clock_before_set_eng_clock.exit
  %call2.i63 = tail call zeroext i8 @rv770_wait_for_smc_inactive(ptr noundef %rdev) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call2.i63)
  %cmp4.not.i64 = icmp eq i8 %call2.i63, 1
  br i1 %cmp4.not.i64, label %if.end7, label %if.end.i66.if.then6_crit_edge

if.end.i66.if.then6_crit_edge:                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then6

if.then6:                                         ; preds = %if.end.i66.if.then6_crit_edge, %rv770_set_uvd_clock_before_set_eng_clock.exit.if.then6_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end7:                                          ; preds = %if.end.i66
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 4
  %state_table_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %29, i32 0, i32 57
  %30 = ptrtoint ptr %state_table_start.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %state_table_start.i, align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %state.i) #13
  %32 = call ptr @memset(ptr %state.i, i32 0, i32 280)
  %33 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ps_priv.i.i, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %3, align 4
  %and.i.i = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end7.if.end.i.i_crit_edge

if.end7.if.end.i.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %state.i, align 1
  %39 = or i8 %38, 1
  store i8 %39, ptr %state.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end7.if.end.i.i_crit_edge
  %low.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %34, i32 0, i32 2
  %levels.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4
  %call2.i.i = call fastcc i32 @rv770_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %low.i.i, ptr noundef %levels.i.i, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.rv770_upload_sw_state.exit.thread_crit_edge

if.end.i.i.rv770_upload_sw_state.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_upload_sw_state.exit.thread

if.end5.i.i:                                      ; preds = %if.end.i.i
  %medium.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %34, i32 0, i32 1
  %arrayidx7.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 1
  %call8.i.i = call fastcc i32 @rv770_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %medium.i.i, ptr noundef %arrayidx7.i.i, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %if.end5.i.i.rv770_upload_sw_state.exit.thread_crit_edge

if.end5.i.i.rv770_upload_sw_state.exit.thread_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_upload_sw_state.exit.thread

if.end11.i.i:                                     ; preds = %if.end5.i.i
  %arrayidx13.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 2
  %call14.i.i = call fastcc i32 @rv770_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %34, ptr noundef %arrayidx13.i.i, i8 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %rv770_upload_sw_state.exit, label %if.end11.i.i.rv770_upload_sw_state.exit.thread_crit_edge

if.end11.i.i.rv770_upload_sw_state.exit.thread_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_upload_sw_state.exit.thread

rv770_upload_sw_state.exit.thread:                ; preds = %if.end11.i.i.rv770_upload_sw_state.exit.thread_crit_edge, %if.end5.i.i.rv770_upload_sw_state.exit.thread_crit_edge, %if.end.i.i.rv770_upload_sw_state.exit.thread_crit_edge
  %retval.0.i69.ph = phi i32 [ %call2.i.i, %if.end.i.i.rv770_upload_sw_state.exit.thread_crit_edge ], [ %call8.i.i, %if.end5.i.i.rv770_upload_sw_state.exit.thread_crit_edge ], [ %call14.i.i, %if.end11.i.i.rv770_upload_sw_state.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %state.i) #13
  br label %if.then10

rv770_upload_sw_state.exit:                       ; preds = %if.end11.i.i
  %40 = ptrtoint ptr %levels.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 11, ptr %levels.i.i, align 1
  %41 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 12, ptr %arrayidx7.i.i, align 1
  %42 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 13, ptr %arrayidx13.i.i, align 1
  %flags.i.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %34, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %conv.i.i.i = select i1 %tobool.not.i.i.i, i8 6, i8 5
  %45 = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i.i.i, ptr %45, align 1
  %flags.i72.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %34, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %flags.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i72.i.i, align 4
  %and.i73.i.i = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i.i)
  %tobool.not.i74.i.i = icmp eq i32 %and.i73.i.i, 0
  %conv.i75.i.i = select i1 %tobool.not.i74.i.i, i8 6, i8 5
  %49 = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 1, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i75.i.i, ptr %49, align 1
  %flags.i76.i.i = getelementptr inbounds %struct.rv7xx_pl, ptr %34, i32 0, i32 4
  %51 = ptrtoint ptr %flags.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i76.i.i, align 4
  %and.i77.i.i = and i32 %52, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77.i.i)
  %tobool.not.i78.i.i = icmp eq i32 %and.i77.i.i, 0
  %conv.i79.i.i = select i1 %tobool.not.i78.i.i, i8 6, i8 5
  %53 = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 2, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i79.i.i, ptr %53, align 1
  %55 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i, align 4
  %dsp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 47
  %57 = ptrtoint ptr %dsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dsp.i.i.i, align 4
  %bSP.i.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 0, i32 9
  %59 = ptrtoint ptr %bSP.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %58, ptr %bSP.i.i.i, align 1
  %bSP.1.i.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 1, i32 9
  %60 = ptrtoint ptr %bSP.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %58, ptr %bSP.1.i.i.i, align 1
  %psp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 48
  %61 = ptrtoint ptr %psp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %psp.i.i.i, align 4
  %bSP3.i.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 2, i32 9
  %63 = ptrtoint ptr %bSP3.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %62, ptr %bSP3.i.i.i, align 1
  %64 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ps_priv.i.i, align 4
  %medium.i.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %medium.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %medium.i.i.i, align 4
  %lmp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 56
  %68 = ptrtoint ptr %lmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %lmp.i.i.i, align 4
  %mul.i.i.i = mul i32 %69, %67
  %low.i.i.i = getelementptr inbounds %struct.rv7xx_ps, ptr %65, i32 0, i32 2
  %70 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %low.i.i.i, align 4
  %rlp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 53
  %72 = ptrtoint ptr %rlp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rlp.i.i.i, align 4
  %sub.i.i.i = sub i32 5, %73
  %mul4.i.i.i = mul i32 %sub.i.i.i, %71
  %add.i.i.i = add i32 %mul4.i.i.i, %mul.i.i.i
  %sub8.i.i.i = sub i32 100, %73
  %mul9.i.i.i = mul i32 %sub8.i.i.i, %71
  %add14.i.i.i = add i32 %mul9.i.i.i, %mul.i.i.i
  %mul17.i.i.i = mul i32 %add.i.i.i, %69
  %div.i.i.i = sdiv i32 %mul17.i.i.i, %add14.i.i.i
  %sub18.i.i.i = sub i32 %69, %div.i.i.i
  %mul23.i.i.i = mul i32 %add.i.i.i, %sub8.i.i.i
  %div24.i.i.i = sdiv i32 %mul23.i.i.i, %add14.i.i.i
  %add25.i.i.i = add i32 %div24.i.i.i, %73
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %65, align 4
  %lhp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 55
  %76 = ptrtoint ptr %lhp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lhp.i.i.i, align 4
  %mul29.i.i.i = mul i32 %77, %75
  %rmp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 54
  %78 = ptrtoint ptr %rmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rmp.i.i.i, align 4
  %sub32.i.i.i = sub i32 5, %79
  %mul33.i.i.i = mul i32 %sub32.i.i.i, %67
  %add34.i.i.i = add i32 %mul33.i.i.i, %mul29.i.i.i
  %sub38.i.i.i = sub i32 100, %79
  %mul39.i.i.i = mul i32 %sub38.i.i.i, %67
  %add44.i.i.i = add i32 %mul39.i.i.i, %mul29.i.i.i
  %mul47.i.i.i = mul i32 %add34.i.i.i, %77
  %div48.i.i.i = sdiv i32 %mul47.i.i.i, %add44.i.i.i
  %sub49.i.i.i = sub i32 %77, %div48.i.i.i
  %mul55.i.i.i = mul i32 %add34.i.i.i, %sub38.i.i.i
  %div56.i.i.i = sdiv i32 %mul55.i.i.i, %add44.i.i.i
  %add57.i.i.i = add i32 %div56.i.i.i, %79
  %bsp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 43
  %conv62.i.i.i = and i32 %add25.i.i.i, 255
  %80 = ptrtoint ptr %bsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bsp.i.i.i, align 4
  %mul63.i.i.i = mul i32 %81, %conv62.i.i.i
  %div64.i.i.i = udiv i32 %mul63.i.i.i, 200
  %aT.i.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 0, i32 8
  %82 = ptrtoint ptr %aT.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %div64.i.i.i, ptr %aT.i.i.i, align 1
  %conv62.1.i.i.i = and i32 %add57.i.i.i, 255
  %mul63.1.i.i.i = mul i32 %conv62.1.i.i.i, %81
  %div64.1.i.i.i = udiv i32 %mul63.1.i.i.i, 200
  %conv66.1.i.i.i = and i32 %sub18.i.i.i, 255
  %mul68.1.i.i.i = mul i32 %81, %conv66.1.i.i.i
  %div69.1.i.i.i = udiv i32 %mul68.1.i.i.i, 200
  %shl70.1.i.i.i = shl i32 %div69.1.i.i.i, 16
  %or.1.i.i.i = or i32 %shl70.1.i.i.i, %div64.1.i.i.i
  %aT.1.i.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 1, i32 8
  %83 = ptrtoint ptr %aT.1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %or.1.i.i.i, ptr %aT.1.i.i.i, align 1
  %pbsp.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %56, i32 0, i32 45
  %84 = ptrtoint ptr %pbsp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pbsp.i.i.i, align 4
  %mul74.i.i.i = mul i32 %85, 100
  %div75.i.i.i = udiv i32 %mul74.i.i.i, 200
  %conv78.i.i.i = and i32 %sub49.i.i.i, 255
  %mul80.i.i.i = mul i32 %85, %conv78.i.i.i
  %div81.i.i.i = udiv i32 %mul80.i.i.i, 200
  %shl82.i.i.i = shl i32 %div81.i.i.i, 16
  %or83.i.i.i = or i32 %shl82.i.i.i, %div75.i.i.i
  %aT86.i.i.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state.i, i32 0, i32 4, i32 2, i32 8
  %86 = ptrtoint ptr %aT86.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %or83.i.i.i, ptr %aT86.i.i.i, align 1
  %add.i = add i16 %31, 744
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %29, i32 0, i32 59
  %87 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sram_end.i, align 4
  %call3.i = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add.i, ptr noundef nonnull %state.i, i16 noundef zeroext 280, i16 noundef zeroext %88) #13
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %state.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool9.not = icmp eq i32 %call3.i, 0
  br i1 %tobool9.not, label %if.end11, label %rv770_upload_sw_state.exit.if.then10_crit_edge

rv770_upload_sw_state.exit.if.then10_crit_edge:   ; preds = %rv770_upload_sw_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then10

if.then10:                                        ; preds = %rv770_upload_sw_state.exit.if.then10_crit_edge, %rv770_upload_sw_state.exit.thread
  %retval.0.i69114 = phi i32 [ %retval.0.i69.ph, %rv770_upload_sw_state.exit.thread ], [ %call3.i, %rv770_upload_sw_state.exit.if.then10_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end11:                                         ; preds = %rv770_upload_sw_state.exit
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %89 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %90, -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  call void @rv730_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %3) #13
  br label %r7xx_program_memory_timing_parameters.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ps_priv.i.i, align 4
  %93 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv.i, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %92, align 4
  %low.i.i71 = getelementptr inbounds %struct.rv7xx_ps, ptr %92, i32 0, i32 2
  %97 = ptrtoint ptr %low.i.i71 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %low.i.i71, align 4
  %mul.i.i = mul i32 %98, 255
  %div68.i.i = lshr i32 %mul.i.i, 6
  %99 = call i32 @llvm.umin.i32(i32 %96, i32 %div68.i.i) #13
  %mclk.i.i = getelementptr inbounds %struct.rv7xx_pl, ptr %92, i32 0, i32 1
  %100 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mclk.i.i, align 4
  call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %99, i32 noundef %101) #13
  %mul10.i.i = shl nuw i32 %99, 6
  %boot_sclk.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %94, i32 0, i32 35
  %102 = ptrtoint ptr %boot_sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %boot_sclk.i.i, align 4
  %div11.i.i = udiv i32 %mul10.i.i, %103
  %104 = ptrtoint ptr %low.i.i71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %low.i.i71, align 4
  %div15.i.i = udiv i32 %mul10.i.i, %105
  %shl16.i.i = shl i32 %div15.i.i, 8
  %or.i.i = or i32 %shl16.i.i, %div11.i.i
  %medium.i.i72 = getelementptr inbounds %struct.rv7xx_ps, ptr %92, i32 0, i32 1
  %106 = ptrtoint ptr %medium.i.i72 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %medium.i.i72, align 4
  %div19.i.i = udiv i32 %mul10.i.i, %107
  %shl20.i.i = shl i32 %div19.i.i, 16
  %or21.i.i = or i32 %or.i.i, %shl20.i.i
  %108 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %92, align 4
  %div25.i.i = udiv i32 %mul10.i.i, %109
  %shl26.i.i = shl i32 %div25.i.i, 24
  %or27.i.i = or i32 %or21.i.i, %shl26.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %110 = call i32 @llvm.bswap.i32(i32 %or27.i.i) #13
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %111 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %112, i32 10096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %110) #13, !srcloc !74
  %113 = ptrtoint ptr %boot_sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %boot_sclk.i.i, align 4
  %115 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %116, i32 10080
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %118 = lshr i32 %117, 27
  %shr.i.i.i = and i32 %118, 7
  %119 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i.i.i = getelementptr i8, ptr %120, i32 10752
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %122 = lshr i32 %121, 24
  %and2.i.i.i = and i32 %122, 3
  %shl4.i.i.i = shl nuw nsw i32 8, %and2.i.i.i
  %mul.i.i.i73 = mul i32 %114, 10
  %mul5.i.i.i = mul i32 %mul.i.i.i73, %shl4.i.i.i
  %123 = add nuw nsw i32 %shr.i.i.i, 10
  %div9.i.i.i = lshr i32 %mul5.i.i.i, %123
  %sub.i.i.i74 = add nsw i32 %div9.i.i.i, -32
  %div610.i.i.i = lshr i32 %sub.i.i.i74, 6
  %124 = ptrtoint ptr %low.i.i71 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %low.i.i71, align 4
  %126 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i70.i.i = getelementptr i8, ptr %127, i32 10080
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i70.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %129 = lshr i32 %128, 27
  %shr.i71.i.i = and i32 %129, 7
  %130 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i72.i.i = getelementptr i8, ptr %131, i32 10752
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i72.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %133 = lshr i32 %132, 24
  %and2.i73.i.i = and i32 %133, 3
  %shl4.i74.i.i = shl nuw nsw i32 8, %and2.i73.i.i
  %mul.i75.i.i = mul i32 %125, 10
  %mul5.i76.i.i = mul i32 %mul.i75.i.i, %shl4.i74.i.i
  %134 = add nuw nsw i32 %shr.i71.i.i, 10
  %div9.i77.i.i = lshr i32 %mul5.i76.i.i, %134
  %sub.i78.i.i = shl nuw nsw i32 %div9.i77.i.i, 2
  %135 = add nsw i32 %sub.i78.i.i, -128
  %shl34.i.i = and i32 %135, -256
  %or35.i.i = or i32 %shl34.i.i, %div610.i.i.i
  %136 = ptrtoint ptr %medium.i.i72 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %medium.i.i72, align 4
  %138 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i81.i.i = getelementptr i8, ptr %139, i32 10080
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %141 = lshr i32 %140, 27
  %shr.i82.i.i = and i32 %141, 7
  %142 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i83.i.i = getelementptr i8, ptr %143, i32 10752
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i83.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %145 = lshr i32 %144, 24
  %and2.i84.i.i = and i32 %145, 3
  %shl4.i85.i.i = shl nuw nsw i32 8, %and2.i84.i.i
  %mul.i86.i.i = mul i32 %137, 10
  %mul5.i87.i.i = mul i32 %mul.i86.i.i, %shl4.i85.i.i
  %146 = add nuw nsw i32 %shr.i82.i.i, 10
  %div9.i88.i.i = lshr i32 %mul5.i87.i.i, %146
  %sub.i89.i.i = shl nuw i32 %div9.i88.i.i, 10
  %147 = add i32 %sub.i89.i.i, -32768
  %shl39.i.i = and i32 %147, -65536
  %or40.i.i = or i32 %or35.i.i, %shl39.i.i
  %148 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %92, align 4
  %150 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i92.i.i = getelementptr i8, ptr %151, i32 10080
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %153 = lshr i32 %152, 27
  %shr.i93.i.i = and i32 %153, 7
  %154 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i94.i.i = getelementptr i8, ptr %155, i32 10752
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i94.i.i) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %157 = lshr i32 %156, 24
  %and2.i95.i.i = and i32 %157, 3
  %shl4.i96.i.i = shl nuw nsw i32 8, %and2.i95.i.i
  %mul.i97.i.i = mul i32 %149, 10
  %mul5.i98.i.i = mul i32 %mul.i97.i.i, %shl4.i96.i.i
  %158 = add nuw nsw i32 %shr.i93.i.i, 10
  %div9.i99.i.i = lshr i32 %mul5.i98.i.i, %158
  %sub.i100.i.i = shl i32 %div9.i99.i.i, 18
  %159 = add i32 %sub.i100.i.i, -8388608
  %shl44.i.i = and i32 %159, -16777216
  %or45.i.i = or i32 %or40.i.i, %shl44.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %160 = call i32 @llvm.bswap.i32(i32 %or45.i.i) #13
  %161 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i105.i.i = getelementptr i8, ptr %162, i32 10160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i.i, i32 %160) #13, !srcloc !74
  br label %r7xx_program_memory_timing_parameters.exit

r7xx_program_memory_timing_parameters.exit:       ; preds = %if.else.i, %if.then.i
  %dcodt = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 16
  %163 = ptrtoint ptr %dcodt to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %dcodt, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool12.not = icmp eq i8 %164, 0
  br i1 %tobool12.not, label %r7xx_program_memory_timing_parameters.exit.if.end14_crit_edge, label %if.then13

r7xx_program_memory_timing_parameters.exit.if.end14_crit_edge: ; preds = %r7xx_program_memory_timing_parameters.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %r7xx_program_memory_timing_parameters.exit
  %165 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv.i, align 4
  %mclk_odt_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %166, i32 0, i32 32
  %167 = ptrtoint ptr %mclk_odt_threshold.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mclk_odt_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp.i77 = icmp eq i32 %168, 0
  br i1 %cmp.i77, label %if.then13.if.end14_crit_edge, label %if.end.i80

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end.i80:                                       ; preds = %if.then13
  %169 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ps_priv.i21.i, align 4
  %171 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ps_priv.i.i, align 4
  %mclk.i = getelementptr inbounds %struct.rv7xx_pl, ptr %170, i32 0, i32 1
  %173 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mclk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %168)
  %cmp4.not.i79 = icmp ugt i32 %174, %168
  %mclk8.i = getelementptr inbounds %struct.rv7xx_pl, ptr %172, i32 0, i32 1
  %175 = ptrtoint ptr %mclk8.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mclk8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %168)
  %cmp10.not.i = icmp ugt i32 %176, %168
  %177 = xor i1 %cmp10.not.i, true
  %178 = xor i1 %cmp4.not.i79, %cmp10.not.i
  %cmp4.not.not.i = xor i1 %cmp4.not.i79, true
  %brmerge.i = select i1 %cmp4.not.not.i, i1 true, i1 %cmp10.not.i
  %or.cond.i = and i1 %178, %brmerge.i
  br i1 %or.cond.i, label %if.end23.i, label %if.end.i80.if.end14_crit_edge

if.end.i80.if.end14_crit_edge:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.end23.i:                                       ; preds = %if.end.i80
  %179 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %family.i, align 4
  %181 = and i32 %180, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %181)
  %switch.i82 = icmp eq i32 %181, 36
  br i1 %switch.i82, label %if.then29.i, label %if.end23.i.if.end14_crit_edge

if.end23.i.if.end14_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then29.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @rv730_program_dcodt(ptr noundef %rdev, i1 noundef zeroext %177) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then29.i, %if.end23.i.if.end14_crit_edge, %if.end.i80.if.end14_crit_edge, %if.then13.if.end14_crit_edge, %r7xx_program_memory_timing_parameters.exit.if.end14_crit_edge
  %call.i83 = call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 17) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i83)
  %cmp.not.i84 = icmp eq i8 %call.i83, 1
  br i1 %cmp.not.i84, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call.i86 = call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 32) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i86)
  %cmp.not.i87 = icmp eq i8 %call.i86, 1
  br i1 %cmp.not.i87, label %if.end18.rv770_set_sw_state.exit_crit_edge, label %if.then.i88

if.end18.rv770_set_sw_state.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_set_sw_state.exit

if.then.i88:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %rv770_set_sw_state.exit

rv770_set_sw_state.exit:                          ; preds = %if.then.i88, %if.end18.rv770_set_sw_state.exit_crit_edge
  %182 = ptrtoint ptr %dcodt to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %dcodt, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool24.not = icmp eq i8 %183, 0
  br i1 %tobool24.not, label %rv770_set_sw_state.exit.if.end26_crit_edge, label %if.then25

rv770_set_sw_state.exit.if.end26_crit_edge:       ; preds = %rv770_set_sw_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then25:                                        ; preds = %rv770_set_sw_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @rv770_program_dcodt_after_state_switch(ptr noundef %rdev, ptr noundef %3, ptr noundef %5)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %rv770_set_sw_state.exit.if.end26_crit_edge
  %184 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ps_priv.i.i, align 4
  %186 = ptrtoint ptr %ps_priv.i21.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ps_priv.i21.i, align 4
  %188 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %vclk.i, align 4
  %190 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %191)
  %cmp.i94 = icmp eq i32 %189, %191
  br i1 %cmp.i94, label %land.lhs.true.i98, label %if.end26.if.end.i99_crit_edge

if.end26.if.end.i99_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i99

land.lhs.true.i98:                                ; preds = %if.end26
  %dclk.i95 = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %192 = ptrtoint ptr %dclk.i95 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dclk.i95, align 4
  %dclk3.i96 = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 4
  %194 = ptrtoint ptr %dclk3.i96 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dclk3.i96, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %195)
  %cmp4.i97 = icmp eq i32 %193, %195
  br i1 %cmp4.i97, label %land.lhs.true.i98.cleanup_crit_edge, label %land.lhs.true.i98.if.end.i99_crit_edge

land.lhs.true.i98.if.end.i99_crit_edge:           ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i99

land.lhs.true.i98.cleanup_crit_edge:              ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i99:                                       ; preds = %land.lhs.true.i98.if.end.i99_crit_edge, %if.end26.if.end.i99_crit_edge
  %196 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %185, align 4
  %198 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %187, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %199)
  %cmp7.i = icmp ult i32 %197, %199
  br i1 %cmp7.i, label %if.end.i99.cleanup_crit_edge, label %if.end9.i104

if.end.i99.cleanup_crit_edge:                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9.i104:                                     ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #15
  %asic.i100 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %200 = ptrtoint ptr %asic.i100 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %asic.i100, align 8
  %set_uvd_clocks.i101 = getelementptr inbounds %struct.radeon_asic, ptr %201, i32 0, i32 20, i32 12
  %202 = ptrtoint ptr %set_uvd_clocks.i101 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %set_uvd_clocks.i101, align 4
  %dclk11.i102 = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %204 = ptrtoint ptr %dclk11.i102 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %dclk11.i102, align 4
  %call12.i103 = call i32 %203(ptr noundef %rdev, i32 noundef %189, i32 noundef %205) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i104, %if.end.i99.cleanup_crit_edge, %land.lhs.true.i98.cleanup_crit_edge, %if.then17, %if.then10, %if.then6, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then6 ], [ %retval.0.i69114, %if.then10 ], [ -22, %if.then17 ], [ 0, %land.lhs.true.i98.cleanup_crit_edge ], [ 0, %if.end.i99.cleanup_crit_edge ], [ 0, %if.end9.i104 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv770_program_dcodt_after_state_switch(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state, ptr nocapture noundef readonly %radeon_current_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mclk_odt_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %mclk_odt_threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_odt_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps_priv.i45 = getelementptr inbounds %struct.radeon_ps, ptr %radeon_current_state, i32 0, i32 9
  %4 = ptrtoint ptr %ps_priv.i45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv.i45, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 9
  %6 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps_priv.i, align 4
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp4.not = icmp ugt i32 %9, %3
  %mclk8 = getelementptr inbounds %struct.rv7xx_pl, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %mclk8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp10.not = icmp ugt i32 %11, %3
  %12 = xor i1 %cmp10.not, true
  %13 = xor i1 %cmp4.not, %cmp10.not
  %brmerge = select i1 %cmp4.not, i1 true, i1 %12
  %or.cond = and i1 %13, %brmerge
  br i1 %or.cond, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %family, align 4
  %16 = and i32 %15, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %16)
  %switch = icmp eq i32 %16, 36
  br i1 %switch, label %if.then29, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rv730_program_dcodt(ptr noundef %rdev, i1 noundef zeroext %12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %memory_info.i = alloca %struct.atom_memory_info, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %3, label %if.else6.i [
    i32 38, label %if.then.i
    i32 36, label %entry.if.then5.i_crit_edge
    i32 37, label %entry.if.then5.i_crit_edge55
  ]

entry.if.then5.i_crit_edge55:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

entry.if.then5.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rv740_read_clock_registers(ptr noundef %rdev) #13
  br label %r7xx_read_clock_registers.exit

if.then5.i:                                       ; preds = %entry.if.then5.i_crit_edge, %entry.if.then5.i_crit_edge55
  tail call void @rv730_read_clock_registers(ptr noundef %rdev) #13
  br label %r7xx_read_clock_registers.exit

if.else6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 1536
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #13
  %clk_regs.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %clk_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %clk_regs.i.i, align 4
  %10 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i44.i.i = getelementptr i8, ptr %11, i32 1540
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #13
  %cg_spll_func_cntl_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 1
  %14 = ptrtoint ptr %cg_spll_func_cntl_2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cg_spll_func_cntl_2.i.i, align 4
  %15 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i46.i.i = getelementptr i8, ptr %16, i32 1544
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  %cg_spll_func_cntl_3.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 2
  %19 = ptrtoint ptr %cg_spll_func_cntl_3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %cg_spll_func_cntl_3.i.i, align 4
  %20 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i48.i.i = getelementptr i8, ptr %21, i32 1936
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %cg_spll_spread_spectrum.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 3
  %24 = ptrtoint ptr %cg_spll_spread_spectrum.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cg_spll_spread_spectrum.i.i, align 4
  %25 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i50.i.i = getelementptr i8, ptr %26, i32 1940
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #13
  %cg_spll_spread_spectrum_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 4
  %29 = ptrtoint ptr %cg_spll_spread_spectrum_2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cg_spll_spread_spectrum_2.i.i, align 4
  %30 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i52.i.i = getelementptr i8, ptr %31, i32 1572
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #13
  %mpll_ad_func_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 5
  %34 = ptrtoint ptr %mpll_ad_func_cntl.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %mpll_ad_func_cntl.i.i, align 4
  %35 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i54.i.i = getelementptr i8, ptr %36, i32 1576
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #13
  %mpll_ad_func_cntl_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 6
  %39 = ptrtoint ptr %mpll_ad_func_cntl_2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %mpll_ad_func_cntl_2.i.i, align 4
  %40 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %41, i32 1580
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #13
  %mpll_dq_func_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 7
  %44 = ptrtoint ptr %mpll_dq_func_cntl.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mpll_dq_func_cntl.i.i, align 4
  %45 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i58.i.i = getelementptr i8, ptr %46, i32 1584
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #13
  %mpll_dq_func_cntl_2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 8
  %49 = ptrtoint ptr %mpll_dq_func_cntl_2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %mpll_dq_func_cntl_2.i.i, align 4
  %50 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i60.i.i = getelementptr i8, ptr %51, i32 1608
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %mclk_pwrmgt_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 9
  %54 = ptrtoint ptr %mclk_pwrmgt_cntl.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %mclk_pwrmgt_cntl.i.i, align 4
  %55 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %56, i32 1612
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #13
  %dll_cntl.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 19, i32 0, i32 10
  %59 = ptrtoint ptr %dll_cntl.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %dll_cntl.i.i, align 4
  br label %r7xx_read_clock_registers.exit

r7xx_read_clock_registers.exit:                   ; preds = %if.else6.i, %if.then5.i, %if.then.i
  %60 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %63, i32 1656
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #13
  %s0_vid_lower_smio_cntl.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %61, i32 0, i32 20
  %66 = ptrtoint ptr %s0_vid_lower_smio_cntl.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %s0_vid_lower_smio_cntl.i, align 4
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 4
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %70, i32 10752
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %72 = and i32 %71, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %72)
  %cmp.i = icmp eq i32 %72, 80
  %..i = zext i1 %cmp.i to i8
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %..i, ptr %68, align 4
  %dcodt = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 16
  %74 = ptrtoint ptr %dcodt to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dcodt, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not = icmp eq i8 %75, 0
  br i1 %tobool.not, label %r7xx_read_clock_registers.exit.if.end_crit_edge, label %if.then

r7xx_read_clock_registers.exit.if.end_crit_edge:  ; preds = %r7xx_read_clock_registers.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %r7xx_read_clock_registers.exit
  %76 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %memory_info.i) #13
  %78 = ptrtoint ptr %memory_info.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %memory_info.i, align 1, !annotation !76
  %79 = getelementptr inbounds %struct.atom_memory_info, ptr %memory_info.i, i32 0, i32 1
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %79, align 1, !annotation !76
  %mclk_odt_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %77, i32 0, i32 32
  %81 = ptrtoint ptr %mclk_odt_threshold.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %mclk_odt_threshold.i, align 4
  %82 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %family.i, align 4
  %84 = and i32 %83, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %84)
  %switch.i = icmp eq i32 %84, 36
  br i1 %switch.i, label %if.then.i39, label %if.then.rv770_get_mclk_odt_threshold.exit_crit_edge

if.then.rv770_get_mclk_odt_threshold.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_get_mclk_odt_threshold.exit

if.then.i39:                                      ; preds = %if.then
  %85 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i38 = getelementptr i8, ptr %86, i32 5940
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i38) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %88 = lshr i32 %87, 8
  %conv.i.i = trunc i32 %88 to i8
  %call4.i = call i32 @radeon_atom_get_memory_info(ptr noundef %rdev, i8 noundef zeroext %conv.i.i, ptr noundef nonnull %memory_info.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i39.rv770_get_mclk_odt_threshold.exit_crit_edge

if.then.i39.rv770_get_mclk_odt_threshold.exit_crit_edge: ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_get_mclk_odt_threshold.exit

if.end.i:                                         ; preds = %if.then.i39
  %89 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %79, align 1
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %90, label %if.end.i.rv770_get_mclk_odt_threshold.exit_crit_edge [
    i8 32, label %if.end.i.if.then13.i_crit_edge
    i8 -80, label %if.end.i.if.then13.i_crit_edge56
  ]

if.end.i.if.then13.i_crit_edge56:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.end.i.if.then13.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13.i

if.end.i.rv770_get_mclk_odt_threshold.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_get_mclk_odt_threshold.exit

if.then13.i:                                      ; preds = %if.end.i.if.then13.i_crit_edge, %if.end.i.if.then13.i_crit_edge56
  %92 = ptrtoint ptr %mclk_odt_threshold.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 30000, ptr %mclk_odt_threshold.i, align 4
  br label %rv770_get_mclk_odt_threshold.exit

rv770_get_mclk_odt_threshold.exit:                ; preds = %if.then13.i, %if.end.i.rv770_get_mclk_odt_threshold.exit_crit_edge, %if.then.i39.rv770_get_mclk_odt_threshold.exit_crit_edge, %if.then.rv770_get_mclk_odt_threshold.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %memory_info.i) #13
  br label %if.end

if.end:                                           ; preds = %rv770_get_mclk_odt_threshold.exit, %r7xx_read_clock_registers.exit.if.end_crit_edge
  %93 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv.i, align 4
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %95 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pciep_rreg.i, align 4
  %call1.i = call i32 %96(ptr noundef %rdev, i32 noundef 164) #13
  %97 = and i32 %call1.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %97)
  %.not.i = icmp eq i32 %97, 25165824
  %98 = getelementptr inbounds %struct.rv7xx_power_info, ptr %94, i32 0, i32 1
  br i1 %.not.i, label %if.then7.i, label %if.else14.i

if.then7.i:                                       ; preds = %if.end
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %98, align 1
  %and8.i = and i32 %call1.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %boot_in_gen212.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %94, i32 0, i32 4
  br i1 %tobool9.not.i, label %if.else11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %boot_in_gen212.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %boot_in_gen212.i, align 4
  br label %rv770_get_pcie_gen2_status.exit

if.else11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #15
  %101 = ptrtoint ptr %boot_in_gen212.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %boot_in_gen212.i, align 4
  br label %rv770_get_pcie_gen2_status.exit

if.else14.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %98, align 1
  %boot_in_gen215.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %94, i32 0, i32 4
  %103 = ptrtoint ptr %boot_in_gen215.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %boot_in_gen215.i, align 4
  br label %rv770_get_pcie_gen2_status.exit

rv770_get_pcie_gen2_status.exit:                  ; preds = %if.else14.i, %if.else11.i, %if.then10.i
  %104 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %105, i32 1596
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #13, !srcloc !71
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %107 = or i32 %106, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  call void @arm_heavy_mb() #13
  %108 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %109, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %107) #13, !srcloc !74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_aspm to i32))
  %110 = load i32, ptr @radeon_aspm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.not = icmp eq i32 %110, 0
  br i1 %cmp.not, label %rv770_get_pcie_gen2_status.exit.if.end19_crit_edge, label %if.then1

rv770_get_pcie_gen2_status.exit.if.end19_crit_edge: ; preds = %rv770_get_pcie_gen2_status.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then1:                                         ; preds = %rv770_get_pcie_gen2_status.exit
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %111 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %platform_caps, align 4
  %and = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then1.if.end4_crit_edge, label %if.then3

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i = call i32 %114(ptr noundef %rdev, i32 noundef 160) #13
  %and.i = and i32 %call.i, -3841
  %or.i = or i32 %and.i, 768
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %115 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pciep_wreg.i, align 8
  call void %116(ptr noundef %rdev, i32 noundef 160, i32 noundef %or.i) #13
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1.if.end4_crit_edge
  %117 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %platform_caps, align 4
  %and8 = and i32 %118, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end4.if.end11_crit_edge, label %if.then10

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %119 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i45 = call i32 %120(ptr noundef %rdev, i32 noundef 160) #13
  %and.i46 = and i32 %call.i45, -16904193
  %or.i47 = or i32 %and.i46, 16384
  %pciep_wreg.i48 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %121 = ptrtoint ptr %pciep_wreg.i48 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pciep_wreg.i48, align 8
  call void %122(ptr noundef %rdev, i32 noundef 160, i32 noundef %or.i47) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end4.if.end11_crit_edge
  %123 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %platform_caps, align 4
  %and15 = and i32 %124, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end11.if.end19_crit_edge, label %if.then17

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %125 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i50 = call i32 %126(ptr noundef %rdev, i32 noundef 160) #13
  %and.i51 = and i32 %call.i50, -61441
  %or.i52 = or i32 %and.i51, 32768
  %pciep_wreg.i53 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %127 = ptrtoint ptr %pciep_wreg.i53 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pciep_wreg.i53, align 8
  call void %128(ptr noundef %rdev, i32 noundef 160, i32 noundef %or.i52) #13
  %call1.i54 = call i32 @rv370_pcie_rreg(ptr noundef %rdev, i32 noundef 64) #13
  %or2.i = and i32 %call1.i54, -4633
  %or5.i = or i32 %or2.i, 4104
  call void @rv370_pcie_wreg(ptr noundef %rdev, i32 noundef 64, i32 noundef %or5.i) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end11.if.end19_crit_edge, %rv770_get_pcie_gen2_status.exit.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_dpm_display_configuration_changed(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1812
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  %and.i = and i32 %3, -251658241
  %new_active_crtcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 14
  %4 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_active_crtcs.i, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %or2.i = or i32 %and.i, 218103808
  br label %rv770_program_display_gap.exit

if.else.i:                                        ; preds = %entry
  %and6.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else11.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %or10.i = or i32 %and.i, 117440512
  br label %rv770_program_display_gap.exit

if.else11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  %or13.i = or i32 %3, 251658240
  br label %rv770_program_display_gap.exit

rv770_program_display_gap.exit:                   ; preds = %if.else11.i, %if.then8.i, %if.then.i
  %tmp.0.i = phi i32 [ %or2.i, %if.then.i ], [ %or10.i, %if.then8.i ], [ %or13.i, %if.else11.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !73
  tail call void @arm_heavy_mb() #13
  %6 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #13
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %8, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %6) #13, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv7xx_parse_power_table(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %vddc89.i = alloca i16, align 2
  %vddci90.i = alloca i16, align 2
  %mvdd.i = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #13
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #13
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #13
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !76
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %4, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #13
  br i1 %call, label %if.end, label %entry.cleanup83_crit_edge

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %ucNumStates = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 2
  %11 = ptrtoint ptr %ucNumStates to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucNumStates, align 1
  %conv3 = zext i8 %12 to i32
  %13 = mul nuw nsw i32 %conv3, 40
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #16
  %dpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %14 = ptrtoint ptr %dpm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %dpm, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end.cleanup83_crit_edge, label %for.cond.preheader

if.end.cleanup83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup83

for.cond.preheader:                               ; preds = %if.end
  %15 = ptrtoint ptr %ucNumStates to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucNumStates, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp149.not = icmp eq i8 %16, 0
  br i1 %cmp149.not, label %for.cond.preheader.for.end78_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end78_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end78

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %usStateArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 6
  %ucStateEntrySize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 3
  %usNonClockInfoArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 8
  %ucNonClockSize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 5
  %boot_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  %usClockInfoArrayOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 7
  %ucClockInfoSize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 4
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %default_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %default_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %mclk109.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 1
  %vddc115.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 2
  %vddci121.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc76.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc77, %for.inc76.for.body_crit_edge ]
  %17 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mode_info1, align 4
  %bios15 = getelementptr inbounds %struct.atom_context, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %bios15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios15, align 4
  %21 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data_offset, align 2
  %conv16 = zext i16 %22 to i32
  %add.ptr17 = getelementptr i8, ptr %20, i32 %conv16
  %23 = ptrtoint ptr %usStateArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usStateArrayOffset, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %conv18 = zext i16 %25 to i32
  %add.ptr19 = getelementptr i8, ptr %add.ptr17, i32 %conv18
  %26 = ptrtoint ptr %ucStateEntrySize to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucStateEntrySize, align 1
  %conv20 = zext i8 %27 to i32
  %mul = mul i32 %i.0150, %conv20
  %add.ptr21 = getelementptr i8, ptr %add.ptr19, i32 %mul
  %28 = ptrtoint ptr %usNonClockInfoArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usNonClockInfoArrayOffset, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv26 = zext i16 %30 to i32
  %add.ptr27 = getelementptr i8, ptr %add.ptr17, i32 %conv26
  %31 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr21, align 1
  %conv28 = zext i8 %32 to i32
  %33 = ptrtoint ptr %ucNonClockSize to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucNonClockSize, align 1
  %conv29 = zext i8 %34 to i32
  %mul30 = mul nuw nsw i32 %conv29, %conv28
  %add.ptr31 = getelementptr i8, ptr %add.ptr27, i32 %mul30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %tobool34.not = icmp eq i8 %27, 1
  br i1 %tobool34.not, label %for.body.for.inc76_crit_edge, label %if.then35

for.body.for.inc76_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

if.then35:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 64) #17
  %cmp37 = icmp eq ptr %call7.i.i, null
  %36 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dpm, align 4
  br i1 %cmp37, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef %37) #13
  br label %cleanup83

if.end43:                                         ; preds = %if.then35
  %ps_priv = getelementptr %struct.radeon_ps, ptr %37, i32 %i.0150, i32 9
  %38 = ptrtoint ptr %ps_priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %ps_priv, align 4
  %39 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dpm, align 4
  %arrayidx50 = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150
  %41 = ptrtoint ptr %ucNonClockSize to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucNonClockSize, align 1
  %ulCapsAndSettings.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31, i32 0, i32 3
  %43 = ptrtoint ptr %ulCapsAndSettings.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %ulCapsAndSettings.i, align 1
  %45 = call i32 @llvm.bswap.i32(i32 %44) #13
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx50, align 4
  %47 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %add.ptr31, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48) #13
  %conv.i = zext i16 %49 to i32
  %class.i = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150, i32 1
  %50 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv.i, ptr %class.i, align 4
  %usClassification2.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31, i32 0, i32 5
  %51 = ptrtoint ptr %usClassification2.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %usClassification2.i, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52) #13
  %conv1.i = zext i16 %53 to i32
  %class2.i = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150, i32 2
  %54 = ptrtoint ptr %class2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv1.i, ptr %class2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %42)
  %cmp.i = icmp ugt i8 %42, 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %ulVCLK.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31, i32 0, i32 6
  %55 = ptrtoint ptr %ulVCLK.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %ulVCLK.i, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56) #13
  %vclk.i = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150, i32 3
  %58 = ptrtoint ptr %vclk.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %vclk.i, align 4
  %ulDCLK.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31, i32 0, i32 7
  %59 = ptrtoint ptr %ulDCLK.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %ulDCLK.i, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60) #13
  br label %if.end.i

if.else.i:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  %vclk4.i = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150, i32 3
  %62 = ptrtoint ptr %vclk4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %vclk4.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %61, %if.then.i ], [ 0, %if.else.i ]
  %63 = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.sink.i, ptr %63, align 4
  %call.i = call zeroext i1 @r600_is_uvd_state(i32 noundef %conv.i, i32 noundef %conv1.i) #13
  br i1 %call.i, label %if.then8.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then8.i:                                       ; preds = %if.end.i
  %vclk9.i = getelementptr %struct.radeon_ps, ptr %40, i32 %i.0150, i32 3
  %65 = ptrtoint ptr %vclk9.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vclk9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp10.i = icmp eq i32 %66, 0
  br i1 %cmp10.i, label %if.then8.i.if.then15.i_crit_edge, label %lor.lhs.false.i

if.then8.i.if.then15.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

lor.lhs.false.i:                                  ; preds = %if.then8.i
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp13.i = icmp eq i32 %68, 0
  br i1 %cmp13.i, label %lor.lhs.false.i.if.then15.i_crit_edge, label %lor.lhs.false.i.if.end19.i_crit_edge

lor.lhs.false.i.if.end19.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

lor.lhs.false.i.if.then15.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false.i.if.then15.i_crit_edge, %if.then8.i.if.then15.i_crit_edge
  %69 = ptrtoint ptr %vclk9.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 53300, ptr %vclk9.i, align 4
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 40000, ptr %63, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %lor.lhs.false.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %71 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %class.i, align 4
  %and.i = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end19.i.if.end22.i_crit_edge, label %if.then21.i

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  %73 = ptrtoint ptr %boot_ps.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx50, ptr %boot_ps.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end22.i_crit_edge
  %74 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %class.i, align 4
  %and24.i = and i32 %75, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.rv7xx_parse_pplib_non_clock_info.exit_crit_edge, label %if.then26.i

if.end22.i.rv7xx_parse_pplib_non_clock_info.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv7xx_parse_pplib_non_clock_info.exit

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %uvd_ps.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx50, ptr %uvd_ps.i, align 4
  br label %rv7xx_parse_pplib_non_clock_info.exit

rv7xx_parse_pplib_non_clock_info.exit:            ; preds = %if.then26.i, %if.end22.i.rv7xx_parse_pplib_non_clock_info.exit_crit_edge
  %ucClockStateIndices = getelementptr inbounds %struct._ATOM_PPLIB_STATE, ptr %add.ptr21, i32 0, i32 1
  %77 = ptrtoint ptr %ucStateEntrySize to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %ucStateEntrySize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp57146 = icmp ugt i8 %78, 1
  br i1 %cmp57146, label %rv7xx_parse_pplib_non_clock_info.exit.for.body59_crit_edge, label %rv7xx_parse_pplib_non_clock_info.exit.for.inc76_crit_edge

rv7xx_parse_pplib_non_clock_info.exit.for.inc76_crit_edge: ; preds = %rv7xx_parse_pplib_non_clock_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

rv7xx_parse_pplib_non_clock_info.exit.for.body59_crit_edge: ; preds = %rv7xx_parse_pplib_non_clock_info.exit
  br label %for.body59

for.body59:                                       ; preds = %rv7xx_parse_pplib_clock_info.exit.for.body59_crit_edge, %rv7xx_parse_pplib_non_clock_info.exit.for.body59_crit_edge
  %j.0147 = phi i32 [ %inc, %rv7xx_parse_pplib_clock_info.exit.for.body59_crit_edge ], [ 0, %rv7xx_parse_pplib_non_clock_info.exit.for.body59_crit_edge ]
  %79 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mode_info1, align 4
  %bios61 = getelementptr inbounds %struct.atom_context, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %bios61 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bios61, align 4
  %83 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %data_offset, align 2
  %conv62 = zext i16 %84 to i32
  %add.ptr63 = getelementptr i8, ptr %82, i32 %conv62
  %85 = ptrtoint ptr %usClockInfoArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %usClockInfoArrayOffset, align 1
  %87 = call i16 @llvm.bswap.i16(i16 %86)
  %conv64 = zext i16 %87 to i32
  %add.ptr65 = getelementptr i8, ptr %add.ptr63, i32 %conv64
  %arrayidx66 = getelementptr i8, ptr %ucClockStateIndices, i32 %j.0147
  %88 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %89 to i32
  %90 = ptrtoint ptr %ucClockInfoSize to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %ucClockInfoSize, align 1
  %conv68 = zext i8 %91 to i32
  %mul69 = mul nuw nsw i32 %conv68, %conv67
  %add.ptr70 = getelementptr i8, ptr %add.ptr65, i32 %mul69
  %92 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dpm, align 4
  %94 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv.i.i, align 4
  %ps_priv.i.i = getelementptr %struct.radeon_ps, ptr %93, i32 %i.0150, i32 9
  %96 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ps_priv.i.i, align 4
  %98 = zext i32 %j.0147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %j.0147, label %for.body59.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

for.body59.sw.epilog.i_crit_edge:                 ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  %low.i = getelementptr inbounds %struct.rv7xx_ps, ptr %97, i32 0, i32 2
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #15
  %medium.i = getelementptr inbounds %struct.rv7xx_ps, ptr %97, i32 0, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb.i, %for.body59.sw.epilog.i_crit_edge
  %pl.0.i = phi ptr [ %medium.i, %sw.bb3.i ], [ %low.i, %sw.bb.i ], [ %97, %for.body59.sw.epilog.i_crit_edge ]
  %99 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %100)
  %cmp.i131 = icmp ugt i32 %100, 38
  %101 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %add.ptr70, align 1
  %103 = call i16 @llvm.bswap.i16(i16 %102) #13
  %conv.i132 = zext i16 %103 to i32
  br i1 %cmp.i131, label %if.then.i133, label %if.else.i134

if.then.i133:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %ucEngineClockHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 1
  %104 = ptrtoint ptr %ucEngineClockHigh.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ucEngineClockHigh.i, align 1
  %usMemoryClockLow.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 2
  %106 = ptrtoint ptr %usMemoryClockLow.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %usMemoryClockLow.i, align 1
  %108 = call i16 @llvm.bswap.i16(i16 %107) #13
  %conv6.i = zext i16 %108 to i32
  %ucMemoryClockHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 3
  %109 = ptrtoint ptr %ucMemoryClockHigh.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ucMemoryClockHigh.i, align 1
  %conv7.i = zext i8 %110 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %shl8.i, %conv6.i
  %usVDDC.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 4
  %111 = ptrtoint ptr %usVDDC.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %usVDDC.i, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112) #13
  %vddc.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 2
  %114 = ptrtoint ptr %vddc.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %vddc.i, align 4
  %usVDDCI.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 5
  %115 = ptrtoint ptr %usVDDCI.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %usVDDCI.i, align 1
  %117 = call i16 @llvm.bswap.i16(i16 %116) #13
  %vddci.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 3
  %118 = ptrtoint ptr %vddci.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %vddci.i, align 2
  %ulFlags.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 7
  br label %if.end.i135

if.else.i134:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %ucEngineClockHigh12.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 1
  %119 = ptrtoint ptr %ucEngineClockHigh12.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ucEngineClockHigh12.i, align 1
  %usMemoryClockLow16.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 2
  %121 = ptrtoint ptr %usMemoryClockLow16.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %usMemoryClockLow16.i, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122) #13
  %conv17.i = zext i16 %123 to i32
  %ucMemoryClockHigh18.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 3
  %124 = ptrtoint ptr %ucMemoryClockHigh18.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ucMemoryClockHigh18.i, align 1
  %conv19.i = zext i8 %125 to i32
  %shl20.i = shl nuw nsw i32 %conv19.i, 16
  %or21.i = or i32 %shl20.i, %conv17.i
  %usVDDC22.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 4
  %126 = ptrtoint ptr %usVDDC22.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %usVDDC22.i, align 1
  %128 = call i16 @llvm.bswap.i16(i16 %127) #13
  %vddc23.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 2
  %129 = ptrtoint ptr %vddc23.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %vddc23.i, align 4
  %ulFlags24.i = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %add.ptr70, i32 0, i32 7
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.else.i134, %if.then.i133
  %ulFlags24.sink.i = phi ptr [ %ulFlags24.i, %if.else.i134 ], [ %ulFlags.i, %if.then.i133 ]
  %shl.pn.in.in.i = phi i8 [ %120, %if.else.i134 ], [ %105, %if.then.i133 ]
  %mclk.0.i = phi i32 [ %or21.i, %if.else.i134 ], [ %or9.i, %if.then.i133 ]
  %shl.pn.in.i = zext i8 %shl.pn.in.in.i to i32
  %shl.pn.i = shl nuw nsw i32 %shl.pn.in.i, 16
  %sclk.0.i = or i32 %shl.pn.i, %conv.i132
  %130 = ptrtoint ptr %ulFlags24.sink.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 4)
  %131 = load i32, ptr %ulFlags24.sink.i, align 1
  %132 = call i32 @llvm.bswap.i32(i32 %131) #13
  %133 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %132, ptr %133, align 4
  %mclk26.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 1
  %135 = ptrtoint ptr %mclk26.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %mclk.0.i, ptr %mclk26.i, align 4
  %136 = ptrtoint ptr %pl.0.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %sclk.0.i, ptr %pl.0.i, align 4
  %vddc28.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 2
  %137 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %vddc28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %138)
  %cmp30.i = icmp eq i16 %138, -255
  br i1 %cmp30.i, label %if.then32.i, label %if.end.i135.if.end37.i_crit_edge

if.end.i135.if.end37.i_crit_edge:                 ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then32.i:                                      ; preds = %if.end.i135
  %max_vddc.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 25
  %139 = ptrtoint ptr %max_vddc.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %max_vddc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool.not.i136 = icmp eq i16 %140, 0
  br i1 %tobool.not.i136, label %if.then32.i.if.end37.i_crit_edge, label %if.then33.i

if.then32.i.if.end37.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  %141 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %vddc28.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.then32.i.if.end37.i_crit_edge, %if.end.i135.if.end37.i_crit_edge
  %class.i137 = getelementptr %struct.radeon_ps, ptr %93, i32 %i.0150, i32 1
  %142 = ptrtoint ptr %class.i137 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %class.i137, align 4
  %and.i138 = and i32 %143, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138)
  %tobool38.not.i = icmp eq i32 %and.i138, 0
  br i1 %tobool38.not.i, label %if.end37.i.if.end55.i_crit_edge, label %if.then39.i

if.end37.i.if.end55.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then39.i:                                      ; preds = %if.end37.i
  %144 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vddc28.i, align 4
  %acpi_vddc.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 36
  %146 = ptrtoint ptr %acpi_vddc.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %acpi_vddc.i, align 4
  %147 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %148)
  %cmp42.i = icmp ugt i32 %148, 38
  br i1 %cmp42.i, label %if.then44.i, label %if.then39.i.if.end46.i_crit_edge

if.then39.i.if.end46.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  %vddci45.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 3
  %149 = ptrtoint ptr %vddci45.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %vddci45.i, align 2
  %acpi_vddci.i = getelementptr inbounds %struct.evergreen_power_info, ptr %95, i32 0, i32 14
  %151 = ptrtoint ptr %acpi_vddci.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %acpi_vddci.i, align 2
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.then39.i.if.end46.i_crit_edge
  %flags48.i = getelementptr inbounds %struct.rv7xx_ps, ptr %97, i32 0, i32 2, i32 4
  %152 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags48.i, align 4
  %acpi_pcie_gen253.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 3
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = ptrtoint ptr %acpi_pcie_gen253.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %155, ptr %acpi_pcie_gen253.i, align 1
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end46.i, %if.end37.i.if.end55.i_crit_edge
  %class2.i139 = getelementptr %struct.radeon_ps, ptr %93, i32 %i.0150, i32 2
  %157 = ptrtoint ptr %class2.i139 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %class2.i139, align 4
  %and56.i = and i32 %158, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.if.end66.i_crit_edge, label %if.then58.i

if.end55.i.if.end66.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then58.i:                                      ; preds = %if.end55.i
  %159 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %160)
  %cmp60.i = icmp ugt i32 %160, 46
  br i1 %cmp60.i, label %if.then62.i, label %if.then58.i.if.end66.i_crit_edge

if.then58.i.if.end66.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66.i

if.then62.i:                                      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #15
  %ulv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %95, i32 0, i32 22
  %161 = ptrtoint ptr %ulv.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %ulv.i, align 4
  %pl64.i = getelementptr inbounds %struct.evergreen_power_info, ptr %95, i32 0, i32 22, i32 1
  %162 = ptrtoint ptr %pl64.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %pl.0.i, ptr %pl64.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %if.then58.i.if.end66.i_crit_edge, %if.end55.i.if.end66.i_crit_edge
  %min_vddc_in_table.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 27
  %163 = ptrtoint ptr %min_vddc_in_table.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %min_vddc_in_table.i, align 4
  %165 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %vddc28.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %164, i16 %166)
  %cmp70.i = icmp ugt i16 %164, %166
  br i1 %cmp70.i, label %if.then72.i, label %if.end66.i.if.end75.i_crit_edge

if.end66.i.if.end75.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75.i

if.then72.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #15
  %167 = ptrtoint ptr %min_vddc_in_table.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %min_vddc_in_table.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %if.end66.i.if.end75.i_crit_edge
  %max_vddc_in_table.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 26
  %168 = ptrtoint ptr %max_vddc_in_table.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %max_vddc_in_table.i, align 2
  %170 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %vddc28.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %169, i16 %171)
  %cmp79.i = icmp ult i16 %169, %171
  br i1 %cmp79.i, label %if.then81.i, label %if.end75.i.if.end84.i_crit_edge

if.end75.i.if.end84.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84.i

if.then81.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #15
  %172 = ptrtoint ptr %max_vddc_in_table.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %171, ptr %max_vddc_in_table.i, align 2
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.then81.i, %if.end75.i.if.end84.i_crit_edge
  %173 = ptrtoint ptr %class.i137 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %class.i137, align 4
  %and86.i = and i32 %174, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %if.end84.i.if.end96.i_crit_edge, label %if.then88.i

if.end84.i.if.end96.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96.i

if.then88.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc89.i) #13
  %175 = ptrtoint ptr %vddc89.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -1, ptr %vddc89.i, align 2, !annotation !76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddci90.i) #13
  %176 = ptrtoint ptr %vddci90.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 -1, ptr %vddci90.i, align 2, !annotation !76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mvdd.i) #13
  %177 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -1, ptr %mvdd.i, align 2, !annotation !76
  call void @radeon_atombios_get_default_voltages(ptr noundef %rdev, ptr noundef nonnull %vddc89.i, ptr noundef nonnull %vddci90.i, ptr noundef nonnull %mvdd.i) #13
  %178 = ptrtoint ptr %default_mclk.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %default_mclk.i, align 4
  %180 = ptrtoint ptr %mclk26.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %mclk26.i, align 4
  %181 = ptrtoint ptr %default_sclk.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %default_sclk.i, align 4
  %183 = ptrtoint ptr %pl.0.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %pl.0.i, align 4
  %184 = ptrtoint ptr %vddc89.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %vddc89.i, align 2
  %186 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %vddc28.i, align 4
  %187 = ptrtoint ptr %vddci90.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %vddci90.i, align 2
  %vddci95.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 3
  %189 = ptrtoint ptr %vddci95.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %188, ptr %vddci95.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mvdd.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddci90.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc89.i) #13
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then88.i, %if.end84.i.if.end96.i_crit_edge
  %190 = ptrtoint ptr %class.i137 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %class.i137, align 4
  %and98.i = and i32 %191, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and98.i)
  %cmp99.i = icmp eq i32 %and98.i, 5
  br i1 %cmp99.i, label %if.then101.i, label %if.end96.i.rv7xx_parse_pplib_clock_info.exit_crit_edge

if.end96.i.rv7xx_parse_pplib_clock_info.exit_crit_edge: ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv7xx_parse_pplib_clock_info.exit

if.then101.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  %192 = ptrtoint ptr %pl.0.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %pl.0.i, align 4
  %194 = ptrtoint ptr %max_clock_voltage_on_ac.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %max_clock_voltage_on_ac.i, align 4
  %195 = ptrtoint ptr %mclk26.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %mclk26.i, align 4
  %197 = ptrtoint ptr %mclk109.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %mclk109.i, align 4
  %198 = ptrtoint ptr %vddc28.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %vddc28.i, align 4
  %200 = ptrtoint ptr %vddc115.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %199, ptr %vddc115.i, align 4
  %vddci116.i = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0.i, i32 0, i32 3
  %201 = ptrtoint ptr %vddci116.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %vddci116.i, align 2
  %203 = ptrtoint ptr %vddci121.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %vddci121.i, align 2
  br label %rv7xx_parse_pplib_clock_info.exit

rv7xx_parse_pplib_clock_info.exit:                ; preds = %if.then101.i, %if.end96.i.rv7xx_parse_pplib_clock_info.exit_crit_edge
  %inc = add nuw nsw i32 %j.0147, 1
  %204 = ptrtoint ptr %ucStateEntrySize to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %ucStateEntrySize, align 1
  %conv55 = zext i8 %205 to i32
  %sub56 = add nsw i32 %conv55, -1
  %cmp57 = icmp slt i32 %inc, %sub56
  br i1 %cmp57, label %rv7xx_parse_pplib_clock_info.exit.for.body59_crit_edge, label %rv7xx_parse_pplib_clock_info.exit.for.inc76_crit_edge

rv7xx_parse_pplib_clock_info.exit.for.inc76_crit_edge: ; preds = %rv7xx_parse_pplib_clock_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc76

rv7xx_parse_pplib_clock_info.exit.for.body59_crit_edge: ; preds = %rv7xx_parse_pplib_clock_info.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body59

for.inc76:                                        ; preds = %rv7xx_parse_pplib_clock_info.exit.for.inc76_crit_edge, %rv7xx_parse_pplib_non_clock_info.exit.for.inc76_crit_edge, %for.body.for.inc76_crit_edge
  %inc77 = add nuw nsw i32 %i.0150, 1
  %206 = ptrtoint ptr %ucNumStates to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %ucNumStates, align 1
  %conv12 = zext i8 %207 to i32
  %cmp = icmp ult i32 %inc77, %conv12
  br i1 %cmp, label %for.inc76.for.body_crit_edge, label %for.end78.loopexit

for.inc76.for.body_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end78.loopexit:                               ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #15
  %phi.cast = zext i8 %207 to i32
  br label %for.end78

for.end78:                                        ; preds = %for.end78.loopexit, %for.cond.preheader.for.end78_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end78.loopexit ], [ 0, %for.cond.preheader.for.end78_crit_edge ]
  %num_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %208 = ptrtoint ptr %num_ps to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %.lcssa, ptr %num_ps, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %for.end78, %if.then39, %if.end.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  %retval.3 = phi i32 [ 0, %for.end78 ], [ -22, %entry.cleanup83_crit_edge ], [ -12, %if.end.cleanup83_crit_edge ], [ -12, %if.then39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #13
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_get_engine_memory_ss(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #13
  %2 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %call1 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 2, i32 noundef 0) #13
  %sclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 7
  %frombool = zext i1 %call1 to i8
  %3 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %sclk_ss, align 1
  %call2 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 1, i32 noundef 0) #13
  %mclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 8
  %frombool3 = zext i1 %call2 to i8
  %4 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool3, ptr %mclk_ss, align 4
  %5 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sclk_ss, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %call2
  %spec.select = zext i1 %brmerge to i8
  %7 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %ss.i = alloca %struct.radeon_atom_ss, align 2
  %vddc.i = alloca i16, align 2
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #13
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1768) #17
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc.i) #13
  %3 = ptrtoint ptr %vddc.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %vddc.i, align 2, !annotation !76
  %call1.i = call i32 @radeon_atom_get_max_vddc(ptr noundef %rdev, i8 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %vddc.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end.rv770_get_max_vddc.exit_crit_edge

if.end.rv770_get_max_vddc.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_get_max_vddc.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vddc.i, align 2
  br label %rv770_get_max_vddc.exit

rv770_get_max_vddc.exit:                          ; preds = %if.else.i, %if.end.rv770_get_max_vddc.exit_crit_edge
  %.sink.i = phi i16 [ %5, %if.else.i ], [ 0, %if.end.rv770_get_max_vddc.exit_crit_edge ]
  %6 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 25
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink.i, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc.i) #13
  %acpi_vddc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 36
  %8 = ptrtoint ptr %acpi_vddc to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %acpi_vddc, align 8
  %min_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 27
  %9 = ptrtoint ptr %min_vddc_in_table to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %min_vddc_in_table, align 4
  %max_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 26
  %10 = ptrtoint ptr %max_vddc_in_table to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %max_vddc_in_table, align 2
  %call1 = call i32 @r600_get_platform_caps(ptr noundef %rdev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %rv770_get_max_vddc.exit.cleanup_crit_edge

rv770_get_max_vddc.exit.cleanup_crit_edge:        ; preds = %rv770_get_max_vddc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %rv770_get_max_vddc.exit
  %call4 = call i32 @rv7xx_parse_power_table(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %11 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %voltage_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1000, ptr %voltage_response_time, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %backbias_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %14 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backbias_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then19, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1000, ptr %backbias_response_time, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end15.if.end23_crit_edge
  %call24 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %dividers) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %17 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_div, align 4
  %add = add i32 %18, 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %add.sink = phi i32 [ %add, %if.then26 ], [ 4, %if.end23.if.end29_crit_edge ]
  %19 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 38
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.sink, ptr %19, align 4
  %mclk_strobe_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 41
  %21 = ptrtoint ptr %mclk_strobe_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 30000, ptr %mclk_strobe_mode_threshold, align 8
  %mclk_edc_enable_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 42
  %22 = ptrtoint ptr %mclk_edc_enable_threshold to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 30000, ptr %mclk_edc_enable_threshold, align 4
  %rlp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 53
  %23 = ptrtoint ptr %rlp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %rlp, align 8
  %rmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 54
  %24 = ptrtoint ptr %rmp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 25, ptr %rmp, align 4
  %lhp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 55
  %25 = ptrtoint ptr %lhp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 25, ptr %lhp, align 8
  %lmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 56
  %26 = ptrtoint ptr %lmp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 10, ptr %lmp, align 4
  %call30 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 1, i8 noundef zeroext 0) #13
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 5
  %frombool = zext i1 %call30 to i8
  %27 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %voltage_control, align 1
  %call31 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 2, i8 noundef zeroext 0) #13
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 6
  %frombool32 = zext i1 %call31 to i8
  %28 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool32, ptr %mvdd_control, align 2
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss.i) #13
  %31 = call ptr @memset(ptr %ss.i, i32 255, i32 16)
  %call1.i96 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss.i, i32 noundef 2, i32 noundef 0) #13
  %sclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 7
  %frombool.i = zext i1 %call1.i96 to i8
  %32 = ptrtoint ptr %sclk_ss.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i, ptr %sclk_ss.i, align 1
  %call2.i = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss.i, i32 noundef 1, i32 noundef 0) #13
  %mclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 8
  %frombool3.i = zext i1 %call2.i to i8
  %33 = ptrtoint ptr %mclk_ss.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool3.i, ptr %mclk_ss.i, align 4
  %34 = ptrtoint ptr %sclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sclk_ss.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i97 = icmp ne i8 %35, 0
  %brmerge.i = select i1 %tobool.not.i97, i1 true, i1 %call2.i
  %spec.select.i = zext i1 %brmerge.i to i8
  %36 = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 9
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %spec.select.i, ptr %36, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss.i) #13
  %asi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 49
  %38 = ptrtoint ptr %asi to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1000, ptr %asi, align 8
  %pasi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 50
  %39 = ptrtoint ptr %pasi to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 200000, ptr %pasi, align 4
  %vrc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 51
  %40 = ptrtoint ptr %vrc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 63, ptr %vrc, align 8
  %power_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 13
  %41 = ptrtoint ptr %power_gating to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %power_gating, align 1
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %gfx_clock_gating, align 2
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 11
  %43 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %mg_clock_gating, align 1
  %mgcgtssm = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 12
  %44 = ptrtoint ptr %mgcgtssm to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %mgcgtssm, align 4
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %dynamic_pcie_gen2, align 2
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %46 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %int_thermal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp34.not = icmp ne i32 %47, 0
  %spec.select = zext i1 %cmp34.not to i8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 14
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %spec.select, ptr %48, align 2
  %display_gap = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 15
  %50 = ptrtoint ptr %display_gap to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %display_gap, align 1
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 8
  %and = lshr i32 %52, 16
  %53 = trunc i32 %and to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 16
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %54, ptr %55, align 8
  %ulps = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 17
  %57 = ptrtoint ptr %ulps to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %ulps, align 1
  %mclk_stutter_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 40
  %58 = ptrtoint ptr %mclk_stutter_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mclk_stutter_mode_threshold, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 59
  %59 = ptrtoint ptr %sram_end to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -16384, ptr %sram_end, align 4
  %state_table_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 57
  %60 = ptrtoint ptr %state_table_start to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -20480, ptr %state_table_start, align 8
  %soft_regs_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 58
  %61 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 260, ptr %soft_regs_start, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end3.cleanup_crit_edge, %rv770_get_max_vddc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %rv770_get_max_vddc.exit.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %class = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 2
  %4 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class2, align 4
  tail call void @r600_dpm_print_class_info(i32 noundef %3, i32 noundef %5) #13
  %6 = ptrtoint ptr %rps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rps, align 4
  tail call void @r600_dpm_print_cap_info(i32 noundef %7) #13
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %9, i32 noundef %11) #18
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %13)
  %cmp = icmp ugt i32 %13, 38
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %low, align 4
  %mclk = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk, align 4
  %vddc = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddc, align 4
  %conv = zext i16 %19 to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %vddci = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vddci, align 2
  %conv6 = zext i16 %21 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %15, i32 noundef %17, i32 noundef %conv, i32 noundef %conv6) #18
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %medium to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %medium, align 4
  %mclk13 = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %mclk13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk13, align 4
  %vddc14 = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %vddc14 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vddc14, align 4
  %conv15 = zext i16 %27 to i32
  %vddci16 = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %vddci16 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vddci16, align 2
  %conv17 = zext i16 %29 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %23, i32 noundef %25, i32 noundef %conv15, i32 noundef %conv17) #18
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %mclk24 = getelementptr inbounds %struct.rv7xx_pl, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %mclk24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mclk24, align 4
  %vddc25 = getelementptr inbounds %struct.rv7xx_pl, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %vddc25 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vddc25, align 4
  %conv26 = zext i16 %35 to i32
  %vddci27 = getelementptr inbounds %struct.rv7xx_pl, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %vddci27 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vddci27, align 2
  %conv28 = zext i16 %37 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %31, i32 noundef %33, i32 noundef %conv26, i32 noundef %conv28) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %15, i32 noundef %17, i32 noundef %conv) #18
  %medium40 = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %medium40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %medium40, align 4
  %mclk46 = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %mclk46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mclk46, align 4
  %vddc47 = getelementptr inbounds %struct.rv7xx_ps, ptr %1, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %vddc47 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vddc47, align 4
  %conv48 = zext i16 %43 to i32
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %39, i32 noundef %41, i32 noundef %conv48) #18
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %mclk56 = getelementptr inbounds %struct.rv7xx_pl, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %mclk56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mclk56, align 4
  %vddc57 = getelementptr inbounds %struct.rv7xx_pl, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %vddc57 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vddc57, align 4
  %conv58 = zext i16 %49 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %45, i32 noundef %47, i32 noundef %conv58) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_dpm_debugfs_print_current_performance_level(ptr nocapture noundef readonly %rdev, ptr noundef %m) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  %7 = lshr i32 %6, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %6)
  %cmp = icmp ugt i32 %6, 805306367
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %7) #13
  br label %if.end18

if.else:                                          ; preds = %entry
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %7, label %if.else.if.end8_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.then6
  ]

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 2
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %if.else.if.end8_crit_edge
  %pl.0 = phi ptr [ %low, %if.then3 ], [ %medium, %if.then6 ], [ %3, %if.else.if.end8_crit_edge ]
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %10, i32 noundef %12) #13
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %14)
  %cmp9 = icmp ugt i32 %14, 38
  %15 = ptrtoint ptr %pl.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pl.0, align 4
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 1
  %17 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mclk, align 4
  %vddc = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 2
  %19 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vddc, align 4
  %conv = zext i16 %20 to i32
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %vddci = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 3
  %21 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vddci, align 2
  %conv11 = zext i16 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %7, i32 noundef %16, i32 noundef %18, i32 noundef %conv, i32 noundef %conv11) #13
  br label %if.end18

if.else12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %7, i32 noundef %16, i32 noundef %18, i32 noundef %conv) #13
  br label %if.end18

if.end18:                                         ; preds = %if.else12, %if.then10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_get_current_sclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %6)
  %cmp = icmp ugt i32 %6, 805306367
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = lshr i32 %6, 28
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %7, label %if.else.if.end8_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.then6
  ]

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 2
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %if.else.if.end8_crit_edge
  %pl.0 = phi ptr [ %low, %if.then3 ], [ %medium, %if.then6 ], [ %3, %if.else.if.end8_crit_edge ]
  %9 = ptrtoint ptr %pl.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pl.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_dpm_get_current_mclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %6)
  %cmp = icmp ugt i32 %6, 805306367
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %7 = lshr i32 %6, 28
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %7, label %if.else.if.end8_crit_edge [
    i32 0, label %if.then3
    i32 1, label %if.then6
  ]

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 2
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then3, %if.else.if.end8_crit_edge
  %pl.0 = phi ptr [ %low, %if.then3 ], [ %medium, %if.then6 ], [ %3, %if.else.if.end8_crit_edge ]
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 1
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_dpm_fini(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %num_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %0 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %ps_priv = getelementptr %struct.radeon_ps, ptr %3, i32 %i.014, i32 9
  %4 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv, align 4
  tail call void @kfree(ptr noundef %5) #13
  %inc = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #13
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv770_dpm_get_sclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %low1 = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 2
  %retval.0.in = select i1 %low, ptr %low1, ptr %3
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rv770_dpm_get_mclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %low1 = getelementptr inbounds %struct.rv7xx_ps, ptr %3, i32 0, i32 2
  %low1.pn = select i1 %low, ptr %low1, ptr %3
  %retval.0.in = getelementptr inbounds %struct.rv7xx_pl, ptr %low1.pn, i32 0, i32 1
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rv770_dpm_vblank_too_short(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @r600_dpm_get_vblank_time(ptr noundef %rdev) #13
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %1)
  %cmp = icmp eq i32 %1, 35
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 200
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %switch_limit.0 = phi i32 [ 200, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %switch_limit.0)
  %cmp1 = icmp ult i32 %call, %switch_limit.0
  ret i1 %cmp1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_get_vblank_time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_min_voltage(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_max_voltage(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_voltage_step(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_get_odt_values(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_memory_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv740_enable_mclk_spread_spectrum(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv730_populate_smc_initial_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_populate_smc_acpi_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv730_populate_smc_acpi_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_copy_bytes_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv740_get_mclk_frequency_ratio(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv770_convert_power_level_to_smc(ptr noundef %rdev, ptr nocapture noundef readonly %pl, ptr noundef %level, i8 noundef zeroext %watermark_level) unnamed_addr #2 align 64 {
entry:
  %dividers.i149 = alloca %struct.atom_clock_dividers, align 4
  %dividers.i = alloca %struct.atom_clock_dividers, align 4
  %ss.i = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pcie_gen2, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %flags = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond2 = phi i8 [ %7, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %gen2PCIE = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 3
  %8 = ptrtoint ptr %gen2PCIE to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cond2, ptr %gen2PCIE, align 1
  %flags3 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 4
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags3, align 4
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %gen2XSP = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 4
  %13 = ptrtoint ptr %gen2XSP to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %gen2XSP, align 1
  %14 = load i32, ptr %flags3, align 4
  %15 = trunc i32 %14 to i8
  %16 = lshr i8 %15, 2
  %17 = and i8 %16, 1
  %backbias = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 5
  %18 = ptrtoint ptr %backbias to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %backbias, align 1
  %displayWatermark = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 2
  %19 = ptrtoint ptr %displayWatermark to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %watermark_level, ptr %displayWatermark, align 1
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %family, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %21, label %if.else26 [
    i32 38, label %if.then
    i32 36, label %cond.end.if.then22_crit_edge
    i32 37, label %cond.end.if.then22_crit_edge178
  ]

cond.end.if.then22_crit_edge178:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

cond.end.if.then22_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then22

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pl, align 4
  %sclk14 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10
  %call15 = tail call i32 @rv740_populate_sclk_value(ptr noundef %rdev, i32 noundef %24, ptr noundef %sclk14) #13
  br label %if.end30

if.then22:                                        ; preds = %cond.end.if.then22_crit_edge, %cond.end.if.then22_crit_edge178
  %25 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pl, align 4
  %sclk24 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10
  %call25 = tail call i32 @rv730_populate_sclk_value(ptr noundef %rdev, i32 noundef %26, ptr noundef %sclk24) #13
  br label %if.end30

if.else26:                                        ; preds = %cond.end
  %27 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pl, align 4
  %sclk28 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i) #13
  %31 = call ptr @memset(ptr %dividers.i, i32 255, i32 32)
  %clk_regs.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 19
  %32 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_regs.i, align 4
  %cg_spll_func_cntl_2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 19, i32 0, i32 1
  %34 = ptrtoint ptr %cg_spll_func_cntl_2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cg_spll_func_cntl_2.i, align 4
  %cg_spll_func_cntl_3.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 19, i32 0, i32 2
  %36 = ptrtoint ptr %cg_spll_func_cntl_3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cg_spll_func_cntl_3.i, align 4
  %cg_spll_spread_spectrum4.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 19, i32 0, i32 3
  %38 = ptrtoint ptr %cg_spll_spread_spectrum4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cg_spll_spread_spectrum4.i, align 4
  %cg_spll_spread_spectrum_26.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 19, i32 0, i32 4
  %40 = ptrtoint ptr %cg_spll_spread_spectrum_26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cg_spll_spread_spectrum_26.i, align 4
  %spll.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %42 = ptrtoint ptr %spll.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spll.i, align 4
  %call7.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %28, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else26.rv770_populate_sclk_value.exit_crit_edge

if.else26.rv770_populate_sclk_value.exit_crit_edge: ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_sclk_value.exit

if.end.i:                                         ; preds = %if.else26
  %ref_div.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i, i32 0, i32 2
  %44 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ref_div.i, align 4
  %add.i = add i32 %45, 1
  %enable_post_div.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i, i32 0, i32 3
  %46 = ptrtoint ptr %enable_post_div.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enable_post_div.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool8.not.i = icmp eq i8 %47, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then9.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dividers.i, align 4
  %shr.i = lshr i32 %49, 4
  %and.i = and i32 %shr.i, 15
  %and11.i = and i32 %49, 15
  %add12.i = add nuw nsw i32 %and11.i, 2
  %add13.i = add nuw nsw i32 %add12.i, %and.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %if.end.i.if.end14.i_crit_edge
  %post_divider.0.i = phi i32 [ %add13.i, %if.then9.i ], [ 1, %if.end.i.if.end14.i_crit_edge ]
  %conv.i = zext i32 %28 to i64
  %conv15.i = zext i32 %add.i to i64
  %conv16.i = zext i32 %post_divider.0.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 14
  %mul17.i = mul i64 %mul.i, %conv15.i
  %mul18.i = mul i64 %mul17.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul18.i)
  %cmp194.i = icmp ult i64 %mul18.i, 4294967296
  br i1 %cmp194.i, label %if.then198.i, label %if.else204.i, !prof !79

if.then198.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv199.i = trunc i64 %mul18.i to i32
  %div202.i = udiv i32 %conv199.i, %43
  br label %if.end208.i

if.else204.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %mul18.i) #19, !srcloc !80
  %asmresult1.i.i = extractvalue { i64, i64 } %50, 1
  %extract.t413.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.else204.i, %if.then198.i
  %tmp.0.off0.i = phi i32 [ %div202.i, %if.then198.i ], [ %extract.t413.i, %if.else204.i ]
  %and216.i = and i32 %33, -1045493
  %masksel.i = select i1 %tobool8.not.i, i32 0, i32 4
  %shl220.i = shl i32 %45, 4
  %51 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dividers.i, align 4
  %53 = shl i32 %52, 8
  %shl225.i = and i32 %53, 61440
  %and228.i = shl i32 %52, 16
  %shl229.i = and i32 %and228.i, 983040
  %spll_func_cntl.0.i = or i32 %shl220.i, %and216.i
  %or221.i = or i32 %spll_func_cntl.0.i, %masksel.i
  %or226.i = or i32 %or221.i, %shl225.i
  %or230.i = or i32 %or226.i, %shl229.i
  %and231.i = and i32 %35, -512
  %or232.i = or i32 %and231.i, 2
  %and233.i = and i32 %37, -335544320
  %or235.i = or i32 %and233.i, %tmp.0.off0.i
  %or236.i = or i32 %or235.i, 268435456
  %sclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %30, i32 0, i32 7
  %54 = ptrtoint ptr %sclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %sclk_ss.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool237.not.i = icmp eq i8 %55, 0
  br i1 %tobool237.not.i, label %if.end208.i.if.end258.i_crit_edge, label %if.then238.i

if.end208.i.if.end258.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end258.i

if.then238.i:                                     ; preds = %if.end208.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss.i) #13
  %56 = call ptr @memset(ptr %ss.i, i32 255, i32 16)
  %mul239.i = mul i32 %post_divider.0.i, %28
  %call240.i = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss.i, i32 noundef 2, i32 noundef %mul239.i) #13
  br i1 %call240.i, label %if.then241.i, label %if.then238.i.if.end257.i_crit_edge

if.then238.i.if.end257.i_crit_edge:               ; preds = %if.then238.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end257.i

if.then241.i:                                     ; preds = %if.then238.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul242.i = mul i32 %43, 5
  %rate.i = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss.i, i32 0, i32 7
  %57 = ptrtoint ptr %rate.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rate.i, align 2
  %conv243.i = zext i16 %58 to i32
  %mul244.i = mul i32 %add.i, %conv243.i
  %div245.i = udiv i32 %mul242.i, %mul244.i
  %59 = ptrtoint ptr %ss.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %ss.i, align 2
  %conv246.i = zext i16 %60 to i32
  %mul247.i = mul i32 %tmp.0.off0.i, %conv246.i
  %mul248.i = mul i32 %div245.i, 10000
  %div249.i = udiv i32 %mul247.i, %mul248.i
  %and250.i = and i32 %39, -65522
  %shl251.i = shl i32 %div245.i, 4
  %or252.i = or i32 %and250.i, %shl251.i
  %or253.i = or i32 %or252.i, 1
  %and254.i = and i32 %41, -67108864
  %or256.i = or i32 %div249.i, %and254.i
  br label %if.end257.i

if.end257.i:                                      ; preds = %if.then241.i, %if.then238.i.if.end257.i_crit_edge
  %cg_spll_spread_spectrum.0.i = phi i32 [ %or253.i, %if.then241.i ], [ %39, %if.then238.i.if.end257.i_crit_edge ]
  %cg_spll_spread_spectrum_2.0.i = phi i32 [ %or256.i, %if.then241.i ], [ %41, %if.then238.i.if.end257.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss.i) #13
  br label %if.end258.i

if.end258.i:                                      ; preds = %if.end257.i, %if.end208.i.if.end258.i_crit_edge
  %cg_spll_spread_spectrum.1.i = phi i32 [ %cg_spll_spread_spectrum.0.i, %if.end257.i ], [ %39, %if.end208.i.if.end258.i_crit_edge ]
  %cg_spll_spread_spectrum_2.1.i = phi i32 [ %cg_spll_spread_spectrum_2.0.i, %if.end257.i ], [ %41, %if.end208.i.if.end258.i_crit_edge ]
  %sclk_value.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10, i32 5
  %61 = ptrtoint ptr %sclk_value.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %28, ptr %sclk_value.i, align 1
  %62 = ptrtoint ptr %sclk28 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %or230.i, ptr %sclk28, align 1
  %vCG_SPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10, i32 1
  %63 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 4)
  store i32 %or232.i, ptr %vCG_SPLL_FUNC_CNTL_2.i, align 1
  %vCG_SPLL_FUNC_CNTL_3.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10, i32 2
  %64 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %or236.i, ptr %vCG_SPLL_FUNC_CNTL_3.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10, i32 3
  %65 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %cg_spll_spread_spectrum.1.i, ptr %vCG_SPLL_SPREAD_SPECTRUM.i, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10, i32 4
  %66 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1.i, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i, align 1
  br label %rv770_populate_sclk_value.exit

rv770_populate_sclk_value.exit:                   ; preds = %if.end258.i, %if.else26.rv770_populate_sclk_value.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #13
  br label %if.end30

if.end30:                                         ; preds = %rv770_populate_sclk_value.exit, %if.then22, %if.then
  %ret.0 = phi i32 [ %call15, %if.then ], [ %call25, %if.then22 ], [ %call7.i, %rv770_populate_sclk_value.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool31.not = icmp eq i32 %ret.0, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %67 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %family, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %68, label %if.else75 [
    i32 38, label %if.then37
    i32 36, label %if.end33.if.then70_crit_edge
    i32 37, label %if.end33.if.then70_crit_edge179
  ]

if.end33.if.then70_crit_edge179:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

if.end33.if.then70_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then70

if.then37:                                        ; preds = %if.end33
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %1, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool38.not = icmp eq i8 %71, 0
  br i1 %tobool38.not, label %if.then37.if.end57_crit_edge, label %if.then39

if.then37.if.end57_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then39:                                        ; preds = %if.then37
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %72 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mclk, align 4
  %mclk_strobe_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 41
  %74 = ptrtoint ptr %mclk_strobe_mode_threshold to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mclk_strobe_mode_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp40.not = icmp ugt i32 %73, %75
  br i1 %cmp40.not, label %if.then39.if.end49_crit_edge, label %if.then42

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end49

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = call zeroext i8 @rv740_get_mclk_frequency_ratio(i32 noundef %73) #13
  %76 = or i8 %call44, 16
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.then39.if.end49_crit_edge
  %.sink = phi i8 [ %76, %if.then42 ], [ 0, %if.then39.if.end49_crit_edge ]
  %77 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 6
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink, ptr %77, align 1
  %79 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mclk, align 4
  %mclk_edc_enable_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %1, i32 0, i32 42
  %81 = ptrtoint ptr %mclk_edc_enable_threshold to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mclk_edc_enable_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp51 = icmp ugt i32 %80, %82
  %mcFlags = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 7
  %. = select i1 %cmp51, i8 3, i8 0
  %83 = ptrtoint ptr %mcFlags to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %., ptr %mcFlags, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.end49, %if.then37.if.end57_crit_edge
  %84 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pl, align 4
  %mclk59 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %86 = ptrtoint ptr %mclk59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mclk59, align 4
  %mclk60 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11
  %call61 = call i32 @rv740_populate_mclk_value(ptr noundef %rdev, i32 noundef %85, i32 noundef %87, ptr noundef %mclk60) #13
  br label %if.end81

if.then70:                                        ; preds = %if.end33.if.then70_crit_edge, %if.end33.if.then70_crit_edge179
  %88 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pl, align 4
  %mclk72 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %90 = ptrtoint ptr %mclk72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mclk72, align 4
  %mclk73 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11
  %call74 = call i32 @rv730_populate_mclk_value(ptr noundef %rdev, i32 noundef %89, i32 noundef %91, ptr noundef %mclk73) #13
  br label %if.end81

if.else75:                                        ; preds = %if.end33
  %mclk77 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %92 = ptrtoint ptr %mclk77 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mclk77, align 4
  %mclk78 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11
  %94 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv.i, align 4
  %mpll_ad_func_cntl1.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 19, i32 0, i32 5
  %96 = ptrtoint ptr %mpll_ad_func_cntl1.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mpll_ad_func_cntl1.i, align 4
  %mpll_ad_func_cntl_23.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 19, i32 0, i32 6
  %98 = ptrtoint ptr %mpll_ad_func_cntl_23.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mpll_ad_func_cntl_23.i, align 4
  %mpll_dq_func_cntl5.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 19, i32 0, i32 7
  %100 = ptrtoint ptr %mpll_dq_func_cntl5.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mpll_dq_func_cntl5.i, align 4
  %mpll_dq_func_cntl_27.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 19, i32 0, i32 8
  %102 = ptrtoint ptr %mpll_dq_func_cntl_27.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mpll_dq_func_cntl_27.i, align 4
  %mclk_pwrmgt_cntl9.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 19, i32 0, i32 9
  %104 = ptrtoint ptr %mclk_pwrmgt_cntl9.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mclk_pwrmgt_cntl9.i, align 4
  %dll_cntl11.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %95, i32 0, i32 19, i32 0, i32 10
  %106 = ptrtoint ptr %dll_cntl11.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dll_cntl11.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i149) #13
  %108 = call ptr @memset(ptr %dividers.i149, i32 255, i32 32)
  %mpll.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %109 = ptrtoint ptr %mpll.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mpll.i, align 4
  %call12.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %93, i1 noundef zeroext false, ptr noundef nonnull %dividers.i149) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i151 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i151, label %if.end.i153, label %if.else75.rv770_populate_mclk_value.exit_crit_edge

if.else75.rv770_populate_mclk_value.exit_crit_edge: ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_mclk_value.exit

if.end.i153:                                      ; preds = %if.else75
  %ref_div.i152 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i149, i32 0, i32 2
  %111 = ptrtoint ptr %ref_div.i152 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ref_div.i152, align 4
  %113 = add i32 %112, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %113)
  %114 = icmp ult i32 %113, -5
  br i1 %114, label %if.end.i153.rv770_populate_mclk_value.exit_crit_edge, label %if.end16.i

if.end.i153.rv770_populate_mclk_value.exit_crit_edge: ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_mclk_value.exit

if.end16.i:                                       ; preds = %if.end.i153
  %115 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %95, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool17.not.i = icmp eq i8 %116, 0
  %fyclk.0.v.i.i = select i1 %tobool17.not.i, i32 4, i32 5
  %fyclk.0.i.i = shl i32 %93, %fyclk.0.v.i.i
  %117 = ptrtoint ptr %dividers.i149 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dividers.i149, align 4
  %mul4.i.i = mul i32 %118, %112
  %mul5.i.i = mul i32 %fyclk.0.i.i, %mul4.i.i
  %div6.i.i = udiv i32 %mul5.i.i, %110
  %div712.i.i = lshr i32 %div6.i.i, 3
  %119 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %118, label %if.end16.i.rv770_populate_mclk_value.exit_crit_edge [
    i32 1, label %if.end16.i.if.end21.i_crit_edge
    i32 2, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 8, label %sw.bb3.i.i
    i32 16, label %sw.bb4.i.i
  ]

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.end16.i.rv770_populate_mclk_value.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_mclk_value.exit

sw.bb1.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

sw.bb2.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

sw.bb3.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

sw.bb4.i.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.end21.i:                                       ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end16.i.if.end21.i_crit_edge
  %.sink.i.i = phi i32 [ 524288, %sw.bb4.i.i ], [ 393216, %sw.bb3.i.i ], [ 262144, %sw.bb2.i.i ], [ 131072, %sw.bb1.i.i ], [ 0, %if.end16.i.if.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %div6.i.i)
  %cmp.i.i = icmp ult i32 %div6.i.i, 136
  br i1 %cmp.i.i, label %if.end21.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, label %if.end.i.i

if.end21.i.rv770_map_clkf_to_ibias.exit.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit.i

if.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %div6.i.i)
  %cmp1.i.i154 = icmp ult i32 %div6.i.i, 208
  br i1 %cmp1.i.i154, label %if.end.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %div6.i.i)
  %cmp4.i.i = icmp ult i32 %div6.i.i, 272
  br i1 %cmp4.i.i, label %if.end3.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, label %if.end6.i.i

if.end3.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %div6.i.i)
  %cmp7.i.i = icmp ult i32 %div6.i.i, 320
  br i1 %cmp7.i.i, label %if.end6.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, label %if.end9.i.i

if.end6.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %div6.i.i)
  %cmp10.i.i = icmp ult i32 %div6.i.i, 400
  %..i.i = select i1 %cmp10.i.i, i32 164626432, i32 207618048
  br label %rv770_map_clkf_to_ibias.exit.i

rv770_map_clkf_to_ibias.exit.i:                   ; preds = %if.end9.i.i, %if.end6.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, %if.end3.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, %if.end.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge, %if.end21.i.rv770_map_clkf_to_ibias.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 78643200, %if.end21.i.rv770_map_clkf_to_ibias.exit.i_crit_edge ], [ 95420416, %if.end.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge ], [ 45088768, %if.end3.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge ], [ 113246208, %if.end6.i.i.rv770_map_clkf_to_ibias.exit.i_crit_edge ], [ %..i.i, %if.end9.i.i ]
  %and.i155 = and i32 %97, -1073217536
  %sub.i = add nsw i32 %112, -1
  %arrayidx.i = getelementptr [5 x i8], ptr @__const.rv770_populate_mclk_value.encoded_reference_dividers, i32 0, i32 %sub.i
  %120 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i, align 1
  %conv.i156 = zext i8 %121 to i32
  %shl.i157 = shl nuw nsw i32 %conv.i156, 7
  %rem.i.i = shl i32 %div6.i.i, 12
  %shl28.i = and i32 %rem.i.i, 28672
  %or.i = or i32 %div712.i.i, %and.i155
  %or25.i = or i32 %or.i, %shl28.i
  %or27.i = or i32 %or25.i, %.sink.i.i
  %or29.i = or i32 %or27.i, %retval.0.i.i
  %or31.i = or i32 %or29.i, %shl.i157
  %vco_mode.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i149, i32 0, i32 5
  %122 = ptrtoint ptr %vco_mode.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vco_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool32.not.i = icmp eq i32 %123, 0
  %and35.i = and i32 %99, -536870913
  %masksel.i158 = select i1 %tobool32.not.i, i32 0, i32 536870912
  %mpll_ad_func_cntl_2.0.i = or i32 %masksel.i158, %and35.i
  br i1 %tobool17.not.i, label %rv770_map_clkf_to_ibias.exit.i.if.end70.i_crit_edge, label %if.then39.i

rv770_map_clkf_to_ibias.exit.i.if.end70.i_crit_edge: ; preds = %rv770_map_clkf_to_ibias.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70.i

if.then39.i:                                      ; preds = %rv770_map_clkf_to_ibias.exit.i
  %mul4.i3.i = shl i32 %93, 5
  %mul5.i4.i = mul i32 %mul4.i3.i, %mul4.i.i
  %div6.i5.i = udiv i32 %mul5.i4.i, %110
  %div712.i6.i = lshr i32 %div6.i5.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %div6.i5.i)
  %cmp.i8.i = icmp ult i32 %div6.i5.i, 136
  br i1 %cmp.i8.i, label %if.then39.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, label %if.end.i10.i

if.then39.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit19.i

if.end.i10.i:                                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %div6.i5.i)
  %cmp1.i9.i = icmp ult i32 %div6.i5.i, 208
  br i1 %cmp1.i9.i, label %if.end.i10.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, label %if.end3.i12.i

if.end.i10.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge: ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit19.i

if.end3.i12.i:                                    ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %div6.i5.i)
  %cmp4.i11.i = icmp ult i32 %div6.i5.i, 272
  br i1 %cmp4.i11.i, label %if.end3.i12.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, label %if.end6.i14.i

if.end3.i12.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge: ; preds = %if.end3.i12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit19.i

if.end6.i14.i:                                    ; preds = %if.end3.i12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %div6.i5.i)
  %cmp7.i13.i = icmp ult i32 %div6.i5.i, 320
  br i1 %cmp7.i13.i, label %if.end6.i14.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, label %if.end9.i17.i

if.end6.i14.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge: ; preds = %if.end6.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_map_clkf_to_ibias.exit19.i

if.end9.i17.i:                                    ; preds = %if.end6.i14.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %div6.i5.i)
  %cmp10.i15.i = icmp ult i32 %div6.i5.i, 400
  %..i16.i = select i1 %cmp10.i15.i, i32 164626432, i32 207618048
  br label %rv770_map_clkf_to_ibias.exit19.i

rv770_map_clkf_to_ibias.exit19.i:                 ; preds = %if.end9.i17.i, %if.end6.i14.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, %if.end3.i12.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, %if.end.i10.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge, %if.then39.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge
  %retval.0.i18.i = phi i32 [ 78643200, %if.then39.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge ], [ 95420416, %if.end.i10.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge ], [ 45088768, %if.end3.i12.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge ], [ 113246208, %if.end6.i14.i.rv770_map_clkf_to_ibias.exit19.i_crit_edge ], [ %..i16.i, %if.end9.i17.i ]
  %124 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %118, label %rv770_map_clkf_to_ibias.exit19.i.rv770_populate_mclk_value.exit_crit_edge [
    i32 1, label %rv770_map_clkf_to_ibias.exit19.i.if.end47.i_crit_edge
    i32 2, label %sw.bb1.i20.i
    i32 4, label %sw.bb2.i21.i
    i32 8, label %sw.bb3.i22.i
    i32 16, label %sw.bb4.i23.i
  ]

rv770_map_clkf_to_ibias.exit19.i.if.end47.i_crit_edge: ; preds = %rv770_map_clkf_to_ibias.exit19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

rv770_map_clkf_to_ibias.exit19.i.rv770_populate_mclk_value.exit_crit_edge: ; preds = %rv770_map_clkf_to_ibias.exit19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rv770_populate_mclk_value.exit

sw.bb1.i20.i:                                     ; preds = %rv770_map_clkf_to_ibias.exit19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

sw.bb2.i21.i:                                     ; preds = %rv770_map_clkf_to_ibias.exit19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

sw.bb3.i22.i:                                     ; preds = %rv770_map_clkf_to_ibias.exit19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

sw.bb4.i23.i:                                     ; preds = %rv770_map_clkf_to_ibias.exit19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i

if.end47.i:                                       ; preds = %sw.bb4.i23.i, %sw.bb3.i22.i, %sw.bb2.i21.i, %sw.bb1.i20.i, %rv770_map_clkf_to_ibias.exit19.i.if.end47.i_crit_edge
  %.sink.i24.i = phi i32 [ 524288, %sw.bb4.i23.i ], [ 393216, %sw.bb3.i22.i ], [ 262144, %sw.bb2.i21.i ], [ 131072, %sw.bb1.i20.i ], [ 0, %rv770_map_clkf_to_ibias.exit19.i.if.end47.i_crit_edge ]
  %and48.i = and i32 %101, -1073217536
  %or54.i = or i32 %shl.i157, %and48.i
  %rem.i7.i = shl i32 %div6.i5.i, 12
  %shl59.i = and i32 %rem.i7.i, 28672
  %or56.i = or i32 %or54.i, %div712.i6.i
  %or58.i = or i32 %or56.i, %shl59.i
  %or60.i = or i32 %or58.i, %retval.0.i18.i
  %or62.i = or i32 %or60.i, %.sink.i24.i
  br i1 %tobool32.not.i, label %if.else67.i, label %if.then65.i

if.then65.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %or66.i = or i32 %103, 536870912
  br label %if.end70.i

if.else67.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #15
  %and68.i = and i32 %103, -536870913
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else67.i, %if.then65.i, %rv770_map_clkf_to_ibias.exit.i.if.end70.i_crit_edge
  %mpll_dq_func_cntl.0.i = phi i32 [ %or62.i, %if.then65.i ], [ %or62.i, %if.else67.i ], [ %101, %rv770_map_clkf_to_ibias.exit.i.if.end70.i_crit_edge ]
  %mpll_dq_func_cntl_2.0.i = phi i32 [ %or66.i, %if.then65.i ], [ %and68.i, %if.else67.i ], [ %103, %rv770_map_clkf_to_ibias.exit.i.if.end70.i_crit_edge ]
  %mclk_value.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11, i32 0, i32 8
  %125 = ptrtoint ptr %mclk_value.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %93, ptr %mclk_value.i, align 1
  %126 = ptrtoint ptr %mclk78 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %or31.i, ptr %mclk78, align 1
  %vMPLL_AD_FUNC_CNTL_2.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11, i32 0, i32 1
  %127 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 %mpll_ad_func_cntl_2.0.i, ptr %vMPLL_AD_FUNC_CNTL_2.i, align 1
  %vMPLL_DQ_FUNC_CNTL.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11, i32 0, i32 2
  %128 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %mpll_dq_func_cntl.0.i, ptr %vMPLL_DQ_FUNC_CNTL.i, align 1
  %vMPLL_DQ_FUNC_CNTL_2.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11, i32 0, i32 3
  %129 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %mpll_dq_func_cntl_2.0.i, ptr %vMPLL_DQ_FUNC_CNTL_2.i, align 1
  %vMCLK_PWRMGT_CNTL.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11, i32 0, i32 4
  %130 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %105, ptr %vMCLK_PWRMGT_CNTL.i, align 1
  %vDLL_CNTL.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11, i32 0, i32 5
  %131 = ptrtoint ptr %vDLL_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %131, i32 4)
  store i32 %107, ptr %vDLL_CNTL.i, align 1
  br label %rv770_populate_mclk_value.exit

rv770_populate_mclk_value.exit:                   ; preds = %if.end70.i, %rv770_map_clkf_to_ibias.exit19.i.rv770_populate_mclk_value.exit_crit_edge, %if.end16.i.rv770_populate_mclk_value.exit_crit_edge, %if.end.i153.rv770_populate_mclk_value.exit_crit_edge, %if.else75.rv770_populate_mclk_value.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end70.i ], [ %call12.i, %if.else75.rv770_populate_mclk_value.exit_crit_edge ], [ -22, %if.end.i153.rv770_populate_mclk_value.exit_crit_edge ], [ -22, %if.end16.i.rv770_populate_mclk_value.exit_crit_edge ], [ -22, %rv770_map_clkf_to_ibias.exit19.i.rv770_populate_mclk_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i149) #13
  br label %if.end81

if.end81:                                         ; preds = %rv770_populate_mclk_value.exit, %if.then70, %if.end57
  %ret.1 = phi i32 [ %call61, %if.end57 ], [ %call74, %if.then70 ], [ %retval.0.i, %rv770_populate_mclk_value.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool82.not = icmp eq i32 %ret.1, 0
  br i1 %tobool82.not, label %if.end84, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end84:                                         ; preds = %if.end81
  %vddc = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 2
  %132 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vddc, align 4
  %vddc85 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 12
  %134 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %priv.i, align 4
  %voltage_control.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %voltage_control.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %voltage_control.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool.not.i160 = icmp eq i8 %137, 0
  br i1 %tobool.not.i160, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end84
  %valid_vddc_entries.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %135, i32 0, i32 30
  %138 = ptrtoint ptr %valid_vddc_entries.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %valid_vddc_entries.i, align 4
  %conv.i161 = zext i8 %139 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp37.not.i = icmp eq i8 %139, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.then.i:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %index.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 12, i32 1
  %140 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %index.i, align 1
  %141 = ptrtoint ptr %vddc85 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 2)
  store i16 0, ptr %vddc85, align 1
  br label %if.end89

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.038.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i162 = getelementptr %struct.rv7xx_power_info, ptr %135, i32 0, i32 29, i32 %i.038.i
  %142 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx.i162, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %143, i16 %133)
  %cmp5.not.i = icmp ult i16 %143, %133
  br i1 %cmp5.not.i, label %for.inc.i, label %if.then7.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %vddc_index.i = getelementptr %struct.rv7xx_power_info, ptr %135, i32 0, i32 29, i32 %i.038.i, i32 1
  %144 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %vddc_index.i, align 2
  %index10.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 12, i32 1
  %146 = ptrtoint ptr %index10.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %index10.i, align 1
  %147 = ptrtoint ptr %vddc85 to i32
  call void @__asan_storeN_noabort(i32 %147, i32 2)
  store i16 %133, ptr %vddc85, align 1
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i161
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then7.i, %for.cond.preheader.i.for.end.i_crit_edge
  %i.035.i = phi i32 [ %i.038.i, %if.then7.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv.i161, %for.inc.i.for.end.i_crit_edge ]
  %148 = ptrtoint ptr %valid_vddc_entries.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %valid_vddc_entries.i, align 4
  %conv14.i = zext i8 %149 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.035.i, i32 %conv14.i)
  %cmp15.i = icmp eq i32 %i.035.i, %conv14.i
  br i1 %cmp15.i, label %for.end.i.cleanup_crit_edge, label %for.end.i.if.end89_crit_edge

for.end.i.if.end89_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end89:                                         ; preds = %for.end.i.if.end89_crit_edge, %if.then.i
  %mvdd = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 13
  %150 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv.i, align 4
  %mvdd_control.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %mvdd_control.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i165 = icmp eq i8 %153, 0
  br i1 %tobool.not.i165, label %if.then.i167, label %if.end.i168

if.then.i167:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  %index.i166 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 13, i32 1
  %154 = ptrtoint ptr %index.i166 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %index.i166, align 1
  br label %rv770_populate_mvdd_value.exit

if.end.i168:                                      ; preds = %if.end89
  %mclk90 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %155 = ptrtoint ptr %mclk90 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mclk90, align 4
  %mvdd_split_frequency.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %151, i32 0, i32 23
  %157 = ptrtoint ptr %mvdd_split_frequency.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mvdd_split_frequency.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %156)
  %cmp.not.i = icmp ult i32 %158, %156
  %index4.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 13, i32 1
  br i1 %cmp.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #15
  %159 = ptrtoint ptr %index4.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %index4.i, align 1
  br label %rv770_populate_mvdd_value.exit

if.else.i:                                        ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #15
  %160 = ptrtoint ptr %index4.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %index4.i, align 1
  br label %rv770_populate_mvdd_value.exit

rv770_populate_mvdd_value.exit:                   ; preds = %if.else.i, %if.then1.i, %if.then.i167
  %storemerge13.i = phi i16 [ -1, %if.then.i167 ], [ -1, %if.else.i ], [ 0, %if.then1.i ]
  %161 = ptrtoint ptr %mvdd to i32
  call void @__asan_storeN_noabort(i32 %161, i32 2)
  store i16 %storemerge13.i, ptr %mvdd, align 1
  br label %cleanup

cleanup:                                          ; preds = %rv770_populate_mvdd_value.exit, %for.end.i.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rv770_populate_mvdd_value.exit ], [ %ret.0, %if.end30.cleanup_crit_edge ], [ %ret.1, %if.end81.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_populate_sclk_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv730_populate_sclk_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_populate_mclk_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv730_populate_mclk_value(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_program_memory_timing_parameters(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_engine_dram_timings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_program_dcodt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv740_read_clock_registers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_read_clock_registers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv370_pcie_rreg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv370_pcie_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_get_default_voltages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 197, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1422, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1911, i32 4}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1922, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1950, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1955, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1994, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2047, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2053, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2058, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2066, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2442, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rv770_dpm_print_power_state._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @rv770_dpm_print_power_state._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2445, i32 3}
!30 = !{ptr @rv770_dpm_print_power_state._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rv770_dpm_print_power_state._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2448, i32 3}
!34 = !{ptr @rv770_dpm_print_power_state._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rv770_dpm_print_power_state._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2451, i32 3}
!38 = !{ptr @rv770_dpm_print_power_state._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rv770_dpm_print_power_state._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2455, i32 3}
!42 = !{ptr @rv770_dpm_print_power_state._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rv770_dpm_print_power_state._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2458, i32 3}
!46 = !{ptr @rv770_dpm_print_power_state._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rv770_dpm_print_power_state._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2461, i32 3}
!50 = !{ptr @rv770_dpm_print_power_state._entry.29, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rv770_dpm_print_power_state._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2478, i32 17}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2486, i32 17}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2488, i32 18}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 2491, i32 18}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/rv770_dpm.c", i32 1881, i32 3}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 6757976}
!72 = !{i64 2157478161}
!73 = !{i64 2157478568}
!74 = !{i64 6757558}
!75 = !{i8 0, i8 2}
!76 = !{!"auto-init"}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.peeled.count", i32 1}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2148947408, i64 2148947688, i64 2148948022, i64 2148948356}
