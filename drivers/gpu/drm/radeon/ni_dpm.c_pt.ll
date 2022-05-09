; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/ni_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/ni_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ni_cac_weights = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, [8 x i32], [4 x i32], i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.90] }
%struct.anon.90 = type { [12 x %struct.ttm_pool_type] }
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
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.ni_ps = type { i16, i8, [16 x %struct.rv7xx_pl] }
%struct.rv7xx_pl = type { i32, i32, i16, i16, i32, i32 }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.96, %struct.anon.97, [8 x ptr], %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105 }
%struct.anon.96 = type { ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, ptr }
%struct.anon.99 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.ni_power_info = type { %struct.evergreen_power_info, %struct.ni_clock_registers, %struct.ni_mc_reg_table, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, %struct.ni_cac_data, [8 x i32], ptr, i8, i8, %struct.ni_ps, %struct.ni_ps, %struct.SMC_NIslands_MCRegisters, %struct.NISLANDS_SMC_STATETABLE }
%struct.evergreen_power_info = type { %struct.rv7xx_power_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, %struct.evergreen_mc_reg_table, %struct.atom_voltage_table, %struct.atom_voltage_table, %struct.evergreen_arb_registers, %struct.evergreen_ulv_param, [2 x %struct.at], i16, %struct.radeon_ps, %struct.rv7xx_ps, %struct.radeon_ps, %struct.rv7xx_ps }
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
%struct.evergreen_mc_reg_table = type { i8, i8, i16, [16 x %struct.evergreen_mc_reg_entry], [16 x %struct.SMC_Evergreen_MCRegisterAddress] }
%struct.evergreen_mc_reg_entry = type { i32, [16 x i32] }
%struct.SMC_Evergreen_MCRegisterAddress = type { i16, i16 }
%struct.atom_voltage_table = type { i32, i32, i32, [32 x %struct.atom_voltage_table_entry] }
%struct.atom_voltage_table_entry = type { i16, i32 }
%struct.evergreen_arb_registers = type { i32, i32, i32, i32 }
%struct.evergreen_ulv_param = type { i8, ptr }
%struct.at = type { i32, i32, i32, i32 }
%struct.rv7xx_ps = type { %struct.rv7xx_pl, %struct.rv7xx_pl, %struct.rv7xx_pl, i8 }
%struct.ni_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ni_mc_reg_table = type { i8, i8, i16, [16 x %struct.ni_mc_reg_entry], [32 x %struct.SMC_NIslands_MCRegisterAddress] }
%struct.ni_mc_reg_entry = type { i32, [32 x i32] }
%struct.SMC_NIslands_MCRegisterAddress = type { i16, i16 }
%struct.ni_cac_data = type { %struct.ni_leakage_coeffients, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.ni_leakage_coeffients = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.SMC_NIslands_MCRegisters = type { i8, [3 x i8], [32 x %struct.SMC_NIslands_MCRegisterAddress], [20 x %struct.SMC_NIslands_MCRegisterSet] }
%struct.SMC_NIslands_MCRegisterSet = type { [32 x i32] }
%struct.NISLANDS_SMC_STATETABLE = type { i8, i8, i8, i8, [32 x i8], [32 x i32], %struct.NISLANDS_SMC_VOLTAGEMASKTABLE, %struct.PP_NIslands_DPM2Parameters, %struct.NISLANDS_SMC_SWSTATE_SINGLE, %struct.NISLANDS_SMC_SWSTATE_SINGLE, %struct.NISLANDS_SMC_SWSTATE_SINGLE, %struct.NISLANDS_SMC_SWSTATE, [16 x %struct.NISLANDS_SMC_HW_PERFORMANCE_LEVEL] }
%struct.NISLANDS_SMC_VOLTAGEMASKTABLE = type { [4 x i8], [4 x i32] }
%struct.PP_NIslands_DPM2Parameters = type { i32, i32, i32, i32 }
%struct.NISLANDS_SMC_SWSTATE_SINGLE = type { i8, i8, i8, i8, %struct.NISLANDS_SMC_HW_PERFORMANCE_LEVEL }
%struct.NISLANDS_SMC_HW_PERFORMANCE_LEVEL = type { i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, %struct.NISLANDS_SMC_SCLK_VALUE, %struct.NISLANDS_SMC_MCLK_VALUE, %struct.NISLANDS_SMC_VOLTAGE_VALUE, %struct.NISLANDS_SMC_VOLTAGE_VALUE, %struct.NISLANDS_SMC_VOLTAGE_VALUE, %struct.NISLANDS_SMC_VOLTAGE_VALUE, i32, i8, i8, i8, i8, i32, i32, [2 x i32], %struct.PP_NIslands_Dpm2PerfLevel }
%struct.NISLANDS_SMC_SCLK_VALUE = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.NISLANDS_SMC_MCLK_VALUE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.NISLANDS_SMC_VOLTAGE_VALUE = type { i16, i8, i8 }
%struct.PP_NIslands_Dpm2PerfLevel = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8] }
%struct.NISLANDS_SMC_SWSTATE = type { i8, i8, i8, i8, [0 x %struct.NISLANDS_SMC_HW_PERFORMANCE_LEVEL] }
%struct.atom_mc_reg_table = type { i8, i8, [20 x %struct.atom_mc_reg_entry], [32 x %struct.atom_mc_register_address] }
%struct.atom_mc_reg_entry = type { i32, [32 x i32] }
%struct.atom_mc_register_address = type { i16, i8 }
%union.radeon_cac_leakage_entry = type { %struct.anon.106 }
%struct.anon.106 = type { i16, i32 }
%struct.SMC_NISLANDS_SPLL_DIV_TABLE = type { [256 x i32], [256 x i32] }
%struct.PP_NIslands_CACTABLES = type { [4 x i32], [16 x [16 x i32]], i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [9 x i8], i8, i8, i8, i8, [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i8, [7 x i8] }
%struct.atom_clock_dividers = type { i32, %union.anon.110, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32 }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ATOM_PPLIB_STATE = type { i8, [1 x i8] }
%struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i16, i32 }>
%struct.radeon_clock_voltage_dependency_entry = type { i32, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.SMC_NIslands_MCArbDramTimingRegisterSet = type { i32, i32, i8, [3 x i8] }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load MC firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cypress_construct_voltage_tables failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rv770_upload_firmware failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ni_process_firmware_header failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ni_initial_switch_from_arb_f0_to_f1 failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ni_init_smc_table failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ni_init_smc_spll_table failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ni_init_arb_table_index failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ni_populate_mc_reg_table failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ni_initialize_smc_cac_tables failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ni_initialize_hardware_cac_manager failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ni_populate_smc_tdp_limits failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cypress_notify_smc_display_change failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ni_restrict_performance_levels_before_switch failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ni_enable_power_containment failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ni_enable_smc_cac failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv770_halt_smc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ni_upload_sw_state failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ni_upload_mc_reg_table failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ni_program_memory_timing_parameters failed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rv770_resume_smc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rv770_set_sw_state failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ni_power_control_set_level failed\0A\00", [61 x i8] zeroinitializer }, align 32
@btc_valid_sclk = external dso_local global [40 x i32], align 4
@cac_weights_cayman_xt = internal constant { %struct.ni_cac_weights, [88 x i8] } { %struct.ni_cac_weights { i32 21, i32 2, i32 25, i32 2, i32 8, i32 20, i32 2, i32 22, i32 14, i32 23, i32 19, i32 43, i32 16, i32 7, i32 5, i32 5, i32 5, i32 2, i32 3, i32 9, i32 16, i32 16, i32 43, i32 10, i32 9, i32 4, i32 13, i32 13, i32 62, i32 24, i32 20, i32 0, i32 3, i32 3, i32 5, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 460, i32 0, i32 356, i32 1, i32 1, i32 1, i32 1, i32 12, i32 12, i32 12, i8 18, i8 31, i32 132, i32 5, i32 7, i32 0, [8 x i32] zeroinitializer, [4 x i32] zeroinitializer, i8 1 }, [88 x i8] zeroinitializer }, align 32
@cac_weights_cayman_pro = internal constant { %struct.ni_cac_weights, [88 x i8] } { %struct.ni_cac_weights { i32 22, i32 4, i32 16, i32 2, i32 10, i32 22, i32 2, i32 24, i32 16, i32 26, i32 22, i32 45, i32 18, i32 10, i32 6, i32 6, i32 6, i32 2, i32 4, i32 11, i32 17, i32 17, i32 45, i32 12, i32 12, i32 7, i32 16, i32 16, i32 63, i32 26, i32 22, i32 0, i32 7, i32 4, i32 6, i32 1, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 0, i32 463, i32 0, i32 358, i32 1, i32 1, i32 1, i32 1, i32 12, i32 12, i32 12, i8 21, i8 31, i32 132, i32 6, i32 6, i32 0, [8 x i32] zeroinitializer, [4 x i32] zeroinitializer, i8 1 }, [88 x i8] zeroinitializer }, align 32
@cac_weights_cayman_le = internal constant { %struct.ni_cac_weights, [88 x i8] } { %struct.ni_cac_weights { i32 7, i32 14, i32 1, i32 10, i32 1, i32 63, i32 2, i32 24, i32 16, i32 26, i32 1, i32 63, i32 1, i32 14, i32 6, i32 6, i32 6, i32 2, i32 4, i32 9, i32 26, i32 26, i32 44, i32 10, i32 17, i32 8, i32 25, i32 25, i32 1, i32 1, i32 26, i32 0, i32 8, i32 5, i32 8, i32 1, i32 3, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 56, i32 569, i32 3, i32 394, i32 1, i32 1, i32 1, i32 1, i32 12, i32 12, i32 12, i8 21, i8 34, i32 132, i32 6, i32 6, i32 0, [8 x i32] zeroinitializer, [4 x i32] zeroinitializer, i8 1 }, [88 x i8] zeroinitializer }, align 32
@ni_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 4292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ni_dpm_print_power_state\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/radeon/ni_dpm.c\00", [32 x i8] zeroinitializer }, align 32
@ni_dpm_print_power_state._entry_ptr = internal global ptr @ni_dpm_print_power_state._entry, section ".printk_index", align 4
@ni_dpm_print_power_state._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.25, i32 4297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\09\09power level %d    sclk: %u mclk: %u vddc: %u vddci: %u pcie gen: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@ni_dpm_print_power_state._entry_ptr.28 = internal global ptr @ni_dpm_print_power_state._entry.26, section ".printk_index", align 4
@ni_dpm_print_power_state._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.25, i32 4300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\09\09power level %d    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ni_dpm_print_power_state._entry_ptr.31 = internal global ptr @ni_dpm_print_power_state._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"power level %d    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@cayman_cgcg_cgls_default = internal constant { [144 x i32], [128 x i8] } { [144 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1], [128 x i8] zeroinitializer }, align 32
@cayman_mgcg_default = internal constant { [600 x i32], [576 x i8] } { [600 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 16324, i32 -1073741824, i32 -1, i32 21576, i32 256, i32 -1, i32 21988, i32 256, i32 -1, i32 5644, i32 256, i32 -1, i32 35204, i32 100663552, i32 -1, i32 49508, i32 256, i32 -1, i32 35352, i32 256, i32 -1, i32 35196, i32 100663552, i32 -1, i32 35624, i32 256, i32 -1, i32 37188, i32 8389120, i32 -1, i32 39520, i32 256, i32 -1, i32 39016, i32 256, i32 -1, i32 36184, i32 256, i32 -1, i32 38160, i32 256, i32 -1, i32 38044, i32 256, i32 -1, i32 38484, i32 256, i32 -1, i32 36912, i32 256, i32 -1, i32 36916, i32 256, i32 -1, i32 36920, i32 256, i32 -1, i32 36924, i32 256, i32 -1, i32 36928, i32 256, i32 -1, i32 41472, i32 256, i32 -1, i32 41476, i32 256, i32 -1, i32 41480, i32 256, i32 -1, i32 41484, i32 256, i32 -1, i32 38724, i32 256, i32 -1, i32 16256, i32 256, i32 -1, i32 41488, i32 256, i32 -1, i32 41492, i32 256, i32 -1, i32 1240, i32 256, i32 -1, i32 38500, i32 256, i32 -1, i32 38552, i32 256, i32 -1, i32 1236, i32 512, i32 -1, i32 1232, i32 0, i32 -1, i32 12492, i32 260, i32 -1, i32 53440, i32 256, i32 -1, i32 55488, i32 256, i32 -1, i32 32812, i32 1073741824, i32 -1, i32 16324, i32 1073741824, i32 -1, i32 37212, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37296, i32 458752, i32 -1, i32 37300, i32 196610, i32 -1, i32 37304, i32 327684, i32 -1, i32 37316, i32 65542, i32 -1, i32 37320, i32 589832, i32 -1, i32 37324, i32 458752, i32 -1, i32 37328, i32 196610, i32 -1, i32 37332, i32 327684, i32 -1, i32 37344, i32 65542, i32 -1, i32 37348, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37356, i32 458752, i32 -1, i32 37360, i32 196610, i32 -1, i32 37364, i32 327684, i32 -1, i32 37376, i32 65542, i32 -1, i32 37380, i32 589832, i32 -1, i32 37384, i32 458752, i32 -1, i32 37388, i32 196610, i32 -1, i32 37392, i32 327684, i32 -1, i32 37404, i32 65542, i32 -1, i32 37408, i32 589832, i32 -1, i32 37412, i32 458752, i32 -1, i32 37416, i32 196610, i32 -1, i32 37420, i32 327684, i32 -1, i32 37432, i32 65542, i32 -1, i32 37436, i32 589832, i32 -1, i32 37440, i32 458752, i32 -1, i32 37444, i32 196610, i32 -1, i32 37448, i32 327684, i32 -1, i32 37460, i32 65542, i32 -1, i32 37464, i32 589832, i32 -1, i32 37468, i32 458752, i32 -1, i32 37472, i32 196610, i32 -1, i32 37476, i32 327684, i32 -1, i32 37488, i32 65542, i32 -1, i32 37492, i32 589832, i32 -1, i32 37496, i32 458752, i32 -1, i32 37500, i32 196610, i32 -1, i32 37504, i32 327684, i32 -1, i32 37516, i32 65542, i32 -1, i32 37520, i32 589832, i32 -1, i32 37544, i32 458752, i32 -1, i32 37548, i32 196610, i32 -1, i32 37552, i32 327684, i32 -1, i32 37564, i32 65542, i32 -1, i32 37568, i32 589832, i32 -1, i32 37572, i32 458752, i32 -1, i32 37576, i32 196610, i32 -1, i32 37580, i32 327684, i32 -1, i32 37592, i32 65542, i32 -1, i32 37596, i32 589832, i32 -1, i32 37524, i32 0, i32 -1, i32 32812, i32 1073807360, i32 -1, i32 16324, i32 1073807360, i32 -1, i32 37212, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37296, i32 458752, i32 -1, i32 37300, i32 196610, i32 -1, i32 37304, i32 327684, i32 -1, i32 37316, i32 65542, i32 -1, i32 37320, i32 589832, i32 -1, i32 37324, i32 458752, i32 -1, i32 37328, i32 196610, i32 -1, i32 37332, i32 327684, i32 -1, i32 37344, i32 65542, i32 -1, i32 37348, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37356, i32 458752, i32 -1, i32 37360, i32 196610, i32 -1, i32 37364, i32 327684, i32 -1, i32 37376, i32 65542, i32 -1, i32 37380, i32 589832, i32 -1, i32 37384, i32 458752, i32 -1, i32 37388, i32 196610, i32 -1, i32 37392, i32 327684, i32 -1, i32 37404, i32 65542, i32 -1, i32 37408, i32 589832, i32 -1, i32 37412, i32 458752, i32 -1, i32 37416, i32 196610, i32 -1, i32 37420, i32 327684, i32 -1, i32 37432, i32 65542, i32 -1, i32 37436, i32 589832, i32 -1, i32 37440, i32 458752, i32 -1, i32 37444, i32 196610, i32 -1, i32 37448, i32 327684, i32 -1, i32 37460, i32 65542, i32 -1, i32 37464, i32 589832, i32 -1, i32 37468, i32 458752, i32 -1, i32 37472, i32 196610, i32 -1, i32 37476, i32 327684, i32 -1, i32 37488, i32 65542, i32 -1, i32 37492, i32 589832, i32 -1, i32 37496, i32 458752, i32 -1, i32 37500, i32 196610, i32 -1, i32 37504, i32 327684, i32 -1, i32 37516, i32 65542, i32 -1, i32 37520, i32 589832, i32 -1, i32 37544, i32 458752, i32 -1, i32 37548, i32 196610, i32 -1, i32 37552, i32 327684, i32 -1, i32 37564, i32 65542, i32 -1, i32 37568, i32 589832, i32 -1, i32 37572, i32 458752, i32 -1, i32 37576, i32 196610, i32 -1, i32 37580, i32 327684, i32 -1, i32 37592, i32 65542, i32 -1, i32 37596, i32 589832, i32 -1, i32 37524, i32 0, i32 -1, i32 32812, i32 -1073741824, i32 -1, i32 16324, i32 -1073741824, i32 -1, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1], [576 x i8] zeroinitializer }, align 32
@cayman_sysls_default = internal constant { [51 x i32], [52 x i8] } { [51 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 55484, i32 0, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 12112, i32 1028, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 36348, i32 0, i32 -1], [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cayman_cgcg_cgls_enable = internal constant { [147 x i32], [148 x i8] } { [147 x i32] [i32 1604, i32 1013890, i32 2048128, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 -1, i32 -1], [148 x i8] zeroinitializer }, align 32
@cayman_cgcg_cgls_disable = internal constant { [150 x i32], [136 x i8] } { [150 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1, i32 1604, i32 1014018, i32 2048384, i32 1604, i32 997378, i32 2048384], [136 x i8] zeroinitializer }, align 32
@cayman_mgcg_enable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 6291456, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 0, i32 -1, i32 37200, i32 -1768668672, i32 -1], [40 x i8] zeroinitializer }, align 32
@cayman_mgcg_disable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 -1, i32 -1, i32 37200, i32 6291456, i32 -1], [40 x i8] zeroinitializer }, align 32
@cayman_sysls_enable = internal constant { [51 x i32], [52 x i8] } { [51 x i32] [i32 21992, i32 1, i32 -1, i32 53436, i32 256, i32 -1, i32 55484, i32 256, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 12112, i32 2307, i32 -1, i32 1224, i32 0, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 36348, i32 0, i32 -1], [52 x i8] zeroinitializer }, align 32
@cayman_sysls_disable = internal constant { [57 x i32], [60 x i8] } { [57 x i32] [i32 53440, i32 0, i32 -1, i32 55488, i32 0, i32 -1, i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 55484, i32 0, i32 -1, i32 5568, i32 267265, i32 -1, i32 9804, i32 263168, i32 -1, i32 9800, i32 263168, i32 -1, i32 9808, i32 263168, i32 -1, i32 8376, i32 263168, i32 -1, i32 8380, i32 263168, i32 -1, i32 8384, i32 265344, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6815744, i32 -1, i32 12112, i32 1028, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 32765, i32 -1, i32 3196, i32 65280, i32 -1, i32 36348, i32 127, i32 -1], [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ni_dpm_init = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @cac_weights_cayman_xt, ptr @cac_weights_cayman_xt, ptr @cac_weights_cayman_xt, ptr @cac_weights_cayman_xt, ptr @cac_weights_cayman_le, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_le, ptr @cac_weights_cayman_le, ptr @cac_weights_cayman_le, ptr @cac_weights_cayman_le, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_xt], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.37 = internal global [15 x i64] [i64 13, i64 16, i64 2600, i64 2601, i64 2602, i64 2603, i64 2604, i64 2605, i64 2606, i64 2607, i64 2608, i64 2691, i64 2731, i64 2769, i64 2775]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 16, i64 2689, i64 2690]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 10]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3552, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3605, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3629, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3634, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3639, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3644, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3649, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3654, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3660, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3666, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3671, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3676, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3683, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3788, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3794, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3799, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3804, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3811, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3817, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3823, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3828, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3833, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 3851, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"cac_weights_cayman_xt\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 44, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"cac_weights_cayman_pro\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 113, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"cac_weights_cayman_le\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 182, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 4292, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 4296, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 4299, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 4317, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 4320, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 4321, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant [25 x i8] c"cayman_cgcg_cgls_default\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 253, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"cayman_mgcg_default\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 415, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [21 x i8] c"cayman_sysls_default\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 653, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"cayman_cgcg_cgls_enable\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 361, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [25 x i8] c"cayman_cgcg_cgls_disable\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 306, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [19 x i8] c"cayman_mgcg_enable\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 635, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"cayman_mgcg_disable\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 620, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"cayman_sysls_enable\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 701, i32 18 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"cayman_sysls_disable\00", align 1
@___asan_gen_.176 = private constant [35 x i8] c"../drivers/gpu/drm/radeon/ni_dpm.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 676, i32 18 }
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"switch.table.ni_dpm_init\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @ni_dpm_print_power_state._entry, ptr @ni_dpm_print_power_state._entry.26, ptr @ni_dpm_print_power_state._entry.29, ptr @ni_dpm_print_power_state._entry_ptr, ptr @ni_dpm_print_power_state._entry_ptr.28, ptr @ni_dpm_print_power_state._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @cac_weights_cayman_xt, ptr @cac_weights_cayman_pro, ptr @cac_weights_cayman_le, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @cayman_cgcg_cgls_default, ptr @cayman_mgcg_default, ptr @cayman_sysls_default, ptr @cayman_cgcg_cgls_enable, ptr @cayman_cgcg_cgls_disable, ptr @cayman_mgcg_enable, ptr @cayman_mgcg_disable, ptr @cayman_sysls_enable, ptr @cayman_sysls_disable, ptr @switch.table.ni_dpm_init], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cac_weights_cayman_xt to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cac_weights_cayman_pro to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cac_weights_cayman_le to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_dpm_print_power_state._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_dpm_print_power_state._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cgcg_cgls_default to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_mgcg_default to i32), i32 2400, i32 2976, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_sysls_default to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cgcg_cgls_enable to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_cgcg_cgls_disable to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_mgcg_enable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_mgcg_disable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_sysls_enable to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cayman_sysls_disable to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_dpm_init to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ni_get_pi(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ni_get_ps(ptr nocapture noundef readonly %rps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ni_dpm_vblank_too_short(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1 = tail call i32 @r600_dpm_get_vblank_time(ptr noundef %rdev) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 450
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %cond)
  %cmp = icmp ult i32 %call1, %cond
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_pi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_get_vblank_time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.if.end43_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then12
    i32 0, label %if.then28
  ]

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !101
  %call.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 130) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i)
  %cmp1.not = icmp eq i8 %call.i, 1
  br i1 %cmp1.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %4, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 16777216) #9, !srcloc !101
  %call.i55 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 131) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i55)
  %cmp6.not = icmp eq i8 %call.i55, 1
  br i1 %cmp6.not, label %if.end.if.end43_crit_edge, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then12:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %rmmio.i.i56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i56 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i56, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %6, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 0) #9, !srcloc !101
  %call.i58 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 131) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i58)
  %cmp15.not = icmp eq i8 %call.i58, 1
  br i1 %cmp15.not, label %if.end18, label %if.then12.return_crit_edge

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end18:                                         ; preds = %if.then12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %rmmio.i.i56 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i56, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %8, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 16777216) #9, !srcloc !101
  %call.i61 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 130) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i61)
  %cmp21.not = icmp eq i8 %call.i61, 1
  br i1 %cmp21.not, label %if.end18.if.end43_crit_edge, label %if.end18.return_crit_edge

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end18.if.end43_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then28:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %rmmio.i.i62 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i.i62 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i.i62, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %10, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 0) #9, !srcloc !101
  %call.i64 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 131) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i64)
  %cmp31.not = icmp eq i8 %call.i64, 1
  br i1 %cmp31.not, label %if.end34, label %if.then28.return_crit_edge

if.then28.return_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end34:                                         ; preds = %if.then28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %rmmio.i.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i62, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %12, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 0) #9, !srcloc !101
  %call.i67 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 130) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i67)
  %cmp37.not = icmp eq i8 %call.i67, 1
  br i1 %cmp37.not, label %if.end34.if.end43_crit_edge, label %if.end34.return_crit_edge

if.end34.return_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %if.end34.if.end43_crit_edge, %if.end18.if.end43_crit_edge, %if.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %13 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %level, ptr %forced_level, align 4
  br label %return

return:                                           ; preds = %if.end43, %if.end34.return_crit_edge, %if.then28.return_crit_edge, %if.end18.return_crit_edge, %if.then12.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.then12.return_crit_edge ], [ -22, %if.end18.return_crit_edge ], [ -22, %if.then28.return_crit_edge ], [ -22, %if.end34.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_copy_and_switch_arb_sets(ptr noundef readonly %rdev, i32 noundef %arb_freq_src, i32 noundef %arb_freq_dest) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %arb_freq_src to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %arb_freq_src, label %entry.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb3
    i32 12, label %sw.bb9
    i32 13, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 10100
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #9
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %6, i32 10104
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %10, i32 10248
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i126 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %13 = ptrtoint ptr %rmmio.i126 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i126, align 4
  %add.ptr.i127 = getelementptr i8, ptr %14, i32 10224
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  %17 = ptrtoint ptr %rmmio.i126 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i126, align 4
  %add.ptr.i129 = getelementptr i8, ptr %18, i32 10236
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %21 = ptrtoint ptr %rmmio.i126 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i126, align 4
  %add.ptr.i131 = getelementptr i8, ptr %22, i32 10248
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %and7 = lshr i32 %24, 5
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i132 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %25 = ptrtoint ptr %rmmio.i132 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i132, align 4
  %add.ptr.i133 = getelementptr i8, ptr %26, i32 10228
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %29 = ptrtoint ptr %rmmio.i132 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i132, align 4
  %add.ptr.i135 = getelementptr i8, ptr %30, i32 10240
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %33 = ptrtoint ptr %rmmio.i132 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i132, align 4
  %add.ptr.i137 = getelementptr i8, ptr %34, i32 10248
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %and13 = lshr i32 %36, 10
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i138 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %37 = ptrtoint ptr %rmmio.i138 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i138, align 4
  %add.ptr.i139 = getelementptr i8, ptr %38, i32 10232
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %41 = ptrtoint ptr %rmmio.i138 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i138, align 4
  %add.ptr.i141 = getelementptr i8, ptr %42, i32 10244
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = ptrtoint ptr %rmmio.i138 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i138, align 4
  %add.ptr.i143 = getelementptr i8, ptr %46, i32 10248
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  %and19 = lshr i32 %48, 15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb9, %sw.bb3, %sw.bb
  %burst_time.0.in = phi i32 [ %and19, %sw.bb15 ], [ %and13, %sw.bb9 ], [ %and7, %sw.bb3 ], [ %12, %sw.bb ]
  %mc_arb_dram_timing2.0 = phi i32 [ %44, %sw.bb15 ], [ %32, %sw.bb9 ], [ %20, %sw.bb3 ], [ %8, %sw.bb ]
  %mc_arb_dram_timing.0 = phi i32 [ %40, %sw.bb15 ], [ %28, %sw.bb9 ], [ %16, %sw.bb3 ], [ %4, %sw.bb ]
  %burst_time.0 = and i32 %burst_time.0.in, 31
  %49 = zext i32 %arb_freq_dest to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %arb_freq_dest, label %sw.epilog.cleanup_crit_edge [
    i32 10, label %sw.bb21
    i32 11, label %sw.bb25
    i32 12, label %sw.bb35
    i32 13, label %sw.bb45
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing.0) #9
  %rmmio.i144 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %51 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i145 = getelementptr i8, ptr %52, i32 10100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 %50) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %53 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing2.0) #9
  %54 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i149 = getelementptr i8, ptr %55, i32 10104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %53) #9, !srcloc !101
  %56 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i151 = getelementptr i8, ptr %57, i32 10248
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %59 = and i32 %58, -520093697
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %or = or i32 %60, %burst_time.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %61 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %62 = ptrtoint ptr %rmmio.i144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i144, align 4
  %add.ptr.i155 = getelementptr i8, ptr %63, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %61) #9, !srcloc !101
  br label %sw.epilog56

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %64 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing.0) #9
  %rmmio.i158 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %65 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i159 = getelementptr i8, ptr %66, i32 10224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %64) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %67 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing2.0) #9
  %68 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i163 = getelementptr i8, ptr %69, i32 10236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %67) #9, !srcloc !101
  %70 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i165 = getelementptr i8, ptr %71, i32 10248
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %73 = and i32 %72, 536674303
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %shl30 = shl nuw nsw i32 %burst_time.0, 5
  %or32 = or i32 %74, %shl30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %or32) #9
  %76 = ptrtoint ptr %rmmio.i158 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio.i158, align 4
  %add.ptr.i169 = getelementptr i8, ptr %77, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 %75) #9, !srcloc !101
  br label %sw.epilog56

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %78 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing.0) #9
  %rmmio.i172 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %79 = ptrtoint ptr %rmmio.i172 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %80, i32 10228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %78) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %81 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing2.0) #9
  %82 = ptrtoint ptr %rmmio.i172 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i172, align 4
  %add.ptr.i177 = getelementptr i8, ptr %83, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i177, i32 %81) #9, !srcloc !101
  %84 = ptrtoint ptr %rmmio.i172 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i172, align 4
  %add.ptr.i179 = getelementptr i8, ptr %85, i32 10248
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %87 = and i32 %86, -8126465
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %shl40 = shl nuw nsw i32 %burst_time.0, 10
  %or42 = or i32 %88, %shl40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %89 = tail call i32 @llvm.bswap.i32(i32 %or42) #9
  %90 = ptrtoint ptr %rmmio.i172 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i172, align 4
  %add.ptr.i183 = getelementptr i8, ptr %91, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i183, i32 %89) #9, !srcloc !101
  br label %sw.epilog56

sw.bb45:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %92 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing.0) #9
  %rmmio.i186 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %93 = ptrtoint ptr %rmmio.i186 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i186, align 4
  %add.ptr.i187 = getelementptr i8, ptr %94, i32 10232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %92) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %95 = tail call i32 @llvm.bswap.i32(i32 %mc_arb_dram_timing2.0) #9
  %96 = ptrtoint ptr %rmmio.i186 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i186, align 4
  %add.ptr.i191 = getelementptr i8, ptr %97, i32 10244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 %95) #9, !srcloc !101
  %98 = ptrtoint ptr %rmmio.i186 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i186, align 4
  %add.ptr.i193 = getelementptr i8, ptr %99, i32 10248
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %101 = and i32 %100, -8392449
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  %shl50 = shl nuw nsw i32 %burst_time.0, 15
  %or52 = or i32 %102, %shl50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %103 = tail call i32 @llvm.bswap.i32(i32 %or52) #9
  %104 = ptrtoint ptr %rmmio.i186 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i186, align 4
  %add.ptr.i197 = getelementptr i8, ptr %105, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i197, i32 %103) #9, !srcloc !101
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %sw.bb45, %sw.bb35, %sw.bb25, %sw.bb21
  %rmmio.i198 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %106 = ptrtoint ptr %rmmio.i198 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i198, align 4
  %add.ptr.i199 = getelementptr i8, ptr %107, i32 9660
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %109 = or i32 %108, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %110 = ptrtoint ptr %rmmio.i198 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rmmio.i198, align 4
  %add.ptr.i203 = getelementptr i8, ptr %111, i32 9660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203, i32 %109) #9, !srcloc !101
  %112 = ptrtoint ptr %rmmio.i198 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i198, align 4
  %add.ptr.i205 = getelementptr i8, ptr %113, i32 10216
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %115 = and i32 %114, 16777215
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %or65 = or i32 %116, %arb_freq_dest
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %117 = tail call i32 @llvm.bswap.i32(i32 %or65) #9
  %118 = ptrtoint ptr %rmmio.i198 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rmmio.i198, align 4
  %add.ptr.i209 = getelementptr i8, ptr %119, i32 10216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209, i32 %117) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog56, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog56 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_set_uvd_clock_before_set_eng_clock(ptr noundef %rdev, ptr nocapture noundef readonly %new_ps, ptr nocapture noundef readonly %old_ps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %ps_priv.i28 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i28, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv = zext i16 %13 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %conv7 = zext i16 %17 to i32
  %sub8 = add nsw i32 %conv7, -1
  %arrayidx9 = getelementptr %struct.ni_ps, ptr %3, i32 0, i32 2, i32 %sub8
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp11.not = icmp ult i32 %15, %19
  br i1 %cmp11.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %20 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %21, i32 0, i32 20, i32 12
  %22 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_uvd_clocks, align 4
  %dclk16 = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 4
  %24 = ptrtoint ptr %dclk16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dclk16, align 4
  %call17 = tail call i32 %23(ptr noundef %rdev, i32 noundef %5, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_set_uvd_clock_after_set_eng_clock(ptr noundef %rdev, ptr nocapture noundef readonly %new_ps, ptr nocapture noundef readonly %old_ps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %ps_priv.i28 = getelementptr inbounds %struct.radeon_ps, ptr %old_ps, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i28, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv = zext i16 %13 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %conv7 = zext i16 %17 to i32
  %sub8 = add nsw i32 %conv7, -1
  %arrayidx9 = getelementptr %struct.ni_ps, ptr %3, i32 0, i32 2, i32 %sub8
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp11 = icmp ult i32 %15, %19
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %20 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %21, i32 0, i32 20, i32 12
  %22 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_uvd_clocks, align 4
  %dclk16 = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 4
  %24 = ptrtoint ptr %dclk16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dclk16, align 4
  %call17 = tail call i32 %23(ptr noundef %rdev, i32 noundef %5, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %call1 = tail call i32 @ni_mc_load_microcode(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  %clock_registers.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clock_registers.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %clock_registers.i, align 4
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %8, i32 1540
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  %cg_spll_func_cntl_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %cg_spll_func_cntl_2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cg_spll_func_cntl_2.i, align 4
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %13, i32 1544
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  %cg_spll_func_cntl_3.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %cg_spll_func_cntl_3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cg_spll_func_cntl_3.i, align 4
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %18, i32 2128
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %cg_spll_func_cntl_4.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %cg_spll_func_cntl_4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %cg_spll_func_cntl_4.i, align 4
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %23, i32 1936
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %cg_spll_spread_spectrum.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %cg_spll_spread_spectrum.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cg_spll_spread_spectrum.i, align 4
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %28, i32 1940
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %cg_spll_spread_spectrum_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %cg_spll_spread_spectrum_2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %cg_spll_spread_spectrum_2.i, align 4
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %33, i32 1572
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %mpll_ad_func_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %mpll_ad_func_cntl.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mpll_ad_func_cntl.i, align 4
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %38, i32 1576
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %mpll_ad_func_cntl_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 9
  %41 = ptrtoint ptr %mpll_ad_func_cntl_2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mpll_ad_func_cntl_2.i, align 4
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %43, i32 1580
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %mpll_dq_func_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 10
  %46 = ptrtoint ptr %mpll_dq_func_cntl.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mpll_dq_func_cntl.i, align 4
  %47 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %48, i32 1584
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %mpll_dq_func_cntl_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 11
  %51 = ptrtoint ptr %mpll_dq_func_cntl_2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mpll_dq_func_cntl_2.i, align 4
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %53, i32 1608
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #9
  %mclk_pwrmgt_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %mclk_pwrmgt_cntl.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mclk_pwrmgt_cntl.i, align 4
  %57 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %58, i32 1612
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #9
  %dll_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 7
  %61 = ptrtoint ptr %dll_cntl.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %dll_cntl.i, align 4
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %63, i32 2140
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %mpll_ss1.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 12
  %66 = ptrtoint ptr %mpll_ss1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %mpll_ss1.i, align 4
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %68, i32 2144
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %mpll_ss2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 13
  %71 = ptrtoint ptr %mpll_ss2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %mpll_ss2.i, align 4
  tail call void @btc_read_arb_registers(ptr noundef %rdev) #9
  tail call void @rv770_get_memory_type(ptr noundef %rdev) #9
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 7
  %72 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pcie_performance_request, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool2.not = icmp eq i8 %73, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %74 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pciep_rreg.i, align 4
  %call1.i = tail call i32 %75(ptr noundef %rdev, i32 noundef 164) #9
  %76 = and i32 %call1.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %76)
  %.not.i = icmp eq i32 %76, 25165824
  %spec.select.i = zext i1 %.not.i to i8
  %77 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.select.i, ptr %77, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call void @rv770_get_pcie_gen2_status(ptr noundef %rdev) #9
  tail call void @rv770_enable_acpi_pm(ptr noundef %rdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @evergreen_get_pi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_mc_load_microcode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_read_arb_registers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_memory_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_pcie_gen2_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_acpi_pm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_update_current_ps(ptr noundef %rdev, ptr nocapture noundef readonly %rps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 25
  %4 = call ptr @memcpy(ptr %current_rps, ptr %rps, i32 40)
  %current_ps = getelementptr inbounds %struct.ni_power_info, ptr %3, i32 0, i32 22
  %5 = call ptr @memcpy(ptr %current_ps, ptr %1, i32 324)
  %ps_priv = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 25, i32 9
  %6 = ptrtoint ptr %ps_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_ps, ptr %ps_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_update_requested_ps(ptr noundef %rdev, ptr nocapture noundef readonly %rps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 27
  %4 = call ptr @memcpy(ptr %requested_rps, ptr %rps, i32 40)
  %requested_ps = getelementptr inbounds %struct.ni_power_info, ptr %3, i32 0, i32 23
  %5 = call ptr @memcpy(ptr %requested_ps, ptr %1, i32 324)
  %ps_priv = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 27, i32 9
  %6 = ptrtoint ptr %ps_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %requested_ps, ptr %ps_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_enable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %boot_ps2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %0 = ptrtoint ptr %boot_ps2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %boot_ps2, align 4
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gfx_clock_gating, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_cgcg_cgls_default, i32 noundef 48) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call zeroext i1 @btc_dpm_enabled(ptr noundef %rdev) #9
  br i1 %call3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mg_clock_gating, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_mgcg_default, i32 noundef 200) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 11
  %6 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ls_clock_gating, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_sysls_default, i32 noundef 17) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %voltage_control, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  tail call void @rv770_enable_voltage_control(ptr noundef %rdev, i1 noundef zeroext true) #9
  %call14 = tail call i32 @cypress_construct_voltage_tables(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then16

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 2
  %10 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dynamic_ac_timing, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %if.end18.if.end26_crit_edge, label %if.then20

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.end18
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %12 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i.i, align 4
  %mc_reg_table.i = getelementptr inbounds %struct.ni_power_info, ptr %13, i32 0, i32 2
  %call1.i = tail call zeroext i8 @rv770_get_memory_module_index(ptr noundef %rdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 2772) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then20.if.then23_crit_edge, label %if.end.i

if.then20.if.then23_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.end.i:                                         ; preds = %if.then20
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 10400
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %19, i32 10860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %17) #9, !srcloc !101
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %21, i32 10404
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %24, i32 10864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 %22) #9, !srcloc !101
  %25 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %26, i32 10408
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %29, i32 10868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %27) #9, !srcloc !101
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %31, i32 10412
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %34, i32 10872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %32) #9, !srcloc !101
  %35 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %36, i32 10764
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %39, i32 10884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95.i, i32 %37) #9, !srcloc !101
  %40 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %41, i32 10924
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %44, i32 10888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 %42) #9, !srcloc !101
  %45 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %46, i32 11076
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %49, i32 11080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %47) #9, !srcloc !101
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %51, i32 10428
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %54, i32 10876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %52) #9, !srcloc !101
  %55 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %56, i32 10432
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %59, i32 10880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %57) #9, !srcloc !101
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %61, i32 10420
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %63 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %64, i32 11036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %62) #9, !srcloc !101
  %65 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %66, i32 10424
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %69, i32 11040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %67) #9, !srcloc !101
  %70 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %71, i32 10416
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %74, i32 11084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 %72) #9, !srcloc !101
  %75 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %76, i32 11100
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %78 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %79, i32 11104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 %77) #9, !srcloc !101
  %call16.i = tail call i32 @radeon_atom_init_mc_reg_table(ptr noundef %rdev, i8 noundef zeroext %call1.i, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge

if.end.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

if.end19.i:                                       ; preds = %if.end.i
  %80 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %81)
  %cmp.i144.i = icmp ugt i8 %81, 32
  br i1 %cmp.i144.i, label %if.end19.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, label %if.end.i.i

if.end19.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

if.end.i.i:                                       ; preds = %if.end19.i
  %num_entries.i.i = getelementptr inbounds %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %num_entries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %83)
  %cmp3.i.i = icmp ugt i8 %83, 16
  br i1 %cmp3.i.i, label %if.end.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp1084.not.i.i = icmp eq i8 %81, 0
  br i1 %cmp1084.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %indvars.iv.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i.i, align 4
  %s115.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %indvars.iv.i.i, i32 1
  %86 = ptrtoint ptr %s115.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %85, ptr %s115.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %87 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %call7.i.i.i, align 8
  %89 = zext i8 %88 to i32
  %cmp10.i.i = icmp ult i32 %indvars.iv.next.i.i, %89
  br i1 %cmp10.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa83.i.i = phi i8 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %88, %for.body.i.i.for.end.i.i_crit_edge ]
  %90 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %.lcssa83.i.i, ptr %mc_reg_table.i, align 4
  %91 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num_entries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp2288.not.i.i = icmp eq i8 %92, 0
  br i1 %cmp2288.not.i.i, label %for.end.i.i.if.end23.i_crit_edge, label %for.end.i.i.for.body24.i.i_crit_edge

for.end.i.i.for.body24.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body24.i.i

for.end.i.i.if.end23.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

for.body24.i.i:                                   ; preds = %for.inc52.i.i.for.body24.i.i_crit_edge, %for.end.i.i.for.body24.i.i_crit_edge
  %indvars.iv95.i.i = phi i32 [ %indvars.iv.next96.i.i, %for.inc52.i.i.for.body24.i.i_crit_edge ], [ 0, %for.end.i.i.for.body24.i.i_crit_edge ]
  %arrayidx26.i.i = getelementptr %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 2, i32 %indvars.iv95.i.i
  %93 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx26.i.i, align 4
  %arrayidx29.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv95.i.i
  %95 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx29.i.i, align 4
  %96 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp3586.not.i.i = icmp eq i8 %97, 0
  br i1 %cmp3586.not.i.i, label %for.body24.i.i.for.inc52.i.i_crit_edge, label %for.body24.i.i.for.body37.i.i_crit_edge

for.body24.i.i.for.body37.i.i_crit_edge:          ; preds = %for.body24.i.i
  br label %for.body37.i.i

for.body24.i.i.for.inc52.i.i_crit_edge:           ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i.i

for.body37.i.i:                                   ; preds = %for.body37.i.i.for.body37.i.i_crit_edge, %for.body24.i.i.for.body37.i.i_crit_edge
  %indvars.iv93.i.i = phi i32 [ %indvars.iv.next94.i.i, %for.body37.i.i.for.body37.i.i_crit_edge ], [ 0, %for.body24.i.i.for.body37.i.i_crit_edge ]
  %arrayidx42.i.i = getelementptr %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 2, i32 %indvars.iv95.i.i, i32 1, i32 %indvars.iv93.i.i
  %98 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx42.i.i, align 4
  %arrayidx48.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv95.i.i, i32 1, i32 %indvars.iv93.i.i
  %100 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx48.i.i, align 4
  %indvars.iv.next94.i.i = add nuw nsw i32 %indvars.iv93.i.i, 1
  %101 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %call7.i.i.i, align 8
  %103 = zext i8 %102 to i32
  %cmp35.i.i = icmp ult i32 %indvars.iv.next94.i.i, %103
  br i1 %cmp35.i.i, label %for.body37.i.i.for.body37.i.i_crit_edge, label %for.body37.i.i.for.inc52.i.i_crit_edge

for.body37.i.i.for.inc52.i.i_crit_edge:           ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52.i.i

for.body37.i.i.for.body37.i.i_crit_edge:          ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37.i.i

for.inc52.i.i:                                    ; preds = %for.body37.i.i.for.inc52.i.i_crit_edge, %for.body24.i.i.for.inc52.i.i_crit_edge
  %indvars.iv.next96.i.i = add nuw nsw i32 %indvars.iv95.i.i, 1
  %104 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %num_entries.i.i, align 1
  %106 = zext i8 %105 to i32
  %cmp22.i.i = icmp ult i32 %indvars.iv.next96.i.i, %106
  br i1 %cmp22.i.i, label %for.inc52.i.i.for.body24.i.i_crit_edge, label %if.end23thread-pre-split.i

for.inc52.i.i.for.body24.i.i_crit_edge:           ; preds = %for.inc52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24.i.i

if.end23thread-pre-split.i:                       ; preds = %for.inc52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %.pr.i = load i8, ptr %mc_reg_table.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23thread-pre-split.i, %for.end.i.i.if.end23.i_crit_edge
  %108 = phi i8 [ %.pr.i, %if.end23thread-pre-split.i ], [ %.lcssa83.i.i, %for.end.i.i.if.end23.i_crit_edge ]
  %.lcssa.i.i = phi i8 [ %105, %if.end23thread-pre-split.i ], [ 0, %for.end.i.i.if.end23.i_crit_edge ]
  %num_entries56.i.i = getelementptr inbounds %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 1
  %109 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %.lcssa.i.i, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp21.not.i.i = icmp eq i8 %108, 0
  br i1 %cmp21.not.i.i, label %if.end23.i.ni_set_s0_mc_reg_index.exit.i_crit_edge, label %if.end23.i.for.body.i146.i_crit_edge

if.end23.i.for.body.i146.i_crit_edge:             ; preds = %if.end23.i
  br label %for.body.i146.i

if.end23.i.ni_set_s0_mc_reg_index.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_set_s0_mc_reg_index.exit.i

for.body.i146.i:                                  ; preds = %ni_check_s0_mc_reg_index.exit.i.i.for.body.i146.i_crit_edge, %if.end23.i.for.body.i146.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %ni_check_s0_mc_reg_index.exit.i.i.for.body.i146.i_crit_edge ], [ 0, %if.end23.i.for.body.i146.i_crit_edge ]
  %arrayidx.i145.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %i.022.i.i
  %s1.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %i.022.i.i, i32 1
  %110 = ptrtoint ptr %s1.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %s1.i.i, align 2
  %112 = zext i16 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %111, label %for.body.i146.i.ni_check_s0_mc_reg_index.exit.i.i_crit_edge [
    i16 2600, label %for.body.i146.i._crit_edge
    i16 2601, label %sw.bb1.i.i.i
    i16 2602, label %sw.bb2.i.i.i
    i16 2603, label %sw.bb3.i.i.i
    i16 2605, label %sw.bb4.i.i.i
    i16 2606, label %sw.bb5.i.i.i
    i16 2607, label %sw.bb6.i.i.i
    i16 2608, label %sw.bb7.i.i.i
    i16 2691, label %sw.bb8.i.i.i
    i16 2731, label %sw.bb9.i.i.i
    i16 2769, label %sw.bb10.i.i.i
    i16 2604, label %sw.bb11.i.i.i
    i16 2775, label %sw.bb12.i.i.i
  ]

for.body.i146.i._crit_edge:                       ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

for.body.i146.i.ni_check_s0_mc_reg_index.exit.i.i_crit_edge: ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_check_s0_mc_reg_index.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb2.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb3.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb4.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb5.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb6.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb7.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb8.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb9.i.i.i:                                     ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb10.i.i.i:                                    ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb11.i.i.i:                                    ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

sw.bb12.i.i.i:                                    ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %113

113:                                              ; preds = %sw.bb12.i.i.i, %sw.bb11.i.i.i, %sw.bb10.i.i.i, %sw.bb9.i.i.i, %sw.bb8.i.i.i, %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %for.body.i146.i._crit_edge
  %.sink.i.i.i = phi i16 [ 2776, %sw.bb12.i.i.i ], [ 2771, %sw.bb11.i.i.i ], [ 2770, %sw.bb10.i.i.i ], [ 2722, %sw.bb9.i.i.i ], [ 2721, %sw.bb8.i.i.i ], [ 2720, %sw.bb7.i.i.i ], [ 2719, %sw.bb6.i.i.i ], [ 2760, %sw.bb5.i.i.i ], [ 2759, %sw.bb4.i.i.i ], [ 2718, %sw.bb3.i.i.i ], [ 2717, %sw.bb2.i.i.i ], [ 2716, %sw.bb1.i.i.i ], [ 2715, %for.body.i146.i._crit_edge ]
  br label %ni_check_s0_mc_reg_index.exit.i.i

ni_check_s0_mc_reg_index.exit.i.i:                ; preds = %113, %for.body.i146.i.ni_check_s0_mc_reg_index.exit.i.i_crit_edge
  %.sroa.speculated.i.i = phi i16 [ %.sink.i.i.i, %113 ], [ %111, %for.body.i146.i.ni_check_s0_mc_reg_index.exit.i.i_crit_edge ]
  %114 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %.sroa.speculated.i.i, ptr %arrayidx.i145.i, align 4
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %115 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %mc_reg_table.i, align 4
  %conv.i.i = zext i8 %116 to i32
  %cmp.i147.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i147.i, label %ni_check_s0_mc_reg_index.exit.i.i.for.body.i146.i_crit_edge, label %ni_check_s0_mc_reg_index.exit.i.i.ni_set_s0_mc_reg_index.exit.i_crit_edge

ni_check_s0_mc_reg_index.exit.i.i.ni_set_s0_mc_reg_index.exit.i_crit_edge: ; preds = %ni_check_s0_mc_reg_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_set_s0_mc_reg_index.exit.i

ni_check_s0_mc_reg_index.exit.i.i.for.body.i146.i_crit_edge: ; preds = %ni_check_s0_mc_reg_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i146.i

ni_set_s0_mc_reg_index.exit.i:                    ; preds = %ni_check_s0_mc_reg_index.exit.i.i.ni_set_s0_mc_reg_index.exit.i_crit_edge, %if.end23.i.ni_set_s0_mc_reg_index.exit.i_crit_edge
  %call.i.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %117 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %mc_reg_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp206.not.i.i = icmp eq i8 %118, 0
  br i1 %cmp206.not.i.i, label %if.end27.thread.i, label %ni_set_s0_mc_reg_index.exit.i.for.body.i150.i_crit_edge

ni_set_s0_mc_reg_index.exit.i.for.body.i150.i_crit_edge: ; preds = %ni_set_s0_mc_reg_index.exit.i
  br label %for.body.i150.i

if.end27.thread.i:                                ; preds = %ni_set_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %mc_reg_table.i, align 4
  br label %ni_initialize_mc_reg_table.exit

for.body.i150.i:                                  ; preds = %for.inc129.i.i.for.body.i150.i_crit_edge, %ni_set_s0_mc_reg_index.exit.i.for.body.i150.i_crit_edge
  %indvars.iv219.i.i = phi i32 [ %indvars.iv.next220.i.i, %for.inc129.i.i.for.body.i150.i_crit_edge ], [ 0, %ni_set_s0_mc_reg_index.exit.i.for.body.i150.i_crit_edge ]
  %j.0208.i.i = phi i8 [ %j.1.i.i, %for.inc129.i.i.for.body.i150.i_crit_edge ], [ %118, %ni_set_s0_mc_reg_index.exit.i.for.body.i150.i_crit_edge ]
  %s1.i149.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %indvars.iv219.i.i, i32 1
  %120 = ptrtoint ptr %s1.i149.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %s1.i149.i, align 2
  %122 = zext i16 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.38)
  switch i16 %121, label %for.body.i150.i.for.inc129.i.i_crit_edge [
    i16 2689, label %sw.bb.i.i
    i16 2690, label %sw.bb88.i.i
  ]

for.body.i150.i.for.inc129.i.i_crit_edge:         ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc129.i.i

sw.bb.i.i:                                        ; preds = %for.body.i150.i
  %conv5.i.i = zext i8 %j.0208.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %j.0208.i.i)
  %cmp6.i.i = icmp ugt i8 %j.0208.i.i, 31
  br i1 %cmp6.i.i, label %sw.bb.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, label %if.end.i151.i

sw.bb.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

if.end.i151.i:                                    ; preds = %sw.bb.i.i
  %123 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %124, i32 10764
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %arrayidx11.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %conv5.i.i
  %s112.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %conv5.i.i, i32 1
  %126 = ptrtoint ptr %s112.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 2691, ptr %s112.i.i, align 2
  %127 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 2721, ptr %arrayidx11.i.i, align 4
  %128 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp19202.not.i.i = icmp eq i8 %129, 0
  br i1 %cmp19202.not.i.i, label %if.end.i151.i.for.end.i153.i_crit_edge, label %for.body21.lr.ph.i.i

if.end.i151.i.for.end.i153.i_crit_edge:           ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i153.i

for.body21.lr.ph.i.i:                             ; preds = %if.end.i151.i
  %130 = and i32 %125, 65535
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #9
  %wide.trip.count213.i.i = zext i8 %129 to i32
  br label %for.body21.i.i

for.body21.i.i:                                   ; preds = %for.body21.i.i.for.body21.i.i_crit_edge, %for.body21.lr.ph.i.i
  %indvars.iv211.i.i = phi i32 [ 0, %for.body21.lr.ph.i.i ], [ %indvars.iv.next212.i.i, %for.body21.i.i.for.body21.i.i_crit_edge ]
  %arrayidx25.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv211.i.i, i32 1, i32 %indvars.iv219.i.i
  %132 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx25.i.i, align 4
  %shr.i.i = lshr i32 %133, 16
  %or.i.i = or i32 %shr.i.i, %131
  %arrayidx32.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv211.i.i, i32 1, i32 %conv5.i.i
  %134 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or.i.i, ptr %arrayidx32.i.i, align 4
  %indvars.iv.next212.i.i = add nuw nsw i32 %indvars.iv211.i.i, 1
  %exitcond214.not.i.i = icmp eq i32 %indvars.iv.next212.i.i, %wide.trip.count213.i.i
  br i1 %exitcond214.not.i.i, label %for.body21.i.i.for.end.i153.i_crit_edge, label %for.body21.i.i.for.body21.i.i_crit_edge

for.body21.i.i.for.body21.i.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21.i.i

for.body21.i.i.for.end.i153.i_crit_edge:          ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i153.i

for.end.i153.i:                                   ; preds = %for.body21.i.i.for.end.i153.i_crit_edge, %if.end.i151.i.for.end.i153.i_crit_edge
  %inc33.i.i = add i8 %j.0208.i.i, 1
  %conv34.i.i = zext i8 %inc33.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %inc33.i.i)
  %cmp35.i152.i = icmp ugt i8 %inc33.i.i, 31
  br i1 %cmp35.i152.i, label %for.end.i153.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, label %if.end38.i.i

for.end.i153.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %for.end.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

if.end38.i.i:                                     ; preds = %for.end.i153.i
  %135 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i196.i.i = getelementptr i8, ptr %136, i32 10924
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %arrayidx42.i154.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %conv34.i.i
  %s143.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %conv34.i.i, i32 1
  %138 = ptrtoint ptr %s143.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 2731, ptr %s143.i.i, align 2
  %139 = ptrtoint ptr %arrayidx42.i154.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 2722, ptr %arrayidx42.i154.i, align 4
  %140 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp52204.not.i.i = icmp eq i8 %141, 0
  br i1 %cmp52204.not.i.i, label %for.end81.thread.i.i, label %for.body54.lr.ph.i.i

for.end81.thread.i.i:                             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc82221.i.i = add nsw i8 %j.0208.i.i, 2
  br label %for.inc129.i.i

for.body54.lr.ph.i.i:                             ; preds = %if.end38.i.i
  %142 = and i32 %137, 65535
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #9
  %wide.trip.count217.i.i = zext i8 %141 to i32
  br label %for.body54.i.i

for.body54.i.i:                                   ; preds = %for.inc79.i.i.for.body54.i.i_crit_edge, %for.body54.lr.ph.i.i
  %indvars.iv215.i.i = phi i32 [ 0, %for.body54.lr.ph.i.i ], [ %indvars.iv.next216.i.i, %for.inc79.i.i.for.body54.i.i_crit_edge ]
  %arrayidx61.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv215.i.i, i32 1, i32 %indvars.iv219.i.i
  %144 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx61.i.i, align 4
  %and62.i.i = and i32 %145, 65535
  %or63.i.i = or i32 %and62.i.i, %143
  %arrayidx69.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv215.i.i, i32 1, i32 %conv34.i.i
  %146 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or63.i.i, ptr %arrayidx69.i.i, align 4
  %147 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %call.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i.i = icmp eq i8 %148, 0
  br i1 %tobool.not.i.i, label %if.then70.i.i, label %for.body54.i.i.for.inc79.i.i_crit_edge

for.body54.i.i.for.inc79.i.i_crit_edge:           ; preds = %for.body54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79.i.i

if.then70.i.i:                                    ; preds = %for.body54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or77.i.i = or i32 %or63.i.i, 256
  %149 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or77.i.i, ptr %arrayidx69.i.i, align 4
  br label %for.inc79.i.i

for.inc79.i.i:                                    ; preds = %if.then70.i.i, %for.body54.i.i.for.inc79.i.i_crit_edge
  %indvars.iv.next216.i.i = add nuw nsw i32 %indvars.iv215.i.i, 1
  %exitcond218.not.i.i = icmp eq i32 %indvars.iv.next216.i.i, %wide.trip.count217.i.i
  br i1 %exitcond218.not.i.i, label %for.end81.i.i, label %for.inc79.i.i.for.body54.i.i_crit_edge

for.inc79.i.i.for.body54.i.i_crit_edge:           ; preds = %for.inc79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body54.i.i

for.end81.i.i:                                    ; preds = %for.inc79.i.i
  %inc82.i.i = add i8 %j.0208.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %inc82.i.i)
  %cmp84.i.i = icmp ugt i8 %inc82.i.i, 32
  br i1 %cmp84.i.i, label %for.end81.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, label %for.end81.i.i.for.inc129.i.i_crit_edge

for.end81.i.i.for.inc129.i.i_crit_edge:           ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc129.i.i

for.end81.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %for.end81.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

sw.bb88.i.i:                                      ; preds = %for.body.i150.i
  %150 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i198.i.i = getelementptr i8, ptr %151, i32 11076
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %idxprom91.i.i = zext i8 %j.0208.i.i to i32
  %arrayidx92.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %idxprom91.i.i
  %s193.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 4, i32 %idxprom91.i.i, i32 1
  %153 = ptrtoint ptr %s193.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 2769, ptr %s193.i.i, align 2
  %154 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 2770, ptr %arrayidx92.i.i, align 4
  %155 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp102200.not.i.i = icmp eq i8 %156, 0
  br i1 %cmp102200.not.i.i, label %sw.bb88.i.i.for.end122.i.i_crit_edge, label %for.body104.lr.ph.i.i

sw.bb88.i.i.for.end122.i.i_crit_edge:             ; preds = %sw.bb88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122.i.i

for.body104.lr.ph.i.i:                            ; preds = %sw.bb88.i.i
  %157 = and i32 %152, 65535
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #9
  %wide.trip.count.i.i = zext i8 %156 to i32
  br label %for.body104.i.i

for.body104.i.i:                                  ; preds = %for.body104.i.i.for.body104.i.i_crit_edge, %for.body104.lr.ph.i.i
  %indvars.iv.i155.i = phi i32 [ 0, %for.body104.lr.ph.i.i ], [ %indvars.iv.next.i156.i, %for.body104.i.i.for.body104.i.i_crit_edge ]
  %arrayidx111.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv.i155.i, i32 1, i32 %indvars.iv219.i.i
  %159 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx111.i.i, align 4
  %and112.i.i = and i32 %160, 65535
  %or113.i.i = or i32 %and112.i.i, %158
  %arrayidx119.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv.i155.i, i32 1, i32 %idxprom91.i.i
  %161 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %or113.i.i, ptr %arrayidx119.i.i, align 4
  %indvars.iv.next.i156.i = add nuw nsw i32 %indvars.iv.i155.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i156.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body104.i.i.for.end122.i.i_crit_edge, label %for.body104.i.i.for.body104.i.i_crit_edge

for.body104.i.i.for.body104.i.i_crit_edge:        ; preds = %for.body104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body104.i.i

for.body104.i.i.for.end122.i.i_crit_edge:         ; preds = %for.body104.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122.i.i

for.end122.i.i:                                   ; preds = %for.body104.i.i.for.end122.i.i_crit_edge, %sw.bb88.i.i.for.end122.i.i_crit_edge
  %inc123.i.i = add i8 %j.0208.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %inc123.i.i)
  %cmp125.i.i = icmp ugt i8 %inc123.i.i, 32
  br i1 %cmp125.i.i, label %for.end122.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, label %for.end122.i.i.for.inc129.i.i_crit_edge

for.end122.i.i.for.inc129.i.i_crit_edge:          ; preds = %for.end122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc129.i.i

for.end122.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge: ; preds = %for.end122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit.thread190

for.inc129.i.i:                                   ; preds = %for.end122.i.i.for.inc129.i.i_crit_edge, %for.end81.i.i.for.inc129.i.i_crit_edge, %for.end81.thread.i.i, %for.body.i150.i.for.inc129.i.i_crit_edge
  %j.1.i.i = phi i8 [ %j.0208.i.i, %for.body.i150.i.for.inc129.i.i_crit_edge ], [ %inc123.i.i, %for.end122.i.i.for.inc129.i.i_crit_edge ], [ %inc82.i.i, %for.end81.i.i.for.inc129.i.i_crit_edge ], [ %inc82221.i.i, %for.end81.thread.i.i ]
  %indvars.iv.next220.i.i = add nuw nsw i32 %indvars.iv219.i.i, 1
  %162 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %mc_reg_table.i, align 4
  %164 = zext i8 %163 to i32
  %cmp.i157.i = icmp ult i32 %indvars.iv.next220.i.i, %164
  br i1 %cmp.i157.i, label %for.inc129.i.i.for.body.i150.i_crit_edge, label %if.end27.i

for.inc129.i.i.for.body.i150.i_crit_edge:         ; preds = %for.inc129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i150.i

if.end27.i:                                       ; preds = %for.inc129.i.i
  %165 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %j.1.i.i, ptr %mc_reg_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.1.i.i)
  %cmp38.not.i.i = icmp eq i8 %j.1.i.i, 0
  br i1 %cmp38.not.i.i, label %if.end27.i.ni_initialize_mc_reg_table.exit_crit_edge, label %for.cond3.preheader.lr.ph.i.i

if.end27.i.ni_initialize_mc_reg_table.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit

for.cond3.preheader.lr.ph.i.i:                    ; preds = %if.end27.i
  %166 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %167)
  %cmp636.i.i = icmp ugt i8 %167, 1
  %valid_flag.i.i = getelementptr inbounds %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 2
  %wide.trip.count43.i.i = zext i8 %j.1.i.i to i32
  %wide.trip.count.i160.i = zext i8 %167 to i32
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.inc22.i.i.for.cond3.preheader.i.i_crit_edge, %for.cond3.preheader.lr.ph.i.i
  %indvars.iv41.i.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i.i ], [ %indvars.iv.next42.i.i, %for.inc22.i.i.for.cond3.preheader.i.i_crit_edge ]
  br i1 %cmp636.i.i, label %for.cond3.preheader.i.i.for.body8.i.i_crit_edge, label %for.cond3.preheader.i.i.for.inc22.i.i_crit_edge

for.cond3.preheader.i.i.for.inc22.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i

for.cond3.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  br label %for.body8.i.i

for.cond3.i.i:                                    ; preds = %for.body8.i.i
  %indvars.iv.next.i161.i = add nuw nsw i32 %indvars.iv.i163.i, 1
  %exitcond.not.i162.i = icmp eq i32 %indvars.iv.next.i161.i, %wide.trip.count.i160.i
  br i1 %exitcond.not.i162.i, label %for.cond3.i.i.for.inc22.i.i_crit_edge, label %for.cond3.i.i.for.body8.i.i_crit_edge

for.cond3.i.i.for.body8.i.i_crit_edge:            ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i.i

for.cond3.i.i.for.inc22.i.i_crit_edge:            ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i.i

for.body8.i.i:                                    ; preds = %for.cond3.i.i.for.body8.i.i_crit_edge, %for.cond3.preheader.i.i.for.body8.i.i_crit_edge
  %indvars.iv.i163.i = phi i32 [ %indvars.iv.next.i161.i, %for.cond3.i.i.for.body8.i.i_crit_edge ], [ 1, %for.cond3.preheader.i.i.for.body8.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %indvars.iv.i163.i, -1
  %arrayidx10.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %sub.i.i, i32 1, i32 %indvars.iv41.i.i
  %168 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx10.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.ni_power_info, ptr %13, i32 0, i32 2, i32 3, i32 %indvars.iv.i163.i, i32 1, i32 %indvars.iv41.i.i
  %170 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp17.not.i.i = icmp eq i32 %169, %171
  br i1 %cmp17.not.i.i, label %for.cond3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i.i = shl nuw i32 1, %indvars.iv41.i.i
  %172 = ptrtoint ptr %valid_flag.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %valid_flag.i.i, align 2
  %174 = trunc i32 %shl.i.i to i16
  %conv21.i.i = or i16 %173, %174
  store i16 %conv21.i.i, ptr %valid_flag.i.i, align 2
  br label %for.inc22.i.i

for.inc22.i.i:                                    ; preds = %if.then.i.i, %for.cond3.i.i.for.inc22.i.i_crit_edge, %for.cond3.preheader.i.i.for.inc22.i.i_crit_edge
  %indvars.iv.next42.i.i = add nuw nsw i32 %indvars.iv41.i.i, 1
  %exitcond44.not.i.i = icmp eq i32 %indvars.iv.next42.i.i, %wide.trip.count43.i.i
  br i1 %exitcond44.not.i.i, label %for.inc22.i.i.ni_initialize_mc_reg_table.exit_crit_edge, label %for.inc22.i.i.for.cond3.preheader.i.i_crit_edge

for.inc22.i.i.for.cond3.preheader.i.i_crit_edge:  ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i.i

for.inc22.i.i.ni_initialize_mc_reg_table.exit_crit_edge: ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_initialize_mc_reg_table.exit

ni_initialize_mc_reg_table.exit.thread190:        ; preds = %for.end122.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, %for.end81.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, %for.end.i153.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, %sw.bb.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, %if.end.i.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, %if.end19.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge, %if.end.i.ni_initialize_mc_reg_table.exit.thread190_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.then23

ni_initialize_mc_reg_table.exit:                  ; preds = %for.inc22.i.i.ni_initialize_mc_reg_table.exit_crit_edge, %if.end27.i.ni_initialize_mc_reg_table.exit_crit_edge, %if.end27.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.end26

if.then23:                                        ; preds = %ni_initialize_mc_reg_table.exit.thread190, %if.then20.if.then23_crit_edge
  %175 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %dynamic_ac_timing, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %ni_initialize_mc_reg_table.exit, %if.end18.if.end26_crit_edge
  %dynamic_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 9
  %176 = ptrtoint ptr %dynamic_ss to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %dynamic_ss, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool27.not = icmp eq i8 %177, 0
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cypress_enable_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 14
  %178 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %thermal_protection, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool30.not = icmp eq i8 %179, 0
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rv770_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  tail call void @rv770_setup_bsp(ptr noundef %rdev) #9
  tail call void @rv770_program_git(ptr noundef %rdev) #9
  tail call void @rv770_program_tp(ptr noundef %rdev) #9
  tail call void @rv770_program_tpp(ptr noundef %rdev) #9
  tail call void @rv770_program_sstp(ptr noundef %rdev) #9
  tail call void @cypress_enable_display_gap(ptr noundef %rdev) #9
  tail call void @rv770_program_vc(ptr noundef %rdev) #9
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 2
  %180 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool33.not = icmp eq i8 %181, 0
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ni_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  %call36 = tail call i32 @rv770_upload_firmware(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i180 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i.i181 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %182 = ptrtoint ptr %priv.i.i181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %priv.i.i181, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %184 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %tmp.i, align 4, !annotation !104
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 59
  %185 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %sram_end.i, align 4
  %call3.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 268, ptr noundef nonnull %tmp.i, i16 noundef zeroext %186) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i182 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i182, label %if.end.i183, label %if.end39.if.then42_crit_edge

if.end39.if.then42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end.i183:                                      ; preds = %if.end39
  %187 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %188 to i16
  %state_table_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 57
  %189 = ptrtoint ptr %state_table_start.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i, ptr %state_table_start.i, align 4
  %190 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %sram_end.i, align 4
  %call5.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 264, ptr noundef nonnull %tmp.i, i16 noundef zeroext %191) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i183.if.then42_crit_edge

if.end.i183.if.then42_crit_edge:                  ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end8.i:                                        ; preds = %if.end.i183
  %192 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %tmp.i, align 4
  %conv9.i = trunc i32 %193 to i16
  %soft_regs_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 58
  %194 = ptrtoint ptr %soft_regs_start.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv9.i, ptr %soft_regs_start.i, align 2
  %195 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %sram_end.i, align 4
  %call11.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 288, ptr noundef nonnull %tmp.i, i16 noundef zeroext %196) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end8.i.if.then42_crit_edge

if.end8.i.if.then42_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end14.i:                                       ; preds = %if.end8.i
  %197 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tmp.i, align 4
  %conv15.i = trunc i32 %198 to i16
  %mc_reg_table_start.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i180, i32 0, i32 24
  %199 = ptrtoint ptr %mc_reg_table_start.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv15.i, ptr %mc_reg_table_start.i, align 4
  %200 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %sram_end.i, align 4
  %call17.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 272, ptr noundef nonnull %tmp.i, i16 noundef zeroext %201) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then42_crit_edge

if.end14.i.if.then42_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end20.i:                                       ; preds = %if.end14.i
  %202 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %tmp.i, align 4
  %conv21.i = trunc i32 %203 to i16
  %fan_table_start.i = getelementptr inbounds %struct.ni_power_info, ptr %183, i32 0, i32 14
  %204 = ptrtoint ptr %fan_table_start.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv21.i, ptr %fan_table_start.i, align 4
  %205 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %sram_end.i, align 4
  %call23.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 300, ptr noundef nonnull %tmp.i, i16 noundef zeroext %206) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end20.i.if.then42_crit_edge

if.end20.i.if.then42_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end26.i:                                       ; preds = %if.end20.i
  %207 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %tmp.i, align 4
  %conv27.i = trunc i32 %208 to i16
  %arb_table_start.i = getelementptr inbounds %struct.ni_power_info, ptr %183, i32 0, i32 13
  %209 = ptrtoint ptr %arb_table_start.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv27.i, ptr %arb_table_start.i, align 2
  %210 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %sram_end.i, align 4
  %call29.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 276, ptr noundef nonnull %tmp.i, i16 noundef zeroext %211) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end26.i.if.then42_crit_edge

if.end26.i.if.then42_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.end32.i:                                       ; preds = %if.end26.i
  %212 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %tmp.i, align 4
  %conv33.i = trunc i32 %213 to i16
  %cac_table_start.i = getelementptr inbounds %struct.ni_power_info, ptr %183, i32 0, i32 15
  %214 = ptrtoint ptr %cac_table_start.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv33.i, ptr %cac_table_start.i, align 2
  %215 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %sram_end.i, align 4
  %call35.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 304, ptr noundef nonnull %tmp.i, i16 noundef zeroext %216) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end43, label %if.end32.i.if.then42_crit_edge

if.end32.i.if.then42_crit_edge:                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

if.then42:                                        ; preds = %if.end32.i.if.then42_crit_edge, %if.end26.i.if.then42_crit_edge, %if.end20.i.if.then42_crit_edge, %if.end14.i.if.then42_crit_edge, %if.end8.i.if.then42_crit_edge, %if.end.i183.if.then42_crit_edge, %if.end39.if.then42_crit_edge
  %retval.0.i184.ph = phi i32 [ %call35.i, %if.end32.i.if.then42_crit_edge ], [ %call29.i, %if.end26.i.if.then42_crit_edge ], [ %call23.i, %if.end20.i.if.then42_crit_edge ], [ %call17.i, %if.end14.i.if.then42_crit_edge ], [ %call11.i, %if.end8.i.if.then42_crit_edge ], [ %call5.i, %if.end.i183.if.then42_crit_edge ], [ %call3.i, %if.end39.if.then42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end32.i
  %217 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %tmp.i, align 4
  %conv39.i = trunc i32 %218 to i16
  %spll_table_start.i = getelementptr inbounds %struct.ni_power_info, ptr %183, i32 0, i32 16
  %219 = ptrtoint ptr %spll_table_start.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv39.i, ptr %spll_table_start.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %call.i185 = call i32 @ni_copy_and_switch_arb_sets(ptr noundef %rdev, i32 noundef 10, i32 noundef 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool45.not = icmp eq i32 %call.i185, 0
  br i1 %tobool45.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %call48 = call fastcc i32 @ni_init_smc_table(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = call fastcc i32 @ni_init_smc_spll_table(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %call56 = call fastcc i32 @ni_init_arb_table_index(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  %220 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %dynamic_ac_timing, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool61.not = icmp eq i8 %221, 0
  br i1 %tobool61.not, label %if.end59.if.end67_crit_edge, label %if.then62

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then62:                                        ; preds = %if.end59
  %call63 = call fastcc i32 @ni_populate_mc_reg_table(ptr noundef %rdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then62.if.end67_crit_edge, label %if.then65

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %if.end59.if.end67_crit_edge
  %call68 = call fastcc i32 @ni_initialize_smc_cac_tables(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  %call72 = call fastcc i32 @ni_initialize_hardware_cac_manager(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end75:                                         ; preds = %if.end71
  %call76 = call fastcc i32 @ni_populate_smc_tdp_limits(ptr noundef %rdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.then78

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end79:                                         ; preds = %if.end75
  call fastcc void @ni_program_response_times(ptr noundef %rdev)
  call void @r7xx_start_smc(ptr noundef %rdev) #9
  %call80 = call i32 @cypress_notify_smc_display_change(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.then82

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end83:                                         ; preds = %if.end79
  call void @cypress_enable_sclk_control(ptr noundef %rdev, i1 noundef zeroext true) #9
  %memory_transition = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 6
  %222 = ptrtoint ptr %memory_transition to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %memory_transition, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool84.not = icmp eq i8 %223, 0
  br i1 %tobool84.not, label %if.end83.if.end86_crit_edge, label %if.then85

if.end83.if.end86_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  call void @cypress_enable_mclk_control(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end83.if.end86_crit_edge
  call void @cypress_start_dpm(ptr noundef %rdev) #9
  %224 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %gfx_clock_gating, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %225)
  %tobool88.not = icmp eq i8 %225, 0
  br i1 %tobool88.not, label %if.end86.if.end90_crit_edge, label %if.then89

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_cgcg_cgls_enable, i32 noundef 49) #9
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end86.if.end90_crit_edge
  %226 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %mg_clock_gating, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool92.not = icmp eq i8 %227, 0
  br i1 %tobool92.not, label %if.end90.if.end94_crit_edge, label %if.then93

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_mgcg_enable, i32 noundef 10) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end90.if.end94_crit_edge
  %228 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %ls_clock_gating, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool96.not = icmp eq i8 %229, 0
  br i1 %tobool96.not, label %if.end94.if.end98_crit_edge, label %if.then97

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_sysls_enable, i32 noundef 17) #9
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end94.if.end98_crit_edge
  call void @rv770_enable_auto_throttle_source(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %230 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %ps_priv.i.i, align 4
  %call1.i186 = call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %232 = ptrtoint ptr %priv.i.i181 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %priv.i.i181, align 4
  %current_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i186, i32 0, i32 25
  %234 = call ptr @memcpy(ptr %current_rps.i, ptr %1, i32 40)
  %current_ps.i = getelementptr inbounds %struct.ni_power_info, ptr %233, i32 0, i32 22
  %235 = call ptr @memcpy(ptr %current_ps.i, ptr %231, i32 324)
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i186, i32 0, i32 25, i32 9
  %236 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then82, %if.then78, %if.then74, %if.then70, %if.then65, %if.then58, %if.then54, %if.then50, %if.then46, %if.then42, %if.then38, %if.then16, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call36, %if.then38 ], [ %retval.0.i184.ph, %if.then42 ], [ %call.i185, %if.then46 ], [ %call48, %if.then50 ], [ %call52, %if.then54 ], [ %call56, %if.then58 ], [ %call63, %if.then65 ], [ %call68, %if.then70 ], [ %call72, %if.then74 ], [ %call76, %if.then78 ], [ %call80, %if.then82 ], [ 0, %if.end98 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @btc_dpm_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_voltage_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_construct_voltage_tables(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_spread_spectrum(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_thermal_protection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_setup_bsp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_git(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_tp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_tpp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_sstp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_display_gap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_vc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %0 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pciep_rreg.i, align 4
  %call1.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 164) #9
  %2 = and i32 %call1.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %2)
  %.not.i = icmp eq i32 %2, 25165824
  br i1 %.not.i, label %if.then.i, label %entry.ni_enable_bif_dynamic_pcie_gen2.exit_crit_edge

entry.ni_enable_bif_dynamic_pcie_gen2.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_enable_bif_dynamic_pcie_gen2.exit

if.then.i:                                        ; preds = %entry
  %boot_in_gen2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %boot_in_gen2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %boot_in_gen2.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not.i = icmp eq i8 %4, 0
  br i1 %enable, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then5.i.if.end.i_crit_edge

if.then5.i.if.end.i_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2036
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %8 = and i32 %7, 16777215
  %9 = or i32 %8, 218103808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %11, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %9) #9, !srcloc !101
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then5.i.if.end.i_crit_edge
  %and10.i = and i32 %call1.i, -2109442
  %or13.i = or i32 %and10.i, 2101249
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %12 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %13(ptr noundef %rdev, i32 noundef 164, i32 noundef %or13.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #9
  %and14.i = or i32 %and10.i, 4097
  br label %if.end27.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  br i1 %tobool6.not.i, label %if.then18.i, label %if.else.i.if.end24.i_crit_edge

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i57.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i57.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i57.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %16, i32 2036
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %18 = and i32 %17, 16777215
  %19 = or i32 %18, 218103808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %20 = ptrtoint ptr %rmmio.i57.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i57.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %21, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 %19) #9, !srcloc !101
  %and23.i = and i32 %call1.i, -12290
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.else.i.if.end24.i_crit_edge
  %tmp.0.i = phi i32 [ %call1.i, %if.else.i.if.end24.i_crit_edge ], [ %and23.i, %if.then18.i ]
  %pciep_wreg25.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  br label %if.end27.sink.split.i

if.end27.sink.split.i:                            ; preds = %if.end24.i, %if.end.i
  %pciep_wreg.sink.i = phi ptr [ %pciep_wreg.i, %if.end.i ], [ %pciep_wreg25.i, %if.end24.i ]
  %and14.sink.i = phi i32 [ %and14.i, %if.end.i ], [ %tmp.0.i, %if.end24.i ]
  %22 = ptrtoint ptr %pciep_wreg.sink.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pciep_wreg.sink.i, align 8
  tail call void %23(ptr noundef %rdev, i32 noundef 164, i32 noundef %and14.sink.i) #9
  br label %ni_enable_bif_dynamic_pcie_gen2.exit

ni_enable_bif_dynamic_pcie_gen2.exit:             ; preds = %if.end27.sink.split.i, %entry.ni_enable_bif_dynamic_pcie_gen2.exit_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 1596
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %enable, label %do.body, label %do.body2

do.body:                                          ; preds = %ni_enable_bif_dynamic_pcie_gen2.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = or i32 %26, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %29, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %27) #9, !srcloc !101
  br label %if.end

do.body2:                                         ; preds = %ni_enable_bif_dynamic_pcie_gen2.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = and i32 %26, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %32, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %30) #9, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_upload_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_init_smc_table(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %2 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps, align 4
  %smc_statetable = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25
  %4 = call ptr @memset(ptr %smc_statetable, i32 0, i32 3028)
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %vddc_voltage_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 19
  %5 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vddc_voltage_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.if.end16.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end16.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 4, i32 %i.02.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx.i.i, align 1
  %smio_low.i.i = getelementptr %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 19, i32 3, i32 %i.02.i.i, i32 1
  %8 = ptrtoint ptr %smio_low.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smio_low.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 5, i32 %i.02.i.i
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx2.i.i, align 1
  %or.i.i = or i32 %11, %9
  store i32 %or.i.i, ptr %arrayidx2.i.i, align 1
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %12 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vddc_voltage_table.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %13
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %ni_populate_smc_voltage_table.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

ni_populate_smc_voltage_table.exit.i:             ; preds = %for.body.i.i
  %voltageMaskTable.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 6
  %14 = ptrtoint ptr %voltageMaskTable.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %voltageMaskTable.i, align 1
  %mask_low.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 19, i32 1
  %15 = ptrtoint ptr %mask_low.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask_low.i, align 4
  %lowMask.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 6, i32 1
  %17 = ptrtoint ptr %lowMask.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %lowMask.i, align 1
  %18 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vddc_voltage_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp60.not.i = icmp eq i32 %19, 0
  br i1 %cmp60.not.i, label %ni_populate_smc_voltage_table.exit.i.if.end16.i_crit_edge, label %for.body.lr.ph.i

ni_populate_smc_voltage_table.exit.i.if.end16.i_crit_edge: ; preds = %ni_populate_smc_voltage_table.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

for.body.lr.ph.i:                                 ; preds = %ni_populate_smc_voltage_table.exit.i
  %max_vddc_in_table.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 26
  %20 = ptrtoint ptr %max_vddc_in_table.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %max_vddc_in_table.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %conv62.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv.i, %for.inc.i.for.body.i_crit_edge ]
  %i.061.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 19, i32 3, i32 %conv62.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp13.not.i = icmp ugt i16 %21, %23
  br i1 %cmp13.not.i, label %for.inc.i, label %if.then15.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %maxVDDCIndexInPPTable.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 2
  %24 = ptrtoint ptr %maxVDDCIndexInPPTable.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %i.061.i, ptr %maxVDDCIndexInPPTable.i, align 1
  br label %if.end16.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i8 %i.061.i, 1
  %conv.i = zext i8 %inc.i to i32
  %cmp.i = icmp ugt i32 %19, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end16.i_crit_edge

for.inc.i.if.end16.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end16.i:                                       ; preds = %for.inc.i.if.end16.i_crit_edge, %if.then15.i, %ni_populate_smc_voltage_table.exit.i.if.end16.i_crit_edge, %entry.if.end16.i_crit_edge
  %vddci_voltage_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 20
  %25 = ptrtoint ptr %vddci_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vddci_voltage_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not.i = icmp eq i32 %26, 0
  br i1 %tobool18.not.i, label %if.end16.i.ni_populate_smc_voltage_tables.exit_crit_edge, label %if.end16.i.for.body.i57.i_crit_edge

if.end16.i.for.body.i57.i_crit_edge:              ; preds = %if.end16.i
  br label %for.body.i57.i

if.end16.i.ni_populate_smc_voltage_tables.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_smc_voltage_tables.exit

for.body.i57.i:                                   ; preds = %for.body.i57.i.for.body.i57.i_crit_edge, %if.end16.i.for.body.i57.i_crit_edge
  %i.02.i50.i = phi i32 [ %inc.i55.i, %for.body.i57.i.for.body.i57.i_crit_edge ], [ 0, %if.end16.i.for.body.i57.i_crit_edge ]
  %arrayidx.i51.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 4, i32 %i.02.i50.i
  %27 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx.i51.i, align 1
  %smio_low.i52.i = getelementptr %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 20, i32 3, i32 %i.02.i50.i, i32 1
  %28 = ptrtoint ptr %smio_low.i52.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %smio_low.i52.i, align 4
  %arrayidx2.i53.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 5, i32 %i.02.i50.i
  %30 = ptrtoint ptr %arrayidx2.i53.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx2.i53.i, align 1
  %or.i54.i = or i32 %31, %29
  store i32 %or.i54.i, ptr %arrayidx2.i53.i, align 1
  %inc.i55.i = add nuw i32 %i.02.i50.i, 1
  %32 = ptrtoint ptr %vddci_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vddci_voltage_table.i, align 4
  %cmp.i56.i = icmp ult i32 %inc.i55.i, %33
  br i1 %cmp.i56.i, label %for.body.i57.i.for.body.i57.i_crit_edge, label %ni_populate_smc_voltage_table.exit58.i

for.body.i57.i.for.body.i57.i_crit_edge:          ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i57.i

ni_populate_smc_voltage_table.exit58.i:           ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx23.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 6, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx23.i, align 1
  %mask_low25.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 20, i32 1
  %35 = ptrtoint ptr %mask_low25.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask_low25.i, align 4
  %arrayidx28.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 6, i32 1, i32 2
  %37 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %arrayidx28.i, align 1
  br label %ni_populate_smc_voltage_tables.exit

ni_populate_smc_voltage_tables.exit:              ; preds = %ni_populate_smc_voltage_table.exit58.i, %if.end16.i.ni_populate_smc_voltage_tables.exit_crit_edge
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %38 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %int_thermal_type, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %39, label %sw.default [
    i32 8, label %ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge
    i32 10, label %ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge250
    i32 0, label %sw.bb3
  ]

ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge250: ; preds = %ni_populate_smc_voltage_tables.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge: ; preds = %ni_populate_smc_voltage_tables.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %ni_populate_smc_voltage_tables.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %ni_populate_smc_voltage_tables.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge, %ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge250
  %.sink = phi i8 [ 1, %sw.default ], [ -1, %sw.bb3 ], [ 0, %ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge ], [ 0, %ni_populate_smc_voltage_tables.exit.sw.epilog_crit_edge250 ]
  %41 = ptrtoint ptr %smc_statetable to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink, ptr %smc_statetable, align 1
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %42 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %platform_caps, align 4
  %and = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %systemFlags = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 1
  %44 = ptrtoint ptr %systemFlags to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %systemFlags, align 1
  %46 = or i8 %45, 1
  store i8 %46, ptr %systemFlags, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %47 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %platform_caps, align 4
  %and12 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end19_crit_edge, label %if.then14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %systemFlags15 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 1
  %49 = ptrtoint ptr %systemFlags15 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %systemFlags15, align 1
  %51 = or i8 %50, 16
  store i8 %51, ptr %systemFlags15, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  %52 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %platform_caps, align 4
  %and23 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end19.if.end30_crit_edge, label %if.then25

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %systemFlags26 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 1
  %54 = ptrtoint ptr %systemFlags26 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %systemFlags26, align 1
  %56 = or i8 %55, 2
  store i8 %56, ptr %systemFlags26, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end19.if.end30_crit_edge
  %57 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %call, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool31.not = icmp eq i8 %58, 0
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %if.then32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %systemFlags33 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 1
  %59 = ptrtoint ptr %systemFlags33 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %systemFlags33, align 1
  %61 = or i8 %60, 4
  store i8 %61, ptr %systemFlags33, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end30.if.end37_crit_edge
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %62 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ps_priv.i.i, align 4
  %call1.i100 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call2.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %64 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i, align 4
  %clock_registers.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1
  %mpll_ad_func_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 8
  %66 = ptrtoint ptr %mpll_ad_func_cntl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mpll_ad_func_cntl.i, align 4
  %vMPLL_AD_FUNC_CNTL.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 3
  %68 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %vMPLL_AD_FUNC_CNTL.i, align 1
  %mpll_ad_func_cntl_2.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 9
  %69 = ptrtoint ptr %mpll_ad_func_cntl_2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mpll_ad_func_cntl_2.i, align 4
  %vMPLL_AD_FUNC_CNTL_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 4
  %71 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2.i to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %70, ptr %vMPLL_AD_FUNC_CNTL_2.i, align 1
  %mpll_dq_func_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 10
  %72 = ptrtoint ptr %mpll_dq_func_cntl.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mpll_dq_func_cntl.i, align 4
  %vMPLL_DQ_FUNC_CNTL.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 5
  %74 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %73, ptr %vMPLL_DQ_FUNC_CNTL.i, align 1
  %mpll_dq_func_cntl_2.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 11
  %75 = ptrtoint ptr %mpll_dq_func_cntl_2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mpll_dq_func_cntl_2.i, align 4
  %vMPLL_DQ_FUNC_CNTL_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 6
  %77 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %vMPLL_DQ_FUNC_CNTL_2.i, align 1
  %mclk_pwrmgt_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %mclk_pwrmgt_cntl.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mclk_pwrmgt_cntl.i, align 4
  %vMCLK_PWRMGT_CNTL.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 7
  %80 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 %79, ptr %vMCLK_PWRMGT_CNTL.i, align 1
  %dll_cntl.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 7
  %81 = ptrtoint ptr %dll_cntl.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dll_cntl.i, align 4
  %vDLL_CNTL.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 8
  %83 = ptrtoint ptr %vDLL_CNTL.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %82, ptr %vDLL_CNTL.i, align 1
  %mpll_ss1.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 12
  %84 = ptrtoint ptr %mpll_ss1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mpll_ss1.i, align 4
  %vMPLL_SS.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 9
  %86 = ptrtoint ptr %vMPLL_SS.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %85, ptr %vMPLL_SS.i, align 1
  %mpll_ss2.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 13
  %87 = ptrtoint ptr %mpll_ss2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mpll_ss2.i, align 4
  %vMPLL_SS2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 10
  %89 = ptrtoint ptr %vMPLL_SS2.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %vMPLL_SS2.i, align 1
  %performance_levels.i = getelementptr inbounds %struct.ni_ps, ptr %63, i32 0, i32 2
  %mclk32.i = getelementptr inbounds %struct.ni_ps, ptr %63, i32 0, i32 2, i32 0, i32 1
  %90 = ptrtoint ptr %mclk32.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mclk32.i, align 4
  %mclk_value.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 11, i32 11
  %92 = ptrtoint ptr %mclk_value.i to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %mclk_value.i, align 1
  %93 = ptrtoint ptr %clock_registers.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %clock_registers.i, align 4
  %sclk.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10
  %95 = ptrtoint ptr %sclk.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %94, ptr %sclk.i, align 1
  %cg_spll_func_cntl_2.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 1
  %96 = ptrtoint ptr %cg_spll_func_cntl_2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cg_spll_func_cntl_2.i, align 4
  %vCG_SPLL_FUNC_CNTL_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10, i32 1
  %98 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 %97, ptr %vCG_SPLL_FUNC_CNTL_2.i, align 1
  %cg_spll_func_cntl_3.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %cg_spll_func_cntl_3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %cg_spll_func_cntl_3.i, align 4
  %vCG_SPLL_FUNC_CNTL_3.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10, i32 2
  %101 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %100, ptr %vCG_SPLL_FUNC_CNTL_3.i, align 1
  %cg_spll_func_cntl_4.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %cg_spll_func_cntl_4.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cg_spll_func_cntl_4.i, align 4
  %vCG_SPLL_FUNC_CNTL_4.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10, i32 3
  %104 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %vCG_SPLL_FUNC_CNTL_4.i, align 1
  %cg_spll_spread_spectrum.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 4
  %105 = ptrtoint ptr %cg_spll_spread_spectrum.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cg_spll_spread_spectrum.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10, i32 4
  %107 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %vCG_SPLL_SPREAD_SPECTRUM.i, align 1
  %cg_spll_spread_spectrum_2.i = getelementptr inbounds %struct.ni_power_info, ptr %65, i32 0, i32 1, i32 5
  %108 = ptrtoint ptr %cg_spll_spread_spectrum_2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cg_spll_spread_spectrum_2.i, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10, i32 5
  %110 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i to i32
  call void @__asan_storeN_noabort(i32 %110, i32 4)
  store i32 %109, ptr %vCG_SPLL_SPREAD_SPECTRUM_2.i, align 1
  %111 = ptrtoint ptr %performance_levels.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %performance_levels.i, align 4
  %sclk_value.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 10, i32 6
  %113 = ptrtoint ptr %sclk_value.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 %112, ptr %sclk_value.i, align 1
  %arbRefreshState.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 20
  %114 = ptrtoint ptr %arbRefreshState.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %arbRefreshState.i, align 1
  %ACIndex.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 1
  %115 = ptrtoint ptr %ACIndex.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %ACIndex.i, align 1
  %vddc_voltage_table.i101 = getelementptr inbounds %struct.evergreen_power_info, ptr %call2.i, i32 0, i32 19
  %vddc.i = getelementptr inbounds %struct.ni_ps, ptr %63, i32 0, i32 2, i32 0, i32 2
  %116 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vddc.i, align 4
  %vddc73.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 12
  %118 = ptrtoint ptr %vddc_voltage_table.i101 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vddc_voltage_table.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp3.not5.i.i = icmp eq i32 %119, 0
  br i1 %cmp3.not5.i.i, label %if.end37.ni_populate_voltage_value.exit.i_crit_edge, label %if.end37.for.body.i.i103_crit_edge

if.end37.for.body.i.i103_crit_edge:               ; preds = %if.end37
  br label %for.body.i.i103

if.end37.ni_populate_voltage_value.exit.i_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit.i

for.body.i.i103:                                  ; preds = %for.inc.i.i.for.body.i.i103_crit_edge, %if.end37.for.body.i.i103_crit_edge
  %i.04.i.i = phi i32 [ %inc.i.i104, %for.inc.i.i.for.body.i.i103_crit_edge ], [ 0, %if.end37.for.body.i.i103_crit_edge ]
  %arrayidx.i.i102 = getelementptr %struct.evergreen_power_info, ptr %call2.i, i32 0, i32 19, i32 3, i32 %i.04.i.i
  %120 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx.i.i102, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %121, i16 %117)
  %cmp3.not.i.i = icmp ult i16 %121, %117
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i.i = trunc i32 %i.04.i.i to i8
  %index.i.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 12, i32 1
  %122 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv5.i.i, ptr %index.i.i, align 1
  %123 = ptrtoint ptr %arrayidx.i.i102 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx.i.i102, align 4
  %125 = ptrtoint ptr %vddc73.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 %124, ptr %vddc73.i, align 1
  br label %ni_populate_voltage_value.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i103
  %inc.i.i104 = add nuw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i104, %119
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ni_populate_voltage_value.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i103_crit_edge

for.inc.i.i.for.body.i.i103_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i103

for.inc.i.i.ni_populate_voltage_value.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit.i

ni_populate_voltage_value.exit.i:                 ; preds = %for.inc.i.i.ni_populate_voltage_value.exit.i_crit_edge, %if.then.i.i, %if.end37.ni_populate_voltage_value.exit.i_crit_edge
  %i.02.i.i105 = phi i32 [ %i.04.i.i, %if.then.i.i ], [ 0, %if.end37.ni_populate_voltage_value.exit.i_crit_edge ], [ %119, %for.inc.i.i.ni_populate_voltage_value.exit.i_crit_edge ]
  %126 = ptrtoint ptr %vddc_voltage_table.i101 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %vddc_voltage_table.i101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i.i105, i32 %127)
  %cmp11.not.i.i = icmp ult i32 %i.02.i.i105, %127
  br i1 %cmp11.not.i.i, label %if.then.i, label %ni_populate_voltage_value.exit.i.if.end87.i_crit_edge

ni_populate_voltage_value.exit.i.if.end87.i_crit_edge: ; preds = %ni_populate_voltage_value.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.then.i:                                        ; preds = %ni_populate_voltage_value.exit.i
  %entries.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %128 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %entries.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %129, null
  br i1 %tobool.not.i.i, label %if.then.i.ni_get_std_voltage_value.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.ni_get_std_voltage_value.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_get_std_voltage_value.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %cac_leakage_table.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %index.i1.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 12, i32 1
  %130 = ptrtoint ptr %index.i1.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %index.i1.i, align 1
  %conv.i.i = zext i8 %131 to i32
  %132 = ptrtoint ptr %cac_leakage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cac_leakage_table.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %conv.i.i)
  %cmp.i.i106 = icmp ugt i32 %133, %conv.i.i
  %arrayidx.i2.i = getelementptr %union.radeon_cac_leakage_entry, ptr %129, i32 %conv.i.i
  %spec.select.i.i = select i1 %cmp.i.i106, ptr %arrayidx.i2.i, ptr %vddc73.i
  br label %ni_get_std_voltage_value.exit.i

ni_get_std_voltage_value.exit.i:                  ; preds = %land.lhs.true.i.i, %if.then.i.ni_get_std_voltage_value.exit.i_crit_edge
  %storemerge.in.i.i = phi ptr [ %vddc73.i, %if.then.i.ni_get_std_voltage_value.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %134 = ptrtoint ptr %storemerge.in.i.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %storemerge.i.i = load i16, ptr %storemerge.in.i.i, align 1
  %index.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 12, i32 1
  %135 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %index.i, align 1
  %std_vddc86.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 15
  %index1.i.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 15, i32 1
  %137 = ptrtoint ptr %index1.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %index1.i.i, align 1
  %138 = ptrtoint ptr %std_vddc86.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 2)
  store i16 %storemerge.i.i, ptr %std_vddc86.i, align 1
  br label %if.end87.i

if.end87.i:                                       ; preds = %ni_get_std_voltage_value.exit.i, %ni_populate_voltage_value.exit.i.if.end87.i_crit_edge
  %vddci_control.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call2.i, i32 0, i32 1
  %139 = ptrtoint ptr %vddci_control.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %vddci_control.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool88.not.i = icmp eq i8 %140, 0
  br i1 %tobool88.not.i, label %if.end87.i.if.end96.i_crit_edge, label %if.then89.i

if.end87.i.if.end96.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

if.then89.i:                                      ; preds = %if.end87.i
  %vddci_voltage_table.i107 = getelementptr inbounds %struct.evergreen_power_info, ptr %call2.i, i32 0, i32 20
  %vddci.i = getelementptr inbounds %struct.ni_ps, ptr %63, i32 0, i32 2, i32 0, i32 3
  %141 = ptrtoint ptr %vddci.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %vddci.i, align 2
  %vddci94.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 14
  %143 = ptrtoint ptr %vddci_voltage_table.i107 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %vddci_voltage_table.i107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp3.not5.i3.i = icmp eq i32 %144, 0
  br i1 %cmp3.not5.i3.i, label %if.then89.i.if.end96.i_crit_edge, label %if.then89.i.for.body.i7.i_crit_edge

if.then89.i.for.body.i7.i_crit_edge:              ; preds = %if.then89.i
  br label %for.body.i7.i

if.then89.i.if.end96.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

for.body.i7.i:                                    ; preds = %for.inc.i13.i.for.body.i7.i_crit_edge, %if.then89.i.for.body.i7.i_crit_edge
  %i.04.i4.i = phi i32 [ %inc.i11.i, %for.inc.i13.i.for.body.i7.i_crit_edge ], [ 0, %if.then89.i.for.body.i7.i_crit_edge ]
  %arrayidx.i5.i = getelementptr %struct.evergreen_power_info, ptr %call2.i, i32 0, i32 20, i32 3, i32 %i.04.i4.i
  %145 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx.i5.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %142)
  %cmp3.not.i6.i = icmp ult i16 %146, %142
  br i1 %cmp3.not.i6.i, label %for.inc.i13.i, label %if.then.i10.i

if.then.i10.i:                                    ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i8.i = trunc i32 %i.04.i4.i to i8
  %index.i9.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 14, i32 1
  %147 = ptrtoint ptr %index.i9.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv5.i8.i, ptr %index.i9.i, align 1
  %148 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx.i5.i, align 4
  %150 = ptrtoint ptr %vddci94.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %149, ptr %vddci94.i, align 1
  br label %if.end96.i

for.inc.i13.i:                                    ; preds = %for.body.i7.i
  %inc.i11.i = add nuw i32 %i.04.i4.i, 1
  %exitcond.not.i12.i = icmp eq i32 %inc.i11.i, %144
  br i1 %exitcond.not.i12.i, label %for.inc.i13.i.if.end96.i_crit_edge, label %for.inc.i13.i.for.body.i7.i_crit_edge

for.inc.i13.i.for.body.i7.i_crit_edge:            ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i7.i

for.inc.i13.i.if.end96.i_crit_edge:               ; preds = %for.inc.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

if.end96.i:                                       ; preds = %for.inc.i13.i.if.end96.i_crit_edge, %if.then.i10.i, %if.then89.i.if.end96.i_crit_edge, %if.end87.i.if.end96.i_crit_edge
  %mvdd.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 13
  %call.i.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %mvdd_high_index.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i.i, i32 0, i32 15
  %151 = ptrtoint ptr %mvdd_high_index.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %mvdd_high_index.i.i, align 4
  %index.i18.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 13, i32 1
  %153 = ptrtoint ptr %index.i18.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %152, ptr %index.i18.i, align 1
  %154 = ptrtoint ptr %mvdd.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 -1, ptr %mvdd.i, align 1
  %aT.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 8
  %155 = ptrtoint ptr %aT.i to i32
  call void @__asan_storeN_noabort(i32 %155, i32 4)
  store i32 65535, ptr %aT.i, align 1
  %dsp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i100, i32 0, i32 47
  %156 = ptrtoint ptr %dsp.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %dsp.i, align 4
  %bSP.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 9
  %158 = ptrtoint ptr %bSP.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %157, ptr %bSP.i, align 1
  %boot_in_gen2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i100, i32 0, i32 4
  %159 = ptrtoint ptr %boot_in_gen2.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %boot_in_gen2.i, align 4, !range !99
  %161 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 3
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %160, ptr %161, align 1
  %163 = ptrtoint ptr %call1.i100 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %call1.i100, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool111.not.i = icmp eq i8 %164, 0
  br i1 %tobool111.not.i, label %if.end96.i.ni_populate_smc_initial_state.exit_crit_edge, label %if.then112.i

if.end96.i.ni_populate_smc_initial_state.exit_crit_edge: ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_smc_initial_state.exit

if.then112.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %mclk32.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mclk32.i, align 4
  %call116.i = tail call zeroext i8 @cypress_get_strobe_mode_settings(ptr noundef %rdev, i32 noundef %166) #9
  %strobeMode.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 6
  %167 = ptrtoint ptr %strobeMode.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %call116.i, ptr %strobeMode.i, align 1
  %168 = ptrtoint ptr %mclk32.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mclk32.i, align 4
  %mclk_edc_enable_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i100, i32 0, i32 42
  %170 = ptrtoint ptr %mclk_edc_enable_threshold.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mclk_edc_enable_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp.i108 = icmp ugt i32 %169, %171
  %mcFlags.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 7
  %..i = select i1 %cmp.i108, i8 3, i8 0
  %172 = ptrtoint ptr %mcFlags.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %..i, ptr %mcFlags.i, align 1
  br label %ni_populate_smc_initial_state.exit

ni_populate_smc_initial_state.exit:               ; preds = %if.then112.i, %if.end96.i.ni_populate_smc_initial_state.exit_crit_edge
  %initialState.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8
  %levelCount.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 1
  %173 = ptrtoint ptr %levelCount.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 1, ptr %levelCount.i, align 1
  %174 = ptrtoint ptr %initialState.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %initialState.i, align 1
  %176 = or i8 %175, 1
  store i8 %176, ptr %initialState.i, align 1
  %dpm2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 24
  %177 = ptrtoint ptr %dpm2.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %dpm2.i, align 1
  %NearTDPDec.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 24, i32 5
  %178 = ptrtoint ptr %NearTDPDec.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %NearTDPDec.i, align 1
  %AboveSafeInc.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 24, i32 6
  %179 = ptrtoint ptr %AboveSafeInc.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %AboveSafeInc.i, align 1
  %BelowSafeInc.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 24, i32 7
  %180 = ptrtoint ptr %BelowSafeInc.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %BelowSafeInc.i, align 1
  %SQPowerThrottle.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 21
  %181 = ptrtoint ptr %SQPowerThrottle.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 1073692671, ptr %SQPowerThrottle.i, align 1
  %SQPowerThrottle_2.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4, i32 22
  %182 = ptrtoint ptr %SQPowerThrottle_2.i to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 2080325631, ptr %SQPowerThrottle_2.i, align 1
  %call.i109 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i110 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %183 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %priv.i, align 4
  %clock_registers.i112 = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1
  %mpll_ad_func_cntl3.i = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 8
  %185 = ptrtoint ptr %mpll_ad_func_cntl3.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mpll_ad_func_cntl3.i, align 4
  %mpll_ad_func_cntl_25.i = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 9
  %187 = ptrtoint ptr %mpll_ad_func_cntl_25.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %mpll_ad_func_cntl_25.i, align 4
  %mpll_dq_func_cntl7.i = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 10
  %189 = ptrtoint ptr %mpll_dq_func_cntl7.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mpll_dq_func_cntl7.i, align 4
  %mpll_dq_func_cntl_29.i = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 11
  %191 = ptrtoint ptr %mpll_dq_func_cntl_29.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mpll_dq_func_cntl_29.i, align 4
  %193 = ptrtoint ptr %clock_registers.i112 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %clock_registers.i112, align 4
  %cg_spll_func_cntl_2.i113 = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 1
  %195 = ptrtoint ptr %cg_spll_func_cntl_2.i113 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %cg_spll_func_cntl_2.i113, align 4
  %cg_spll_func_cntl_3.i114 = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 2
  %197 = ptrtoint ptr %cg_spll_func_cntl_3.i114 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %cg_spll_func_cntl_3.i114, align 4
  %cg_spll_func_cntl_4.i115 = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 3
  %199 = ptrtoint ptr %cg_spll_func_cntl_4.i115 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %cg_spll_func_cntl_4.i115, align 4
  %mclk_pwrmgt_cntl15.i = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 6
  %201 = ptrtoint ptr %mclk_pwrmgt_cntl15.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %mclk_pwrmgt_cntl15.i, align 4
  %dll_cntl17.i = getelementptr inbounds %struct.ni_power_info, ptr %184, i32 0, i32 1, i32 7
  %203 = ptrtoint ptr %dll_cntl17.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %dll_cntl17.i, align 4
  %ACPIState.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9
  %205 = call ptr @memcpy(ptr %ACPIState.i, ptr %initialState.i, i32 152)
  %206 = ptrtoint ptr %ACPIState.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %ACPIState.i, align 1
  %208 = and i8 %207, -2
  store i8 %208, ptr %ACPIState.i, align 1
  %acpi_vddc.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i109, i32 0, i32 36
  %209 = ptrtoint ptr %acpi_vddc.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %acpi_vddc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %210)
  %tobool.not.i117 = icmp eq i16 %210, 0
  %vddc_voltage_table54.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 19
  br i1 %tobool.not.i117, label %if.else53.i, label %if.then.i120

if.then.i120:                                     ; preds = %ni_populate_smc_initial_state.exit
  %vddc.i118 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12
  %211 = ptrtoint ptr %vddc_voltage_table54.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %vddc_voltage_table54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp3.not5.i.i119 = icmp eq i32 %212, 0
  br i1 %cmp3.not5.i.i119, label %if.then.i120.ni_populate_voltage_value.exit.i133_crit_edge, label %if.then.i120.for.body.i.i124_crit_edge

if.then.i120.for.body.i.i124_crit_edge:           ; preds = %if.then.i120
  br label %for.body.i.i124

if.then.i120.ni_populate_voltage_value.exit.i133_crit_edge: ; preds = %if.then.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit.i133

for.body.i.i124:                                  ; preds = %for.inc.i.i130.for.body.i.i124_crit_edge, %if.then.i120.for.body.i.i124_crit_edge
  %i.04.i.i121 = phi i32 [ %inc.i.i128, %for.inc.i.i130.for.body.i.i124_crit_edge ], [ 0, %if.then.i120.for.body.i.i124_crit_edge ]
  %arrayidx.i.i122 = getelementptr %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 19, i32 3, i32 %i.04.i.i121
  %213 = ptrtoint ptr %arrayidx.i.i122 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %arrayidx.i.i122, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %214, i16 %210)
  %cmp3.not.i.i123 = icmp ult i16 %214, %210
  br i1 %cmp3.not.i.i123, label %for.inc.i.i130, label %if.then.i.i127

if.then.i.i127:                                   ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i.i125 = trunc i32 %i.04.i.i121 to i8
  %index.i.i126 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12, i32 1
  %215 = ptrtoint ptr %index.i.i126 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv5.i.i125, ptr %index.i.i126, align 1
  %216 = ptrtoint ptr %arrayidx.i.i122 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx.i.i122, align 4
  %218 = ptrtoint ptr %vddc.i118 to i32
  call void @__asan_storeN_noabort(i32 %218, i32 2)
  store i16 %217, ptr %vddc.i118, align 1
  br label %ni_populate_voltage_value.exit.i133

for.inc.i.i130:                                   ; preds = %for.body.i.i124
  %inc.i.i128 = add nuw i32 %i.04.i.i121, 1
  %exitcond.not.i.i129 = icmp eq i32 %inc.i.i128, %212
  br i1 %exitcond.not.i.i129, label %for.inc.i.i130.ni_populate_voltage_value.exit.i133_crit_edge, label %for.inc.i.i130.for.body.i.i124_crit_edge

for.inc.i.i130.for.body.i.i124_crit_edge:         ; preds = %for.inc.i.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i124

for.inc.i.i130.ni_populate_voltage_value.exit.i133_crit_edge: ; preds = %for.inc.i.i130
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit.i133

ni_populate_voltage_value.exit.i133:              ; preds = %for.inc.i.i130.ni_populate_voltage_value.exit.i133_crit_edge, %if.then.i.i127, %if.then.i120.ni_populate_voltage_value.exit.i133_crit_edge
  %i.02.i.i131 = phi i32 [ %i.04.i.i121, %if.then.i.i127 ], [ 0, %if.then.i120.ni_populate_voltage_value.exit.i133_crit_edge ], [ %212, %for.inc.i.i130.ni_populate_voltage_value.exit.i133_crit_edge ]
  %219 = ptrtoint ptr %vddc_voltage_table54.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %vddc_voltage_table54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i.i131, i32 %220)
  %cmp11.not.i.i132 = icmp ult i32 %i.02.i.i131, %220
  br i1 %cmp11.not.i.i132, label %if.then24.i, label %ni_populate_voltage_value.exit.i133.if.end37.i_crit_edge

ni_populate_voltage_value.exit.i133.if.end37.i_crit_edge: ; preds = %ni_populate_voltage_value.exit.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then24.i:                                      ; preds = %ni_populate_voltage_value.exit.i133
  %entries.i.i134 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %221 = ptrtoint ptr %entries.i.i134 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %entries.i.i134, align 4
  %tobool.not.i.i135 = icmp eq ptr %222, null
  br i1 %tobool.not.i.i135, label %if.then24.i.ni_get_std_voltage_value.exit.i147_crit_edge, label %land.lhs.true.i.i142

if.then24.i.ni_get_std_voltage_value.exit.i147_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_get_std_voltage_value.exit.i147

land.lhs.true.i.i142:                             ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %cac_leakage_table.i.i136 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %index.i1.i137 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12, i32 1
  %223 = ptrtoint ptr %index.i1.i137 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %index.i1.i137, align 1
  %conv.i.i138 = zext i8 %224 to i32
  %225 = ptrtoint ptr %cac_leakage_table.i.i136 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %cac_leakage_table.i.i136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %226, i32 %conv.i.i138)
  %cmp.i.i139 = icmp ugt i32 %226, %conv.i.i138
  %arrayidx.i2.i140 = getelementptr %union.radeon_cac_leakage_entry, ptr %222, i32 %conv.i.i138
  %spec.select.i.i141 = select i1 %cmp.i.i139, ptr %arrayidx.i2.i140, ptr %vddc.i118
  br label %ni_get_std_voltage_value.exit.i147

ni_get_std_voltage_value.exit.i147:               ; preds = %land.lhs.true.i.i142, %if.then24.i.ni_get_std_voltage_value.exit.i147_crit_edge
  %storemerge.in.i.i143 = phi ptr [ %vddc.i118, %if.then24.i.ni_get_std_voltage_value.exit.i147_crit_edge ], [ %spec.select.i.i141, %land.lhs.true.i.i142 ]
  %227 = ptrtoint ptr %storemerge.in.i.i143 to i32
  call void @__asan_loadN_noabort(i32 %227, i32 2)
  %storemerge.i.i144 = load i16, ptr %storemerge.in.i.i143, align 1
  %index.i145 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12, i32 1
  %228 = ptrtoint ptr %index.i145 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %index.i145, align 1
  %std_vddc36.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 15
  %index1.i.i146 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 15, i32 1
  %230 = ptrtoint ptr %index1.i.i146 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %index1.i.i146, align 1
  %231 = ptrtoint ptr %std_vddc36.i to i32
  call void @__asan_storeN_noabort(i32 %231, i32 2)
  store i16 %storemerge.i.i144, ptr %std_vddc36.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %ni_get_std_voltage_value.exit.i147, %ni_populate_voltage_value.exit.i133.if.end37.i_crit_edge
  %pcie_gen2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i109, i32 0, i32 1
  %232 = ptrtoint ptr %pcie_gen2.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %pcie_gen2.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool38.not.i = icmp eq i8 %233, 0
  br i1 %tobool38.not.i, label %if.else48.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end37.i
  %acpi_pcie_gen2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i109, i32 0, i32 3
  %234 = ptrtoint ptr %acpi_pcie_gen2.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %acpi_pcie_gen2.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool40.not.i = icmp eq i8 %235, 0
  %gen2PCIE46.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 3
  br i1 %tobool40.not.i, label %if.else.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  %236 = ptrtoint ptr %gen2PCIE46.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %gen2PCIE46.i, align 1
  br label %if.end80.i

if.else.i:                                        ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  %237 = ptrtoint ptr %gen2PCIE46.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %gen2PCIE46.i, align 1
  br label %if.end80.i

if.else48.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  %gen2PCIE51.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 3
  %238 = ptrtoint ptr %gen2PCIE51.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %gen2PCIE51.i, align 1
  br label %if.end80.i

if.else53.i:                                      ; preds = %ni_populate_smc_initial_state.exit
  %min_vddc_in_table.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i109, i32 0, i32 27
  %239 = ptrtoint ptr %min_vddc_in_table.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %min_vddc_in_table.i, align 4
  %vddc57.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12
  %241 = ptrtoint ptr %vddc_voltage_table54.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %vddc_voltage_table54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp3.not5.i3.i148 = icmp eq i32 %242, 0
  br i1 %cmp3.not5.i3.i148, label %if.else53.i.ni_populate_voltage_value.exit17.i_crit_edge, label %if.else53.i.for.body.i7.i152_crit_edge

if.else53.i.for.body.i7.i152_crit_edge:           ; preds = %if.else53.i
  br label %for.body.i7.i152

if.else53.i.ni_populate_voltage_value.exit17.i_crit_edge: ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit17.i

for.body.i7.i152:                                 ; preds = %for.inc.i13.i158.for.body.i7.i152_crit_edge, %if.else53.i.for.body.i7.i152_crit_edge
  %i.04.i4.i149 = phi i32 [ %inc.i11.i156, %for.inc.i13.i158.for.body.i7.i152_crit_edge ], [ 0, %if.else53.i.for.body.i7.i152_crit_edge ]
  %arrayidx.i5.i150 = getelementptr %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 19, i32 3, i32 %i.04.i4.i149
  %243 = ptrtoint ptr %arrayidx.i5.i150 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx.i5.i150, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %244, i16 %240)
  %cmp3.not.i6.i151 = icmp ult i16 %244, %240
  br i1 %cmp3.not.i6.i151, label %for.inc.i13.i158, label %if.then.i10.i155

if.then.i10.i155:                                 ; preds = %for.body.i7.i152
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i8.i153 = trunc i32 %i.04.i4.i149 to i8
  %index.i9.i154 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12, i32 1
  %245 = ptrtoint ptr %index.i9.i154 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 %conv5.i8.i153, ptr %index.i9.i154, align 1
  %246 = ptrtoint ptr %arrayidx.i5.i150 to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %arrayidx.i5.i150, align 4
  %248 = ptrtoint ptr %vddc57.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 2)
  store i16 %247, ptr %vddc57.i, align 1
  br label %ni_populate_voltage_value.exit17.i

for.inc.i13.i158:                                 ; preds = %for.body.i7.i152
  %inc.i11.i156 = add nuw i32 %i.04.i4.i149, 1
  %exitcond.not.i12.i157 = icmp eq i32 %inc.i11.i156, %242
  br i1 %exitcond.not.i12.i157, label %for.inc.i13.i158.ni_populate_voltage_value.exit17.i_crit_edge, label %for.inc.i13.i158.for.body.i7.i152_crit_edge

for.inc.i13.i158.for.body.i7.i152_crit_edge:      ; preds = %for.inc.i13.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i7.i152

for.inc.i13.i158.ni_populate_voltage_value.exit17.i_crit_edge: ; preds = %for.inc.i13.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit17.i

ni_populate_voltage_value.exit17.i:               ; preds = %for.inc.i13.i158.ni_populate_voltage_value.exit17.i_crit_edge, %if.then.i10.i155, %if.else53.i.ni_populate_voltage_value.exit17.i_crit_edge
  %i.02.i14.i = phi i32 [ %i.04.i4.i149, %if.then.i10.i155 ], [ 0, %if.else53.i.ni_populate_voltage_value.exit17.i_crit_edge ], [ %242, %for.inc.i13.i158.ni_populate_voltage_value.exit17.i_crit_edge ]
  %249 = ptrtoint ptr %vddc_voltage_table54.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %vddc_voltage_table54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i14.i, i32 %250)
  %cmp11.not.i15.i = icmp ult i32 %i.02.i14.i, %250
  br i1 %cmp11.not.i15.i, label %if.then60.i, label %ni_populate_voltage_value.exit17.i.if.end76.i_crit_edge

ni_populate_voltage_value.exit17.i.if.end76.i_crit_edge: ; preds = %ni_populate_voltage_value.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i

if.then60.i:                                      ; preds = %ni_populate_voltage_value.exit17.i
  %entries.i18.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %251 = ptrtoint ptr %entries.i18.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %entries.i18.i, align 4
  %tobool.not.i19.i = icmp eq ptr %252, null
  br i1 %tobool.not.i19.i, label %if.then60.i.ni_get_std_voltage_value.exit29.i_crit_edge, label %land.lhs.true.i26.i

if.then60.i.ni_get_std_voltage_value.exit29.i_crit_edge: ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_get_std_voltage_value.exit29.i

land.lhs.true.i26.i:                              ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #11
  %cac_leakage_table.i20.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %index.i21.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12, i32 1
  %253 = ptrtoint ptr %index.i21.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %index.i21.i, align 1
  %conv.i22.i = zext i8 %254 to i32
  %255 = ptrtoint ptr %cac_leakage_table.i20.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %cac_leakage_table.i20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %conv.i22.i)
  %cmp.i23.i = icmp ugt i32 %256, %conv.i22.i
  %arrayidx.i24.i = getelementptr %union.radeon_cac_leakage_entry, ptr %252, i32 %conv.i22.i
  %spec.select.i25.i = select i1 %cmp.i23.i, ptr %arrayidx.i24.i, ptr %vddc57.i
  br label %ni_get_std_voltage_value.exit29.i

ni_get_std_voltage_value.exit29.i:                ; preds = %land.lhs.true.i26.i, %if.then60.i.ni_get_std_voltage_value.exit29.i_crit_edge
  %storemerge.in.i27.i = phi ptr [ %vddc57.i, %if.then60.i.ni_get_std_voltage_value.exit29.i_crit_edge ], [ %spec.select.i25.i, %land.lhs.true.i26.i ]
  %257 = ptrtoint ptr %storemerge.in.i27.i to i32
  call void @__asan_loadN_noabort(i32 %257, i32 2)
  %storemerge.i28.i = load i16, ptr %storemerge.in.i27.i, align 1
  %index71.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 12, i32 1
  %258 = ptrtoint ptr %index71.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %index71.i, align 1
  %std_vddc74.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 15
  %index1.i30.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 15, i32 1
  %260 = ptrtoint ptr %index1.i30.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %index1.i30.i, align 1
  %261 = ptrtoint ptr %std_vddc74.i to i32
  call void @__asan_storeN_noabort(i32 %261, i32 2)
  store i16 %storemerge.i28.i, ptr %std_vddc74.i, align 1
  br label %if.end76.i

if.end76.i:                                       ; preds = %ni_get_std_voltage_value.exit29.i, %ni_populate_voltage_value.exit17.i.if.end76.i_crit_edge
  %gen2PCIE79.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 3
  %262 = ptrtoint ptr %gen2PCIE79.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %gen2PCIE79.i, align 1
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end76.i, %if.else48.i, %if.else.i, %if.then41.i
  %acpi_vddci.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 14
  %263 = ptrtoint ptr %acpi_vddci.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %acpi_vddci.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %264)
  %tobool81.not.i = icmp eq i16 %264, 0
  br i1 %tobool81.not.i, label %if.end80.i.if.end90.i_crit_edge, label %if.then82.i

if.end80.i.if.end90.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then82.i:                                      ; preds = %if.end80.i
  %vddci_control.i159 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 1
  %265 = ptrtoint ptr %vddci_control.i159 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %vddci_control.i159, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool83.not.i = icmp eq i8 %266, 0
  br i1 %tobool83.not.i, label %if.then82.i.if.end90.i_crit_edge, label %if.then84.i

if.then82.i.if.end90.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then84.i:                                      ; preds = %if.then82.i
  %vddci_voltage_table.i160 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 20
  %vddci.i161 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 14
  %267 = ptrtoint ptr %vddci_voltage_table.i160 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %vddci_voltage_table.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %cmp3.not5.i31.i = icmp eq i32 %268, 0
  br i1 %cmp3.not5.i31.i, label %if.then84.i.if.end90.i_crit_edge, label %if.then84.i.for.body.i35.i_crit_edge

if.then84.i.for.body.i35.i_crit_edge:             ; preds = %if.then84.i
  br label %for.body.i35.i

if.then84.i.if.end90.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

for.body.i35.i:                                   ; preds = %for.inc.i41.i.for.body.i35.i_crit_edge, %if.then84.i.for.body.i35.i_crit_edge
  %i.04.i32.i = phi i32 [ %inc.i39.i, %for.inc.i41.i.for.body.i35.i_crit_edge ], [ 0, %if.then84.i.for.body.i35.i_crit_edge ]
  %arrayidx.i33.i = getelementptr %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 20, i32 3, i32 %i.04.i32.i
  %269 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %arrayidx.i33.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %270, i16 %264)
  %cmp3.not.i34.i = icmp ult i16 %270, %264
  br i1 %cmp3.not.i34.i, label %for.inc.i41.i, label %if.then.i38.i

if.then.i38.i:                                    ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i36.i = trunc i32 %i.04.i32.i to i8
  %index.i37.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 14, i32 1
  %271 = ptrtoint ptr %index.i37.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv5.i36.i, ptr %index.i37.i, align 1
  %272 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %arrayidx.i33.i, align 4
  %274 = ptrtoint ptr %vddci.i161 to i32
  call void @__asan_storeN_noabort(i32 %274, i32 2)
  store i16 %273, ptr %vddci.i161, align 1
  br label %if.end90.i

for.inc.i41.i:                                    ; preds = %for.body.i35.i
  %inc.i39.i = add nuw i32 %i.04.i32.i, 1
  %exitcond.not.i40.i = icmp eq i32 %inc.i39.i, %268
  br i1 %exitcond.not.i40.i, label %for.inc.i41.i.if.end90.i_crit_edge, label %for.inc.i41.i.for.body.i35.i_crit_edge

for.inc.i41.i.for.body.i35.i_crit_edge:           ; preds = %for.inc.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i35.i

for.inc.i41.i.if.end90.i_crit_edge:               ; preds = %for.inc.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.end90.i:                                       ; preds = %for.inc.i41.i.if.end90.i_crit_edge, %if.then.i38.i, %if.then84.i.if.end90.i_crit_edge, %if.then82.i.if.end90.i_crit_edge, %if.end80.i.if.end90.i_crit_edge
  %and91.i = and i32 %186, 2147483647
  %or.i = or i32 %188, 50331648
  %275 = ptrtoint ptr %call.i109 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %call.i109, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool92.not.i = icmp eq i8 %276, 0
  %and94.i = and i32 %190, 2147483647
  %spec.select.i = select i1 %tobool92.not.i, i32 %190, i32 %and94.i
  %or96.i = or i32 %192, 50855936
  %or97.i = and i32 %202, -16776961
  %and98.i = or i32 %or97.i, 16711680
  %or99.i = or i32 %204, -16777216
  %and100.i = and i32 %196, -512
  %or101.i = or i32 %and100.i, 4
  %vMPLL_AD_FUNC_CNTL.i162 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 3
  %277 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL.i162 to i32
  call void @__asan_storeN_noabort(i32 %277, i32 4)
  store i32 %and91.i, ptr %vMPLL_AD_FUNC_CNTL.i162, align 1
  %vMPLL_AD_FUNC_CNTL_2.i163 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 4
  %278 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2.i163 to i32
  call void @__asan_storeN_noabort(i32 %278, i32 4)
  store i32 %or.i, ptr %vMPLL_AD_FUNC_CNTL_2.i163, align 1
  %vMPLL_DQ_FUNC_CNTL.i164 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 5
  %279 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL.i164 to i32
  call void @__asan_storeN_noabort(i32 %279, i32 4)
  store i32 %spec.select.i, ptr %vMPLL_DQ_FUNC_CNTL.i164, align 1
  %vMPLL_DQ_FUNC_CNTL_2.i165 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 6
  %280 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2.i165 to i32
  call void @__asan_storeN_noabort(i32 %280, i32 4)
  store i32 %or96.i, ptr %vMPLL_DQ_FUNC_CNTL_2.i165, align 1
  %vMCLK_PWRMGT_CNTL.i166 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 7
  %281 = ptrtoint ptr %vMCLK_PWRMGT_CNTL.i166 to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %and98.i, ptr %vMCLK_PWRMGT_CNTL.i166, align 1
  %vDLL_CNTL.i167 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 8
  %282 = ptrtoint ptr %vDLL_CNTL.i167 to i32
  call void @__asan_storeN_noabort(i32 %282, i32 4)
  store i32 %or99.i, ptr %vDLL_CNTL.i167, align 1
  %mclk_value.i168 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 11, i32 11
  %283 = ptrtoint ptr %mclk_value.i168 to i32
  call void @__asan_storeN_noabort(i32 %283, i32 4)
  store i32 0, ptr %mclk_value.i168, align 1
  %sclk.i169 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 10
  %284 = ptrtoint ptr %sclk.i169 to i32
  call void @__asan_storeN_noabort(i32 %284, i32 4)
  store i32 %194, ptr %sclk.i169, align 1
  %vCG_SPLL_FUNC_CNTL_2.i170 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 10, i32 1
  %285 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2.i170 to i32
  call void @__asan_storeN_noabort(i32 %285, i32 4)
  store i32 %or101.i, ptr %vCG_SPLL_FUNC_CNTL_2.i170, align 1
  %vCG_SPLL_FUNC_CNTL_3.i171 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 10, i32 2
  %286 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3.i171 to i32
  call void @__asan_storeN_noabort(i32 %286, i32 4)
  store i32 %198, ptr %vCG_SPLL_FUNC_CNTL_3.i171, align 1
  %vCG_SPLL_FUNC_CNTL_4.i172 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 10, i32 3
  %287 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4.i172 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 4)
  store i32 %200, ptr %vCG_SPLL_FUNC_CNTL_4.i172, align 1
  %sclk_value.i173 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 10, i32 6
  %288 = ptrtoint ptr %sclk_value.i173 to i32
  call void @__asan_storeN_noabort(i32 %288, i32 4)
  store i32 0, ptr %sclk_value.i173, align 1
  %mvdd.i174 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 13
  %call.i.i175 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %mvdd_control.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i.i175, i32 0, i32 6
  %289 = ptrtoint ptr %mvdd_control.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %mvdd_control.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool.not.i46.i = icmp eq i8 %290, 0
  %mvdd_low_index.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 16
  %mvdd_high_index.i.i176 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 15
  %.sink.in.i.i = select i1 %tobool.not.i46.i, ptr %mvdd_high_index.i.i176, ptr %mvdd_low_index.i.i
  %storemerge19.i.i = sext i1 %tobool.not.i46.i to i16
  %291 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %.sink.i.i = load i8, ptr %.sink.in.i.i, align 1
  %index3.i.i = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 13, i32 1
  %292 = ptrtoint ptr %index3.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %.sink.i.i, ptr %index3.i.i, align 1
  %293 = ptrtoint ptr %mvdd.i174 to i32
  call void @__asan_storeN_noabort(i32 %293, i32 2)
  store i16 %storemerge19.i.i, ptr %mvdd.i174, align 1
  %dynamic_ac_timing.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i110, i32 0, i32 2
  %294 = ptrtoint ptr %dynamic_ac_timing.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %dynamic_ac_timing.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool138.not.i = icmp eq i8 %295, 0
  br i1 %tobool138.not.i, label %if.end90.i.ni_populate_smc_acpi_state.exit_crit_edge, label %if.then139.i

if.end90.i.ni_populate_smc_acpi_state.exit_crit_edge: ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_smc_acpi_state.exit

if.then139.i:                                     ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  %ACIndex.i177 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 1
  %296 = ptrtoint ptr %ACIndex.i177 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 1, ptr %ACIndex.i177, align 1
  br label %ni_populate_smc_acpi_state.exit

ni_populate_smc_acpi_state.exit:                  ; preds = %if.then139.i, %if.end90.i.ni_populate_smc_acpi_state.exit_crit_edge
  %dpm2.i178 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 24
  %297 = ptrtoint ptr %dpm2.i178 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 0, ptr %dpm2.i178, align 1
  %NearTDPDec.i179 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 24, i32 5
  %298 = ptrtoint ptr %NearTDPDec.i179 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %NearTDPDec.i179, align 1
  %AboveSafeInc.i180 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 24, i32 6
  %299 = ptrtoint ptr %AboveSafeInc.i180 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 0, ptr %AboveSafeInc.i180, align 1
  %BelowSafeInc.i181 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 24, i32 7
  %300 = ptrtoint ptr %BelowSafeInc.i181 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 0, ptr %BelowSafeInc.i181, align 1
  %SQPowerThrottle.i182 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 21
  %301 = ptrtoint ptr %SQPowerThrottle.i182 to i32
  call void @__asan_storeN_noabort(i32 %301, i32 4)
  store i32 1073692671, ptr %SQPowerThrottle.i182, align 1
  %SQPowerThrottle_2.i183 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 9, i32 4, i32 22
  %302 = ptrtoint ptr %SQPowerThrottle_2.i183 to i32
  call void @__asan_storeN_noabort(i32 %302, i32 4)
  store i32 2080325631, ptr %SQPowerThrottle_2.i183, align 1
  %303 = ptrtoint ptr %initialState.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %initialState.i, align 1
  %driverState = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 11
  %305 = ptrtoint ptr %driverState to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %driverState, align 1
  %306 = ptrtoint ptr %levelCount.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %levelCount.i, align 1
  %levelCount49 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 11, i32 1
  %308 = ptrtoint ptr %levelCount49 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %307, ptr %levelCount49, align 1
  %levels = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 12
  %level = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 8, i32 4
  %309 = call ptr @memcpy(ptr %levels, ptr %level, i32 148)
  %ULVState = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 10
  %310 = call ptr @memcpy(ptr %ULVState, ptr %initialState.i, i32 152)
  %call53 = tail call fastcc i32 @ni_do_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %ni_populate_smc_acpi_state.exit.cleanup_crit_edge

ni_populate_smc_acpi_state.exit.cleanup_crit_edge: ; preds = %ni_populate_smc_acpi_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %ni_populate_smc_acpi_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  %state_table_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 57
  %311 = ptrtoint ptr %state_table_start to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %state_table_start, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %313 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %sram_end, align 4
  %call57 = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %312, ptr noundef %smc_statetable, i16 noundef zeroext 3028, i16 noundef zeroext %314) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %ni_populate_smc_acpi_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ %call53, %ni_populate_smc_acpi_state.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_init_smc_spll_table(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  %sclk_params = alloca %struct.NISLANDS_SMC_SCLK_VALUE, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sclk_params) #9
  %2 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_params, i32 0, i32 2
  %3 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_params, i32 0, i32 4
  %4 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_params, i32 0, i32 5
  %spll_table_start = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 16
  %5 = call ptr @memset(ptr %sclk_params, i32 255, i32 28)
  %6 = ptrtoint ptr %spll_table_start to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %spll_table_start, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp eq i16 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 2048) #12
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.093 = phi i32 [ %inc, %if.end40.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sclk.092 = phi i32 [ %add, %if.end40.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call10 = call fastcc i32 @ni_calculate_sclk_params(ptr noundef %rdev, i32 noundef %sclk.092, ptr noundef nonnull %sclk_params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end40, label %for.body.if.end54_crit_edge

for.body.if.end54_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end40:                                         ; preds = %for.body
  %9 = ptrtoint ptr %sclk_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sclk_params, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %and19 = lshr i32 %12, 1
  %shr20 = and i32 %and19, 33550336
  %and17 = lshr i32 %16, 6
  %shr21 = and i32 %and17, 1048575
  %17 = shl i32 %10, 5
  %shl42 = and i32 %17, -33554432
  %or = or i32 %shr20, %shl42
  %arrayidx = getelementptr [256 x i32], ptr %call7.i.i, i32 0, i32 %i.093
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %arrayidx, align 4
  %19 = shl i32 %14, 16
  %shl46 = and i32 %19, -1048576
  %or48 = or i32 %shr21, %shl46
  %arrayidx49 = getelementptr %struct.SMC_NISLANDS_SPLL_DIV_TABLE, ptr %call7.i.i, i32 0, i32 1, i32 %i.093
  %20 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or48, ptr %arrayidx49, align 4
  %add = add nuw nsw i32 %sclk.092, 512
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %if.then51, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.then51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %spll_table_start to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %spll_table_start, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %23 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sram_end, align 4
  %call53 = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %22, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2048, i16 noundef zeroext %24) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.body.if.end54_crit_edge
  %ret.6 = phi i32 [ %call53, %if.then51 ], [ %call10, %for.body.if.end54_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.6, %if.end54 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sclk_params) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_init_arb_table_index(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !104
  %arb_table_start = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arb_table_start, align 2
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sram_end, align 4
  %call2 = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %4, ptr noundef nonnull %tmp, i16 noundef zeroext %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp, align 4
  %and = and i32 %8, 16777215
  %or = or i32 %and, 184549376
  store i32 %or, ptr %tmp, align 4
  %9 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arb_table_start, align 2
  %11 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sram_end, align 4
  %call5 = call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %10, i32 noundef %or, i16 noundef zeroext %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_populate_mc_reg_table(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_boot_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_boot_state, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %smc_mc_reg_table = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 24
  %4 = call ptr @memset(ptr %smc_mc_reg_table, i32 0, i32 2692)
  %call4 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 100, i32 noundef 1) #9
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %mc_reg_table1.i = getelementptr inbounds %struct.ni_power_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mc_reg_table1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp35.not.i = icmp eq i8 %8, 0
  br i1 %cmp35.not.i, label %entry.ni_populate_mc_reg_addresses.exit_crit_edge, label %for.body.lr.ph.i

entry.ni_populate_mc_reg_addresses.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_mc_reg_addresses.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %valid_flag.i = getelementptr inbounds %struct.ni_power_info, ptr %6, i32 0, i32 2, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.037.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc18.i, %for.inc.i.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %valid_flag.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %valid_flag.i, align 2
  %conv4.i = zext i16 %10 to i32
  %shl.i = shl nuw i32 1, %j.037.i
  %and.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.036.i)
  %cmp5.i = icmp ugt i32 %i.036.i, 31
  br i1 %cmp5.i, label %if.then.i.ni_populate_mc_reg_addresses.exit_crit_edge, label %if.end.i

if.then.i.ni_populate_mc_reg_addresses.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_mc_reg_addresses.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.ni_power_info, ptr %6, i32 0, i32 2, i32 4, i32 %j.037.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 4
  %arrayidx9.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 2, i32 %i.036.i
  %13 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %arrayidx9.i, align 1
  %s1.i = getelementptr %struct.ni_power_info, ptr %6, i32 0, i32 2, i32 4, i32 %j.037.i, i32 1
  %14 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s1.i, align 2
  %s116.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 2, i32 %i.036.i, i32 1
  %16 = ptrtoint ptr %s116.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %s116.i, align 1
  %inc.i = add nuw nsw i32 %i.036.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %if.end.i ], [ %i.036.i, %for.body.i.for.inc.i_crit_edge ]
  %inc18.i = add nuw nsw i32 %j.037.i, 1
  %17 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mc_reg_table1.i, align 4
  %conv.i = zext i8 %18 to i32
  %cmp.i = icmp ult i32 %inc18.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.ni_populate_mc_reg_addresses.exit_crit_edge

for.inc.i.ni_populate_mc_reg_addresses.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_mc_reg_addresses.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ni_populate_mc_reg_addresses.exit:                ; preds = %for.inc.i.ni_populate_mc_reg_addresses.exit_crit_edge, %if.then.i.ni_populate_mc_reg_addresses.exit_crit_edge, %entry.ni_populate_mc_reg_addresses.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.ni_populate_mc_reg_addresses.exit_crit_edge ], [ %i.1.i, %for.inc.i.ni_populate_mc_reg_addresses.exit_crit_edge ], [ %i.036.i, %if.then.i.ni_populate_mc_reg_addresses.exit_crit_edge ]
  %conv19.i = trunc i32 %i.0.lcssa.i to i8
  %19 = ptrtoint ptr %smc_mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv19.i, ptr %smc_mc_reg_table, align 1
  %data = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 3
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 4
  %num_entries.i = getelementptr inbounds %struct.ni_power_info, ptr %21, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_entries.i, align 1
  %conv.i31 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp32.not.i = icmp eq i8 %23, 0
  br i1 %cmp32.not.i, label %ni_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge, label %for.body.lr.ph.i32

ni_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge: ; preds = %ni_populate_mc_reg_addresses.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.body.lr.ph.i32:                               ; preds = %ni_populate_mc_reg_addresses.exit
  %mclk.i = getelementptr inbounds %struct.ni_ps, ptr %3, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk.i, align 4
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.inc.i36.for.body.i34_crit_edge, %for.body.lr.ph.i32
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i32 ], [ %inc.i35, %for.inc.i36.for.body.i34_crit_edge ]
  %arrayidx.i33 = getelementptr %struct.ni_power_info, ptr %21, i32 0, i32 2, i32 3, i32 %i.033.i
  %26 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp3.not.i = icmp ugt i32 %25, %27
  br i1 %cmp3.not.i, label %for.inc.i36, label %for.body.i34.for.end.i_crit_edge

for.body.i34.for.end.i_crit_edge:                 ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i36:                                      ; preds = %for.body.i34
  %inc.i35 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i35, %conv.i31
  br i1 %exitcond.not.i, label %for.inc.i36.for.end.i_crit_edge, label %for.inc.i36.for.body.i34_crit_edge

for.inc.i36.for.body.i34_crit_edge:               ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i34

for.inc.i36.for.end.i_crit_edge:                  ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i36.for.end.i_crit_edge, %for.body.i34.for.end.i_crit_edge
  %i.0.lcssa.i37 = phi i32 [ %conv.i31, %for.inc.i36.for.end.i_crit_edge ], [ %i.033.i, %for.body.i34.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i37, i32 %conv.i31)
  %cmp8.i = icmp eq i32 %i.0.lcssa.i37, %conv.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i37)
  %cmp10.not.i = icmp eq i32 %i.0.lcssa.i37, 0
  %dec.i = add nsw i32 %i.0.lcssa.i37, -1
  br i1 %cmp10.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i._crit_edge

for.end.i._crit_edge:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %28

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %ni_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge
  %cmp844.i = phi i1 [ %cmp8.i, %for.end.i.for.end.thread.i_crit_edge ], [ true, %ni_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge ]
  br label %28

28:                                               ; preds = %for.end.thread.i, %for.end.i._crit_edge
  %cmp843.i = phi i1 [ %cmp844.i, %for.end.thread.i ], [ %cmp8.i, %for.end.i._crit_edge ]
  %i.0.lcssa41.i = phi i32 [ 0, %for.end.thread.i ], [ %i.0.lcssa.i37, %for.end.i._crit_edge ]
  %29 = phi i32 [ 0, %for.end.thread.i ], [ %dec.i, %for.end.i._crit_edge ]
  %i.1.i38 = select i1 %cmp843.i, i32 %29, i32 %i.0.lcssa41.i
  %mc_reg_table.i = getelementptr inbounds %struct.ni_power_info, ptr %21, i32 0, i32 2
  %30 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mc_reg_table.i, align 4
  %conv18.i = zext i8 %31 to i32
  %valid_flag.i39 = getelementptr inbounds %struct.ni_power_info, ptr %21, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %valid_flag.i39 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %valid_flag.i39, align 2
  %conv20.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp8.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp8.not.i.i, label %.ni_convert_mc_reg_table_entry_to_smc.exit_crit_edge, label %.for.body.i.i_crit_edge

.for.body.i.i_crit_edge:                          ; preds = %28
  br label %for.body.i.i

.ni_convert_mc_reg_table_entry_to_smc.exit_crit_edge: ; preds = %28
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_entry_to_smc.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %.for.body.i.i_crit_edge
  %j.010.i.i = phi i32 [ %inc3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %.for.body.i.i_crit_edge ]
  %i.09.i.i = phi i32 [ %i.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %j.010.i.i
  %and.i.i = and i32 %shl.i.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.ni_power_info, ptr %21, i32 0, i32 2, i32 3, i32 %i.1.i38, i32 1, i32 %j.010.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr [32 x i32], ptr %data, i32 0, i32 %i.09.i.i
  %36 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %arrayidx2.i.i, align 1
  %inc.i.i = add i32 %i.09.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i ], [ %i.09.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc3.i.i = add nuw nsw i32 %j.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc3.i.i, %conv18.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.ni_convert_mc_reg_table_entry_to_smc.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.ni_convert_mc_reg_table_entry_to_smc.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_entry_to_smc.exit

ni_convert_mc_reg_table_entry_to_smc.exit:        ; preds = %for.inc.i.i.ni_convert_mc_reg_table_entry_to_smc.exit_crit_edge, %.ni_convert_mc_reg_table_entry_to_smc.exit_crit_edge
  %mc_reg_table6 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 2
  %mc_reg_table_entry = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 2, i32 3
  %arrayidx9 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 3, i32 1
  %37 = ptrtoint ptr %mc_reg_table6 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mc_reg_table6, align 4
  %conv = zext i8 %38 to i32
  %valid_flag = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %valid_flag to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %valid_flag, align 2
  %conv12 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp8.not.i = icmp eq i8 %38, 0
  br i1 %cmp8.not.i, label %ni_convert_mc_reg_table_entry_to_smc.exit.ni_convert_mc_registers.exit_crit_edge, label %ni_convert_mc_reg_table_entry_to_smc.exit.for.body.i43_crit_edge

ni_convert_mc_reg_table_entry_to_smc.exit.for.body.i43_crit_edge: ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit
  br label %for.body.i43

ni_convert_mc_reg_table_entry_to_smc.exit.ni_convert_mc_registers.exit_crit_edge: ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_registers.exit

for.body.i43:                                     ; preds = %for.inc.i49.for.body.i43_crit_edge, %ni_convert_mc_reg_table_entry_to_smc.exit.for.body.i43_crit_edge
  %j.010.i = phi i32 [ %inc3.i, %for.inc.i49.for.body.i43_crit_edge ], [ 0, %ni_convert_mc_reg_table_entry_to_smc.exit.for.body.i43_crit_edge ]
  %i.09.i = phi i32 [ %i.1.i47, %for.inc.i49.for.body.i43_crit_edge ], [ 0, %ni_convert_mc_reg_table_entry_to_smc.exit.for.body.i43_crit_edge ]
  %shl.i40 = shl nuw i32 1, %j.010.i
  %and.i41 = and i32 %shl.i40, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool.not.i42 = icmp eq i32 %and.i41, 0
  br i1 %tobool.not.i42, label %for.body.i43.for.inc.i49_crit_edge, label %if.then.i46

for.body.i43.for.inc.i49_crit_edge:               ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i49

if.then.i46:                                      ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i44 = getelementptr %struct.ni_mc_reg_entry, ptr %mc_reg_table_entry, i32 0, i32 1, i32 %j.010.i
  %41 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i44, align 4
  %arrayidx2.i = getelementptr [32 x i32], ptr %arrayidx9, i32 0, i32 %i.09.i
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %arrayidx2.i, align 1
  %inc.i45 = add i32 %i.09.i, 1
  br label %for.inc.i49

for.inc.i49:                                      ; preds = %if.then.i46, %for.body.i43.for.inc.i49_crit_edge
  %i.1.i47 = phi i32 [ %inc.i45, %if.then.i46 ], [ %i.09.i, %for.body.i43.for.inc.i49_crit_edge ]
  %inc3.i = add nuw nsw i32 %j.010.i, 1
  %exitcond.not.i48 = icmp eq i32 %inc3.i, %conv
  br i1 %exitcond.not.i48, label %for.inc.i49.ni_convert_mc_registers.exit_crit_edge, label %for.inc.i49.for.body.i43_crit_edge

for.inc.i49.for.body.i43_crit_edge:               ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i43

for.inc.i49.ni_convert_mc_registers.exit_crit_edge: ; preds = %for.inc.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_registers.exit

ni_convert_mc_registers.exit:                     ; preds = %for.inc.i49.ni_convert_mc_registers.exit_crit_edge, %ni_convert_mc_reg_table_entry_to_smc.exit.ni_convert_mc_registers.exit_crit_edge
  %44 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ps_priv.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp8.not.i51 = icmp eq i16 %47, 0
  br i1 %cmp8.not.i51, label %ni_convert_mc_registers.exit.ni_convert_mc_reg_table_to_smc.exit_crit_edge, label %ni_convert_mc_registers.exit.for.body.i55_crit_edge

ni_convert_mc_registers.exit.for.body.i55_crit_edge: ; preds = %ni_convert_mc_registers.exit
  br label %for.body.i55

ni_convert_mc_registers.exit.ni_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %ni_convert_mc_registers.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_to_smc.exit

for.body.i55:                                     ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i55_crit_edge, %ni_convert_mc_registers.exit.for.body.i55_crit_edge
  %i.09.i53 = phi i32 [ %inc.i62, %ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i55_crit_edge ], [ 0, %ni_convert_mc_registers.exit.for.body.i55_crit_edge ]
  %add.i = add nuw nsw i32 %i.09.i53, 2
  %arrayidx2.i54 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 3, i32 %add.i
  %48 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i, align 4
  %num_entries.i.i = getelementptr inbounds %struct.ni_power_info, ptr %49, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_entries.i.i, align 1
  %conv.i.i = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp32.not.i.i = icmp eq i8 %51, 0
  br i1 %cmp32.not.i.i, label %for.body.i55.for.end.thread.i.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i55.for.end.thread.i.i_crit_edge:        ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i55
  %mclk.i.i = getelementptr %struct.ni_ps, ptr %45, i32 0, i32 2, i32 %i.09.i53, i32 1
  %52 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mclk.i.i, align 4
  br label %for.body.i.i57

for.body.i.i57:                                   ; preds = %for.inc.i.i60.for.body.i.i57_crit_edge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i58, %for.inc.i.i60.for.body.i.i57_crit_edge ]
  %arrayidx.i.i56 = getelementptr %struct.ni_power_info, ptr %49, i32 0, i32 2, i32 3, i32 %i.033.i.i
  %54 = ptrtoint ptr %arrayidx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp3.not.i.i = icmp ugt i32 %53, %55
  br i1 %cmp3.not.i.i, label %for.inc.i.i60, label %for.body.i.i57.for.end.i.i_crit_edge

for.body.i.i57.for.end.i.i_crit_edge:             ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i60:                                    ; preds = %for.body.i.i57
  %inc.i.i58 = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i59 = icmp eq i32 %inc.i.i58, %conv.i.i
  br i1 %exitcond.not.i.i59, label %for.inc.i.i60.for.end.i.i_crit_edge, label %for.inc.i.i60.for.body.i.i57_crit_edge

for.inc.i.i60.for.body.i.i57_crit_edge:           ; preds = %for.inc.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i57

for.inc.i.i60.for.end.i.i_crit_edge:              ; preds = %for.inc.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i60.for.end.i.i_crit_edge, %for.body.i.i57.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %conv.i.i, %for.inc.i.i60.for.end.i.i_crit_edge ], [ %i.033.i.i, %for.body.i.i57.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %conv.i.i)
  %cmp8.i.i = icmp eq i32 %i.0.lcssa.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i)
  %cmp10.not.i.i = icmp eq i32 %i.0.lcssa.i.i, 0
  %dec.i.i = add nsw i32 %i.0.lcssa.i.i, -1
  br i1 %cmp10.not.i.i, label %for.end.i.i.for.end.thread.i.i_crit_edge, label %for.end.i.i._crit_edge

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %56

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %for.body.i55.for.end.thread.i.i_crit_edge
  %cmp844.i.i = phi i1 [ %cmp8.i.i, %for.end.i.i.for.end.thread.i.i_crit_edge ], [ true, %for.body.i55.for.end.thread.i.i_crit_edge ]
  br label %56

56:                                               ; preds = %for.end.thread.i.i, %for.end.i.i._crit_edge
  %cmp843.i.i = phi i1 [ %cmp844.i.i, %for.end.thread.i.i ], [ %cmp8.i.i, %for.end.i.i._crit_edge ]
  %i.0.lcssa41.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %i.0.lcssa.i.i, %for.end.i.i._crit_edge ]
  %57 = phi i32 [ 0, %for.end.thread.i.i ], [ %dec.i.i, %for.end.i.i._crit_edge ]
  %i.1.i.i61 = select i1 %cmp843.i.i, i32 %57, i32 %i.0.lcssa41.i.i
  %mc_reg_table.i.i = getelementptr inbounds %struct.ni_power_info, ptr %49, i32 0, i32 2
  %58 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mc_reg_table.i.i, align 4
  %conv18.i.i = zext i8 %59 to i32
  %valid_flag.i.i = getelementptr inbounds %struct.ni_power_info, ptr %49, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %valid_flag.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %valid_flag.i.i, align 2
  %conv20.i.i = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp8.not.i.i.i = icmp eq i8 %59, 0
  br i1 %cmp8.not.i.i.i, label %.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %.for.body.i.i.i_crit_edge

.for.body.i.i.i_crit_edge:                        ; preds = %56
  br label %for.body.i.i.i

.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %56
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_entry_to_smc.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %.for.body.i.i.i_crit_edge
  %j.010.i.i.i = phi i32 [ %inc3.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %i.09.i.i.i = phi i32 [ %i.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %j.010.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr %struct.ni_power_info, ptr %49, i32 0, i32 2, i32 3, i32 %i.1.i.i61, i32 1, i32 %j.010.i.i.i
  %62 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [32 x i32], ptr %arrayidx2.i54, i32 0, i32 %i.09.i.i.i
  %64 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %arrayidx2.i.i.i, align 1
  %inc.i.i.i = add i32 %i.09.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i.i.i ], [ %i.09.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc3.i.i.i = add nuw nsw i32 %j.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc3.i.i.i, %conv18.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_entry_to_smc.exit.i

ni_convert_mc_reg_table_entry_to_smc.exit.i:      ; preds = %for.inc.i.i.i.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, %.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge
  %inc.i62 = add nuw nsw i32 %i.09.i53, 1
  %65 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %45, align 4
  %conv.i63 = zext i16 %66 to i32
  %cmp.i64 = icmp ult i32 %inc.i62, %conv.i63
  br i1 %cmp.i64, label %ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i55_crit_edge, label %ni_convert_mc_reg_table_entry_to_smc.exit.i.ni_convert_mc_reg_table_to_smc.exit_crit_edge

ni_convert_mc_reg_table_entry_to_smc.exit.i.ni_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_to_smc.exit

ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i55_crit_edge: ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i55

ni_convert_mc_reg_table_to_smc.exit:              ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i.ni_convert_mc_reg_table_to_smc.exit_crit_edge, %ni_convert_mc_registers.exit.ni_convert_mc_reg_table_to_smc.exit_crit_edge
  %mc_reg_table_start = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 24
  %67 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %mc_reg_table_start, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %69 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %sram_end, align 4
  %call13 = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %68, ptr noundef %smc_mc_reg_table, i16 noundef zeroext 2692, i16 noundef zeroext %70) #9
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_initialize_smc_cac_tables(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_cac = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enable_cac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_cac, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1152) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2188
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %8 = and i32 %7, 64767
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %cac_weights = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cac_weights, align 4
  %tid_cnt = getelementptr inbounds %struct.ni_cac_weights, ptr %11, i32 0, i32 58
  %12 = ptrtoint ptr %tid_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid_cnt, align 4
  %tid_unit = getelementptr inbounds %struct.ni_cac_weights, ptr %11, i32 0, i32 59
  %14 = ptrtoint ptr %tid_unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tid_unit, align 4
  %shl9 = shl i32 %15, 14
  %or = or i32 %13, %9
  %or10 = or i32 %or, %shl9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or10) #9
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %18, i32 2188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %16) #9, !srcloc !101
  %19 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cac_weights, align 4
  %arrayidx = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 0
  %23 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx14, align 4
  %arrayidx.1 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1, align 4
  %arrayidx14.1 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx14.1, align 4
  %arrayidx.2 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2, align 4
  %arrayidx14.2 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 2
  %29 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx14.2, align 4
  %arrayidx.3 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.3, align 4
  %arrayidx14.3 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 3
  %32 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx14.3, align 4
  %arrayidx.4 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 4
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.4, align 4
  %arrayidx14.4 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 4
  %35 = ptrtoint ptr %arrayidx14.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx14.4, align 4
  %arrayidx.5 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 5
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.5, align 4
  %arrayidx14.5 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 5
  %38 = ptrtoint ptr %arrayidx14.5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx14.5, align 4
  %arrayidx.6 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 6
  %39 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.6, align 4
  %arrayidx14.6 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 6
  %41 = ptrtoint ptr %arrayidx14.6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx14.6, align 4
  %arrayidx.7 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 62, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.7, align 4
  %arrayidx14.7 = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 18, i32 7
  %44 = ptrtoint ptr %arrayidx14.7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx14.7, align 4
  %arrayidx20 = getelementptr %struct.ni_cac_weights, ptr %20, i32 0, i32 63, i32 0
  %45 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx20, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %call7.i.i, align 8
  %48 = load ptr, ptr %cac_weights, align 4
  %arrayidx20.1 = getelementptr %struct.ni_cac_weights, ptr %48, i32 0, i32 63, i32 1
  %49 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx20.1, align 4
  %arrayidx21.1 = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx21.1, align 4
  %52 = load ptr, ptr %cac_weights, align 4
  %arrayidx20.2 = getelementptr %struct.ni_cac_weights, ptr %52, i32 0, i32 63, i32 2
  %53 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx20.2, align 4
  %arrayidx21.2 = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx21.2, align 8
  %56 = load ptr, ptr %cac_weights, align 4
  %arrayidx20.3 = getelementptr %struct.ni_cac_weights, ptr %56, i32 0, i32 63, i32 3
  %57 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx20.3, align 4
  %arrayidx21.3 = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx21.3, align 4
  %cac_leakage = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 26
  %60 = ptrtoint ptr %cac_leakage to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cac_leakage, align 4
  %i_leakage = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 1
  %62 = ptrtoint ptr %i_leakage to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %i_leakage, align 4
  %pwr_const = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 3
  %63 = ptrtoint ptr %pwr_const to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %pwr_const, align 4
  %64 = load i32, ptr %arrayidx14, align 4
  %dc_cac_value = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 4
  %65 = ptrtoint ptr %dc_cac_value to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %dc_cac_value, align 4
  %bif_cac_value = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 5
  %66 = ptrtoint ptr %bif_cac_value to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bif_cac_value, align 4
  %67 = load ptr, ptr %cac_weights, align 4
  %mc_write_weight = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 57
  %68 = ptrtoint ptr %mc_write_weight to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mc_write_weight, align 1
  %mc_wr_weight = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 7
  %70 = ptrtoint ptr %mc_wr_weight to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %mc_wr_weight, align 4
  %mc_read_weight = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 56
  %71 = ptrtoint ptr %mc_read_weight to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mc_read_weight, align 4
  %mc_rd_weight = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 8
  %73 = ptrtoint ptr %mc_rd_weight to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %mc_rd_weight, align 1
  %allow_ovrflw = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 9
  %74 = ptrtoint ptr %allow_ovrflw to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %allow_ovrflw, align 2
  %lta_window_size = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 20
  %75 = ptrtoint ptr %lta_window_size to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %lta_window_size, align 4
  %l2num_win_tdp = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 11
  %77 = ptrtoint ptr %l2num_win_tdp to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %l2num_win_tdp, align 4
  %num_win_tdp = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 10
  %78 = ptrtoint ptr %num_win_tdp to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %num_win_tdp, align 1
  %lts_truncate = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 21
  %79 = ptrtoint ptr %lts_truncate to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %lts_truncate, align 1
  %lts_truncate_n = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 17, i32 12
  %81 = ptrtoint ptr %lts_truncate_n to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %lts_truncate_n, align 1
  %driver_calculate_cac_leakage = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %driver_calculate_cac_leakage to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %driver_calculate_cac_leakage, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool38.not = icmp eq i8 %83, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end6
  %84 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv.i, align 4
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %vddc_voltage_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 19
  %86 = ptrtoint ptr %vddc_voltage_table.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %vddc_voltage_table.i, align 4
  %88 = tail call i32 @llvm.umin.i32(i32 %87, i32 16) #9
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %89 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %asic.i.i, align 8
  %get_xclk.i.i = getelementptr inbounds %struct.radeon_asic, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %get_xclk.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %get_xclk.i.i, align 4
  %call.i.i = tail call i32 %92(ptr noundef %rdev) #9
  %93 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %94, i32 2188
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %96 = and i32 %95, -12648448
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #9
  %div.i.i = udiv i32 1000000000, %call.i.i
  %div2.i.i = udiv i32 %div.i.i, 10000
  %mul.i.i = mul nuw nsw i32 %div2.i.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp52.not.i = icmp eq i32 %88, 0
  %cac_data.i = getelementptr inbounds %struct.ni_power_info, ptr %85, i32 0, i32 17
  %leakage_minimum_temperature.i = getelementptr inbounds %struct.ni_power_info, ptr %85, i32 0, i32 17, i32 2
  %i_leakage.i = getelementptr inbounds %struct.ni_power_info, ptr %85, i32 0, i32 17, i32 1
  %bt.i.i.i = getelementptr inbounds %struct.ni_power_info, ptr %85, i32 0, i32 17, i32 0, i32 1
  %av.i.i.i = getelementptr inbounds %struct.ni_power_info, ptr %85, i32 0, i32 17, i32 0, i32 2
  %bv.i.i.i = getelementptr inbounds %struct.ni_power_info, ptr %85, i32 0, i32 17, i32 0, i32 3
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc22.i.for.cond4.preheader.i_crit_edge, %if.then39
  %max_leakage.07.i = phi i32 [ 0, %if.then39 ], [ %max_leakage.1.lcssa.i, %for.inc22.i.for.cond4.preheader.i_crit_edge ]
  %i.05.i = phi i32 [ 0, %if.then39 ], [ %inc23.i, %for.inc22.i.for.cond4.preheader.i_crit_edge ]
  br i1 %cmp52.not.i, label %for.cond4.preheader.i.for.inc22.i_crit_edge, label %for.body6.lr.ph.i

for.cond4.preheader.i.for.inc22.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %98 = mul nuw nsw i32 %i.05.i, 8000
  %mul7.i = add nuw nsw i32 %98, 8000
  br label %for.body6.i

for.cond25.preheader.i:                           ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %87)
  %cmp269.i = icmp ult i32 %87, 16
  br i1 %cmp269.i, label %for.cond25.preheader.i.for.cond28.preheader.i_crit_edge, label %for.cond25.preheader.i.done_free_crit_edge

for.cond25.preheader.i.done_free_crit_edge:       ; preds = %for.cond25.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free

for.cond25.preheader.i.for.cond28.preheader.i_crit_edge: ; preds = %for.cond25.preheader.i
  br label %for.cond28.preheader.i

for.body6.i:                                      ; preds = %ni_calculate_leakage_for_v_and_t.exit.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %max_leakage.14.i = phi i32 [ %max_leakage.07.i, %for.body6.lr.ph.i ], [ %114, %ni_calculate_leakage_for_v_and_t.exit.i.for.body6.i_crit_edge ]
  %j.03.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %ni_calculate_leakage_for_v_and_t.exit.i.for.body6.i_crit_edge ]
  %99 = ptrtoint ptr %leakage_minimum_temperature.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %leakage_minimum_temperature.i, align 4
  %101 = tail call i32 @llvm.smax.i32(i32 %mul7.i, i32 %100) #9
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 19, i32 3, i32 %j.03.i
  %102 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx.i, align 4
  %104 = ptrtoint ptr %i_leakage.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %i_leakage.i, align 4
  %conv1.i.i.i.i = zext i32 %105 to i64
  %shl.i.i.i.i = shl nuw i64 %conv1.i.i.i.i, 32
  %call1.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i.i.i.i, i64 noundef 1000) #9
  %conv1.i28.i.i.i = zext i16 %103 to i64
  %shl.i29.i.i.i = shl nuw nsw i64 %conv1.i28.i.i.i, 32
  %call3.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i29.i.i.i, i64 noundef 1000) #9
  %conv1.i30.i.i.i = zext i32 %101 to i64
  %shl.i31.i.i.i = shl nuw nsw i64 %conv1.i30.i.i.i, 32
  %call5.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i31.i.i.i, i64 noundef 1000) #9
  %106 = ptrtoint ptr %cac_data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cac_data.i, align 4
  %conv1.i32.i.i.i = zext i32 %107 to i64
  %shl.i33.i.i.i = shl nuw i64 %conv1.i32.i.i.i, 32
  %call7.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i33.i.i.i, i64 noundef 1000) #9
  %108 = ptrtoint ptr %bt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bt.i.i.i, align 4
  %conv1.i34.i.i.i = zext i32 %109 to i64
  %shl.i35.i.i.i = shl nuw i64 %conv1.i34.i.i.i, 32
  %call9.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i35.i.i.i, i64 noundef 1000) #9
  %shr12.i.i.i.i.i = lshr i64 %call9.i.i.i, 63
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body6.i
  %shift.014.i.i.i.i.i = phi i32 [ 62, %for.body6.i ], [ %dec.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %sh_prom.i.i.i.i.i = zext i32 %shift.014.i.i.i.i.i to i64
  %shr213.i.i.i.i.i = lshr i64 %call9.i.i.i, %sh_prom.i.i.i.i.i
  %and3.i.i.i.i.i = and i64 %shr213.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i.i.i.i, i64 %shr12.i.i.i.i.i)
  %cmp5.not.i.i.i.i.i = icmp eq i64 %and3.i.i.i.i.i, %shr12.i.i.i.i.i
  br i1 %cmp5.not.i.i.i.i.i, label %for.inc.i.i.i.i.i, label %for.body.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge

for.body.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  %dec.i.i.i.i.i = add nsw i32 %shift.014.i.i.i.i.i, -1
  %cmp.not.i.i.i.i.i = icmp eq i32 %dec.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %for.inc.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i.i

for.inc.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i.i.i.i

drm_fixp_msbset.exit.i.i.i.i:                     ; preds = %for.inc.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge, %for.body.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge
  %shift.0.lcssa.i.i.i.i.i = phi i32 [ 0, %for.inc.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge ], [ %shift.014.i.i.i.i.i, %for.body.i.i.i.i.i.drm_fixp_msbset.exit.i.i.i.i_crit_edge ]
  %shr12.i33.i.i.i.i = lshr i64 %call5.i.i.i, 63
  br label %for.body.i39.i.i.i.i

for.body.i39.i.i.i.i:                             ; preds = %for.inc.i42.i.i.i.i.for.body.i39.i.i.i.i_crit_edge, %drm_fixp_msbset.exit.i.i.i.i
  %shift.014.i34.i.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i.i.i.i ], [ %dec.i40.i.i.i.i, %for.inc.i42.i.i.i.i.for.body.i39.i.i.i.i_crit_edge ]
  %sh_prom.i35.i.i.i.i = zext i32 %shift.014.i34.i.i.i.i to i64
  %shr213.i36.i.i.i.i = lshr i64 %call5.i.i.i, %sh_prom.i35.i.i.i.i
  %and3.i37.i.i.i.i = and i64 %shr213.i36.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i.i.i.i, i64 %shr12.i33.i.i.i.i)
  %cmp5.not.i38.i.i.i.i = icmp eq i64 %and3.i37.i.i.i.i, %shr12.i33.i.i.i.i
  br i1 %cmp5.not.i38.i.i.i.i, label %for.inc.i42.i.i.i.i, label %for.body.i39.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge

for.body.i39.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge: ; preds = %for.body.i39.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i.i.i.i

for.inc.i42.i.i.i.i:                              ; preds = %for.body.i39.i.i.i.i
  %dec.i40.i.i.i.i = add nsw i32 %shift.014.i34.i.i.i.i, -1
  %cmp.not.i41.i.i.i.i = icmp eq i32 %dec.i40.i.i.i.i, 0
  br i1 %cmp.not.i41.i.i.i.i, label %for.inc.i42.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge, label %for.inc.i42.i.i.i.i.for.body.i39.i.i.i.i_crit_edge

for.inc.i42.i.i.i.i.for.body.i39.i.i.i.i_crit_edge: ; preds = %for.inc.i42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i.i.i.i

for.inc.i42.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge: ; preds = %for.inc.i42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i.i.i.i

drm_fixp_msbset.exit44.i.i.i.i:                   ; preds = %for.inc.i42.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge, %for.body.i39.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge
  %shift.0.lcssa.i43.i.i.i.i = phi i32 [ 0, %for.inc.i42.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge ], [ %shift.014.i34.i.i.i.i, %for.body.i39.i.i.i.i.drm_fixp_msbset.exit44.i.i.i.i_crit_edge ]
  %add.i.i.i.i = add i32 %shift.0.lcssa.i43.i.i.i.i, %shift.0.lcssa.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %add.i.i.i.i, 61
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i, label %if.end11.thread.i.i.i.i

if.end11.thread.i.i.i.i:                          ; preds = %drm_fixp_msbset.exit44.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i.i.i.i = mul i64 %call9.i.i.i, %call5.i.i.i
  br label %if.then13.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %drm_fixp_msbset.exit44.i.i.i.i
  %sub.i.i.i.i = add i32 %add.i.i.i.i, -61
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 1
  %and.i.i.i.i = and i32 %sub.i.i.i.i, 1
  %add2.i.i.i.i = add nuw nsw i32 %shr.i.i.i.i, %and.i.i.i.i
  %sh_prom.i.i.i.i = zext i32 %add2.i.i.i.i to i64
  %shr3.i.i.i.i = ashr i64 %call9.i.i.i, %sh_prom.i.i.i.i
  %sh_prom5.i.i.i.i = zext i32 %shr.i.i.i.i to i64
  %shr6.i.i.i.i = ashr i64 %call5.i.i.i, %sh_prom5.i.i.i.i
  %mul.i.i.i.i = mul i64 %shr3.i.i.i.i, %shr6.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i.i.i)
  %cmp7.i.i.i.i = icmp ugt i32 %sub.i.i.i.i, 32
  br i1 %cmp7.i.i.i.i, label %if.then8.i.i.i.i, label %if.end11.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i.i.i.i = add i32 %add.i.i.i.i, -93
  %sh_prom10.i.i.i.i = zext i32 %sub9.i.i.i.i to i64
  %shl.i36.i.i.i = shl i64 %mul.i.i.i.i, %sh_prom10.i.i.i.i
  br label %drm_fixp_mul.exit.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i.i.i)
  %cmp12.not.i.i.i.i = icmp eq i32 %sub.i.i.i.i, 32
  br i1 %cmp12.not.i.i.i.i, label %if.end11.i.i.i.i.drm_fixp_mul.exit.i.i.i_crit_edge, label %if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge

if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge:     ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i.i.i.i

if.end11.i.i.i.i.drm_fixp_mul.exit.i.i.i_crit_edge: ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit.i.i.i

if.then13.i.i.i.i:                                ; preds = %if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge, %if.end11.thread.i.i.i.i
  %shift.05056.i.i.i.i = phi i32 [ 0, %if.end11.thread.i.i.i.i ], [ %sub.i.i.i.i, %if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge ]
  %mul5155.i.i.i.i = phi i64 [ %mul48.i.i.i.i, %if.end11.thread.i.i.i.i ], [ %mul.i.i.i.i, %if.end11.i.i.i.i.if.then13.i.i.i.i_crit_edge ]
  %sub14.i.i.i.i = sub nuw nsw i32 32, %shift.05056.i.i.i.i
  %sh_prom15.i.i.i.i = zext i32 %sub14.i.i.i.i to i64
  %shr16.i.i.i.i = ashr i64 %mul5155.i.i.i.i, %sh_prom15.i.i.i.i
  br label %drm_fixp_mul.exit.i.i.i

drm_fixp_mul.exit.i.i.i:                          ; preds = %if.then13.i.i.i.i, %if.end11.i.i.i.i.drm_fixp_mul.exit.i.i.i_crit_edge, %if.then8.i.i.i.i
  %retval.0.i.i.i.i = phi i64 [ %shl.i36.i.i.i, %if.then8.i.i.i.i ], [ %shr16.i.i.i.i, %if.then13.i.i.i.i ], [ %mul.i.i.i.i, %if.end11.i.i.i.i.drm_fixp_mul.exit.i.i.i_crit_edge ]
  %call11.i.i.i = tail call fastcc i64 @drm_fixp_exp(i64 noundef %retval.0.i.i.i.i) #9
  %shr12.i.i37.i.i.i = lshr i64 %call7.i.i.i, 63
  br label %for.body.i.i43.i.i.i

for.body.i.i43.i.i.i:                             ; preds = %for.inc.i.i46.i.i.i.for.body.i.i43.i.i.i_crit_edge, %drm_fixp_mul.exit.i.i.i
  %shift.014.i.i38.i.i.i = phi i32 [ 62, %drm_fixp_mul.exit.i.i.i ], [ %dec.i.i44.i.i.i, %for.inc.i.i46.i.i.i.for.body.i.i43.i.i.i_crit_edge ]
  %sh_prom.i.i39.i.i.i = zext i32 %shift.014.i.i38.i.i.i to i64
  %shr213.i.i40.i.i.i = lshr i64 %call7.i.i.i, %sh_prom.i.i39.i.i.i
  %and3.i.i41.i.i.i = and i64 %shr213.i.i40.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i41.i.i.i, i64 %shr12.i.i37.i.i.i)
  %cmp5.not.i.i42.i.i.i = icmp eq i64 %and3.i.i41.i.i.i, %shr12.i.i37.i.i.i
  br i1 %cmp5.not.i.i42.i.i.i, label %for.inc.i.i46.i.i.i, label %for.body.i.i43.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge

for.body.i.i43.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge: ; preds = %for.body.i.i43.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i49.i.i.i

for.inc.i.i46.i.i.i:                              ; preds = %for.body.i.i43.i.i.i
  %dec.i.i44.i.i.i = add nsw i32 %shift.014.i.i38.i.i.i, -1
  %cmp.not.i.i45.i.i.i = icmp eq i32 %dec.i.i44.i.i.i, 0
  br i1 %cmp.not.i.i45.i.i.i, label %for.inc.i.i46.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge, label %for.inc.i.i46.i.i.i.for.body.i.i43.i.i.i_crit_edge

for.inc.i.i46.i.i.i.for.body.i.i43.i.i.i_crit_edge: ; preds = %for.inc.i.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i43.i.i.i

for.inc.i.i46.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge: ; preds = %for.inc.i.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i49.i.i.i

drm_fixp_msbset.exit.i49.i.i.i:                   ; preds = %for.inc.i.i46.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge, %for.body.i.i43.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge
  %shift.0.lcssa.i.i47.i.i.i = phi i32 [ 0, %for.inc.i.i46.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge ], [ %shift.014.i.i38.i.i.i, %for.body.i.i43.i.i.i.drm_fixp_msbset.exit.i49.i.i.i_crit_edge ]
  %shr12.i33.i48.i.i.i = lshr i64 %call11.i.i.i, 63
  br label %for.body.i39.i55.i.i.i

for.body.i39.i55.i.i.i:                           ; preds = %for.inc.i42.i58.i.i.i.for.body.i39.i55.i.i.i_crit_edge, %drm_fixp_msbset.exit.i49.i.i.i
  %shift.014.i34.i50.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i49.i.i.i ], [ %dec.i40.i56.i.i.i, %for.inc.i42.i58.i.i.i.for.body.i39.i55.i.i.i_crit_edge ]
  %sh_prom.i35.i51.i.i.i = zext i32 %shift.014.i34.i50.i.i.i to i64
  %shr213.i36.i52.i.i.i = lshr i64 %call11.i.i.i, %sh_prom.i35.i51.i.i.i
  %and3.i37.i53.i.i.i = and i64 %shr213.i36.i52.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i53.i.i.i, i64 %shr12.i33.i48.i.i.i)
  %cmp5.not.i38.i54.i.i.i = icmp eq i64 %and3.i37.i53.i.i.i, %shr12.i33.i48.i.i.i
  br i1 %cmp5.not.i38.i54.i.i.i, label %for.inc.i42.i58.i.i.i, label %for.body.i39.i55.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge

for.body.i39.i55.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge: ; preds = %for.body.i39.i55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i62.i.i.i

for.inc.i42.i58.i.i.i:                            ; preds = %for.body.i39.i55.i.i.i
  %dec.i40.i56.i.i.i = add nsw i32 %shift.014.i34.i50.i.i.i, -1
  %cmp.not.i41.i57.i.i.i = icmp eq i32 %dec.i40.i56.i.i.i, 0
  br i1 %cmp.not.i41.i57.i.i.i, label %for.inc.i42.i58.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge, label %for.inc.i42.i58.i.i.i.for.body.i39.i55.i.i.i_crit_edge

for.inc.i42.i58.i.i.i.for.body.i39.i55.i.i.i_crit_edge: ; preds = %for.inc.i42.i58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i55.i.i.i

for.inc.i42.i58.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge: ; preds = %for.inc.i42.i58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i62.i.i.i

drm_fixp_msbset.exit44.i62.i.i.i:                 ; preds = %for.inc.i42.i58.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge, %for.body.i39.i55.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge
  %shift.0.lcssa.i43.i59.i.i.i = phi i32 [ 0, %for.inc.i42.i58.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge ], [ %shift.014.i34.i50.i.i.i, %for.body.i39.i55.i.i.i.drm_fixp_msbset.exit44.i62.i.i.i_crit_edge ]
  %add.i60.i.i.i = add i32 %shift.0.lcssa.i43.i59.i.i.i, %shift.0.lcssa.i.i47.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i60.i.i.i)
  %cmp.i61.i.i.i = icmp ugt i32 %add.i60.i.i.i, 61
  br i1 %cmp.i61.i.i.i, label %if.end.i75.i.i.i, label %if.end11.thread.i64.i.i.i

if.end11.thread.i64.i.i.i:                        ; preds = %drm_fixp_msbset.exit44.i62.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i63.i.i.i = mul i64 %call11.i.i.i, %call7.i.i.i
  br label %if.then13.i87.i.i.i

if.end.i75.i.i.i:                                 ; preds = %drm_fixp_msbset.exit44.i62.i.i.i
  %sub.i65.i.i.i = add i32 %add.i60.i.i.i, -61
  %shr.i66.i.i.i = lshr i32 %sub.i65.i.i.i, 1
  %and.i67.i.i.i = and i32 %sub.i65.i.i.i, 1
  %add2.i68.i.i.i = add nuw nsw i32 %shr.i66.i.i.i, %and.i67.i.i.i
  %sh_prom.i69.i.i.i = zext i32 %add2.i68.i.i.i to i64
  %shr3.i70.i.i.i = ashr i64 %call7.i.i.i, %sh_prom.i69.i.i.i
  %sh_prom5.i71.i.i.i = zext i32 %shr.i66.i.i.i to i64
  %shr6.i72.i.i.i = ashr i64 %call11.i.i.i, %sh_prom5.i71.i.i.i
  %mul.i73.i.i.i = mul i64 %shr3.i70.i.i.i, %shr6.i72.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i65.i.i.i)
  %cmp7.i74.i.i.i = icmp ugt i32 %sub.i65.i.i.i, 32
  br i1 %cmp7.i74.i.i.i, label %if.then8.i79.i.i.i, label %if.end11.i81.i.i.i

if.then8.i79.i.i.i:                               ; preds = %if.end.i75.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i76.i.i.i = add i32 %add.i60.i.i.i, -93
  %sh_prom10.i77.i.i.i = zext i32 %sub9.i76.i.i.i to i64
  %shl.i78.i.i.i = shl i64 %mul.i73.i.i.i, %sh_prom10.i77.i.i.i
  br label %drm_fixp_mul.exit89.i.i.i

if.end11.i81.i.i.i:                               ; preds = %if.end.i75.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i65.i.i.i)
  %cmp12.not.i80.i.i.i = icmp eq i32 %sub.i65.i.i.i, 32
  br i1 %cmp12.not.i80.i.i.i, label %if.end11.i81.i.i.i.drm_fixp_mul.exit89.i.i.i_crit_edge, label %if.end11.i81.i.i.i.if.then13.i87.i.i.i_crit_edge

if.end11.i81.i.i.i.if.then13.i87.i.i.i_crit_edge: ; preds = %if.end11.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i87.i.i.i

if.end11.i81.i.i.i.drm_fixp_mul.exit89.i.i.i_crit_edge: ; preds = %if.end11.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit89.i.i.i

if.then13.i87.i.i.i:                              ; preds = %if.end11.i81.i.i.i.if.then13.i87.i.i.i_crit_edge, %if.end11.thread.i64.i.i.i
  %shift.05056.i82.i.i.i = phi i32 [ 0, %if.end11.thread.i64.i.i.i ], [ %sub.i65.i.i.i, %if.end11.i81.i.i.i.if.then13.i87.i.i.i_crit_edge ]
  %mul5155.i83.i.i.i = phi i64 [ %mul48.i63.i.i.i, %if.end11.thread.i64.i.i.i ], [ %mul.i73.i.i.i, %if.end11.i81.i.i.i.if.then13.i87.i.i.i_crit_edge ]
  %sub14.i84.i.i.i = sub nuw nsw i32 32, %shift.05056.i82.i.i.i
  %sh_prom15.i85.i.i.i = zext i32 %sub14.i84.i.i.i to i64
  %shr16.i86.i.i.i = ashr i64 %mul5155.i83.i.i.i, %sh_prom15.i85.i.i.i
  br label %drm_fixp_mul.exit89.i.i.i

drm_fixp_mul.exit89.i.i.i:                        ; preds = %if.then13.i87.i.i.i, %if.end11.i81.i.i.i.drm_fixp_mul.exit89.i.i.i_crit_edge, %if.then8.i79.i.i.i
  %retval.0.i88.i.i.i = phi i64 [ %shl.i78.i.i.i, %if.then8.i79.i.i.i ], [ %shr16.i86.i.i.i, %if.then13.i87.i.i.i ], [ %mul.i73.i.i.i, %if.end11.i81.i.i.i.drm_fixp_mul.exit89.i.i.i_crit_edge ]
  %110 = ptrtoint ptr %av.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %av.i.i.i, align 4
  %conv1.i90.i.i.i = zext i32 %111 to i64
  %shl.i91.i.i.i = shl nuw i64 %conv1.i90.i.i.i, 32
  %call14.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i91.i.i.i, i64 noundef 1000) #9
  %112 = ptrtoint ptr %bv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bv.i.i.i, align 4
  %conv1.i92.i.i.i = zext i32 %113 to i64
  %shl.i93.i.i.i = shl nuw i64 %conv1.i92.i.i.i, 32
  %call16.i.i.i = tail call i64 @div64_s64(i64 noundef %shl.i93.i.i.i, i64 noundef 1000) #9
  %shr12.i.i94.i.i.i = lshr i64 %call16.i.i.i, 63
  br label %for.body.i.i100.i.i.i

for.body.i.i100.i.i.i:                            ; preds = %for.inc.i.i103.i.i.i.for.body.i.i100.i.i.i_crit_edge, %drm_fixp_mul.exit89.i.i.i
  %shift.014.i.i95.i.i.i = phi i32 [ 62, %drm_fixp_mul.exit89.i.i.i ], [ %dec.i.i101.i.i.i, %for.inc.i.i103.i.i.i.for.body.i.i100.i.i.i_crit_edge ]
  %sh_prom.i.i96.i.i.i = zext i32 %shift.014.i.i95.i.i.i to i64
  %shr213.i.i97.i.i.i = lshr i64 %call16.i.i.i, %sh_prom.i.i96.i.i.i
  %and3.i.i98.i.i.i = and i64 %shr213.i.i97.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i98.i.i.i, i64 %shr12.i.i94.i.i.i)
  %cmp5.not.i.i99.i.i.i = icmp eq i64 %and3.i.i98.i.i.i, %shr12.i.i94.i.i.i
  br i1 %cmp5.not.i.i99.i.i.i, label %for.inc.i.i103.i.i.i, label %for.body.i.i100.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge

for.body.i.i100.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge: ; preds = %for.body.i.i100.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i106.i.i.i

for.inc.i.i103.i.i.i:                             ; preds = %for.body.i.i100.i.i.i
  %dec.i.i101.i.i.i = add nsw i32 %shift.014.i.i95.i.i.i, -1
  %cmp.not.i.i102.i.i.i = icmp eq i32 %dec.i.i101.i.i.i, 0
  br i1 %cmp.not.i.i102.i.i.i, label %for.inc.i.i103.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge, label %for.inc.i.i103.i.i.i.for.body.i.i100.i.i.i_crit_edge

for.inc.i.i103.i.i.i.for.body.i.i100.i.i.i_crit_edge: ; preds = %for.inc.i.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i100.i.i.i

for.inc.i.i103.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge: ; preds = %for.inc.i.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i106.i.i.i

drm_fixp_msbset.exit.i106.i.i.i:                  ; preds = %for.inc.i.i103.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge, %for.body.i.i100.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge
  %shift.0.lcssa.i.i104.i.i.i = phi i32 [ 0, %for.inc.i.i103.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge ], [ %shift.014.i.i95.i.i.i, %for.body.i.i100.i.i.i.drm_fixp_msbset.exit.i106.i.i.i_crit_edge ]
  %shr12.i33.i105.i.i.i = lshr i64 %call3.i.i.i, 63
  br label %for.body.i39.i112.i.i.i

for.body.i39.i112.i.i.i:                          ; preds = %for.inc.i42.i115.i.i.i.for.body.i39.i112.i.i.i_crit_edge, %drm_fixp_msbset.exit.i106.i.i.i
  %shift.014.i34.i107.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i106.i.i.i ], [ %dec.i40.i113.i.i.i, %for.inc.i42.i115.i.i.i.for.body.i39.i112.i.i.i_crit_edge ]
  %sh_prom.i35.i108.i.i.i = zext i32 %shift.014.i34.i107.i.i.i to i64
  %shr213.i36.i109.i.i.i = lshr i64 %call3.i.i.i, %sh_prom.i35.i108.i.i.i
  %and3.i37.i110.i.i.i = and i64 %shr213.i36.i109.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i110.i.i.i, i64 %shr12.i33.i105.i.i.i)
  %cmp5.not.i38.i111.i.i.i = icmp eq i64 %and3.i37.i110.i.i.i, %shr12.i33.i105.i.i.i
  br i1 %cmp5.not.i38.i111.i.i.i, label %for.inc.i42.i115.i.i.i, label %for.body.i39.i112.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge

for.body.i39.i112.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge: ; preds = %for.body.i39.i112.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i119.i.i.i

for.inc.i42.i115.i.i.i:                           ; preds = %for.body.i39.i112.i.i.i
  %dec.i40.i113.i.i.i = add nsw i32 %shift.014.i34.i107.i.i.i, -1
  %cmp.not.i41.i114.i.i.i = icmp eq i32 %dec.i40.i113.i.i.i, 0
  br i1 %cmp.not.i41.i114.i.i.i, label %for.inc.i42.i115.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge, label %for.inc.i42.i115.i.i.i.for.body.i39.i112.i.i.i_crit_edge

for.inc.i42.i115.i.i.i.for.body.i39.i112.i.i.i_crit_edge: ; preds = %for.inc.i42.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i112.i.i.i

for.inc.i42.i115.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge: ; preds = %for.inc.i42.i115.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i119.i.i.i

drm_fixp_msbset.exit44.i119.i.i.i:                ; preds = %for.inc.i42.i115.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge, %for.body.i39.i112.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge
  %shift.0.lcssa.i43.i116.i.i.i = phi i32 [ 0, %for.inc.i42.i115.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge ], [ %shift.014.i34.i107.i.i.i, %for.body.i39.i112.i.i.i.drm_fixp_msbset.exit44.i119.i.i.i_crit_edge ]
  %add.i117.i.i.i = add i32 %shift.0.lcssa.i43.i116.i.i.i, %shift.0.lcssa.i.i104.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i117.i.i.i)
  %cmp.i118.i.i.i = icmp ugt i32 %add.i117.i.i.i, 61
  br i1 %cmp.i118.i.i.i, label %if.end.i132.i.i.i, label %if.end11.thread.i121.i.i.i

if.end11.thread.i121.i.i.i:                       ; preds = %drm_fixp_msbset.exit44.i119.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i120.i.i.i = mul i64 %call16.i.i.i, %call3.i.i.i
  br label %if.then13.i144.i.i.i

if.end.i132.i.i.i:                                ; preds = %drm_fixp_msbset.exit44.i119.i.i.i
  %sub.i122.i.i.i = add i32 %add.i117.i.i.i, -61
  %shr.i123.i.i.i = lshr i32 %sub.i122.i.i.i, 1
  %and.i124.i.i.i = and i32 %sub.i122.i.i.i, 1
  %add2.i125.i.i.i = add nuw nsw i32 %shr.i123.i.i.i, %and.i124.i.i.i
  %sh_prom.i126.i.i.i = zext i32 %add2.i125.i.i.i to i64
  %shr3.i127.i.i.i = ashr i64 %call16.i.i.i, %sh_prom.i126.i.i.i
  %sh_prom5.i128.i.i.i = zext i32 %shr.i123.i.i.i to i64
  %shr6.i129.i.i.i = ashr i64 %call3.i.i.i, %sh_prom5.i128.i.i.i
  %mul.i130.i.i.i = mul i64 %shr3.i127.i.i.i, %shr6.i129.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i122.i.i.i)
  %cmp7.i131.i.i.i = icmp ugt i32 %sub.i122.i.i.i, 32
  br i1 %cmp7.i131.i.i.i, label %if.then8.i136.i.i.i, label %if.end11.i138.i.i.i

if.then8.i136.i.i.i:                              ; preds = %if.end.i132.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i133.i.i.i = add i32 %add.i117.i.i.i, -93
  %sh_prom10.i134.i.i.i = zext i32 %sub9.i133.i.i.i to i64
  %shl.i135.i.i.i = shl i64 %mul.i130.i.i.i, %sh_prom10.i134.i.i.i
  br label %drm_fixp_mul.exit146.i.i.i

if.end11.i138.i.i.i:                              ; preds = %if.end.i132.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i122.i.i.i)
  %cmp12.not.i137.i.i.i = icmp eq i32 %sub.i122.i.i.i, 32
  br i1 %cmp12.not.i137.i.i.i, label %if.end11.i138.i.i.i.drm_fixp_mul.exit146.i.i.i_crit_edge, label %if.end11.i138.i.i.i.if.then13.i144.i.i.i_crit_edge

if.end11.i138.i.i.i.if.then13.i144.i.i.i_crit_edge: ; preds = %if.end11.i138.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i144.i.i.i

if.end11.i138.i.i.i.drm_fixp_mul.exit146.i.i.i_crit_edge: ; preds = %if.end11.i138.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit146.i.i.i

if.then13.i144.i.i.i:                             ; preds = %if.end11.i138.i.i.i.if.then13.i144.i.i.i_crit_edge, %if.end11.thread.i121.i.i.i
  %shift.05056.i139.i.i.i = phi i32 [ 0, %if.end11.thread.i121.i.i.i ], [ %sub.i122.i.i.i, %if.end11.i138.i.i.i.if.then13.i144.i.i.i_crit_edge ]
  %mul5155.i140.i.i.i = phi i64 [ %mul48.i120.i.i.i, %if.end11.thread.i121.i.i.i ], [ %mul.i130.i.i.i, %if.end11.i138.i.i.i.if.then13.i144.i.i.i_crit_edge ]
  %sub14.i141.i.i.i = sub nuw nsw i32 32, %shift.05056.i139.i.i.i
  %sh_prom15.i142.i.i.i = zext i32 %sub14.i141.i.i.i to i64
  %shr16.i143.i.i.i = ashr i64 %mul5155.i140.i.i.i, %sh_prom15.i142.i.i.i
  br label %drm_fixp_mul.exit146.i.i.i

drm_fixp_mul.exit146.i.i.i:                       ; preds = %if.then13.i144.i.i.i, %if.end11.i138.i.i.i.drm_fixp_mul.exit146.i.i.i_crit_edge, %if.then8.i136.i.i.i
  %retval.0.i145.i.i.i = phi i64 [ %shl.i135.i.i.i, %if.then8.i136.i.i.i ], [ %shr16.i143.i.i.i, %if.then13.i144.i.i.i ], [ %mul.i130.i.i.i, %if.end11.i138.i.i.i.drm_fixp_mul.exit146.i.i.i_crit_edge ]
  %call18.i.i.i = tail call fastcc i64 @drm_fixp_exp(i64 noundef %retval.0.i145.i.i.i) #9
  %shr12.i.i147.i.i.i = lshr i64 %call14.i.i.i, 63
  br label %for.body.i.i153.i.i.i

for.body.i.i153.i.i.i:                            ; preds = %for.inc.i.i156.i.i.i.for.body.i.i153.i.i.i_crit_edge, %drm_fixp_mul.exit146.i.i.i
  %shift.014.i.i148.i.i.i = phi i32 [ 62, %drm_fixp_mul.exit146.i.i.i ], [ %dec.i.i154.i.i.i, %for.inc.i.i156.i.i.i.for.body.i.i153.i.i.i_crit_edge ]
  %sh_prom.i.i149.i.i.i = zext i32 %shift.014.i.i148.i.i.i to i64
  %shr213.i.i150.i.i.i = lshr i64 %call14.i.i.i, %sh_prom.i.i149.i.i.i
  %and3.i.i151.i.i.i = and i64 %shr213.i.i150.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i151.i.i.i, i64 %shr12.i.i147.i.i.i)
  %cmp5.not.i.i152.i.i.i = icmp eq i64 %and3.i.i151.i.i.i, %shr12.i.i147.i.i.i
  br i1 %cmp5.not.i.i152.i.i.i, label %for.inc.i.i156.i.i.i, label %for.body.i.i153.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge

for.body.i.i153.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge: ; preds = %for.body.i.i153.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i159.i.i.i

for.inc.i.i156.i.i.i:                             ; preds = %for.body.i.i153.i.i.i
  %dec.i.i154.i.i.i = add nsw i32 %shift.014.i.i148.i.i.i, -1
  %cmp.not.i.i155.i.i.i = icmp eq i32 %dec.i.i154.i.i.i, 0
  br i1 %cmp.not.i.i155.i.i.i, label %for.inc.i.i156.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge, label %for.inc.i.i156.i.i.i.for.body.i.i153.i.i.i_crit_edge

for.inc.i.i156.i.i.i.for.body.i.i153.i.i.i_crit_edge: ; preds = %for.inc.i.i156.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i153.i.i.i

for.inc.i.i156.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge: ; preds = %for.inc.i.i156.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i159.i.i.i

drm_fixp_msbset.exit.i159.i.i.i:                  ; preds = %for.inc.i.i156.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge, %for.body.i.i153.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge
  %shift.0.lcssa.i.i157.i.i.i = phi i32 [ 0, %for.inc.i.i156.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge ], [ %shift.014.i.i148.i.i.i, %for.body.i.i153.i.i.i.drm_fixp_msbset.exit.i159.i.i.i_crit_edge ]
  %shr12.i33.i158.i.i.i = lshr i64 %call18.i.i.i, 63
  br label %for.body.i39.i165.i.i.i

for.body.i39.i165.i.i.i:                          ; preds = %for.inc.i42.i168.i.i.i.for.body.i39.i165.i.i.i_crit_edge, %drm_fixp_msbset.exit.i159.i.i.i
  %shift.014.i34.i160.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i159.i.i.i ], [ %dec.i40.i166.i.i.i, %for.inc.i42.i168.i.i.i.for.body.i39.i165.i.i.i_crit_edge ]
  %sh_prom.i35.i161.i.i.i = zext i32 %shift.014.i34.i160.i.i.i to i64
  %shr213.i36.i162.i.i.i = lshr i64 %call18.i.i.i, %sh_prom.i35.i161.i.i.i
  %and3.i37.i163.i.i.i = and i64 %shr213.i36.i162.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i163.i.i.i, i64 %shr12.i33.i158.i.i.i)
  %cmp5.not.i38.i164.i.i.i = icmp eq i64 %and3.i37.i163.i.i.i, %shr12.i33.i158.i.i.i
  br i1 %cmp5.not.i38.i164.i.i.i, label %for.inc.i42.i168.i.i.i, label %for.body.i39.i165.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge

for.body.i39.i165.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge: ; preds = %for.body.i39.i165.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i172.i.i.i

for.inc.i42.i168.i.i.i:                           ; preds = %for.body.i39.i165.i.i.i
  %dec.i40.i166.i.i.i = add nsw i32 %shift.014.i34.i160.i.i.i, -1
  %cmp.not.i41.i167.i.i.i = icmp eq i32 %dec.i40.i166.i.i.i, 0
  br i1 %cmp.not.i41.i167.i.i.i, label %for.inc.i42.i168.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge, label %for.inc.i42.i168.i.i.i.for.body.i39.i165.i.i.i_crit_edge

for.inc.i42.i168.i.i.i.for.body.i39.i165.i.i.i_crit_edge: ; preds = %for.inc.i42.i168.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i165.i.i.i

for.inc.i42.i168.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge: ; preds = %for.inc.i42.i168.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i172.i.i.i

drm_fixp_msbset.exit44.i172.i.i.i:                ; preds = %for.inc.i42.i168.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge, %for.body.i39.i165.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge
  %shift.0.lcssa.i43.i169.i.i.i = phi i32 [ 0, %for.inc.i42.i168.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge ], [ %shift.014.i34.i160.i.i.i, %for.body.i39.i165.i.i.i.drm_fixp_msbset.exit44.i172.i.i.i_crit_edge ]
  %add.i170.i.i.i = add i32 %shift.0.lcssa.i43.i169.i.i.i, %shift.0.lcssa.i.i157.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i170.i.i.i)
  %cmp.i171.i.i.i = icmp ugt i32 %add.i170.i.i.i, 61
  br i1 %cmp.i171.i.i.i, label %if.end.i185.i.i.i, label %if.end11.thread.i174.i.i.i

if.end11.thread.i174.i.i.i:                       ; preds = %drm_fixp_msbset.exit44.i172.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i173.i.i.i = mul i64 %call18.i.i.i, %call14.i.i.i
  br label %if.then13.i197.i.i.i

if.end.i185.i.i.i:                                ; preds = %drm_fixp_msbset.exit44.i172.i.i.i
  %sub.i175.i.i.i = add i32 %add.i170.i.i.i, -61
  %shr.i176.i.i.i = lshr i32 %sub.i175.i.i.i, 1
  %and.i177.i.i.i = and i32 %sub.i175.i.i.i, 1
  %add2.i178.i.i.i = add nuw nsw i32 %shr.i176.i.i.i, %and.i177.i.i.i
  %sh_prom.i179.i.i.i = zext i32 %add2.i178.i.i.i to i64
  %shr3.i180.i.i.i = ashr i64 %call14.i.i.i, %sh_prom.i179.i.i.i
  %sh_prom5.i181.i.i.i = zext i32 %shr.i176.i.i.i to i64
  %shr6.i182.i.i.i = ashr i64 %call18.i.i.i, %sh_prom5.i181.i.i.i
  %mul.i183.i.i.i = mul i64 %shr3.i180.i.i.i, %shr6.i182.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i175.i.i.i)
  %cmp7.i184.i.i.i = icmp ugt i32 %sub.i175.i.i.i, 32
  br i1 %cmp7.i184.i.i.i, label %if.then8.i189.i.i.i, label %if.end11.i191.i.i.i

if.then8.i189.i.i.i:                              ; preds = %if.end.i185.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i186.i.i.i = add i32 %add.i170.i.i.i, -93
  %sh_prom10.i187.i.i.i = zext i32 %sub9.i186.i.i.i to i64
  %shl.i188.i.i.i = shl i64 %mul.i183.i.i.i, %sh_prom10.i187.i.i.i
  br label %drm_fixp_mul.exit199.i.i.i

if.end11.i191.i.i.i:                              ; preds = %if.end.i185.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i175.i.i.i)
  %cmp12.not.i190.i.i.i = icmp eq i32 %sub.i175.i.i.i, 32
  br i1 %cmp12.not.i190.i.i.i, label %if.end11.i191.i.i.i.drm_fixp_mul.exit199.i.i.i_crit_edge, label %if.end11.i191.i.i.i.if.then13.i197.i.i.i_crit_edge

if.end11.i191.i.i.i.if.then13.i197.i.i.i_crit_edge: ; preds = %if.end11.i191.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i197.i.i.i

if.end11.i191.i.i.i.drm_fixp_mul.exit199.i.i.i_crit_edge: ; preds = %if.end11.i191.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit199.i.i.i

if.then13.i197.i.i.i:                             ; preds = %if.end11.i191.i.i.i.if.then13.i197.i.i.i_crit_edge, %if.end11.thread.i174.i.i.i
  %shift.05056.i192.i.i.i = phi i32 [ 0, %if.end11.thread.i174.i.i.i ], [ %sub.i175.i.i.i, %if.end11.i191.i.i.i.if.then13.i197.i.i.i_crit_edge ]
  %mul5155.i193.i.i.i = phi i64 [ %mul48.i173.i.i.i, %if.end11.thread.i174.i.i.i ], [ %mul.i183.i.i.i, %if.end11.i191.i.i.i.if.then13.i197.i.i.i_crit_edge ]
  %sub14.i194.i.i.i = sub nuw nsw i32 32, %shift.05056.i192.i.i.i
  %sh_prom15.i195.i.i.i = zext i32 %sub14.i194.i.i.i to i64
  %shr16.i196.i.i.i = ashr i64 %mul5155.i193.i.i.i, %sh_prom15.i195.i.i.i
  br label %drm_fixp_mul.exit199.i.i.i

drm_fixp_mul.exit199.i.i.i:                       ; preds = %if.then13.i197.i.i.i, %if.end11.i191.i.i.i.drm_fixp_mul.exit199.i.i.i_crit_edge, %if.then8.i189.i.i.i
  %retval.0.i198.i.i.i = phi i64 [ %shl.i188.i.i.i, %if.then8.i189.i.i.i ], [ %shr16.i196.i.i.i, %if.then13.i197.i.i.i ], [ %mul.i183.i.i.i, %if.end11.i191.i.i.i.drm_fixp_mul.exit199.i.i.i_crit_edge ]
  %shr12.i.i200.i.i.i = lshr i64 %call1.i.i.i, 63
  br label %for.body.i.i206.i.i.i

for.body.i.i206.i.i.i:                            ; preds = %for.inc.i.i209.i.i.i.for.body.i.i206.i.i.i_crit_edge, %drm_fixp_mul.exit199.i.i.i
  %shift.014.i.i201.i.i.i = phi i32 [ 62, %drm_fixp_mul.exit199.i.i.i ], [ %dec.i.i207.i.i.i, %for.inc.i.i209.i.i.i.for.body.i.i206.i.i.i_crit_edge ]
  %sh_prom.i.i202.i.i.i = zext i32 %shift.014.i.i201.i.i.i to i64
  %shr213.i.i203.i.i.i = lshr i64 %call1.i.i.i, %sh_prom.i.i202.i.i.i
  %and3.i.i204.i.i.i = and i64 %shr213.i.i203.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i204.i.i.i, i64 %shr12.i.i200.i.i.i)
  %cmp5.not.i.i205.i.i.i = icmp eq i64 %and3.i.i204.i.i.i, %shr12.i.i200.i.i.i
  br i1 %cmp5.not.i.i205.i.i.i, label %for.inc.i.i209.i.i.i, label %for.body.i.i206.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge

for.body.i.i206.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge: ; preds = %for.body.i.i206.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i212.i.i.i

for.inc.i.i209.i.i.i:                             ; preds = %for.body.i.i206.i.i.i
  %dec.i.i207.i.i.i = add nsw i32 %shift.014.i.i201.i.i.i, -1
  %cmp.not.i.i208.i.i.i = icmp eq i32 %dec.i.i207.i.i.i, 0
  br i1 %cmp.not.i.i208.i.i.i, label %for.inc.i.i209.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge, label %for.inc.i.i209.i.i.i.for.body.i.i206.i.i.i_crit_edge

for.inc.i.i209.i.i.i.for.body.i.i206.i.i.i_crit_edge: ; preds = %for.inc.i.i209.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i206.i.i.i

for.inc.i.i209.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge: ; preds = %for.inc.i.i209.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i212.i.i.i

drm_fixp_msbset.exit.i212.i.i.i:                  ; preds = %for.inc.i.i209.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge, %for.body.i.i206.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge
  %shift.0.lcssa.i.i210.i.i.i = phi i32 [ 0, %for.inc.i.i209.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge ], [ %shift.014.i.i201.i.i.i, %for.body.i.i206.i.i.i.drm_fixp_msbset.exit.i212.i.i.i_crit_edge ]
  %shr12.i33.i211.i.i.i = lshr i64 %retval.0.i88.i.i.i, 63
  br label %for.body.i39.i218.i.i.i

for.body.i39.i218.i.i.i:                          ; preds = %for.inc.i42.i221.i.i.i.for.body.i39.i218.i.i.i_crit_edge, %drm_fixp_msbset.exit.i212.i.i.i
  %shift.014.i34.i213.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i212.i.i.i ], [ %dec.i40.i219.i.i.i, %for.inc.i42.i221.i.i.i.for.body.i39.i218.i.i.i_crit_edge ]
  %sh_prom.i35.i214.i.i.i = zext i32 %shift.014.i34.i213.i.i.i to i64
  %shr213.i36.i215.i.i.i = lshr i64 %retval.0.i88.i.i.i, %sh_prom.i35.i214.i.i.i
  %and3.i37.i216.i.i.i = and i64 %shr213.i36.i215.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i216.i.i.i, i64 %shr12.i33.i211.i.i.i)
  %cmp5.not.i38.i217.i.i.i = icmp eq i64 %and3.i37.i216.i.i.i, %shr12.i33.i211.i.i.i
  br i1 %cmp5.not.i38.i217.i.i.i, label %for.inc.i42.i221.i.i.i, label %for.body.i39.i218.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge

for.body.i39.i218.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge: ; preds = %for.body.i39.i218.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i225.i.i.i

for.inc.i42.i221.i.i.i:                           ; preds = %for.body.i39.i218.i.i.i
  %dec.i40.i219.i.i.i = add nsw i32 %shift.014.i34.i213.i.i.i, -1
  %cmp.not.i41.i220.i.i.i = icmp eq i32 %dec.i40.i219.i.i.i, 0
  br i1 %cmp.not.i41.i220.i.i.i, label %for.inc.i42.i221.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge, label %for.inc.i42.i221.i.i.i.for.body.i39.i218.i.i.i_crit_edge

for.inc.i42.i221.i.i.i.for.body.i39.i218.i.i.i_crit_edge: ; preds = %for.inc.i42.i221.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i218.i.i.i

for.inc.i42.i221.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge: ; preds = %for.inc.i42.i221.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i225.i.i.i

drm_fixp_msbset.exit44.i225.i.i.i:                ; preds = %for.inc.i42.i221.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge, %for.body.i39.i218.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge
  %shift.0.lcssa.i43.i222.i.i.i = phi i32 [ 0, %for.inc.i42.i221.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge ], [ %shift.014.i34.i213.i.i.i, %for.body.i39.i218.i.i.i.drm_fixp_msbset.exit44.i225.i.i.i_crit_edge ]
  %add.i223.i.i.i = add i32 %shift.0.lcssa.i43.i222.i.i.i, %shift.0.lcssa.i.i210.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i223.i.i.i)
  %cmp.i224.i.i.i = icmp ugt i32 %add.i223.i.i.i, 61
  br i1 %cmp.i224.i.i.i, label %if.end.i238.i.i.i, label %if.end11.thread.i227.i.i.i

if.end11.thread.i227.i.i.i:                       ; preds = %drm_fixp_msbset.exit44.i225.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i226.i.i.i = mul i64 %retval.0.i88.i.i.i, %call1.i.i.i
  br label %if.then13.i250.i.i.i

if.end.i238.i.i.i:                                ; preds = %drm_fixp_msbset.exit44.i225.i.i.i
  %sub.i228.i.i.i = add i32 %add.i223.i.i.i, -61
  %shr.i229.i.i.i = lshr i32 %sub.i228.i.i.i, 1
  %and.i230.i.i.i = and i32 %sub.i228.i.i.i, 1
  %add2.i231.i.i.i = add nuw nsw i32 %shr.i229.i.i.i, %and.i230.i.i.i
  %sh_prom.i232.i.i.i = zext i32 %add2.i231.i.i.i to i64
  %shr3.i233.i.i.i = ashr i64 %call1.i.i.i, %sh_prom.i232.i.i.i
  %sh_prom5.i234.i.i.i = zext i32 %shr.i229.i.i.i to i64
  %shr6.i235.i.i.i = ashr i64 %retval.0.i88.i.i.i, %sh_prom5.i234.i.i.i
  %mul.i236.i.i.i = mul i64 %shr3.i233.i.i.i, %shr6.i235.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i228.i.i.i)
  %cmp7.i237.i.i.i = icmp ugt i32 %sub.i228.i.i.i, 32
  br i1 %cmp7.i237.i.i.i, label %if.then8.i242.i.i.i, label %if.end11.i244.i.i.i

if.then8.i242.i.i.i:                              ; preds = %if.end.i238.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i239.i.i.i = add i32 %add.i223.i.i.i, -93
  %sh_prom10.i240.i.i.i = zext i32 %sub9.i239.i.i.i to i64
  %shl.i241.i.i.i = shl i64 %mul.i236.i.i.i, %sh_prom10.i240.i.i.i
  br label %drm_fixp_mul.exit252.i.i.i

if.end11.i244.i.i.i:                              ; preds = %if.end.i238.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i228.i.i.i)
  %cmp12.not.i243.i.i.i = icmp eq i32 %sub.i228.i.i.i, 32
  br i1 %cmp12.not.i243.i.i.i, label %if.end11.i244.i.i.i.drm_fixp_mul.exit252.i.i.i_crit_edge, label %if.end11.i244.i.i.i.if.then13.i250.i.i.i_crit_edge

if.end11.i244.i.i.i.if.then13.i250.i.i.i_crit_edge: ; preds = %if.end11.i244.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i250.i.i.i

if.end11.i244.i.i.i.drm_fixp_mul.exit252.i.i.i_crit_edge: ; preds = %if.end11.i244.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit252.i.i.i

if.then13.i250.i.i.i:                             ; preds = %if.end11.i244.i.i.i.if.then13.i250.i.i.i_crit_edge, %if.end11.thread.i227.i.i.i
  %shift.05056.i245.i.i.i = phi i32 [ 0, %if.end11.thread.i227.i.i.i ], [ %sub.i228.i.i.i, %if.end11.i244.i.i.i.if.then13.i250.i.i.i_crit_edge ]
  %mul5155.i246.i.i.i = phi i64 [ %mul48.i226.i.i.i, %if.end11.thread.i227.i.i.i ], [ %mul.i236.i.i.i, %if.end11.i244.i.i.i.if.then13.i250.i.i.i_crit_edge ]
  %sub14.i247.i.i.i = sub nuw nsw i32 32, %shift.05056.i245.i.i.i
  %sh_prom15.i248.i.i.i = zext i32 %sub14.i247.i.i.i to i64
  %shr16.i249.i.i.i = ashr i64 %mul5155.i246.i.i.i, %sh_prom15.i248.i.i.i
  br label %drm_fixp_mul.exit252.i.i.i

drm_fixp_mul.exit252.i.i.i:                       ; preds = %if.then13.i250.i.i.i, %if.end11.i244.i.i.i.drm_fixp_mul.exit252.i.i.i_crit_edge, %if.then8.i242.i.i.i
  %retval.0.i251.i.i.i = phi i64 [ %shl.i241.i.i.i, %if.then8.i242.i.i.i ], [ %shr16.i249.i.i.i, %if.then13.i250.i.i.i ], [ %mul.i236.i.i.i, %if.end11.i244.i.i.i.drm_fixp_mul.exit252.i.i.i_crit_edge ]
  %shr12.i.i253.i.i.i = lshr i64 %retval.0.i251.i.i.i, 63
  br label %for.body.i.i259.i.i.i

for.body.i.i259.i.i.i:                            ; preds = %for.inc.i.i262.i.i.i.for.body.i.i259.i.i.i_crit_edge, %drm_fixp_mul.exit252.i.i.i
  %shift.014.i.i254.i.i.i = phi i32 [ 62, %drm_fixp_mul.exit252.i.i.i ], [ %dec.i.i260.i.i.i, %for.inc.i.i262.i.i.i.for.body.i.i259.i.i.i_crit_edge ]
  %sh_prom.i.i255.i.i.i = zext i32 %shift.014.i.i254.i.i.i to i64
  %shr213.i.i256.i.i.i = lshr i64 %retval.0.i251.i.i.i, %sh_prom.i.i255.i.i.i
  %and3.i.i257.i.i.i = and i64 %shr213.i.i256.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i257.i.i.i, i64 %shr12.i.i253.i.i.i)
  %cmp5.not.i.i258.i.i.i = icmp eq i64 %and3.i.i257.i.i.i, %shr12.i.i253.i.i.i
  br i1 %cmp5.not.i.i258.i.i.i, label %for.inc.i.i262.i.i.i, label %for.body.i.i259.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge

for.body.i.i259.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge: ; preds = %for.body.i.i259.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i265.i.i.i

for.inc.i.i262.i.i.i:                             ; preds = %for.body.i.i259.i.i.i
  %dec.i.i260.i.i.i = add nsw i32 %shift.014.i.i254.i.i.i, -1
  %cmp.not.i.i261.i.i.i = icmp eq i32 %dec.i.i260.i.i.i, 0
  br i1 %cmp.not.i.i261.i.i.i, label %for.inc.i.i262.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge, label %for.inc.i.i262.i.i.i.for.body.i.i259.i.i.i_crit_edge

for.inc.i.i262.i.i.i.for.body.i.i259.i.i.i_crit_edge: ; preds = %for.inc.i.i262.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i259.i.i.i

for.inc.i.i262.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge: ; preds = %for.inc.i.i262.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i265.i.i.i

drm_fixp_msbset.exit.i265.i.i.i:                  ; preds = %for.inc.i.i262.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge, %for.body.i.i259.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge
  %shift.0.lcssa.i.i263.i.i.i = phi i32 [ 0, %for.inc.i.i262.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge ], [ %shift.014.i.i254.i.i.i, %for.body.i.i259.i.i.i.drm_fixp_msbset.exit.i265.i.i.i_crit_edge ]
  %shr12.i33.i264.i.i.i = lshr i64 %retval.0.i198.i.i.i, 63
  br label %for.body.i39.i271.i.i.i

for.body.i39.i271.i.i.i:                          ; preds = %for.inc.i42.i274.i.i.i.for.body.i39.i271.i.i.i_crit_edge, %drm_fixp_msbset.exit.i265.i.i.i
  %shift.014.i34.i266.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i265.i.i.i ], [ %dec.i40.i272.i.i.i, %for.inc.i42.i274.i.i.i.for.body.i39.i271.i.i.i_crit_edge ]
  %sh_prom.i35.i267.i.i.i = zext i32 %shift.014.i34.i266.i.i.i to i64
  %shr213.i36.i268.i.i.i = lshr i64 %retval.0.i198.i.i.i, %sh_prom.i35.i267.i.i.i
  %and3.i37.i269.i.i.i = and i64 %shr213.i36.i268.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i269.i.i.i, i64 %shr12.i33.i264.i.i.i)
  %cmp5.not.i38.i270.i.i.i = icmp eq i64 %and3.i37.i269.i.i.i, %shr12.i33.i264.i.i.i
  br i1 %cmp5.not.i38.i270.i.i.i, label %for.inc.i42.i274.i.i.i, label %for.body.i39.i271.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge

for.body.i39.i271.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge: ; preds = %for.body.i39.i271.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i278.i.i.i

for.inc.i42.i274.i.i.i:                           ; preds = %for.body.i39.i271.i.i.i
  %dec.i40.i272.i.i.i = add nsw i32 %shift.014.i34.i266.i.i.i, -1
  %cmp.not.i41.i273.i.i.i = icmp eq i32 %dec.i40.i272.i.i.i, 0
  br i1 %cmp.not.i41.i273.i.i.i, label %for.inc.i42.i274.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge, label %for.inc.i42.i274.i.i.i.for.body.i39.i271.i.i.i_crit_edge

for.inc.i42.i274.i.i.i.for.body.i39.i271.i.i.i_crit_edge: ; preds = %for.inc.i42.i274.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i271.i.i.i

for.inc.i42.i274.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge: ; preds = %for.inc.i42.i274.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i278.i.i.i

drm_fixp_msbset.exit44.i278.i.i.i:                ; preds = %for.inc.i42.i274.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge, %for.body.i39.i271.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge
  %shift.0.lcssa.i43.i275.i.i.i = phi i32 [ 0, %for.inc.i42.i274.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge ], [ %shift.014.i34.i266.i.i.i, %for.body.i39.i271.i.i.i.drm_fixp_msbset.exit44.i278.i.i.i_crit_edge ]
  %add.i276.i.i.i = add i32 %shift.0.lcssa.i43.i275.i.i.i, %shift.0.lcssa.i.i263.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i276.i.i.i)
  %cmp.i277.i.i.i = icmp ugt i32 %add.i276.i.i.i, 61
  br i1 %cmp.i277.i.i.i, label %if.end.i291.i.i.i, label %if.end11.thread.i280.i.i.i

if.end11.thread.i280.i.i.i:                       ; preds = %drm_fixp_msbset.exit44.i278.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i279.i.i.i = mul i64 %retval.0.i251.i.i.i, %retval.0.i198.i.i.i
  br label %if.then13.i303.i.i.i

if.end.i291.i.i.i:                                ; preds = %drm_fixp_msbset.exit44.i278.i.i.i
  %sub.i281.i.i.i = add i32 %add.i276.i.i.i, -61
  %shr.i282.i.i.i = lshr i32 %sub.i281.i.i.i, 1
  %and.i283.i.i.i = and i32 %sub.i281.i.i.i, 1
  %add2.i284.i.i.i = add nuw nsw i32 %shr.i282.i.i.i, %and.i283.i.i.i
  %sh_prom.i285.i.i.i = zext i32 %add2.i284.i.i.i to i64
  %shr3.i286.i.i.i = ashr i64 %retval.0.i251.i.i.i, %sh_prom.i285.i.i.i
  %sh_prom5.i287.i.i.i = zext i32 %shr.i282.i.i.i to i64
  %shr6.i288.i.i.i = ashr i64 %retval.0.i198.i.i.i, %sh_prom5.i287.i.i.i
  %mul.i289.i.i.i = mul i64 %shr3.i286.i.i.i, %shr6.i288.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i281.i.i.i)
  %cmp7.i290.i.i.i = icmp ugt i32 %sub.i281.i.i.i, 32
  br i1 %cmp7.i290.i.i.i, label %if.then8.i295.i.i.i, label %if.end11.i297.i.i.i

if.then8.i295.i.i.i:                              ; preds = %if.end.i291.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i292.i.i.i = add i32 %add.i276.i.i.i, -93
  %sh_prom10.i293.i.i.i = zext i32 %sub9.i292.i.i.i to i64
  %shl.i294.i.i.i = shl i64 %mul.i289.i.i.i, %sh_prom10.i293.i.i.i
  br label %drm_fixp_mul.exit305.i.i.i

if.end11.i297.i.i.i:                              ; preds = %if.end.i291.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i281.i.i.i)
  %cmp12.not.i296.i.i.i = icmp eq i32 %sub.i281.i.i.i, 32
  br i1 %cmp12.not.i296.i.i.i, label %if.end11.i297.i.i.i.drm_fixp_mul.exit305.i.i.i_crit_edge, label %if.end11.i297.i.i.i.if.then13.i303.i.i.i_crit_edge

if.end11.i297.i.i.i.if.then13.i303.i.i.i_crit_edge: ; preds = %if.end11.i297.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i303.i.i.i

if.end11.i297.i.i.i.drm_fixp_mul.exit305.i.i.i_crit_edge: ; preds = %if.end11.i297.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit305.i.i.i

if.then13.i303.i.i.i:                             ; preds = %if.end11.i297.i.i.i.if.then13.i303.i.i.i_crit_edge, %if.end11.thread.i280.i.i.i
  %shift.05056.i298.i.i.i = phi i32 [ 0, %if.end11.thread.i280.i.i.i ], [ %sub.i281.i.i.i, %if.end11.i297.i.i.i.if.then13.i303.i.i.i_crit_edge ]
  %mul5155.i299.i.i.i = phi i64 [ %mul48.i279.i.i.i, %if.end11.thread.i280.i.i.i ], [ %mul.i289.i.i.i, %if.end11.i297.i.i.i.if.then13.i303.i.i.i_crit_edge ]
  %sub14.i300.i.i.i = sub nuw nsw i32 32, %shift.05056.i298.i.i.i
  %sh_prom15.i301.i.i.i = zext i32 %sub14.i300.i.i.i to i64
  %shr16.i302.i.i.i = ashr i64 %mul5155.i299.i.i.i, %sh_prom15.i301.i.i.i
  br label %drm_fixp_mul.exit305.i.i.i

drm_fixp_mul.exit305.i.i.i:                       ; preds = %if.then13.i303.i.i.i, %if.end11.i297.i.i.i.drm_fixp_mul.exit305.i.i.i_crit_edge, %if.then8.i295.i.i.i
  %retval.0.i304.i.i.i = phi i64 [ %shl.i294.i.i.i, %if.then8.i295.i.i.i ], [ %shr16.i302.i.i.i, %if.then13.i303.i.i.i ], [ %mul.i289.i.i.i, %if.end11.i297.i.i.i.drm_fixp_mul.exit305.i.i.i_crit_edge ]
  %shr12.i.i306.i.i.i = lshr i64 %retval.0.i304.i.i.i, 63
  br label %for.body.i.i312.i.i.i

for.body.i.i312.i.i.i:                            ; preds = %for.inc.i.i315.i.i.i.for.body.i.i312.i.i.i_crit_edge, %drm_fixp_mul.exit305.i.i.i
  %shift.014.i.i307.i.i.i = phi i32 [ 62, %drm_fixp_mul.exit305.i.i.i ], [ %dec.i.i313.i.i.i, %for.inc.i.i315.i.i.i.for.body.i.i312.i.i.i_crit_edge ]
  %sh_prom.i.i308.i.i.i = zext i32 %shift.014.i.i307.i.i.i to i64
  %shr213.i.i309.i.i.i = lshr i64 %retval.0.i304.i.i.i, %sh_prom.i.i308.i.i.i
  %and3.i.i310.i.i.i = and i64 %shr213.i.i309.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i310.i.i.i, i64 %shr12.i.i306.i.i.i)
  %cmp5.not.i.i311.i.i.i = icmp eq i64 %and3.i.i310.i.i.i, %shr12.i.i306.i.i.i
  br i1 %cmp5.not.i.i311.i.i.i, label %for.inc.i.i315.i.i.i, label %for.body.i.i312.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge

for.body.i.i312.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge: ; preds = %for.body.i.i312.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i318.i.i.i

for.inc.i.i315.i.i.i:                             ; preds = %for.body.i.i312.i.i.i
  %dec.i.i313.i.i.i = add nsw i32 %shift.014.i.i307.i.i.i, -1
  %cmp.not.i.i314.i.i.i = icmp eq i32 %dec.i.i313.i.i.i, 0
  br i1 %cmp.not.i.i314.i.i.i, label %for.inc.i.i315.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge, label %for.inc.i.i315.i.i.i.for.body.i.i312.i.i.i_crit_edge

for.inc.i.i315.i.i.i.for.body.i.i312.i.i.i_crit_edge: ; preds = %for.inc.i.i315.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i312.i.i.i

for.inc.i.i315.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge: ; preds = %for.inc.i.i315.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i318.i.i.i

drm_fixp_msbset.exit.i318.i.i.i:                  ; preds = %for.inc.i.i315.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge, %for.body.i.i312.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge
  %shift.0.lcssa.i.i316.i.i.i = phi i32 [ 0, %for.inc.i.i315.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge ], [ %shift.014.i.i307.i.i.i, %for.body.i.i312.i.i.i.drm_fixp_msbset.exit.i318.i.i.i_crit_edge ]
  br label %for.body.i39.i324.i.i.i

for.body.i39.i324.i.i.i:                          ; preds = %for.inc.i42.i327.i.i.i.for.body.i39.i324.i.i.i_crit_edge, %drm_fixp_msbset.exit.i318.i.i.i
  %shift.014.i34.i319.i.i.i = phi i32 [ 62, %drm_fixp_msbset.exit.i318.i.i.i ], [ %dec.i40.i325.i.i.i, %for.inc.i42.i327.i.i.i.for.body.i39.i324.i.i.i_crit_edge ]
  %sh_prom.i35.i320.i.i.i = zext i32 %shift.014.i34.i319.i.i.i to i64
  %shr213.i36.i321.i.i.i = lshr i64 %call3.i.i.i, %sh_prom.i35.i320.i.i.i
  %and3.i37.i322.i.i.i = and i64 %shr213.i36.i321.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i322.i.i.i, i64 %shr12.i33.i105.i.i.i)
  %cmp5.not.i38.i323.i.i.i = icmp eq i64 %and3.i37.i322.i.i.i, %shr12.i33.i105.i.i.i
  br i1 %cmp5.not.i38.i323.i.i.i, label %for.inc.i42.i327.i.i.i, label %for.body.i39.i324.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge

for.body.i39.i324.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge: ; preds = %for.body.i39.i324.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i331.i.i.i

for.inc.i42.i327.i.i.i:                           ; preds = %for.body.i39.i324.i.i.i
  %dec.i40.i325.i.i.i = add nsw i32 %shift.014.i34.i319.i.i.i, -1
  %cmp.not.i41.i326.i.i.i = icmp eq i32 %dec.i40.i325.i.i.i, 0
  br i1 %cmp.not.i41.i326.i.i.i, label %for.inc.i42.i327.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge, label %for.inc.i42.i327.i.i.i.for.body.i39.i324.i.i.i_crit_edge

for.inc.i42.i327.i.i.i.for.body.i39.i324.i.i.i_crit_edge: ; preds = %for.inc.i42.i327.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i324.i.i.i

for.inc.i42.i327.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge: ; preds = %for.inc.i42.i327.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i331.i.i.i

drm_fixp_msbset.exit44.i331.i.i.i:                ; preds = %for.inc.i42.i327.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge, %for.body.i39.i324.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge
  %shift.0.lcssa.i43.i328.i.i.i = phi i32 [ 0, %for.inc.i42.i327.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge ], [ %shift.014.i34.i319.i.i.i, %for.body.i39.i324.i.i.i.drm_fixp_msbset.exit44.i331.i.i.i_crit_edge ]
  %add.i329.i.i.i = add i32 %shift.0.lcssa.i43.i328.i.i.i, %shift.0.lcssa.i.i316.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i329.i.i.i)
  %cmp.i330.i.i.i = icmp ugt i32 %add.i329.i.i.i, 61
  br i1 %cmp.i330.i.i.i, label %if.end.i344.i.i.i, label %if.end11.thread.i333.i.i.i

if.end11.thread.i333.i.i.i:                       ; preds = %drm_fixp_msbset.exit44.i331.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i332.i.i.i = mul i64 %retval.0.i304.i.i.i, %call3.i.i.i
  br label %if.then13.i356.i.i.i

if.end.i344.i.i.i:                                ; preds = %drm_fixp_msbset.exit44.i331.i.i.i
  %sub.i334.i.i.i = add i32 %add.i329.i.i.i, -61
  %shr.i335.i.i.i = lshr i32 %sub.i334.i.i.i, 1
  %and.i336.i.i.i = and i32 %sub.i334.i.i.i, 1
  %add2.i337.i.i.i = add nuw nsw i32 %shr.i335.i.i.i, %and.i336.i.i.i
  %sh_prom.i338.i.i.i = zext i32 %add2.i337.i.i.i to i64
  %shr3.i339.i.i.i = ashr i64 %retval.0.i304.i.i.i, %sh_prom.i338.i.i.i
  %sh_prom5.i340.i.i.i = zext i32 %shr.i335.i.i.i to i64
  %shr6.i341.i.i.i = ashr i64 %call3.i.i.i, %sh_prom5.i340.i.i.i
  %mul.i342.i.i.i = mul i64 %shr3.i339.i.i.i, %shr6.i341.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i334.i.i.i)
  %cmp7.i343.i.i.i = icmp ugt i32 %sub.i334.i.i.i, 32
  br i1 %cmp7.i343.i.i.i, label %if.then8.i348.i.i.i, label %if.end11.i350.i.i.i

if.then8.i348.i.i.i:                              ; preds = %if.end.i344.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i345.i.i.i = add i32 %add.i329.i.i.i, -93
  %sh_prom10.i346.i.i.i = zext i32 %sub9.i345.i.i.i to i64
  %shl.i347.i.i.i = shl i64 %mul.i342.i.i.i, %sh_prom10.i346.i.i.i
  br label %ni_calculate_leakage_for_v_and_t.exit.i

if.end11.i350.i.i.i:                              ; preds = %if.end.i344.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i334.i.i.i)
  %cmp12.not.i349.i.i.i = icmp eq i32 %sub.i334.i.i.i, 32
  br i1 %cmp12.not.i349.i.i.i, label %if.end11.i350.i.i.i.ni_calculate_leakage_for_v_and_t.exit.i_crit_edge, label %if.end11.i350.i.i.i.if.then13.i356.i.i.i_crit_edge

if.end11.i350.i.i.i.if.then13.i356.i.i.i_crit_edge: ; preds = %if.end11.i350.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i356.i.i.i

if.end11.i350.i.i.i.ni_calculate_leakage_for_v_and_t.exit.i_crit_edge: ; preds = %if.end11.i350.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_calculate_leakage_for_v_and_t.exit.i

if.then13.i356.i.i.i:                             ; preds = %if.end11.i350.i.i.i.if.then13.i356.i.i.i_crit_edge, %if.end11.thread.i333.i.i.i
  %shift.05056.i351.i.i.i = phi i32 [ 0, %if.end11.thread.i333.i.i.i ], [ %sub.i334.i.i.i, %if.end11.i350.i.i.i.if.then13.i356.i.i.i_crit_edge ]
  %mul5155.i352.i.i.i = phi i64 [ %mul48.i332.i.i.i, %if.end11.thread.i333.i.i.i ], [ %mul.i342.i.i.i, %if.end11.i350.i.i.i.if.then13.i356.i.i.i_crit_edge ]
  %sub14.i353.i.i.i = sub nuw nsw i32 32, %shift.05056.i351.i.i.i
  %sh_prom15.i354.i.i.i = zext i32 %sub14.i353.i.i.i to i64
  %shr16.i355.i.i.i = ashr i64 %mul5155.i352.i.i.i, %sh_prom15.i354.i.i.i
  br label %ni_calculate_leakage_for_v_and_t.exit.i

ni_calculate_leakage_for_v_and_t.exit.i:          ; preds = %if.then13.i356.i.i.i, %if.end11.i350.i.i.i.ni_calculate_leakage_for_v_and_t.exit.i_crit_edge, %if.then8.i348.i.i.i
  %retval.0.i357.i.i.i = phi i64 [ %shl.i347.i.i.i, %if.then8.i348.i.i.i ], [ %shr16.i355.i.i.i, %if.then13.i356.i.i.i ], [ %mul.i342.i.i.i, %if.end11.i350.i.i.i.ni_calculate_leakage_for_v_and_t.exit.i_crit_edge ]
  %mul.i.i.i = mul i64 %retval.0.i357.i.i.i, 1000
  %sh.diff.i = lshr i64 %mul.i.i.i, 30
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %mul.i1.i = and i32 %tr.sh.diff.i, -4
  %shl.i.i = mul i32 %mul.i.i, %mul.i1.i
  %div.i = udiv i32 %shl.i.i, 1000
  %114 = tail call i32 @llvm.umax.i32(i32 %div.i, i32 %max_leakage.14.i) #9
  %arrayidx21.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 %i.05.i, i32 %j.03.i
  %115 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div.i, ptr %arrayidx21.i, align 4
  %inc.i = add nuw nsw i32 %j.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %88
  br i1 %exitcond.not.i, label %ni_calculate_leakage_for_v_and_t.exit.i.for.inc22.i_crit_edge, label %ni_calculate_leakage_for_v_and_t.exit.i.for.body6.i_crit_edge

ni_calculate_leakage_for_v_and_t.exit.i.for.body6.i_crit_edge: ; preds = %ni_calculate_leakage_for_v_and_t.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i

ni_calculate_leakage_for_v_and_t.exit.i.for.inc22.i_crit_edge: ; preds = %ni_calculate_leakage_for_v_and_t.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %ni_calculate_leakage_for_v_and_t.exit.i.for.inc22.i_crit_edge, %for.cond4.preheader.i.for.inc22.i_crit_edge
  %max_leakage.1.lcssa.i = phi i32 [ %max_leakage.07.i, %for.cond4.preheader.i.for.inc22.i_crit_edge ], [ %114, %ni_calculate_leakage_for_v_and_t.exit.i.for.inc22.i_crit_edge ]
  %inc23.i = add nuw nsw i32 %i.05.i, 1
  %exitcond11.not.i = icmp eq i32 %inc23.i, 16
  br i1 %exitcond11.not.i, label %for.cond25.preheader.i, label %for.inc22.i.for.cond4.preheader.i_crit_edge

for.inc22.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader.i

for.cond28.preheader.i:                           ; preds = %for.cond28.preheader.i.for.cond28.preheader.i_crit_edge, %for.cond25.preheader.i.for.cond28.preheader.i_crit_edge
  %j.110.i = phi i32 [ %inc38.i, %for.cond28.preheader.i.for.cond28.preheader.i_crit_edge ], [ %88, %for.cond25.preheader.i.for.cond28.preheader.i_crit_edge ]
  %arrayidx33.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 %j.110.i
  %116 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.i, align 4
  %arrayidx33.1.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %j.110.i
  %117 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.1.i, align 4
  %arrayidx33.2.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 %j.110.i
  %118 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.2.i, align 4
  %arrayidx33.3.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 %j.110.i
  %119 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.3.i, align 4
  %arrayidx33.4.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 %j.110.i
  %120 = ptrtoint ptr %arrayidx33.4.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.4.i, align 4
  %arrayidx33.5.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 %j.110.i
  %121 = ptrtoint ptr %arrayidx33.5.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.5.i, align 4
  %arrayidx33.6.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 %j.110.i
  %122 = ptrtoint ptr %arrayidx33.6.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.6.i, align 4
  %arrayidx33.7.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 %j.110.i
  %123 = ptrtoint ptr %arrayidx33.7.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.7.i, align 4
  %arrayidx33.8.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 %j.110.i
  %124 = ptrtoint ptr %arrayidx33.8.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.8.i, align 4
  %arrayidx33.9.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 %j.110.i
  %125 = ptrtoint ptr %arrayidx33.9.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.9.i, align 4
  %arrayidx33.10.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 %j.110.i
  %126 = ptrtoint ptr %arrayidx33.10.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.10.i, align 4
  %arrayidx33.11.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 %j.110.i
  %127 = ptrtoint ptr %arrayidx33.11.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.11.i, align 4
  %arrayidx33.12.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 %j.110.i
  %128 = ptrtoint ptr %arrayidx33.12.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.12.i, align 4
  %arrayidx33.13.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 %j.110.i
  %129 = ptrtoint ptr %arrayidx33.13.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.13.i, align 4
  %arrayidx33.14.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 %j.110.i
  %130 = ptrtoint ptr %arrayidx33.14.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.14.i, align 4
  %arrayidx33.15.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 %j.110.i
  %131 = ptrtoint ptr %arrayidx33.15.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %max_leakage.1.lcssa.i, ptr %arrayidx33.15.i, align 4
  %inc38.i = add nuw nsw i32 %j.110.i, 1
  %exitcond13.not.i = icmp eq i32 %inc38.i, 16
  br i1 %exitcond13.not.i, label %for.cond28.preheader.i.done_free_crit_edge, label %for.cond28.preheader.i.for.cond28.preheader.i_crit_edge

for.cond28.preheader.i.for.cond28.preheader.i_crit_edge: ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28.preheader.i

for.cond28.preheader.i.done_free_crit_edge:       ; preds = %for.cond28.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free

if.else:                                          ; preds = %if.end6
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %cac_leakage_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %132 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cac_leakage_table.i, align 4
  %vddc_voltage_table.i141 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 19
  %134 = ptrtoint ptr %vddc_voltage_table.i141 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %vddc_voltage_table.i141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %133)
  %cmp.not.i = icmp eq i32 %135, %133
  %136 = tail call i32 @llvm.umin.i32(i32 %135, i32 %133) #9
  %table_size.0.i = select i1 %cmp.not.i, i32 %133, i32 %136
  %137 = tail call i32 @llvm.umin.i32(i32 %table_size.0.i, i32 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp14.i = icmp eq i32 %137, 0
  br i1 %cmp14.i, label %if.else.if.then68_crit_edge, label %for.body.preheader.i

if.else.if.then68_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

for.body.preheader.i:                             ; preds = %if.else
  %asic.i.i142 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %138 = ptrtoint ptr %asic.i.i142 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %asic.i.i142, align 8
  %get_xclk.i.i143 = getelementptr inbounds %struct.radeon_asic, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %get_xclk.i.i143 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %get_xclk.i.i143, align 4
  %call.i.i144 = tail call i32 %141(ptr noundef %rdev) #9
  %142 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i.i146 = getelementptr i8, ptr %143, i32 2188
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i146) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %145 = and i32 %144, -12648448
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #9
  %div.i.i147 = udiv i32 1000000000, %call.i.i144
  %div2.i.i148 = udiv i32 %div.i.i147, 10000
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %mul.i.i149 = shl nuw nsw i32 %146, 2
  %mul.i84.i = mul i32 %mul.i.i149, %div2.i.i148
  %147 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %entries.i, align 4
  br label %for.body.i

for.cond31.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %table_size.0.i)
  %cmp3292.i = icmp ult i32 %table_size.0.i, 16
  br i1 %cmp3292.i, label %for.cond34.preheader.lr.ph.i, label %for.cond31.preheader.i.done_free_crit_edge

for.cond31.preheader.i.done_free_crit_edge:       ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free

for.cond34.preheader.lr.ph.i:                     ; preds = %for.cond31.preheader.i
  %shl.i86.i = mul i32 %167, %mul.i84.i
  br label %for.cond34.preheader.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %max_leakage.090.i = phi i32 [ %167, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %j.089.i = phi i32 [ %inc29.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %leakage.i = getelementptr %union.radeon_cac_leakage_entry, ptr %148, i32 %j.089.i, i32 0, i32 1
  %149 = ptrtoint ptr %leakage.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %leakage.i, align 4
  %shl.i.i150 = mul i32 %150, %mul.i84.i
  %arrayidx27.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 %j.089.i
  %151 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %shl.i.i150, ptr %arrayidx27.i, align 4
  %arrayidx27.1.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %j.089.i
  %152 = ptrtoint ptr %arrayidx27.1.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %shl.i.i150, ptr %arrayidx27.1.i, align 4
  %arrayidx27.2.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 %j.089.i
  %153 = ptrtoint ptr %arrayidx27.2.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %shl.i.i150, ptr %arrayidx27.2.i, align 4
  %arrayidx27.3.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 %j.089.i
  %154 = ptrtoint ptr %arrayidx27.3.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %shl.i.i150, ptr %arrayidx27.3.i, align 4
  %arrayidx27.4.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 %j.089.i
  %155 = ptrtoint ptr %arrayidx27.4.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %shl.i.i150, ptr %arrayidx27.4.i, align 4
  %arrayidx27.5.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 %j.089.i
  %156 = ptrtoint ptr %arrayidx27.5.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %shl.i.i150, ptr %arrayidx27.5.i, align 4
  %arrayidx27.6.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 %j.089.i
  %157 = ptrtoint ptr %arrayidx27.6.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %shl.i.i150, ptr %arrayidx27.6.i, align 4
  %arrayidx27.7.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 %j.089.i
  %158 = ptrtoint ptr %arrayidx27.7.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %shl.i.i150, ptr %arrayidx27.7.i, align 4
  %arrayidx27.8.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 %j.089.i
  %159 = ptrtoint ptr %arrayidx27.8.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %shl.i.i150, ptr %arrayidx27.8.i, align 4
  %arrayidx27.9.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 %j.089.i
  %160 = ptrtoint ptr %arrayidx27.9.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %shl.i.i150, ptr %arrayidx27.9.i, align 4
  %arrayidx27.10.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 %j.089.i
  %161 = ptrtoint ptr %arrayidx27.10.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %shl.i.i150, ptr %arrayidx27.10.i, align 4
  %arrayidx27.11.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 %j.089.i
  %162 = ptrtoint ptr %arrayidx27.11.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %shl.i.i150, ptr %arrayidx27.11.i, align 4
  %arrayidx27.12.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 %j.089.i
  %163 = ptrtoint ptr %arrayidx27.12.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %shl.i.i150, ptr %arrayidx27.12.i, align 4
  %arrayidx27.13.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 %j.089.i
  %164 = ptrtoint ptr %arrayidx27.13.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %shl.i.i150, ptr %arrayidx27.13.i, align 4
  %arrayidx27.14.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 %j.089.i
  %165 = ptrtoint ptr %arrayidx27.14.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %shl.i.i150, ptr %arrayidx27.14.i, align 4
  %arrayidx27.15.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 %j.089.i
  %166 = ptrtoint ptr %arrayidx27.15.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %shl.i.i150, ptr %arrayidx27.15.i, align 4
  %167 = tail call i32 @llvm.umax.i32(i32 %150, i32 %max_leakage.090.i) #9
  %inc29.i = add nuw nsw i32 %j.089.i, 1
  %exitcond.not.i151 = icmp eq i32 %inc29.i, %137
  br i1 %exitcond.not.i151, label %for.cond31.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond34.preheader.i:                           ; preds = %for.cond34.preheader.i.for.cond34.preheader.i_crit_edge, %for.cond34.preheader.lr.ph.i
  %j.193.i = phi i32 [ %137, %for.cond34.preheader.lr.ph.i ], [ %inc45.i, %for.cond34.preheader.i.for.cond34.preheader.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 %j.193.i
  %168 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %shl.i86.i, ptr %arrayidx40.i, align 4
  %arrayidx40.1.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 %j.193.i
  %169 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %shl.i86.i, ptr %arrayidx40.1.i, align 4
  %arrayidx40.2.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 %j.193.i
  %170 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %shl.i86.i, ptr %arrayidx40.2.i, align 4
  %arrayidx40.3.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 %j.193.i
  %171 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %shl.i86.i, ptr %arrayidx40.3.i, align 4
  %arrayidx40.4.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 %j.193.i
  %172 = ptrtoint ptr %arrayidx40.4.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %shl.i86.i, ptr %arrayidx40.4.i, align 4
  %arrayidx40.5.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 %j.193.i
  %173 = ptrtoint ptr %arrayidx40.5.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %shl.i86.i, ptr %arrayidx40.5.i, align 4
  %arrayidx40.6.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 %j.193.i
  %174 = ptrtoint ptr %arrayidx40.6.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %shl.i86.i, ptr %arrayidx40.6.i, align 4
  %arrayidx40.7.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 7, i32 %j.193.i
  %175 = ptrtoint ptr %arrayidx40.7.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %shl.i86.i, ptr %arrayidx40.7.i, align 4
  %arrayidx40.8.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 %j.193.i
  %176 = ptrtoint ptr %arrayidx40.8.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %shl.i86.i, ptr %arrayidx40.8.i, align 4
  %arrayidx40.9.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 %j.193.i
  %177 = ptrtoint ptr %arrayidx40.9.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %shl.i86.i, ptr %arrayidx40.9.i, align 4
  %arrayidx40.10.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 10, i32 %j.193.i
  %178 = ptrtoint ptr %arrayidx40.10.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %shl.i86.i, ptr %arrayidx40.10.i, align 4
  %arrayidx40.11.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 11, i32 %j.193.i
  %179 = ptrtoint ptr %arrayidx40.11.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %shl.i86.i, ptr %arrayidx40.11.i, align 4
  %arrayidx40.12.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 12, i32 %j.193.i
  %180 = ptrtoint ptr %arrayidx40.12.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %shl.i86.i, ptr %arrayidx40.12.i, align 4
  %arrayidx40.13.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 13, i32 %j.193.i
  %181 = ptrtoint ptr %arrayidx40.13.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %shl.i86.i, ptr %arrayidx40.13.i, align 4
  %arrayidx40.14.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 14, i32 %j.193.i
  %182 = ptrtoint ptr %arrayidx40.14.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %shl.i86.i, ptr %arrayidx40.14.i, align 4
  %arrayidx40.15.i = getelementptr %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 1, i32 15, i32 %j.193.i
  %183 = ptrtoint ptr %arrayidx40.15.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %shl.i86.i, ptr %arrayidx40.15.i, align 4
  %inc45.i = add nuw nsw i32 %j.193.i, 1
  %exitcond95.not.i = icmp eq i32 %inc45.i, 16
  br i1 %exitcond95.not.i, label %for.cond34.preheader.i.done_free_crit_edge, label %for.cond34.preheader.i.for.cond34.preheader.i_crit_edge

for.cond34.preheader.i.for.cond34.preheader.i_crit_edge: ; preds = %for.cond34.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.preheader.i

for.cond34.preheader.i.done_free_crit_edge:       ; preds = %for.cond34.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_free

done_free:                                        ; preds = %for.cond34.preheader.i.done_free_crit_edge, %for.cond31.preheader.i.done_free_crit_edge, %for.cond28.preheader.i.done_free_crit_edge, %for.cond25.preheader.i.done_free_crit_edge
  %184 = ptrtoint ptr %pwr_const to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %pwr_const, align 4
  %pwr_const48 = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 2
  %186 = ptrtoint ptr %pwr_const48 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %pwr_const48, align 8
  %187 = ptrtoint ptr %dc_cac_value to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %dc_cac_value, align 4
  %dc_cacValue = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 3
  %189 = ptrtoint ptr %dc_cacValue to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %dc_cacValue, align 4
  %190 = ptrtoint ptr %bif_cac_value to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bif_cac_value, align 4
  %bif_cacValue = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 4
  %192 = ptrtoint ptr %bif_cacValue to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %bif_cacValue, align 8
  %193 = ptrtoint ptr %allow_ovrflw to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %allow_ovrflw, align 2
  %AllowOvrflw = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 11
  %195 = ptrtoint ptr %AllowOvrflw to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %194, ptr %AllowOvrflw, align 8
  %196 = ptrtoint ptr %mc_wr_weight to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %mc_wr_weight, align 4
  %MCWrWeight = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 12
  %198 = ptrtoint ptr %MCWrWeight to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %197, ptr %MCWrWeight, align 1
  %199 = ptrtoint ptr %mc_rd_weight to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %mc_rd_weight, align 1
  %MCRdWeight = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 13
  %201 = ptrtoint ptr %MCRdWeight to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %MCRdWeight, align 2
  %202 = ptrtoint ptr %num_win_tdp to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %num_win_tdp, align 1
  %numWin_TDP = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 16
  %204 = ptrtoint ptr %numWin_TDP to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %numWin_TDP, align 1
  %205 = ptrtoint ptr %l2num_win_tdp to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %l2num_win_tdp, align 4
  %l2numWin_TDP = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 17
  %207 = ptrtoint ptr %l2numWin_TDP to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %l2numWin_TDP, align 2
  %208 = ptrtoint ptr %lts_truncate_n to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %lts_truncate_n, align 1
  %lts_truncate_n65 = getelementptr inbounds %struct.PP_NIslands_CACTABLES, ptr %call7.i.i, i32 0, i32 26
  %210 = ptrtoint ptr %lts_truncate_n65 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %lts_truncate_n65, align 8
  %cac_table_start = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 15
  %211 = ptrtoint ptr %cac_table_start to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %cac_table_start, align 2
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %213 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %sram_end, align 4
  %call66 = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %212, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1152, i16 noundef zeroext %214) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %done_free.if.end70_crit_edge, label %done_free.if.then68_crit_edge

done_free.if.then68_crit_edge:                    ; preds = %done_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

done_free.if.end70_crit_edge:                     ; preds = %done_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then68:                                        ; preds = %done_free.if.then68_crit_edge, %if.else.if.then68_crit_edge
  %215 = ptrtoint ptr %enable_cac to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %enable_cac, align 1
  %enable_power_containment = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 10
  %216 = ptrtoint ptr %enable_power_containment to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %enable_power_containment, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %done_free.if.end70_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end70 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_initialize_hardware_cac_manager(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_cac = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enable_cac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_cac, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cac_configuration_required = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %cac_configuration_required to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cac_configuration_required, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %cac_weights = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cac_weights, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 131) #9
  %and = and i32 %call4, -262144
  %8 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cac_weights, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %weight_tcp_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %weight_tcp_sig1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %weight_tcp_sig1, align 4
  %shl7 = shl i32 %13, 6
  %weight_ta_sig = getelementptr inbounds %struct.ni_cac_weights, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %weight_ta_sig to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %weight_ta_sig, align 4
  %shl9 = shl i32 %15, 12
  %or = or i32 %11, %and
  %or10 = or i32 %or, %shl7
  %or11 = or i32 %or10, %shl9
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 131, i32 noundef %or11) #9
  %call12 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 132) #9
  %and13 = and i32 %call12, -262144
  %16 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cac_weights, align 4
  %weight_tcc_en0 = getelementptr inbounds %struct.ni_cac_weights, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %weight_tcc_en0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %weight_tcc_en0, align 4
  %weight_tcc_en1 = getelementptr inbounds %struct.ni_cac_weights, ptr %17, i32 0, i32 4
  %20 = ptrtoint ptr %weight_tcc_en1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %weight_tcc_en1, align 4
  %shl17 = shl i32 %21, 6
  %weight_tcc_en2 = getelementptr inbounds %struct.ni_cac_weights, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %weight_tcc_en2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %weight_tcc_en2, align 4
  %shl20 = shl i32 %23, 12
  %or18 = or i32 %19, %and13
  %or21 = or i32 %or18, %shl17
  %or22 = or i32 %or21, %shl20
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 132, i32 noundef %or22) #9
  %call23 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 133) #9
  %and24 = and i32 %call23, -16777216
  %24 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cac_weights, align 4
  %weight_cb_en0 = getelementptr inbounds %struct.ni_cac_weights, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %weight_cb_en0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %weight_cb_en0, align 4
  %weight_cb_en1 = getelementptr inbounds %struct.ni_cac_weights, ptr %25, i32 0, i32 7
  %28 = ptrtoint ptr %weight_cb_en1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %weight_cb_en1, align 4
  %shl28 = shl i32 %29, 6
  %weight_cb_en2 = getelementptr inbounds %struct.ni_cac_weights, ptr %25, i32 0, i32 8
  %30 = ptrtoint ptr %weight_cb_en2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %weight_cb_en2, align 4
  %shl31 = shl i32 %31, 12
  %weight_cb_en3 = getelementptr inbounds %struct.ni_cac_weights, ptr %25, i32 0, i32 9
  %32 = ptrtoint ptr %weight_cb_en3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %weight_cb_en3, align 4
  %shl34 = shl i32 %33, 18
  %or29 = or i32 %27, %and24
  %or32 = or i32 %or29, %shl28
  %or35 = or i32 %or32, %shl31
  %or36 = or i32 %or35, %shl34
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 133, i32 noundef %or36) #9
  %call37 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 134) #9
  %and38 = and i32 %call37, -16777216
  %34 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cac_weights, align 4
  %weight_db_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %weight_db_sig0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %weight_db_sig0, align 4
  %weight_db_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %35, i32 0, i32 11
  %38 = ptrtoint ptr %weight_db_sig1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %weight_db_sig1, align 4
  %shl42 = shl i32 %39, 6
  %weight_db_sig2 = getelementptr inbounds %struct.ni_cac_weights, ptr %35, i32 0, i32 12
  %40 = ptrtoint ptr %weight_db_sig2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %weight_db_sig2, align 4
  %shl45 = shl i32 %41, 12
  %weight_db_sig3 = getelementptr inbounds %struct.ni_cac_weights, ptr %35, i32 0, i32 13
  %42 = ptrtoint ptr %weight_db_sig3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %weight_db_sig3, align 4
  %shl48 = shl i32 %43, 18
  %or43 = or i32 %37, %and38
  %or46 = or i32 %or43, %shl42
  %or49 = or i32 %or46, %shl45
  %or50 = or i32 %or49, %shl48
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 134, i32 noundef %or50) #9
  %call51 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 135) #9
  %and52 = and i32 %call51, -1073741824
  %44 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cac_weights, align 4
  %weight_sxm_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %45, i32 0, i32 14
  %46 = ptrtoint ptr %weight_sxm_sig0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %weight_sxm_sig0, align 4
  %weight_sxm_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %45, i32 0, i32 15
  %48 = ptrtoint ptr %weight_sxm_sig1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %weight_sxm_sig1, align 4
  %shl56 = shl i32 %49, 6
  %weight_sxm_sig2 = getelementptr inbounds %struct.ni_cac_weights, ptr %45, i32 0, i32 16
  %50 = ptrtoint ptr %weight_sxm_sig2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %weight_sxm_sig2, align 4
  %shl59 = shl i32 %51, 12
  %weight_sxs_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %45, i32 0, i32 17
  %52 = ptrtoint ptr %weight_sxs_sig0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %weight_sxs_sig0, align 4
  %shl62 = shl i32 %53, 18
  %weight_sxs_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %45, i32 0, i32 18
  %54 = ptrtoint ptr %weight_sxs_sig1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %weight_sxs_sig1, align 4
  %shl65 = shl i32 %55, 24
  %or57 = or i32 %47, %and52
  %or60 = or i32 %or57, %shl56
  %or63 = or i32 %or60, %shl59
  %or66 = or i32 %or63, %shl62
  %or67 = or i32 %or66, %shl65
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 135, i32 noundef %or67) #9
  %call68 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 136) #9
  %and69 = and i32 %call68, -16777216
  %56 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cac_weights, align 4
  %weight_xbr_0 = getelementptr inbounds %struct.ni_cac_weights, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %weight_xbr_0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %weight_xbr_0, align 4
  %weight_xbr_1 = getelementptr inbounds %struct.ni_cac_weights, ptr %57, i32 0, i32 20
  %60 = ptrtoint ptr %weight_xbr_1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %weight_xbr_1, align 4
  %shl73 = shl i32 %61, 6
  %weight_xbr_2 = getelementptr inbounds %struct.ni_cac_weights, ptr %57, i32 0, i32 21
  %62 = ptrtoint ptr %weight_xbr_2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %weight_xbr_2, align 4
  %shl76 = shl i32 %63, 12
  %weight_spi_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %57, i32 0, i32 22
  %64 = ptrtoint ptr %weight_spi_sig0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %weight_spi_sig0, align 4
  %shl79 = shl i32 %65, 18
  %or74 = or i32 %59, %and69
  %or77 = or i32 %or74, %shl73
  %or80 = or i32 %or77, %shl76
  %or81 = or i32 %or80, %shl79
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 136, i32 noundef %or81) #9
  %call82 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 137) #9
  %and83 = and i32 %call82, -1073741824
  %66 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cac_weights, align 4
  %weight_spi_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 23
  %68 = ptrtoint ptr %weight_spi_sig1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %weight_spi_sig1, align 4
  %weight_spi_sig2 = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 24
  %70 = ptrtoint ptr %weight_spi_sig2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %weight_spi_sig2, align 4
  %shl87 = shl i32 %71, 6
  %weight_spi_sig3 = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 25
  %72 = ptrtoint ptr %weight_spi_sig3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %weight_spi_sig3, align 4
  %shl90 = shl i32 %73, 12
  %weight_spi_sig4 = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 26
  %74 = ptrtoint ptr %weight_spi_sig4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %weight_spi_sig4, align 4
  %shl93 = shl i32 %75, 18
  %weight_spi_sig5 = getelementptr inbounds %struct.ni_cac_weights, ptr %67, i32 0, i32 27
  %76 = ptrtoint ptr %weight_spi_sig5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %weight_spi_sig5, align 4
  %shl96 = shl i32 %77, 24
  %or88 = or i32 %69, %and83
  %or91 = or i32 %or88, %shl87
  %or94 = or i32 %or91, %shl90
  %or97 = or i32 %or94, %shl93
  %or98 = or i32 %or97, %shl96
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 137, i32 noundef %or98) #9
  %call99 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 138) #9
  %and100 = and i32 %call99, -1056968704
  %78 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cac_weights, align 4
  %weight_lds_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %79, i32 0, i32 28
  %80 = ptrtoint ptr %weight_lds_sig0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %weight_lds_sig0, align 4
  %weight_lds_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %79, i32 0, i32 29
  %82 = ptrtoint ptr %weight_lds_sig1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %weight_lds_sig1, align 4
  %shl104 = shl i32 %83, 6
  %weight_sc = getelementptr inbounds %struct.ni_cac_weights, ptr %79, i32 0, i32 30
  %84 = ptrtoint ptr %weight_sc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %weight_sc, align 4
  %shl107 = shl i32 %85, 24
  %or105 = or i32 %81, %and100
  %or108 = or i32 %or105, %shl104
  %or109 = or i32 %or108, %shl107
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 138, i32 noundef %or109) #9
  %call110 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 139) #9
  %and111 = and i32 %call110, -1073741824
  %86 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cac_weights, align 4
  %weight_bif = getelementptr inbounds %struct.ni_cac_weights, ptr %87, i32 0, i32 31
  %88 = ptrtoint ptr %weight_bif to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %weight_bif, align 4
  %weight_cp = getelementptr inbounds %struct.ni_cac_weights, ptr %87, i32 0, i32 32
  %90 = ptrtoint ptr %weight_cp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %weight_cp, align 4
  %shl115 = shl i32 %91, 6
  %weight_pa_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %87, i32 0, i32 33
  %92 = ptrtoint ptr %weight_pa_sig0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %weight_pa_sig0, align 4
  %shl118 = shl i32 %93, 12
  %weight_pa_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %87, i32 0, i32 34
  %94 = ptrtoint ptr %weight_pa_sig1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %weight_pa_sig1, align 4
  %shl121 = shl i32 %95, 18
  %weight_vgt_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %87, i32 0, i32 35
  %96 = ptrtoint ptr %weight_vgt_sig0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %weight_vgt_sig0, align 4
  %shl124 = shl i32 %97, 24
  %or116 = or i32 %89, %and111
  %or119 = or i32 %or116, %shl115
  %or122 = or i32 %or119, %shl118
  %or125 = or i32 %or122, %shl121
  %or126 = or i32 %or125, %shl124
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 139, i32 noundef %or126) #9
  %call127 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 140) #9
  %and128 = and i32 %call127, -1073741824
  %98 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cac_weights, align 4
  %weight_vgt_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %99, i32 0, i32 36
  %100 = ptrtoint ptr %weight_vgt_sig1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %weight_vgt_sig1, align 4
  %weight_vgt_sig2 = getelementptr inbounds %struct.ni_cac_weights, ptr %99, i32 0, i32 37
  %102 = ptrtoint ptr %weight_vgt_sig2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %weight_vgt_sig2, align 4
  %shl132 = shl i32 %103, 6
  %weight_dc_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %99, i32 0, i32 38
  %104 = ptrtoint ptr %weight_dc_sig0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %weight_dc_sig0, align 4
  %shl135 = shl i32 %105, 12
  %weight_dc_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %99, i32 0, i32 39
  %106 = ptrtoint ptr %weight_dc_sig1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %weight_dc_sig1, align 4
  %shl138 = shl i32 %107, 18
  %weight_dc_sig2 = getelementptr inbounds %struct.ni_cac_weights, ptr %99, i32 0, i32 40
  %108 = ptrtoint ptr %weight_dc_sig2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %weight_dc_sig2, align 4
  %shl141 = shl i32 %109, 24
  %or133 = or i32 %101, %and128
  %or136 = or i32 %or133, %shl132
  %or139 = or i32 %or136, %shl135
  %or142 = or i32 %or139, %shl138
  %or143 = or i32 %or142, %shl141
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 140, i32 noundef %or143) #9
  %call144 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 141) #9
  %and145 = and i32 %call144, -1073741824
  %110 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cac_weights, align 4
  %weight_dc_sig3 = getelementptr inbounds %struct.ni_cac_weights, ptr %111, i32 0, i32 41
  %112 = ptrtoint ptr %weight_dc_sig3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %weight_dc_sig3, align 4
  %weight_uvd_sig0 = getelementptr inbounds %struct.ni_cac_weights, ptr %111, i32 0, i32 42
  %114 = ptrtoint ptr %weight_uvd_sig0 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %weight_uvd_sig0, align 4
  %shl149 = shl i32 %115, 6
  %weight_uvd_sig1 = getelementptr inbounds %struct.ni_cac_weights, ptr %111, i32 0, i32 43
  %116 = ptrtoint ptr %weight_uvd_sig1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %weight_uvd_sig1, align 4
  %shl152 = shl i32 %117, 12
  %weight_spare0 = getelementptr inbounds %struct.ni_cac_weights, ptr %111, i32 0, i32 44
  %118 = ptrtoint ptr %weight_spare0 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %weight_spare0, align 4
  %shl155 = shl i32 %119, 18
  %weight_spare1 = getelementptr inbounds %struct.ni_cac_weights, ptr %111, i32 0, i32 45
  %120 = ptrtoint ptr %weight_spare1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %weight_spare1, align 4
  %shl158 = shl i32 %121, 24
  %or150 = or i32 %113, %and145
  %or153 = or i32 %or150, %shl149
  %or156 = or i32 %or153, %shl152
  %or159 = or i32 %or156, %shl155
  %or160 = or i32 %or159, %shl158
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 141, i32 noundef %or160) #9
  %call161 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 142) #9
  %and162 = and i32 %call161, -268435456
  %122 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cac_weights, align 4
  %weight_sq_vsp = getelementptr inbounds %struct.ni_cac_weights, ptr %123, i32 0, i32 46
  %124 = ptrtoint ptr %weight_sq_vsp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %weight_sq_vsp, align 4
  %weight_sq_vsp0 = getelementptr inbounds %struct.ni_cac_weights, ptr %123, i32 0, i32 47
  %126 = ptrtoint ptr %weight_sq_vsp0 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %weight_sq_vsp0, align 4
  %shl166 = shl i32 %127, 14
  %or167 = or i32 %125, %and162
  %or168 = or i32 %or167, %shl166
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 142, i32 noundef %or168) #9
  %call169 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 183) #9
  %and170 = and i32 %call169, -16384
  %128 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cac_weights, align 4
  %weight_sq_gpr = getelementptr inbounds %struct.ni_cac_weights, ptr %129, i32 0, i32 48
  %130 = ptrtoint ptr %weight_sq_gpr to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %weight_sq_gpr, align 4
  %or173 = or i32 %131, %and170
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 183, i32 noundef %or173) #9
  %call174 = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 171) #9
  %and175 = and i32 %call174, -33488897
  %132 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cac_weights, align 4
  %ovr_mode_spare_0 = getelementptr inbounds %struct.ni_cac_weights, ptr %133, i32 0, i32 49
  %134 = ptrtoint ptr %ovr_mode_spare_0 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ovr_mode_spare_0, align 4
  %shl177 = shl i32 %135, 16
  %ovr_val_spare_0 = getelementptr inbounds %struct.ni_cac_weights, ptr %133, i32 0, i32 50
  %136 = ptrtoint ptr %ovr_val_spare_0 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ovr_val_spare_0, align 4
  %shl179 = shl i32 %137, 17
  %ovr_mode_spare_1 = getelementptr inbounds %struct.ni_cac_weights, ptr %133, i32 0, i32 51
  %138 = ptrtoint ptr %ovr_mode_spare_1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ovr_mode_spare_1, align 4
  %shl182 = shl i32 %139, 18
  %ovr_val_spare_1 = getelementptr inbounds %struct.ni_cac_weights, ptr %133, i32 0, i32 52
  %140 = ptrtoint ptr %ovr_val_spare_1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ovr_val_spare_1, align 4
  %shl185 = shl i32 %141, 19
  %or180 = or i32 %shl177, %and175
  %or183 = or i32 %or180, %shl179
  %or186 = or i32 %or183, %shl182
  %or187 = or i32 %or186, %shl185
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 171, i32 noundef %or187) #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %142 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %143, i32 36428
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %145 = shl i32 %144, 24
  %146 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cac_weights, align 4
  %vsp = getelementptr inbounds %struct.ni_cac_weights, ptr %147, i32 0, i32 53
  %148 = ptrtoint ptr %vsp to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %vsp, align 4
  %vsp0 = getelementptr inbounds %struct.ni_cac_weights, ptr %147, i32 0, i32 54
  %150 = ptrtoint ptr %vsp0 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vsp0, align 4
  %shl193 = shl i32 %151, 8
  %gpr = getelementptr inbounds %struct.ni_cac_weights, ptr %147, i32 0, i32 55
  %152 = ptrtoint ptr %gpr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %gpr, align 4
  %shl196 = shl i32 %153, 16
  %or194 = or i32 %149, %145
  %or197 = or i32 %or194, %shl193
  %or198 = or i32 %or197, %shl196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %154 = tail call i32 @llvm.bswap.i32(i32 %or198) #9
  %155 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i331 = getelementptr i8, ptr %156, i32 36428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i331, i32 %154) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %157 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i335 = getelementptr i8, ptr %158, i32 9660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 259326464) #9, !srcloc !101
  %159 = ptrtoint ptr %cac_weights to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cac_weights, align 4
  %mc_read_weight = getelementptr inbounds %struct.ni_cac_weights, ptr %160, i32 0, i32 56
  %161 = ptrtoint ptr %mc_read_weight to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %mc_read_weight, align 4
  %conv = zext i8 %162 to i32
  %shl200 = shl nuw nsw i32 %conv, 1
  %mc_write_weight = getelementptr inbounds %struct.ni_cac_weights, ptr %160, i32 0, i32 57
  %163 = ptrtoint ptr %mc_write_weight to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mc_write_weight, align 1
  %conv202 = zext i8 %164 to i32
  %shl203 = shl nuw nsw i32 %conv202, 7
  %or204 = or i32 %shl200, %shl203
  %or205 = or i32 %or204, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %165 = tail call i32 @llvm.bswap.i32(i32 %or205) #9
  %166 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i339 = getelementptr i8, ptr %167, i32 10372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i339, i32 %165) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_populate_smc_tdp_limits(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_power_containment = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enable_power_containment to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_power_containment, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then:                                          ; preds = %entry
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic.i, align 8
  %get_xclk.i = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_xclk.i, align 4
  %call.i = tail call i32 %7(ptr noundef %rdev) #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 2188
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %11 = and i32 %10, -12648448
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %div.i = udiv i32 1000000000, %call.i
  %div2.i = udiv i32 %div.i, 10000
  %mul.i = mul nuw nsw i32 %div2.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp = icmp eq i32 %mul.i, 0
  br i1 %cmp, label %if.then.cleanup30_crit_edge, label %if.end

if.then.cleanup30_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

if.end:                                           ; preds = %if.then
  %smc_statetable = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25
  %13 = call ptr @memset(ptr %smc_statetable, i32 0, i32 3028)
  %tdp_adjustment = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 28
  %14 = ptrtoint ptr %tdp_adjustment to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tdp_adjustment, align 4
  %tdp_od_limit.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 27
  %16 = ptrtoint ptr %tdp_od_limit.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tdp_od_limit.i, align 4
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i)
  %cmp.i = icmp ugt i32 %15, %conv.i
  br i1 %cmp.i, label %if.end.cleanup30_crit_edge, label %cleanup

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

cleanup:                                          ; preds = %if.end
  %sub13.i = sub i32 100, %15
  %tdp_limit16.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 22
  %18 = ptrtoint ptr %tdp_limit16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tdp_limit16.i, align 4
  %mul17.i = mul i32 %19, %sub13.i
  %div18.i = udiv i32 %mul17.i, 100
  %near_tdp_limit21.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 23
  %20 = ptrtoint ptr %near_tdp_limit21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %near_tdp_limit21.i, align 4
  %sub25.neg.i = sub i32 %21, %19
  %sub26.i = add i32 %sub25.neg.i, %div18.i
  %call8 = tail call fastcc i32 @ni_calculate_power_boost_limit(ptr noundef %rdev, ptr noundef %radeon_state, i32 noundef %sub26.i)
  %mul.i52 = shl i32 %mul.i, 2
  %shl.i = mul i32 %mul.i52, %div18.i
  %dpm2Params = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 7
  %22 = ptrtoint ptr %dpm2Params to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %shl.i, ptr %dpm2Params, align 1
  %shl.i54 = mul i32 %mul.i52, %sub26.i
  %NearTDPLimit = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 7, i32 1
  %23 = ptrtoint ptr %NearTDPLimit to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %shl.i54, ptr %NearTDPLimit, align 1
  %mul = mul i32 %sub26.i, 80
  %div = udiv i32 %mul, 100
  %shl.i56 = mul i32 %mul.i52, %div
  %SafePowerLimit = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 7, i32 2
  %24 = ptrtoint ptr %SafePowerLimit to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %shl.i56, ptr %SafePowerLimit, align 1
  %shl.i58 = mul i32 %mul.i52, %call8
  %PowerBoostLimit = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 25, i32 7, i32 3
  %25 = ptrtoint ptr %PowerBoostLimit to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %shl.i58, ptr %PowerBoostLimit, align 1
  %state_table_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 57
  %26 = ptrtoint ptr %state_table_start to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %state_table_start, align 4
  %add = add i16 %27, 184
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %28 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sram_end, align 4
  %call20 = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add, ptr noundef %dpm2Params, i16 noundef zeroext 16, i16 noundef zeroext %29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %cleanup.if.end29_crit_edge, label %cleanup.cleanup30_crit_edge

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %entry.if.end29_crit_edge
  br label %cleanup30

cleanup30:                                        ; preds = %if.end29, %cleanup.cleanup30_crit_edge, %if.end.cleanup30_crit_edge, %if.then.cleanup30_crit_edge
  %retval.1 = phi i32 [ 0, %if.end29 ], [ %call20, %cleanup.cleanup30_crit_edge ], [ -22, %if.then.cleanup30_crit_edge ], [ -22, %if.end.cleanup30_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_program_response_times(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 104, i32 noundef 1) #9
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
  %spec.store.select23 = select i1 %cmp5, i32 1000, i32 %3
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_xclk, align 4
  %call8 = tail call i32 %7(ptr noundef %rdev) #9
  %mul = mul i32 %call8, %spec.store.select
  %div = udiv i32 %mul, 1600
  %mul9 = mul i32 %call8, %spec.store.select23
  %div10 = udiv i32 %mul9, 1600
  %mul11 = mul i32 %call8, 15000
  %div12 = udiv i32 %mul11, 1600
  %mul13 = mul i32 %call8, 100000
  %div14 = udiv i32 %mul13, 1600
  %mul15 = mul i32 %call8, 460
  %div16 = udiv i32 %mul15, 100
  %call17 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 16, i32 noundef %div) #9
  %call18 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 12, i32 noundef %div10) #9
  %call19 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 44, i32 noundef %div12) #9
  %call20 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 0, i32 noundef %div14) #9
  %call21 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 132, i32 noundef 170) #9
  %call22 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 120, i32 noundef %div16) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r7xx_start_smc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_notify_smc_display_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_sclk_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_mclk_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_start_dpm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_auto_throttle_source(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_dpm_disable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %boot_ps2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %0 = ptrtoint ptr %boot_ps2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %boot_ps2, align 4
  %call3 = tail call zeroext i1 @btc_dpm_enabled(ptr noundef %rdev) #9
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rv770_clear_vc(ptr noundef %rdev) #9
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %thermal_protection, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rv770_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext false) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 4
  %enable_power_containment.i = getelementptr inbounds %struct.ni_power_info, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %enable_power_containment.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_power_containment.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end5.ni_enable_power_containment.exit_crit_edge, label %if.then.i

if.end5.ni_enable_power_containment.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_enable_power_containment.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 90) #9
  %pc_enabled17.i = getelementptr inbounds %struct.ni_power_info, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %pc_enabled17.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pc_enabled17.i, align 1
  br label %ni_enable_power_containment.exit

ni_enable_power_containment.exit:                 ; preds = %if.then.i, %if.end5.ni_enable_power_containment.exit_crit_edge
  %9 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i, align 4
  %enable_cac.i = getelementptr inbounds %struct.ni_power_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %enable_cac.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_cac.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i61 = icmp eq i8 %12, 0
  br i1 %tobool.not.i61, label %ni_enable_power_containment.exit.ni_enable_smc_cac.exit_crit_edge, label %if.then.i62

ni_enable_power_containment.exit.ni_enable_smc_cac.exit_crit_edge: ; preds = %ni_enable_power_containment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_enable_smc_cac.exit

if.then.i62:                                      ; preds = %ni_enable_power_containment.exit
  %cac_enabled25.i = getelementptr inbounds %struct.ni_power_info, ptr %10, i32 0, i32 6
  %13 = ptrtoint ptr %cac_enabled25.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cac_enabled25.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool26.not.i = icmp eq i8 %14, 0
  br i1 %tobool26.not.i, label %if.then.i62.ni_enable_smc_cac.exit_crit_edge, label %if.then27.i

if.then.i62.ni_enable_smc_cac.exit_crit_edge:     ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_enable_smc_cac.exit

if.then27.i:                                      ; preds = %if.then.i62
  %call28.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 84) #9
  %15 = ptrtoint ptr %cac_enabled25.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %cac_enabled25.i, align 2
  %support_cac_long_term_average30.i = getelementptr inbounds %struct.ni_power_info, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %support_cac_long_term_average30.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %support_cac_long_term_average30.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool31.not.i = icmp eq i8 %17, 0
  br i1 %tobool31.not.i, label %if.then27.i.ni_enable_smc_cac.exit_crit_edge, label %if.then32.i

if.then27.i.ni_enable_smc_cac.exit_crit_edge:     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_enable_smc_cac.exit

if.then32.i:                                      ; preds = %if.then27.i
  %call33.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 111) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call33.i)
  %cmp35.not.i = icmp eq i8 %call33.i, 1
  br i1 %cmp35.not.i, label %if.then32.i.ni_enable_smc_cac.exit_crit_edge, label %if.then37.i

if.then32.i.ni_enable_smc_cac.exit_crit_edge:     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_enable_smc_cac.exit

if.then37.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %support_cac_long_term_average30.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %support_cac_long_term_average30.i, align 1
  br label %ni_enable_smc_cac.exit

ni_enable_smc_cac.exit:                           ; preds = %if.then37.i, %if.then32.i.ni_enable_smc_cac.exit_crit_edge, %if.then27.i.ni_enable_smc_cac.exit_crit_edge, %if.then.i62.ni_enable_smc_cac.exit_crit_edge, %ni_enable_power_containment.exit.ni_enable_smc_cac.exit_crit_edge
  tail call void @cypress_enable_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext false) #9
  tail call void @rv770_enable_auto_throttle_source(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext false) #9
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not = icmp eq i8 %20, 0
  br i1 %tobool8.not, label %ni_enable_smc_cac.exit.if.end10_crit_edge, label %if.then9

ni_enable_smc_cac.exit.if.end10_crit_edge:        ; preds = %ni_enable_smc_cac.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %ni_enable_smc_cac.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ni_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext false)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %ni_enable_smc_cac.exit.if.end10_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %irq, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool11.not = icmp eq i8 %22, 0
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %land.lhs.true

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %23 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %int_thermal_type, align 4
  %call13 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %24) #9
  br i1 %call13, label %if.then14, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %25 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %26 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %asic, align 8
  %irq16 = getelementptr inbounds %struct.radeon_asic, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq16, align 4
  %call17 = tail call i32 %29(ptr noundef %rdev) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %land.lhs.true.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %gfx_clock_gating, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool19.not = icmp eq i8 %31, 0
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_cgcg_cgls_disable, i32 noundef 50) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 11
  %32 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mg_clock_gating, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not = icmp eq i8 %33, 0
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_mgcg_disable, i32 noundef 10) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21.if.end24_crit_edge
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 11
  %34 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ls_clock_gating, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool25.not = icmp eq i8 %35, 0
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @cayman_sysls_disable, i32 noundef 19) #9
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 1596
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %39 = and i32 %38, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %40 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %41, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %39) #9, !srcloc !101
  %call28 = tail call i32 @btc_reset_to_default(ptr noundef %rdev) #9
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %42 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.i = icmp sgt i32 %43, 0
  br i1 %cmp5.i, label %if.end27.for.body.i_crit_edge, label %if.end27.ni_stop_smc.exit_crit_edge

if.end27.ni_stop_smc.exit_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_stop_smc.exit

if.end27.for.body.i_crit_edge:                    ; preds = %if.end27
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end27.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end27.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i65 = getelementptr i8, ptr %45, i32 27432
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i65) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %47 = and i32 %46, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %47)
  %cmp1.not.i = icmp eq i32 %47, 16777216
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.ni_stop_smc.exit_crit_edge

for.body.i.ni_stop_smc.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_stop_smc.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %49 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %50
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.ni_stop_smc.exit_crit_edge

if.end.i.ni_stop_smc.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_stop_smc.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ni_stop_smc.exit:                                 ; preds = %if.end.i.ni_stop_smc.exit_crit_edge, %for.body.i.ni_stop_smc.exit_crit_edge, %if.end27.ni_stop_smc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 21474800) #9
  tail call void @r7xx_stop_smc(ptr noundef %rdev) #9
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %52 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %54 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %tmp.i, align 4, !annotation !104
  %arb_table_start.i = getelementptr inbounds %struct.ni_power_info, ptr %53, i32 0, i32 13
  %55 = ptrtoint ptr %arb_table_start.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arb_table_start.i, align 2
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 59
  %57 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sram_end.i, align 4
  %call2.i = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %56, ptr noundef nonnull %tmp.i, i16 noundef zeroext %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i67 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i67, label %if.end.i69, label %ni_stop_smc.exit.ni_force_switch_to_arb_f0.exit_crit_edge

ni_stop_smc.exit.ni_force_switch_to_arb_f0.exit_crit_edge: ; preds = %ni_stop_smc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_force_switch_to_arb_f0.exit

if.end.i69:                                       ; preds = %ni_stop_smc.exit
  %59 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tmp.i, align 4
  %shr.i = lshr i32 %60, 24
  store i32 %shr.i, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %shr.i)
  %cmp.i68 = icmp eq i32 %shr.i, 10
  br i1 %cmp.i68, label %if.end.i69.ni_force_switch_to_arb_f0.exit_crit_edge, label %if.end4.i

if.end.i69.ni_force_switch_to_arb_f0.exit_crit_edge: ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_force_switch_to_arb_f0.exit

if.end4.i:                                        ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = call i32 @ni_copy_and_switch_arb_sets(ptr noundef %rdev, i32 noundef %shr.i, i32 noundef 10) #9
  br label %ni_force_switch_to_arb_f0.exit

ni_force_switch_to_arb_f0.exit:                   ; preds = %if.end4.i, %if.end.i69.ni_force_switch_to_arb_f0.exit_crit_edge, %ni_stop_smc.exit.ni_force_switch_to_arb_f0.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %61 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ps_priv.i.i, align 4
  %call1.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %63 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25
  %65 = call ptr @memcpy(ptr %current_rps.i, ptr %1, i32 40)
  %current_ps.i = getelementptr inbounds %struct.ni_power_info, ptr %64, i32 0, i32 22
  %66 = call ptr @memcpy(ptr %current_ps.i, ptr %62, i32 324)
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25, i32 9
  %67 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %ni_force_switch_to_arb_f0.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_clear_vc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_enable_power_containment(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_power_containment = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enable_power_containment to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_power_containment, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then:                                          ; preds = %entry
  br i1 %enable, label %if.then2, label %if.else10

if.then2:                                         ; preds = %if.then
  %class = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 1
  %4 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 2
  %6 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %class2, align 4
  %call3 = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %5, i32 noundef %7) #9
  br i1 %call3, label %if.then2.if.end19_crit_edge, label %if.then4

if.then2.if.end19_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then4:                                         ; preds = %if.then2
  %call5 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 89) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call5)
  %cmp.not = icmp eq i8 %call5, 1
  %pc_enabled8 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 9
  br i1 %cmp.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pc_enabled8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pc_enabled8, align 1
  br label %if.end19

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pc_enabled8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %pc_enabled8, align 1
  br label %if.end19

if.else10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 90) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call11)
  %cmp13.not = icmp eq i8 %call11, 1
  %spec.select = select i1 %cmp13.not, i32 0, i32 -22
  %pc_enabled17 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %pc_enabled17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pc_enabled17, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else10, %if.else, %if.then7, %if.then2.if.end19_crit_edge, %entry.if.end19_crit_edge
  %ret.1 = phi i32 [ 0, %if.then2.if.end19_crit_edge ], [ -22, %if.then7 ], [ 0, %if.else ], [ %spec.select, %if.else10 ], [ 0, %entry.if.end19_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_enable_smc_cac(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_cac = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enable_cac to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_cac, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then:                                          ; preds = %entry
  br i1 %enable, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %class = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 1
  %4 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 2
  %6 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %class2, align 4
  %call3 = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %5, i32 noundef %7) #9
  br i1 %call3, label %if.then2.if.end43_crit_edge, label %if.then4

if.then2.if.end43_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then4:                                         ; preds = %if.then2
  %call5 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 122) #9
  %support_cac_long_term_average = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %support_cac_long_term_average to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %support_cac_long_term_average, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then4.if.end12_crit_edge, label %if.then7

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.then4
  %call8 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 110) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call8)
  %cmp.not = icmp eq i8 %call8, 1
  br i1 %cmp.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %support_cac_long_term_average to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %support_cac_long_term_average, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  %call13 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 83) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call13)
  %cmp15.not = icmp eq i8 %call13, 1
  %spec.select = select i1 %cmp15.not, i32 0, i32 -22
  %cac_enabled = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 6
  %frombool23 = zext i1 %cmp15.not to i8
  %11 = ptrtoint ptr %cac_enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool23, ptr %cac_enabled, align 2
  br label %if.end43

if.else:                                          ; preds = %if.then
  %cac_enabled25 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %cac_enabled25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cac_enabled25, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  br i1 %tobool26.not, label %if.else.if.end43_crit_edge, label %if.then27

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then27:                                        ; preds = %if.else
  %call28 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 84) #9
  %14 = ptrtoint ptr %cac_enabled25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cac_enabled25, align 2
  %support_cac_long_term_average30 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %support_cac_long_term_average30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %support_cac_long_term_average30, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.then27.if.end43_crit_edge, label %if.then32

if.then27.if.end43_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then32:                                        ; preds = %if.then27
  %call33 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 111) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call33)
  %cmp35.not = icmp eq i8 %call33, 1
  br i1 %cmp35.not, label %if.then32.if.end43_crit_edge, label %if.then37

if.then32.if.end43_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %support_cac_long_term_average30 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %support_cac_long_term_average30, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then37, %if.then32.if.end43_crit_edge, %if.then27.if.end43_crit_edge, %if.else.if.end43_crit_edge, %if.end12, %if.then2.if.end43_crit_edge, %entry.if.end43_crit_edge
  %ret.1 = phi i32 [ 0, %if.then2.if.end43_crit_edge ], [ %spec.select, %if.end12 ], [ 0, %if.then37 ], [ 0, %if.then32.if.end43_crit_edge ], [ 0, %if.then27.if.end43_crit_edge ], [ 0, %if.else.if.end43_crit_edge ], [ 0, %entry.if.end43_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btc_reset_to_default(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_pre_set_power_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %requested_ps.sroa.0 = alloca { i32, i32, i32, i32, i32, i32, i32, i8, i32 }, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %requested_ps.sroa.0)
  %requested_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps1, align 4
  %2 = call ptr @memcpy(ptr %requested_ps.sroa.0, ptr %1, i32 36)
  %requested_ps.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 36
  %3 = ptrtoint ptr %requested_ps.sroa.5.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %requested_ps.sroa.5.0.copyload = load ptr, ptr %requested_ps.sroa.5.0..sroa_idx, align 4
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 4
  %requested_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 27
  %6 = call ptr @memcpy(ptr %requested_rps.i, ptr %requested_ps.sroa.0, i32 36)
  %requested_ps.sroa.5.0.requested_rps.i.sroa_idx = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 27, i32 9
  %7 = ptrtoint ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %requested_ps.sroa.5.0.copyload, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %requested_ps.i = getelementptr inbounds %struct.ni_power_info, ptr %5, i32 0, i32 23
  %8 = call ptr @memcpy(ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.copyload, i32 324)
  store ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %ps_priv.i.i5 = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 9
  %9 = ptrtoint ptr %ps_priv.i.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps_priv.i.i5, align 4
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %11 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp sgt i32 %12, 1
  br i1 %cmp.i, label %entry.if.end.i_crit_edge, label %lor.lhs.false.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i.i = tail call i32 @r600_dpm_get_vblank_time(ptr noundef %rdev) #9
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 450
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %cond.i.i)
  %cmp.i.i = icmp ult i32 %call1.i.i, %cond.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %entry.if.end.i_crit_edge
  %disable_mclk_switching.0.off0.i = phi i1 [ true, %entry.if.end.i_crit_edge ], [ %cmp.i.i, %lor.lhs.false.i ]
  %ac_power.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 31
  %15 = ptrtoint ptr %ac_power.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ac_power.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %max_clock_voltage_on_dc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11
  %max_limits.0.i = select i1 %tobool.not.i, ptr %max_clock_voltage_on_dc.i, ptr %max_clock_voltage_on_ac.i
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.i.if.end70.i_crit_edge

if.end.i.if.end70.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp20552.not.i = icmp eq i16 %18, 0
  br i1 %cmp20552.not.i, label %for.cond.preheader.i.if.end70.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end70.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mclk23.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 1
  %vddc46.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 2
  %vddci60.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0553.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.0553.i
  %mclk22.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.0553.i, i32 1
  %19 = ptrtoint ptr %mclk22.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk22.i, align 4
  %21 = ptrtoint ptr %mclk23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp24.i = icmp ugt i32 %20, %22
  br i1 %cmp24.i, label %if.then26.i, label %for.body.i.if.end31.i_crit_edge

for.body.i.if.end31.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %mclk22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mclk22.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %for.body.i.if.end31.i_crit_edge
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_limits.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp35.i = icmp ugt i32 %25, %27
  br i1 %cmp35.i, label %if.then37.i, label %if.end31.i.if.end42.i_crit_edge

if.end31.i.if.end42.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.end31.i.if.end42.i_crit_edge
  %vddc.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.0553.i, i32 2
  %29 = ptrtoint ptr %vddc.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vddc.i, align 4
  %31 = ptrtoint ptr %vddc46.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vddc46.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %32)
  %cmp48.i = icmp ugt i16 %30, %32
  br i1 %cmp48.i, label %if.then50.i, label %if.end42.i.if.end55.i_crit_edge

if.end42.i.if.end55.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i

if.then50.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %vddc.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %vddc.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then50.i, %if.end42.i.if.end55.i_crit_edge
  %vddci58.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.0553.i, i32 3
  %34 = ptrtoint ptr %vddci58.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vddci58.i, align 2
  %36 = ptrtoint ptr %vddci60.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vddci60.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp62.i = icmp ugt i16 %35, %37
  br i1 %cmp62.i, label %if.then64.i, label %if.end55.i.for.inc.i_crit_edge

if.end55.i.for.inc.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then64.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %vddci58.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %vddci58.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then64.i, %if.end55.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0553.i, 1
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %10, align 4
  %conv19.i = zext i16 %40 to i32
  %cmp20.i = icmp ult i32 %inc.i, %conv19.i
  br i1 %cmp20.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end70.i_crit_edge

for.inc.i.if.end70.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end70.i:                                       ; preds = %for.inc.i.if.end70.i_crit_edge, %for.cond.preheader.i.if.end70.i_crit_edge, %if.end.i.if.end70.i_crit_edge
  br i1 %disable_mclk_switching.0.off0.i, label %if.then72.i, label %if.end70.i.if.end90.i_crit_edge

if.end70.i.if.end90.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90.i

if.then72.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %10, align 4
  %conv75.i = zext i16 %42 to i32
  %sub.i = add nsw i32 %conv75.i, -1
  %mclk77.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %sub.i, i32 1
  %43 = ptrtoint ptr %mclk77.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mclk77.i, align 4
  %mclk80.i = getelementptr inbounds %struct.ni_ps, ptr %10, i32 0, i32 2, i32 0, i32 1
  %45 = ptrtoint ptr %mclk80.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mclk80.i, align 4
  %vddci86.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %sub.i, i32 3
  %46 = ptrtoint ptr %vddci86.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vddci86.i, align 2
  %vddci89.i = getelementptr inbounds %struct.ni_ps, ptr %10, i32 0, i32 2, i32 0, i32 3
  %48 = ptrtoint ptr %vddci89.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %vddci89.i, align 2
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then72.i, %if.end70.i.if.end90.i_crit_edge
  %49 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_limits.0.i, align 4
  %mclk92.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 1
  %51 = ptrtoint ptr %mclk92.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mclk92.i, align 4
  %performance_levels93.i = getelementptr inbounds %struct.ni_ps, ptr %10, i32 0, i32 2
  %mclk98.i = getelementptr inbounds %struct.ni_ps, ptr %10, i32 0, i32 2, i32 0, i32 1
  tail call void @btc_skip_blacklist_clocks(ptr noundef %rdev, i32 noundef %50, i32 noundef %52, ptr noundef %performance_levels93.i, ptr noundef %mclk98.i) #9
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %54)
  %cmp102555.i = icmp ugt i16 %54, 1
  br i1 %cmp102555.i, label %if.end90.i.for.body104.i_crit_edge, label %if.end90.i.for.end145.i_crit_edge

if.end90.i.for.end145.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end145.i

if.end90.i.for.body104.i_crit_edge:               ; preds = %if.end90.i
  br label %for.body104.i

for.body104.i:                                    ; preds = %for.inc143.i.for.body104.i_crit_edge, %if.end90.i.for.body104.i_crit_edge
  %i.1556.i = phi i32 [ %inc144.i, %for.inc143.i.for.body104.i_crit_edge ], [ 1, %if.end90.i.for.body104.i_crit_edge ]
  %arrayidx106.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.1556.i
  %55 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx106.i, align 4
  %sub109.i = add nsw i32 %i.1556.i, -1
  %arrayidx110.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %sub109.i
  %57 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx110.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp112.i = icmp ult i32 %56, %58
  br i1 %cmp112.i, label %if.then114.i, label %for.body104.i.if.end122.i_crit_edge

for.body104.i.if.end122.i_crit_edge:              ; preds = %for.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i

if.then114.i:                                     ; preds = %for.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx106.i, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then114.i, %for.body104.i.if.end122.i_crit_edge
  %vddc125.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.1556.i, i32 2
  %60 = ptrtoint ptr %vddc125.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vddc125.i, align 4
  %vddc130.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %sub109.i, i32 2
  %62 = ptrtoint ptr %vddc130.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vddc130.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp132.i = icmp ult i16 %61, %63
  br i1 %cmp132.i, label %if.then134.i, label %if.end122.i.for.inc143.i_crit_edge

if.end122.i.for.inc143.i_crit_edge:               ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc143.i

if.then134.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %vddc125.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %vddc125.i, align 4
  br label %for.inc143.i

for.inc143.i:                                     ; preds = %if.then134.i, %if.end122.i.for.inc143.i_crit_edge
  %inc144.i = add nuw nsw i32 %i.1556.i, 1
  %65 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %10, align 4
  %conv101.i = zext i16 %66 to i32
  %cmp102.i = icmp ult i32 %inc144.i, %conv101.i
  br i1 %cmp102.i, label %for.inc143.i.for.body104.i_crit_edge, label %for.inc143.i.for.end145.i_crit_edge

for.inc143.i.for.end145.i_crit_edge:              ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end145.i

for.inc143.i.for.body104.i_crit_edge:             ; preds = %for.inc143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body104.i

for.end145.i:                                     ; preds = %for.inc143.i.for.end145.i_crit_edge, %if.end90.i.for.end145.i_crit_edge
  %.lcssa34.sink = phi i16 [ %54, %if.end90.i.for.end145.i_crit_edge ], [ %66, %for.inc143.i.for.end145.i_crit_edge ]
  %conv101.i.le = zext i16 %.lcssa34.sink to i32
  br i1 %disable_mclk_switching.0.off0.i, label %if.then147.i, label %for.cond201.preheader.i

for.cond201.preheader.i:                          ; preds = %for.end145.i
  %67 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %68)
  %cmp204558.i = icmp ugt i16 %68, 1
  br i1 %cmp204558.i, label %for.cond201.preheader.i.for.body206.i_crit_edge, label %for.cond201.preheader.i.for.cond266.preheaderthread-pre-split.i_crit_edge

for.cond201.preheader.i.for.cond266.preheaderthread-pre-split.i_crit_edge: ; preds = %for.cond201.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond266.preheaderthread-pre-split.i

for.cond201.preheader.i.for.body206.i_crit_edge:  ; preds = %for.cond201.preheader.i
  br label %for.body206.i

if.then147.i:                                     ; preds = %for.end145.i
  %69 = ptrtoint ptr %mclk98.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mclk98.i, align 4
  %vddci153.i = getelementptr inbounds %struct.ni_ps, ptr %10, i32 0, i32 2, i32 0, i32 3
  %71 = ptrtoint ptr %vddci153.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vddci153.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %.lcssa34.sink)
  %cmp157560.i = icmp ugt i16 %.lcssa34.sink, 1
  br i1 %cmp157560.i, label %if.then147.i.for.body159.i_crit_edge, label %if.then147.i.for.cond185.preheader.i_crit_edge

if.then147.i.for.cond185.preheader.i_crit_edge:   ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond185.preheader.i

if.then147.i.for.body159.i_crit_edge:             ; preds = %if.then147.i
  br label %for.body159.i

for.cond185.preheader.i:                          ; preds = %for.body159.i.for.cond185.preheader.i_crit_edge, %if.then147.i.for.cond185.preheader.i_crit_edge
  %mclk.0.lcssa.i = phi i32 [ %70, %if.then147.i.for.cond185.preheader.i_crit_edge ], [ %77, %for.body159.i.for.cond185.preheader.i_crit_edge ]
  %vddci.0.lcssa.i = phi i16 [ %72, %if.then147.i.for.cond185.preheader.i_crit_edge ], [ %80, %for.body159.i.for.cond185.preheader.i_crit_edge ]
  %73 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %cmp188567.not.i = icmp eq i16 %74, 0
  br i1 %cmp188567.not.i, label %for.cond185.preheader.i.for.cond266.preheaderthread-pre-split.i_crit_edge, label %for.cond185.preheader.i.for.body190.i_crit_edge

for.cond185.preheader.i.for.body190.i_crit_edge:  ; preds = %for.cond185.preheader.i
  br label %for.body190.i

for.cond185.preheader.i.for.cond266.preheaderthread-pre-split.i_crit_edge: ; preds = %for.cond185.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond266.preheaderthread-pre-split.i

for.body159.i:                                    ; preds = %for.body159.i.for.body159.i_crit_edge, %if.then147.i.for.body159.i_crit_edge
  %i.2563.i = phi i32 [ %inc183.i, %for.body159.i.for.body159.i_crit_edge ], [ 1, %if.then147.i.for.body159.i_crit_edge ]
  %vddci.0562.i = phi i16 [ %80, %for.body159.i.for.body159.i_crit_edge ], [ %72, %if.then147.i.for.body159.i_crit_edge ]
  %mclk.0561.i = phi i32 [ %77, %for.body159.i.for.body159.i_crit_edge ], [ %70, %if.then147.i.for.body159.i_crit_edge ]
  %mclk162.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.2563.i, i32 1
  %75 = ptrtoint ptr %mclk162.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mclk162.i, align 4
  %77 = tail call i32 @llvm.umax.i32(i32 %mclk.0561.i, i32 %76) #9
  %vddci173.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.2563.i, i32 3
  %78 = ptrtoint ptr %vddci173.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %vddci173.i, align 2
  %80 = tail call i16 @llvm.umax.i16(i16 %vddci.0562.i, i16 %79) #9
  %inc183.i = add nuw nsw i32 %i.2563.i, 1
  %exitcond.not.i = icmp eq i32 %inc183.i, %conv101.i.le
  br i1 %exitcond.not.i, label %for.body159.i.for.cond185.preheader.i_crit_edge, label %for.body159.i.for.body159.i_crit_edge

for.body159.i.for.body159.i_crit_edge:            ; preds = %for.body159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body159.i

for.body159.i.for.cond185.preheader.i_crit_edge:  ; preds = %for.body159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond185.preheader.i

for.body190.i:                                    ; preds = %for.body190.i.for.body190.i_crit_edge, %for.cond185.preheader.i.for.body190.i_crit_edge
  %i.3568.i = phi i32 [ %inc198.i, %for.body190.i.for.body190.i_crit_edge ], [ 0, %for.cond185.preheader.i.for.body190.i_crit_edge ]
  %mclk193.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.3568.i, i32 1
  %81 = ptrtoint ptr %mclk193.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %mclk.0.lcssa.i, ptr %mclk193.i, align 4
  %vddci196.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.3568.i, i32 3
  %82 = ptrtoint ptr %vddci196.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %vddci.0.lcssa.i, ptr %vddci196.i, align 2
  %inc198.i = add nuw nsw i32 %i.3568.i, 1
  %83 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %10, align 4
  %conv187.i = zext i16 %84 to i32
  %cmp188.i = icmp ult i32 %inc198.i, %conv187.i
  br i1 %cmp188.i, label %for.body190.i.for.body190.i_crit_edge, label %for.body190.i.if.end248.i_crit_edge

for.body190.i.if.end248.i_crit_edge:              ; preds = %for.body190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248.i

for.body190.i.for.body190.i_crit_edge:            ; preds = %for.body190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body190.i

for.body206.i:                                    ; preds = %for.inc245.i.for.body206.i_crit_edge, %for.cond201.preheader.i.for.body206.i_crit_edge
  %i.4559.i = phi i32 [ %inc246.i, %for.inc245.i.for.body206.i_crit_edge ], [ 1, %for.cond201.preheader.i.for.body206.i_crit_edge ]
  %mclk209.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.4559.i, i32 1
  %85 = ptrtoint ptr %mclk209.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mclk209.i, align 4
  %sub211.i = add nsw i32 %i.4559.i, -1
  %mclk213.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %sub211.i, i32 1
  %87 = ptrtoint ptr %mclk213.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mclk213.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp214.i = icmp ult i32 %86, %88
  br i1 %cmp214.i, label %if.then216.i, label %for.body206.i.if.end224.i_crit_edge

for.body206.i.if.end224.i_crit_edge:              ; preds = %for.body206.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224.i

if.then216.i:                                     ; preds = %for.body206.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %mclk209.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %mclk209.i, align 4
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.then216.i, %for.body206.i.if.end224.i_crit_edge
  %vddci227.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.4559.i, i32 3
  %90 = ptrtoint ptr %vddci227.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vddci227.i, align 2
  %vddci232.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %sub211.i, i32 3
  %92 = ptrtoint ptr %vddci232.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vddci232.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %93)
  %cmp234.i = icmp ult i16 %91, %93
  br i1 %cmp234.i, label %if.then236.i, label %if.end224.i.for.inc245.i_crit_edge

if.end224.i.for.inc245.i_crit_edge:               ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc245.i

if.then236.i:                                     ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %vddci227.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %vddci227.i, align 2
  br label %for.inc245.i

for.inc245.i:                                     ; preds = %if.then236.i, %if.end224.i.for.inc245.i_crit_edge
  %inc246.i = add nuw nsw i32 %i.4559.i, 1
  %95 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %10, align 4
  %conv203.i = zext i16 %96 to i32
  %cmp204.i = icmp ult i32 %inc246.i, %conv203.i
  br i1 %cmp204.i, label %for.inc245.i.for.body206.i_crit_edge, label %for.inc245.i.if.end248.i_crit_edge

for.inc245.i.if.end248.i_crit_edge:               ; preds = %for.inc245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248.i

for.inc245.i.for.body206.i_crit_edge:             ; preds = %for.inc245.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body206.i

if.end248.i:                                      ; preds = %for.inc245.i.if.end248.i_crit_edge, %for.body190.i.if.end248.i_crit_edge
  %97 = phi i16 [ %84, %for.body190.i.if.end248.i_crit_edge ], [ %96, %for.inc245.i.if.end248.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %97)
  %cmp252570.i = icmp ugt i16 %97, 1
  br i1 %cmp252570.i, label %if.end248.i.for.body254.i_crit_edge, label %if.end248.i.for.cond266.preheaderthread-pre-split.i_crit_edge

if.end248.i.for.cond266.preheaderthread-pre-split.i_crit_edge: ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond266.preheaderthread-pre-split.i

if.end248.i.for.body254.i_crit_edge:              ; preds = %if.end248.i
  br label %for.body254.i

for.cond266.preheaderthread-pre-split.i:          ; preds = %if.end248.i.for.cond266.preheaderthread-pre-split.i_crit_edge, %for.cond185.preheader.i.for.cond266.preheaderthread-pre-split.i_crit_edge, %for.cond201.preheader.i.for.cond266.preheaderthread-pre-split.i_crit_edge
  %98 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %98)
  %.pr.i = load i16, ptr %10, align 4
  br label %for.cond266.preheader.i

for.cond266.preheader.i:                          ; preds = %for.body254.i.for.cond266.preheader.i_crit_edge, %for.cond266.preheaderthread-pre-split.i
  %99 = phi i16 [ %.pr.i, %for.cond266.preheaderthread-pre-split.i ], [ %105, %for.body254.i.for.cond266.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp269573.not.i = icmp eq i16 %99, 0
  br i1 %cmp269573.not.i, label %for.cond277.preheaderthread-pre-split.i, label %for.cond266.preheader.i.for.body271.i_crit_edge

for.cond266.preheader.i.for.body271.i_crit_edge:  ; preds = %for.cond266.preheader.i
  br label %for.body271.i

for.body254.i:                                    ; preds = %for.body254.i.for.body254.i_crit_edge, %if.end248.i.for.body254.i_crit_edge
  %i.5571.i = phi i32 [ %inc264.i, %for.body254.i.for.body254.i_crit_edge ], [ 1, %if.end248.i.for.body254.i_crit_edge ]
  %100 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_limits.0.i, align 4
  %102 = ptrtoint ptr %mclk92.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mclk92.i, align 4
  %arrayidx258.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.5571.i
  %mclk262.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.5571.i, i32 1
  tail call void @btc_skip_blacklist_clocks(ptr noundef %rdev, i32 noundef %101, i32 noundef %103, ptr noundef %arrayidx258.i, ptr noundef %mclk262.i) #9
  %inc264.i = add nuw nsw i32 %i.5571.i, 1
  %104 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %10, align 4
  %conv251.i = zext i16 %105 to i32
  %cmp252.i = icmp ult i32 %inc264.i, %conv251.i
  br i1 %cmp252.i, label %for.body254.i.for.body254.i_crit_edge, label %for.body254.i.for.cond266.preheader.i_crit_edge

for.body254.i.for.cond266.preheader.i_crit_edge:  ; preds = %for.body254.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond266.preheader.i

for.body254.i.for.body254.i_crit_edge:            ; preds = %for.body254.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body254.i

for.cond277.preheaderthread-pre-split.i:          ; preds = %for.cond266.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %106)
  %.pr590.i = load i16, ptr %10, align 4
  br label %for.cond277.preheader.i

for.cond277.preheader.i:                          ; preds = %for.body271.i.for.cond277.preheader.i_crit_edge, %for.cond277.preheaderthread-pre-split.i
  %107 = phi i16 [ %.pr590.i, %for.cond277.preheaderthread-pre-split.i ], [ %109, %for.body271.i.for.cond277.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %cmp280576.not.i = icmp eq i16 %107, 0
  br i1 %cmp280576.not.i, label %for.cond323.preheaderthread-pre-split.i, label %for.body282.lr.ph.i

for.body282.lr.ph.i:                              ; preds = %for.cond277.preheader.i
  %dyn_state285.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %vddc289.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 2
  %vddci_dependency_on_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1
  %vddci299.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 3
  %vddc_dependency_on_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2
  %vddc_dependency_on_dispclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4
  %current_dispclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 8
  br label %for.body282.i

for.body271.i:                                    ; preds = %for.body271.i.for.body271.i_crit_edge, %for.cond266.preheader.i.for.body271.i_crit_edge
  %i.6574.i = phi i32 [ %inc275.i, %for.body271.i.for.body271.i_crit_edge ], [ 0, %for.cond266.preheader.i.for.body271.i_crit_edge ]
  %arrayidx273.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.6574.i
  tail call void @btc_adjust_clock_combinations(ptr noundef %rdev, ptr noundef %max_limits.0.i, ptr noundef %arrayidx273.i) #9
  %inc275.i = add nuw nsw i32 %i.6574.i, 1
  %108 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %10, align 4
  %conv268.i = zext i16 %109 to i32
  %cmp269.i = icmp ult i32 %inc275.i, %conv268.i
  br i1 %cmp269.i, label %for.body271.i.for.body271.i_crit_edge, label %for.body271.i.for.cond277.preheader.i_crit_edge

for.body271.i.for.cond277.preheader.i_crit_edge:  ; preds = %for.body271.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond277.preheader.i

for.body271.i.for.body271.i_crit_edge:            ; preds = %for.body271.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body271.i

for.cond323.preheaderthread-pre-split.i:          ; preds = %for.cond277.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %110)
  %.pr591.i = load i16, ptr %10, align 4
  br label %for.cond323.preheader.i

for.cond323.preheader.i:                          ; preds = %for.body282.i.for.cond323.preheader.i_crit_edge, %for.cond323.preheaderthread-pre-split.i
  %111 = phi i16 [ %.pr591.i, %for.cond323.preheaderthread-pre-split.i ], [ %129, %for.body282.i.for.cond323.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp326579.not.i = icmp eq i16 %111, 0
  br i1 %cmp326579.not.i, label %for.end339thread-pre-split.i, label %for.body328.lr.ph.i

for.body328.lr.ph.i:                              ; preds = %for.cond323.preheader.i
  %vddc329.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 2
  %vddci330.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 3
  br label %for.body328.i

for.body282.i:                                    ; preds = %for.body282.i.for.body282.i_crit_edge, %for.body282.lr.ph.i
  %i.7577.i = phi i32 [ 0, %for.body282.lr.ph.i ], [ %inc321.i, %for.body282.i.for.body282.i_crit_edge ]
  %arrayidx287.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.7577.i
  %112 = ptrtoint ptr %arrayidx287.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx287.i, align 4
  %114 = ptrtoint ptr %vddc289.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %vddc289.i, align 4
  %vddc292.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.7577.i, i32 2
  tail call void @btc_apply_voltage_dependency_rules(ptr noundef %dyn_state285.i, i32 noundef %113, i16 noundef zeroext %115, ptr noundef %vddc292.i) #9
  %mclk298.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.7577.i, i32 1
  %116 = ptrtoint ptr %mclk298.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mclk298.i, align 4
  %118 = ptrtoint ptr %vddci299.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vddci299.i, align 2
  %vddci302.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.7577.i, i32 3
  tail call void @btc_apply_voltage_dependency_rules(ptr noundef %vddci_dependency_on_mclk.i, i32 noundef %117, i16 noundef zeroext %119, ptr noundef %vddci302.i) #9
  %120 = ptrtoint ptr %mclk298.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mclk298.i, align 4
  %122 = ptrtoint ptr %vddc289.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %vddc289.i, align 4
  tail call void @btc_apply_voltage_dependency_rules(ptr noundef %vddc_dependency_on_mclk.i, i32 noundef %121, i16 noundef zeroext %123, ptr noundef %vddc292.i) #9
  %124 = ptrtoint ptr %current_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %current_dispclk.i, align 4
  %126 = ptrtoint ptr %vddc289.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %vddc289.i, align 4
  tail call void @btc_apply_voltage_dependency_rules(ptr noundef %vddc_dependency_on_dispclk.i, i32 noundef %125, i16 noundef zeroext %127, ptr noundef %vddc292.i) #9
  %inc321.i = add nuw nsw i32 %i.7577.i, 1
  %128 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %10, align 4
  %conv279.i = zext i16 %129 to i32
  %cmp280.i = icmp ult i32 %inc321.i, %conv279.i
  br i1 %cmp280.i, label %for.body282.i.for.body282.i_crit_edge, label %for.body282.i.for.cond323.preheader.i_crit_edge

for.body282.i.for.cond323.preheader.i_crit_edge:  ; preds = %for.body282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond323.preheader.i

for.body282.i.for.body282.i_crit_edge:            ; preds = %for.body282.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body282.i

for.body328.i:                                    ; preds = %for.body328.i.for.body328.i_crit_edge, %for.body328.lr.ph.i
  %i.8580.i = phi i32 [ 0, %for.body328.lr.ph.i ], [ %inc338.i, %for.body328.i.for.body328.i_crit_edge ]
  %130 = ptrtoint ptr %vddc329.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vddc329.i, align 4
  %132 = ptrtoint ptr %vddci330.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %vddci330.i, align 2
  %vddc333.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.8580.i, i32 2
  %vddci336.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.8580.i, i32 3
  tail call void @btc_apply_voltage_delta_rules(ptr noundef %rdev, i16 noundef zeroext %131, i16 noundef zeroext %133, ptr noundef %vddc333.i, ptr noundef %vddci336.i) #9
  %inc338.i = add nuw nsw i32 %i.8580.i, 1
  %134 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %10, align 4
  %conv325.i = zext i16 %135 to i32
  %cmp326.i = icmp ult i32 %inc338.i, %conv325.i
  br i1 %cmp326.i, label %for.body328.i.for.body328.i_crit_edge, label %for.body328.i.for.end339.i_crit_edge

for.body328.i.for.end339.i_crit_edge:             ; preds = %for.body328.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end339.i

for.body328.i.for.body328.i_crit_edge:            ; preds = %for.body328.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body328.i

for.end339thread-pre-split.i:                     ; preds = %for.cond323.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %136)
  %.pr592.i = load i16, ptr %10, align 4
  br label %for.end339.i

for.end339.i:                                     ; preds = %for.end339thread-pre-split.i, %for.body328.i.for.end339.i_crit_edge
  %137 = phi i16 [ %.pr592.i, %for.end339thread-pre-split.i ], [ %135, %for.body328.i.for.end339.i_crit_edge ]
  %dc_compatible.i = getelementptr inbounds %struct.ni_ps, ptr %10, i32 0, i32 1
  %138 = ptrtoint ptr %dc_compatible.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %dc_compatible.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp343582.not.i = icmp eq i16 %137, 0
  br i1 %cmp343582.not.i, label %for.end339.i.ni_apply_state_adjust_rules.exit_crit_edge, label %for.body345.lr.ph.i

for.end339.i.ni_apply_state_adjust_rules.exit_crit_edge: ; preds = %for.end339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_apply_state_adjust_rules.exit

for.body345.lr.ph.i:                              ; preds = %for.end339.i
  %vddc354.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 2
  %min_vddc_for_pcie_gen2.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 16
  br label %for.body345.i

for.body345.i:                                    ; preds = %for.inc375.i.for.body345.i_crit_edge, %for.body345.lr.ph.i
  %i.9583.i = phi i32 [ 0, %for.body345.lr.ph.i ], [ %inc376.i, %for.inc375.i.for.body345.i_crit_edge ]
  %vddc348.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.9583.i, i32 2
  %139 = ptrtoint ptr %vddc348.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %vddc348.i, align 4
  %141 = ptrtoint ptr %vddc354.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %vddc354.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %140, i16 %142)
  %cmp356.i = icmp ugt i16 %140, %142
  br i1 %cmp356.i, label %if.then358.i, label %for.body345.i.if.end360.i_crit_edge

for.body345.i.if.end360.i_crit_edge:              ; preds = %for.body345.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end360.i

if.then358.i:                                     ; preds = %for.body345.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %dc_compatible.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %dc_compatible.i, align 2
  br label %if.end360.i

if.end360.i:                                      ; preds = %if.then358.i, %for.body345.i.if.end360.i_crit_edge
  %144 = ptrtoint ptr %vddc348.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vddc348.i, align 4
  %146 = ptrtoint ptr %min_vddc_for_pcie_gen2.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %min_vddc_for_pcie_gen2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %145, i16 %147)
  %cmp369.i = icmp ult i16 %145, %147
  br i1 %cmp369.i, label %if.then371.i, label %if.end360.i.for.inc375.i_crit_edge

if.end360.i.for.inc375.i_crit_edge:               ; preds = %if.end360.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc375.i

if.then371.i:                                     ; preds = %if.end360.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr %struct.ni_ps, ptr %10, i32 0, i32 2, i32 %i.9583.i, i32 4
  %148 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %149, -2
  store i32 %and.i, ptr %flags.i, align 4
  br label %for.inc375.i

for.inc375.i:                                     ; preds = %if.then371.i, %if.end360.i.for.inc375.i_crit_edge
  %inc376.i = add nuw nsw i32 %i.9583.i, 1
  %150 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %10, align 4
  %conv342.i = zext i16 %151 to i32
  %cmp343.i = icmp ult i32 %inc376.i, %conv342.i
  br i1 %cmp343.i, label %for.inc375.i.for.body345.i_crit_edge, label %for.inc375.i.ni_apply_state_adjust_rules.exit_crit_edge

for.inc375.i.ni_apply_state_adjust_rules.exit_crit_edge: ; preds = %for.inc375.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_apply_state_adjust_rules.exit

for.inc375.i.for.body345.i_crit_edge:             ; preds = %for.inc375.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body345.i

ni_apply_state_adjust_rules.exit:                 ; preds = %for.inc375.i.ni_apply_state_adjust_rules.exit_crit_edge, %for.end339.i.ni_apply_state_adjust_rules.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %requested_ps.sroa.0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25
  %call.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 65) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i)
  %cmp.not.i = icmp eq i8 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !101
  %call.i.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 130) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i.i)
  %cmp4.i = icmp eq i8 %call.i.i, 1
  br i1 %cmp4.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %ps_priv.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i.i, align 4
  %ps_priv.i28.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 9
  %4 = ptrtoint ptr %ps_priv.i28.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv.i28.i, align 4
  %vclk.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 3
  %6 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vclk.i, align 4
  %vclk2.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 3
  %8 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end.i107_crit_edge

if.end.if.end.i107_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

land.lhs.true.i:                                  ; preds = %if.end
  %dclk.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 4
  %10 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk.i, align 4
  %dclk3.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 4
  %12 = ptrtoint ptr %dclk3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp4.i106 = icmp eq i32 %11, %13
  br i1 %cmp4.i106, label %land.lhs.true.i.ni_set_uvd_clock_before_set_eng_clock.exit_crit_edge, label %land.lhs.true.i.if.end.i107_crit_edge

land.lhs.true.i.if.end.i107_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i107

land.lhs.true.i.ni_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_set_uvd_clock_before_set_eng_clock.exit

if.end.i107:                                      ; preds = %land.lhs.true.i.if.end.i107_crit_edge, %if.end.if.end.i107_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  %conv.i = zext i16 %15 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.ni_ps, ptr %3, i32 0, i32 2, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 4
  %conv7.i = zext i16 %19 to i32
  %sub8.i = add nsw i32 %conv7.i, -1
  %arrayidx9.i = getelementptr %struct.ni_ps, ptr %5, i32 0, i32 2, i32 %sub8.i
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp11.not.i = icmp ult i32 %17, %21
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end.i107.ni_set_uvd_clock_before_set_eng_clock.exit_crit_edge

if.end.i107.ni_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_set_uvd_clock_before_set_eng_clock.exit

if.end14.i:                                       ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #11
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %22 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic.i, align 8
  %set_uvd_clocks.i = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 20, i32 12
  %24 = ptrtoint ptr %set_uvd_clocks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_uvd_clocks.i, align 4
  %dclk16.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 4
  %26 = ptrtoint ptr %dclk16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dclk16.i, align 4
  %call17.i = tail call i32 %25(ptr noundef %rdev, i32 noundef %7, i32 noundef %27) #9
  br label %ni_set_uvd_clock_before_set_eng_clock.exit

ni_set_uvd_clock_before_set_eng_clock.exit:       ; preds = %if.end14.i, %if.end.i107.ni_set_uvd_clock_before_set_eng_clock.exit_crit_edge, %land.lhs.true.i.ni_set_uvd_clock_before_set_eng_clock.exit_crit_edge
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %28 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i.i, align 4
  %enable_power_containment.i = getelementptr inbounds %struct.ni_power_info, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %enable_power_containment.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable_power_containment.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %ni_set_uvd_clock_before_set_eng_clock.exit.if.end5_crit_edge, label %if.then.i

ni_set_uvd_clock_before_set_eng_clock.exit.if.end5_crit_edge: ; preds = %ni_set_uvd_clock_before_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.i:                                        ; preds = %ni_set_uvd_clock_before_set_eng_clock.exit
  %call11.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 90) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call11.i)
  %cmp13.not.i = icmp eq i8 %call11.i, 1
  %pc_enabled17.i = getelementptr inbounds %struct.ni_power_info, ptr %29, i32 0, i32 9
  %32 = ptrtoint ptr %pc_enabled17.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %pc_enabled17.i, align 1
  br i1 %cmp13.not.i, label %if.then.i.if.end5_crit_edge, label %if.then.i.cleanup.sink.split_crit_edge

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %if.then.i.if.end5_crit_edge, %ni_set_uvd_clock_before_set_eng_clock.exit.if.end5_crit_edge
  %33 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i.i, align 4
  %enable_cac.i = getelementptr inbounds %struct.ni_power_info, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %enable_cac.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable_cac.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i109 = icmp eq i8 %36, 0
  br i1 %tobool.not.i109, label %if.end5.if.end9_crit_edge, label %if.then.i110

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then.i110:                                     ; preds = %if.end5
  %cac_enabled25.i = getelementptr inbounds %struct.ni_power_info, ptr %34, i32 0, i32 6
  %37 = ptrtoint ptr %cac_enabled25.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cac_enabled25.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool26.not.i = icmp eq i8 %38, 0
  br i1 %tobool26.not.i, label %if.then.i110.if.end9_crit_edge, label %if.then27.i

if.then.i110.if.end9_crit_edge:                   ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then27.i:                                      ; preds = %if.then.i110
  %call28.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 84) #9
  %39 = ptrtoint ptr %cac_enabled25.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %cac_enabled25.i, align 2
  %support_cac_long_term_average30.i = getelementptr inbounds %struct.ni_power_info, ptr %34, i32 0, i32 5
  %40 = ptrtoint ptr %support_cac_long_term_average30.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %support_cac_long_term_average30.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool31.not.i = icmp eq i8 %41, 0
  br i1 %tobool31.not.i, label %if.then27.i.if.end9_crit_edge, label %if.then32.i

if.then27.i.if.end9_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then32.i:                                      ; preds = %if.then27.i
  %call33.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 111) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call33.i)
  %cmp35.not.i = icmp eq i8 %call33.i, 1
  br i1 %cmp35.not.i, label %if.then32.i.if.end9_crit_edge, label %if.then37.i

if.then32.i.if.end9_crit_edge:                    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then37.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %support_cac_long_term_average30.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %support_cac_long_term_average30.i, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then37.i, %if.then32.i.if.end9_crit_edge, %if.then27.i.if.end9_crit_edge, %if.then.i110.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %call10 = tail call i32 @rv770_halt_smc(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end9
  %smu_uvd_hs = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 12
  %43 = ptrtoint ptr %smu_uvd_hs to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %smu_uvd_hs, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool14.not = icmp eq i8 %44, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @btc_notify_uvd_to_smc(ptr noundef %rdev, ptr noundef %requested_rps) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %call17 = tail call fastcc i32 @ni_upload_sw_state(ptr noundef %rdev, ptr noundef %requested_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end16
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 2
  %45 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dynamic_ac_timing, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool21.not = icmp eq i8 %46, 0
  br i1 %tobool21.not, label %if.end20.if.end27_crit_edge, label %if.then22

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %if.end20
  %call23 = tail call fastcc i32 @ni_upload_mc_reg_table(ptr noundef %rdev, ptr noundef %requested_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end27_crit_edge, label %if.then22.cleanup.sink.split_crit_edge

if.then22.cleanup.sink.split_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then22.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %call.i112 = tail call fastcc i32 @ni_do_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %requested_rps, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool29.not = icmp eq i32 %call.i112, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end27
  %call32 = tail call i32 @rv770_resume_smc(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup.sink.split_crit_edge

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @rv770_set_sw_state(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup.sink.split_crit_edge

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.end35
  tail call void @ni_set_uvd_clock_after_set_eng_clock(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps)
  %call40 = tail call fastcc i32 @ni_enable_smc_cac(ptr noundef %rdev, ptr noundef %requested_rps, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup.sink.split_crit_edge

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end43:                                         ; preds = %if.end39
  %call44 = tail call fastcc i32 @ni_enable_power_containment(ptr noundef %rdev, ptr noundef %requested_rps, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup.sink.split_crit_edge

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end47:                                         ; preds = %if.end43
  %call48 = tail call fastcc i32 @ni_power_control_set_level(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end47.cleanup.sink.split_crit_edge, %if.end43.cleanup.sink.split_crit_edge, %if.end39.cleanup.sink.split_crit_edge, %if.end35.cleanup.sink.split_crit_edge, %if.end31.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %if.then22.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.13, %if.end.i.cleanup.sink.split_crit_edge ], [ @.str.13, %entry.cleanup.sink.split_crit_edge ], [ @.str.14, %if.then.i.cleanup.sink.split_crit_edge ], [ @.str.16, %if.end9.cleanup.sink.split_crit_edge ], [ @.str.17, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.18, %if.then22.cleanup.sink.split_crit_edge ], [ @.str.19, %if.end27.cleanup.sink.split_crit_edge ], [ @.str.20, %if.end31.cleanup.sink.split_crit_edge ], [ @.str.21, %if.end35.cleanup.sink.split_crit_edge ], [ @.str.15, %if.end39.cleanup.sink.split_crit_edge ], [ @.str.14, %if.end43.cleanup.sink.split_crit_edge ], [ @.str.22, %if.end47.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %entry.cleanup.sink.split_crit_edge ], [ -22, %if.then.i.cleanup.sink.split_crit_edge ], [ %call10, %if.end9.cleanup.sink.split_crit_edge ], [ %call17, %if.end16.cleanup.sink.split_crit_edge ], [ %call23, %if.then22.cleanup.sink.split_crit_edge ], [ %call.i112, %if.end27.cleanup.sink.split_crit_edge ], [ %call32, %if.end31.cleanup.sink.split_crit_edge ], [ %call36, %if.end35.cleanup.sink.split_crit_edge ], [ %call40, %if.end39.cleanup.sink.split_crit_edge ], [ %call44, %if.end43.cleanup.sink.split_crit_edge ], [ %call48, %if.end47.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.22.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end47.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_halt_smc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_notify_uvd_to_smc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_upload_sw_state(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state) unnamed_addr #2 align 64 {
entry:
  %t_l.i.i = alloca i32, align 4
  %t_h.i.i = alloca i32, align 4
  %sclk_tmp.i.i.i = alloca %struct.NISLANDS_SMC_SCLK_VALUE, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %state_table_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 57
  %0 = ptrtoint ptr %state_table_start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state_table_start, align 4
  %add = add i16 %1, 656
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2372) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 9
  %5 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ps_priv.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 4
  %conv.i = zext i16 %8 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %10, 100
  %div.i = udiv i32 %mul.i, 100
  %11 = ptrtoint ptr %radeon_new_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %radeon_new_state, align 4
  %and.i = and i32 %12, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i.i, align 8
  %15 = or i8 %14, 1
  store i8 %15, ptr %call7.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %levelCount.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %levelCount.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %levelCount.i, align 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %18)
  %cmp.i = icmp ugt i16 %18, 16
  br i1 %cmp.i, label %if.end.i.done_crit_edge, label %for.cond.preheader.i

if.end.i.done_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp12183.not.i = icmp eq i16 %18, 0
  br i1 %cmp12183.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_tmp.i.i.i, i32 0, i32 6
  %20 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_tmp.i.i.i, i32 0, i32 5
  %21 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_tmp.i.i.i, i32 0, i32 4
  %22 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_tmp.i.i.i, i32 0, i32 3
  %23 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_tmp.i.i.i, i32 0, i32 2
  %24 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk_tmp.i.i.i, i32 0, i32 1
  %entries.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %cac_leakage_table.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %enable_power_containment.i = getelementptr inbounds %struct.ni_power_info, ptr %4, i32 0, i32 10
  %dynamic_ac_timing.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end41.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0184.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc54.i, %if.end41.i.for.body.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %i.0184.i
  %call.i.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %25 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i.i, align 4
  %27 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 27440
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  %pcie_gen2.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %pcie_gen2.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pcie_gen2.i.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %for.body.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.body.i.cond.end.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %i.0184.i, i32 4
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body.i.cond.end.i.i_crit_edge
  %cond5.i.i = phi i8 [ %36, %cond.true.i.i ], [ 0, %for.body.i.cond.end.i.i_crit_edge ]
  %gen2PCIE.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 3
  %37 = ptrtoint ptr %gen2PCIE.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %cond5.i.i, ptr %gen2PCIE.i.i, align 1
  %38 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx15.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sclk_tmp.i.i.i) #9
  %40 = call ptr @memset(ptr %sclk_tmp.i.i.i, i32 255, i32 28)
  %call.i.i.i = call fastcc i32 @ni_calculate_sclk_params(ptr noundef %rdev, i32 noundef %39, ptr noundef nonnull %sclk_tmp.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %ni_populate_sclk_value.exit.i.i

ni_populate_sclk_value.exit.i.i:                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sclk_tmp.i.i.i) #9
  br label %ni_convert_power_level_to_smc.exit.thread.i

if.end.i.i:                                       ; preds = %cond.end.i.i
  %sclk6.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10
  %41 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %19, align 4
  %sclk_value1.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10, i32 6
  %43 = ptrtoint ptr %sclk_value1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sclk_value1.i.i.i, align 4
  %44 = ptrtoint ptr %sclk_tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sclk_tmp.i.i.i, align 4
  %46 = ptrtoint ptr %sclk6.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sclk6.i.i, align 4
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %24, align 4
  %vCG_SPLL_FUNC_CNTL_23.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10, i32 1
  %49 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %vCG_SPLL_FUNC_CNTL_23.i.i.i, align 4
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %23, align 4
  %vCG_SPLL_FUNC_CNTL_34.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10, i32 2
  %52 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %vCG_SPLL_FUNC_CNTL_34.i.i.i, align 4
  %53 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %22, align 4
  %vCG_SPLL_FUNC_CNTL_45.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10, i32 3
  %55 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %vCG_SPLL_FUNC_CNTL_45.i.i.i, align 4
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %21, align 4
  %vCG_SPLL_SPREAD_SPECTRUM6.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10, i32 4
  %58 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %vCG_SPLL_SPREAD_SPECTRUM6.i.i.i, align 4
  %59 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %20, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_27.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 10, i32 5
  %61 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %vCG_SPLL_SPREAD_SPECTRUM_27.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sclk_tmp.i.i.i) #9
  %mcFlags.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 7
  %62 = ptrtoint ptr %mcFlags.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %mcFlags.i.i, align 1
  %mclk_stutter_mode_threshold.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i.i, i32 0, i32 40
  %63 = ptrtoint ptr %mclk_stutter_mode_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mclk_stutter_mode_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool9.not.i.i = icmp eq i32 %64, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end24.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %mclk.i.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %i.0184.i, i32 1
  %65 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mclk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp.not.i.i = icmp ugt i32 %66, %64
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.if.end24.i.i_crit_edge, label %land.lhs.true12.i.i

land.lhs.true.i.i.if.end24.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

land.lhs.true12.i.i:                              ; preds = %land.lhs.true.i.i
  %uvd_enabled.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 13
  %67 = ptrtoint ptr %uvd_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %uvd_enabled.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool13.not.i.i = icmp ne i8 %68, 0
  %and15.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  %or.cond.i.i = select i1 %tobool13.not.i.i, i1 true, i1 %tobool16.not.i.i
  %and18.i.i = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  %or.cond197.i.i = select i1 %or.cond.i.i, i1 true, i1 %tobool19.not.i.i
  br i1 %or.cond197.i.i, label %land.lhs.true12.i.i.if.end24.i.i_crit_edge, label %if.then20.i.i

land.lhs.true12.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then20.i.i:                                    ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %mcFlags.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 8, ptr %mcFlags.i.i, align 1
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then20.i.i, %land.lhs.true12.i.i.if.end24.i.i_crit_edge, %land.lhs.true.i.i.if.end24.i.i_crit_edge, %if.end.i.i.if.end24.i.i_crit_edge
  %70 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %call.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool25.not.i.i = icmp eq i8 %71, 0
  %mclk97.i.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %i.0184.i, i32 1
  %72 = ptrtoint ptr %mclk97.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mclk97.i.i, align 4
  br i1 %tobool25.not.i.i, label %if.else95.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end24.i.i
  %mclk_edc_enable_threshold.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i.i, i32 0, i32 42
  %74 = ptrtoint ptr %mclk_edc_enable_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mclk_edc_enable_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp28.i.i = icmp ugt i32 %73, %75
  br i1 %cmp28.i.i, label %if.then30.i.i, label %if.then26.i.i.if.end35.i.i_crit_edge

if.then26.i.i.if.end35.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i.i

if.then30.i.i:                                    ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %mcFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mcFlags.i.i, align 1
  %78 = or i8 %77, 1
  store i8 %78, ptr %mcFlags.i.i, align 1
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %if.then30.i.i, %if.then26.i.i.if.end35.i.i_crit_edge
  %79 = ptrtoint ptr %mclk97.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mclk97.i.i, align 4
  %mclk_edc_wr_enable_threshold.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 17
  %81 = ptrtoint ptr %mclk_edc_wr_enable_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mclk_edc_wr_enable_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp37.i.i = icmp ugt i32 %80, %82
  br i1 %cmp37.i.i, label %if.then39.i.i, label %if.end35.i.i.if.end44.i.i_crit_edge

if.end35.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

if.then39.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %mcFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mcFlags.i.i, align 1
  %85 = or i8 %84, 2
  store i8 %85, ptr %mcFlags.i.i, align 1
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then39.i.i, %if.end35.i.i.if.end44.i.i_crit_edge
  %86 = ptrtoint ptr %mclk97.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mclk97.i.i, align 4
  %call46.i.i = tail call zeroext i8 @cypress_get_strobe_mode_settings(ptr noundef %rdev, i32 noundef %87) #9
  %strobeMode.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 6
  %88 = ptrtoint ptr %strobeMode.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %call46.i.i, ptr %strobeMode.i.i, align 2
  %89 = and i8 %call46.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool50.not.i.i = icmp eq i8 %89, 0
  %90 = ptrtoint ptr %mclk97.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mclk97.i.i, align 4
  br i1 %tobool50.not.i.i, label %if.else74.i.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.end44.i.i
  %call53.i.i = tail call zeroext i8 @cypress_get_mclk_frequency_ratio(ptr noundef %rdev, i32 noundef %91, i1 noundef zeroext true) #9
  %conv54.i.i = zext i8 %call53.i.i to i32
  %92 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i199.i.i = getelementptr i8, ptr %93, i32 10852
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %95 = lshr i32 %94, 8
  %and56.i.i = and i32 %95, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and56.i.i, i32 %conv54.i.i)
  %cmp57.not.i.i = icmp ugt i32 %and56.i.i, %conv54.i.i
  %96 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i.i.i, align 4
  br i1 %cmp57.not.i.i, label %if.else.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i201.i.i = getelementptr i8, ptr %97, i32 10836
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %99 = and i32 %98, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool63.i.i = icmp ne i32 %99, 0
  br label %if.end84.i.i

if.else.i.i:                                      ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i203.i.i = getelementptr i8, ptr %97, i32 10840
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %101 = and i32 %100, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool69.i.i = icmp ne i32 %101, 0
  br label %if.end84.i.i

if.else74.i.i:                                    ; preds = %if.end44.i.i
  %mclk_rtt_mode_threshold.i.i = getelementptr inbounds %struct.ni_power_info, ptr %26, i32 0, i32 3
  %102 = ptrtoint ptr %mclk_rtt_mode_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mclk_rtt_mode_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %103)
  %cmp76.i.i = icmp ugt i32 %91, %103
  br i1 %cmp76.i.i, label %if.then78.i.i, label %if.else74.i.i.if.end84.i.i_crit_edge

if.else74.i.i.if.end84.i.i_crit_edge:             ; preds = %if.else74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i

if.then78.i.i:                                    ; preds = %if.else74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %mcFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %mcFlags.i.i, align 1
  %106 = or i8 %105, 4
  store i8 %106, ptr %mcFlags.i.i, align 1
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then78.i.i, %if.else74.i.i.if.end84.i.i_crit_edge, %if.else.i.i, %if.then59.i.i
  %dll_state_on.0.shrunk.i.i = phi i1 [ %tobool63.i.i, %if.then59.i.i ], [ %tobool69.i.i, %if.else.i.i ], [ false, %if.then78.i.i ], [ false, %if.else74.i.i.if.end84.i.i_crit_edge ]
  %107 = ptrtoint ptr %mclk97.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mclk97.i.i, align 4
  %mclk87.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 11
  %109 = ptrtoint ptr %strobeMode.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %strobeMode.i.i, align 2
  %111 = and i8 %110, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp91.i.i = icmp ne i8 %111, 0
  %call94.i.i = tail call fastcc i32 @ni_populate_mclk_value(ptr noundef %rdev, i32 noundef %108, ptr noundef %mclk87.i.i, i1 noundef zeroext %cmp91.i.i, i1 noundef zeroext %dll_state_on.0.shrunk.i.i) #9
  br label %if.end100.i.i

if.else95.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mclk98.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 11
  %call99.i.i = tail call fastcc i32 @ni_populate_mclk_value(ptr noundef %rdev, i32 noundef %73, ptr noundef %mclk98.i.i, i1 noundef zeroext true, i1 noundef zeroext true) #9
  br label %if.end100.i.i

if.end100.i.i:                                    ; preds = %if.else95.i.i, %if.end84.i.i
  %ret.0.i.i = phi i32 [ %call94.i.i, %if.end84.i.i ], [ %call99.i.i, %if.else95.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool101.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool101.not.i.i, label %if.end103.i.i, label %if.end100.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge

if.end100.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge: ; preds = %if.end100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_power_level_to_smc.exit.thread.i

if.end103.i.i:                                    ; preds = %if.end100.i.i
  %vddc_voltage_table.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 19
  %vddc.i.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %i.0184.i, i32 2
  %112 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %vddc.i.i, align 4
  %vddc104.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 12
  %114 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %vddc_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp3.not5.i.i.i = icmp eq i32 %115, 0
  br i1 %cmp3.not5.i.i.i, label %if.end103.i.i.ni_populate_voltage_value.exit.i.i_crit_edge, label %if.end103.i.i.for.body.i.i.i_crit_edge

if.end103.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end103.i.i
  br label %for.body.i.i.i

if.end103.i.i.ni_populate_voltage_value.exit.i.i_crit_edge: ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end103.i.i.for.body.i.i.i_crit_edge
  %i.04.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end103.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 19, i32 3, i32 %i.04.i.i.i
  %116 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %117, i16 %113)
  %cmp3.not.i.i.i = icmp ult i16 %117, %113
  br i1 %cmp3.not.i.i.i, label %for.inc.i.i.i, label %if.then.i204.i.i

if.then.i204.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i.i.i = trunc i32 %i.04.i.i.i to i8
  %index.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 12, i32 1
  %118 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv5.i.i.i, ptr %index.i.i.i, align 2
  %119 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx.i.i.i, align 4
  %121 = ptrtoint ptr %vddc104.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %vddc104.i.i, align 4
  br label %ni_populate_voltage_value.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %115
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.ni_populate_voltage_value.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.ni_populate_voltage_value.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit.i.i

ni_populate_voltage_value.exit.i.i:               ; preds = %for.inc.i.i.i.ni_populate_voltage_value.exit.i.i_crit_edge, %if.then.i204.i.i, %if.end103.i.i.ni_populate_voltage_value.exit.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %i.04.i.i.i, %if.then.i204.i.i ], [ 0, %if.end103.i.i.ni_populate_voltage_value.exit.i.i_crit_edge ], [ %115, %for.inc.i.i.i.ni_populate_voltage_value.exit.i.i_crit_edge ]
  %122 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vddc_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i.i.i, i32 %123)
  %cmp11.not.i.i.i = icmp ult i32 %i.02.i.i.i, %123
  br i1 %cmp11.not.i.i.i, label %if.end108.i.i, label %ni_populate_voltage_value.exit.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge

ni_populate_voltage_value.exit.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge: ; preds = %ni_populate_voltage_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_power_level_to_smc.exit.thread.i

if.end108.i.i:                                    ; preds = %ni_populate_voltage_value.exit.i.i
  %124 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %entries.i.i.i, align 4
  %tobool.not.i205.i.i = icmp eq ptr %125, null
  br i1 %tobool.not.i205.i.i, label %if.end108.i.i.ni_get_std_voltage_value.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end108.i.i.ni_get_std_voltage_value.exit.i.i_crit_edge: ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_get_std_voltage_value.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %index.i206.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 12, i32 1
  %126 = ptrtoint ptr %index.i206.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %index.i206.i.i, align 2
  %conv.i.i.i = zext i8 %127 to i32
  %128 = ptrtoint ptr %cac_leakage_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cac_leakage_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %129, %conv.i.i.i
  %arrayidx.i207.i.i = getelementptr %union.radeon_cac_leakage_entry, ptr %125, i32 %conv.i.i.i
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %arrayidx.i207.i.i, ptr %vddc104.i.i
  br label %ni_get_std_voltage_value.exit.i.i

ni_get_std_voltage_value.exit.i.i:                ; preds = %land.lhs.true.i.i.i, %if.end108.i.i.ni_get_std_voltage_value.exit.i.i_crit_edge
  %storemerge.in.i.i.i = phi ptr [ %vddc104.i.i, %if.end108.i.i.ni_get_std_voltage_value.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %130 = ptrtoint ptr %storemerge.in.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %130, i32 2)
  %storemerge.i.i.i = load i16, ptr %storemerge.in.i.i.i, align 1
  %index.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 12, i32 1
  %131 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %index.i.i, align 2
  %std_vddc115.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 15
  %index1.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 15, i32 1
  %133 = ptrtoint ptr %index1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %index1.i.i.i, align 2
  %134 = ptrtoint ptr %std_vddc115.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %storemerge.i.i.i, ptr %std_vddc115.i.i, align 4
  %vddci_control.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %vddci_control.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %vddci_control.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool116.not.i.i = icmp eq i8 %136, 0
  br i1 %tobool116.not.i.i, label %ni_get_std_voltage_value.exit.i.i.if.end123.i.i_crit_edge, label %if.then117.i.i

ni_get_std_voltage_value.exit.i.i.if.end123.i.i_crit_edge: ; preds = %ni_get_std_voltage_value.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i.i

if.then117.i.i:                                   ; preds = %ni_get_std_voltage_value.exit.i.i
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 20
  %vddci.i.i = getelementptr %struct.ni_ps, ptr %6, i32 0, i32 2, i32 %i.0184.i, i32 3
  %137 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %vddci.i.i, align 2
  %vddci118.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 14
  %139 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %vddci_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp3.not5.i208.i.i = icmp eq i32 %140, 0
  br i1 %cmp3.not5.i208.i.i, label %if.then117.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge, label %if.then117.i.i.for.body.i212.i.i_crit_edge

if.then117.i.i.for.body.i212.i.i_crit_edge:       ; preds = %if.then117.i.i
  br label %for.body.i212.i.i

if.then117.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge: ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit222.i.i

for.body.i212.i.i:                                ; preds = %for.inc.i218.i.i.for.body.i212.i.i_crit_edge, %if.then117.i.i.for.body.i212.i.i_crit_edge
  %i.04.i209.i.i = phi i32 [ %inc.i216.i.i, %for.inc.i218.i.i.for.body.i212.i.i_crit_edge ], [ 0, %if.then117.i.i.for.body.i212.i.i_crit_edge ]
  %arrayidx.i210.i.i = getelementptr %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 20, i32 3, i32 %i.04.i209.i.i
  %141 = ptrtoint ptr %arrayidx.i210.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %arrayidx.i210.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %142, i16 %138)
  %cmp3.not.i211.i.i = icmp ult i16 %142, %138
  br i1 %cmp3.not.i211.i.i, label %for.inc.i218.i.i, label %if.then.i215.i.i

if.then.i215.i.i:                                 ; preds = %for.body.i212.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i213.i.i = trunc i32 %i.04.i209.i.i to i8
  %index.i214.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 14, i32 1
  %143 = ptrtoint ptr %index.i214.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv5.i213.i.i, ptr %index.i214.i.i, align 2
  %144 = ptrtoint ptr %arrayidx.i210.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx.i210.i.i, align 4
  %146 = ptrtoint ptr %vddci118.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %vddci118.i.i, align 4
  br label %ni_populate_voltage_value.exit222.i.i

for.inc.i218.i.i:                                 ; preds = %for.body.i212.i.i
  %inc.i216.i.i = add nuw i32 %i.04.i209.i.i, 1
  %exitcond.not.i217.i.i = icmp eq i32 %inc.i216.i.i, %140
  br i1 %exitcond.not.i217.i.i, label %for.inc.i218.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge, label %for.inc.i218.i.i.for.body.i212.i.i_crit_edge

for.inc.i218.i.i.for.body.i212.i.i_crit_edge:     ; preds = %for.inc.i218.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i212.i.i

for.inc.i218.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge: ; preds = %for.inc.i218.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit222.i.i

ni_populate_voltage_value.exit222.i.i:            ; preds = %for.inc.i218.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge, %if.then.i215.i.i, %if.then117.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge
  %i.02.i219.i.i = phi i32 [ %i.04.i209.i.i, %if.then.i215.i.i ], [ 0, %if.then117.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge ], [ %140, %for.inc.i218.i.i.ni_populate_voltage_value.exit222.i.i_crit_edge ]
  %147 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %vddci_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i219.i.i, i32 %148)
  %cmp11.not.i220.i.i = icmp ult i32 %i.02.i219.i.i, %148
  br i1 %cmp11.not.i220.i.i, label %ni_populate_voltage_value.exit222.i.i.if.end123.i.i_crit_edge, label %ni_populate_voltage_value.exit222.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge

ni_populate_voltage_value.exit222.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge: ; preds = %ni_populate_voltage_value.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_power_level_to_smc.exit.thread.i

ni_populate_voltage_value.exit222.i.i.if.end123.i.i_crit_edge: ; preds = %ni_populate_voltage_value.exit222.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %ni_populate_voltage_value.exit222.i.i.if.end123.i.i_crit_edge, %ni_get_std_voltage_value.exit.i.i.if.end123.i.i_crit_edge
  %149 = ptrtoint ptr %mclk97.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mclk97.i.i, align 4
  %mvdd.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 13
  %call.i223.i.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i.i.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %mvdd_control.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i223.i.i, i32 0, i32 6
  %151 = ptrtoint ptr %mvdd_control.i.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %mvdd_control.i.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i224.i.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i224.i.i, label %if.then.i225.i.i, label %if.end.i.i.i

if.then.i225.i.i:                                 ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mvdd_high_index.i.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 15
  br label %if.end23.i

if.end.i.i.i:                                     ; preds = %if.end123.i.i
  %mvdd_split_frequency.i.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i223.i.i, i32 0, i32 23
  %153 = ptrtoint ptr %mvdd_split_frequency.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mvdd_split_frequency.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %150)
  %cmp.not.i.i.i = icmp ult i32 %154, %150
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then2.i.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mvdd_low_index.i.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 16
  br label %if.end23.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mvdd_high_index5.i.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 15
  br label %if.end23.i

ni_convert_power_level_to_smc.exit.thread.i:      ; preds = %ni_populate_voltage_value.exit222.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge, %ni_populate_voltage_value.exit.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge, %if.end100.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge, %ni_populate_sclk_value.exit.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %ni_populate_sclk_value.exit.i.i ], [ -22, %ni_populate_voltage_value.exit222.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge ], [ -22, %ni_populate_voltage_value.exit.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge ], [ %ret.0.i.i, %if.end100.i.i.ni_convert_power_level_to_smc.exit.thread.i_crit_edge ]
  %155 = trunc i32 %i.0184.i to i8
  %conv18167.i = add i8 %155, 3
  %arbRefreshState168.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 20
  %156 = ptrtoint ptr %arbRefreshState168.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv18167.i, ptr %arbRefreshState168.i, align 1
  br label %done

if.end23.i:                                       ; preds = %if.else.i.i.i, %if.then2.i.i.i, %if.then.i225.i.i
  %.sink.in.i.i.i = phi ptr [ %mvdd_low_index.i.i.i, %if.then2.i.i.i ], [ %mvdd_high_index5.i.i.i, %if.else.i.i.i ], [ %mvdd_high_index.i.i.i, %if.then.i225.i.i ]
  %storemerge19.i.i.i = phi i16 [ 0, %if.then2.i.i.i ], [ -1, %if.else.i.i.i ], [ -1, %if.then.i225.i.i ]
  %157 = ptrtoint ptr %.sink.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %.sink.i.i.i = load i8, ptr %.sink.in.i.i.i, align 1
  %index3.i.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 13, i32 1
  %158 = ptrtoint ptr %index3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %.sink.i.i.i, ptr %index3.i.i.i, align 2
  %159 = ptrtoint ptr %mvdd.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %storemerge19.i.i.i, ptr %mvdd.i.i, align 4
  %160 = trunc i32 %i.0184.i to i8
  %conv18.i = add i8 %160, 3
  %arbRefreshState.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 20
  %161 = ptrtoint ptr %arbRefreshState.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv18.i, ptr %arbRefreshState.i, align 1
  %162 = ptrtoint ptr %enable_power_containment.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %enable_power_containment.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool24.not.i = icmp eq i8 %163, 0
  br i1 %tobool24.not.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %div.i)
  %cmp29.i = icmp uge i32 %165, %div.i
  br label %if.end41.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0184.i)
  %cmp34.i = icmp ugt i32 %i.0184.i, 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else.i, %if.then25.i
  %conv31.sink.in.i = phi i1 [ %cmp34.i, %if.else.i ], [ %cmp29.i, %if.then25.i ]
  %conv31.sink.i = zext i1 %conv31.sink.in.i to i8
  %166 = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 2
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %conv31.sink.i, ptr %166, align 2
  %168 = ptrtoint ptr %dynamic_ac_timing.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %dynamic_ac_timing.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool42.not.i = icmp eq i8 %169, 0
  %conv45.i = add i8 %160, 2
  %spec.select.i = select i1 %tobool42.not.i, i8 0, i8 %conv45.i
  %170 = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0184.i, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %spec.select.i, ptr %170, align 1
  %172 = ptrtoint ptr %levelCount.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %levelCount.i, align 1
  %inc.i = add i8 %173, 1
  store i8 %inc.i, ptr %levelCount.i, align 1
  %inc54.i = add nuw nsw i32 %i.0184.i, 1
  %174 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %6, align 4
  %conv11.i = zext i16 %175 to i32
  %cmp12.i = icmp ult i32 %inc54.i, %conv11.i
  br i1 %cmp12.i, label %if.end41.i.for.body.i_crit_edge, label %if.end41.i.for.end.i_crit_edge

if.end41.i.for.end.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end41.i.for.body.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %if.end41.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %div55.i = udiv i32 %mul.i, 51200
  %call56.i = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 128, i32 noundef %div55.i) #9
  %176 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ps_priv.i.i, align 4
  %call1.i119.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %177, align 4
  %conv14.i.i = zext i16 %179 to i32
  %sub15.i.i = add nsw i32 %conv14.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %179)
  %cmp16.i.i = icmp ugt i16 %179, 1
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %for.end.i.ni_populate_smc_sp.exit.i_crit_edge

for.end.i.ni_populate_smc_sp.exit.i_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_smc_sp.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.end.i
  %dsp.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i119.i, i32 0, i32 47
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.017.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %180 = ptrtoint ptr %dsp.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dsp.i.i, align 4
  %bSP.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.017.i.i, i32 9
  %182 = ptrtoint ptr %bSP.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %bSP.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %183 = ptrtoint ptr %177 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %177, align 4
  %conv.i.i = zext i16 %184 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %cmp.i.i = icmp slt i32 %inc.i.i, %sub.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ni_populate_smc_sp.exit.i_crit_edge

for.body.i.i.ni_populate_smc_sp.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_smc_sp.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

ni_populate_smc_sp.exit.i:                        ; preds = %for.body.i.i.ni_populate_smc_sp.exit.i_crit_edge, %for.end.i.ni_populate_smc_sp.exit.i_crit_edge
  %sub.lcssa.i.i = phi i32 [ %sub15.i.i, %for.end.i.ni_populate_smc_sp.exit.i_crit_edge ], [ %sub.i.i, %for.body.i.i.ni_populate_smc_sp.exit.i_crit_edge ]
  %psp.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i119.i, i32 0, i32 48
  %185 = ptrtoint ptr %psp.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %psp.i.i, align 4
  %bSP8.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %sub.lcssa.i.i, i32 9
  %187 = ptrtoint ptr %bSP8.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %bSP8.i.i, align 4
  %call.i120.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i121.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %188 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv.i.i, align 4
  %190 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ps_priv.i.i, align 4
  %enable_power_containment.i.i = getelementptr inbounds %struct.ni_power_info, ptr %189, i32 0, i32 10
  %192 = ptrtoint ptr %enable_power_containment.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %enable_power_containment.i.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp.i124.i = icmp eq i8 %193, 0
  br i1 %cmp.i124.i, label %ni_populate_smc_sp.exit.i.if.end61.i_crit_edge, label %if.end.i125.i

ni_populate_smc_sp.exit.i.if.end61.i_crit_edge:   ; preds = %ni_populate_smc_sp.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.end.i125.i:                                    ; preds = %ni_populate_smc_sp.exit.i
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %195)
  %cmp6.i.i = icmp eq i16 %195, 0
  br i1 %cmp6.i.i, label %if.end.i125.i.if.then59.i_crit_edge, label %if.end9.i.i

if.end.i125.i.if.then59.i_crit_edge:              ; preds = %if.end.i125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i

if.end9.i.i:                                      ; preds = %if.end.i125.i
  %196 = ptrtoint ptr %levelCount.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %levelCount.i, align 1
  %198 = zext i8 %197 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %195, i16 %198)
  %cmp13.not.i.i = icmp eq i16 %195, %198
  br i1 %cmp13.not.i.i, label %if.end16.i.i, label %if.end9.i.i.if.then59.i_crit_edge

if.end9.i.i.if.then59.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i

if.end16.i.i:                                     ; preds = %if.end9.i.i
  %tdp_adjustment.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 28
  %199 = ptrtoint ptr %tdp_adjustment.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %tdp_adjustment.i.i, align 4
  %tdp_od_limit.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 27
  %201 = ptrtoint ptr %tdp_od_limit.i.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %tdp_od_limit.i.i.i, align 4
  %conv.i.i126.i = zext i16 %202 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %conv.i.i126.i)
  %cmp.i.i127.i = icmp ugt i32 %200, %conv.i.i126.i
  br i1 %cmp.i.i127.i, label %if.end16.i.i.if.then59.i_crit_edge, label %if.end20.i.i

if.end16.i.i.if.then59.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %sub13.i.i.i = sub i32 100, %200
  %tdp_limit16.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 22
  %203 = ptrtoint ptr %tdp_limit16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %tdp_limit16.i.i.i, align 4
  %mul17.i.i.i = mul i32 %204, %sub13.i.i.i
  %div18.i.i.i = udiv i32 %mul17.i.i.i, 100
  %near_tdp_limit21.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 23
  %205 = ptrtoint ptr %near_tdp_limit21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %near_tdp_limit21.i.i.i, align 4
  %sub25.neg.i.i.i = sub i32 %206, %204
  %sub26.i.i.i = add i32 %sub25.neg.i.i.i, %div18.i.i.i
  %call21.i.i = tail call fastcc i32 @ni_calculate_power_boost_limit(ptr noundef %rdev, ptr noundef %radeon_new_state, i32 noundef %sub26.i.i.i) #9
  %state_table_start.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i120.i, i32 0, i32 57
  %207 = ptrtoint ptr %state_table_start.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %state_table_start.i.i, align 4
  %add23.i.i = add i16 %208, 196
  %asic.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %209 = ptrtoint ptr %asic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %asic.i.i.i, align 8
  %get_xclk.i.i.i = getelementptr inbounds %struct.radeon_asic, ptr %210, i32 0, i32 9
  %211 = ptrtoint ptr %get_xclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %get_xclk.i.i.i, align 4
  %call.i.i128.i = tail call i32 %212(ptr noundef %rdev) #9
  %rmmio.i.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %213 = ptrtoint ptr %rmmio.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rmmio.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %214, i32 2188
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %216 = and i32 %215, -12648448
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #9
  %div.i.i.i = udiv i32 1000000000, %call.i.i128.i
  %div2.i.i.i = udiv i32 %div.i.i.i, 10000
  %mul.i.i.i = shl i32 %call21.i.i, 2
  %mul.i195.i.i = mul i32 %mul.i.i.i, %217
  %shl.i.i.i = mul i32 %mul.i195.i.i, %div2.i.i.i
  %sram_end.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i120.i, i32 0, i32 59
  %218 = ptrtoint ptr %sram_end.i.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %sram_end.i.i, align 4
  %call27.i.i = tail call i32 @rv770_write_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext %add23.i.i, i32 noundef %shl.i.i.i, i16 noundef zeroext %219) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  %dpm2.i.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 34
  %220 = ptrtoint ptr %dpm2.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %dpm2.i.i, align 8
  %NearTDPDec.i.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 35, i32 1
  %221 = ptrtoint ptr %NearTDPDec.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %NearTDPDec.i.i, align 1
  %AboveSafeInc.i.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 35, i32 2
  %222 = ptrtoint ptr %AboveSafeInc.i.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %AboveSafeInc.i.i, align 2
  %BelowSafeInc.i.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 35, i32 3
  %223 = ptrtoint ptr %BelowSafeInc.i.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %BelowSafeInc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool40200.i.i = icmp ne i32 %call21.i.i, 0
  %tobool40.i.i = select i1 %tobool28.not.i.i, i1 %tobool40200.i.i, i1 false
  %cond.i.i = select i1 %tobool40.i.i, i8 2, i8 0
  %stateFlags.i.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 29, i32 2
  %224 = ptrtoint ptr %stateFlags.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %stateFlags.i.i, align 2
  %or.i.i = or i8 %225, %cond.i.i
  store i8 %or.i.i, ptr %stateFlags.i.i, align 2
  %performance_levels.i.i = getelementptr inbounds %struct.ni_ps, ptr %191, i32 0, i32 2
  %226 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %227)
  %cmp47202.i.i = icmp ugt i16 %227, 1
  br i1 %cmp47202.i.i, label %for.body.lr.ph.i130.i, label %if.end20.i.i.if.end61.i_crit_edge

if.end20.i.i.if.end61.i_crit_edge:                ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

for.body.lr.ph.i130.i:                            ; preds = %if.end20.i.i
  %conv46201.i.i = zext i16 %227 to i32
  %uvd_enabled.i129.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i121.i, i32 0, i32 13
  br label %for.body.i132.i

for.body.i132.i:                                  ; preds = %if.end93.i.i.for.body.i132.i_crit_edge, %for.body.lr.ph.i130.i
  %conv46204.i.i = phi i32 [ %conv46201.i.i, %for.body.lr.ph.i130.i ], [ %conv46.i.i, %if.end93.i.i.for.body.i132.i_crit_edge ]
  %i.0203.i.i = phi i32 [ 1, %for.body.lr.ph.i130.i ], [ %inc.i135.i, %if.end93.i.i.for.body.i132.i_crit_edge ]
  %sub.i131.i = add nsw i32 %i.0203.i.i, -1
  %arrayidx49.i.i = getelementptr %struct.ni_ps, ptr %191, i32 0, i32 2, i32 %sub.i131.i
  %228 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %arrayidx49.i.i, align 4
  %arrayidx51.i.i = getelementptr %struct.ni_ps, ptr %191, i32 0, i32 2, i32 %i.0203.i.i
  %230 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx51.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %229)
  %cmp60.i.i = icmp ult i32 %231, %229
  br i1 %cmp60.i.i, label %for.body.i132.i.if.then59.i_crit_edge, label %if.end63.i.i

for.body.i132.i.if.then59.i_crit_edge:            ; preds = %for.body.i132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i

if.end63.i.i:                                     ; preds = %for.body.i132.i
  %sub55.i.i = add nsw i32 %conv46204.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0203.i.i, i32 %sub55.i.i)
  %cmp56.not.i.i = icmp eq i32 %i.0203.i.i, %sub55.i.i
  %conv64.i.i = select i1 %cmp56.not.i.i, i32 90, i32 0
  %cmp56.not.not.i.i = xor i1 %cmp56.not.i.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %229, i32 %231)
  %cmp67.i.i = icmp eq i32 %229, %231
  %or.cond.i133.i = select i1 %cmp56.not.not.i.i, i1 true, i1 %cmp67.i.i
  br i1 %or.cond.i133.i, label %if.end63.i.i.if.end79.i.i_crit_edge, label %lor.lhs.false69.i.i

if.end63.i.i.if.end79.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i.i

lor.lhs.false69.i.i:                              ; preds = %if.end63.i.i
  %232 = ptrtoint ptr %uvd_enabled.i129.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %uvd_enabled.i129.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool70.not.i.i = icmp eq i8 %233, 0
  br i1 %tobool70.not.i.i, label %if.else.i134.i, label %lor.lhs.false69.i.i.if.end79.i.i_crit_edge

lor.lhs.false69.i.i.if.end79.i.i_crit_edge:       ; preds = %lor.lhs.false69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i.i

if.else.i134.i:                                   ; preds = %lor.lhs.false69.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0203.i.i)
  %cmp73.i.i = icmp eq i32 %i.0203.i.i, 1
  br i1 %cmp73.i.i, label %if.else.i134.i.if.end79.i.i_crit_edge, label %if.else76.i.i

if.else.i134.i.if.end79.i.i_crit_edge:            ; preds = %if.else.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i.i

if.else76.i.i:                                    ; preds = %if.else.i134.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul i32 %conv64.i.i, %229
  %div.i.i = udiv i32 %mul.i.i, 100
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.else76.i.i, %if.else.i134.i.if.end79.i.i_crit_edge, %lor.lhs.false69.i.i.if.end79.i.i_crit_edge, %if.end63.i.i.if.end79.i.i_crit_edge
  %min_sclk.0.i.i = phi i32 [ %div.i.i, %if.else76.i.i ], [ %231, %lor.lhs.false69.i.i.if.end79.i.i_crit_edge ], [ %231, %if.end63.i.i.if.end79.i.i_crit_edge ], [ %229, %if.else.i134.i.if.end79.i.i_crit_edge ]
  %234 = ptrtoint ptr %performance_levels.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %performance_levels.i.i, align 4
  %236 = tail call i32 @llvm.umax.i32(i32 %min_sclk.0.i.i, i32 %235) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %cmp90.i.i = icmp eq i32 %236, 0
  br i1 %cmp90.i.i, label %if.end79.i.i.if.then59.i_crit_edge, label %if.end93.i.i

if.end79.i.i.if.then59.i_crit_edge:               ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59.i

if.end93.i.i:                                     ; preds = %if.end79.i.i
  %sub94.i.i = sub i32 %231, %236
  %mul95.i.i = shl i32 %sub94.i.i, 8
  %div96.i.i = udiv i32 %mul95.i.i, %231
  %conv97.i.i = trunc i32 %div96.i.i to i8
  %dpm2100.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0203.i.i, i32 24
  %237 = ptrtoint ptr %dpm2100.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %conv97.i.i, ptr %dpm2100.i.i, align 4
  %NearTDPDec105.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0203.i.i, i32 24, i32 5
  %238 = ptrtoint ptr %NearTDPDec105.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 10, ptr %NearTDPDec105.i.i, align 1
  %AboveSafeInc109.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0203.i.i, i32 24, i32 6
  %239 = ptrtoint ptr %AboveSafeInc109.i.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 5, ptr %AboveSafeInc109.i.i, align 2
  %BelowSafeInc113.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0203.i.i, i32 24, i32 7
  %240 = ptrtoint ptr %BelowSafeInc113.i.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 20, ptr %BelowSafeInc113.i.i, align 1
  %241 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %191, align 4
  %conv115.i.i = zext i16 %242 to i32
  %sub116.i.i = add nsw i32 %conv115.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0203.i.i, i32 %sub116.i.i)
  %cmp117.not.i.i = icmp ne i32 %i.0203.i.i, %sub116.i.i
  %spec.select194.i.i = select i1 %cmp117.not.i.i, i1 %tobool40.i.i, i1 false
  %cond120.i.i = select i1 %spec.select194.i.i, i8 2, i8 0
  %stateFlags123.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0203.i.i, i32 19
  %243 = ptrtoint ptr %stateFlags123.i.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %stateFlags123.i.i, align 2
  %or125.i.i = or i8 %cond120.i.i, %244
  store i8 %or125.i.i, ptr %stateFlags123.i.i, align 2
  %inc.i135.i = add nuw nsw i32 %i.0203.i.i, 1
  %245 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %191, align 4
  %conv46.i.i = zext i16 %246 to i32
  %cmp47.i.i = icmp ult i32 %inc.i135.i, %conv46.i.i
  br i1 %cmp47.i.i, label %if.end93.i.i.for.body.i132.i_crit_edge, label %if.end93.i.i.if.end61.i_crit_edge

if.end93.i.i.if.end61.i_crit_edge:                ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61.i

if.end93.i.i.for.body.i132.i_crit_edge:           ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i132.i

if.then59.i:                                      ; preds = %if.end79.i.i.if.then59.i_crit_edge, %for.body.i132.i.if.then59.i_crit_edge, %if.end16.i.i.if.then59.i_crit_edge, %if.end9.i.i.if.then59.i_crit_edge, %if.end.i125.i.if.then59.i_crit_edge
  %enable_power_containment60.i = getelementptr inbounds %struct.ni_power_info, ptr %4, i32 0, i32 10
  %247 = ptrtoint ptr %enable_power_containment60.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %enable_power_containment60.i, align 2
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then59.i, %if.end93.i.i.if.end61.i_crit_edge, %if.end20.i.i.if.end61.i_crit_edge, %ni_populate_smc_sp.exit.i.if.end61.i_crit_edge
  %248 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %priv.i.i, align 4
  %250 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ps_priv.i.i, align 4
  %enable_sq_ramping2.i.i = getelementptr inbounds %struct.ni_power_info, ptr %249, i32 0, i32 12
  %252 = ptrtoint ptr %enable_sq_ramping2.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %enable_sq_ramping2.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.not.i139.i = icmp eq i8 %253, 0
  %254 = ptrtoint ptr %251 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %251, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %255)
  %cmp.i140.i = icmp eq i16 %255, 0
  br i1 %cmp.i140.i, label %if.end61.i.if.then64.i_crit_edge, label %if.end.i142.i

if.end61.i.if.then64.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i

if.end.i142.i:                                    ; preds = %if.end61.i
  %256 = ptrtoint ptr %levelCount.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %levelCount.i, align 1
  %258 = zext i8 %257 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %255, i16 %258)
  %cmp7.not.i.i = icmp eq i16 %255, %258
  br i1 %cmp7.not.i.i, label %if.end10.i.i, label %if.end.i142.i.if.then64.i_crit_edge

if.end.i142.i.if.then64.i_crit_edge:              ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i

if.end10.i.i:                                     ; preds = %if.end.i142.i
  %sq_ramping_threshold.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 25
  %259 = ptrtoint ptr %sq_ramping_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %sq_ramping_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %cmp11.i.i = icmp eq i32 %260, 0
  br i1 %cmp11.i.i, label %if.end10.i.i.if.then64.i_crit_edge, label %if.end10.i.i.for.body.i144.i_crit_edge

if.end10.i.i.for.body.i144.i_crit_edge:           ; preds = %if.end10.i.i
  br label %for.body.i144.i

if.end10.i.i.if.then64.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64.i

for.body.i144.i:                                  ; preds = %for.body.i144.i.for.body.i144.i_crit_edge, %if.end10.i.i.for.body.i144.i_crit_edge
  %i.062.i.i = phi i32 [ %inc.i143.i, %for.body.i144.i.for.body.i144.i_crit_edge ], [ 0, %if.end10.i.i.for.body.i144.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ni_ps, ptr %251, i32 0, i32 2, i32 %i.062.i.i
  %261 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %260)
  %cmp22.not.i.i = icmp ult i32 %262, %260
  %brmerge.i.i = select i1 %cmp22.not.i.i, i1 true, i1 %tobool.not.i139.i
  %sq_power_throttle.0.i.i = select i1 %brmerge.i.i, i32 1073692671, i32 1073676306
  %sq_power_throttle2.0.i.i = select i1 %brmerge.i.i, i32 2080325631, i32 2015232021
  %SQPowerThrottle.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.062.i.i, i32 21
  %263 = ptrtoint ptr %SQPowerThrottle.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %sq_power_throttle.0.i.i, ptr %SQPowerThrottle.i.i, align 4
  %SQPowerThrottle_2.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.062.i.i, i32 22
  %264 = ptrtoint ptr %SQPowerThrottle_2.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %sq_power_throttle2.0.i.i, ptr %SQPowerThrottle_2.i.i, align 4
  %inc.i143.i = add nuw nsw i32 %i.062.i.i, 1
  %265 = ptrtoint ptr %251 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %251, align 4
  %conv16.i.i = zext i16 %266 to i32
  %cmp17.i.i = icmp ult i32 %inc.i143.i, %conv16.i.i
  br i1 %cmp17.i.i, label %for.body.i144.i.for.body.i144.i_crit_edge, label %for.body.i144.i.if.end65.i_crit_edge

for.body.i144.i.if.end65.i_crit_edge:             ; preds = %for.body.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

for.body.i144.i.for.body.i144.i_crit_edge:        ; preds = %for.body.i144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i144.i

if.then64.i:                                      ; preds = %if.end10.i.i.if.then64.i_crit_edge, %if.end.i142.i.if.then64.i_crit_edge, %if.end61.i.if.then64.i_crit_edge
  %enable_sq_ramping.i = getelementptr inbounds %struct.ni_power_info, ptr %4, i32 0, i32 12
  %267 = ptrtoint ptr %enable_sq_ramping.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 0, ptr %enable_sq_ramping.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then64.i, %for.body.i144.i.if.end65.i_crit_edge
  %call.i146.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i147.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %268 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ps_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_l.i.i) #9
  %270 = ptrtoint ptr %t_l.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 -1, ptr %t_l.i.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_h.i.i) #9
  %271 = ptrtoint ptr %t_h.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 -1, ptr %t_h.i.i, align 4, !annotation !104
  %272 = ptrtoint ptr %269 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %269, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %273)
  %cmp.i149.i = icmp ugt i16 %273, 8
  br i1 %cmp.i149.i, label %ni_convert_power_state_to_smc.exit, label %if.end.i151.i

if.end.i151.i:                                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %273)
  %cmp6.i150.i = icmp ult i16 %273, 2
  %aT.i.i = getelementptr inbounds %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 3
  br i1 %cmp6.i150.i, label %if.then8.i.i, label %if.end9.i152.i

if.then8.i.i:                                     ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  %274 = ptrtoint ptr %aT.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 65535, ptr %aT.i.i, align 4
  br label %if.end7

if.end9.i152.i:                                   ; preds = %if.end.i151.i
  %275 = ptrtoint ptr %aT.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %aT.i.i, align 4
  %276 = ptrtoint ptr %269 to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %269, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %277)
  %cmp15.not110.i.i = icmp ult i16 %277, 2
  br i1 %cmp15.not110.i.i, label %if.end9.i152.i.if.end7_crit_edge, label %for.body.lr.ph.i154.i

if.end9.i152.i.if.end7_crit_edge:                 ; preds = %if.end9.i152.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.lr.ph.i154.i:                            ; preds = %if.end9.i152.i
  %uvd_enabled.i153.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i147.i, i32 0, i32 13
  %smu_uvd_hs.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i147.i, i32 0, i32 12
  %bsp.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i146.i, i32 0, i32 43
  %pbsp.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i146.i, i32 0, i32 45
  br label %for.body.i156.i

for.body.i156.i:                                  ; preds = %if.end46.i.i.for.body.i156.i_crit_edge, %for.body.lr.ph.i154.i
  %i.0111.i.i = phi i32 [ 0, %for.body.lr.ph.i154.i ], [ %add66.i.i, %if.end46.i.i.for.body.i156.i_crit_edge ]
  %278 = ptrtoint ptr %uvd_enabled.i153.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %uvd_enabled.i153.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %279)
  %tobool.not.i155.i = icmp eq i8 %279, 0
  br i1 %tobool.not.i155.i, label %if.else.i159.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %for.body.i156.i
  call void @__sanitizer_cov_trace_pc() #11
  %280 = ptrtoint ptr %smu_uvd_hs.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %smu_uvd_hs.i.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool18.not.i.i = icmp eq i8 %281, 0
  %cond.i157.i = select i1 %tobool18.not.i.i, i32 8, i32 2
  %mul.i158.i = mul nuw nsw i32 %i.0111.i.i, 1000
  %282 = mul i32 %mul.i158.i, %cond.i157.i
  %mul20.i.i = add i32 %282, 2000
  %add21.i.i = add nuw nsw i32 %i.0111.i.i, 1
  br label %if.end37.i.i

if.else.i159.i:                                   ; preds = %for.body.i156.i
  call void @__sanitizer_cov_trace_pc() #11
  %add27.i.i = add nuw nsw i32 %i.0111.i.i, 1
  %mul28.i.i = mul nuw nsw i32 %add27.i.i, 1000
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else.i159.i, %if.then17.i.i
  %add27.sink.i.i = phi i32 [ %add27.i.i, %if.else.i159.i ], [ %add21.i.i, %if.then17.i.i ]
  %mul28.sink.i.i = phi i32 [ %mul28.i.i, %if.else.i159.i ], [ %mul20.i.i, %if.then17.i.i ]
  %arrayidx31.i.i = getelementptr %struct.ni_ps, ptr %269, i32 0, i32 2, i32 %add27.sink.i.i
  %283 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx31.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.ni_ps, ptr %269, i32 0, i32 2, i32 %i.0111.i.i
  %285 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx34.i.i, align 4
  %call36.i.i = call i32 @r600_calculate_at(i32 noundef %mul28.sink.i.i, i32 noundef 500, i32 noundef %284, i32 noundef %286, ptr noundef nonnull %t_l.i.i, ptr noundef nonnull %t_h.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %tobool38.not.i.i = icmp eq i32 %call36.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end37.i.i.if.end46.i.i_crit_edge, label %if.then39.i160.i

if.end37.i.i.if.end46.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i.i

if.then39.i160.i:                                 ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %287 = mul nuw nsw i32 %i.0111.i.i, 1000
  %sub42.i.i = add nuw nsw i32 %287, 750
  %288 = ptrtoint ptr %t_h.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %sub42.i.i, ptr %t_h.i.i, align 4
  %add45.i.i = add nuw nsw i32 %287, 1250
  %289 = ptrtoint ptr %t_l.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %add45.i.i, ptr %t_l.i.i, align 4
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then39.i160.i, %if.end37.i.i.if.end46.i.i_crit_edge
  %aT49.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %i.0111.i.i, i32 8
  %290 = ptrtoint ptr %aT49.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %aT49.i.i, align 4
  %and.i.i = and i32 %291, -65536
  %292 = ptrtoint ptr %t_l.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %t_l.i.i, align 4
  %294 = ptrtoint ptr %bsp.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %bsp.i.i, align 4
  %mul50.i.i = mul i32 %295, %293
  %div.i161.i = udiv i32 %mul50.i.i, 20000
  %or.i162.i = or i32 %div.i161.i, %and.i.i
  store i32 %or.i162.i, ptr %aT49.i.i, align 4
  %296 = ptrtoint ptr %269 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %269, align 4
  %conv55.i.i = zext i16 %297 to i32
  %sub56.i.i = add nsw i32 %conv55.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0111.i.i, i32 %sub56.i.i)
  %cmp57.i.i = icmp eq i32 %i.0111.i.i, %sub56.i.i
  %cond60.in.i.i = select i1 %cmp57.i.i, ptr %pbsp.i.i, ptr %bsp.i.i
  %298 = ptrtoint ptr %cond60.in.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %cond60.i.i = load i32, ptr %cond60.in.i.i, align 4
  %299 = ptrtoint ptr %t_h.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %t_h.i.i, align 4
  %mul61.i.i = mul i32 %300, %cond60.i.i
  %div62.i.i = udiv i32 %mul61.i.i, 20000
  %shl63.i.i = shl i32 %div62.i.i, 16
  %or64.i.i = or i32 %shl63.i.i, 65535
  %add66.i.i = add nuw nsw i32 %i.0111.i.i, 1
  %aT68.i.i = getelementptr %struct.NISLANDS_SMC_SWSTATE, ptr %call7.i.i, i32 0, i32 4, i32 %add66.i.i, i32 8
  %301 = ptrtoint ptr %aT68.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %or64.i.i, ptr %aT68.i.i, align 4
  %302 = ptrtoint ptr %269 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %269, align 4
  %conv14.i163.i = zext i16 %303 to i32
  %sub.i164.i = add nsw i32 %conv14.i163.i, -2
  %cmp15.not.not.i.i = icmp slt i32 %i.0111.i.i, %sub.i164.i
  br i1 %cmp15.not.not.i.i, label %if.end46.i.i.for.body.i156.i_crit_edge, label %if.end46.i.i.if.end7_crit_edge

if.end46.i.i.if.end7_crit_edge:                   ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end46.i.i.for.body.i156.i_crit_edge:           ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i156.i

ni_convert_power_state_to_smc.exit:               ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_h.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_l.i.i) #9
  br label %done

if.end7:                                          ; preds = %if.end46.i.i.if.end7_crit_edge, %if.end9.i152.i.if.end7_crit_edge, %if.then8.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_h.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_l.i.i) #9
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %304 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %sram_end, align 4
  %call9 = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2372, i16 noundef zeroext %305) #9
  br label %done

done:                                             ; preds = %if.end7, %ni_convert_power_state_to_smc.exit, %ni_convert_power_level_to_smc.exit.thread.i, %if.end.i.done_crit_edge
  %ret.0 = phi i32 [ -22, %ni_convert_power_state_to_smc.exit ], [ %call9, %if.end7 ], [ %retval.0.i.ph.i, %ni_convert_power_level_to_smc.exit.thread.i ], [ -22, %if.end.i.done_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_upload_mc_reg_table(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %smc_mc_reg_table = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 24
  %4 = call ptr @memset(ptr %smc_mc_reg_table, i32 0, i32 2692)
  %5 = load ptr, ptr %ps_priv.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp8.not.i = icmp eq i16 %7, 0
  br i1 %cmp8.not.i, label %entry.ni_convert_mc_reg_table_to_smc.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ni_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_to_smc.exit

for.body.i:                                       ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.09.i, 2
  %arrayidx2.i = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 3, i32 %add.i
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %num_entries.i.i = getelementptr inbounds %struct.ni_power_info, ptr %9, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_entries.i.i, align 1
  %conv.i.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp32.not.i.i = icmp eq i8 %11, 0
  br i1 %cmp32.not.i.i, label %for.body.i.for.end.thread.i.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.for.end.thread.i.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %mclk.i.i = getelementptr %struct.ni_ps, ptr %5, i32 0, i32 2, i32 %i.09.i, i32 1
  %12 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.033.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ni_power_info, ptr %9, i32 0, i32 2, i32 3, i32 %i.033.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp3.not.i.i = icmp ugt i32 %13, %15
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.033.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %conv.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %i.033.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %conv.i.i)
  %cmp8.i.i = icmp eq i32 %i.0.lcssa.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i.i)
  %cmp10.not.i.i = icmp eq i32 %i.0.lcssa.i.i, 0
  %dec.i.i = add nsw i32 %i.0.lcssa.i.i, -1
  br i1 %cmp10.not.i.i, label %for.end.i.i.for.end.thread.i.i_crit_edge, label %for.end.i.i._crit_edge

for.end.i.i._crit_edge:                           ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %16

for.end.i.i.for.end.thread.i.i_crit_edge:         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i.i.for.end.thread.i.i_crit_edge, %for.body.i.for.end.thread.i.i_crit_edge
  %cmp844.i.i = phi i1 [ %cmp8.i.i, %for.end.i.i.for.end.thread.i.i_crit_edge ], [ true, %for.body.i.for.end.thread.i.i_crit_edge ]
  br label %16

16:                                               ; preds = %for.end.thread.i.i, %for.end.i.i._crit_edge
  %cmp843.i.i = phi i1 [ %cmp844.i.i, %for.end.thread.i.i ], [ %cmp8.i.i, %for.end.i.i._crit_edge ]
  %i.0.lcssa41.i.i = phi i32 [ 0, %for.end.thread.i.i ], [ %i.0.lcssa.i.i, %for.end.i.i._crit_edge ]
  %17 = phi i32 [ 0, %for.end.thread.i.i ], [ %dec.i.i, %for.end.i.i._crit_edge ]
  %i.1.i.i = select i1 %cmp843.i.i, i32 %17, i32 %i.0.lcssa41.i.i
  %mc_reg_table.i.i = getelementptr inbounds %struct.ni_power_info, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mc_reg_table.i.i, align 4
  %conv18.i.i = zext i8 %19 to i32
  %valid_flag.i.i = getelementptr inbounds %struct.ni_power_info, ptr %9, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %valid_flag.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %valid_flag.i.i, align 2
  %conv20.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp8.not.i.i.i = icmp eq i8 %19, 0
  br i1 %cmp8.not.i.i.i, label %.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %.for.body.i.i.i_crit_edge

.for.body.i.i.i_crit_edge:                        ; preds = %16
  br label %for.body.i.i.i

.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %16
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_entry_to_smc.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %.for.body.i.i.i_crit_edge
  %j.010.i.i.i = phi i32 [ %inc3.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %i.09.i.i.i = phi i32 [ %i.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %.for.body.i.i.i_crit_edge ]
  %shl.i.i.i = shl nuw i32 1, %j.010.i.i.i
  %and.i.i.i = and i32 %shl.i.i.i, %conv20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr %struct.ni_power_info, ptr %9, i32 0, i32 2, i32 3, i32 %i.1.i.i, i32 1, i32 %j.010.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx2.i.i.i = getelementptr [32 x i32], ptr %arrayidx2.i, i32 0, i32 %i.09.i.i.i
  %24 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %arrayidx2.i.i.i, align 1
  %inc.i.i.i = add i32 %i.09.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc.i.i.i, %if.then.i.i.i ], [ %i.09.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc3.i.i.i = add nuw nsw i32 %j.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc3.i.i.i, %conv18.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_entry_to_smc.exit.i

ni_convert_mc_reg_table_entry_to_smc.exit.i:      ; preds = %for.inc.i.i.i.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge, %.ni_convert_mc_reg_table_entry_to_smc.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %5, align 4
  %conv.i = zext i16 %26 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i_crit_edge, label %ni_convert_mc_reg_table_entry_to_smc.exit.i.ni_convert_mc_reg_table_to_smc.exit_crit_edge

ni_convert_mc_reg_table_entry_to_smc.exit.i.ni_convert_mc_reg_table_to_smc.exit_crit_edge: ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_convert_mc_reg_table_to_smc.exit

ni_convert_mc_reg_table_entry_to_smc.exit.i.for.body.i_crit_edge: ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ni_convert_mc_reg_table_to_smc.exit:              ; preds = %ni_convert_mc_reg_table_entry_to_smc.exit.i.ni_convert_mc_reg_table_to_smc.exit_crit_edge, %entry.ni_convert_mc_reg_table_to_smc.exit_crit_edge
  %mc_reg_table_start = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 24
  %27 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mc_reg_table_start, align 4
  %add = add i16 %28, 388
  %arrayidx = getelementptr %struct.ni_power_info, ptr %1, i32 0, i32 24, i32 3, i32 2
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %3, align 4
  %mul = shl i16 %30, 7
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %31 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sram_end, align 4
  %call7 = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add, ptr noundef %arrayidx, i16 noundef zeroext %mul, i16 noundef zeroext %32) #9
  ret i32 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_resume_smc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_set_sw_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_power_control_set_level(ptr noundef %rdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %call.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 65) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i)
  %cmp.not.i = icmp eq i8 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #9, !srcloc !101
  %call.i.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 130) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i.i)
  %cmp4.i = icmp eq i8 %call.i.i, 1
  br i1 %cmp4.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 @rv770_halt_smc(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @ni_populate_smc_tdp_limits(ptr noundef %rdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @rv770_resume_smc(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @rv770_set_sw_state(ptr noundef %rdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12 ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_dpm_post_set_power_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %ps_priv.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 9
  %0 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i.i, align 4
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25
  %4 = call ptr @memcpy(ptr %current_rps.i, ptr %requested_rps, i32 40)
  %current_ps.i = getelementptr inbounds %struct.ni_power_info, ptr %3, i32 0, i32 22
  %5 = call ptr @memcpy(ptr %current_ps.i, ptr %1, i32 324)
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25, i32 9
  %6 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %vddc59.i.i = alloca i16, align 2
  %vddci60.i.i = alloca i16, align 2
  %mvdd.i.i = alloca i16, align 2
  %data_offset.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 12544, i32 noundef 3520, i32 noundef 2) #13
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i.i, ptr %priv, align 4
  tail call void @rv770_get_max_vddc(ptr noundef %rdev) #9
  %ulv = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 22
  %2 = ptrtoint ptr %ulv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %ulv, align 4
  %acpi_vddc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 36
  %3 = ptrtoint ptr %acpi_vddc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %acpi_vddc, align 8
  %acpi_vddci = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 14
  %4 = ptrtoint ptr %acpi_vddci to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %acpi_vddci, align 2
  %min_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 27
  %5 = ptrtoint ptr %min_vddc_in_table to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %min_vddc_in_table, align 4
  %max_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 26
  %6 = ptrtoint ptr %max_vddc_in_table to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %max_vddc_in_table, align 2
  %call1 = tail call i32 @r600_get_platform_caps(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mode_info1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #9
  %7 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #9
  %8 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %frev.i, align 1, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #9
  %9 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %crev.i, align 1, !annotation !104
  %10 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %11, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #9
  br i1 %call.i, label %if.end.i, label %if.end3.ni_parse_power_table.exit.thread_crit_edge

if.end3.ni_parse_power_table.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_parse_power_table.exit.thread

if.end.i:                                         ; preds = %if.end3
  %12 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bios.i, align 4
  %16 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %17 to i32
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv.i
  %ucNumStates.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 2
  %18 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucNumStates.i, align 1
  %conv3.i = zext i8 %19 to i32
  %20 = mul nuw nsw i32 %conv3.i, 40
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %dpm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %21 = ptrtoint ptr %dpm.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i.i, ptr %dpm.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.ni_parse_power_table.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.ni_parse_power_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_parse_power_table.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %22 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucNumStates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp151.not.i = icmp eq i8 %23, 0
  br i1 %cmp151.not.i, label %for.cond.preheader.i.if.end7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 6
  %ucStateEntrySize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 3
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 8
  %ucNonClockSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 5
  %boot_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 7
  %ucClockInfoSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 4
  %default_mclk.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %default_sclk.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  %max_clock_voltage_on_ac.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %mclk79.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 1
  %vddc85.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 2
  %vddci91.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc76.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0152.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc77.i, %for.inc76.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode_info1.i, align 4
  %bios15.i = getelementptr inbounds %struct.atom_context, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %bios15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bios15.i, align 4
  %28 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data_offset.i, align 2
  %conv16.i = zext i16 %29 to i32
  %add.ptr17.i = getelementptr i8, ptr %27, i32 %conv16.i
  %30 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usStateArrayOffset.i, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31) #9
  %conv18.i = zext i16 %32 to i32
  %add.ptr19.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv18.i
  %33 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv20.i = zext i8 %34 to i32
  %mul.i = mul i32 %i.0152.i, %conv20.i
  %add.ptr21.i = getelementptr i8, ptr %add.ptr19.i, i32 %mul.i
  %35 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36) #9
  %conv26.i = zext i16 %37 to i32
  %add.ptr27.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv26.i
  %38 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr21.i, align 1
  %conv28.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %ucNonClockSize.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucNonClockSize.i, align 1
  %conv29.i = zext i8 %41 to i32
  %mul30.i = mul nuw nsw i32 %conv29.i, %conv28.i
  %add.ptr31.i = getelementptr i8, ptr %add.ptr27.i, i32 %mul30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %tobool34.not.i = icmp eq i8 %34, 1
  br i1 %tobool34.not.i, label %for.body.i.for.inc76.i_crit_edge, label %if.then35.i

for.body.i.for.inc76.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i

if.then35.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 324) #12
  %cmp37.i = icmp eq ptr %call7.i.i.i, null
  %43 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dpm.i, align 4
  br i1 %cmp37.i, label %if.then39.i, label %if.end43.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %44) #9
  br label %ni_parse_power_table.exit.thread

if.end43.i:                                       ; preds = %if.then35.i
  %ps_priv.i = getelementptr %struct.radeon_ps, ptr %44, i32 %i.0152.i, i32 9
  %45 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i, ptr %ps_priv.i, align 4
  %46 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dpm.i, align 4
  %arrayidx50.i = getelementptr %struct.radeon_ps, ptr %47, i32 %i.0152.i
  %48 = ptrtoint ptr %ucNonClockSize.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucNonClockSize.i, align 1
  %ulCapsAndSettings.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 3
  %50 = ptrtoint ptr %ulCapsAndSettings.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %ulCapsAndSettings.i.i, align 1
  %52 = call i32 @llvm.bswap.i32(i32 %51) #9
  %53 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx50.i, align 4
  %54 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %add.ptr31.i, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #9
  %conv.i.i = zext i16 %56 to i32
  %class.i.i = getelementptr %struct.radeon_ps, ptr %47, i32 %i.0152.i, i32 1
  %57 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv.i.i, ptr %class.i.i, align 4
  %usClassification2.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 5
  %58 = ptrtoint ptr %usClassification2.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %usClassification2.i.i, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59) #9
  %conv1.i.i = zext i16 %60 to i32
  %class2.i.i = getelementptr %struct.radeon_ps, ptr %47, i32 %i.0152.i, i32 2
  %61 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv1.i.i, ptr %class2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %49)
  %cmp.i.i = icmp ugt i8 %49, 12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %ulVCLK.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 6
  %62 = ptrtoint ptr %ulVCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ulVCLK.i.i, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #9
  %vclk.i.i = getelementptr %struct.radeon_ps, ptr %47, i32 %i.0152.i, i32 3
  %65 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %vclk.i.i, align 4
  %ulDCLK.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 7
  %66 = ptrtoint ptr %ulDCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %ulDCLK.i.i, align 1
  %68 = call i32 @llvm.bswap.i32(i32 %67) #9
  br label %if.end12.i.i

if.else.i.i:                                      ; preds = %if.end43.i
  %call.i.i = call zeroext i1 @r600_is_uvd_state(i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #9
  %vclk7.i.i = getelementptr %struct.radeon_ps, ptr %47, i32 %i.0152.i, i32 3
  br i1 %call.i.i, label %if.then6.i.i, label %if.else9.i.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %vclk7.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 53300, ptr %vclk7.i.i, align 4
  br label %if.end12.i.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %vclk7.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %vclk7.i.i, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.else9.i.i, %if.then6.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 40000, %if.then6.i.i ], [ 0, %if.else9.i.i ], [ %68, %if.then.i.i ]
  %dclk8.i.i = getelementptr %struct.radeon_ps, ptr %47, i32 %i.0152.i, i32 4
  %71 = ptrtoint ptr %dclk8.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i.i, ptr %dclk8.i.i, align 4
  %72 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %class.i.i, align 4
  %and.i.i = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.i.i.if.end15.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.if.end15.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx50.i, ptr %boot_ps.i.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then14.i.i, %if.end12.i.i.if.end15.i.i_crit_edge
  %75 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %class.i.i, align 4
  %and17.i.i = and i32 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end15.i.i.ni_parse_pplib_non_clock_info.exit.i_crit_edge, label %if.then19.i.i

if.end15.i.i.ni_parse_pplib_non_clock_info.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_parse_pplib_non_clock_info.exit.i

if.then19.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %arrayidx50.i, ptr %uvd_ps.i.i, align 4
  br label %ni_parse_pplib_non_clock_info.exit.i

ni_parse_pplib_non_clock_info.exit.i:             ; preds = %if.then19.i.i, %if.end15.i.i.ni_parse_pplib_non_clock_info.exit.i_crit_edge
  %ucClockStateIndices.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE, ptr %add.ptr21.i, i32 0, i32 1
  %78 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ucStateEntrySize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %79)
  %cmp57148.i = icmp ugt i8 %79, 1
  br i1 %cmp57148.i, label %ni_parse_pplib_non_clock_info.exit.i.for.body59.i_crit_edge, label %ni_parse_pplib_non_clock_info.exit.i.for.inc76.i_crit_edge

ni_parse_pplib_non_clock_info.exit.i.for.inc76.i_crit_edge: ; preds = %ni_parse_pplib_non_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i

ni_parse_pplib_non_clock_info.exit.i.for.body59.i_crit_edge: ; preds = %ni_parse_pplib_non_clock_info.exit.i
  br label %for.body59.i

for.body59.i:                                     ; preds = %ni_parse_pplib_clock_info.exit.i.for.body59.i_crit_edge, %ni_parse_pplib_non_clock_info.exit.i.for.body59.i_crit_edge
  %j.0149.i = phi i32 [ %inc.i, %ni_parse_pplib_clock_info.exit.i.for.body59.i_crit_edge ], [ 0, %ni_parse_pplib_non_clock_info.exit.i.for.body59.i_crit_edge ]
  %80 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mode_info1.i, align 4
  %bios61.i = getelementptr inbounds %struct.atom_context, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %bios61.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bios61.i, align 4
  %84 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %data_offset.i, align 2
  %conv62.i = zext i16 %85 to i32
  %add.ptr63.i = getelementptr i8, ptr %83, i32 %conv62.i
  %86 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87) #9
  %conv64.i = zext i16 %88 to i32
  %add.ptr65.i = getelementptr i8, ptr %add.ptr63.i, i32 %conv64.i
  %arrayidx66.i = getelementptr i8, ptr %ucClockStateIndices.i, i32 %j.0149.i
  %89 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx66.i, align 1
  %conv67.i = zext i8 %90 to i32
  %91 = ptrtoint ptr %ucClockInfoSize.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ucClockInfoSize.i, align 1
  %conv68.i = zext i8 %92 to i32
  %mul69.i = mul nuw nsw i32 %conv68.i, %conv67.i
  %add.ptr70.i = getelementptr i8, ptr %add.ptr65.i, i32 %mul69.i
  %93 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dpm.i, align 4
  %call.i131.i = call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %call1.i.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %ps_priv.i.i.i = getelementptr %struct.radeon_ps, ptr %94, i32 %i.0152.i, i32 9
  %95 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ps_priv.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ni_ps, ptr %96, i32 0, i32 2, i32 %j.0149.i
  %97 = trunc i32 %j.0149.i to i16
  %conv.i132.i = add i16 %97, 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i132.i, ptr %96, align 4
  %99 = ptrtoint ptr %add.ptr70.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %add.ptr70.i, align 1
  %101 = call i16 @llvm.bswap.i16(i16 %100) #9
  %conv3.i.i = zext i16 %101 to i32
  %102 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv3.i.i, ptr %arrayidx.i.i, align 4
  %ucEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70.i, i32 0, i32 1
  %103 = ptrtoint ptr %ucEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ucEngineClockHigh.i.i, align 1
  %conv4.i.i = zext i8 %104 to i32
  %shl.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv3.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %usMemoryClockLow.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70.i, i32 0, i32 2
  %105 = ptrtoint ptr %usMemoryClockLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %usMemoryClockLow.i.i, align 1
  %107 = call i16 @llvm.bswap.i16(i16 %106) #9
  %conv6.i.i = zext i16 %107 to i32
  %mclk.i.i = getelementptr %struct.ni_ps, ptr %96, i32 0, i32 2, i32 %j.0149.i, i32 1
  %108 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %conv6.i.i, ptr %mclk.i.i, align 4
  %ucMemoryClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70.i, i32 0, i32 3
  %109 = ptrtoint ptr %ucMemoryClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %ucMemoryClockHigh.i.i, align 1
  %conv7.i.i = zext i8 %110 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 16
  %or10.i.i = or i32 %shl8.i.i, %conv6.i.i
  store i32 %or10.i.i, ptr %mclk.i.i, align 4
  %usVDDC.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70.i, i32 0, i32 4
  %111 = ptrtoint ptr %usVDDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %usVDDC.i.i, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112) #9
  %vddc.i.i = getelementptr %struct.ni_ps, ptr %96, i32 0, i32 2, i32 %j.0149.i, i32 2
  %114 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %vddc.i.i, align 4
  %usVDDCI.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70.i, i32 0, i32 5
  %115 = ptrtoint ptr %usVDDCI.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %usVDDCI.i.i, align 1
  %117 = call i16 @llvm.bswap.i16(i16 %116) #9
  %vddci.i.i = getelementptr %struct.ni_ps, ptr %96, i32 0, i32 2, i32 %j.0149.i, i32 3
  %118 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %vddci.i.i, align 2
  %ulFlags.i.i = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %add.ptr70.i, i32 0, i32 7
  %119 = ptrtoint ptr %ulFlags.i.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load i32, ptr %ulFlags.i.i, align 1
  %121 = call i32 @llvm.bswap.i32(i32 %120) #9
  %flags.i.i = getelementptr %struct.ni_ps, ptr %96, i32 0, i32 2, i32 %j.0149.i, i32 4
  %122 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %flags.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %112)
  %cmp.i133.i = icmp eq i16 %112, 511
  br i1 %cmp.i133.i, label %if.then.i135.i, label %for.body59.i.if.end17.i.i_crit_edge

for.body59.i.if.end17.i.i_crit_edge:              ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then.i135.i:                                   ; preds = %for.body59.i
  %max_vddc.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i131.i, i32 0, i32 25
  %123 = ptrtoint ptr %max_vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %max_vddc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool.not.i134.i = icmp eq i16 %124, 0
  br i1 %tobool.not.i134.i, label %if.then.i135.i.if.end17.i.i_crit_edge, label %if.then14.i136.i

if.then.i135.i.if.end17.i.i_crit_edge:            ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then14.i136.i:                                 ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %vddc.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then14.i136.i, %if.then.i135.i.if.end17.i.i_crit_edge, %for.body59.i.if.end17.i.i_crit_edge
  %class.i137.i = getelementptr %struct.radeon_ps, ptr %94, i32 %i.0152.i, i32 1
  %126 = ptrtoint ptr %class.i137.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %class.i137.i, align 4
  %and.i138.i = and i32 %127, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i138.i)
  %tobool18.not.i139.i = icmp eq i32 %and.i138.i, 0
  br i1 %tobool18.not.i139.i, label %if.end17.i.i.if.end30.i.i_crit_edge, label %if.then19.i140.i

if.end17.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.then19.i140.i:                                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %vddc.i.i, align 4
  %acpi_vddc.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i131.i, i32 0, i32 36
  %130 = ptrtoint ptr %acpi_vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %129, ptr %acpi_vddc.i.i, align 4
  %131 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vddci.i.i, align 2
  %acpi_vddci.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 14
  %133 = ptrtoint ptr %acpi_vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %acpi_vddci.i.i, align 2
  %flags24.i.i = getelementptr inbounds %struct.ni_ps, ptr %96, i32 0, i32 2, i32 0, i32 4
  %134 = ptrtoint ptr %flags24.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags24.i.i, align 4
  %acpi_pcie_gen228.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i131.i, i32 0, i32 3
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = ptrtoint ptr %acpi_pcie_gen228.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %acpi_pcie_gen228.i.i, align 1
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then19.i140.i, %if.end17.i.i.if.end30.i.i_crit_edge
  %class2.i141.i = getelementptr %struct.radeon_ps, ptr %94, i32 %i.0152.i, i32 2
  %139 = ptrtoint ptr %class2.i141.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %class2.i141.i, align 4
  %and31.i.i = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i.i)
  %tobool32.not.i.i = icmp eq i32 %and31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end30.i.i.if.end36.i.i_crit_edge, label %if.then33.i.i

if.end30.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.then33.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ulv.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 22
  %141 = ptrtoint ptr %ulv.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %ulv.i.i, align 4
  %pl35.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i, i32 0, i32 22, i32 1
  %142 = ptrtoint ptr %pl35.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %arrayidx.i.i, ptr %pl35.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then33.i.i, %if.end30.i.i.if.end36.i.i_crit_edge
  %min_vddc_in_table.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i131.i, i32 0, i32 27
  %143 = ptrtoint ptr %min_vddc_in_table.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %min_vddc_in_table.i.i, align 4
  %145 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %vddc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %144, i16 %146)
  %cmp40.i.i = icmp ugt i16 %144, %146
  br i1 %cmp40.i.i, label %if.then42.i.i, label %if.end36.i.i.if.end45.i.i_crit_edge

if.end36.i.i.if.end45.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i.i

if.then42.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %min_vddc_in_table.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %min_vddc_in_table.i.i, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then42.i.i, %if.end36.i.i.if.end45.i.i_crit_edge
  %max_vddc_in_table.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i131.i, i32 0, i32 26
  %148 = ptrtoint ptr %max_vddc_in_table.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %max_vddc_in_table.i.i, align 2
  %150 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %vddc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %149, i16 %151)
  %cmp49.i.i = icmp ult i16 %149, %151
  br i1 %cmp49.i.i, label %if.then51.i.i, label %if.end45.i.i.if.end54.i.i_crit_edge

if.end45.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.then51.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %max_vddc_in_table.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %151, ptr %max_vddc_in_table.i.i, align 2
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then51.i.i, %if.end45.i.i.if.end54.i.i_crit_edge
  %153 = ptrtoint ptr %class.i137.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %class.i137.i, align 4
  %and56.i.i = and i32 %154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %if.end54.i.i.if.end66.i.i_crit_edge, label %if.then58.i.i

if.end54.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i

if.then58.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc59.i.i) #9
  %155 = ptrtoint ptr %vddc59.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -1, ptr %vddc59.i.i, align 2, !annotation !104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddci60.i.i) #9
  %156 = ptrtoint ptr %vddci60.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 -1, ptr %vddci60.i.i, align 2, !annotation !104
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mvdd.i.i) #9
  %157 = ptrtoint ptr %mvdd.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -1, ptr %mvdd.i.i, align 2, !annotation !104
  call void @radeon_atombios_get_default_voltages(ptr noundef %rdev, ptr noundef nonnull %vddc59.i.i, ptr noundef nonnull %vddci60.i.i, ptr noundef nonnull %mvdd.i.i) #9
  %158 = ptrtoint ptr %default_mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %default_mclk.i.i, align 4
  %160 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %mclk.i.i, align 4
  %161 = ptrtoint ptr %default_sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %default_sclk.i.i, align 4
  %163 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %arrayidx.i.i, align 4
  %164 = ptrtoint ptr %vddc59.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %vddc59.i.i, align 2
  %166 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %165, ptr %vddc.i.i, align 4
  %167 = ptrtoint ptr %vddci60.i.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %vddci60.i.i, align 2
  %169 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %vddci.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mvdd.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddci60.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc59.i.i) #9
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.then58.i.i, %if.end54.i.i.if.end66.i.i_crit_edge
  %170 = ptrtoint ptr %class.i137.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %class.i137.i, align 4
  %and68.i.i = and i32 %171, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and68.i.i)
  %cmp69.i.i = icmp eq i32 %and68.i.i, 5
  br i1 %cmp69.i.i, label %if.then71.i.i, label %if.end66.i.i.ni_parse_pplib_clock_info.exit.i_crit_edge

if.end66.i.i.ni_parse_pplib_clock_info.exit.i_crit_edge: ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_parse_pplib_clock_info.exit.i

if.then71.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i.i, align 4
  %174 = ptrtoint ptr %max_clock_voltage_on_ac.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %max_clock_voltage_on_ac.i.i, align 4
  %175 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mclk.i.i, align 4
  %177 = ptrtoint ptr %mclk79.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %mclk79.i.i, align 4
  %178 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %vddc.i.i, align 4
  %180 = ptrtoint ptr %vddc85.i.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %vddc85.i.i, align 4
  %181 = ptrtoint ptr %vddci.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %vddci.i.i, align 2
  %183 = ptrtoint ptr %vddci91.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %182, ptr %vddci91.i.i, align 2
  br label %ni_parse_pplib_clock_info.exit.i

ni_parse_pplib_clock_info.exit.i:                 ; preds = %if.then71.i.i, %if.end66.i.i.ni_parse_pplib_clock_info.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %j.0149.i, 1
  %184 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv55.i = zext i8 %185 to i32
  %sub56.i = add nsw i32 %conv55.i, -1
  %cmp57.i = icmp slt i32 %inc.i, %sub56.i
  br i1 %cmp57.i, label %ni_parse_pplib_clock_info.exit.i.for.body59.i_crit_edge, label %ni_parse_pplib_clock_info.exit.i.for.inc76.i_crit_edge

ni_parse_pplib_clock_info.exit.i.for.inc76.i_crit_edge: ; preds = %ni_parse_pplib_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc76.i

ni_parse_pplib_clock_info.exit.i.for.body59.i_crit_edge: ; preds = %ni_parse_pplib_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body59.i

for.inc76.i:                                      ; preds = %ni_parse_pplib_clock_info.exit.i.for.inc76.i_crit_edge, %ni_parse_pplib_non_clock_info.exit.i.for.inc76.i_crit_edge, %for.body.i.for.inc76.i_crit_edge
  %inc77.i = add nuw nsw i32 %i.0152.i, 1
  %186 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %ucNumStates.i, align 1
  %conv12.i = zext i8 %187 to i32
  %cmp.i = icmp ult i32 %inc77.i, %conv12.i
  br i1 %cmp.i, label %for.inc76.i.for.body.i_crit_edge, label %if.end7.loopexit

for.inc76.i.for.body.i_crit_edge:                 ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ni_parse_power_table.exit.thread:                 ; preds = %if.then39.i, %if.end.i.ni_parse_power_table.exit.thread_crit_edge, %if.end3.ni_parse_power_table.exit.thread_crit_edge
  %retval.3.i.ph = phi i32 [ -12, %if.then39.i ], [ -12, %if.end.i.ni_parse_power_table.exit.thread_crit_edge ], [ -22, %if.end3.ni_parse_power_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  br label %cleanup

if.end7.loopexit:                                 ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i.le = zext i8 %187 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.end7.loopexit, %for.cond.preheader.i.if.end7_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end7_crit_edge ], [ %conv12.i.le, %if.end7.loopexit ]
  %num_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %188 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %.lcssa.i, ptr %num_ps.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  %call8 = call i32 @r600_parse_extended_power_table(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %189 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i366 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %189, i32 noundef 3520, i32 noundef 32) #12
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %190 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call7.i.i.i366, ptr %entries, align 4
  %tobool20.not = icmp eq ptr %call7.i.i.i366, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  call void @r600_free_extended_power_table(ptr noundef %rdev) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %vddc_dependency_on_dispclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4
  %191 = ptrtoint ptr %vddc_dependency_on_dispclk to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 4, ptr %vddc_dependency_on_dispclk, align 4
  %192 = ptrtoint ptr %call7.i.i.i366 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %call7.i.i.i366, align 8
  %v = getelementptr inbounds %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 0, i32 1
  %193 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %v, align 4
  %arrayidx43 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 1
  %194 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 36000, ptr %arrayidx43, align 8
  %v51 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 1, i32 1
  %195 = ptrtoint ptr %v51 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 720, ptr %v51, align 4
  %arrayidx57 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 2
  %196 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 54000, ptr %arrayidx57, align 8
  %v65 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 2, i32 1
  %197 = ptrtoint ptr %v65 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 810, ptr %v65, align 4
  %arrayidx71 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 3
  %198 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 72000, ptr %arrayidx71, align 8
  %v79 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i366, i32 3, i32 1
  %199 = ptrtoint ptr %v79 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 900, ptr %v79, align 4
  %dyn_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %call.i.i367 = call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %max_vddc.i.i368 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i.i367, i32 0, i32 25
  %200 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp2.not.i.i = icmp eq i32 %201, 0
  br i1 %cmp2.not.i.i, label %if.end22.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end22.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_patch_single_dependency_table_based_on_leakage.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end22
  %entries.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %202 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %entries.i.i, align 4
  %v.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %203, i32 %i.03.i.i, i32 1
  %204 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %v.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %205)
  %cmp1.i.i = icmp eq i16 %205, -255
  br i1 %cmp1.i.i, label %if.then3.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then3.i.i:                                     ; preds = %for.body.i.i
  %206 = ptrtoint ptr %max_vddc.i.i368 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %max_vddc.i.i368, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %cmp5.i.i = icmp eq i16 %207, 0
  br i1 %cmp5.i.i, label %if.then3.i.i.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge, label %if.end.i.i

if.then3.i.i.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_patch_single_dependency_table_based_on_leakage.exit.i

if.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %208 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %207, ptr %v.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %209 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %dyn_state.i, align 4
  %cmp.i.i369 = icmp ult i32 %inc.i.i, %210
  br i1 %cmp.i.i369, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge

for.inc.i.i.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_patch_single_dependency_table_based_on_leakage.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

ni_patch_single_dependency_table_based_on_leakage.exit.i: ; preds = %for.inc.i.i.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge, %if.then3.i.i.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge, %if.end22.ni_patch_single_dependency_table_based_on_leakage.exit.i_crit_edge
  %vddc_dependency_on_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2
  %call.i1.i = call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %max_vddc.i3.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i1.i, i32 0, i32 25
  %211 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %vddc_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp2.not.i4.i = icmp eq i32 %212, 0
  br i1 %cmp2.not.i4.i, label %ni_patch_single_dependency_table_based_on_leakage.exit.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge, label %for.body.lr.ph.i7.i

ni_patch_single_dependency_table_based_on_leakage.exit.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge: ; preds = %ni_patch_single_dependency_table_based_on_leakage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_patch_dependency_tables_based_on_leakage.exit

for.body.lr.ph.i7.i:                              ; preds = %ni_patch_single_dependency_table_based_on_leakage.exit.i
  %entries.i6.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  br label %for.body.i11.i

for.body.i11.i:                                   ; preds = %for.inc.i17.i.for.body.i11.i_crit_edge, %for.body.lr.ph.i7.i
  %i.03.i8.i = phi i32 [ 0, %for.body.lr.ph.i7.i ], [ %inc.i15.i, %for.inc.i17.i.for.body.i11.i_crit_edge ]
  %213 = ptrtoint ptr %entries.i6.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %entries.i6.i, align 4
  %v.i9.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %214, i32 %i.03.i8.i, i32 1
  %215 = ptrtoint ptr %v.i9.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %v.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %216)
  %cmp1.i10.i = icmp eq i16 %216, -255
  br i1 %cmp1.i10.i, label %if.then3.i13.i, label %for.body.i11.i.for.inc.i17.i_crit_edge

for.body.i11.i.for.inc.i17.i_crit_edge:           ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i17.i

if.then3.i13.i:                                   ; preds = %for.body.i11.i
  %217 = ptrtoint ptr %max_vddc.i3.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %max_vddc.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %cmp5.i12.i = icmp eq i16 %218, 0
  br i1 %cmp5.i12.i, label %if.then3.i13.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge, label %if.end.i14.i

if.then3.i13.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge: ; preds = %if.then3.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_patch_dependency_tables_based_on_leakage.exit

if.end.i14.i:                                     ; preds = %if.then3.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  %219 = ptrtoint ptr %v.i9.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %v.i9.i, align 4
  br label %for.inc.i17.i

for.inc.i17.i:                                    ; preds = %if.end.i14.i, %for.body.i11.i.for.inc.i17.i_crit_edge
  %inc.i15.i = add nuw i32 %i.03.i8.i, 1
  %220 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %vddc_dependency_on_mclk.i, align 4
  %cmp.i16.i = icmp ult i32 %inc.i15.i, %221
  br i1 %cmp.i16.i, label %for.inc.i17.i.for.body.i11.i_crit_edge, label %for.inc.i17.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge

for.inc.i17.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge: ; preds = %for.inc.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_patch_dependency_tables_based_on_leakage.exit

for.inc.i17.i.for.body.i11.i_crit_edge:           ; preds = %for.inc.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i11.i

ni_patch_dependency_tables_based_on_leakage.exit: ; preds = %for.inc.i17.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge, %if.then3.i13.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge, %ni_patch_single_dependency_table_based_on_leakage.exit.i.ni_patch_dependency_tables_based_on_leakage.exit_crit_edge
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %222 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %voltage_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp83 = icmp eq i32 %223, 0
  br i1 %cmp83, label %if.then84, label %ni_patch_dependency_tables_based_on_leakage.exit.if.end88_crit_edge

ni_patch_dependency_tables_based_on_leakage.exit.if.end88_crit_edge: ; preds = %ni_patch_dependency_tables_based_on_leakage.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then84:                                        ; preds = %ni_patch_dependency_tables_based_on_leakage.exit
  call void @__sanitizer_cov_trace_pc() #11
  %224 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1000, ptr %voltage_response_time, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %ni_patch_dependency_tables_based_on_leakage.exit.if.end88_crit_edge
  %backbias_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %225 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %backbias_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp91 = icmp eq i32 %226, 0
  br i1 %cmp91, label %if.then92, label %if.end88.if.end96_crit_edge

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 1000, ptr %backbias_response_time, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.end88.if.end96_crit_edge
  %call97 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end96.if.end102_crit_edge, label %if.then99

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %228 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %ref_div, align 4
  %add = add i32 %229, 1
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end96.if.end102_crit_edge
  %add.sink = phi i32 [ %add, %if.then99 ], [ 4, %if.end96.if.end102_crit_edge ]
  %230 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 38
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add.sink, ptr %230, align 4
  %rlp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 53
  %232 = ptrtoint ptr %rlp to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 10, ptr %rlp, align 8
  %rmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 54
  %233 = ptrtoint ptr %rmp to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 25, ptr %rmp, align 4
  %lhp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 55
  %234 = ptrtoint ptr %lhp to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 25, ptr %lhp, align 64
  %lmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 56
  %235 = ptrtoint ptr %lmp to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 10, ptr %lmp, align 4
  %ats = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23
  %236 = ptrtoint ptr %ats to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 10, ptr %ats, align 4
  %rmp107 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 1
  %237 = ptrtoint ptr %rmp107 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 25, ptr %rmp107, align 8
  %lhp110 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 2
  %238 = ptrtoint ptr %lhp110 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 25, ptr %lhp110, align 4
  %lmp113 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 0, i32 3
  %239 = ptrtoint ptr %lmp113 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 10, ptr %lmp113, align 64
  %arrayidx115 = getelementptr %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 1
  %240 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 20, ptr %arrayidx115, align 4
  %rmp119 = getelementptr %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 1, i32 1
  %241 = ptrtoint ptr %rmp119 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 50, ptr %rmp119, align 8
  %lhp122 = getelementptr %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 1, i32 2
  %242 = ptrtoint ptr %lhp122 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 50, ptr %lhp122, align 4
  %lmp125 = getelementptr %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 23, i32 1, i32 3
  %243 = ptrtoint ptr %lmp125 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 20, ptr %lmp125, align 16
  %smu_uvd_hs = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 12
  %244 = ptrtoint ptr %smu_uvd_hs to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %smu_uvd_hs, align 1
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %245 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %246, i32 0, i32 8
  %247 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 26375, i16 %248)
  %cmp126 = icmp eq i16 %248, 26375
  %spec.select = select i1 %cmp126, i32 55000, i32 40000
  %249 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 41
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %spec.select, ptr %249, align 8
  %251 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 42
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %spec.select, ptr %251, align 4
  %253 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 17
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %spec.select, ptr %253, align 4
  %mclk_rtt_mode_threshold = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 3
  %255 = ptrtoint ptr %mclk_rtt_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %spec.select, ptr %mclk_rtt_mode_threshold, align 4
  %call135 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 5
  %frombool = zext i1 %call135 to i8
  %256 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %frombool, ptr %voltage_control, align 1
  %call136 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 2, i8 noundef zeroext 0) #9
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 6
  %frombool137 = zext i1 %call136 to i8
  %257 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %frombool137, ptr %mvdd_control, align 2
  %call138 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 4, i8 noundef zeroext 0) #9
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 1
  %frombool139 = zext i1 %call138 to i8
  %258 = ptrtoint ptr %vddci_control to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %frombool139, ptr %vddci_control, align 8
  call void @rv770_get_engine_memory_ss(ptr noundef %rdev) #9
  %asi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 49
  %259 = ptrtoint ptr %asi to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 1000, ptr %asi, align 8
  %pasi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 50
  %260 = ptrtoint ptr %pasi to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 400000, ptr %pasi, align 4
  %vrc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 51
  %261 = ptrtoint ptr %vrc to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 12582963, ptr %vrc, align 16
  %power_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 13
  %262 = ptrtoint ptr %power_gating to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %power_gating, align 1
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 10
  %263 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 1, ptr %gfx_clock_gating, align 2
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 11
  %264 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 1, ptr %mg_clock_gating, align 1
  %mgcgtssm = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 12
  %265 = ptrtoint ptr %mgcgtssm to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %mgcgtssm, align 4
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 11
  %266 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 0, ptr %ls_clock_gating, align 2
  %sclk_deep_sleep = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 9
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 2
  %267 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 1, ptr %dynamic_pcie_gen2, align 2
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %268 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %int_thermal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %cmp141.not = icmp ne i32 %269, 0
  %.sink376 = zext i1 %cmp141.not to i8
  %270 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 14
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %.sink376, ptr %270, align 2
  %display_gap = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 15
  %272 = ptrtoint ptr %display_gap to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %display_gap, align 1
  %dcodt = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 16
  %273 = ptrtoint ptr %dcodt to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 1, ptr %dcodt, align 16
  %ulps = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 17
  %274 = ptrtoint ptr %ulps to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 1, ptr %ulps, align 1
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 2
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 7
  %275 = call ptr @memset(ptr %dynamic_ac_timing, i32 1, i32 5)
  %276 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %pcie_performance_request, align 2
  %dll_default_on = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i.i.i, i32 0, i32 10
  %277 = ptrtoint ptr %dll_default_on to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %dll_default_on, align 1
  %278 = ptrtoint ptr %sclk_deep_sleep to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 0, ptr %sclk_deep_sleep, align 16
  %mclk_stutter_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 40
  %279 = ptrtoint ptr %mclk_stutter_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 0, ptr %mclk_stutter_mode_threshold, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1.i.i.i, i32 0, i32 59
  %280 = ptrtoint ptr %sram_end to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 -16384, ptr %sram_end, align 4
  %mclk_sclk_ratio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 13
  %281 = ptrtoint ptr %mclk_sclk_ratio to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 3, ptr %mclk_sclk_ratio, align 4
  %vddc_vddci_delta = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %282 = ptrtoint ptr %vddc_vddci_delta to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 200, ptr %vddc_vddci_delta, align 4
  %min_vddc_for_pcie_gen2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 16
  %283 = ptrtoint ptr %min_vddc_for_pcie_gen2 to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 900, ptr %min_vddc_for_pcie_gen2, align 2
  %valid_sclk_values = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9
  %284 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 40, ptr %valid_sclk_values, align 4
  %values = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9, i32 1
  %285 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %285)
  store ptr @btc_valid_sclk, ptr %values, align 4
  %valid_mclk_values = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10
  %286 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %valid_mclk_values, align 4
  %values173 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10, i32 1
  %287 = ptrtoint ptr %values173 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr null, ptr %values173, align 4
  %sclk_mclk_delta = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 14
  %288 = ptrtoint ptr %sclk_mclk_delta to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 12500, ptr %sclk_mclk_delta, align 4
  %cac_data = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 17
  %289 = ptrtoint ptr %cac_data to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 516, ptr %cac_data, align 4
  %bt = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 17, i32 0, i32 1
  %290 = ptrtoint ptr %bt to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 18, ptr %bt, align 64
  %av = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 17, i32 0, i32 2
  %291 = ptrtoint ptr %av to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 51, ptr %av, align 4
  %bv = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 17, i32 0, i32 3
  %292 = ptrtoint ptr %bv to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 2957, ptr %bv, align 8
  %293 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %pdev, align 8
  %device184 = getelementptr inbounds %struct.pci_dev, ptr %294, i32 0, i32 8
  %295 = ptrtoint ptr %device184 to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %device184, align 2
  %switch.tableidx = add i16 %296, -26368
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %switch.tableidx)
  %297 = icmp ult i16 %switch.tableidx, 25
  br i1 %297, label %switch.lookup, label %if.end102.sw.epilog_crit_edge

if.end102.sw.epilog_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %298 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [25 x ptr], ptr @switch.table.ni_dpm_init, i32 0, i32 %298
  %299 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %299)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end102.sw.epilog_crit_edge
  %cac_weights_cayman_le.sink = phi ptr [ %switch.load, %switch.lookup ], [ @cac_weights_cayman_pro, %if.end102.sw.epilog_crit_edge ]
  %cac_weights189 = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 19
  %300 = ptrtoint ptr %cac_weights189 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %cac_weights_cayman_le.sink, ptr %cac_weights189, align 8
  %cac_weights190 = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 19
  %enable_power_containment_by_default = getelementptr inbounds %struct.ni_cac_weights, ptr %cac_weights_cayman_le.sink, i32 0, i32 64
  %301 = ptrtoint ptr %enable_power_containment_by_default to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %enable_power_containment_by_default, align 4, !range !99
  %303 = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 10
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %302, ptr %303, align 2
  %305 = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 11
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %302, ptr %305, align 1
  %307 = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 12
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 %302, ptr %307, align 16
  %driver_calculate_cac_leakage = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 8
  %309 = ptrtoint ptr %driver_calculate_cac_leakage to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %driver_calculate_cac_leakage, align 4
  %cac_configuration_required = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 7
  %310 = ptrtoint ptr %cac_configuration_required to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 1, ptr %cac_configuration_required, align 1
  %support_cac_long_term_average = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 5
  %311 = ptrtoint ptr %support_cac_long_term_average to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 1, ptr %support_cac_long_term_average, align 1
  %312 = ptrtoint ptr %cac_weights190 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cac_weights190, align 8
  %l2_lta_window_size = getelementptr inbounds %struct.ni_cac_weights, ptr %313, i32 0, i32 60
  %314 = ptrtoint ptr %l2_lta_window_size to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %l2_lta_window_size, align 4
  %conv202 = trunc i32 %315 to i8
  %lta_window_size = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 20
  %316 = ptrtoint ptr %lta_window_size to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %conv202, ptr %lta_window_size, align 4
  %lts_truncate = getelementptr inbounds %struct.ni_cac_weights, ptr %313, i32 0, i32 61
  %317 = ptrtoint ptr %lts_truncate to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %lts_truncate, align 4
  %conv204 = trunc i32 %318 to i8
  %lts_truncate205 = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 21
  %319 = ptrtoint ptr %lts_truncate205 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv204, ptr %lts_truncate205, align 1
  %use_power_boost_limit = getelementptr inbounds %struct.ni_power_info, ptr %call1.i.i.i, i32 0, i32 4
  %320 = ptrtoint ptr %use_power_boost_limit to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 1, ptr %use_power_boost_limit, align 8
  %max_clock_voltage_on_dc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11
  %321 = ptrtoint ptr %max_clock_voltage_on_dc to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %max_clock_voltage_on_dc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %322)
  %cmp214 = icmp eq i32 %322, 0
  br i1 %cmp214, label %sw.epilog.if.then222_crit_edge, label %lor.lhs.false

sw.epilog.if.then222_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then222

lor.lhs.false:                                    ; preds = %sw.epilog
  %mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 1
  %323 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %cmp220 = icmp eq i32 %324, 0
  br i1 %cmp220, label %lor.lhs.false.if.then222_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.if.then222_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then222

if.then222:                                       ; preds = %lor.lhs.false.if.then222_crit_edge, %sw.epilog.if.then222_crit_edge
  %max_clock_voltage_on_ac = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %325 = call ptr @memcpy(ptr %max_clock_voltage_on_dc, ptr %max_clock_voltage_on_ac, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.then222, %lor.lhs.false.cleanup_crit_edge, %if.then21, %if.end7.cleanup_crit_edge, %ni_parse_power_table.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.then222 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %retval.3.i.ph, %ni_parse_power_table.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_max_vddc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_parse_extended_power_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_free_extended_power_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_engine_memory_ss(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_dpm_fini(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %num_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %0 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17 = icmp sgt i32 %1, 0
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %ps_priv = getelementptr %struct.radeon_ps, ptr %3, i32 %i.018, i32 9
  %4 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv, align 4
  tail call void @kfree(ptr noundef %5) #9
  %inc = add nuw nsw i32 %i.018, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #9
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #9
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %13) #9
  tail call void @r600_free_extended_power_table(ptr noundef %rdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @r600_dpm_print_class_info(i32 noundef %3, i32 noundef %5) #9
  %6 = ptrtoint ptr %rps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rps, align 4
  tail call void @r600_dpm_print_cap_info(i32 noundef %7) #9
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %9, i32 noundef %11) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp44.not = icmp eq i16 %13, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %i.045
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %15)
  %cmp3 = icmp ugt i32 %15, 51
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %mclk = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %i.045, i32 1
  %18 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk, align 4
  %vddc = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %i.045, i32 2
  %20 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vddc, align 4
  %conv9 = zext i16 %21 to i32
  %vddci = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %i.045, i32 3
  %22 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vddci, align 2
  %conv10 = zext i16 %23 to i32
  br i1 %cmp3, label %do.end7, label %do.end14

do.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %pcie_gen = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %i.045, i32 5
  %24 = ptrtoint ptr %pcie_gen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pcie_gen, align 4
  %add = add i32 %25, 1
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.045, i32 noundef %17, i32 noundef %19, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %add) #14
  br label %for.inc

do.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %i.045, i32 noundef %17, i32 noundef %19, i32 noundef %conv9, i32 noundef %conv10) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end14, %do.end7
  %inc = add nuw nsw i32 %i.045, 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv = zext i16 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_dpm_debugfs_print_current_performance_level(ptr noundef %rdev, ptr noundef %m) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1644
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %5 = lshr i32 %4, 28
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ult i32 %5, %conv
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %5) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %5
  %vclk = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef %9, i32 noundef %11) #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %mclk = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %5, i32 1
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk, align 4
  %vddc = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %5, i32 2
  %16 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vddc, align 4
  %conv4 = zext i16 %17 to i32
  %vddci = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %5, i32 3
  %18 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vddci, align 2
  %conv5 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %5, i32 noundef %13, i32 noundef %15, i32 noundef %conv4, i32 noundef %conv5) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_get_current_sclk(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1644
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %5 = lshr i32 %4, 28
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ult i32 %5, %conv
  br i1 %cmp.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_get_current_mclk(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1644
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %5 = lshr i32 %4, 28
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp.not = icmp ult i32 %5, %conv
  br i1 %cmp.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mclk = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %5, i32 1
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_get_sclk(ptr noundef %rdev, i1 noundef zeroext %low) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  br i1 %low, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %performance_levels = getelementptr inbounds %struct.ni_ps, ptr %1, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx3 = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0.in = phi ptr [ %performance_levels, %if.then ], [ %arrayidx3, %if.else ]
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_dpm_get_mclk(ptr noundef %rdev, i1 noundef zeroext %low) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  br i1 %low, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %conv = zext i16 %3 to i32
  %sub = add nsw i32 %conv, -1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %sub.sink = phi i32 [ %sub, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  %mclk4 = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %sub.sink, i32 1
  %4 = ptrtoint ptr %mclk4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %mclk4, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_send_msg_to_smc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_program_mgcg_hw_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_get_memory_module_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_init_mc_reg_table(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_read_smc_sram_dword(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_do_program_memory_timing_parameters(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_state, i32 noundef %first_arb_set) unnamed_addr #2 align 64 {
entry:
  %arb_regs = alloca %struct.SMC_NIslands_MCArbDramTimingRegisterSet, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_state, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %arb_regs) #9
  %4 = call ptr @memset(ptr %arb_regs, i32 0, i32 12)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp23.not = icmp eq i16 %6, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mc_arb_rfsh_rate.i = getelementptr inbounds %struct.SMC_NIslands_MCArbDramTimingRegisterSet, ptr %arb_regs, i32 0, i32 2
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %mc_arb_dram_timing2.i = getelementptr inbounds %struct.SMC_NIslands_MCArbDramTimingRegisterSet, ptr %arb_regs, i32 0, i32 1
  %arb_table_start = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 13
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %3, align 4
  %conv = zext i16 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ni_ps, ptr %3, i32 0, i32 2, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call.i = call i32 @rv770_calculate_memory_refresh_rate(ptr noundef %rdev, i32 noundef %10) #9
  %conv.i = trunc i32 %call.i to i8
  %11 = ptrtoint ptr %mc_arb_rfsh_rate.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %mc_arb_rfsh_rate.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %mclk.i = getelementptr %struct.ni_ps, ptr %3, i32 0, i32 2, i32 %i.024, i32 1
  %14 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk.i, align 4
  call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %13, i32 noundef %15) #9
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 10100
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %19 = call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %21, i32 10104
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #9, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = ptrtoint ptr %arb_regs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %arb_regs, align 4
  %25 = ptrtoint ptr %mc_arb_dram_timing2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %mc_arb_dram_timing2.i, align 4
  %26 = ptrtoint ptr %arb_table_start to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arb_table_start, align 2
  %add6 = add i32 %i.024, %first_arb_set
  %28 = trunc i32 %add6 to i16
  %29 = mul i16 %28, 12
  %30 = add i16 %29, 4
  %conv8 = add i16 %30, %27
  %31 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sram_end, align 4
  %call9 = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %conv8, ptr noundef nonnull %arb_regs, i16 noundef zeroext 12, i16 noundef zeroext %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call9, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %arb_regs) #9
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_copy_bytes_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cypress_get_strobe_mode_settings(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_calculate_memory_refresh_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_engine_dram_timings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_calculate_sclk_params(ptr noundef %rdev, i32 noundef %engine_clock, ptr nocapture noundef writeonly %sclk) unnamed_addr #2 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %clock_registers = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %clock_registers to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clock_registers, align 4
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %cg_spll_func_cntl_4 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %cg_spll_func_cntl_4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cg_spll_func_cntl_4, align 4
  %cg_spll_spread_spectrum6 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %cg_spll_spread_spectrum6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cg_spll_spread_spectrum6, align 4
  %cg_spll_spread_spectrum_28 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %cg_spll_spread_spectrum_28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cg_spll_spread_spectrum_28, align 4
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %15 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %spll, align 4
  %call9 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %engine_clock, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %17 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_div, align 4
  %add = add i32 %18, 1
  %conv = zext i32 %engine_clock to i64
  %conv10 = zext i32 %add to i64
  %19 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dividers, align 4
  %conv11 = zext i32 %20 to i64
  %mul = mul nuw nsw i64 %conv, 16834
  %mul12 = mul i64 %mul, %conv10
  %mul13 = mul i64 %mul12, %conv11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul13)
  %cmp186 = icmp ult i64 %mul13, 4294967296
  br i1 %cmp186, label %if.then190, label %if.else196, !prof !105

if.then190:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv191 = trunc i64 %mul13 to i32
  %div194 = udiv i32 %conv191, %16
  br label %if.end200

if.else196:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %mul13) #15, !srcloc !106
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  %extract.t393 = trunc i64 %asmresult1.i to i32
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.then190
  %tmp.0.off0 = phi i32 [ %div194, %if.then190 ], [ %extract.t393, %if.else196 ]
  %and203 = and i32 %4, -133170161
  %shl205 = shl i32 %18, 4
  %or206 = or i32 %shl205, %and203
  %shl208 = shl i32 %20, 20
  %or209 = or i32 %or206, %shl208
  %and210 = and i32 %6, -512
  %or211 = or i32 %and210, 2
  %and212 = and i32 %8, -335544320
  %or214 = or i32 %and212, %tmp.0.off0
  %or215 = or i32 %or214, 268435456
  %sclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 7
  %22 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sclk_ss, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool216.not = icmp eq i8 %23, 0
  br i1 %tobool216.not, label %if.end200.if.end239_crit_edge, label %if.then217

if.end200.if.end239_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

if.then217:                                       ; preds = %if.end200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #9
  %24 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul219 = mul i32 %20, %engine_clock
  %call220 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 2, i32 noundef %mul219) #9
  br i1 %call220, label %if.then221, label %if.then217.if.end238_crit_edge

if.then217.if.end238_crit_edge:                   ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end238

if.then221:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #11
  %mul222 = mul i32 %16, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %25 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rate, align 2
  %conv223 = zext i16 %26 to i32
  %mul224 = mul i32 %add, %conv223
  %div225 = udiv i32 %mul222, %mul224
  %27 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ss, align 2
  %conv226 = zext i16 %28 to i32
  %mul227 = shl i32 %tmp.0.off0, 2
  %mul228 = mul i32 %mul227, %conv226
  %mul229 = mul i32 %div225, 10000
  %div230 = udiv i32 %mul228, %mul229
  %and231 = and i32 %12, -65522
  %shl232 = shl i32 %div225, 4
  %or233 = or i32 %and231, %shl232
  %or234 = or i32 %or233, 1
  %and235 = and i32 %14, -67108864
  %or237 = or i32 %div230, %and235
  br label %if.end238

if.end238:                                        ; preds = %if.then221, %if.then217.if.end238_crit_edge
  %cg_spll_spread_spectrum.0 = phi i32 [ %or234, %if.then221 ], [ %12, %if.then217.if.end238_crit_edge ]
  %cg_spll_spread_spectrum_2.0 = phi i32 [ %or237, %if.then221 ], [ %14, %if.then217.if.end238_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #9
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %if.end200.if.end239_crit_edge
  %cg_spll_spread_spectrum.1 = phi i32 [ %cg_spll_spread_spectrum.0, %if.end238 ], [ %12, %if.end200.if.end239_crit_edge ]
  %cg_spll_spread_spectrum_2.1 = phi i32 [ %cg_spll_spread_spectrum_2.0, %if.end238 ], [ %14, %if.end200.if.end239_crit_edge ]
  %sclk_value = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 6
  %29 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %engine_clock, ptr %sclk_value, align 1
  %30 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %or209, ptr %sclk, align 1
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 1
  %31 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %or211, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 2
  %32 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %or215, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %vCG_SPLL_FUNC_CNTL_4 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 3
  %33 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_4 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %10, ptr %vCG_SPLL_FUNC_CNTL_4, align 1
  %vCG_SPLL_SPREAD_SPECTRUM = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 4
  %34 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %cg_spll_spread_spectrum.1, ptr %vCG_SPLL_SPREAD_SPECTRUM, align 1
  %vCG_SPLL_SPREAD_SPECTRUM_2 = getelementptr inbounds %struct.NISLANDS_SMC_SCLK_VALUE, ptr %sclk, i32 0, i32 5
  %35 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %cg_spll_spread_spectrum_2.1, ptr %vCG_SPLL_SPREAD_SPECTRUM_2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end239, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_write_smc_sram_dword(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_write_smc_soft_register(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @drm_fixp_exp(i64 noundef %x) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i64 @div64_s64(i64 noundef 4294967296, i64 noundef 1000000) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %x)
  %cmp = icmp slt i64 %x, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %x, i1 false)
  call void @__sanitizer_cov_trace_cmp8(i64 %0, i64 %call)
  %cmp1.not19 = icmp slt i64 %0, %call
  br i1 %cmp1.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %drm_fixp_mul.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %count.022 = phi i64 [ %add2, %drm_fixp_mul.exit.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %term.021 = phi i64 [ %retval.0.i, %drm_fixp_mul.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %sum.020 = phi i64 [ %add, %drm_fixp_mul.exit.while.body_crit_edge ], [ 4294967296, %entry.while.body_crit_edge ]
  %add = add i64 %term.021, %sum.020
  %add2 = add i64 %count.022, 1
  %call3 = tail call i64 @div64_s64(i64 noundef %0, i64 noundef %add2) #9
  %shr12.i.i = lshr i64 %term.021, 63
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %while.body
  %shift.014.i.i = phi i32 [ 62, %while.body ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sh_prom.i.i = zext i32 %shift.014.i.i to i64
  %shr213.i.i = lshr i64 %term.021, %sh_prom.i.i
  %and3.i.i = and i64 %shr213.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i.i, i64 %shr12.i.i)
  %cmp5.not.i.i = icmp eq i64 %and3.i.i, %shr12.i.i
  br i1 %cmp5.not.i.i, label %for.inc.i.i, label %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge

for.body.i.i.drm_fixp_msbset.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i32 %shift.014.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit.i

drm_fixp_msbset.exit.i:                           ; preds = %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge, %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge
  %shift.0.lcssa.i.i = phi i32 [ 0, %for.inc.i.i.drm_fixp_msbset.exit.i_crit_edge ], [ %shift.014.i.i, %for.body.i.i.drm_fixp_msbset.exit.i_crit_edge ]
  %shr12.i33.i = lshr i64 %call3, 63
  br label %for.body.i39.i

for.body.i39.i:                                   ; preds = %for.inc.i42.i.for.body.i39.i_crit_edge, %drm_fixp_msbset.exit.i
  %shift.014.i34.i = phi i32 [ 62, %drm_fixp_msbset.exit.i ], [ %dec.i40.i, %for.inc.i42.i.for.body.i39.i_crit_edge ]
  %sh_prom.i35.i = zext i32 %shift.014.i34.i to i64
  %shr213.i36.i = lshr i64 %call3, %sh_prom.i35.i
  %and3.i37.i = and i64 %shr213.i36.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and3.i37.i, i64 %shr12.i33.i)
  %cmp5.not.i38.i = icmp eq i64 %and3.i37.i, %shr12.i33.i
  br i1 %cmp5.not.i38.i, label %for.inc.i42.i, label %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge

for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge: ; preds = %for.body.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i

for.inc.i42.i:                                    ; preds = %for.body.i39.i
  %dec.i40.i = add nsw i32 %shift.014.i34.i, -1
  %cmp.not.i41.i = icmp eq i32 %dec.i40.i, 0
  br i1 %cmp.not.i41.i, label %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge, label %for.inc.i42.i.for.body.i39.i_crit_edge

for.inc.i42.i.for.body.i39.i_crit_edge:           ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i39.i

for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge: ; preds = %for.inc.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_msbset.exit44.i

drm_fixp_msbset.exit44.i:                         ; preds = %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge, %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge
  %shift.0.lcssa.i43.i = phi i32 [ 0, %for.inc.i42.i.drm_fixp_msbset.exit44.i_crit_edge ], [ %shift.014.i34.i, %for.body.i39.i.drm_fixp_msbset.exit44.i_crit_edge ]
  %add.i = add i32 %shift.0.lcssa.i43.i, %shift.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 61
  br i1 %cmp.i, label %if.end.i, label %if.end11.thread.i

if.end11.thread.i:                                ; preds = %drm_fixp_msbset.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul48.i = mul i64 %call3, %term.021
  br label %if.then13.i

if.end.i:                                         ; preds = %drm_fixp_msbset.exit44.i
  %sub.i = add i32 %add.i, -61
  %shr.i = lshr i32 %sub.i, 1
  %and.i = and i32 %sub.i, 1
  %add2.i = add nuw nsw i32 %shr.i, %and.i
  %sh_prom.i = zext i32 %add2.i to i64
  %shr3.i = ashr i64 %term.021, %sh_prom.i
  %sh_prom5.i = zext i32 %shr.i to i64
  %shr6.i = ashr i64 %call3, %sh_prom5.i
  %mul.i = mul i64 %shr3.i, %shr6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp7.i = icmp ugt i32 %sub.i, 32
  br i1 %cmp7.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub9.i = add i32 %add.i, -93
  %sh_prom10.i = zext i32 %sub9.i to i64
  %shl.i = shl i64 %mul.i, %sh_prom10.i
  br label %drm_fixp_mul.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp12.not.i = icmp eq i32 %sub.i, 32
  br i1 %cmp12.not.i, label %if.end11.i.drm_fixp_mul.exit_crit_edge, label %if.end11.i.if.then13.i_crit_edge

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.end11.i.drm_fixp_mul.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_fixp_mul.exit

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %if.end11.thread.i
  %shift.05056.i = phi i32 [ 0, %if.end11.thread.i ], [ %sub.i, %if.end11.i.if.then13.i_crit_edge ]
  %mul5155.i = phi i64 [ %mul48.i, %if.end11.thread.i ], [ %mul.i, %if.end11.i.if.then13.i_crit_edge ]
  %sub14.i = sub nuw nsw i32 32, %shift.05056.i
  %sh_prom15.i = zext i32 %sub14.i to i64
  %shr16.i = ashr i64 %mul5155.i, %sh_prom15.i
  br label %drm_fixp_mul.exit

drm_fixp_mul.exit:                                ; preds = %if.then13.i, %if.end11.i.drm_fixp_mul.exit_crit_edge, %if.then8.i
  %retval.0.i = phi i64 [ %shl.i, %if.then8.i ], [ %shr16.i, %if.then13.i ], [ %mul.i, %if.end11.i.drm_fixp_mul.exit_crit_edge ]
  %cmp1.not = icmp slt i64 %retval.0.i, %call
  br i1 %cmp1.not, label %drm_fixp_mul.exit.while.end_crit_edge, label %drm_fixp_mul.exit.while.body_crit_edge

drm_fixp_mul.exit.while.body_crit_edge:           ; preds = %drm_fixp_mul.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

drm_fixp_mul.exit.while.end_crit_edge:            ; preds = %drm_fixp_mul.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %drm_fixp_mul.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %sum.0.lcssa = phi i64 [ 4294967296, %entry.while.end_crit_edge ], [ %add, %drm_fixp_mul.exit.while.end_crit_edge ]
  br i1 %cmp, label %if.then6, label %while.end.if.end8_crit_edge

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %b.addr.0.i = ashr i64 %sum.0.lcssa, 2
  %call3.i = tail call i64 @div64_s64(i64 noundef 4611686018427387904, i64 noundef %b.addr.0.i) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.end.if.end8_crit_edge
  %sum.1 = phi i64 [ %call3.i, %if.then6 ], [ %sum.0.lcssa, %while.end.if.end8_crit_edge ]
  ret i64 %sum.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eg_cg_rreg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @eg_cg_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_calculate_power_boost_limit(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_state, i32 noundef %near_tdp_limit) unnamed_addr #2 align 64 {
entry:
  %vddc.sroa.0 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %radeon_state, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %enable_power_containment = getelementptr inbounds %struct.ni_power_info, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %enable_power_containment to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_power_containment, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end51_crit_edge, label %land.lhs.true

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true:                                    ; preds = %entry
  %use_power_boost_limit = getelementptr inbounds %struct.ni_power_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %use_power_boost_limit to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_power_boost_limit, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end51_crit_edge, label %if.then

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vddc.sroa.0)
  %8 = ptrtoint ptr %vddc.sroa.0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %vddc.sroa.0, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp = icmp ult i16 %10, 3
  br i1 %cmp, label %if.then.cleanup.thread_crit_edge, label %if.end

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end:                                           ; preds = %if.then
  %conv = zext i16 %10 to i32
  %vddc_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 19
  %sub = add nsw i32 %conv, -2
  %vddc8 = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %sub, i32 2
  %11 = ptrtoint ptr %vddc8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vddc8, align 4
  %13 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.not5.i = icmp eq i32 %14, 0
  br i1 %cmp3.not5.i, label %if.end.ni_populate_voltage_value.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.ni_populate_voltage_value.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_populate_voltage_value.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %i.04.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %12)
  %cmp3.not.i = icmp ult i16 %16, %12
  br i1 %cmp3.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %vddc.sroa.0 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vddc.sroa.0, align 2
  %phi.cast = and i32 %i.04.i, 255
  br label %ni_populate_voltage_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.cleanup.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup.thread_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

ni_populate_voltage_value.exit:                   ; preds = %if.then.i, %if.end.ni_populate_voltage_value.exit_crit_edge
  %vddc.sroa.9.0 = phi i32 [ 255, %if.end.ni_populate_voltage_value.exit_crit_edge ], [ %phi.cast, %if.then.i ]
  %i.02.i = phi i32 [ 0, %if.end.ni_populate_voltage_value.exit_crit_edge ], [ %i.04.i, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i, i32 %14)
  %cmp11.not.i = icmp ult i32 %i.02.i, %14
  br i1 %cmp11.not.i, label %if.end12, label %ni_populate_voltage_value.exit.cleanup.thread_crit_edge

ni_populate_voltage_value.exit.cleanup.thread_crit_edge: ; preds = %ni_populate_voltage_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end12:                                         ; preds = %ni_populate_voltage_value.exit
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %18 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end12.ni_get_std_voltage_value.exit_crit_edge, label %land.lhs.true.i

if.end12.ni_get_std_voltage_value.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %ni_get_std_voltage_value.exit

land.lhs.true.i:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %cac_leakage_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %20 = ptrtoint ptr %cac_leakage_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cac_leakage_table.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %vddc.sroa.9.0)
  %cmp.i = icmp ugt i32 %21, %vddc.sroa.9.0
  %arrayidx.i74 = getelementptr %union.radeon_cac_leakage_entry, ptr %19, i32 %vddc.sroa.9.0
  %spec.select.i = select i1 %cmp.i, ptr %arrayidx.i74, ptr %vddc.sroa.0
  br label %ni_get_std_voltage_value.exit

ni_get_std_voltage_value.exit:                    ; preds = %land.lhs.true.i, %if.end12.ni_get_std_voltage_value.exit_crit_edge
  %storemerge.in.i = phi ptr [ %vddc.sroa.0, %if.end12.ni_get_std_voltage_value.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %22 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %storemerge.i = load i16, ptr %storemerge.in.i, align 1
  %sub21 = add nsw i32 %conv, -1
  %vddc23 = getelementptr %struct.ni_ps, ptr %1, i32 0, i32 2, i32 %sub21, i32 2
  %23 = ptrtoint ptr %vddc23 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vddc23, align 4
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.inc.i85.for.body.i79_crit_edge, %ni_get_std_voltage_value.exit
  %i.04.i76 = phi i32 [ %inc.i83, %for.inc.i85.for.body.i79_crit_edge ], [ 0, %ni_get_std_voltage_value.exit ]
  %arrayidx.i77 = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %i.04.i76
  %25 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx.i77, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %24)
  %cmp3.not.i78 = icmp ult i16 %26, %24
  br i1 %cmp3.not.i78, label %for.inc.i85, label %ni_populate_voltage_value.exit89

for.inc.i85:                                      ; preds = %for.body.i79
  %inc.i83 = add nuw i32 %i.04.i76, 1
  %exitcond.not.i84 = icmp eq i32 %inc.i83, %14
  br i1 %exitcond.not.i84, label %for.inc.i85.cleanup.thread_crit_edge, label %for.inc.i85.for.body.i79_crit_edge

for.inc.i85.for.body.i79_crit_edge:               ; preds = %for.inc.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i79

for.inc.i85.cleanup.thread_crit_edge:             ; preds = %for.inc.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

ni_populate_voltage_value.exit89:                 ; preds = %for.body.i79
  %27 = ptrtoint ptr %vddc.sroa.0 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %vddc.sroa.0, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04.i76, i32 %14)
  %cmp11.not.i87 = icmp ult i32 %i.04.i76, %14
  br i1 %cmp11.not.i87, label %if.end27, label %ni_populate_voltage_value.exit89.cleanup.thread_crit_edge

ni_populate_voltage_value.exit89.cleanup.thread_crit_edge: ; preds = %ni_populate_voltage_value.exit89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end27:                                         ; preds = %ni_populate_voltage_value.exit89
  br i1 %tobool.not.i, label %if.end27.cleanup_crit_edge, label %land.lhs.true.i98

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i98:                                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %cac_leakage_table.i92 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %conv.i94 = and i32 %i.04.i76, 255
  %28 = ptrtoint ptr %cac_leakage_table.i92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cac_leakage_table.i92, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i94)
  %cmp.i95 = icmp ugt i32 %29, %conv.i94
  %arrayidx.i96 = getelementptr %union.radeon_cac_leakage_entry, ptr %19, i32 %conv.i94
  %spec.select.i97 = select i1 %cmp.i95, ptr %arrayidx.i96, ptr %vddc.sroa.0
  br label %cleanup

cleanup.thread:                                   ; preds = %ni_populate_voltage_value.exit89.cleanup.thread_crit_edge, %for.inc.i85.cleanup.thread_crit_edge, %ni_populate_voltage_value.exit.cleanup.thread_crit_edge, %for.inc.i.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc.sroa.0)
  br label %cleanup52

cleanup:                                          ; preds = %land.lhs.true.i98, %if.end27.cleanup_crit_edge
  %storemerge.in.i99 = phi ptr [ %vddc.sroa.0, %if.end27.cleanup_crit_edge ], [ %spec.select.i97, %land.lhs.true.i98 ]
  %30 = ptrtoint ptr %storemerge.in.i99 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %storemerge.i100 = load i16, ptr %storemerge.in.i99, align 1
  %conv32 = zext i32 %near_tdp_limit to i64
  %conv33 = zext i16 %storemerge.i to i64
  %mul = mul nuw nsw i64 %conv32, 90
  %mul35 = mul nuw nsw i64 %mul, %conv33
  %mul36 = mul i64 %mul35, %conv33
  %conv37 = zext i16 %storemerge.i100 to i64
  %mul39 = mul nuw nsw i64 %conv37, 100
  %mul40 = mul nuw nsw i64 %mul39, %conv37
  %call41 = tail call i64 @div64_u64(i64 noundef %mul36, i64 noundef %mul40) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %call41)
  %tobool42.not = icmp ult i64 %call41, 4294967296
  %conv45 = trunc i64 %call41 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vddc.sroa.0)
  br i1 %tobool42.not, label %cleanup.if.end51_crit_edge, label %cleanup.cleanup52_crit_edge

cleanup.cleanup52_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

cleanup.if.end51_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end51:                                         ; preds = %cleanup.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %entry.if.end51_crit_edge
  %power_boost_limit.1 = phi i32 [ %conv45, %cleanup.if.end51_crit_edge ], [ 0, %land.lhs.true.if.end51_crit_edge ], [ 0, %entry.if.end51_crit_edge ]
  br label %cleanup52

cleanup52:                                        ; preds = %if.end51, %cleanup.cleanup52_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ %power_boost_limit.1, %if.end51 ], [ 0, %cleanup.cleanup52_crit_edge ], [ 0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r7xx_stop_smc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_skip_blacklist_clocks(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_adjust_clock_combinations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_apply_voltage_dependency_rules(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btc_apply_voltage_delta_rules(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cypress_get_mclk_frequency_ratio(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ni_populate_mclk_value(ptr noundef %rdev, i32 noundef %memory_clock, ptr nocapture noundef writeonly %mclk, i1 noundef zeroext %strobe_mode, i1 noundef zeroext %dll_state_on) unnamed_addr #2 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #9
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mpll_ad_func_cntl3 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %mpll_ad_func_cntl3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpll_ad_func_cntl3, align 4
  %mpll_ad_func_cntl_25 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %mpll_ad_func_cntl_25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpll_ad_func_cntl_25, align 4
  %mpll_dq_func_cntl7 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %mpll_dq_func_cntl7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_dq_func_cntl7, align 4
  %mpll_dq_func_cntl_29 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 11
  %8 = ptrtoint ptr %mpll_dq_func_cntl_29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpll_dq_func_cntl_29, align 4
  %mclk_pwrmgt_cntl11 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %mclk_pwrmgt_cntl11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk_pwrmgt_cntl11, align 4
  %dll_cntl13 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %dll_cntl13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dll_cntl13, align 4
  %mpll_ss115 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %mpll_ss115 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mpll_ss115, align 4
  %mpll_ss217 = getelementptr inbounds %struct.ni_power_info, ptr %1, i32 0, i32 1, i32 13
  %16 = ptrtoint ptr %mpll_ss217 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mpll_ss217, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %18 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call18 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %memory_clock, i1 noundef zeroext %strobe_mode, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %strobe_mode, label %if.end.if.end26_crit_edge, label %if.then21

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.end
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 10852
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %22 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then24

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dividers, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %24 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %24, align 4
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 4095
  %call27 = call i32 @cypress_map_clkf_to_ibias(ptr noundef %rdev, i32 noundef %bf.clear) #9
  %and28 = and i32 %3, -1073217536
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %26 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_div, align 4
  %shl = shl i32 %27, 7
  %28 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dividers, align 4
  %shl30 = shl i32 %29, 17
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load32 = load i32, ptr %24, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 14
  %bf.clear34 = and i32 %bf.lshr33, 4095
  %bf.clear38 = shl i32 %bf.load32, 12
  %shl39 = and i32 %bf.clear38, 67104768
  %shl41 = shl i32 %call27, 20
  %or = or i32 %shl, %shl41
  %or31 = or i32 %or, %and28
  %or36 = or i32 %or31, %shl30
  %or40 = or i32 %or36, %bf.clear34
  %or42 = or i32 %or40, %shl39
  %vco_mode = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %31 = ptrtoint ptr %vco_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vco_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool43.not = icmp eq i32 %32, 0
  %and46 = and i32 %5, -536870913
  %masksel = select i1 %tobool43.not, i32 0, i32 536870912
  %mpll_ad_func_cntl_2.0 = or i32 %masksel, %and46
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool48.not = icmp eq i8 %34, 0
  br i1 %tobool48.not, label %if.end26.if.end81_crit_edge, label %if.then49

if.end26.if.end81_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then49:                                        ; preds = %if.end26
  %and50 = and i32 %7, 1074266112
  %or56 = or i32 %or, %and50
  %or61 = or i32 %or56, %shl30
  %or61.masked = and i32 %or61, 2147483520
  %or65.masked = or i32 %or61.masked, %bf.clear34
  %and70 = or i32 %or65.masked, %shl39
  %masksel1 = select i1 %strobe_mode, i32 0, i32 -2147483648
  %mpll_dq_func_cntl.0 = or i32 %and70, %masksel1
  br i1 %tobool43.not, label %if.else78, label %if.then76

if.then76:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %or77 = or i32 %9, 536870912
  br label %if.end81

if.else78:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %and79 = and i32 %9, -536870913
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then76, %if.end26.if.end81_crit_edge
  %mpll_dq_func_cntl_2.0 = phi i32 [ %or77, %if.then76 ], [ %and79, %if.else78 ], [ %9, %if.end26.if.end81_crit_edge ]
  %mpll_dq_func_cntl.1 = phi i32 [ %mpll_dq_func_cntl.0, %if.then76 ], [ %mpll_dq_func_cntl.0, %if.else78 ], [ %7, %if.end26.if.end81_crit_edge ]
  %mclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 8
  %35 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mclk_ss, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool82.not = icmp eq i8 %36, 0
  br i1 %tobool82.not, label %if.end81.if.end109_crit_edge, label %if.then83

if.end81.if.end109_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then83:                                        ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #9
  %37 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul = mul i32 %29, %memory_clock
  %call85 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 1, i32 noundef %mul) #9
  br i1 %call85, label %if.then86, label %if.then83.if.end108_crit_edge

if.then83.if.end108_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then86:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  %mpll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %38 = ptrtoint ptr %mpll to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mpll, align 4
  %40 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ref_div, align 4
  %call88 = call i32 @rv740_get_decoded_reference_divider(i32 noundef %41) #9
  %mul89 = mul i32 %39, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rate, align 2
  %conv = zext i16 %43 to i32
  %mul90 = mul i32 %call88, %conv
  %div = udiv i32 %mul89, %mul90
  %44 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ss, align 2
  %conv91 = zext i16 %45 to i32
  %46 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load92 = load i32, ptr %24, align 4
  %bf.clear94 = and i32 %bf.load92, 67092480
  %bf.clear97 = shl i32 %bf.load92, 11
  %mul98 = and i32 %bf.clear97, 33552384
  %add = add nuw nsw i32 %mul98, %bf.clear94
  %mul99 = mul i32 %add, %conv91
  %mul100 = mul i32 %div, 625
  %div101 = udiv i32 %mul99, %mul100
  %and102 = and i32 %15, -67108864
  %or104 = or i32 %div101, %and102
  %and105 = and i32 %17, -4096
  %or107 = or i32 %div, %and105
  br label %if.end108

if.end108:                                        ; preds = %if.then86, %if.then83.if.end108_crit_edge
  %mpll_ss1.0 = phi i32 [ %or104, %if.then86 ], [ %15, %if.then83.if.end108_crit_edge ]
  %mpll_ss2.0 = phi i32 [ %or107, %if.then86 ], [ %17, %if.then83.if.end108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #9
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end81.if.end109_crit_edge
  %mpll_ss1.1 = phi i32 [ %mpll_ss1.0, %if.end108 ], [ %15, %if.end81.if.end109_crit_edge ]
  %mpll_ss2.1 = phi i32 [ %mpll_ss2.0, %if.end108 ], [ %17, %if.end81.if.end109_crit_edge ]
  %47 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %call, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool111 = icmp ne i8 %48, 0
  %call112 = call i32 @rv740_get_dll_speed(i1 noundef zeroext %tobool111, i32 noundef %memory_clock) #9
  %and113 = and i32 %11, -65312
  %call112.masked = and i32 %call112, -65281
  %masksel2 = select i1 %dll_state_on, i32 65280, i32 0
  %and120 = or i32 %and113, %masksel2
  %mclk_pwrmgt_cntl.0 = or i32 %and120, %call112.masked
  %mclk_value = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 11
  %49 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %memory_clock, ptr %mclk_value, align 1
  %vMPLL_AD_FUNC_CNTL = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 3
  %50 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %or42, ptr %vMPLL_AD_FUNC_CNTL, align 1
  %vMPLL_AD_FUNC_CNTL_2 = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 4
  %51 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %mpll_ad_func_cntl_2.0, ptr %vMPLL_AD_FUNC_CNTL_2, align 1
  %vMPLL_DQ_FUNC_CNTL = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 5
  %52 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %mpll_dq_func_cntl.1, ptr %vMPLL_DQ_FUNC_CNTL, align 1
  %vMPLL_DQ_FUNC_CNTL_2 = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 6
  %53 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %mpll_dq_func_cntl_2.0, ptr %vMPLL_DQ_FUNC_CNTL_2, align 1
  %vMCLK_PWRMGT_CNTL = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 7
  %54 = ptrtoint ptr %vMCLK_PWRMGT_CNTL to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %mclk_pwrmgt_cntl.0, ptr %vMCLK_PWRMGT_CNTL, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 8
  %55 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %13, ptr %vDLL_CNTL, align 1
  %vMPLL_SS = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 9
  %56 = ptrtoint ptr %vMPLL_SS to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %mpll_ss1.1, ptr %vMPLL_SS, align 1
  %vMPLL_SS2 = getelementptr inbounds %struct.NISLANDS_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 10
  %57 = ptrtoint ptr %vMPLL_SS2 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %mpll_ss2.1, ptr %vMPLL_SS2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  ret i32 %call18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_map_clkf_to_ibias(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_get_decoded_reference_divider(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_get_dll_speed(i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_calculate_at(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_get_default_voltages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3552, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3605, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3629, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3634, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3639, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3644, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3649, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3654, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3660, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3666, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3671, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3676, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3683, i32 3}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3788, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3794, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3799, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3804, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3811, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3817, i32 4}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3823, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3828, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3833, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 3851, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 4292, i32 2}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ni_dpm_print_power_state._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @ni_dpm_print_power_state._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 4296, i32 4}
!54 = !{ptr @ni_dpm_print_power_state._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ni_dpm_print_power_state._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 4299, i32 4}
!58 = !{ptr @ni_dpm_print_power_state._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ni_dpm_print_power_state._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 4317, i32 17}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 4320, i32 17}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 4321, i32 17}
!66 = !{ptr @cayman_cgcg_cgls_default, !67, !"cayman_cgcg_cgls_default", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 253, i32 18}
!68 = !{ptr @cayman_mgcg_default, !69, !"cayman_mgcg_default", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 415, i32 18}
!70 = !{ptr @cayman_sysls_default, !71, !"cayman_sysls_default", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 653, i32 18}
!72 = !{ptr @cayman_cgcg_cgls_enable, !73, !"cayman_cgcg_cgls_enable", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 361, i32 18}
!74 = !{ptr @cayman_cgcg_cgls_disable, !75, !"cayman_cgcg_cgls_disable", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 306, i32 18}
!76 = !{ptr @cayman_mgcg_enable, !77, !"cayman_mgcg_enable", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 635, i32 18}
!78 = !{ptr @cayman_mgcg_disable, !79, !"cayman_mgcg_disable", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 620, i32 18}
!80 = !{ptr @cayman_sysls_enable, !81, !"cayman_sysls_enable", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 701, i32 18}
!82 = !{ptr @cayman_sysls_disable, !83, !"cayman_sysls_disable", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 676, i32 18}
!84 = !{ptr @cac_weights_cayman_xt, !85, !"cac_weights_cayman_xt", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 44, i32 36}
!86 = !{ptr @cac_weights_cayman_pro, !87, !"cac_weights_cayman_pro", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 113, i32 36}
!88 = !{ptr @cac_weights_cayman_le, !89, !"cac_weights_cayman_le", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/ni_dpm.c", i32 182, i32 36}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{i64 2158413624}
!101 = !{i64 5109727}
!102 = !{i64 5110145}
!103 = !{i64 2158413217}
!104 = !{!"auto-init"}
!105 = !{!"branch_weights", i32 2000, i32 1}
!106 = !{i64 2148117411, i64 2148117691, i64 2148118025, i64 2148118359}
