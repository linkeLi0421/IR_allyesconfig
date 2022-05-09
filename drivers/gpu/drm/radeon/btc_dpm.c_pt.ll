; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/btc_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/btc_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.radeon_clock_voltage_dependency_table = type { i32, ptr }
%struct.radeon_clock_voltage_dependency_entry = type { i32, i16 }
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
%struct.evergreen_power_info = type { %struct.rv7xx_power_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, %struct.evergreen_mc_reg_table, %struct.atom_voltage_table, %struct.atom_voltage_table, %struct.evergreen_arb_registers, %struct.evergreen_ulv_param, [2 x %struct.at], i16, %struct.radeon_ps, %struct.rv7xx_ps, %struct.radeon_ps, %struct.rv7xx_ps }
%struct.rv7xx_power_info = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %union.r7xx_clock_registers, i32, i32, i32, i32, [2 x i32], i16, i16, i16, [2 x i8], [32 x %struct.vddc_table_entry], i8, [3 x i8], i32, [2 x i8], [2 x i8], i32, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, %struct.RV770_SMC_STATETABLE, [2 x i8] }>
%union.r7xx_clock_registers = type { %struct.rv770_clock_registers }
%struct.rv770_clock_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vddc_table_entry = type { i16, i8, i8, i32 }
%struct.RV770_SMC_STATETABLE = type { i8, i8, i8, i8, [32 x i8], [32 x i32], %struct.RV770_SMC_VOLTAGEMASKTABLE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE, %struct.RV770_SMC_SWSTATE }
%struct.RV770_SMC_VOLTAGEMASKTABLE = type { [4 x i8], [4 x i32] }
%struct.RV770_SMC_SWSTATE = type { i8, i8, i8, i8, [3 x %struct.RV770_SMC_HW_PERFORMANCE_LEVEL] }
%struct.RV770_SMC_HW_PERFORMANCE_LEVEL = type { i8, %union.anon.109, i8, i8, i8, i8, i8, i8, i32, i32, %struct.RV770_SMC_SCLK_VALUE, %union.RV7XX_SMC_MCLK_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, %struct.RV770_SMC_VOLTAGE_VALUE, i8, i8, i8, i8 }
%union.anon.109 = type { i8 }
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
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.rv7xx_ps = type { %struct.rv7xx_pl, %struct.rv7xx_pl, %struct.rv7xx_pl, i8 }
%struct.atom_mc_reg_table = type { i8, i8, [20 x %struct.atom_mc_reg_entry], [32 x %struct.atom_mc_register_address] }
%struct.atom_mc_reg_entry = type { i32, [32 x i32] }
%struct.atom_mc_register_address = type { i16, i8 }
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
%struct.atom_clock_dividers = type { i32, %union.anon.110, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.87 = type { ptr }

@btc_valid_sclk = dso_local global { [40 x i32], [32 x i8] } { [40 x i32] [i32 5000, i32 10000, i32 15000, i32 20000, i32 25000, i32 30000, i32 35000, i32 40000, i32 45000, i32 50000, i32 55000, i32 60000, i32 65000, i32 70000, i32 75000, i32 80000, i32 85000, i32 90000, i32 95000, i32 100000, i32 105000, i32 110000, i32 11500, i32 120000, i32 125000, i32 130000, i32 135000, i32 140000, i32 145000, i32 150000, i32 155000, i32 160000, i32 165000, i32 170000, i32 175000, i32 180000, i32 185000, i32 190000, i32 195000, i32 200000], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"rv770_restrict_performance_levels_before_switch failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv770_halt_smc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cypress_upload_sw_state failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cypress_upload_mc_reg_table failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rv770_resume_smc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rv770_set_sw_state failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"btc_set_power_state_conditionally_enable_ulv failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cypress_construct_voltage_tables failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cypress_get_mvdd_configuration failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rv770_upload_firmware failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cypress_get_table_locations failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cypress_populate_mc_reg_table failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cypress_notify_smc_display_change failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to load MC firmware!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"power level %d    sclk: %u mclk: %u vddc: %u vddci: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@barts_cgcg_cgls_default = internal constant { [144 x i32], [128 x i8] } { [144 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1], [128 x i8] zeroinitializer }, align 32
@turks_cgcg_cgls_default = internal constant { [144 x i32], [128 x i8] } { [144 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1], [128 x i8] zeroinitializer }, align 32
@caicos_cgcg_cgls_default = internal constant { [144 x i32], [128 x i8] } { [144 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1], [128 x i8] zeroinitializer }, align 32
@barts_mgcg_default = internal constant { [432 x i32], [416 x i8] } { [432 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 21576, i32 256, i32 -1, i32 21988, i32 6291712, i32 -1, i32 5644, i32 256, i32 -1, i32 49508, i32 256, i32 -1, i32 35352, i32 256, i32 -1, i32 35196, i32 100663552, i32 -1, i32 35624, i32 256, i32 -1, i32 37188, i32 256, i32 -1, i32 39520, i32 256, i32 -1, i32 39016, i32 256, i32 -1, i32 36184, i32 256, i32 -1, i32 38160, i32 256, i32 -1, i32 38044, i32 256, i32 -1, i32 38484, i32 256, i32 -1, i32 36912, i32 256, i32 -1, i32 36916, i32 256, i32 -1, i32 36920, i32 256, i32 -1, i32 36924, i32 256, i32 -1, i32 36928, i32 256, i32 -1, i32 41472, i32 256, i32 -1, i32 41476, i32 256, i32 -1, i32 41480, i32 256, i32 -1, i32 41484, i32 256, i32 -1, i32 38780, i32 256, i32 -1, i32 16256, i32 256, i32 -1, i32 41488, i32 256, i32 -1, i32 41492, i32 256, i32 -1, i32 1240, i32 256, i32 -1, i32 38788, i32 256, i32 -1, i32 38552, i32 256, i32 -1, i32 1236, i32 512, i32 -1, i32 1232, i32 0, i32 -1, i32 12492, i32 256, i32 -1, i32 53440, i32 -16776960, i32 -1, i32 32812, i32 1073741824, i32 -1, i32 37212, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37296, i32 458752, i32 -1, i32 37300, i32 196610, i32 -1, i32 37304, i32 327684, i32 -1, i32 37316, i32 65542, i32 -1, i32 37320, i32 589832, i32 -1, i32 37324, i32 458752, i32 -1, i32 37328, i32 196610, i32 -1, i32 37332, i32 327684, i32 -1, i32 37344, i32 65542, i32 -1, i32 37348, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37356, i32 458752, i32 -1, i32 37360, i32 196610, i32 -1, i32 37364, i32 327684, i32 -1, i32 37376, i32 65542, i32 -1, i32 37380, i32 589832, i32 -1, i32 37384, i32 458752, i32 -1, i32 37388, i32 196610, i32 -1, i32 37392, i32 327684, i32 -1, i32 37404, i32 65542, i32 -1, i32 37408, i32 589832, i32 -1, i32 37412, i32 458752, i32 -1, i32 37416, i32 196610, i32 -1, i32 37420, i32 327684, i32 -1, i32 37432, i32 65542, i32 -1, i32 37436, i32 589832, i32 -1, i32 37524, i32 0, i32 -1, i32 32812, i32 1073807360, i32 -1, i32 37212, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37296, i32 458752, i32 -1, i32 37300, i32 196610, i32 -1, i32 37304, i32 327684, i32 -1, i32 37316, i32 65542, i32 -1, i32 37320, i32 589832, i32 -1, i32 37324, i32 458752, i32 -1, i32 37328, i32 196610, i32 -1, i32 37332, i32 327684, i32 -1, i32 37344, i32 65542, i32 -1, i32 37348, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37356, i32 458752, i32 -1, i32 37360, i32 196610, i32 -1, i32 37364, i32 327684, i32 -1, i32 37376, i32 65542, i32 -1, i32 37380, i32 589832, i32 -1, i32 37384, i32 458752, i32 -1, i32 37388, i32 196610, i32 -1, i32 37392, i32 327684, i32 -1, i32 37404, i32 65542, i32 -1, i32 37408, i32 589832, i32 -1, i32 37412, i32 458752, i32 -1, i32 37416, i32 196610, i32 -1, i32 37420, i32 327684, i32 -1, i32 37432, i32 65542, i32 -1, i32 37436, i32 589832, i32 -1, i32 37524, i32 0, i32 -1, i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1], [416 x i8] zeroinitializer }, align 32
@turks_mgcg_default = internal constant { [285 x i32], [268 x i8] } { [285 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 21576, i32 256, i32 -1, i32 21988, i32 6291712, i32 -1, i32 5644, i32 256, i32 -1, i32 49508, i32 256, i32 -1, i32 35352, i32 256, i32 -1, i32 35196, i32 100663552, i32 -1, i32 35624, i32 256, i32 -1, i32 37188, i32 256, i32 -1, i32 39520, i32 256, i32 -1, i32 39016, i32 256, i32 -1, i32 36184, i32 256, i32 -1, i32 38160, i32 256, i32 -1, i32 38044, i32 256, i32 -1, i32 38484, i32 256, i32 -1, i32 36912, i32 256, i32 -1, i32 36916, i32 256, i32 -1, i32 36920, i32 256, i32 -1, i32 36924, i32 256, i32 -1, i32 36928, i32 256, i32 -1, i32 41472, i32 256, i32 -1, i32 41476, i32 256, i32 -1, i32 41480, i32 256, i32 -1, i32 41484, i32 256, i32 -1, i32 38780, i32 256, i32 -1, i32 16256, i32 256, i32 -1, i32 41488, i32 256, i32 -1, i32 41492, i32 256, i32 -1, i32 1240, i32 256, i32 -1, i32 38788, i32 256, i32 -1, i32 38552, i32 256, i32 -1, i32 1236, i32 512, i32 -1, i32 1232, i32 0, i32 -1, i32 12492, i32 256, i32 -1, i32 53440, i32 256, i32 -1, i32 37212, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37296, i32 458752, i32 -1, i32 37300, i32 196610, i32 -1, i32 37304, i32 327684, i32 -1, i32 37316, i32 65542, i32 -1, i32 37320, i32 589832, i32 -1, i32 37324, i32 458752, i32 -1, i32 37328, i32 196610, i32 -1, i32 37332, i32 327684, i32 -1, i32 37344, i32 65542, i32 -1, i32 37348, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37356, i32 458752, i32 -1, i32 37360, i32 196610, i32 -1, i32 37364, i32 327684, i32 -1, i32 37376, i32 65542, i32 -1, i32 37380, i32 589832, i32 -1, i32 37384, i32 458752, i32 -1, i32 37388, i32 196610, i32 -1, i32 37392, i32 327684, i32 -1, i32 37404, i32 65542, i32 -1, i32 37408, i32 589832, i32 -1, i32 37524, i32 0, i32 -1, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1], [268 x i8] zeroinitializer }, align 32
@caicos_mgcg_default = internal constant { [225 x i32], [252 x i8] } { [225 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 21576, i32 256, i32 -1, i32 21988, i32 6291712, i32 -1, i32 5644, i32 256, i32 -1, i32 49508, i32 256, i32 -1, i32 35352, i32 256, i32 -1, i32 35196, i32 100663552, i32 -1, i32 35624, i32 256, i32 -1, i32 37188, i32 256, i32 -1, i32 39520, i32 256, i32 -1, i32 39016, i32 256, i32 -1, i32 36184, i32 256, i32 -1, i32 38160, i32 256, i32 -1, i32 38044, i32 256, i32 -1, i32 38484, i32 256, i32 -1, i32 36912, i32 256, i32 -1, i32 36916, i32 256, i32 -1, i32 36920, i32 256, i32 -1, i32 36924, i32 256, i32 -1, i32 36928, i32 256, i32 -1, i32 41472, i32 256, i32 -1, i32 41476, i32 256, i32 -1, i32 41480, i32 256, i32 -1, i32 41484, i32 256, i32 -1, i32 38780, i32 256, i32 -1, i32 16256, i32 256, i32 -1, i32 41488, i32 256, i32 -1, i32 41492, i32 256, i32 -1, i32 1240, i32 256, i32 -1, i32 38788, i32 256, i32 -1, i32 38552, i32 256, i32 -1, i32 1236, i32 512, i32 -1, i32 1232, i32 0, i32 -1, i32 12492, i32 256, i32 -1, i32 53440, i32 -16776960, i32 -1, i32 37212, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37524, i32 0, i32 -1, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1], [252 x i8] zeroinitializer }, align 32
@barts_sysls_default = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1], [44 x i8] zeroinitializer }, align 32
@turks_sysls_default = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1], [44 x i8] zeroinitializer }, align 32
@caicos_sysls_default = internal constant { [42 x i32], [56 x i8] } { [42 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1], [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@barts_cgcg_cgls_enable = internal constant { [147 x i32], [148 x i8] } { [147 x i32] [i32 1604, i32 1013906, i32 2048128, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 -1, i32 -1], [148 x i8] zeroinitializer }, align 32
@turks_cgcg_cgls_enable = internal constant { [147 x i32], [148 x i8] } { [147 x i32] [i32 1604, i32 1013906, i32 2048128, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 -1, i32 -1], [148 x i8] zeroinitializer }, align 32
@caicos_cgcg_cgls_enable = internal constant { [147 x i32], [148 x i8] } { [147 x i32] [i32 1604, i32 1013906, i32 2048128, i32 2296, i32 16, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 -1, i32 -1], [148 x i8] zeroinitializer }, align 32
@barts_cgcg_cgls_disable = internal constant { [150 x i32], [136 x i8] } { [150 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1, i32 1604, i32 1014034, i32 2048384, i32 1604, i32 997394, i32 2048384], [136 x i8] zeroinitializer }, align 32
@turks_cgcg_cgls_disable = internal constant { [150 x i32], [136 x i8] } { [150 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1, i32 1604, i32 1014034, i32 2048384, i32 1604, i32 997394, i32 2048384], [136 x i8] zeroinitializer }, align 32
@caicos_cgcg_cgls_disable = internal constant { [150 x i32], [136 x i8] } { [150 x i32] [i32 2296, i32 16, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 17, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 18, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 19, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 20, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 21, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 22, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 23, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 24, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 25, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 26, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 27, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 32, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 33, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 34, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 35, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 36, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 37, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 38, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 39, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 40, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 41, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 42, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 43, i32 -1, i32 2300, i32 0, i32 -1, i32 1604, i32 1014034, i32 2048384, i32 1604, i32 997394, i32 2048384], [136 x i8] zeroinitializer }, align 32
@barts_mgcg_enable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 0, i32 -1, i32 37200, i32 -2120990720, i32 -1], [40 x i8] zeroinitializer }, align 32
@turks_mgcg_enable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 0, i32 -1, i32 37200, i32 1855209472, i32 -1], [40 x i8] zeroinitializer }, align 32
@caicos_mgcg_enable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 0, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 0, i32 -1, i32 37200, i32 1184120896, i32 -1], [40 x i8] zeroinitializer }, align 32
@barts_mgcg_disable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 -1, i32 -1, i32 37200, i32 6291456, i32 -1], [40 x i8] zeroinitializer }, align 32
@turks_mgcg_disable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 -1, i32 -1, i32 37200, i32 6291456, i32 -1], [40 x i8] zeroinitializer }, align 32
@caicos_mgcg_disable = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 2296, i32 0, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 1, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 2, i32 -1, i32 2300, i32 -1, i32 -1, i32 2296, i32 3, i32 -1, i32 2300, i32 -1, i32 -1, i32 37200, i32 6291456, i32 -1], [40 x i8] zeroinitializer }, align 32
@barts_sysls_enable = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 21992, i32 1, i32 -1, i32 53436, i32 256, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 1224, i32 0, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1], [44 x i8] zeroinitializer }, align 32
@turks_sysls_enable = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 21992, i32 1, i32 -1, i32 53436, i32 256, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 1224, i32 0, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1], [44 x i8] zeroinitializer }, align 32
@caicos_sysls_enable = internal constant { [42 x i32], [56 x i8] } { [42 x i32] [i32 21992, i32 1, i32 -1, i32 53436, i32 256, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 25836, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1, i32 1224, i32 0, i32 -1], [56 x i8] zeroinitializer }, align 32
@barts_sysls_disable = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 5568, i32 267265, i32 -1, i32 9804, i32 263168, i32 -1, i32 9800, i32 263168, i32 -1, i32 9808, i32 263168, i32 -1, i32 8376, i32 263168, i32 -1, i32 8380, i32 263168, i32 -1, i32 8384, i32 265344, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6815744, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 32765, i32 -1, i32 3196, i32 65280, i32 -1, i32 28156, i32 127, i32 -1], [44 x i8] zeroinitializer }, align 32
@turks_sysls_disable = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 5568, i32 267265, i32 -1, i32 9804, i32 263168, i32 -1, i32 9800, i32 263168, i32 -1, i32 9808, i32 263168, i32 -1, i32 8376, i32 263168, i32 -1, i32 8380, i32 263168, i32 -1, i32 8384, i32 265344, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6815744, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 32765, i32 -1, i32 3196, i32 65280, i32 -1, i32 28156, i32 127, i32 -1], [44 x i8] zeroinitializer }, align 32
@caicos_sysls_disable = internal constant { [42 x i32], [56 x i8] } { [42 x i32] [i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 5568, i32 267265, i32 -1, i32 9804, i32 263168, i32 -1, i32 9800, i32 263168, i32 -1, i32 9808, i32 263168, i32 -1, i32 8376, i32 263168, i32 -1, i32 8380, i32 263168, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6815744, i32 -1, i32 1224, i32 1, i32 -1, i32 25836, i32 32765, i32 -1, i32 3196, i32 65280, i32 -1, i32 28156, i32 127, i32 -1], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.btc_dpm_enable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_cgcg_cgls_default, ptr @turks_cgcg_cgls_default, ptr @caicos_cgcg_cgls_default], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_enable.17 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 144, i32 95, i32 75], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_enable.18 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_mgcg_default, ptr @turks_mgcg_default, ptr @caicos_mgcg_default], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_enable.19 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15, i32 15, i32 14], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_enable.20 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_sysls_default, ptr @turks_sysls_default, ptr @caicos_sysls_default], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_cg_clock_gating_enable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_cgcg_cgls_enable, ptr @turks_cgcg_cgls_enable, ptr @caicos_cgcg_cgls_enable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_cg_clock_gating_enable.21 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_cgcg_cgls_disable, ptr @turks_cgcg_cgls_disable, ptr @caicos_cgcg_cgls_disable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_mg_clock_gating_enable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_mgcg_enable, ptr @turks_mgcg_enable, ptr @caicos_mgcg_enable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_mg_clock_gating_enable.22 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_mgcg_disable, ptr @turks_mgcg_disable, ptr @caicos_mgcg_disable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_ls_clock_gating_enable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15, i32 15, i32 14], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_ls_clock_gating_enable.23 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_sysls_enable, ptr @turks_sysls_enable, ptr @caicos_sysls_enable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_ls_clock_gating_enable.24 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15, i32 15, i32 14], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_ls_clock_gating_enable.25 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_sysls_disable, ptr @turks_sysls_disable, ptr @caicos_sysls_disable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_disable = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_cgcg_cgls_disable, ptr @turks_cgcg_cgls_disable, ptr @caicos_cgcg_cgls_disable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_disable.26 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_mgcg_disable, ptr @turks_mgcg_disable, ptr @caicos_mgcg_disable], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_disable.27 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 15, i32 15, i32 14], [20 x i8] zeroinitializer }, align 32
@switch.table.btc_dpm_disable.28 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @barts_sysls_disable, ptr @turks_sysls_disable, ptr @caicos_sysls_disable], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 10000, i64 15000, i64 20000, i64 25000]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 10000, i64 15000, i64 20000, i64 25000]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 10000, i64 15000, i64 20000, i64 25000]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 32, i64 10000, i64 15000, i64 20000, i64 25000]
@__sancov_gen_cov_switch_values.32 = internal global [13 x i64] [i64 11, i64 16, i64 2600, i64 2601, i64 2602, i64 2603, i64 2605, i64 2606, i64 2607, i64 2608, i64 2691, i64 2731, i64 2769]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 2689, i64 2690]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 16, i64 26688, i64 26689, i64 26690, i64 26691, i64 26697, i64 26704, i64 26712, i64 26713]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"btc_valid_sclk\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1157, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2312, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2321, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2329, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2335, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2344, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2349, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2359, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2397, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2405, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2439, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2444, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2454, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2463, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2537, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2745, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2753, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 2754, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"barts_cgcg_cgls_default\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 56, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"turks_cgcg_cgls_default\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 674, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"caicos_cgcg_cgls_default\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 400, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"barts_mgcg_default\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 220, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"turks_mgcg_default\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 838, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"caicos_mgcg_default\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 563, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"barts_sysls_default\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 975, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"turks_sysls_default\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1095, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"caicos_sysls_default\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1037, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"barts_cgcg_cgls_enable\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 165, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"turks_cgcg_cgls_enable\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 782, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"caicos_cgcg_cgls_enable\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 508, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant [24 x i8] c"barts_cgcg_cgls_disable\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 110, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"turks_cgcg_cgls_disable\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 727, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"caicos_cgcg_cgls_disable\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 453, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"barts_mgcg_enable\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 384, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [18 x i8] c"turks_mgcg_enable\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 953, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant [19 x i8] c"caicos_mgcg_enable\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 658, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"barts_mgcg_disable\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 369, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"turks_mgcg_disable\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 938, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"caicos_mgcg_disable\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 643, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"barts_sysls_enable\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1016, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"turks_sysls_enable\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1135, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"caicos_sysls_enable\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1075, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c"barts_sysls_disable\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 996, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"turks_sysls_disable\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1115, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [21 x i8] c"caicos_sysls_disable\00", align 1
@___asan_gen_.172 = private constant [36 x i8] c"../drivers/gpu/drm/radeon/btc_dpm.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1056, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [28 x i8] c"switch.table.btc_dpm_enable\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"switch.table.btc_dpm_enable.17\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [31 x i8] c"switch.table.btc_dpm_enable.18\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"switch.table.btc_dpm_enable.19\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"switch.table.btc_dpm_enable.20\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [40 x i8] c"switch.table.btc_cg_clock_gating_enable\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [43 x i8] c"switch.table.btc_cg_clock_gating_enable.21\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [40 x i8] c"switch.table.btc_mg_clock_gating_enable\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [43 x i8] c"switch.table.btc_mg_clock_gating_enable.22\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [40 x i8] c"switch.table.btc_ls_clock_gating_enable\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [43 x i8] c"switch.table.btc_ls_clock_gating_enable.23\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [43 x i8] c"switch.table.btc_ls_clock_gating_enable.24\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [43 x i8] c"switch.table.btc_ls_clock_gating_enable.25\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [29 x i8] c"switch.table.btc_dpm_disable\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [32 x i8] c"switch.table.btc_dpm_disable.26\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [32 x i8] c"switch.table.btc_dpm_disable.27\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [32 x i8] c"switch.table.btc_dpm_disable.28\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @btc_valid_sclk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @barts_cgcg_cgls_default, ptr @turks_cgcg_cgls_default, ptr @caicos_cgcg_cgls_default, ptr @barts_mgcg_default, ptr @turks_mgcg_default, ptr @caicos_mgcg_default, ptr @barts_sysls_default, ptr @turks_sysls_default, ptr @caicos_sysls_default, ptr @barts_cgcg_cgls_enable, ptr @turks_cgcg_cgls_enable, ptr @caicos_cgcg_cgls_enable, ptr @barts_cgcg_cgls_disable, ptr @turks_cgcg_cgls_disable, ptr @caicos_cgcg_cgls_disable, ptr @barts_mgcg_enable, ptr @turks_mgcg_enable, ptr @caicos_mgcg_enable, ptr @barts_mgcg_disable, ptr @turks_mgcg_disable, ptr @caicos_mgcg_disable, ptr @barts_sysls_enable, ptr @turks_sysls_enable, ptr @caicos_sysls_enable, ptr @barts_sysls_disable, ptr @turks_sysls_disable, ptr @caicos_sysls_disable, ptr @switch.table.btc_dpm_enable, ptr @switch.table.btc_dpm_enable.17, ptr @switch.table.btc_dpm_enable.18, ptr @switch.table.btc_dpm_enable.19, ptr @switch.table.btc_dpm_enable.20, ptr @switch.table.btc_cg_clock_gating_enable, ptr @switch.table.btc_cg_clock_gating_enable.21, ptr @switch.table.btc_mg_clock_gating_enable, ptr @switch.table.btc_mg_clock_gating_enable.22, ptr @switch.table.btc_ls_clock_gating_enable, ptr @switch.table.btc_ls_clock_gating_enable.23, ptr @switch.table.btc_ls_clock_gating_enable.24, ptr @switch.table.btc_ls_clock_gating_enable.25, ptr @switch.table.btc_dpm_disable, ptr @switch.table.btc_dpm_disable.26, ptr @switch.table.btc_dpm_disable.27, ptr @switch.table.btc_dpm_disable.28], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btc_valid_sclk to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_cgcg_cgls_default to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_cgcg_cgls_default to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_cgcg_cgls_default to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_mgcg_default to i32), i32 1728, i32 2144, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_mgcg_default to i32), i32 1140, i32 1408, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_mgcg_default to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_sysls_default to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_sysls_default to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_sysls_default to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_cgcg_cgls_enable to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_cgcg_cgls_enable to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_cgcg_cgls_enable to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_cgcg_cgls_disable to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_cgcg_cgls_disable to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_cgcg_cgls_disable to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_mgcg_enable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_mgcg_enable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_mgcg_enable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_mgcg_disable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_mgcg_disable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_mgcg_disable to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_sysls_enable to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_sysls_enable to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_sysls_enable to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @barts_sysls_disable to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turks_sysls_disable to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caicos_sysls_disable to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_enable.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_enable.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_enable.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_enable.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_cg_clock_gating_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_cg_clock_gating_enable.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_mg_clock_gating_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_mg_clock_gating_enable.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_ls_clock_gating_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_ls_clock_gating_enable.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_ls_clock_gating_enable.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_ls_clock_gating_enable.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_disable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_disable.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_disable.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.btc_dpm_disable.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_get_max_clock_from_voltage_dependency_table(ptr noundef readonly %table, ptr nocapture noundef writeonly %max_clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %entries = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, ptr %table, i32 0, i32 1
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %clock.023 = phi i32 [ %6, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %3, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = tail call i32 @llvm.umax.i32(i32 %clock.023, i32 %5)
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %storemerge = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %6, %for.body.cleanup_crit_edge ]
  %7 = ptrtoint ptr %max_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %max_clock, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_apply_voltage_dependency_rules(ptr noundef readonly %table, i32 noundef %clock, i16 noundef zeroext %max_voltage, ptr nocapture noundef %voltage) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %for.body.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %lor.lhs.false
  %entries = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, ptr %table, i32 0, i32 1
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %3, i32 %i.059
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %clock)
  %cmp4.not = icmp ult i32 %5, %clock
  br i1 %cmp4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  %6 = ptrtoint ptr %voltage to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %voltage, align 2
  %v = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %3, i32 %i.059, i32 1
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp9 = icmp ult i16 %7, %9
  br i1 %cmp9, label %if.then11, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i16 @llvm.umin.i16(i16 %9, i16 %max_voltage)
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %voltage to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %voltage, align 2
  %13 = tail call i16 @llvm.umax.i16(i16 %12, i16 %max_voltage)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.then11
  %.sink = phi i16 [ %10, %if.then11 ], [ %13, %for.end ]
  %14 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink, ptr %voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_skip_blacklist_clocks(ptr nocapture noundef readonly %rdev, i32 noundef %max_sclk, i32 noundef %max_mclk, ptr noundef %sclk, ptr noundef %mclk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sclk, null
  %cmp1 = icmp eq ptr %mclk, null
  %or.cond = or i1 %cmp, %cmp1
  %valid_sclk_values.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9
  %values.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9, i32 1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %tailrecurse.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

tailrecurse.preheader:                            ; preds = %entry
  %0 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load i32, ptr %sclk, align 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %btc_get_valid_sclk.exit.tailrecurse_crit_edge, %tailrecurse.preheader
  %1 = phi i32 [ %.pr, %tailrecurse.preheader ], [ %19, %btc_get_valid_sclk.exit.tailrecurse_crit_edge ]
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %tailrecurse.cleanup_crit_edge [
    i32 10000, label %land.lhs.true
    i32 15000, label %land.lhs.true.1
    i32 20000, label %land.lhs.true.2
    i32 25000, label %land.lhs.true.3
  ]

tailrecurse.cleanup_crit_edge:                    ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %tailrecurse
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %4)
  %cmp7 = icmp eq i32 %4, 30000
  br i1 %cmp7, label %land.lhs.true.if.then11.critedge_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.then11.critedge_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge

land.lhs.true.1:                                  ; preds = %tailrecurse
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %6)
  %cmp7.1 = icmp eq i32 %6, 30000
  br i1 %cmp7.1, label %land.lhs.true.1.if.then11.critedge_crit_edge, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.1.if.then11.critedge_crit_edge:     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge

land.lhs.true.2:                                  ; preds = %tailrecurse
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %8)
  %cmp7.2 = icmp eq i32 %8, 30000
  br i1 %cmp7.2, label %land.lhs.true.2.if.then11.critedge_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2.if.then11.critedge_crit_edge:     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge

land.lhs.true.3:                                  ; preds = %tailrecurse
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %10)
  %cmp7.3 = icmp eq i32 %10, 30000
  br i1 %cmp7.3, label %land.lhs.true.3.if.then11.critedge_crit_edge, label %land.lhs.true.3.cleanup_crit_edge

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.3.if.then11.critedge_crit_edge:     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge

if.then11.critedge:                               ; preds = %land.lhs.true.3.if.then11.critedge_crit_edge, %land.lhs.true.2.if.then11.critedge_crit_edge, %land.lhs.true.1.if.then11.critedge_crit_edge, %land.lhs.true.if.then11.critedge_crit_edge
  %add = add nuw nsw i32 %1, 1
  %11 = ptrtoint ptr %valid_sclk_values.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %valid_sclk_values.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i.i = icmp eq i32 %12, 0
  br i1 %cmp1.i.i, label %if.then11.critedge.btc_get_valid_sclk.exit_crit_edge, label %for.body.preheader.i.i

if.then11.critedge.btc_get_valid_sclk.exit_crit_edge: ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit

for.body.preheader.i.i:                           ; preds = %if.then11.critedge
  %13 = ptrtoint ptr %values.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %values.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.053.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 %i.053.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %1)
  %cmp5.not.i.i.not = icmp ugt i32 %16, %1
  br i1 %cmp5.not.i.i.not, label %for.body.i.i.btc_get_valid_sclk.exit_crit_edge, label %for.cond.i.i

for.body.i.i.btc_get_valid_sclk.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %12, -1
  %arrayidx19.i.i = getelementptr i32, ptr %14, i32 %sub.i.i
  %17 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx19.i.i, align 4
  br label %btc_get_valid_sclk.exit

btc_get_valid_sclk.exit:                          ; preds = %for.end.i.i, %for.body.i.i.btc_get_valid_sclk.exit_crit_edge, %if.then11.critedge.btc_get_valid_sclk.exit_crit_edge
  %.sink.i.i = phi i32 [ %18, %for.end.i.i ], [ %add, %if.then11.critedge.btc_get_valid_sclk.exit_crit_edge ], [ %16, %for.body.i.i.btc_get_valid_sclk.exit_crit_edge ]
  %19 = tail call i32 @llvm.umin.i32(i32 %.sink.i.i, i32 %max_sclk) #7
  %20 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sclk, align 4
  %cmp15 = icmp ult i32 %.sink.i.i, %max_sclk
  br i1 %cmp15, label %btc_get_valid_sclk.exit.tailrecurse_crit_edge, label %btc_get_valid_sclk.exit.cleanup_crit_edge

btc_get_valid_sclk.exit.cleanup_crit_edge:        ; preds = %btc_get_valid_sclk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

btc_get_valid_sclk.exit.tailrecurse_crit_edge:    ; preds = %btc_get_valid_sclk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse

cleanup:                                          ; preds = %btc_get_valid_sclk.exit.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %tailrecurse.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_adjust_clock_combinations(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %max_limits, ptr nocapture noundef %pl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end49_crit_edge, label %lor.lhs.false

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp4 = icmp eq i32 %3, %1
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp4
  br i1 %or.cond, label %lor.lhs.false.if.end49_crit_edge, label %if.end6

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp9 = icmp ult i32 %3, %1
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %sub = add i32 %1, -1
  %add = add i32 %sub, %3
  %div = udiv i32 %add, %3
  %mclk_sclk_ratio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 13
  %4 = ptrtoint ptr %mclk_sclk_ratio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk_sclk_ratio, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp14 = icmp ugt i32 %div, %5
  br i1 %cmp14, label %if.then15, label %if.then10.if.end49_crit_edge

if.then10.if.end49_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then15:                                        ; preds = %if.then10
  %6 = ptrtoint ptr %max_limits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_limits, align 4
  %add23 = add i32 %sub, %5
  %div28 = udiv i32 %add23, %5
  %valid_sclk_values.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9
  %8 = ptrtoint ptr %valid_sclk_values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %valid_sclk_values.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i.i = icmp eq i32 %9, 0
  br i1 %cmp1.i.i, label %if.then15.btc_get_valid_sclk.exit_crit_edge, label %for.body.preheader.i.i

if.then15.btc_get_valid_sclk.exit_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit

for.body.preheader.i.i:                           ; preds = %if.then15
  %values.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9, i32 1
  %10 = ptrtoint ptr %values.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %values.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.053.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %i.053.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div28)
  %cmp5.not.i.i = icmp ult i32 %13, %div28
  br i1 %cmp5.not.i.i, label %for.cond.i.i, label %for.body.i.i.btc_get_valid_sclk.exit_crit_edge

for.body.i.i.btc_get_valid_sclk.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %9, -1
  %arrayidx19.i.i = getelementptr i32, ptr %11, i32 %sub.i.i
  %14 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19.i.i, align 4
  br label %btc_get_valid_sclk.exit

btc_get_valid_sclk.exit:                          ; preds = %for.end.i.i, %for.body.i.i.btc_get_valid_sclk.exit_crit_edge, %if.then15.btc_get_valid_sclk.exit_crit_edge
  %.sink.i.i = phi i32 [ %15, %for.end.i.i ], [ %div28, %if.then15.btc_get_valid_sclk.exit_crit_edge ], [ %13, %for.body.i.i.btc_get_valid_sclk.exit_crit_edge ]
  %16 = tail call i32 @llvm.umin.i32(i32 %.sink.i.i, i32 %7) #7
  %17 = ptrtoint ptr %pl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pl, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end6
  %sub33 = sub i32 %3, %1
  %sclk_mclk_delta = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 14
  %18 = ptrtoint ptr %sclk_mclk_delta to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sclk_mclk_delta, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33, i32 %19)
  %cmp37 = icmp ugt i32 %sub33, %19
  br i1 %cmp37, label %if.then38, label %if.else.if.end49_crit_edge

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then38:                                        ; preds = %if.else
  %mclk39 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits, i32 0, i32 1
  %20 = ptrtoint ptr %mclk39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk39, align 4
  %sub45 = sub i32 %3, %19
  %valid_mclk_values.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10
  %22 = ptrtoint ptr %valid_mclk_values.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %valid_mclk_values.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.i.i74 = icmp eq i32 %23, 0
  br i1 %cmp1.i.i74, label %if.then38.btc_get_valid_mclk.exit_crit_edge, label %for.body.preheader.i.i76

if.then38.btc_get_valid_mclk.exit_crit_edge:      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit

for.body.preheader.i.i76:                         ; preds = %if.then38
  %values.i.i75 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10, i32 1
  %24 = ptrtoint ptr %values.i.i75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %values.i.i75, align 4
  br label %for.body.i.i83

for.cond.i.i79:                                   ; preds = %for.body.i.i83
  %inc.i.i77 = add nuw i32 %i.053.i.i80, 1
  %exitcond.not.i.i78 = icmp eq i32 %inc.i.i77, %23
  br i1 %exitcond.not.i.i78, label %for.end.i.i86, label %for.cond.i.i79.for.body.i.i83_crit_edge

for.cond.i.i79.for.body.i.i83_crit_edge:          ; preds = %for.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i83

for.body.i.i83:                                   ; preds = %for.cond.i.i79.for.body.i.i83_crit_edge, %for.body.preheader.i.i76
  %i.053.i.i80 = phi i32 [ %inc.i.i77, %for.cond.i.i79.for.body.i.i83_crit_edge ], [ 0, %for.body.preheader.i.i76 ]
  %arrayidx.i.i81 = getelementptr i32, ptr %25, i32 %i.053.i.i80
  %26 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %sub45)
  %cmp5.not.i.i82 = icmp ult i32 %27, %sub45
  br i1 %cmp5.not.i.i82, label %for.cond.i.i79, label %for.body.i.i83.btc_get_valid_mclk.exit_crit_edge

for.body.i.i83.btc_get_valid_mclk.exit_crit_edge: ; preds = %for.body.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit

for.end.i.i86:                                    ; preds = %for.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i84 = add i32 %23, -1
  %arrayidx19.i.i85 = getelementptr i32, ptr %25, i32 %sub.i.i84
  %28 = ptrtoint ptr %arrayidx19.i.i85 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx19.i.i85, align 4
  br label %btc_get_valid_mclk.exit

btc_get_valid_mclk.exit:                          ; preds = %for.end.i.i86, %for.body.i.i83.btc_get_valid_mclk.exit_crit_edge, %if.then38.btc_get_valid_mclk.exit_crit_edge
  %.sink.i.i87 = phi i32 [ %29, %for.end.i.i86 ], [ %sub45, %if.then38.btc_get_valid_mclk.exit_crit_edge ], [ %27, %for.body.i.i83.btc_get_valid_mclk.exit_crit_edge ]
  %30 = tail call i32 @llvm.umin.i32(i32 %.sink.i.i87, i32 %21) #7
  %31 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %mclk, align 4
  br label %if.end49

if.end49:                                         ; preds = %btc_get_valid_mclk.exit, %if.else.if.end49_crit_edge, %btc_get_valid_sclk.exit, %if.then10.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge, %entry.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_apply_voltage_delta_rules(ptr noundef %rdev, i16 noundef zeroext %max_vddc, i16 noundef zeroext %max_vddci, ptr nocapture noundef %vddc, ptr nocapture noundef %vddci) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %0 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vddc, align 2
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vddci, align 2
  %conv2 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp3 = icmp eq i16 %3, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp7 = icmp ugt i16 %1, %3
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %sub = sub nsw i32 %conv, %conv2
  %vddc_vddci_delta = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %4 = ptrtoint ptr %vddc_vddci_delta to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vddc_vddci_delta, align 4
  %conv12 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv12)
  %cmp13 = icmp sgt i32 %sub, %conv12
  br i1 %cmp13, label %if.then15, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.then9
  %vddci_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 20
  %sub22 = sub i16 %1, %5
  %6 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp20.not.i = icmp eq i32 %7, 0
  br i1 %cmp20.not.i, label %if.then15.for.end.i_crit_edge, label %if.then15.for.body.i_crit_edge

if.then15.for.body.i_crit_edge:                   ; preds = %if.then15
  br label %for.body.i

if.then15.for.end.i_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then15.for.body.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.then15.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 20, i32 3, i32 %i.021.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %sub22)
  %cmp2.not.i = icmp ult i16 %9, %sub22
  br i1 %cmp2.not.i, label %for.cond.i, label %for.body.i.btc_find_voltage.exit_crit_edge

for.body.i.btc_find_voltage.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.then15.for.end.i_crit_edge
  %sub.i = add i32 %7, -1
  %arrayidx9.i = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 20, i32 3, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx9.i, align 4
  br label %btc_find_voltage.exit

btc_find_voltage.exit:                            ; preds = %for.end.i, %for.body.i.btc_find_voltage.exit_crit_edge
  %retval.0.i = phi i16 [ %11, %for.end.i ], [ %9, %for.body.i.btc_find_voltage.exit_crit_edge ]
  %12 = tail call i16 @llvm.umin.i16(i16 %retval.0.i, i16 %max_vddci)
  %13 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vddci, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end
  %sub35 = sub nsw i32 %conv2, %conv
  %vddc_vddci_delta39 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %14 = ptrtoint ptr %vddc_vddci_delta39 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vddc_vddci_delta39, align 4
  %conv40 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35, i32 %conv40)
  %cmp41 = icmp sgt i32 %sub35, %conv40
  br i1 %cmp41, label %if.then43, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then43:                                        ; preds = %if.else
  %vddc_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 19
  %sub50 = sub i16 %3, %15
  %16 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20.not.i87 = icmp eq i32 %17, 0
  br i1 %cmp20.not.i87, label %if.then43.for.end.i97_crit_edge, label %if.then43.for.body.i94_crit_edge

if.then43.for.body.i94_crit_edge:                 ; preds = %if.then43
  br label %for.body.i94

if.then43.for.end.i97_crit_edge:                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97

for.cond.i90:                                     ; preds = %for.body.i94
  %inc.i88 = add nuw i32 %i.021.i91, 1
  %exitcond.not.i89 = icmp eq i32 %inc.i88, %17
  br i1 %exitcond.not.i89, label %for.cond.i90.for.end.i97_crit_edge, label %for.cond.i90.for.body.i94_crit_edge

for.cond.i90.for.body.i94_crit_edge:              ; preds = %for.cond.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i94

for.cond.i90.for.end.i97_crit_edge:               ; preds = %for.cond.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97

for.body.i94:                                     ; preds = %for.cond.i90.for.body.i94_crit_edge, %if.then43.for.body.i94_crit_edge
  %i.021.i91 = phi i32 [ %inc.i88, %for.cond.i90.for.body.i94_crit_edge ], [ 0, %if.then43.for.body.i94_crit_edge ]
  %arrayidx.i92 = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 19, i32 3, i32 %i.021.i91
  %18 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i92, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %sub50)
  %cmp2.not.i93 = icmp ult i16 %19, %sub50
  br i1 %cmp2.not.i93, label %for.cond.i90, label %for.body.i94.btc_find_voltage.exit99_crit_edge

for.body.i94.btc_find_voltage.exit99_crit_edge:   ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit99

for.end.i97:                                      ; preds = %for.cond.i90.for.end.i97_crit_edge, %if.then43.for.end.i97_crit_edge
  %sub.i95 = add i32 %17, -1
  %arrayidx9.i96 = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 19, i32 3, i32 %sub.i95
  %20 = ptrtoint ptr %arrayidx9.i96 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx9.i96, align 4
  br label %btc_find_voltage.exit99

btc_find_voltage.exit99:                          ; preds = %for.end.i97, %for.body.i94.btc_find_voltage.exit99_crit_edge
  %retval.0.i98 = phi i16 [ %21, %for.end.i97 ], [ %19, %for.body.i94.btc_find_voltage.exit99_crit_edge ]
  %22 = tail call i16 @llvm.umin.i16(i16 %retval.0.i98, i16 %max_vddc)
  %23 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vddc, align 2
  br label %cleanup

cleanup:                                          ; preds = %btc_find_voltage.exit99, %if.else.cleanup_crit_edge, %btc_find_voltage.exit, %if.then9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @evergreen_get_pi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr nocapture noundef readonly %sequence, i32 noundef %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp29.not = icmp eq i32 %mul, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %r100_mm_wreg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %r100_mm_wreg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %sequence, i32 %i.030
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp ugt i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %1)
  %cmp1.i = icmp ult i32 %1, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %1) #7
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ]
  %add = add i32 %i.030, 2
  %arrayidx1 = getelementptr i32, ptr %sequence, i32 %add
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %retval.0.i, %neg
  %add2 = add nuw i32 %i.030, 1
  %arrayidx3 = getelementptr i32, ptr %sequence, i32 %add2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %and6 = and i32 %11, %9
  %or = or i32 %and6, %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i23 = icmp ugt i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %cmp1.i24 = icmp ult i32 %13, 65536
  %or.cond.i25 = or i1 %cmp1.i24, %cmp.i23
  br i1 %or.cond.i25, label %do.body.i, label %if.else.i28

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %18, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %16) #7, !srcloc !104
  br label %r100_mm_wreg.exit

if.else.i28:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %13, i32 noundef %or) #7
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i28, %do.body.i
  %add8 = add i32 %i.030, 3
  %cmp = icmp ult i32 %add8, %mul
  br i1 %cmp, label %r100_mm_wreg.exit.for.body_crit_edge, label %r100_mm_wreg.exit.for.end_crit_edge

r100_mm_wreg.exit.for.end_crit_edge:              ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

r100_mm_wreg.exit.for.body_crit_edge:             ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %r100_mm_wreg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btc_dpm_enabled(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @rv770_is_smc_running(ptr noundef %rdev) #7
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rv770_is_smc_running(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_notify_uvd_to_smc(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %class = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 1
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 2
  %2 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class2, align 4
  %call1 = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %1, i32 noundef %3) #7
  %. = zext i1 %call1 to i32
  %.10 = zext i1 %call1 to i8
  %call3 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 156, i32 noundef %.) #7
  %4 = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.10, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_write_smc_soft_register(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_reset_to_default(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 132) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_send_msg_to_smc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_read_arb_registers(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %bootup_arb_registers = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 21
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 10100
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %4 = ptrtoint ptr %bootup_arb_registers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bootup_arb_registers, align 4
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %6, i32 10104
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #7, !srcloc !101
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %mc_arb_dram_timing2 = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %mc_arb_dram_timing2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mc_arb_dram_timing2, align 4
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 10160
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !101
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %mc_arb_rfsh_rate = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %mc_arb_rfsh_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mc_arb_rfsh_rate, align 4
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %16, i32 10248
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !101
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %mc_arb_burst_time = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 21, i32 3
  %19 = ptrtoint ptr %mc_arb_burst_time to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mc_arb_burst_time, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @btc_dpm_vblank_too_short(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %call1 = tail call i32 @r600_dpm_get_vblank_time(ptr noundef %rdev) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 100, i32 450
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %cond)
  %cmp = icmp ult i32 %call1, %cond
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_pi(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_get_vblank_time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_pre_set_power_state(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  %requested_ps = alloca %struct.radeon_ps, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %requested_ps) #7
  %requested_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps1, align 4
  %2 = call ptr @memcpy(ptr %requested_ps, ptr %1, i32 40)
  %call.i = call ptr @rv770_get_ps(ptr noundef nonnull %requested_ps) #7
  %call1.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %requested_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 27
  %3 = call ptr @memcpy(ptr %requested_rps.i, ptr %requested_ps, i32 40)
  %requested_ps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 28
  %4 = call ptr @memcpy(ptr %requested_ps.i, ptr %call.i, i32 64)
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 27, i32 9
  %5 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %requested_ps.i, ptr %ps_priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %call.i5 = call ptr @rv770_get_ps(ptr noundef %requested_rps) #7
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %6 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp sgt i32 %7, 1
  br i1 %cmp.i, label %entry.if.end.i_crit_edge, label %lor.lhs.false.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %call1.i.i = call i32 @r600_dpm_get_vblank_time(ptr noundef %rdev) #7
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call.i.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 100, i32 450
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %cond.i.i)
  %cmp.i.i = icmp ult i32 %call1.i.i, %cond.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %entry.if.end.i_crit_edge
  %disable_mclk_switching.0.off0.i = phi i1 [ true, %entry.if.end.i_crit_edge ], [ %cmp.i.i, %lor.lhs.false.i ]
  %ac_power.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 31
  %10 = ptrtoint ptr %ac_power.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ac_power.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %max_clock_voltage_on_dc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11
  %max_limits.0.i = select i1 %tobool.not.i, ptr %max_clock_voltage_on_dc.i, ptr %max_clock_voltage_on_ac.i
  br i1 %tobool.not.i, label %if.then18.i, label %if.end.i.if.end148.i_crit_edge

if.end.i.if.end148.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.then18.i:                                      ; preds = %if.end.i
  %mclk19.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 1
  %12 = ptrtoint ptr %mclk19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk19.i, align 4
  %mclk20.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %mclk20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp21.i = icmp ugt i32 %13, %15
  br i1 %cmp21.i, label %if.then23.i, label %if.then18.i.if.end27.i_crit_edge

if.then18.i.if.end27.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %mclk19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %mclk19.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.then18.i.if.end27.i_crit_edge
  %17 = ptrtoint ptr %call.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i5, align 4
  %19 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_limits.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp31.i = icmp ugt i32 %18, %20
  br i1 %cmp31.i, label %if.then33.i, label %if.end27.i.if.end37.i_crit_edge

if.end27.i.if.end37.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then33.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %call.i5, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %if.end27.i.if.end37.i_crit_edge
  %vddc39.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 2
  %22 = ptrtoint ptr %vddc39.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vddc39.i, align 4
  %vddc41.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %vddc41.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vddc41.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp43.i = icmp ugt i16 %23, %25
  br i1 %cmp43.i, label %if.then45.i, label %if.end37.i.if.end49.i_crit_edge

if.end37.i.if.end49.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %vddc39.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %vddc39.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end37.i.if.end49.i_crit_edge
  %vddci51.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 3
  %27 = ptrtoint ptr %vddci51.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vddci51.i, align 2
  %vddci53.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %vddci53.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vddci53.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp55.i = icmp ugt i16 %28, %30
  br i1 %cmp55.i, label %if.then57.i, label %if.end49.i.if.end61.i_crit_edge

if.end49.i.if.end61.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.then57.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %vddci51.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %vddci51.i, align 2
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then57.i, %if.end49.i.if.end61.i_crit_edge
  %medium.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1
  %mclk62.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %mclk62.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mclk62.i, align 4
  %34 = ptrtoint ptr %mclk20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mclk20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp64.i = icmp ugt i32 %33, %35
  br i1 %cmp64.i, label %if.then66.i, label %if.end61.i.if.end70.i_crit_edge

if.end61.i.if.end70.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %mclk62.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %mclk62.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end61.i.if.end70.i_crit_edge
  %37 = ptrtoint ptr %medium.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %medium.i, align 4
  %39 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_limits.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp74.i = icmp ugt i32 %38, %40
  br i1 %cmp74.i, label %if.then76.i, label %if.end70.i.if.end80.i_crit_edge

if.end70.i.if.end80.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then76.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %medium.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %medium.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then76.i, %if.end70.i.if.end80.i_crit_edge
  %vddc82.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %vddc82.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vddc82.i, align 4
  %44 = ptrtoint ptr %vddc41.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vddc41.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp86.i = icmp ugt i16 %43, %45
  br i1 %cmp86.i, label %if.then88.i, label %if.end80.i.if.end92.i_crit_edge

if.end80.i.if.end92.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i

if.then88.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %vddc82.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %vddc82.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then88.i, %if.end80.i.if.end92.i_crit_edge
  %vddci94.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %vddci94.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vddci94.i, align 2
  %49 = ptrtoint ptr %vddci53.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vddci53.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp98.i = icmp ugt i16 %48, %50
  br i1 %cmp98.i, label %if.then100.i, label %if.end92.i.if.end104.i_crit_edge

if.end92.i.if.end104.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.i

if.then100.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %vddci94.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %vddci94.i, align 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then100.i, %if.end92.i.if.end104.i_crit_edge
  %low.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2
  %mclk105.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %mclk105.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mclk105.i, align 4
  %54 = ptrtoint ptr %mclk20.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mclk20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp107.i = icmp ugt i32 %53, %55
  br i1 %cmp107.i, label %if.then109.i, label %if.end104.i.if.end113.i_crit_edge

if.end104.i.if.end113.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113.i

if.then109.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %mclk105.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mclk105.i, align 4
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then109.i, %if.end104.i.if.end113.i_crit_edge
  %57 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %low.i, align 4
  %59 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_limits.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp117.i = icmp ugt i32 %58, %60
  br i1 %cmp117.i, label %if.then119.i, label %if.end113.i.if.end123.i_crit_edge

if.end113.i.if.end123.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

if.then119.i:                                     ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %low.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %low.i, align 4
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.then119.i, %if.end113.i.if.end123.i_crit_edge
  %vddc125.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 2
  %62 = ptrtoint ptr %vddc125.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vddc125.i, align 4
  %64 = ptrtoint ptr %vddc41.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vddc41.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %65)
  %cmp129.i = icmp ugt i16 %63, %65
  br i1 %cmp129.i, label %if.then131.i, label %if.end123.i.if.end135.i_crit_edge

if.end123.i.if.end135.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135.i

if.then131.i:                                     ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %vddc125.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %vddc125.i, align 4
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then131.i, %if.end123.i.if.end135.i_crit_edge
  %vddci137.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 3
  %67 = ptrtoint ptr %vddci137.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vddci137.i, align 2
  %69 = ptrtoint ptr %vddci53.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vddci53.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %70)
  %cmp141.i = icmp ugt i16 %68, %70
  br i1 %cmp141.i, label %if.then143.i, label %if.end135.i.if.end148.i_crit_edge

if.end135.i.if.end148.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148.i

if.then143.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %vddci137.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %vddci137.i, align 2
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then143.i, %if.end135.i.if.end148.i_crit_edge, %if.end.i.if.end148.i_crit_edge
  %mclk154.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 1
  %vddci158.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 3
  %mclk163.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 1
  %vddci167.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 3
  %mclk.0.in.i = select i1 %disable_mclk_switching.0.off0.i, ptr %mclk154.i, ptr %mclk163.i
  %vddci.0.in.i = select i1 %disable_mclk_switching.0.off0.i, ptr %vddci158.i, ptr %vddci167.i
  %sclk.0.in.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2
  %vddc.0.in.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 2
  %72 = ptrtoint ptr %vddci.0.in.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %vddci.0.i = load i16, ptr %vddci.0.in.i, align 2
  %73 = ptrtoint ptr %sclk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %sclk.0.i = load i32, ptr %sclk.0.in.i, align 4
  %74 = ptrtoint ptr %mclk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %mclk.0.i = load i32, ptr %mclk.0.in.i, align 4
  %75 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %mclk.0.i, ptr %mclk163.i, align 4
  %76 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %vddci.0.i, ptr %vddci167.i, align 2
  %77 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_limits.0.i, align 4
  %mclk178.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 1
  %valid_sclk_values.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9
  %values.i.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9, i32 1
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %btc_get_valid_sclk.exit.i.i.tailrecurse.i.i_crit_edge, %if.end148.i
  %79 = phi i32 [ %97, %btc_get_valid_sclk.exit.i.i.tailrecurse.i.i_crit_edge ], [ %sclk.0.i, %if.end148.i ]
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %79, label %tailrecurse.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge [
    i32 10000, label %land.lhs.true.i.i
    i32 15000, label %land.lhs.true.1.i.i
    i32 20000, label %land.lhs.true.2.i.i
    i32 25000, label %land.lhs.true.3.i.i
  ]

tailrecurse.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit.i

land.lhs.true.i.i:                                ; preds = %tailrecurse.i.i
  %81 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mclk163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %82)
  %cmp7.i.i = icmp eq i32 %82, 30000
  br i1 %cmp7.i.i, label %land.lhs.true.i.i.if.then11.critedge.i.i_crit_edge, label %land.lhs.true.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge

land.lhs.true.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit.i

land.lhs.true.i.i.if.then11.critedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i.i

land.lhs.true.1.i.i:                              ; preds = %tailrecurse.i.i
  %83 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mclk163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %84)
  %cmp7.1.i.i = icmp eq i32 %84, 30000
  br i1 %cmp7.1.i.i, label %land.lhs.true.1.i.i.if.then11.critedge.i.i_crit_edge, label %land.lhs.true.1.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge

land.lhs.true.1.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit.i

land.lhs.true.1.i.i.if.then11.critedge.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i.i

land.lhs.true.2.i.i:                              ; preds = %tailrecurse.i.i
  %85 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mclk163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %86)
  %cmp7.2.i.i = icmp eq i32 %86, 30000
  br i1 %cmp7.2.i.i, label %land.lhs.true.2.i.i.if.then11.critedge.i.i_crit_edge, label %land.lhs.true.2.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge

land.lhs.true.2.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit.i

land.lhs.true.2.i.i.if.then11.critedge.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i.i

land.lhs.true.3.i.i:                              ; preds = %tailrecurse.i.i
  %87 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mclk163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %88)
  %cmp7.3.i.i = icmp eq i32 %88, 30000
  br i1 %cmp7.3.i.i, label %land.lhs.true.3.i.i.if.then11.critedge.i.i_crit_edge, label %land.lhs.true.3.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge

land.lhs.true.3.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit.i

land.lhs.true.3.i.i.if.then11.critedge.i.i_crit_edge: ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i.i

if.then11.critedge.i.i:                           ; preds = %land.lhs.true.3.i.i.if.then11.critedge.i.i_crit_edge, %land.lhs.true.2.i.i.if.then11.critedge.i.i_crit_edge, %land.lhs.true.1.i.i.if.then11.critedge.i.i_crit_edge, %land.lhs.true.i.i.if.then11.critedge.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %79, 1
  %89 = ptrtoint ptr %valid_sclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %valid_sclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp1.i.i.i.i = icmp eq i32 %90, 0
  br i1 %cmp1.i.i.i.i, label %if.then11.critedge.i.i.btc_get_valid_sclk.exit.i.i_crit_edge, label %for.body.preheader.i.i.i.i

if.then11.critedge.i.i.btc_get_valid_sclk.exit.i.i_crit_edge: ; preds = %if.then11.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i.i

for.body.preheader.i.i.i.i:                       ; preds = %if.then11.critedge.i.i
  %91 = ptrtoint ptr %values.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %values.i.i.i.i, align 4
  br label %for.body.i.i.i.i

for.cond.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.053.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %90
  br i1 %exitcond.not.i.i.i.i, label %for.end.i.i.i.i, label %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i
  %i.053.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.cond.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr i32, ptr %92, i32 %i.053.i.i.i.i
  %93 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %79)
  %cmp5.not.i.i.not.i.i = icmp ugt i32 %94, %79
  br i1 %cmp5.not.i.i.not.i.i, label %for.body.i.i.i.i.btc_get_valid_sclk.exit.i.i_crit_edge, label %for.cond.i.i.i.i

for.body.i.i.i.i.btc_get_valid_sclk.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i.i

for.end.i.i.i.i:                                  ; preds = %for.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i = add i32 %90, -1
  %arrayidx19.i.i.i.i = getelementptr i32, ptr %92, i32 %sub.i.i.i.i
  %95 = ptrtoint ptr %arrayidx19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx19.i.i.i.i, align 4
  br label %btc_get_valid_sclk.exit.i.i

btc_get_valid_sclk.exit.i.i:                      ; preds = %for.end.i.i.i.i, %for.body.i.i.i.i.btc_get_valid_sclk.exit.i.i_crit_edge, %if.then11.critedge.i.i.btc_get_valid_sclk.exit.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ %96, %for.end.i.i.i.i ], [ %add.i.i, %if.then11.critedge.i.i.btc_get_valid_sclk.exit.i.i_crit_edge ], [ %94, %for.body.i.i.i.i.btc_get_valid_sclk.exit.i.i_crit_edge ]
  %97 = call i32 @llvm.umin.i32(i32 %.sink.i.i.i.i, i32 %78) #7
  %98 = ptrtoint ptr %sclk.0.in.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %sclk.0.in.i, align 4
  %cmp15.i.i = icmp ult i32 %.sink.i.i.i.i, %78
  br i1 %cmp15.i.i, label %btc_get_valid_sclk.exit.i.i.tailrecurse.i.i_crit_edge, label %btc_get_valid_sclk.exit.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge

btc_get_valid_sclk.exit.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge: ; preds = %btc_get_valid_sclk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit.i

btc_get_valid_sclk.exit.i.i.tailrecurse.i.i_crit_edge: ; preds = %btc_get_valid_sclk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse.i.i

btc_skip_blacklist_clocks.exit.i:                 ; preds = %btc_get_valid_sclk.exit.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge, %land.lhs.true.3.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge, %land.lhs.true.2.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge, %land.lhs.true.1.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge, %land.lhs.true.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge, %tailrecurse.i.i.btc_skip_blacklist_clocks.exit.i_crit_edge
  %medium183.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1
  %99 = ptrtoint ptr %medium183.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %medium183.i, align 4
  %101 = ptrtoint ptr %sclk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sclk.0.in.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp187.i = icmp ult i32 %100, %102
  br i1 %cmp187.i, label %if.then189.i, label %btc_skip_blacklist_clocks.exit.i.if.end194.i_crit_edge

btc_skip_blacklist_clocks.exit.i.if.end194.i_crit_edge: ; preds = %btc_skip_blacklist_clocks.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194.i

if.then189.i:                                     ; preds = %btc_skip_blacklist_clocks.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %medium183.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %medium183.i, align 4
  br label %if.end194.i

if.end194.i:                                      ; preds = %if.then189.i, %btc_skip_blacklist_clocks.exit.i.if.end194.i_crit_edge
  %vddc196.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 2
  %104 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %vddc196.i, align 4
  %106 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vddc.0.in.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %107)
  %cmp201.i = icmp ult i16 %105, %107
  br i1 %cmp201.i, label %if.then203.i, label %if.end194.i.if.end208.i_crit_edge

if.end194.i.if.end208.i_crit_edge:                ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208.i

if.then203.i:                                     ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %vddc196.i, align 4
  br label %if.end208.i

if.end208.i:                                      ; preds = %if.then203.i, %if.end194.i.if.end208.i_crit_edge
  %109 = ptrtoint ptr %call.i5 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %call.i5, align 4
  %111 = ptrtoint ptr %medium183.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %medium183.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %112)
  %cmp213.i = icmp ult i32 %110, %112
  br i1 %cmp213.i, label %if.then215.i, label %if.end208.i.if.end220.i_crit_edge

if.end208.i.if.end220.i_crit_edge:                ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end220.i

if.then215.i:                                     ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %call.i5 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %call.i5, align 4
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.then215.i, %if.end208.i.if.end220.i_crit_edge
  %vddc222.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 2
  %114 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %vddc222.i, align 4
  %116 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vddc196.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %115, i16 %117)
  %cmp227.i = icmp ult i16 %115, %117
  br i1 %cmp227.i, label %if.then229.i, label %if.end220.i.if.end234.i_crit_edge

if.end220.i.if.end234.i_crit_edge:                ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end234.i

if.then229.i:                                     ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %vddc222.i, align 4
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.then229.i, %if.end220.i.if.end234.i_crit_edge
  br i1 %disable_mclk_switching.0.off0.i, label %if.then236.i, label %if.else267.i

if.then236.i:                                     ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mclk163.i, align 4
  %mclk240.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 1
  %121 = ptrtoint ptr %mclk240.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %mclk240.i, align 4
  %123 = call i32 @llvm.umax.i32(i32 %120, i32 %122) #7
  %124 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mclk154.i, align 4
  %126 = call i32 @llvm.umax.i32(i32 %123, i32 %125) #7
  %127 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %mclk163.i, align 4
  %128 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %vddci.0.i, ptr %vddci167.i, align 2
  %129 = ptrtoint ptr %mclk240.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %126, ptr %mclk240.i, align 4
  %vddci262.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 3
  %130 = ptrtoint ptr %vddci262.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %vddci.0.i, ptr %vddci262.i, align 2
  %131 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %126, ptr %mclk154.i, align 4
  br label %if.end320.sink.split.i

if.else267.i:                                     ; preds = %if.end234.i
  %mclk269.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 1
  %132 = ptrtoint ptr %mclk269.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mclk269.i, align 4
  %134 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mclk163.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp272.i = icmp ult i32 %133, %135
  br i1 %cmp272.i, label %if.then274.i, label %if.else267.i.if.end279.i_crit_edge

if.else267.i.if.end279.i_crit_edge:               ; preds = %if.else267.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end279.i

if.then274.i:                                     ; preds = %if.else267.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %mclk269.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %mclk269.i, align 4
  br label %if.end279.i

if.end279.i:                                      ; preds = %if.then274.i, %if.else267.i.if.end279.i_crit_edge
  %vddci281.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 3
  %137 = ptrtoint ptr %vddci281.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %vddci281.i, align 2
  %139 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %vddci167.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %140)
  %cmp286.i = icmp ult i16 %138, %140
  br i1 %cmp286.i, label %if.then288.i, label %if.end279.i.if.end293.i_crit_edge

if.end279.i.if.end293.i_crit_edge:                ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end293.i

if.then288.i:                                     ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #9
  %141 = ptrtoint ptr %vddci281.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %vddci281.i, align 2
  br label %if.end293.i

if.end293.i:                                      ; preds = %if.then288.i, %if.end279.i.if.end293.i_crit_edge
  %142 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mclk154.i, align 4
  %144 = ptrtoint ptr %mclk269.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %mclk269.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp298.i = icmp ult i32 %143, %145
  br i1 %cmp298.i, label %if.then300.i, label %if.end293.i.if.end305.i_crit_edge

if.end293.i.if.end305.i_crit_edge:                ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305.i

if.then300.i:                                     ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %mclk154.i, align 4
  br label %if.end305.i

if.end305.i:                                      ; preds = %if.then300.i, %if.end293.i.if.end305.i_crit_edge
  %147 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %vddci158.i, align 2
  %149 = ptrtoint ptr %vddci281.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %vddci281.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %148, i16 %150)
  %cmp312.i = icmp ult i16 %148, %150
  br i1 %cmp312.i, label %if.end305.i.if.end320.sink.split.i_crit_edge, label %if.end305.i.if.end320.i_crit_edge

if.end305.i.if.end320.i_crit_edge:                ; preds = %if.end305.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end320.i

if.end305.i.if.end320.sink.split.i_crit_edge:     ; preds = %if.end305.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end320.sink.split.i

if.end320.sink.split.i:                           ; preds = %if.end305.i.if.end320.sink.split.i_crit_edge, %if.then236.i
  %.sink.i = phi i16 [ %vddci.0.i, %if.then236.i ], [ %150, %if.end305.i.if.end320.sink.split.i_crit_edge ]
  %151 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %.sink.i, ptr %vddci158.i, align 2
  br label %if.end320.i

if.end320.i:                                      ; preds = %if.end320.sink.split.i, %if.end305.i.if.end320.i_crit_edge
  %152 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %max_limits.0.i, align 4
  %mclk326.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 1
  %154 = ptrtoint ptr %medium183.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pr.i774.i = load i32, ptr %medium183.i, align 4
  br label %tailrecurse.i776.i

tailrecurse.i776.i:                               ; preds = %btc_get_valid_sclk.exit.i801.i.tailrecurse.i776.i_crit_edge, %if.end320.i
  %155 = phi i32 [ %.pr.i774.i, %if.end320.i ], [ %173, %btc_get_valid_sclk.exit.i801.i.tailrecurse.i776.i_crit_edge ]
  %156 = zext i32 %155 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %155, label %tailrecurse.i776.i.btc_skip_blacklist_clocks.exit802.i_crit_edge [
    i32 10000, label %land.lhs.true.i778.i
    i32 15000, label %land.lhs.true.1.i780.i
    i32 20000, label %land.lhs.true.2.i782.i
    i32 25000, label %land.lhs.true.3.i784.i
  ]

tailrecurse.i776.i.btc_skip_blacklist_clocks.exit802.i_crit_edge: ; preds = %tailrecurse.i776.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit802.i

land.lhs.true.i778.i:                             ; preds = %tailrecurse.i776.i
  %157 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mclk326.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %158)
  %cmp7.i777.i = icmp eq i32 %158, 30000
  br i1 %cmp7.i777.i, label %land.lhs.true.i778.i.if.then11.critedge.i787.i_crit_edge, label %land.lhs.true.i778.i.btc_skip_blacklist_clocks.exit802.i_crit_edge

land.lhs.true.i778.i.btc_skip_blacklist_clocks.exit802.i_crit_edge: ; preds = %land.lhs.true.i778.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit802.i

land.lhs.true.i778.i.if.then11.critedge.i787.i_crit_edge: ; preds = %land.lhs.true.i778.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i787.i

land.lhs.true.1.i780.i:                           ; preds = %tailrecurse.i776.i
  %159 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %mclk326.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %160)
  %cmp7.1.i779.i = icmp eq i32 %160, 30000
  br i1 %cmp7.1.i779.i, label %land.lhs.true.1.i780.i.if.then11.critedge.i787.i_crit_edge, label %land.lhs.true.1.i780.i.btc_skip_blacklist_clocks.exit802.i_crit_edge

land.lhs.true.1.i780.i.btc_skip_blacklist_clocks.exit802.i_crit_edge: ; preds = %land.lhs.true.1.i780.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit802.i

land.lhs.true.1.i780.i.if.then11.critedge.i787.i_crit_edge: ; preds = %land.lhs.true.1.i780.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i787.i

land.lhs.true.2.i782.i:                           ; preds = %tailrecurse.i776.i
  %161 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mclk326.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %162)
  %cmp7.2.i781.i = icmp eq i32 %162, 30000
  br i1 %cmp7.2.i781.i, label %land.lhs.true.2.i782.i.if.then11.critedge.i787.i_crit_edge, label %land.lhs.true.2.i782.i.btc_skip_blacklist_clocks.exit802.i_crit_edge

land.lhs.true.2.i782.i.btc_skip_blacklist_clocks.exit802.i_crit_edge: ; preds = %land.lhs.true.2.i782.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit802.i

land.lhs.true.2.i782.i.if.then11.critedge.i787.i_crit_edge: ; preds = %land.lhs.true.2.i782.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i787.i

land.lhs.true.3.i784.i:                           ; preds = %tailrecurse.i776.i
  %163 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mclk326.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %164)
  %cmp7.3.i783.i = icmp eq i32 %164, 30000
  br i1 %cmp7.3.i783.i, label %land.lhs.true.3.i784.i.if.then11.critedge.i787.i_crit_edge, label %land.lhs.true.3.i784.i.btc_skip_blacklist_clocks.exit802.i_crit_edge

land.lhs.true.3.i784.i.btc_skip_blacklist_clocks.exit802.i_crit_edge: ; preds = %land.lhs.true.3.i784.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit802.i

land.lhs.true.3.i784.i.if.then11.critedge.i787.i_crit_edge: ; preds = %land.lhs.true.3.i784.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i787.i

if.then11.critedge.i787.i:                        ; preds = %land.lhs.true.3.i784.i.if.then11.critedge.i787.i_crit_edge, %land.lhs.true.2.i782.i.if.then11.critedge.i787.i_crit_edge, %land.lhs.true.1.i780.i.if.then11.critedge.i787.i_crit_edge, %land.lhs.true.i778.i.if.then11.critedge.i787.i_crit_edge
  %add.i785.i = add nuw nsw i32 %155, 1
  %165 = ptrtoint ptr %valid_sclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %valid_sclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp1.i.i.i786.i = icmp eq i32 %166, 0
  br i1 %cmp1.i.i.i786.i, label %if.then11.critedge.i787.i.btc_get_valid_sclk.exit.i801.i_crit_edge, label %for.body.preheader.i.i.i788.i

if.then11.critedge.i787.i.btc_get_valid_sclk.exit.i801.i_crit_edge: ; preds = %if.then11.critedge.i787.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i801.i

for.body.preheader.i.i.i788.i:                    ; preds = %if.then11.critedge.i787.i
  %167 = ptrtoint ptr %values.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %values.i.i.i.i, align 4
  br label %for.body.i.i.i795.i

for.cond.i.i.i791.i:                              ; preds = %for.body.i.i.i795.i
  %inc.i.i.i789.i = add nuw i32 %i.053.i.i.i792.i, 1
  %exitcond.not.i.i.i790.i = icmp eq i32 %inc.i.i.i789.i, %166
  br i1 %exitcond.not.i.i.i790.i, label %for.end.i.i.i798.i, label %for.cond.i.i.i791.i.for.body.i.i.i795.i_crit_edge

for.cond.i.i.i791.i.for.body.i.i.i795.i_crit_edge: ; preds = %for.cond.i.i.i791.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i795.i

for.body.i.i.i795.i:                              ; preds = %for.cond.i.i.i791.i.for.body.i.i.i795.i_crit_edge, %for.body.preheader.i.i.i788.i
  %i.053.i.i.i792.i = phi i32 [ %inc.i.i.i789.i, %for.cond.i.i.i791.i.for.body.i.i.i795.i_crit_edge ], [ 0, %for.body.preheader.i.i.i788.i ]
  %arrayidx.i.i.i793.i = getelementptr i32, ptr %168, i32 %i.053.i.i.i792.i
  %169 = ptrtoint ptr %arrayidx.i.i.i793.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i.i.i793.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %155)
  %cmp5.not.i.i.not.i794.i = icmp ugt i32 %170, %155
  br i1 %cmp5.not.i.i.not.i794.i, label %for.body.i.i.i795.i.btc_get_valid_sclk.exit.i801.i_crit_edge, label %for.cond.i.i.i791.i

for.body.i.i.i795.i.btc_get_valid_sclk.exit.i801.i_crit_edge: ; preds = %for.body.i.i.i795.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i801.i

for.end.i.i.i798.i:                               ; preds = %for.cond.i.i.i791.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i796.i = add i32 %166, -1
  %arrayidx19.i.i.i797.i = getelementptr i32, ptr %168, i32 %sub.i.i.i796.i
  %171 = ptrtoint ptr %arrayidx19.i.i.i797.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx19.i.i.i797.i, align 4
  br label %btc_get_valid_sclk.exit.i801.i

btc_get_valid_sclk.exit.i801.i:                   ; preds = %for.end.i.i.i798.i, %for.body.i.i.i795.i.btc_get_valid_sclk.exit.i801.i_crit_edge, %if.then11.critedge.i787.i.btc_get_valid_sclk.exit.i801.i_crit_edge
  %.sink.i.i.i799.i = phi i32 [ %172, %for.end.i.i.i798.i ], [ %add.i785.i, %if.then11.critedge.i787.i.btc_get_valid_sclk.exit.i801.i_crit_edge ], [ %170, %for.body.i.i.i795.i.btc_get_valid_sclk.exit.i801.i_crit_edge ]
  %173 = call i32 @llvm.umin.i32(i32 %.sink.i.i.i799.i, i32 %153) #7
  %174 = ptrtoint ptr %medium183.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %medium183.i, align 4
  %cmp15.i800.i = icmp ult i32 %.sink.i.i.i799.i, %153
  br i1 %cmp15.i800.i, label %btc_get_valid_sclk.exit.i801.i.tailrecurse.i776.i_crit_edge, label %btc_get_valid_sclk.exit.i801.i.btc_skip_blacklist_clocks.exit802.i_crit_edge

btc_get_valid_sclk.exit.i801.i.btc_skip_blacklist_clocks.exit802.i_crit_edge: ; preds = %btc_get_valid_sclk.exit.i801.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit802.i

btc_get_valid_sclk.exit.i801.i.tailrecurse.i776.i_crit_edge: ; preds = %btc_get_valid_sclk.exit.i801.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse.i776.i

btc_skip_blacklist_clocks.exit802.i:              ; preds = %btc_get_valid_sclk.exit.i801.i.btc_skip_blacklist_clocks.exit802.i_crit_edge, %land.lhs.true.3.i784.i.btc_skip_blacklist_clocks.exit802.i_crit_edge, %land.lhs.true.2.i782.i.btc_skip_blacklist_clocks.exit802.i_crit_edge, %land.lhs.true.1.i780.i.btc_skip_blacklist_clocks.exit802.i_crit_edge, %land.lhs.true.i778.i.btc_skip_blacklist_clocks.exit802.i_crit_edge, %tailrecurse.i776.i.btc_skip_blacklist_clocks.exit802.i_crit_edge
  %175 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %max_limits.0.i, align 4
  %cmp.i803.i = icmp eq ptr %call.i5, null
  br i1 %cmp.i803.i, label %btc_skip_blacklist_clocks.exit802.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, label %tailrecurse.preheader.i809.i

btc_skip_blacklist_clocks.exit802.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %btc_skip_blacklist_clocks.exit802.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

tailrecurse.preheader.i809.i:                     ; preds = %btc_skip_blacklist_clocks.exit802.i
  %177 = ptrtoint ptr %call.i5 to i32
  call void @__asan_load4_noabort(i32 %177)
  %.pr.i808.i = load i32, ptr %call.i5, align 4
  br label %tailrecurse.i810.i

tailrecurse.i810.i:                               ; preds = %btc_get_valid_sclk.exit.i835.i.tailrecurse.i810.i_crit_edge, %tailrecurse.preheader.i809.i
  %178 = phi i32 [ %.pr.i808.i, %tailrecurse.preheader.i809.i ], [ %196, %btc_get_valid_sclk.exit.i835.i.tailrecurse.i810.i_crit_edge ]
  %179 = zext i32 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %178, label %tailrecurse.i810.i.btc_skip_blacklist_clocks.exit836.i_crit_edge [
    i32 10000, label %land.lhs.true.i812.i
    i32 15000, label %land.lhs.true.1.i814.i
    i32 20000, label %land.lhs.true.2.i816.i
    i32 25000, label %land.lhs.true.3.i818.i
  ]

tailrecurse.i810.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %tailrecurse.i810.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

land.lhs.true.i812.i:                             ; preds = %tailrecurse.i810.i
  %180 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %mclk154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %181)
  %cmp7.i811.i = icmp eq i32 %181, 30000
  br i1 %cmp7.i811.i, label %land.lhs.true.i812.i.if.then11.critedge.i821.i_crit_edge, label %land.lhs.true.i812.i.btc_skip_blacklist_clocks.exit836.i_crit_edge

land.lhs.true.i812.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %land.lhs.true.i812.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

land.lhs.true.i812.i.if.then11.critedge.i821.i_crit_edge: ; preds = %land.lhs.true.i812.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i821.i

land.lhs.true.1.i814.i:                           ; preds = %tailrecurse.i810.i
  %182 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mclk154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %183)
  %cmp7.1.i813.i = icmp eq i32 %183, 30000
  br i1 %cmp7.1.i813.i, label %land.lhs.true.1.i814.i.if.then11.critedge.i821.i_crit_edge, label %land.lhs.true.1.i814.i.btc_skip_blacklist_clocks.exit836.i_crit_edge

land.lhs.true.1.i814.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %land.lhs.true.1.i814.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

land.lhs.true.1.i814.i.if.then11.critedge.i821.i_crit_edge: ; preds = %land.lhs.true.1.i814.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i821.i

land.lhs.true.2.i816.i:                           ; preds = %tailrecurse.i810.i
  %184 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %mclk154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %185)
  %cmp7.2.i815.i = icmp eq i32 %185, 30000
  br i1 %cmp7.2.i815.i, label %land.lhs.true.2.i816.i.if.then11.critedge.i821.i_crit_edge, label %land.lhs.true.2.i816.i.btc_skip_blacklist_clocks.exit836.i_crit_edge

land.lhs.true.2.i816.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %land.lhs.true.2.i816.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

land.lhs.true.2.i816.i.if.then11.critedge.i821.i_crit_edge: ; preds = %land.lhs.true.2.i816.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i821.i

land.lhs.true.3.i818.i:                           ; preds = %tailrecurse.i810.i
  %186 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %mclk154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %187)
  %cmp7.3.i817.i = icmp eq i32 %187, 30000
  br i1 %cmp7.3.i817.i, label %land.lhs.true.3.i818.i.if.then11.critedge.i821.i_crit_edge, label %land.lhs.true.3.i818.i.btc_skip_blacklist_clocks.exit836.i_crit_edge

land.lhs.true.3.i818.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %land.lhs.true.3.i818.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

land.lhs.true.3.i818.i.if.then11.critedge.i821.i_crit_edge: ; preds = %land.lhs.true.3.i818.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.critedge.i821.i

if.then11.critedge.i821.i:                        ; preds = %land.lhs.true.3.i818.i.if.then11.critedge.i821.i_crit_edge, %land.lhs.true.2.i816.i.if.then11.critedge.i821.i_crit_edge, %land.lhs.true.1.i814.i.if.then11.critedge.i821.i_crit_edge, %land.lhs.true.i812.i.if.then11.critedge.i821.i_crit_edge
  %add.i819.i = add nuw nsw i32 %178, 1
  %188 = ptrtoint ptr %valid_sclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %valid_sclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %cmp1.i.i.i820.i = icmp eq i32 %189, 0
  br i1 %cmp1.i.i.i820.i, label %if.then11.critedge.i821.i.btc_get_valid_sclk.exit.i835.i_crit_edge, label %for.body.preheader.i.i.i822.i

if.then11.critedge.i821.i.btc_get_valid_sclk.exit.i835.i_crit_edge: ; preds = %if.then11.critedge.i821.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i835.i

for.body.preheader.i.i.i822.i:                    ; preds = %if.then11.critedge.i821.i
  %190 = ptrtoint ptr %values.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %values.i.i.i.i, align 4
  br label %for.body.i.i.i829.i

for.cond.i.i.i825.i:                              ; preds = %for.body.i.i.i829.i
  %inc.i.i.i823.i = add nuw i32 %i.053.i.i.i826.i, 1
  %exitcond.not.i.i.i824.i = icmp eq i32 %inc.i.i.i823.i, %189
  br i1 %exitcond.not.i.i.i824.i, label %for.end.i.i.i832.i, label %for.cond.i.i.i825.i.for.body.i.i.i829.i_crit_edge

for.cond.i.i.i825.i.for.body.i.i.i829.i_crit_edge: ; preds = %for.cond.i.i.i825.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i829.i

for.body.i.i.i829.i:                              ; preds = %for.cond.i.i.i825.i.for.body.i.i.i829.i_crit_edge, %for.body.preheader.i.i.i822.i
  %i.053.i.i.i826.i = phi i32 [ %inc.i.i.i823.i, %for.cond.i.i.i825.i.for.body.i.i.i829.i_crit_edge ], [ 0, %for.body.preheader.i.i.i822.i ]
  %arrayidx.i.i.i827.i = getelementptr i32, ptr %191, i32 %i.053.i.i.i826.i
  %192 = ptrtoint ptr %arrayidx.i.i.i827.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx.i.i.i827.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %178)
  %cmp5.not.i.i.not.i828.i = icmp ugt i32 %193, %178
  br i1 %cmp5.not.i.i.not.i828.i, label %for.body.i.i.i829.i.btc_get_valid_sclk.exit.i835.i_crit_edge, label %for.cond.i.i.i825.i

for.body.i.i.i829.i.btc_get_valid_sclk.exit.i835.i_crit_edge: ; preds = %for.body.i.i.i829.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i835.i

for.end.i.i.i832.i:                               ; preds = %for.cond.i.i.i825.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i830.i = add i32 %189, -1
  %arrayidx19.i.i.i831.i = getelementptr i32, ptr %191, i32 %sub.i.i.i830.i
  %194 = ptrtoint ptr %arrayidx19.i.i.i831.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx19.i.i.i831.i, align 4
  br label %btc_get_valid_sclk.exit.i835.i

btc_get_valid_sclk.exit.i835.i:                   ; preds = %for.end.i.i.i832.i, %for.body.i.i.i829.i.btc_get_valid_sclk.exit.i835.i_crit_edge, %if.then11.critedge.i821.i.btc_get_valid_sclk.exit.i835.i_crit_edge
  %.sink.i.i.i833.i = phi i32 [ %195, %for.end.i.i.i832.i ], [ %add.i819.i, %if.then11.critedge.i821.i.btc_get_valid_sclk.exit.i835.i_crit_edge ], [ %193, %for.body.i.i.i829.i.btc_get_valid_sclk.exit.i835.i_crit_edge ]
  %196 = call i32 @llvm.umin.i32(i32 %.sink.i.i.i833.i, i32 %176) #7
  %197 = ptrtoint ptr %call.i5 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %call.i5, align 4
  %cmp15.i834.i = icmp ult i32 %.sink.i.i.i833.i, %176
  br i1 %cmp15.i834.i, label %btc_get_valid_sclk.exit.i835.i.tailrecurse.i810.i_crit_edge, label %btc_get_valid_sclk.exit.i835.i.btc_skip_blacklist_clocks.exit836.i_crit_edge

btc_get_valid_sclk.exit.i835.i.btc_skip_blacklist_clocks.exit836.i_crit_edge: ; preds = %btc_get_valid_sclk.exit.i835.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_skip_blacklist_clocks.exit836.i

btc_get_valid_sclk.exit.i835.i.tailrecurse.i810.i_crit_edge: ; preds = %btc_get_valid_sclk.exit.i835.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse.i810.i

btc_skip_blacklist_clocks.exit836.i:              ; preds = %btc_get_valid_sclk.exit.i835.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, %land.lhs.true.3.i818.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, %land.lhs.true.2.i816.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, %land.lhs.true.1.i814.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, %land.lhs.true.i812.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, %tailrecurse.i810.i.btc_skip_blacklist_clocks.exit836.i_crit_edge, %btc_skip_blacklist_clocks.exit802.i.btc_skip_blacklist_clocks.exit836.i_crit_edge
  %198 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %mclk163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp.i837.i = icmp eq i32 %199, 0
  br i1 %cmp.i837.i, label %btc_skip_blacklist_clocks.exit836.i.btc_adjust_clock_combinations.exit.i_crit_edge, label %lor.lhs.false.i.i

btc_skip_blacklist_clocks.exit836.i.btc_adjust_clock_combinations.exit.i_crit_edge: ; preds = %btc_skip_blacklist_clocks.exit836.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit.i

lor.lhs.false.i.i:                                ; preds = %btc_skip_blacklist_clocks.exit836.i
  %200 = ptrtoint ptr %sclk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %sclk.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp1.i838.i = icmp eq i32 %201, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %199)
  %cmp4.i.i = icmp eq i32 %201, %199
  %or.cond.i839.i = select i1 %cmp1.i838.i, i1 true, i1 %cmp4.i.i
  br i1 %or.cond.i839.i, label %lor.lhs.false.i.i.btc_adjust_clock_combinations.exit.i_crit_edge, label %if.end6.i.i

lor.lhs.false.i.i.btc_adjust_clock_combinations.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit.i

if.end6.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %199)
  %cmp9.i.i = icmp ult i32 %201, %199
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  %sub.i.i = add i32 %199, -1
  %add.i840.i = add i32 %201, %sub.i.i
  %div.i.i = udiv i32 %add.i840.i, %201
  %mclk_sclk_ratio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 13
  %202 = ptrtoint ptr %mclk_sclk_ratio.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %mclk_sclk_ratio.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %203)
  %cmp14.i.i = icmp ugt i32 %div.i.i, %203
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.then10.i.i.btc_adjust_clock_combinations.exit.i_crit_edge

if.then10.i.i.btc_adjust_clock_combinations.exit.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit.i

if.then15.i.i:                                    ; preds = %if.then10.i.i
  %204 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %max_limits.0.i, align 4
  %add23.i.i = add i32 %203, %sub.i.i
  %div28.i.i = udiv i32 %add23.i.i, %203
  %206 = ptrtoint ptr %valid_sclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %valid_sclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %cmp1.i.i.i842.i = icmp eq i32 %207, 0
  br i1 %cmp1.i.i.i842.i, label %if.then15.i.i.btc_get_valid_sclk.exit.i855.i_crit_edge, label %for.body.preheader.i.i.i844.i

if.then15.i.i.btc_get_valid_sclk.exit.i855.i_crit_edge: ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i855.i

for.body.preheader.i.i.i844.i:                    ; preds = %if.then15.i.i
  %208 = ptrtoint ptr %values.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %values.i.i.i.i, align 4
  br label %for.body.i.i.i850.i

for.cond.i.i.i847.i:                              ; preds = %for.body.i.i.i850.i
  %inc.i.i.i845.i = add nuw i32 %i.053.i.i.i848.i, 1
  %exitcond.not.i.i.i846.i = icmp eq i32 %inc.i.i.i845.i, %207
  br i1 %exitcond.not.i.i.i846.i, label %for.end.i.i.i853.i, label %for.cond.i.i.i847.i.for.body.i.i.i850.i_crit_edge

for.cond.i.i.i847.i.for.body.i.i.i850.i_crit_edge: ; preds = %for.cond.i.i.i847.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i850.i

for.body.i.i.i850.i:                              ; preds = %for.cond.i.i.i847.i.for.body.i.i.i850.i_crit_edge, %for.body.preheader.i.i.i844.i
  %i.053.i.i.i848.i = phi i32 [ %inc.i.i.i845.i, %for.cond.i.i.i847.i.for.body.i.i.i850.i_crit_edge ], [ 0, %for.body.preheader.i.i.i844.i ]
  %arrayidx.i.i.i849.i = getelementptr i32, ptr %209, i32 %i.053.i.i.i848.i
  %210 = ptrtoint ptr %arrayidx.i.i.i849.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx.i.i.i849.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %211, i32 %div28.i.i)
  %cmp5.not.i.i.i.i = icmp ult i32 %211, %div28.i.i
  br i1 %cmp5.not.i.i.i.i, label %for.cond.i.i.i847.i, label %for.body.i.i.i850.i.btc_get_valid_sclk.exit.i855.i_crit_edge

for.body.i.i.i850.i.btc_get_valid_sclk.exit.i855.i_crit_edge: ; preds = %for.body.i.i.i850.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i855.i

for.end.i.i.i853.i:                               ; preds = %for.cond.i.i.i847.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i851.i = add i32 %207, -1
  %arrayidx19.i.i.i852.i = getelementptr i32, ptr %209, i32 %sub.i.i.i851.i
  %212 = ptrtoint ptr %arrayidx19.i.i.i852.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx19.i.i.i852.i, align 4
  br label %btc_get_valid_sclk.exit.i855.i

btc_get_valid_sclk.exit.i855.i:                   ; preds = %for.end.i.i.i853.i, %for.body.i.i.i850.i.btc_get_valid_sclk.exit.i855.i_crit_edge, %if.then15.i.i.btc_get_valid_sclk.exit.i855.i_crit_edge
  %.sink.i.i.i854.i = phi i32 [ %213, %for.end.i.i.i853.i ], [ %div28.i.i, %if.then15.i.i.btc_get_valid_sclk.exit.i855.i_crit_edge ], [ %211, %for.body.i.i.i850.i.btc_get_valid_sclk.exit.i855.i_crit_edge ]
  %214 = call i32 @llvm.umin.i32(i32 %.sink.i.i.i854.i, i32 %205) #7
  %215 = ptrtoint ptr %sclk.0.in.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %sclk.0.in.i, align 4
  br label %btc_adjust_clock_combinations.exit.i

if.else.i.i:                                      ; preds = %if.end6.i.i
  %sub33.i.i = sub i32 %201, %199
  %sclk_mclk_delta.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 14
  %216 = ptrtoint ptr %sclk_mclk_delta.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %sclk_mclk_delta.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i.i, i32 %217)
  %cmp37.i.i = icmp ugt i32 %sub33.i.i, %217
  br i1 %cmp37.i.i, label %if.then38.i.i, label %if.else.i.i.btc_adjust_clock_combinations.exit.i_crit_edge

if.else.i.i.btc_adjust_clock_combinations.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit.i

if.then38.i.i:                                    ; preds = %if.else.i.i
  %218 = ptrtoint ptr %mclk178.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %mclk178.i, align 4
  %sub45.i.i = sub i32 %201, %217
  %valid_mclk_values.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10
  %220 = ptrtoint ptr %valid_mclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %valid_mclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp1.i.i74.i.i = icmp eq i32 %221, 0
  br i1 %cmp1.i.i74.i.i, label %if.then38.i.i.btc_get_valid_mclk.exit.i.i_crit_edge, label %for.body.preheader.i.i76.i.i

if.then38.i.i.btc_get_valid_mclk.exit.i.i_crit_edge: ; preds = %if.then38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit.i.i

for.body.preheader.i.i76.i.i:                     ; preds = %if.then38.i.i
  %values.i.i75.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10, i32 1
  %222 = ptrtoint ptr %values.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %values.i.i75.i.i, align 4
  br label %for.body.i.i83.i.i

for.cond.i.i79.i.i:                               ; preds = %for.body.i.i83.i.i
  %inc.i.i77.i.i = add nuw i32 %i.053.i.i80.i.i, 1
  %exitcond.not.i.i78.i.i = icmp eq i32 %inc.i.i77.i.i, %221
  br i1 %exitcond.not.i.i78.i.i, label %for.end.i.i86.i.i, label %for.cond.i.i79.i.i.for.body.i.i83.i.i_crit_edge

for.cond.i.i79.i.i.for.body.i.i83.i.i_crit_edge:  ; preds = %for.cond.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i83.i.i

for.body.i.i83.i.i:                               ; preds = %for.cond.i.i79.i.i.for.body.i.i83.i.i_crit_edge, %for.body.preheader.i.i76.i.i
  %i.053.i.i80.i.i = phi i32 [ %inc.i.i77.i.i, %for.cond.i.i79.i.i.for.body.i.i83.i.i_crit_edge ], [ 0, %for.body.preheader.i.i76.i.i ]
  %arrayidx.i.i81.i.i = getelementptr i32, ptr %223, i32 %i.053.i.i80.i.i
  %224 = ptrtoint ptr %arrayidx.i.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx.i.i81.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %225, i32 %sub45.i.i)
  %cmp5.not.i.i82.i.i = icmp ult i32 %225, %sub45.i.i
  br i1 %cmp5.not.i.i82.i.i, label %for.cond.i.i79.i.i, label %for.body.i.i83.i.i.btc_get_valid_mclk.exit.i.i_crit_edge

for.body.i.i83.i.i.btc_get_valid_mclk.exit.i.i_crit_edge: ; preds = %for.body.i.i83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit.i.i

for.end.i.i86.i.i:                                ; preds = %for.cond.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i84.i.i = add i32 %221, -1
  %arrayidx19.i.i85.i.i = getelementptr i32, ptr %223, i32 %sub.i.i84.i.i
  %226 = ptrtoint ptr %arrayidx19.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx19.i.i85.i.i, align 4
  br label %btc_get_valid_mclk.exit.i.i

btc_get_valid_mclk.exit.i.i:                      ; preds = %for.end.i.i86.i.i, %for.body.i.i83.i.i.btc_get_valid_mclk.exit.i.i_crit_edge, %if.then38.i.i.btc_get_valid_mclk.exit.i.i_crit_edge
  %.sink.i.i87.i.i = phi i32 [ %227, %for.end.i.i86.i.i ], [ %sub45.i.i, %if.then38.i.i.btc_get_valid_mclk.exit.i.i_crit_edge ], [ %225, %for.body.i.i83.i.i.btc_get_valid_mclk.exit.i.i_crit_edge ]
  %228 = call i32 @llvm.umin.i32(i32 %.sink.i.i87.i.i, i32 %219) #7
  %229 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %mclk163.i, align 4
  br label %btc_adjust_clock_combinations.exit.i

btc_adjust_clock_combinations.exit.i:             ; preds = %btc_get_valid_mclk.exit.i.i, %if.else.i.i.btc_adjust_clock_combinations.exit.i_crit_edge, %btc_get_valid_sclk.exit.i855.i, %if.then10.i.i.btc_adjust_clock_combinations.exit.i_crit_edge, %lor.lhs.false.i.i.btc_adjust_clock_combinations.exit.i_crit_edge, %btc_skip_blacklist_clocks.exit836.i.btc_adjust_clock_combinations.exit.i_crit_edge
  %230 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mclk326.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp.i857.i = icmp eq i32 %231, 0
  br i1 %cmp.i857.i, label %btc_adjust_clock_combinations.exit.i.btc_adjust_clock_combinations.exit912.i_crit_edge, label %lor.lhs.false.i861.i

btc_adjust_clock_combinations.exit.i.btc_adjust_clock_combinations.exit912.i_crit_edge: ; preds = %btc_adjust_clock_combinations.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit912.i

lor.lhs.false.i861.i:                             ; preds = %btc_adjust_clock_combinations.exit.i
  %232 = ptrtoint ptr %medium183.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %medium183.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %233)
  %cmp1.i858.i = icmp eq i32 %233, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %231)
  %cmp4.i859.i = icmp eq i32 %233, %231
  %or.cond.i860.i = select i1 %cmp1.i858.i, i1 true, i1 %cmp4.i859.i
  br i1 %or.cond.i860.i, label %lor.lhs.false.i861.i.btc_adjust_clock_combinations.exit912.i_crit_edge, label %if.end6.i863.i

lor.lhs.false.i861.i.btc_adjust_clock_combinations.exit912.i_crit_edge: ; preds = %lor.lhs.false.i861.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit912.i

if.end6.i863.i:                                   ; preds = %lor.lhs.false.i861.i
  call void @__sanitizer_cov_trace_cmp4(i32 %233, i32 %231)
  %cmp9.i862.i = icmp ult i32 %233, %231
  br i1 %cmp9.i862.i, label %if.then10.i869.i, label %if.else.i892.i

if.then10.i869.i:                                 ; preds = %if.end6.i863.i
  %sub.i864.i = add i32 %231, -1
  %add.i865.i = add i32 %233, %sub.i864.i
  %div.i866.i = udiv i32 %add.i865.i, %233
  %mclk_sclk_ratio.i867.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 13
  %234 = ptrtoint ptr %mclk_sclk_ratio.i867.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mclk_sclk_ratio.i867.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i866.i, i32 %235)
  %cmp14.i868.i = icmp ugt i32 %div.i866.i, %235
  br i1 %cmp14.i868.i, label %if.then15.i874.i, label %if.then10.i869.i.btc_adjust_clock_combinations.exit912.i_crit_edge

if.then10.i869.i.btc_adjust_clock_combinations.exit912.i_crit_edge: ; preds = %if.then10.i869.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit912.i

if.then15.i874.i:                                 ; preds = %if.then10.i869.i
  %236 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %max_limits.0.i, align 4
  %add23.i870.i = add i32 %235, %sub.i864.i
  %div28.i871.i = udiv i32 %add23.i870.i, %235
  %238 = ptrtoint ptr %valid_sclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %valid_sclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp1.i.i.i873.i = icmp eq i32 %239, 0
  br i1 %cmp1.i.i.i873.i, label %if.then15.i874.i.btc_get_valid_sclk.exit.i888.i_crit_edge, label %for.body.preheader.i.i.i876.i

if.then15.i874.i.btc_get_valid_sclk.exit.i888.i_crit_edge: ; preds = %if.then15.i874.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i888.i

for.body.preheader.i.i.i876.i:                    ; preds = %if.then15.i874.i
  %240 = ptrtoint ptr %values.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %values.i.i.i.i, align 4
  br label %for.body.i.i.i883.i

for.cond.i.i.i879.i:                              ; preds = %for.body.i.i.i883.i
  %inc.i.i.i877.i = add nuw i32 %i.053.i.i.i880.i, 1
  %exitcond.not.i.i.i878.i = icmp eq i32 %inc.i.i.i877.i, %239
  br i1 %exitcond.not.i.i.i878.i, label %for.end.i.i.i886.i, label %for.cond.i.i.i879.i.for.body.i.i.i883.i_crit_edge

for.cond.i.i.i879.i.for.body.i.i.i883.i_crit_edge: ; preds = %for.cond.i.i.i879.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i883.i

for.body.i.i.i883.i:                              ; preds = %for.cond.i.i.i879.i.for.body.i.i.i883.i_crit_edge, %for.body.preheader.i.i.i876.i
  %i.053.i.i.i880.i = phi i32 [ %inc.i.i.i877.i, %for.cond.i.i.i879.i.for.body.i.i.i883.i_crit_edge ], [ 0, %for.body.preheader.i.i.i876.i ]
  %arrayidx.i.i.i881.i = getelementptr i32, ptr %241, i32 %i.053.i.i.i880.i
  %242 = ptrtoint ptr %arrayidx.i.i.i881.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx.i.i.i881.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %div28.i871.i)
  %cmp5.not.i.i.i882.i = icmp ult i32 %243, %div28.i871.i
  br i1 %cmp5.not.i.i.i882.i, label %for.cond.i.i.i879.i, label %for.body.i.i.i883.i.btc_get_valid_sclk.exit.i888.i_crit_edge

for.body.i.i.i883.i.btc_get_valid_sclk.exit.i888.i_crit_edge: ; preds = %for.body.i.i.i883.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i888.i

for.end.i.i.i886.i:                               ; preds = %for.cond.i.i.i879.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i884.i = add i32 %239, -1
  %arrayidx19.i.i.i885.i = getelementptr i32, ptr %241, i32 %sub.i.i.i884.i
  %244 = ptrtoint ptr %arrayidx19.i.i.i885.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx19.i.i.i885.i, align 4
  br label %btc_get_valid_sclk.exit.i888.i

btc_get_valid_sclk.exit.i888.i:                   ; preds = %for.end.i.i.i886.i, %for.body.i.i.i883.i.btc_get_valid_sclk.exit.i888.i_crit_edge, %if.then15.i874.i.btc_get_valid_sclk.exit.i888.i_crit_edge
  %.sink.i.i.i887.i = phi i32 [ %245, %for.end.i.i.i886.i ], [ %div28.i871.i, %if.then15.i874.i.btc_get_valid_sclk.exit.i888.i_crit_edge ], [ %243, %for.body.i.i.i883.i.btc_get_valid_sclk.exit.i888.i_crit_edge ]
  %246 = call i32 @llvm.umin.i32(i32 %.sink.i.i.i887.i, i32 %237) #7
  %247 = ptrtoint ptr %medium183.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %medium183.i, align 4
  br label %btc_adjust_clock_combinations.exit912.i

if.else.i892.i:                                   ; preds = %if.end6.i863.i
  %sub33.i889.i = sub i32 %233, %231
  %sclk_mclk_delta.i890.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 14
  %248 = ptrtoint ptr %sclk_mclk_delta.i890.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %sclk_mclk_delta.i890.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i889.i, i32 %249)
  %cmp37.i891.i = icmp ugt i32 %sub33.i889.i, %249
  br i1 %cmp37.i891.i, label %if.then38.i897.i, label %if.else.i892.i.btc_adjust_clock_combinations.exit912.i_crit_edge

if.else.i892.i.btc_adjust_clock_combinations.exit912.i_crit_edge: ; preds = %if.else.i892.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit912.i

if.then38.i897.i:                                 ; preds = %if.else.i892.i
  %250 = ptrtoint ptr %mclk178.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %mclk178.i, align 4
  %sub45.i894.i = sub i32 %233, %249
  %valid_mclk_values.i.i895.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10
  %252 = ptrtoint ptr %valid_mclk_values.i.i895.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %valid_mclk_values.i.i895.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %cmp1.i.i74.i896.i = icmp eq i32 %253, 0
  br i1 %cmp1.i.i74.i896.i, label %if.then38.i897.i.btc_get_valid_mclk.exit.i911.i_crit_edge, label %for.body.preheader.i.i76.i899.i

if.then38.i897.i.btc_get_valid_mclk.exit.i911.i_crit_edge: ; preds = %if.then38.i897.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit.i911.i

for.body.preheader.i.i76.i899.i:                  ; preds = %if.then38.i897.i
  %values.i.i75.i898.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10, i32 1
  %254 = ptrtoint ptr %values.i.i75.i898.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %values.i.i75.i898.i, align 4
  br label %for.body.i.i83.i906.i

for.cond.i.i79.i902.i:                            ; preds = %for.body.i.i83.i906.i
  %inc.i.i77.i900.i = add nuw i32 %i.053.i.i80.i903.i, 1
  %exitcond.not.i.i78.i901.i = icmp eq i32 %inc.i.i77.i900.i, %253
  br i1 %exitcond.not.i.i78.i901.i, label %for.end.i.i86.i909.i, label %for.cond.i.i79.i902.i.for.body.i.i83.i906.i_crit_edge

for.cond.i.i79.i902.i.for.body.i.i83.i906.i_crit_edge: ; preds = %for.cond.i.i79.i902.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i83.i906.i

for.body.i.i83.i906.i:                            ; preds = %for.cond.i.i79.i902.i.for.body.i.i83.i906.i_crit_edge, %for.body.preheader.i.i76.i899.i
  %i.053.i.i80.i903.i = phi i32 [ %inc.i.i77.i900.i, %for.cond.i.i79.i902.i.for.body.i.i83.i906.i_crit_edge ], [ 0, %for.body.preheader.i.i76.i899.i ]
  %arrayidx.i.i81.i904.i = getelementptr i32, ptr %255, i32 %i.053.i.i80.i903.i
  %256 = ptrtoint ptr %arrayidx.i.i81.i904.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.i.i81.i904.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %sub45.i894.i)
  %cmp5.not.i.i82.i905.i = icmp ult i32 %257, %sub45.i894.i
  br i1 %cmp5.not.i.i82.i905.i, label %for.cond.i.i79.i902.i, label %for.body.i.i83.i906.i.btc_get_valid_mclk.exit.i911.i_crit_edge

for.body.i.i83.i906.i.btc_get_valid_mclk.exit.i911.i_crit_edge: ; preds = %for.body.i.i83.i906.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit.i911.i

for.end.i.i86.i909.i:                             ; preds = %for.cond.i.i79.i902.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i84.i907.i = add i32 %253, -1
  %arrayidx19.i.i85.i908.i = getelementptr i32, ptr %255, i32 %sub.i.i84.i907.i
  %258 = ptrtoint ptr %arrayidx19.i.i85.i908.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx19.i.i85.i908.i, align 4
  br label %btc_get_valid_mclk.exit.i911.i

btc_get_valid_mclk.exit.i911.i:                   ; preds = %for.end.i.i86.i909.i, %for.body.i.i83.i906.i.btc_get_valid_mclk.exit.i911.i_crit_edge, %if.then38.i897.i.btc_get_valid_mclk.exit.i911.i_crit_edge
  %.sink.i.i87.i910.i = phi i32 [ %259, %for.end.i.i86.i909.i ], [ %sub45.i894.i, %if.then38.i897.i.btc_get_valid_mclk.exit.i911.i_crit_edge ], [ %257, %for.body.i.i83.i906.i.btc_get_valid_mclk.exit.i911.i_crit_edge ]
  %260 = call i32 @llvm.umin.i32(i32 %.sink.i.i87.i910.i, i32 %251) #7
  %261 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %mclk326.i, align 4
  br label %btc_adjust_clock_combinations.exit912.i

btc_adjust_clock_combinations.exit912.i:          ; preds = %btc_get_valid_mclk.exit.i911.i, %if.else.i892.i.btc_adjust_clock_combinations.exit912.i_crit_edge, %btc_get_valid_sclk.exit.i888.i, %if.then10.i869.i.btc_adjust_clock_combinations.exit912.i_crit_edge, %lor.lhs.false.i861.i.btc_adjust_clock_combinations.exit912.i_crit_edge, %btc_adjust_clock_combinations.exit.i.btc_adjust_clock_combinations.exit912.i_crit_edge
  %262 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %mclk154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp.i914.i = icmp eq i32 %263, 0
  br i1 %cmp.i914.i, label %btc_adjust_clock_combinations.exit912.i.btc_adjust_clock_combinations.exit969.i_crit_edge, label %lor.lhs.false.i918.i

btc_adjust_clock_combinations.exit912.i.btc_adjust_clock_combinations.exit969.i_crit_edge: ; preds = %btc_adjust_clock_combinations.exit912.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit969.i

lor.lhs.false.i918.i:                             ; preds = %btc_adjust_clock_combinations.exit912.i
  %264 = ptrtoint ptr %call.i5 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %call.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp1.i915.i = icmp eq i32 %265, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %263)
  %cmp4.i916.i = icmp eq i32 %265, %263
  %or.cond.i917.i = select i1 %cmp1.i915.i, i1 true, i1 %cmp4.i916.i
  br i1 %or.cond.i917.i, label %lor.lhs.false.i918.i.btc_adjust_clock_combinations.exit969.i_crit_edge, label %if.end6.i920.i

lor.lhs.false.i918.i.btc_adjust_clock_combinations.exit969.i_crit_edge: ; preds = %lor.lhs.false.i918.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit969.i

if.end6.i920.i:                                   ; preds = %lor.lhs.false.i918.i
  call void @__sanitizer_cov_trace_cmp4(i32 %265, i32 %263)
  %cmp9.i919.i = icmp ult i32 %265, %263
  br i1 %cmp9.i919.i, label %if.then10.i926.i, label %if.else.i949.i

if.then10.i926.i:                                 ; preds = %if.end6.i920.i
  %sub.i921.i = add i32 %263, -1
  %add.i922.i = add i32 %265, %sub.i921.i
  %div.i923.i = udiv i32 %add.i922.i, %265
  %mclk_sclk_ratio.i924.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 13
  %266 = ptrtoint ptr %mclk_sclk_ratio.i924.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %mclk_sclk_ratio.i924.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i923.i, i32 %267)
  %cmp14.i925.i = icmp ugt i32 %div.i923.i, %267
  br i1 %cmp14.i925.i, label %if.then15.i931.i, label %if.then10.i926.i.btc_adjust_clock_combinations.exit969.i_crit_edge

if.then10.i926.i.btc_adjust_clock_combinations.exit969.i_crit_edge: ; preds = %if.then10.i926.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit969.i

if.then15.i931.i:                                 ; preds = %if.then10.i926.i
  %268 = ptrtoint ptr %max_limits.0.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %max_limits.0.i, align 4
  %add23.i927.i = add i32 %267, %sub.i921.i
  %div28.i928.i = udiv i32 %add23.i927.i, %267
  %270 = ptrtoint ptr %valid_sclk_values.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %valid_sclk_values.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp1.i.i.i930.i = icmp eq i32 %271, 0
  br i1 %cmp1.i.i.i930.i, label %if.then15.i931.i.btc_get_valid_sclk.exit.i945.i_crit_edge, label %for.body.preheader.i.i.i933.i

if.then15.i931.i.btc_get_valid_sclk.exit.i945.i_crit_edge: ; preds = %if.then15.i931.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i945.i

for.body.preheader.i.i.i933.i:                    ; preds = %if.then15.i931.i
  %272 = ptrtoint ptr %values.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %values.i.i.i.i, align 4
  br label %for.body.i.i.i940.i

for.cond.i.i.i936.i:                              ; preds = %for.body.i.i.i940.i
  %inc.i.i.i934.i = add nuw i32 %i.053.i.i.i937.i, 1
  %exitcond.not.i.i.i935.i = icmp eq i32 %inc.i.i.i934.i, %271
  br i1 %exitcond.not.i.i.i935.i, label %for.end.i.i.i943.i, label %for.cond.i.i.i936.i.for.body.i.i.i940.i_crit_edge

for.cond.i.i.i936.i.for.body.i.i.i940.i_crit_edge: ; preds = %for.cond.i.i.i936.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i940.i

for.body.i.i.i940.i:                              ; preds = %for.cond.i.i.i936.i.for.body.i.i.i940.i_crit_edge, %for.body.preheader.i.i.i933.i
  %i.053.i.i.i937.i = phi i32 [ %inc.i.i.i934.i, %for.cond.i.i.i936.i.for.body.i.i.i940.i_crit_edge ], [ 0, %for.body.preheader.i.i.i933.i ]
  %arrayidx.i.i.i938.i = getelementptr i32, ptr %273, i32 %i.053.i.i.i937.i
  %274 = ptrtoint ptr %arrayidx.i.i.i938.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx.i.i.i938.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %div28.i928.i)
  %cmp5.not.i.i.i939.i = icmp ult i32 %275, %div28.i928.i
  br i1 %cmp5.not.i.i.i939.i, label %for.cond.i.i.i936.i, label %for.body.i.i.i940.i.btc_get_valid_sclk.exit.i945.i_crit_edge

for.body.i.i.i940.i.btc_get_valid_sclk.exit.i945.i_crit_edge: ; preds = %for.body.i.i.i940.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_sclk.exit.i945.i

for.end.i.i.i943.i:                               ; preds = %for.cond.i.i.i936.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i941.i = add i32 %271, -1
  %arrayidx19.i.i.i942.i = getelementptr i32, ptr %273, i32 %sub.i.i.i941.i
  %276 = ptrtoint ptr %arrayidx19.i.i.i942.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx19.i.i.i942.i, align 4
  br label %btc_get_valid_sclk.exit.i945.i

btc_get_valid_sclk.exit.i945.i:                   ; preds = %for.end.i.i.i943.i, %for.body.i.i.i940.i.btc_get_valid_sclk.exit.i945.i_crit_edge, %if.then15.i931.i.btc_get_valid_sclk.exit.i945.i_crit_edge
  %.sink.i.i.i944.i = phi i32 [ %277, %for.end.i.i.i943.i ], [ %div28.i928.i, %if.then15.i931.i.btc_get_valid_sclk.exit.i945.i_crit_edge ], [ %275, %for.body.i.i.i940.i.btc_get_valid_sclk.exit.i945.i_crit_edge ]
  %278 = call i32 @llvm.umin.i32(i32 %.sink.i.i.i944.i, i32 %269) #7
  %279 = ptrtoint ptr %call.i5 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %call.i5, align 4
  br label %btc_adjust_clock_combinations.exit969.i

if.else.i949.i:                                   ; preds = %if.end6.i920.i
  %sub33.i946.i = sub i32 %265, %263
  %sclk_mclk_delta.i947.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 14
  %280 = ptrtoint ptr %sclk_mclk_delta.i947.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %sclk_mclk_delta.i947.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33.i946.i, i32 %281)
  %cmp37.i948.i = icmp ugt i32 %sub33.i946.i, %281
  br i1 %cmp37.i948.i, label %if.then38.i954.i, label %if.else.i949.i.btc_adjust_clock_combinations.exit969.i_crit_edge

if.else.i949.i.btc_adjust_clock_combinations.exit969.i_crit_edge: ; preds = %if.else.i949.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_adjust_clock_combinations.exit969.i

if.then38.i954.i:                                 ; preds = %if.else.i949.i
  %282 = ptrtoint ptr %mclk178.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %mclk178.i, align 4
  %sub45.i951.i = sub i32 %265, %281
  %valid_mclk_values.i.i952.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10
  %284 = ptrtoint ptr %valid_mclk_values.i.i952.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %valid_mclk_values.i.i952.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp1.i.i74.i953.i = icmp eq i32 %285, 0
  br i1 %cmp1.i.i74.i953.i, label %if.then38.i954.i.btc_get_valid_mclk.exit.i968.i_crit_edge, label %for.body.preheader.i.i76.i956.i

if.then38.i954.i.btc_get_valid_mclk.exit.i968.i_crit_edge: ; preds = %if.then38.i954.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit.i968.i

for.body.preheader.i.i76.i956.i:                  ; preds = %if.then38.i954.i
  %values.i.i75.i955.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10, i32 1
  %286 = ptrtoint ptr %values.i.i75.i955.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %values.i.i75.i955.i, align 4
  br label %for.body.i.i83.i963.i

for.cond.i.i79.i959.i:                            ; preds = %for.body.i.i83.i963.i
  %inc.i.i77.i957.i = add nuw i32 %i.053.i.i80.i960.i, 1
  %exitcond.not.i.i78.i958.i = icmp eq i32 %inc.i.i77.i957.i, %285
  br i1 %exitcond.not.i.i78.i958.i, label %for.end.i.i86.i966.i, label %for.cond.i.i79.i959.i.for.body.i.i83.i963.i_crit_edge

for.cond.i.i79.i959.i.for.body.i.i83.i963.i_crit_edge: ; preds = %for.cond.i.i79.i959.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i83.i963.i

for.body.i.i83.i963.i:                            ; preds = %for.cond.i.i79.i959.i.for.body.i.i83.i963.i_crit_edge, %for.body.preheader.i.i76.i956.i
  %i.053.i.i80.i960.i = phi i32 [ %inc.i.i77.i957.i, %for.cond.i.i79.i959.i.for.body.i.i83.i963.i_crit_edge ], [ 0, %for.body.preheader.i.i76.i956.i ]
  %arrayidx.i.i81.i961.i = getelementptr i32, ptr %287, i32 %i.053.i.i80.i960.i
  %288 = ptrtoint ptr %arrayidx.i.i81.i961.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx.i.i81.i961.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %289, i32 %sub45.i951.i)
  %cmp5.not.i.i82.i962.i = icmp ult i32 %289, %sub45.i951.i
  br i1 %cmp5.not.i.i82.i962.i, label %for.cond.i.i79.i959.i, label %for.body.i.i83.i963.i.btc_get_valid_mclk.exit.i968.i_crit_edge

for.body.i.i83.i963.i.btc_get_valid_mclk.exit.i968.i_crit_edge: ; preds = %for.body.i.i83.i963.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_get_valid_mclk.exit.i968.i

for.end.i.i86.i966.i:                             ; preds = %for.cond.i.i79.i959.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i84.i964.i = add i32 %285, -1
  %arrayidx19.i.i85.i965.i = getelementptr i32, ptr %287, i32 %sub.i.i84.i964.i
  %290 = ptrtoint ptr %arrayidx19.i.i85.i965.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx19.i.i85.i965.i, align 4
  br label %btc_get_valid_mclk.exit.i968.i

btc_get_valid_mclk.exit.i968.i:                   ; preds = %for.end.i.i86.i966.i, %for.body.i.i83.i963.i.btc_get_valid_mclk.exit.i968.i_crit_edge, %if.then38.i954.i.btc_get_valid_mclk.exit.i968.i_crit_edge
  %.sink.i.i87.i967.i = phi i32 [ %291, %for.end.i.i86.i966.i ], [ %sub45.i951.i, %if.then38.i954.i.btc_get_valid_mclk.exit.i968.i_crit_edge ], [ %289, %for.body.i.i83.i963.i.btc_get_valid_mclk.exit.i968.i_crit_edge ]
  %292 = call i32 @llvm.umin.i32(i32 %.sink.i.i87.i967.i, i32 %283) #7
  %293 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 %292, ptr %mclk154.i, align 4
  br label %btc_adjust_clock_combinations.exit969.i

btc_adjust_clock_combinations.exit969.i:          ; preds = %btc_get_valid_mclk.exit.i968.i, %if.else.i949.i.btc_adjust_clock_combinations.exit969.i_crit_edge, %btc_get_valid_sclk.exit.i945.i, %if.then10.i926.i.btc_adjust_clock_combinations.exit969.i_crit_edge, %lor.lhs.false.i918.i.btc_adjust_clock_combinations.exit969.i_crit_edge, %btc_adjust_clock_combinations.exit912.i.btc_adjust_clock_combinations.exit969.i_crit_edge
  %dyn_state338.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %294 = ptrtoint ptr %sclk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %sclk.0.in.i, align 4
  %vddc341.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 2
  %296 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %vddc341.i, align 4
  %298 = ptrtoint ptr %dyn_state338.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %dyn_state338.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %cmp1.i971.i = icmp eq i32 %299, 0
  br i1 %cmp1.i971.i, label %btc_adjust_clock_combinations.exit969.i.btc_apply_voltage_dependency_rules.exit.i_crit_edge, label %for.body.preheader.i.i

btc_adjust_clock_combinations.exit969.i.btc_apply_voltage_dependency_rules.exit.i_crit_edge: ; preds = %btc_adjust_clock_combinations.exit969.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit.i

for.body.preheader.i.i:                           ; preds = %btc_adjust_clock_combinations.exit969.i
  %entries.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %300 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %entries.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.059.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %301, i32 %i.059.i.i
  %302 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %303, i32 %295)
  %cmp4.not.i.i = icmp ult i32 %303, %295
  br i1 %cmp4.not.i.i, label %for.inc.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %for.body.i.i
  %304 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %vddc.0.in.i, align 2
  %v.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %301, i32 %i.059.i.i, i32 1
  %306 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %v.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %305, i16 %307)
  %cmp9.i973.i = icmp ult i16 %305, %307
  br i1 %cmp9.i973.i, label %if.then11.i.i, label %if.then5.i.i.btc_apply_voltage_dependency_rules.exit.i_crit_edge

if.then5.i.i.btc_apply_voltage_dependency_rules.exit.i_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit.i

if.then11.i.i:                                    ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %308 = call i16 @llvm.umin.i16(i16 %307, i16 %297) #7
  br label %cleanup.sink.split.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.059.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %299
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %vddc.0.in.i, align 2
  %311 = call i16 @llvm.umax.i16(i16 %310, i16 %297) #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %for.end.i.i, %if.then11.i.i
  %.sink.i.i = phi i16 [ %308, %if.then11.i.i ], [ %311, %for.end.i.i ]
  %312 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %.sink.i.i, ptr %vddc.0.in.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit.i

btc_apply_voltage_dependency_rules.exit.i:        ; preds = %cleanup.sink.split.i.i, %if.then5.i.i.btc_apply_voltage_dependency_rules.exit.i_crit_edge, %btc_adjust_clock_combinations.exit969.i.btc_apply_voltage_dependency_rules.exit.i_crit_edge
  %vddci_dependency_on_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1
  %313 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %mclk163.i, align 4
  %vddci349.i = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, ptr %max_limits.0.i, i32 0, i32 3
  %315 = ptrtoint ptr %vddci349.i to i32
  call void @__asan_load2_noabort(i32 %315)
  %316 = load i16, ptr %vddci349.i, align 2
  %317 = ptrtoint ptr %vddci_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %vddci_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %cmp1.i975.i = icmp eq i32 %318, 0
  br i1 %cmp1.i975.i, label %btc_apply_voltage_dependency_rules.exit.i.btc_apply_voltage_dependency_rules.exit993.i_crit_edge, label %for.body.preheader.i978.i

btc_apply_voltage_dependency_rules.exit.i.btc_apply_voltage_dependency_rules.exit993.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit993.i

for.body.preheader.i978.i:                        ; preds = %btc_apply_voltage_dependency_rules.exit.i
  %entries.i977.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %319 = ptrtoint ptr %entries.i977.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %entries.i977.i, align 4
  br label %for.body.i982.i

for.body.i982.i:                                  ; preds = %for.inc.i989.i.for.body.i982.i_crit_edge, %for.body.preheader.i978.i
  %i.059.i979.i = phi i32 [ %inc.i987.i, %for.inc.i989.i.for.body.i982.i_crit_edge ], [ 0, %for.body.preheader.i978.i ]
  %arrayidx.i980.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %320, i32 %i.059.i979.i
  %321 = ptrtoint ptr %arrayidx.i980.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx.i980.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %322, i32 %314)
  %cmp4.not.i981.i = icmp ult i32 %322, %314
  br i1 %cmp4.not.i981.i, label %for.inc.i989.i, label %if.then5.i985.i

if.then5.i985.i:                                  ; preds = %for.body.i982.i
  %323 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %vddci167.i, align 2
  %v.i983.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %320, i32 %i.059.i979.i, i32 1
  %325 = ptrtoint ptr %v.i983.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %v.i983.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %324, i16 %326)
  %cmp9.i984.i = icmp ult i16 %324, %326
  br i1 %cmp9.i984.i, label %if.then11.i986.i, label %if.then5.i985.i.btc_apply_voltage_dependency_rules.exit993.i_crit_edge

if.then5.i985.i.btc_apply_voltage_dependency_rules.exit993.i_crit_edge: ; preds = %if.then5.i985.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit993.i

if.then11.i986.i:                                 ; preds = %if.then5.i985.i
  call void @__sanitizer_cov_trace_pc() #9
  %327 = call i16 @llvm.umin.i16(i16 %326, i16 %316) #7
  br label %cleanup.sink.split.i992.i

for.inc.i989.i:                                   ; preds = %for.body.i982.i
  %inc.i987.i = add nuw i32 %i.059.i979.i, 1
  %exitcond.not.i988.i = icmp eq i32 %inc.i987.i, %318
  br i1 %exitcond.not.i988.i, label %for.end.i990.i, label %for.inc.i989.i.for.body.i982.i_crit_edge

for.inc.i989.i.for.body.i982.i_crit_edge:         ; preds = %for.inc.i989.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i982.i

for.end.i990.i:                                   ; preds = %for.inc.i989.i
  call void @__sanitizer_cov_trace_pc() #9
  %328 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_load2_noabort(i32 %328)
  %329 = load i16, ptr %vddci167.i, align 2
  %330 = call i16 @llvm.umax.i16(i16 %329, i16 %316) #7
  br label %cleanup.sink.split.i992.i

cleanup.sink.split.i992.i:                        ; preds = %for.end.i990.i, %if.then11.i986.i
  %.sink.i991.i = phi i16 [ %327, %if.then11.i986.i ], [ %330, %for.end.i990.i ]
  %331 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %.sink.i991.i, ptr %vddci167.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit993.i

btc_apply_voltage_dependency_rules.exit993.i:     ; preds = %cleanup.sink.split.i992.i, %if.then5.i985.i.btc_apply_voltage_dependency_rules.exit993.i_crit_edge, %btc_apply_voltage_dependency_rules.exit.i.btc_apply_voltage_dependency_rules.exit993.i_crit_edge
  %vddc_dependency_on_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2
  %332 = ptrtoint ptr %mclk163.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %mclk163.i, align 4
  %334 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %vddc341.i, align 4
  %336 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %vddc_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %cmp1.i995.i = icmp eq i32 %337, 0
  br i1 %cmp1.i995.i, label %btc_apply_voltage_dependency_rules.exit993.i.btc_apply_voltage_dependency_rules.exit1013.i_crit_edge, label %for.body.preheader.i998.i

btc_apply_voltage_dependency_rules.exit993.i.btc_apply_voltage_dependency_rules.exit1013.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit993.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1013.i

for.body.preheader.i998.i:                        ; preds = %btc_apply_voltage_dependency_rules.exit993.i
  %entries.i997.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  %338 = ptrtoint ptr %entries.i997.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %entries.i997.i, align 4
  br label %for.body.i1002.i

for.body.i1002.i:                                 ; preds = %for.inc.i1009.i.for.body.i1002.i_crit_edge, %for.body.preheader.i998.i
  %i.059.i999.i = phi i32 [ %inc.i1007.i, %for.inc.i1009.i.for.body.i1002.i_crit_edge ], [ 0, %for.body.preheader.i998.i ]
  %arrayidx.i1000.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %339, i32 %i.059.i999.i
  %340 = ptrtoint ptr %arrayidx.i1000.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx.i1000.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %341, i32 %333)
  %cmp4.not.i1001.i = icmp ult i32 %341, %333
  br i1 %cmp4.not.i1001.i, label %for.inc.i1009.i, label %if.then5.i1005.i

if.then5.i1005.i:                                 ; preds = %for.body.i1002.i
  %342 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %342)
  %343 = load i16, ptr %vddc.0.in.i, align 2
  %v.i1003.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %339, i32 %i.059.i999.i, i32 1
  %344 = ptrtoint ptr %v.i1003.i to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %v.i1003.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %343, i16 %345)
  %cmp9.i1004.i = icmp ult i16 %343, %345
  br i1 %cmp9.i1004.i, label %if.then11.i1006.i, label %if.then5.i1005.i.btc_apply_voltage_dependency_rules.exit1013.i_crit_edge

if.then5.i1005.i.btc_apply_voltage_dependency_rules.exit1013.i_crit_edge: ; preds = %if.then5.i1005.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1013.i

if.then11.i1006.i:                                ; preds = %if.then5.i1005.i
  call void @__sanitizer_cov_trace_pc() #9
  %346 = call i16 @llvm.umin.i16(i16 %345, i16 %335) #7
  br label %cleanup.sink.split.i1012.i

for.inc.i1009.i:                                  ; preds = %for.body.i1002.i
  %inc.i1007.i = add nuw i32 %i.059.i999.i, 1
  %exitcond.not.i1008.i = icmp eq i32 %inc.i1007.i, %337
  br i1 %exitcond.not.i1008.i, label %for.end.i1010.i, label %for.inc.i1009.i.for.body.i1002.i_crit_edge

for.inc.i1009.i.for.body.i1002.i_crit_edge:       ; preds = %for.inc.i1009.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1002.i

for.end.i1010.i:                                  ; preds = %for.inc.i1009.i
  call void @__sanitizer_cov_trace_pc() #9
  %347 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %vddc.0.in.i, align 2
  %349 = call i16 @llvm.umax.i16(i16 %348, i16 %335) #7
  br label %cleanup.sink.split.i1012.i

cleanup.sink.split.i1012.i:                       ; preds = %for.end.i1010.i, %if.then11.i1006.i
  %.sink.i1011.i = phi i16 [ %346, %if.then11.i1006.i ], [ %349, %for.end.i1010.i ]
  %350 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 %.sink.i1011.i, ptr %vddc.0.in.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1013.i

btc_apply_voltage_dependency_rules.exit1013.i:    ; preds = %cleanup.sink.split.i1012.i, %if.then5.i1005.i.btc_apply_voltage_dependency_rules.exit1013.i_crit_edge, %btc_apply_voltage_dependency_rules.exit993.i.btc_apply_voltage_dependency_rules.exit1013.i_crit_edge
  %vddc_dependency_on_dispclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4
  %current_dispclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 8
  %351 = ptrtoint ptr %current_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %current_dispclk.i, align 4
  %353 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %vddc341.i, align 4
  %355 = ptrtoint ptr %vddc_dependency_on_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %vddc_dependency_on_dispclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %cmp1.i1015.i = icmp eq i32 %356, 0
  br i1 %cmp1.i1015.i, label %btc_apply_voltage_dependency_rules.exit1013.i.btc_apply_voltage_dependency_rules.exit1033.i_crit_edge, label %for.body.preheader.i1018.i

btc_apply_voltage_dependency_rules.exit1013.i.btc_apply_voltage_dependency_rules.exit1033.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1013.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1033.i

for.body.preheader.i1018.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1013.i
  %entries.i1017.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %357 = ptrtoint ptr %entries.i1017.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %entries.i1017.i, align 4
  br label %for.body.i1022.i

for.body.i1022.i:                                 ; preds = %for.inc.i1029.i.for.body.i1022.i_crit_edge, %for.body.preheader.i1018.i
  %i.059.i1019.i = phi i32 [ %inc.i1027.i, %for.inc.i1029.i.for.body.i1022.i_crit_edge ], [ 0, %for.body.preheader.i1018.i ]
  %arrayidx.i1020.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %358, i32 %i.059.i1019.i
  %359 = ptrtoint ptr %arrayidx.i1020.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx.i1020.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %360, i32 %352)
  %cmp4.not.i1021.i = icmp ult i32 %360, %352
  br i1 %cmp4.not.i1021.i, label %for.inc.i1029.i, label %if.then5.i1025.i

if.then5.i1025.i:                                 ; preds = %for.body.i1022.i
  %361 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %vddc.0.in.i, align 2
  %v.i1023.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %358, i32 %i.059.i1019.i, i32 1
  %363 = ptrtoint ptr %v.i1023.i to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %v.i1023.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %362, i16 %364)
  %cmp9.i1024.i = icmp ult i16 %362, %364
  br i1 %cmp9.i1024.i, label %if.then11.i1026.i, label %if.then5.i1025.i.btc_apply_voltage_dependency_rules.exit1033.i_crit_edge

if.then5.i1025.i.btc_apply_voltage_dependency_rules.exit1033.i_crit_edge: ; preds = %if.then5.i1025.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1033.i

if.then11.i1026.i:                                ; preds = %if.then5.i1025.i
  call void @__sanitizer_cov_trace_pc() #9
  %365 = call i16 @llvm.umin.i16(i16 %364, i16 %354) #7
  br label %cleanup.sink.split.i1032.i

for.inc.i1029.i:                                  ; preds = %for.body.i1022.i
  %inc.i1027.i = add nuw i32 %i.059.i1019.i, 1
  %exitcond.not.i1028.i = icmp eq i32 %inc.i1027.i, %356
  br i1 %exitcond.not.i1028.i, label %for.end.i1030.i, label %for.inc.i1029.i.for.body.i1022.i_crit_edge

for.inc.i1029.i.for.body.i1022.i_crit_edge:       ; preds = %for.inc.i1029.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1022.i

for.end.i1030.i:                                  ; preds = %for.inc.i1029.i
  call void @__sanitizer_cov_trace_pc() #9
  %366 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %vddc.0.in.i, align 2
  %368 = call i16 @llvm.umax.i16(i16 %367, i16 %354) #7
  br label %cleanup.sink.split.i1032.i

cleanup.sink.split.i1032.i:                       ; preds = %for.end.i1030.i, %if.then11.i1026.i
  %.sink.i1031.i = phi i16 [ %365, %if.then11.i1026.i ], [ %368, %for.end.i1030.i ]
  %369 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %.sink.i1031.i, ptr %vddc.0.in.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1033.i

btc_apply_voltage_dependency_rules.exit1033.i:    ; preds = %cleanup.sink.split.i1032.i, %if.then5.i1025.i.btc_apply_voltage_dependency_rules.exit1033.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1013.i.btc_apply_voltage_dependency_rules.exit1033.i_crit_edge
  %370 = ptrtoint ptr %medium183.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %medium183.i, align 4
  %372 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %vddc341.i, align 4
  %374 = ptrtoint ptr %dyn_state338.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %dyn_state338.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %cmp1.i1035.i = icmp eq i32 %375, 0
  br i1 %cmp1.i1035.i, label %btc_apply_voltage_dependency_rules.exit1033.i.btc_apply_voltage_dependency_rules.exit1053.i_crit_edge, label %for.body.preheader.i1038.i

btc_apply_voltage_dependency_rules.exit1033.i.btc_apply_voltage_dependency_rules.exit1053.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1033.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1053.i

for.body.preheader.i1038.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1033.i
  %entries.i1037.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %376 = ptrtoint ptr %entries.i1037.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %entries.i1037.i, align 4
  br label %for.body.i1042.i

for.body.i1042.i:                                 ; preds = %for.inc.i1049.i.for.body.i1042.i_crit_edge, %for.body.preheader.i1038.i
  %i.059.i1039.i = phi i32 [ %inc.i1047.i, %for.inc.i1049.i.for.body.i1042.i_crit_edge ], [ 0, %for.body.preheader.i1038.i ]
  %arrayidx.i1040.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %377, i32 %i.059.i1039.i
  %378 = ptrtoint ptr %arrayidx.i1040.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx.i1040.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %379, i32 %371)
  %cmp4.not.i1041.i = icmp ult i32 %379, %371
  br i1 %cmp4.not.i1041.i, label %for.inc.i1049.i, label %if.then5.i1045.i

if.then5.i1045.i:                                 ; preds = %for.body.i1042.i
  %380 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %vddc196.i, align 2
  %v.i1043.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %377, i32 %i.059.i1039.i, i32 1
  %382 = ptrtoint ptr %v.i1043.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %v.i1043.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %381, i16 %383)
  %cmp9.i1044.i = icmp ult i16 %381, %383
  br i1 %cmp9.i1044.i, label %if.then11.i1046.i, label %if.then5.i1045.i.btc_apply_voltage_dependency_rules.exit1053.i_crit_edge

if.then5.i1045.i.btc_apply_voltage_dependency_rules.exit1053.i_crit_edge: ; preds = %if.then5.i1045.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1053.i

if.then11.i1046.i:                                ; preds = %if.then5.i1045.i
  call void @__sanitizer_cov_trace_pc() #9
  %384 = call i16 @llvm.umin.i16(i16 %383, i16 %373) #7
  br label %cleanup.sink.split.i1052.i

for.inc.i1049.i:                                  ; preds = %for.body.i1042.i
  %inc.i1047.i = add nuw i32 %i.059.i1039.i, 1
  %exitcond.not.i1048.i = icmp eq i32 %inc.i1047.i, %375
  br i1 %exitcond.not.i1048.i, label %for.end.i1050.i, label %for.inc.i1049.i.for.body.i1042.i_crit_edge

for.inc.i1049.i.for.body.i1042.i_crit_edge:       ; preds = %for.inc.i1049.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1042.i

for.end.i1050.i:                                  ; preds = %for.inc.i1049.i
  call void @__sanitizer_cov_trace_pc() #9
  %385 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %vddc196.i, align 2
  %387 = call i16 @llvm.umax.i16(i16 %386, i16 %373) #7
  br label %cleanup.sink.split.i1052.i

cleanup.sink.split.i1052.i:                       ; preds = %for.end.i1050.i, %if.then11.i1046.i
  %.sink.i1051.i = phi i16 [ %384, %if.then11.i1046.i ], [ %387, %for.end.i1050.i ]
  %388 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %.sink.i1051.i, ptr %vddc196.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1053.i

btc_apply_voltage_dependency_rules.exit1053.i:    ; preds = %cleanup.sink.split.i1052.i, %if.then5.i1045.i.btc_apply_voltage_dependency_rules.exit1053.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1033.i.btc_apply_voltage_dependency_rules.exit1053.i_crit_edge
  %389 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %mclk326.i, align 4
  %391 = ptrtoint ptr %vddci349.i to i32
  call void @__asan_load2_noabort(i32 %391)
  %392 = load i16, ptr %vddci349.i, align 2
  %vddci383.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 3
  %393 = ptrtoint ptr %vddci_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %vddci_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %394)
  %cmp1.i1055.i = icmp eq i32 %394, 0
  br i1 %cmp1.i1055.i, label %btc_apply_voltage_dependency_rules.exit1053.i.btc_apply_voltage_dependency_rules.exit1073.i_crit_edge, label %for.body.preheader.i1058.i

btc_apply_voltage_dependency_rules.exit1053.i.btc_apply_voltage_dependency_rules.exit1073.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1053.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1073.i

for.body.preheader.i1058.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1053.i
  %entries.i1057.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %395 = ptrtoint ptr %entries.i1057.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %entries.i1057.i, align 4
  br label %for.body.i1062.i

for.body.i1062.i:                                 ; preds = %for.inc.i1069.i.for.body.i1062.i_crit_edge, %for.body.preheader.i1058.i
  %i.059.i1059.i = phi i32 [ %inc.i1067.i, %for.inc.i1069.i.for.body.i1062.i_crit_edge ], [ 0, %for.body.preheader.i1058.i ]
  %arrayidx.i1060.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %396, i32 %i.059.i1059.i
  %397 = ptrtoint ptr %arrayidx.i1060.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %arrayidx.i1060.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %398, i32 %390)
  %cmp4.not.i1061.i = icmp ult i32 %398, %390
  br i1 %cmp4.not.i1061.i, label %for.inc.i1069.i, label %if.then5.i1065.i

if.then5.i1065.i:                                 ; preds = %for.body.i1062.i
  %399 = ptrtoint ptr %vddci383.i to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %vddci383.i, align 2
  %v.i1063.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %396, i32 %i.059.i1059.i, i32 1
  %401 = ptrtoint ptr %v.i1063.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %v.i1063.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %400, i16 %402)
  %cmp9.i1064.i = icmp ult i16 %400, %402
  br i1 %cmp9.i1064.i, label %if.then11.i1066.i, label %if.then5.i1065.i.btc_apply_voltage_dependency_rules.exit1073.i_crit_edge

if.then5.i1065.i.btc_apply_voltage_dependency_rules.exit1073.i_crit_edge: ; preds = %if.then5.i1065.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1073.i

if.then11.i1066.i:                                ; preds = %if.then5.i1065.i
  call void @__sanitizer_cov_trace_pc() #9
  %403 = call i16 @llvm.umin.i16(i16 %402, i16 %392) #7
  br label %cleanup.sink.split.i1072.i

for.inc.i1069.i:                                  ; preds = %for.body.i1062.i
  %inc.i1067.i = add nuw i32 %i.059.i1059.i, 1
  %exitcond.not.i1068.i = icmp eq i32 %inc.i1067.i, %394
  br i1 %exitcond.not.i1068.i, label %for.end.i1070.i, label %for.inc.i1069.i.for.body.i1062.i_crit_edge

for.inc.i1069.i.for.body.i1062.i_crit_edge:       ; preds = %for.inc.i1069.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1062.i

for.end.i1070.i:                                  ; preds = %for.inc.i1069.i
  call void @__sanitizer_cov_trace_pc() #9
  %404 = ptrtoint ptr %vddci383.i to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %vddci383.i, align 2
  %406 = call i16 @llvm.umax.i16(i16 %405, i16 %392) #7
  br label %cleanup.sink.split.i1072.i

cleanup.sink.split.i1072.i:                       ; preds = %for.end.i1070.i, %if.then11.i1066.i
  %.sink.i1071.i = phi i16 [ %403, %if.then11.i1066.i ], [ %406, %for.end.i1070.i ]
  %407 = ptrtoint ptr %vddci383.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 %.sink.i1071.i, ptr %vddci383.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1073.i

btc_apply_voltage_dependency_rules.exit1073.i:    ; preds = %cleanup.sink.split.i1072.i, %if.then5.i1065.i.btc_apply_voltage_dependency_rules.exit1073.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1053.i.btc_apply_voltage_dependency_rules.exit1073.i_crit_edge
  %408 = ptrtoint ptr %mclk326.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %mclk326.i, align 4
  %410 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %vddc341.i, align 4
  %412 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %vddc_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %cmp1.i1075.i = icmp eq i32 %413, 0
  br i1 %cmp1.i1075.i, label %btc_apply_voltage_dependency_rules.exit1073.i.btc_apply_voltage_dependency_rules.exit1093.i_crit_edge, label %for.body.preheader.i1078.i

btc_apply_voltage_dependency_rules.exit1073.i.btc_apply_voltage_dependency_rules.exit1093.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1073.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1093.i

for.body.preheader.i1078.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1073.i
  %entries.i1077.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  %414 = ptrtoint ptr %entries.i1077.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %entries.i1077.i, align 4
  br label %for.body.i1082.i

for.body.i1082.i:                                 ; preds = %for.inc.i1089.i.for.body.i1082.i_crit_edge, %for.body.preheader.i1078.i
  %i.059.i1079.i = phi i32 [ %inc.i1087.i, %for.inc.i1089.i.for.body.i1082.i_crit_edge ], [ 0, %for.body.preheader.i1078.i ]
  %arrayidx.i1080.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %415, i32 %i.059.i1079.i
  %416 = ptrtoint ptr %arrayidx.i1080.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %arrayidx.i1080.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %417, i32 %409)
  %cmp4.not.i1081.i = icmp ult i32 %417, %409
  br i1 %cmp4.not.i1081.i, label %for.inc.i1089.i, label %if.then5.i1085.i

if.then5.i1085.i:                                 ; preds = %for.body.i1082.i
  %418 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %vddc196.i, align 2
  %v.i1083.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %415, i32 %i.059.i1079.i, i32 1
  %420 = ptrtoint ptr %v.i1083.i to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %v.i1083.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %419, i16 %421)
  %cmp9.i1084.i = icmp ult i16 %419, %421
  br i1 %cmp9.i1084.i, label %if.then11.i1086.i, label %if.then5.i1085.i.btc_apply_voltage_dependency_rules.exit1093.i_crit_edge

if.then5.i1085.i.btc_apply_voltage_dependency_rules.exit1093.i_crit_edge: ; preds = %if.then5.i1085.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1093.i

if.then11.i1086.i:                                ; preds = %if.then5.i1085.i
  call void @__sanitizer_cov_trace_pc() #9
  %422 = call i16 @llvm.umin.i16(i16 %421, i16 %411) #7
  br label %cleanup.sink.split.i1092.i

for.inc.i1089.i:                                  ; preds = %for.body.i1082.i
  %inc.i1087.i = add nuw i32 %i.059.i1079.i, 1
  %exitcond.not.i1088.i = icmp eq i32 %inc.i1087.i, %413
  br i1 %exitcond.not.i1088.i, label %for.end.i1090.i, label %for.inc.i1089.i.for.body.i1082.i_crit_edge

for.inc.i1089.i.for.body.i1082.i_crit_edge:       ; preds = %for.inc.i1089.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1082.i

for.end.i1090.i:                                  ; preds = %for.inc.i1089.i
  call void @__sanitizer_cov_trace_pc() #9
  %423 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %423)
  %424 = load i16, ptr %vddc196.i, align 2
  %425 = call i16 @llvm.umax.i16(i16 %424, i16 %411) #7
  br label %cleanup.sink.split.i1092.i

cleanup.sink.split.i1092.i:                       ; preds = %for.end.i1090.i, %if.then11.i1086.i
  %.sink.i1091.i = phi i16 [ %422, %if.then11.i1086.i ], [ %425, %for.end.i1090.i ]
  %426 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 %.sink.i1091.i, ptr %vddc196.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1093.i

btc_apply_voltage_dependency_rules.exit1093.i:    ; preds = %cleanup.sink.split.i1092.i, %if.then5.i1085.i.btc_apply_voltage_dependency_rules.exit1093.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1073.i.btc_apply_voltage_dependency_rules.exit1093.i_crit_edge
  %427 = ptrtoint ptr %current_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %current_dispclk.i, align 4
  %429 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %vddc341.i, align 4
  %431 = ptrtoint ptr %vddc_dependency_on_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %vddc_dependency_on_dispclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %cmp1.i1095.i = icmp eq i32 %432, 0
  br i1 %cmp1.i1095.i, label %btc_apply_voltage_dependency_rules.exit1093.i.btc_apply_voltage_dependency_rules.exit1113.i_crit_edge, label %for.body.preheader.i1098.i

btc_apply_voltage_dependency_rules.exit1093.i.btc_apply_voltage_dependency_rules.exit1113.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1093.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1113.i

for.body.preheader.i1098.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1093.i
  %entries.i1097.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %433 = ptrtoint ptr %entries.i1097.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %entries.i1097.i, align 4
  br label %for.body.i1102.i

for.body.i1102.i:                                 ; preds = %for.inc.i1109.i.for.body.i1102.i_crit_edge, %for.body.preheader.i1098.i
  %i.059.i1099.i = phi i32 [ %inc.i1107.i, %for.inc.i1109.i.for.body.i1102.i_crit_edge ], [ 0, %for.body.preheader.i1098.i ]
  %arrayidx.i1100.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %434, i32 %i.059.i1099.i
  %435 = ptrtoint ptr %arrayidx.i1100.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %arrayidx.i1100.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %436, i32 %428)
  %cmp4.not.i1101.i = icmp ult i32 %436, %428
  br i1 %cmp4.not.i1101.i, label %for.inc.i1109.i, label %if.then5.i1105.i

if.then5.i1105.i:                                 ; preds = %for.body.i1102.i
  %437 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %vddc196.i, align 2
  %v.i1103.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %434, i32 %i.059.i1099.i, i32 1
  %439 = ptrtoint ptr %v.i1103.i to i32
  call void @__asan_load2_noabort(i32 %439)
  %440 = load i16, ptr %v.i1103.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %438, i16 %440)
  %cmp9.i1104.i = icmp ult i16 %438, %440
  br i1 %cmp9.i1104.i, label %if.then11.i1106.i, label %if.then5.i1105.i.btc_apply_voltage_dependency_rules.exit1113.i_crit_edge

if.then5.i1105.i.btc_apply_voltage_dependency_rules.exit1113.i_crit_edge: ; preds = %if.then5.i1105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1113.i

if.then11.i1106.i:                                ; preds = %if.then5.i1105.i
  call void @__sanitizer_cov_trace_pc() #9
  %441 = call i16 @llvm.umin.i16(i16 %440, i16 %430) #7
  br label %cleanup.sink.split.i1112.i

for.inc.i1109.i:                                  ; preds = %for.body.i1102.i
  %inc.i1107.i = add nuw i32 %i.059.i1099.i, 1
  %exitcond.not.i1108.i = icmp eq i32 %inc.i1107.i, %432
  br i1 %exitcond.not.i1108.i, label %for.end.i1110.i, label %for.inc.i1109.i.for.body.i1102.i_crit_edge

for.inc.i1109.i.for.body.i1102.i_crit_edge:       ; preds = %for.inc.i1109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1102.i

for.end.i1110.i:                                  ; preds = %for.inc.i1109.i
  call void @__sanitizer_cov_trace_pc() #9
  %442 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %vddc196.i, align 2
  %444 = call i16 @llvm.umax.i16(i16 %443, i16 %430) #7
  br label %cleanup.sink.split.i1112.i

cleanup.sink.split.i1112.i:                       ; preds = %for.end.i1110.i, %if.then11.i1106.i
  %.sink.i1111.i = phi i16 [ %441, %if.then11.i1106.i ], [ %444, %for.end.i1110.i ]
  %445 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 %.sink.i1111.i, ptr %vddc196.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1113.i

btc_apply_voltage_dependency_rules.exit1113.i:    ; preds = %cleanup.sink.split.i1112.i, %if.then5.i1105.i.btc_apply_voltage_dependency_rules.exit1113.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1093.i.btc_apply_voltage_dependency_rules.exit1113.i_crit_edge
  %446 = ptrtoint ptr %call.i5 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %call.i5, align 4
  %448 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %vddc341.i, align 4
  %450 = ptrtoint ptr %dyn_state338.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %dyn_state338.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %cmp1.i1115.i = icmp eq i32 %451, 0
  br i1 %cmp1.i1115.i, label %btc_apply_voltage_dependency_rules.exit1113.i.btc_apply_voltage_dependency_rules.exit1133.i_crit_edge, label %for.body.preheader.i1118.i

btc_apply_voltage_dependency_rules.exit1113.i.btc_apply_voltage_dependency_rules.exit1133.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1133.i

for.body.preheader.i1118.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1113.i
  %entries.i1117.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %452 = ptrtoint ptr %entries.i1117.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %entries.i1117.i, align 4
  br label %for.body.i1122.i

for.body.i1122.i:                                 ; preds = %for.inc.i1129.i.for.body.i1122.i_crit_edge, %for.body.preheader.i1118.i
  %i.059.i1119.i = phi i32 [ %inc.i1127.i, %for.inc.i1129.i.for.body.i1122.i_crit_edge ], [ 0, %for.body.preheader.i1118.i ]
  %arrayidx.i1120.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %453, i32 %i.059.i1119.i
  %454 = ptrtoint ptr %arrayidx.i1120.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx.i1120.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %455, i32 %447)
  %cmp4.not.i1121.i = icmp ult i32 %455, %447
  br i1 %cmp4.not.i1121.i, label %for.inc.i1129.i, label %if.then5.i1125.i

if.then5.i1125.i:                                 ; preds = %for.body.i1122.i
  %456 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %vddc222.i, align 2
  %v.i1123.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %453, i32 %i.059.i1119.i, i32 1
  %458 = ptrtoint ptr %v.i1123.i to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %v.i1123.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %457, i16 %459)
  %cmp9.i1124.i = icmp ult i16 %457, %459
  br i1 %cmp9.i1124.i, label %if.then11.i1126.i, label %if.then5.i1125.i.btc_apply_voltage_dependency_rules.exit1133.i_crit_edge

if.then5.i1125.i.btc_apply_voltage_dependency_rules.exit1133.i_crit_edge: ; preds = %if.then5.i1125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1133.i

if.then11.i1126.i:                                ; preds = %if.then5.i1125.i
  call void @__sanitizer_cov_trace_pc() #9
  %460 = call i16 @llvm.umin.i16(i16 %459, i16 %449) #7
  br label %cleanup.sink.split.i1132.i

for.inc.i1129.i:                                  ; preds = %for.body.i1122.i
  %inc.i1127.i = add nuw i32 %i.059.i1119.i, 1
  %exitcond.not.i1128.i = icmp eq i32 %inc.i1127.i, %451
  br i1 %exitcond.not.i1128.i, label %for.end.i1130.i, label %for.inc.i1129.i.for.body.i1122.i_crit_edge

for.inc.i1129.i.for.body.i1122.i_crit_edge:       ; preds = %for.inc.i1129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1122.i

for.end.i1130.i:                                  ; preds = %for.inc.i1129.i
  call void @__sanitizer_cov_trace_pc() #9
  %461 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %vddc222.i, align 2
  %463 = call i16 @llvm.umax.i16(i16 %462, i16 %449) #7
  br label %cleanup.sink.split.i1132.i

cleanup.sink.split.i1132.i:                       ; preds = %for.end.i1130.i, %if.then11.i1126.i
  %.sink.i1131.i = phi i16 [ %460, %if.then11.i1126.i ], [ %463, %for.end.i1130.i ]
  %464 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 %.sink.i1131.i, ptr %vddc222.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1133.i

btc_apply_voltage_dependency_rules.exit1133.i:    ; preds = %cleanup.sink.split.i1132.i, %if.then5.i1125.i.btc_apply_voltage_dependency_rules.exit1133.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1113.i.btc_apply_voltage_dependency_rules.exit1133.i_crit_edge
  %465 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %mclk154.i, align 4
  %467 = ptrtoint ptr %vddci349.i to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %vddci349.i, align 2
  %469 = ptrtoint ptr %vddci_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %vddci_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %470)
  %cmp1.i1135.i = icmp eq i32 %470, 0
  br i1 %cmp1.i1135.i, label %btc_apply_voltage_dependency_rules.exit1133.i.btc_apply_voltage_dependency_rules.exit1153.i_crit_edge, label %for.body.preheader.i1138.i

btc_apply_voltage_dependency_rules.exit1133.i.btc_apply_voltage_dependency_rules.exit1153.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1153.i

for.body.preheader.i1138.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1133.i
  %entries.i1137.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %471 = ptrtoint ptr %entries.i1137.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %entries.i1137.i, align 4
  br label %for.body.i1142.i

for.body.i1142.i:                                 ; preds = %for.inc.i1149.i.for.body.i1142.i_crit_edge, %for.body.preheader.i1138.i
  %i.059.i1139.i = phi i32 [ %inc.i1147.i, %for.inc.i1149.i.for.body.i1142.i_crit_edge ], [ 0, %for.body.preheader.i1138.i ]
  %arrayidx.i1140.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %472, i32 %i.059.i1139.i
  %473 = ptrtoint ptr %arrayidx.i1140.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %arrayidx.i1140.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %474, i32 %466)
  %cmp4.not.i1141.i = icmp ult i32 %474, %466
  br i1 %cmp4.not.i1141.i, label %for.inc.i1149.i, label %if.then5.i1145.i

if.then5.i1145.i:                                 ; preds = %for.body.i1142.i
  %475 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %vddci158.i, align 2
  %v.i1143.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %472, i32 %i.059.i1139.i, i32 1
  %477 = ptrtoint ptr %v.i1143.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %v.i1143.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %476, i16 %478)
  %cmp9.i1144.i = icmp ult i16 %476, %478
  br i1 %cmp9.i1144.i, label %if.then11.i1146.i, label %if.then5.i1145.i.btc_apply_voltage_dependency_rules.exit1153.i_crit_edge

if.then5.i1145.i.btc_apply_voltage_dependency_rules.exit1153.i_crit_edge: ; preds = %if.then5.i1145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1153.i

if.then11.i1146.i:                                ; preds = %if.then5.i1145.i
  call void @__sanitizer_cov_trace_pc() #9
  %479 = call i16 @llvm.umin.i16(i16 %478, i16 %468) #7
  br label %cleanup.sink.split.i1152.i

for.inc.i1149.i:                                  ; preds = %for.body.i1142.i
  %inc.i1147.i = add nuw i32 %i.059.i1139.i, 1
  %exitcond.not.i1148.i = icmp eq i32 %inc.i1147.i, %470
  br i1 %exitcond.not.i1148.i, label %for.end.i1150.i, label %for.inc.i1149.i.for.body.i1142.i_crit_edge

for.inc.i1149.i.for.body.i1142.i_crit_edge:       ; preds = %for.inc.i1149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1142.i

for.end.i1150.i:                                  ; preds = %for.inc.i1149.i
  call void @__sanitizer_cov_trace_pc() #9
  %480 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_load2_noabort(i32 %480)
  %481 = load i16, ptr %vddci158.i, align 2
  %482 = call i16 @llvm.umax.i16(i16 %481, i16 %468) #7
  br label %cleanup.sink.split.i1152.i

cleanup.sink.split.i1152.i:                       ; preds = %for.end.i1150.i, %if.then11.i1146.i
  %.sink.i1151.i = phi i16 [ %479, %if.then11.i1146.i ], [ %482, %for.end.i1150.i ]
  %483 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %.sink.i1151.i, ptr %vddci158.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1153.i

btc_apply_voltage_dependency_rules.exit1153.i:    ; preds = %cleanup.sink.split.i1152.i, %if.then5.i1145.i.btc_apply_voltage_dependency_rules.exit1153.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1133.i.btc_apply_voltage_dependency_rules.exit1153.i_crit_edge
  %484 = ptrtoint ptr %mclk154.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %mclk154.i, align 4
  %486 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %486)
  %487 = load i16, ptr %vddc341.i, align 4
  %488 = ptrtoint ptr %vddc_dependency_on_mclk.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %vddc_dependency_on_mclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %489)
  %cmp1.i1155.i = icmp eq i32 %489, 0
  br i1 %cmp1.i1155.i, label %btc_apply_voltage_dependency_rules.exit1153.i.btc_apply_voltage_dependency_rules.exit1173.i_crit_edge, label %for.body.preheader.i1158.i

btc_apply_voltage_dependency_rules.exit1153.i.btc_apply_voltage_dependency_rules.exit1173.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1173.i

for.body.preheader.i1158.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1153.i
  %entries.i1157.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  %490 = ptrtoint ptr %entries.i1157.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %entries.i1157.i, align 4
  br label %for.body.i1162.i

for.body.i1162.i:                                 ; preds = %for.inc.i1169.i.for.body.i1162.i_crit_edge, %for.body.preheader.i1158.i
  %i.059.i1159.i = phi i32 [ %inc.i1167.i, %for.inc.i1169.i.for.body.i1162.i_crit_edge ], [ 0, %for.body.preheader.i1158.i ]
  %arrayidx.i1160.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %491, i32 %i.059.i1159.i
  %492 = ptrtoint ptr %arrayidx.i1160.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %arrayidx.i1160.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %493, i32 %485)
  %cmp4.not.i1161.i = icmp ult i32 %493, %485
  br i1 %cmp4.not.i1161.i, label %for.inc.i1169.i, label %if.then5.i1165.i

if.then5.i1165.i:                                 ; preds = %for.body.i1162.i
  %494 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %vddc222.i, align 2
  %v.i1163.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %491, i32 %i.059.i1159.i, i32 1
  %496 = ptrtoint ptr %v.i1163.i to i32
  call void @__asan_load2_noabort(i32 %496)
  %497 = load i16, ptr %v.i1163.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %495, i16 %497)
  %cmp9.i1164.i = icmp ult i16 %495, %497
  br i1 %cmp9.i1164.i, label %if.then11.i1166.i, label %if.then5.i1165.i.btc_apply_voltage_dependency_rules.exit1173.i_crit_edge

if.then5.i1165.i.btc_apply_voltage_dependency_rules.exit1173.i_crit_edge: ; preds = %if.then5.i1165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1173.i

if.then11.i1166.i:                                ; preds = %if.then5.i1165.i
  call void @__sanitizer_cov_trace_pc() #9
  %498 = call i16 @llvm.umin.i16(i16 %497, i16 %487) #7
  br label %cleanup.sink.split.i1172.i

for.inc.i1169.i:                                  ; preds = %for.body.i1162.i
  %inc.i1167.i = add nuw i32 %i.059.i1159.i, 1
  %exitcond.not.i1168.i = icmp eq i32 %inc.i1167.i, %489
  br i1 %exitcond.not.i1168.i, label %for.end.i1170.i, label %for.inc.i1169.i.for.body.i1162.i_crit_edge

for.inc.i1169.i.for.body.i1162.i_crit_edge:       ; preds = %for.inc.i1169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1162.i

for.end.i1170.i:                                  ; preds = %for.inc.i1169.i
  call void @__sanitizer_cov_trace_pc() #9
  %499 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %vddc222.i, align 2
  %501 = call i16 @llvm.umax.i16(i16 %500, i16 %487) #7
  br label %cleanup.sink.split.i1172.i

cleanup.sink.split.i1172.i:                       ; preds = %for.end.i1170.i, %if.then11.i1166.i
  %.sink.i1171.i = phi i16 [ %498, %if.then11.i1166.i ], [ %501, %for.end.i1170.i ]
  %502 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %.sink.i1171.i, ptr %vddc222.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1173.i

btc_apply_voltage_dependency_rules.exit1173.i:    ; preds = %cleanup.sink.split.i1172.i, %if.then5.i1165.i.btc_apply_voltage_dependency_rules.exit1173.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1153.i.btc_apply_voltage_dependency_rules.exit1173.i_crit_edge
  %503 = ptrtoint ptr %current_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %current_dispclk.i, align 4
  %505 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %505)
  %506 = load i16, ptr %vddc341.i, align 4
  %507 = ptrtoint ptr %vddc_dependency_on_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %vddc_dependency_on_dispclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %508)
  %cmp1.i1175.i = icmp eq i32 %508, 0
  br i1 %cmp1.i1175.i, label %btc_apply_voltage_dependency_rules.exit1173.i.btc_apply_voltage_dependency_rules.exit1193.i_crit_edge, label %for.body.preheader.i1178.i

btc_apply_voltage_dependency_rules.exit1173.i.btc_apply_voltage_dependency_rules.exit1193.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1193.i

for.body.preheader.i1178.i:                       ; preds = %btc_apply_voltage_dependency_rules.exit1173.i
  %entries.i1177.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %509 = ptrtoint ptr %entries.i1177.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %entries.i1177.i, align 4
  br label %for.body.i1182.i

for.body.i1182.i:                                 ; preds = %for.inc.i1189.i.for.body.i1182.i_crit_edge, %for.body.preheader.i1178.i
  %i.059.i1179.i = phi i32 [ %inc.i1187.i, %for.inc.i1189.i.for.body.i1182.i_crit_edge ], [ 0, %for.body.preheader.i1178.i ]
  %arrayidx.i1180.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %510, i32 %i.059.i1179.i
  %511 = ptrtoint ptr %arrayidx.i1180.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i1180.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %512, i32 %504)
  %cmp4.not.i1181.i = icmp ult i32 %512, %504
  br i1 %cmp4.not.i1181.i, label %for.inc.i1189.i, label %if.then5.i1185.i

if.then5.i1185.i:                                 ; preds = %for.body.i1182.i
  %513 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %513)
  %514 = load i16, ptr %vddc222.i, align 2
  %v.i1183.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %510, i32 %i.059.i1179.i, i32 1
  %515 = ptrtoint ptr %v.i1183.i to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %v.i1183.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %514, i16 %516)
  %cmp9.i1184.i = icmp ult i16 %514, %516
  br i1 %cmp9.i1184.i, label %if.then11.i1186.i, label %if.then5.i1185.i.btc_apply_voltage_dependency_rules.exit1193.i_crit_edge

if.then5.i1185.i.btc_apply_voltage_dependency_rules.exit1193.i_crit_edge: ; preds = %if.then5.i1185.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_dependency_rules.exit1193.i

if.then11.i1186.i:                                ; preds = %if.then5.i1185.i
  call void @__sanitizer_cov_trace_pc() #9
  %517 = call i16 @llvm.umin.i16(i16 %516, i16 %506) #7
  br label %cleanup.sink.split.i1192.i

for.inc.i1189.i:                                  ; preds = %for.body.i1182.i
  %inc.i1187.i = add nuw i32 %i.059.i1179.i, 1
  %exitcond.not.i1188.i = icmp eq i32 %inc.i1187.i, %508
  br i1 %exitcond.not.i1188.i, label %for.end.i1190.i, label %for.inc.i1189.i.for.body.i1182.i_crit_edge

for.inc.i1189.i.for.body.i1182.i_crit_edge:       ; preds = %for.inc.i1189.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i1182.i

for.end.i1190.i:                                  ; preds = %for.inc.i1189.i
  call void @__sanitizer_cov_trace_pc() #9
  %518 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %518)
  %519 = load i16, ptr %vddc222.i, align 2
  %520 = call i16 @llvm.umax.i16(i16 %519, i16 %506) #7
  br label %cleanup.sink.split.i1192.i

cleanup.sink.split.i1192.i:                       ; preds = %for.end.i1190.i, %if.then11.i1186.i
  %.sink.i1191.i = phi i16 [ %517, %if.then11.i1186.i ], [ %520, %for.end.i1190.i ]
  %521 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 %.sink.i1191.i, ptr %vddc222.i, align 2
  br label %btc_apply_voltage_dependency_rules.exit1193.i

btc_apply_voltage_dependency_rules.exit1193.i:    ; preds = %cleanup.sink.split.i1192.i, %if.then5.i1185.i.btc_apply_voltage_dependency_rules.exit1193.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1173.i.btc_apply_voltage_dependency_rules.exit1193.i_crit_edge
  %522 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %vddc341.i, align 4
  %524 = ptrtoint ptr %vddci349.i to i32
  call void @__asan_load2_noabort(i32 %524)
  %525 = load i16, ptr %vddci349.i, align 2
  %call.i1194.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %526 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %526)
  %527 = load i16, ptr %vddc.0.in.i, align 2
  %conv.i.i = zext i16 %527 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %527)
  %cmp.i1195.i = icmp eq i16 %527, 0
  br i1 %cmp.i1195.i, label %btc_apply_voltage_dependency_rules.exit1193.i.btc_apply_voltage_delta_rules.exit.i_crit_edge, label %lor.lhs.false.i1196.i

btc_apply_voltage_dependency_rules.exit1193.i.btc_apply_voltage_delta_rules.exit.i_crit_edge: ; preds = %btc_apply_voltage_dependency_rules.exit1193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit.i

lor.lhs.false.i1196.i:                            ; preds = %btc_apply_voltage_dependency_rules.exit1193.i
  %528 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %vddci167.i, align 2
  %conv2.i.i = zext i16 %529 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %529)
  %cmp3.i.i = icmp eq i16 %529, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i1196.i.btc_apply_voltage_delta_rules.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i1196.i.btc_apply_voltage_delta_rules.exit.i_crit_edge: ; preds = %lor.lhs.false.i1196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i1196.i
  call void @__sanitizer_cov_trace_cmp2(i16 %527, i16 %529)
  %cmp7.i1197.i = icmp ugt i16 %527, %529
  br i1 %cmp7.i1197.i, label %if.then9.i.i, label %if.else.i1200.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  %sub.i1198.i = sub nsw i32 %conv.i.i, %conv2.i.i
  %vddc_vddci_delta.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %530 = ptrtoint ptr %vddc_vddci_delta.i.i to i32
  call void @__asan_load2_noabort(i32 %530)
  %531 = load i16, ptr %vddc_vddci_delta.i.i, align 4
  %conv12.i.i = zext i16 %531 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1198.i, i32 %conv12.i.i)
  %cmp13.i.i = icmp sgt i32 %sub.i1198.i, %conv12.i.i
  br i1 %cmp13.i.i, label %if.then15.i1199.i, label %if.then9.i.i.btc_apply_voltage_delta_rules.exit.i_crit_edge

if.then9.i.i.btc_apply_voltage_delta_rules.exit.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit.i

if.then15.i1199.i:                                ; preds = %if.then9.i.i
  %vddci_voltage_table.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i1194.i, i32 0, i32 20
  %sub22.i.i = sub i16 %527, %531
  %532 = ptrtoint ptr %vddci_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %vddci_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %cmp20.not.i.i.i = icmp eq i32 %533, 0
  br i1 %cmp20.not.i.i.i, label %if.then15.i1199.i.for.end.i.i.i_crit_edge, label %if.then15.i1199.i.for.body.i.i.i_crit_edge

if.then15.i1199.i.for.body.i.i.i_crit_edge:       ; preds = %if.then15.i1199.i
  br label %for.body.i.i.i

if.then15.i1199.i.for.end.i.i.i_crit_edge:        ; preds = %if.then15.i1199.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.021.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %533
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.cond.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.then15.i1199.i.for.body.i.i.i_crit_edge
  %i.021.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then15.i1199.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i1194.i, i32 0, i32 20, i32 3, i32 %i.021.i.i.i
  %534 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %534)
  %535 = load i16, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %535, i16 %sub22.i.i)
  %cmp2.not.i.i.i = icmp ult i16 %535, %sub22.i.i
  br i1 %cmp2.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.btc_find_voltage.exit.i.i_crit_edge

for.body.i.i.i.btc_find_voltage.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i.for.end.i.i.i_crit_edge, %if.then15.i1199.i.for.end.i.i.i_crit_edge
  %sub.i.i.i = add i32 %533, -1
  %arrayidx9.i.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i1194.i, i32 0, i32 20, i32 3, i32 %sub.i.i.i
  %536 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %536)
  %537 = load i16, ptr %arrayidx9.i.i.i, align 4
  br label %btc_find_voltage.exit.i.i

btc_find_voltage.exit.i.i:                        ; preds = %for.end.i.i.i, %for.body.i.i.i.btc_find_voltage.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i16 [ %537, %for.end.i.i.i ], [ %535, %for.body.i.i.i.btc_find_voltage.exit.i.i_crit_edge ]
  %538 = call i16 @llvm.umin.i16(i16 %retval.0.i.i.i, i16 %525) #7
  %539 = ptrtoint ptr %vddci167.i to i32
  call void @__asan_store2_noabort(i32 %539)
  store i16 %538, ptr %vddci167.i, align 2
  br label %btc_apply_voltage_delta_rules.exit.i

if.else.i1200.i:                                  ; preds = %if.end.i.i
  %sub35.i.i = sub nsw i32 %conv2.i.i, %conv.i.i
  %vddc_vddci_delta39.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %540 = ptrtoint ptr %vddc_vddci_delta39.i.i to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %vddc_vddci_delta39.i.i, align 4
  %conv40.i.i = zext i16 %541 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i.i, i32 %conv40.i.i)
  %cmp41.i.i = icmp sgt i32 %sub35.i.i, %conv40.i.i
  br i1 %cmp41.i.i, label %if.then43.i.i, label %if.else.i1200.i.btc_apply_voltage_delta_rules.exit.i_crit_edge

if.else.i1200.i.btc_apply_voltage_delta_rules.exit.i_crit_edge: ; preds = %if.else.i1200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit.i

if.then43.i.i:                                    ; preds = %if.else.i1200.i
  %vddc_voltage_table.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i1194.i, i32 0, i32 19
  %sub50.i.i = sub i16 %529, %541
  %542 = ptrtoint ptr %vddc_voltage_table.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %vddc_voltage_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %543)
  %cmp20.not.i87.i.i = icmp eq i32 %543, 0
  br i1 %cmp20.not.i87.i.i, label %if.then43.i.i.for.end.i97.i.i_crit_edge, label %if.then43.i.i.for.body.i94.i.i_crit_edge

if.then43.i.i.for.body.i94.i.i_crit_edge:         ; preds = %if.then43.i.i
  br label %for.body.i94.i.i

if.then43.i.i.for.end.i97.i.i_crit_edge:          ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97.i.i

for.cond.i90.i.i:                                 ; preds = %for.body.i94.i.i
  %inc.i88.i.i = add nuw i32 %i.021.i91.i.i, 1
  %exitcond.not.i89.i.i = icmp eq i32 %inc.i88.i.i, %543
  br i1 %exitcond.not.i89.i.i, label %for.cond.i90.i.i.for.end.i97.i.i_crit_edge, label %for.cond.i90.i.i.for.body.i94.i.i_crit_edge

for.cond.i90.i.i.for.body.i94.i.i_crit_edge:      ; preds = %for.cond.i90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i94.i.i

for.cond.i90.i.i.for.end.i97.i.i_crit_edge:       ; preds = %for.cond.i90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97.i.i

for.body.i94.i.i:                                 ; preds = %for.cond.i90.i.i.for.body.i94.i.i_crit_edge, %if.then43.i.i.for.body.i94.i.i_crit_edge
  %i.021.i91.i.i = phi i32 [ %inc.i88.i.i, %for.cond.i90.i.i.for.body.i94.i.i_crit_edge ], [ 0, %if.then43.i.i.for.body.i94.i.i_crit_edge ]
  %arrayidx.i92.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i1194.i, i32 0, i32 19, i32 3, i32 %i.021.i91.i.i
  %544 = ptrtoint ptr %arrayidx.i92.i.i to i32
  call void @__asan_load2_noabort(i32 %544)
  %545 = load i16, ptr %arrayidx.i92.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %545, i16 %sub50.i.i)
  %cmp2.not.i93.i.i = icmp ult i16 %545, %sub50.i.i
  br i1 %cmp2.not.i93.i.i, label %for.cond.i90.i.i, label %for.body.i94.i.i.btc_find_voltage.exit99.i.i_crit_edge

for.body.i94.i.i.btc_find_voltage.exit99.i.i_crit_edge: ; preds = %for.body.i94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit99.i.i

for.end.i97.i.i:                                  ; preds = %for.cond.i90.i.i.for.end.i97.i.i_crit_edge, %if.then43.i.i.for.end.i97.i.i_crit_edge
  %sub.i95.i.i = add i32 %543, -1
  %arrayidx9.i96.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i1194.i, i32 0, i32 19, i32 3, i32 %sub.i95.i.i
  %546 = ptrtoint ptr %arrayidx9.i96.i.i to i32
  call void @__asan_load2_noabort(i32 %546)
  %547 = load i16, ptr %arrayidx9.i96.i.i, align 4
  br label %btc_find_voltage.exit99.i.i

btc_find_voltage.exit99.i.i:                      ; preds = %for.end.i97.i.i, %for.body.i94.i.i.btc_find_voltage.exit99.i.i_crit_edge
  %retval.0.i98.i.i = phi i16 [ %547, %for.end.i97.i.i ], [ %545, %for.body.i94.i.i.btc_find_voltage.exit99.i.i_crit_edge ]
  %548 = call i16 @llvm.umin.i16(i16 %retval.0.i98.i.i, i16 %523) #7
  %549 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_store2_noabort(i32 %549)
  store i16 %548, ptr %vddc.0.in.i, align 2
  br label %btc_apply_voltage_delta_rules.exit.i

btc_apply_voltage_delta_rules.exit.i:             ; preds = %btc_find_voltage.exit99.i.i, %if.else.i1200.i.btc_apply_voltage_delta_rules.exit.i_crit_edge, %btc_find_voltage.exit.i.i, %if.then9.i.i.btc_apply_voltage_delta_rules.exit.i_crit_edge, %lor.lhs.false.i1196.i.btc_apply_voltage_delta_rules.exit.i_crit_edge, %btc_apply_voltage_dependency_rules.exit1193.i.btc_apply_voltage_delta_rules.exit.i_crit_edge
  %550 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %550)
  %551 = load i16, ptr %vddc341.i, align 4
  %552 = ptrtoint ptr %vddci349.i to i32
  call void @__asan_load2_noabort(i32 %552)
  %553 = load i16, ptr %vddci349.i, align 2
  %call.i1201.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %554 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %554)
  %555 = load i16, ptr %vddc196.i, align 2
  %conv.i1202.i = zext i16 %555 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %555)
  %cmp.i1203.i = icmp eq i16 %555, 0
  br i1 %cmp.i1203.i, label %btc_apply_voltage_delta_rules.exit.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge, label %lor.lhs.false.i1206.i

btc_apply_voltage_delta_rules.exit.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge: ; preds = %btc_apply_voltage_delta_rules.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1251.i

lor.lhs.false.i1206.i:                            ; preds = %btc_apply_voltage_delta_rules.exit.i
  %556 = ptrtoint ptr %vddci383.i to i32
  call void @__asan_load2_noabort(i32 %556)
  %557 = load i16, ptr %vddci383.i, align 2
  %conv2.i1204.i = zext i16 %557 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %557)
  %cmp3.i1205.i = icmp eq i16 %557, 0
  br i1 %cmp3.i1205.i, label %lor.lhs.false.i1206.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge, label %if.end.i1208.i

lor.lhs.false.i1206.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge: ; preds = %lor.lhs.false.i1206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1251.i

if.end.i1208.i:                                   ; preds = %lor.lhs.false.i1206.i
  call void @__sanitizer_cov_trace_cmp2(i16 %555, i16 %557)
  %cmp7.i1207.i = icmp ugt i16 %555, %557
  br i1 %cmp7.i1207.i, label %if.then9.i1213.i, label %if.else.i1234.i

if.then9.i1213.i:                                 ; preds = %if.end.i1208.i
  %sub.i1209.i = sub nsw i32 %conv.i1202.i, %conv2.i1204.i
  %vddc_vddci_delta.i1210.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %558 = ptrtoint ptr %vddc_vddci_delta.i1210.i to i32
  call void @__asan_load2_noabort(i32 %558)
  %559 = load i16, ptr %vddc_vddci_delta.i1210.i, align 4
  %conv12.i1211.i = zext i16 %559 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1209.i, i32 %conv12.i1211.i)
  %cmp13.i1212.i = icmp sgt i32 %sub.i1209.i, %conv12.i1211.i
  br i1 %cmp13.i1212.i, label %if.then15.i1217.i, label %if.then9.i1213.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge

if.then9.i1213.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge: ; preds = %if.then9.i1213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1251.i

if.then15.i1217.i:                                ; preds = %if.then9.i1213.i
  %vddci_voltage_table.i1214.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i1201.i, i32 0, i32 20
  %sub22.i1215.i = sub i16 %555, %559
  %560 = ptrtoint ptr %vddci_voltage_table.i1214.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %vddci_voltage_table.i1214.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %cmp20.not.i.i1216.i = icmp eq i32 %561, 0
  br i1 %cmp20.not.i.i1216.i, label %if.then15.i1217.i.for.end.i.i1227.i_crit_edge, label %if.then15.i1217.i.for.body.i.i1224.i_crit_edge

if.then15.i1217.i.for.body.i.i1224.i_crit_edge:   ; preds = %if.then15.i1217.i
  br label %for.body.i.i1224.i

if.then15.i1217.i.for.end.i.i1227.i_crit_edge:    ; preds = %if.then15.i1217.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i1227.i

for.cond.i.i1220.i:                               ; preds = %for.body.i.i1224.i
  %inc.i.i1218.i = add nuw i32 %i.021.i.i1221.i, 1
  %exitcond.not.i.i1219.i = icmp eq i32 %inc.i.i1218.i, %561
  br i1 %exitcond.not.i.i1219.i, label %for.cond.i.i1220.i.for.end.i.i1227.i_crit_edge, label %for.cond.i.i1220.i.for.body.i.i1224.i_crit_edge

for.cond.i.i1220.i.for.body.i.i1224.i_crit_edge:  ; preds = %for.cond.i.i1220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1224.i

for.cond.i.i1220.i.for.end.i.i1227.i_crit_edge:   ; preds = %for.cond.i.i1220.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i1227.i

for.body.i.i1224.i:                               ; preds = %for.cond.i.i1220.i.for.body.i.i1224.i_crit_edge, %if.then15.i1217.i.for.body.i.i1224.i_crit_edge
  %i.021.i.i1221.i = phi i32 [ %inc.i.i1218.i, %for.cond.i.i1220.i.for.body.i.i1224.i_crit_edge ], [ 0, %if.then15.i1217.i.for.body.i.i1224.i_crit_edge ]
  %arrayidx.i.i1222.i = getelementptr %struct.evergreen_power_info, ptr %call.i1201.i, i32 0, i32 20, i32 3, i32 %i.021.i.i1221.i
  %562 = ptrtoint ptr %arrayidx.i.i1222.i to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %arrayidx.i.i1222.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %563, i16 %sub22.i1215.i)
  %cmp2.not.i.i1223.i = icmp ult i16 %563, %sub22.i1215.i
  br i1 %cmp2.not.i.i1223.i, label %for.cond.i.i1220.i, label %for.body.i.i1224.i.btc_find_voltage.exit.i1229.i_crit_edge

for.body.i.i1224.i.btc_find_voltage.exit.i1229.i_crit_edge: ; preds = %for.body.i.i1224.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit.i1229.i

for.end.i.i1227.i:                                ; preds = %for.cond.i.i1220.i.for.end.i.i1227.i_crit_edge, %if.then15.i1217.i.for.end.i.i1227.i_crit_edge
  %sub.i.i1225.i = add i32 %561, -1
  %arrayidx9.i.i1226.i = getelementptr %struct.evergreen_power_info, ptr %call.i1201.i, i32 0, i32 20, i32 3, i32 %sub.i.i1225.i
  %564 = ptrtoint ptr %arrayidx9.i.i1226.i to i32
  call void @__asan_load2_noabort(i32 %564)
  %565 = load i16, ptr %arrayidx9.i.i1226.i, align 4
  br label %btc_find_voltage.exit.i1229.i

btc_find_voltage.exit.i1229.i:                    ; preds = %for.end.i.i1227.i, %for.body.i.i1224.i.btc_find_voltage.exit.i1229.i_crit_edge
  %retval.0.i.i1228.i = phi i16 [ %565, %for.end.i.i1227.i ], [ %563, %for.body.i.i1224.i.btc_find_voltage.exit.i1229.i_crit_edge ]
  %566 = call i16 @llvm.umin.i16(i16 %retval.0.i.i1228.i, i16 %553) #7
  %567 = ptrtoint ptr %vddci383.i to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %566, ptr %vddci383.i, align 2
  br label %btc_apply_voltage_delta_rules.exit1251.i

if.else.i1234.i:                                  ; preds = %if.end.i1208.i
  %sub35.i1230.i = sub nsw i32 %conv2.i1204.i, %conv.i1202.i
  %vddc_vddci_delta39.i1231.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %568 = ptrtoint ptr %vddc_vddci_delta39.i1231.i to i32
  call void @__asan_load2_noabort(i32 %568)
  %569 = load i16, ptr %vddc_vddci_delta39.i1231.i, align 4
  %conv40.i1232.i = zext i16 %569 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i1230.i, i32 %conv40.i1232.i)
  %cmp41.i1233.i = icmp sgt i32 %sub35.i1230.i, %conv40.i1232.i
  br i1 %cmp41.i1233.i, label %if.then43.i1238.i, label %if.else.i1234.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge

if.else.i1234.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge: ; preds = %if.else.i1234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1251.i

if.then43.i1238.i:                                ; preds = %if.else.i1234.i
  %vddc_voltage_table.i1235.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i1201.i, i32 0, i32 19
  %sub50.i1236.i = sub i16 %557, %569
  %570 = ptrtoint ptr %vddc_voltage_table.i1235.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %vddc_voltage_table.i1235.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %cmp20.not.i87.i1237.i = icmp eq i32 %571, 0
  br i1 %cmp20.not.i87.i1237.i, label %if.then43.i1238.i.for.end.i97.i1248.i_crit_edge, label %if.then43.i1238.i.for.body.i94.i1245.i_crit_edge

if.then43.i1238.i.for.body.i94.i1245.i_crit_edge: ; preds = %if.then43.i1238.i
  br label %for.body.i94.i1245.i

if.then43.i1238.i.for.end.i97.i1248.i_crit_edge:  ; preds = %if.then43.i1238.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97.i1248.i

for.cond.i90.i1241.i:                             ; preds = %for.body.i94.i1245.i
  %inc.i88.i1239.i = add nuw i32 %i.021.i91.i1242.i, 1
  %exitcond.not.i89.i1240.i = icmp eq i32 %inc.i88.i1239.i, %571
  br i1 %exitcond.not.i89.i1240.i, label %for.cond.i90.i1241.i.for.end.i97.i1248.i_crit_edge, label %for.cond.i90.i1241.i.for.body.i94.i1245.i_crit_edge

for.cond.i90.i1241.i.for.body.i94.i1245.i_crit_edge: ; preds = %for.cond.i90.i1241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i94.i1245.i

for.cond.i90.i1241.i.for.end.i97.i1248.i_crit_edge: ; preds = %for.cond.i90.i1241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97.i1248.i

for.body.i94.i1245.i:                             ; preds = %for.cond.i90.i1241.i.for.body.i94.i1245.i_crit_edge, %if.then43.i1238.i.for.body.i94.i1245.i_crit_edge
  %i.021.i91.i1242.i = phi i32 [ %inc.i88.i1239.i, %for.cond.i90.i1241.i.for.body.i94.i1245.i_crit_edge ], [ 0, %if.then43.i1238.i.for.body.i94.i1245.i_crit_edge ]
  %arrayidx.i92.i1243.i = getelementptr %struct.evergreen_power_info, ptr %call.i1201.i, i32 0, i32 19, i32 3, i32 %i.021.i91.i1242.i
  %572 = ptrtoint ptr %arrayidx.i92.i1243.i to i32
  call void @__asan_load2_noabort(i32 %572)
  %573 = load i16, ptr %arrayidx.i92.i1243.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %573, i16 %sub50.i1236.i)
  %cmp2.not.i93.i1244.i = icmp ult i16 %573, %sub50.i1236.i
  br i1 %cmp2.not.i93.i1244.i, label %for.cond.i90.i1241.i, label %for.body.i94.i1245.i.btc_find_voltage.exit99.i1250.i_crit_edge

for.body.i94.i1245.i.btc_find_voltage.exit99.i1250.i_crit_edge: ; preds = %for.body.i94.i1245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit99.i1250.i

for.end.i97.i1248.i:                              ; preds = %for.cond.i90.i1241.i.for.end.i97.i1248.i_crit_edge, %if.then43.i1238.i.for.end.i97.i1248.i_crit_edge
  %sub.i95.i1246.i = add i32 %571, -1
  %arrayidx9.i96.i1247.i = getelementptr %struct.evergreen_power_info, ptr %call.i1201.i, i32 0, i32 19, i32 3, i32 %sub.i95.i1246.i
  %574 = ptrtoint ptr %arrayidx9.i96.i1247.i to i32
  call void @__asan_load2_noabort(i32 %574)
  %575 = load i16, ptr %arrayidx9.i96.i1247.i, align 4
  br label %btc_find_voltage.exit99.i1250.i

btc_find_voltage.exit99.i1250.i:                  ; preds = %for.end.i97.i1248.i, %for.body.i94.i1245.i.btc_find_voltage.exit99.i1250.i_crit_edge
  %retval.0.i98.i1249.i = phi i16 [ %575, %for.end.i97.i1248.i ], [ %573, %for.body.i94.i1245.i.btc_find_voltage.exit99.i1250.i_crit_edge ]
  %576 = call i16 @llvm.umin.i16(i16 %retval.0.i98.i1249.i, i16 %551) #7
  %577 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 %576, ptr %vddc196.i, align 2
  br label %btc_apply_voltage_delta_rules.exit1251.i

btc_apply_voltage_delta_rules.exit1251.i:         ; preds = %btc_find_voltage.exit99.i1250.i, %if.else.i1234.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge, %btc_find_voltage.exit.i1229.i, %if.then9.i1213.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge, %lor.lhs.false.i1206.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge, %btc_apply_voltage_delta_rules.exit.i.btc_apply_voltage_delta_rules.exit1251.i_crit_edge
  %578 = ptrtoint ptr %vddc341.i to i32
  call void @__asan_load2_noabort(i32 %578)
  %579 = load i16, ptr %vddc341.i, align 4
  %580 = ptrtoint ptr %vddci349.i to i32
  call void @__asan_load2_noabort(i32 %580)
  %581 = load i16, ptr %vddci349.i, align 2
  %call.i1252.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %582 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %vddc222.i, align 2
  %conv.i1253.i = zext i16 %583 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %583)
  %cmp.i1254.i = icmp eq i16 %583, 0
  br i1 %cmp.i1254.i, label %btc_apply_voltage_delta_rules.exit1251.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge, label %lor.lhs.false.i1257.i

btc_apply_voltage_delta_rules.exit1251.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge: ; preds = %btc_apply_voltage_delta_rules.exit1251.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1302.i

lor.lhs.false.i1257.i:                            ; preds = %btc_apply_voltage_delta_rules.exit1251.i
  %584 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %vddci158.i, align 2
  %conv2.i1255.i = zext i16 %585 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %585)
  %cmp3.i1256.i = icmp eq i16 %585, 0
  br i1 %cmp3.i1256.i, label %lor.lhs.false.i1257.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge, label %if.end.i1259.i

lor.lhs.false.i1257.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge: ; preds = %lor.lhs.false.i1257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1302.i

if.end.i1259.i:                                   ; preds = %lor.lhs.false.i1257.i
  call void @__sanitizer_cov_trace_cmp2(i16 %583, i16 %585)
  %cmp7.i1258.i = icmp ugt i16 %583, %585
  br i1 %cmp7.i1258.i, label %if.then9.i1264.i, label %if.else.i1285.i

if.then9.i1264.i:                                 ; preds = %if.end.i1259.i
  %sub.i1260.i = sub nsw i32 %conv.i1253.i, %conv2.i1255.i
  %vddc_vddci_delta.i1261.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %586 = ptrtoint ptr %vddc_vddci_delta.i1261.i to i32
  call void @__asan_load2_noabort(i32 %586)
  %587 = load i16, ptr %vddc_vddci_delta.i1261.i, align 4
  %conv12.i1262.i = zext i16 %587 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i1260.i, i32 %conv12.i1262.i)
  %cmp13.i1263.i = icmp sgt i32 %sub.i1260.i, %conv12.i1262.i
  br i1 %cmp13.i1263.i, label %if.then15.i1268.i, label %if.then9.i1264.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge

if.then9.i1264.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge: ; preds = %if.then9.i1264.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1302.i

if.then15.i1268.i:                                ; preds = %if.then9.i1264.i
  %vddci_voltage_table.i1265.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i1252.i, i32 0, i32 20
  %sub22.i1266.i = sub i16 %583, %587
  %588 = ptrtoint ptr %vddci_voltage_table.i1265.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %vddci_voltage_table.i1265.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %589)
  %cmp20.not.i.i1267.i = icmp eq i32 %589, 0
  br i1 %cmp20.not.i.i1267.i, label %if.then15.i1268.i.for.end.i.i1278.i_crit_edge, label %if.then15.i1268.i.for.body.i.i1275.i_crit_edge

if.then15.i1268.i.for.body.i.i1275.i_crit_edge:   ; preds = %if.then15.i1268.i
  br label %for.body.i.i1275.i

if.then15.i1268.i.for.end.i.i1278.i_crit_edge:    ; preds = %if.then15.i1268.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i1278.i

for.cond.i.i1271.i:                               ; preds = %for.body.i.i1275.i
  %inc.i.i1269.i = add nuw i32 %i.021.i.i1272.i, 1
  %exitcond.not.i.i1270.i = icmp eq i32 %inc.i.i1269.i, %589
  br i1 %exitcond.not.i.i1270.i, label %for.cond.i.i1271.i.for.end.i.i1278.i_crit_edge, label %for.cond.i.i1271.i.for.body.i.i1275.i_crit_edge

for.cond.i.i1271.i.for.body.i.i1275.i_crit_edge:  ; preds = %for.cond.i.i1271.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i1275.i

for.cond.i.i1271.i.for.end.i.i1278.i_crit_edge:   ; preds = %for.cond.i.i1271.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i1278.i

for.body.i.i1275.i:                               ; preds = %for.cond.i.i1271.i.for.body.i.i1275.i_crit_edge, %if.then15.i1268.i.for.body.i.i1275.i_crit_edge
  %i.021.i.i1272.i = phi i32 [ %inc.i.i1269.i, %for.cond.i.i1271.i.for.body.i.i1275.i_crit_edge ], [ 0, %if.then15.i1268.i.for.body.i.i1275.i_crit_edge ]
  %arrayidx.i.i1273.i = getelementptr %struct.evergreen_power_info, ptr %call.i1252.i, i32 0, i32 20, i32 3, i32 %i.021.i.i1272.i
  %590 = ptrtoint ptr %arrayidx.i.i1273.i to i32
  call void @__asan_load2_noabort(i32 %590)
  %591 = load i16, ptr %arrayidx.i.i1273.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %591, i16 %sub22.i1266.i)
  %cmp2.not.i.i1274.i = icmp ult i16 %591, %sub22.i1266.i
  br i1 %cmp2.not.i.i1274.i, label %for.cond.i.i1271.i, label %for.body.i.i1275.i.btc_find_voltage.exit.i1280.i_crit_edge

for.body.i.i1275.i.btc_find_voltage.exit.i1280.i_crit_edge: ; preds = %for.body.i.i1275.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit.i1280.i

for.end.i.i1278.i:                                ; preds = %for.cond.i.i1271.i.for.end.i.i1278.i_crit_edge, %if.then15.i1268.i.for.end.i.i1278.i_crit_edge
  %sub.i.i1276.i = add i32 %589, -1
  %arrayidx9.i.i1277.i = getelementptr %struct.evergreen_power_info, ptr %call.i1252.i, i32 0, i32 20, i32 3, i32 %sub.i.i1276.i
  %592 = ptrtoint ptr %arrayidx9.i.i1277.i to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %arrayidx9.i.i1277.i, align 4
  br label %btc_find_voltage.exit.i1280.i

btc_find_voltage.exit.i1280.i:                    ; preds = %for.end.i.i1278.i, %for.body.i.i1275.i.btc_find_voltage.exit.i1280.i_crit_edge
  %retval.0.i.i1279.i = phi i16 [ %593, %for.end.i.i1278.i ], [ %591, %for.body.i.i1275.i.btc_find_voltage.exit.i1280.i_crit_edge ]
  %594 = call i16 @llvm.umin.i16(i16 %retval.0.i.i1279.i, i16 %581) #7
  %595 = ptrtoint ptr %vddci158.i to i32
  call void @__asan_store2_noabort(i32 %595)
  store i16 %594, ptr %vddci158.i, align 2
  br label %btc_apply_voltage_delta_rules.exit1302.i

if.else.i1285.i:                                  ; preds = %if.end.i1259.i
  %sub35.i1281.i = sub nsw i32 %conv2.i1255.i, %conv.i1253.i
  %vddc_vddci_delta39.i1282.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %596 = ptrtoint ptr %vddc_vddci_delta39.i1282.i to i32
  call void @__asan_load2_noabort(i32 %596)
  %597 = load i16, ptr %vddc_vddci_delta39.i1282.i, align 4
  %conv40.i1283.i = zext i16 %597 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35.i1281.i, i32 %conv40.i1283.i)
  %cmp41.i1284.i = icmp sgt i32 %sub35.i1281.i, %conv40.i1283.i
  br i1 %cmp41.i1284.i, label %if.then43.i1289.i, label %if.else.i1285.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge

if.else.i1285.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge: ; preds = %if.else.i1285.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_voltage_delta_rules.exit1302.i

if.then43.i1289.i:                                ; preds = %if.else.i1285.i
  %vddc_voltage_table.i1286.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i1252.i, i32 0, i32 19
  %sub50.i1287.i = sub i16 %585, %597
  %598 = ptrtoint ptr %vddc_voltage_table.i1286.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %vddc_voltage_table.i1286.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %599)
  %cmp20.not.i87.i1288.i = icmp eq i32 %599, 0
  br i1 %cmp20.not.i87.i1288.i, label %if.then43.i1289.i.for.end.i97.i1299.i_crit_edge, label %if.then43.i1289.i.for.body.i94.i1296.i_crit_edge

if.then43.i1289.i.for.body.i94.i1296.i_crit_edge: ; preds = %if.then43.i1289.i
  br label %for.body.i94.i1296.i

if.then43.i1289.i.for.end.i97.i1299.i_crit_edge:  ; preds = %if.then43.i1289.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97.i1299.i

for.cond.i90.i1292.i:                             ; preds = %for.body.i94.i1296.i
  %inc.i88.i1290.i = add nuw i32 %i.021.i91.i1293.i, 1
  %exitcond.not.i89.i1291.i = icmp eq i32 %inc.i88.i1290.i, %599
  br i1 %exitcond.not.i89.i1291.i, label %for.cond.i90.i1292.i.for.end.i97.i1299.i_crit_edge, label %for.cond.i90.i1292.i.for.body.i94.i1296.i_crit_edge

for.cond.i90.i1292.i.for.body.i94.i1296.i_crit_edge: ; preds = %for.cond.i90.i1292.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i94.i1296.i

for.cond.i90.i1292.i.for.end.i97.i1299.i_crit_edge: ; preds = %for.cond.i90.i1292.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i97.i1299.i

for.body.i94.i1296.i:                             ; preds = %for.cond.i90.i1292.i.for.body.i94.i1296.i_crit_edge, %if.then43.i1289.i.for.body.i94.i1296.i_crit_edge
  %i.021.i91.i1293.i = phi i32 [ %inc.i88.i1290.i, %for.cond.i90.i1292.i.for.body.i94.i1296.i_crit_edge ], [ 0, %if.then43.i1289.i.for.body.i94.i1296.i_crit_edge ]
  %arrayidx.i92.i1294.i = getelementptr %struct.evergreen_power_info, ptr %call.i1252.i, i32 0, i32 19, i32 3, i32 %i.021.i91.i1293.i
  %600 = ptrtoint ptr %arrayidx.i92.i1294.i to i32
  call void @__asan_load2_noabort(i32 %600)
  %601 = load i16, ptr %arrayidx.i92.i1294.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %601, i16 %sub50.i1287.i)
  %cmp2.not.i93.i1295.i = icmp ult i16 %601, %sub50.i1287.i
  br i1 %cmp2.not.i93.i1295.i, label %for.cond.i90.i1292.i, label %for.body.i94.i1296.i.btc_find_voltage.exit99.i1301.i_crit_edge

for.body.i94.i1296.i.btc_find_voltage.exit99.i1301.i_crit_edge: ; preds = %for.body.i94.i1296.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_find_voltage.exit99.i1301.i

for.end.i97.i1299.i:                              ; preds = %for.cond.i90.i1292.i.for.end.i97.i1299.i_crit_edge, %if.then43.i1289.i.for.end.i97.i1299.i_crit_edge
  %sub.i95.i1297.i = add i32 %599, -1
  %arrayidx9.i96.i1298.i = getelementptr %struct.evergreen_power_info, ptr %call.i1252.i, i32 0, i32 19, i32 3, i32 %sub.i95.i1297.i
  %602 = ptrtoint ptr %arrayidx9.i96.i1298.i to i32
  call void @__asan_load2_noabort(i32 %602)
  %603 = load i16, ptr %arrayidx9.i96.i1298.i, align 4
  br label %btc_find_voltage.exit99.i1301.i

btc_find_voltage.exit99.i1301.i:                  ; preds = %for.end.i97.i1299.i, %for.body.i94.i1296.i.btc_find_voltage.exit99.i1301.i_crit_edge
  %retval.0.i98.i1300.i = phi i16 [ %603, %for.end.i97.i1299.i ], [ %601, %for.body.i94.i1296.i.btc_find_voltage.exit99.i1301.i_crit_edge ]
  %604 = call i16 @llvm.umin.i16(i16 %retval.0.i98.i1300.i, i16 %579) #7
  %605 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_store2_noabort(i32 %605)
  store i16 %604, ptr %vddc222.i, align 2
  br label %btc_apply_voltage_delta_rules.exit1302.i

btc_apply_voltage_delta_rules.exit1302.i:         ; preds = %btc_find_voltage.exit99.i1301.i, %if.else.i1285.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge, %btc_find_voltage.exit.i1280.i, %if.then9.i1264.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge, %lor.lhs.false.i1257.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge, %btc_apply_voltage_delta_rules.exit1251.i.btc_apply_voltage_delta_rules.exit1302.i_crit_edge
  %606 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %606)
  %607 = load i16, ptr %vddc222.i, align 4
  %vddc463.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 2
  %608 = ptrtoint ptr %vddc463.i to i32
  call void @__asan_load2_noabort(i32 %608)
  %609 = load i16, ptr %vddc463.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %607, i16 %609)
  %cmp465.not.i = icmp ugt i16 %607, %609
  br i1 %cmp465.not.i, label %btc_apply_voltage_delta_rules.exit1302.i.if.else491.i_crit_edge, label %land.lhs.true.i

btc_apply_voltage_delta_rules.exit1302.i.if.else491.i_crit_edge: ; preds = %btc_apply_voltage_delta_rules.exit1302.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else491.i

land.lhs.true.i:                                  ; preds = %btc_apply_voltage_delta_rules.exit1302.i
  %610 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %610)
  %611 = load i16, ptr %vddc196.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %611, i16 %609)
  %cmp476.not.i = icmp ugt i16 %611, %609
  br i1 %cmp476.not.i, label %land.lhs.true.i.if.else491.i_crit_edge, label %land.lhs.true478.i

land.lhs.true.i.if.else491.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else491.i

land.lhs.true478.i:                               ; preds = %land.lhs.true.i
  %612 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %612)
  %613 = load i16, ptr %vddc.0.in.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %613, i16 %609)
  %cmp488.not.i = icmp ugt i16 %613, %609
  br i1 %cmp488.not.i, label %land.lhs.true478.i.if.else491.i_crit_edge, label %land.lhs.true478.i.if.end493.i_crit_edge

land.lhs.true478.i.if.end493.i_crit_edge:         ; preds = %land.lhs.true478.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end493.i

land.lhs.true478.i.if.else491.i_crit_edge:        ; preds = %land.lhs.true478.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else491.i

if.else491.i:                                     ; preds = %land.lhs.true478.i.if.else491.i_crit_edge, %land.lhs.true.i.if.else491.i_crit_edge, %btc_apply_voltage_delta_rules.exit1302.i.if.else491.i_crit_edge
  br label %if.end493.i

if.end493.i:                                      ; preds = %if.else491.i, %land.lhs.true478.i.if.end493.i_crit_edge
  %.sink1426.i = phi i8 [ 0, %if.else491.i ], [ 1, %land.lhs.true478.i.if.end493.i_crit_edge ]
  %dc_compatible492.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 3
  %614 = ptrtoint ptr %dc_compatible492.i to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 %.sink1426.i, ptr %dc_compatible492.i, align 4
  %615 = ptrtoint ptr %vddc.0.in.i to i32
  call void @__asan_load2_noabort(i32 %615)
  %616 = load i16, ptr %vddc.0.in.i, align 4
  %min_vddc_for_pcie_gen2.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 16
  %617 = ptrtoint ptr %min_vddc_for_pcie_gen2.i to i32
  call void @__asan_load2_noabort(i32 %617)
  %618 = load i16, ptr %min_vddc_for_pcie_gen2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %616, i16 %618)
  %cmp501.i = icmp ult i16 %616, %618
  br i1 %cmp501.i, label %if.then503.i, label %if.end493.i.if.end505.i_crit_edge

if.end493.i.if.end505.i_crit_edge:                ; preds = %if.end493.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end505.i

if.then503.i:                                     ; preds = %if.end493.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 2, i32 4
  %619 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %620, -2
  store i32 %and.i, ptr %flags.i, align 4
  br label %if.end505.i

if.end505.i:                                      ; preds = %if.then503.i, %if.end493.i.if.end505.i_crit_edge
  %621 = ptrtoint ptr %vddc196.i to i32
  call void @__asan_load2_noabort(i32 %621)
  %622 = load i16, ptr %vddc196.i, align 4
  %623 = ptrtoint ptr %min_vddc_for_pcie_gen2.i to i32
  call void @__asan_load2_noabort(i32 %623)
  %624 = load i16, ptr %min_vddc_for_pcie_gen2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %622, i16 %624)
  %cmp514.i = icmp ult i16 %622, %624
  br i1 %cmp514.i, label %if.then516.i, label %if.end505.i.if.end520.i_crit_edge

if.end505.i.if.end520.i_crit_edge:                ; preds = %if.end505.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end520.i

if.then516.i:                                     ; preds = %if.end505.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags518.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i5, i32 0, i32 1, i32 4
  %625 = ptrtoint ptr %flags518.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %flags518.i, align 4
  %and519.i = and i32 %626, -2
  store i32 %and519.i, ptr %flags518.i, align 4
  br label %if.end520.i

if.end520.i:                                      ; preds = %if.then516.i, %if.end505.i.if.end520.i_crit_edge
  %627 = ptrtoint ptr %vddc222.i to i32
  call void @__asan_load2_noabort(i32 %627)
  %628 = load i16, ptr %vddc222.i, align 4
  %629 = ptrtoint ptr %min_vddc_for_pcie_gen2.i to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %min_vddc_for_pcie_gen2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %628, i16 %630)
  %cmp529.i = icmp ult i16 %628, %630
  br i1 %cmp529.i, label %if.then531.i, label %if.end520.i.btc_apply_state_adjust_rules.exit_crit_edge

if.end520.i.btc_apply_state_adjust_rules.exit_crit_edge: ; preds = %if.end520.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_apply_state_adjust_rules.exit

if.then531.i:                                     ; preds = %if.end520.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags533.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i5, i32 0, i32 4
  %631 = ptrtoint ptr %flags533.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load i32, ptr %flags533.i, align 4
  %and534.i = and i32 %632, -2
  store i32 %and534.i, ptr %flags533.i, align 4
  br label %btc_apply_state_adjust_rules.exit

btc_apply_state_adjust_rules.exit:                ; preds = %if.then531.i, %if.end520.i.btc_apply_state_adjust_rules.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %requested_ps) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %ulv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 22
  %0 = ptrtoint ptr %ulv.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ulv.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.btc_disable_ulv.exit_crit_edge, label %if.then.i

entry.btc_disable_ulv.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_disable_ulv.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 99) #7
  br label %btc_disable_ulv.exit

btc_disable_ulv.exit:                             ; preds = %if.then.i, %entry.btc_disable_ulv.exit_crit_edge
  %call.i89 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %ulv.i90 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i89, i32 0, i32 22
  %2 = ptrtoint ptr %ulv.i90 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ulv.i90, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i91 = icmp eq i8 %3, 0
  br i1 %tobool.not.i91, label %btc_disable_ulv.exit.btc_set_boot_state_timing.exit_crit_edge, label %if.then.i92

btc_disable_ulv.exit.btc_set_boot_state_timing.exit_crit_edge: ; preds = %btc_disable_ulv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_set_boot_state_timing.exit

if.then.i92:                                      ; preds = %btc_disable_ulv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bootup_arb_registers.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i89, i32 0, i32 21
  %4 = ptrtoint ptr %bootup_arb_registers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bootup_arb_registers.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 10100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %6) #7, !srcloc !104
  %mc_arb_dram_timing2.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i89, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %mc_arb_dram_timing2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mc_arb_dram_timing2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %13, i32 10104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 %11) #7, !srcloc !104
  %mc_arb_rfsh_rate.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i89, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %mc_arb_rfsh_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mc_arb_rfsh_rate.i.i, align 4
  %and.i.i = and i32 %15, 255
  %16 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %17, i32 10160
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %19 = and i32 %18, 16777215
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %or.i.i = or i32 %20, %and.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %22 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i38.i.i = getelementptr i8, ptr %23, i32 10160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i.i, i32 %21) #7, !srcloc !104
  %mc_arb_burst_time.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i89, i32 0, i32 21, i32 3
  %24 = ptrtoint ptr %mc_arb_burst_time.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mc_arb_burst_time.i.i, align 4
  %and3.i.i = and i32 %25, 31
  %26 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i42.i.i = getelementptr i8, ptr %27, i32 10248
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %29 = and i32 %28, -520093697
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %or11.i.i = or i32 %30, %and3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #7
  %32 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i46.i.i = getelementptr i8, ptr %33, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i.i, i32 %31) #7, !srcloc !104
  br label %btc_set_boot_state_timing.exit

btc_set_boot_state_timing.exit:                   ; preds = %if.then.i92, %btc_disable_ulv.exit.btc_set_boot_state_timing.exit_crit_edge
  %call2 = tail call i32 @rv770_restrict_performance_levels_before_switch(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %btc_set_boot_state_timing.exit.cleanup.sink.split_crit_edge

btc_set_boot_state_timing.exit.cleanup.sink.split_crit_edge: ; preds = %btc_set_boot_state_timing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %btc_set_boot_state_timing.exit
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 7
  %34 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pcie_performance_request, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool3.not = icmp eq i8 %35, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cypress_notify_link_speed_change_before_state_change(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @rv770_set_uvd_clock_before_set_eng_clock(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps) #7
  %call6 = tail call i32 @rv770_halt_smc(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %call.i93 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %call1.i94 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %class.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 1
  %36 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %class.i, align 4
  %class2.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27, i32 2
  %38 = ptrtoint ptr %class2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %class2.i, align 4
  %call2.i = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %37, i32 noundef %39) #7
  %spec.select.i = zext i1 %call2.i to i32
  br i1 %call2.i, label %land.lhs.true.i, label %if.end9.if.else.i_crit_edge

if.end9.if.else.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end9
  %smu_uvd_hs.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i94, i32 0, i32 12
  %40 = ptrtoint ptr %smu_uvd_hs.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %smu_uvd_hs.i, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i95 = icmp eq i8 %41, 0
  br i1 %tobool.not.i95, label %if.then3.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %rlp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 53
  %42 = ptrtoint ptr %rlp.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 10, ptr %rlp.i, align 4
  %rmp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 54
  %43 = ptrtoint ptr %rmp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 100, ptr %rmp.i, align 4
  %lhp.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 55
  %44 = ptrtoint ptr %lhp.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 100, ptr %lhp.i, align 4
  br label %btc_set_at_for_uvd.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end9.if.else.i_crit_edge
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call1.i94, i32 0, i32 23, i32 %spec.select.i
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  %rlp5.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 53
  %47 = ptrtoint ptr %rlp5.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rlp5.i, align 4
  %rmp8.i = getelementptr %struct.evergreen_power_info, ptr %call1.i94, i32 0, i32 23, i32 %spec.select.i, i32 1
  %48 = ptrtoint ptr %rmp8.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rmp8.i, align 4
  %rmp9.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 54
  %50 = ptrtoint ptr %rmp9.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rmp9.i, align 4
  %lhp12.i = getelementptr %struct.evergreen_power_info, ptr %call1.i94, i32 0, i32 23, i32 %spec.select.i, i32 2
  %51 = ptrtoint ptr %lhp12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lhp12.i, align 4
  %lhp13.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 55
  %53 = ptrtoint ptr %lhp13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %lhp13.i, align 4
  %lmp16.i = getelementptr %struct.evergreen_power_info, ptr %call1.i94, i32 0, i32 23, i32 %spec.select.i, i32 3
  %54 = ptrtoint ptr %lmp16.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %lmp16.i, align 4
  br label %btc_set_at_for_uvd.exit

btc_set_at_for_uvd.exit:                          ; preds = %if.else.i, %if.then3.i
  %.sink.i = phi i32 [ %55, %if.else.i ], [ 10, %if.then3.i ]
  %lmp17.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i93, i32 0, i32 56
  %56 = ptrtoint ptr %lmp17.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink.i, ptr %lmp17.i, align 4
  %smu_uvd_hs = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 12
  %57 = ptrtoint ptr %smu_uvd_hs to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %smu_uvd_hs, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool10.not = icmp eq i8 %58, 0
  br i1 %tobool10.not, label %btc_set_at_for_uvd.exit.if.end12_crit_edge, label %if.then11

btc_set_at_for_uvd.exit.if.end12_crit_edge:       ; preds = %btc_set_at_for_uvd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %btc_set_at_for_uvd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i96 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %59 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %class.i, align 4
  %61 = ptrtoint ptr %class2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %class2.i, align 4
  %call1.i99 = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %60, i32 noundef %62) #7
  %..i = zext i1 %call1.i99 to i32
  %.10.i = zext i1 %call1.i99 to i8
  %call3.i = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 156, i32 noundef %..i) #7
  %63 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i96, i32 0, i32 13
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %.10.i, ptr %63, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %btc_set_at_for_uvd.exit.if.end12_crit_edge
  %call13 = tail call i32 @cypress_upload_sw_state(ptr noundef %rdev, ptr noundef %requested_rps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end12
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 2
  %65 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dynamic_ac_timing, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool17.not = icmp eq i8 %66, 0
  br i1 %tobool17.not, label %if.end16.if.end23_crit_edge, label %if.then18

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @cypress_upload_mc_reg_table(ptr noundef %rdev, ptr noundef %requested_rps) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end23_crit_edge, label %if.then18.cleanup.sink.split_crit_edge

if.then18.cleanup.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23:                                         ; preds = %if.then18.if.end23_crit_edge, %if.end16.if.end23_crit_edge
  tail call void @cypress_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %requested_rps) #7
  %call24 = tail call i32 @rv770_resume_smc(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup.sink.split_crit_edge

if.end23.cleanup.sink.split_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @rv770_set_sw_state(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end27
  tail call void @rv770_set_uvd_clock_after_set_eng_clock(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps) #7
  %67 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pcie_performance_request, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool33.not = icmp eq i8 %68, 0
  br i1 %tobool33.not, label %if.end31.if.end35_crit_edge, label %if.then34

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cypress_notify_link_speed_change_after_state_change(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end31.if.end35_crit_edge
  %call36 = tail call fastcc i32 @btc_set_power_state_conditionally_enable_ulv(ptr noundef %rdev, ptr noundef %requested_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %if.end35.cleanup.sink.split_crit_edge

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %if.end23.cleanup.sink.split_crit_edge, %if.then18.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %btc_set_boot_state_timing.exit.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %btc_set_boot_state_timing.exit.cleanup.sink.split_crit_edge ], [ @.str.1, %if.end5.cleanup.sink.split_crit_edge ], [ @.str.2, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.3, %if.then18.cleanup.sink.split_crit_edge ], [ @.str.4, %if.end23.cleanup.sink.split_crit_edge ], [ @.str.5, %if.end27.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end35.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call2, %btc_set_boot_state_timing.exit.cleanup.sink.split_crit_edge ], [ %call6, %if.end5.cleanup.sink.split_crit_edge ], [ %call13, %if.end12.cleanup.sink.split_crit_edge ], [ %call19, %if.then18.cleanup.sink.split_crit_edge ], [ %call24, %if.end23.cleanup.sink.split_crit_edge ], [ %call28, %if.end27.cleanup.sink.split_crit_edge ], [ %call36, %if.end35.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.6.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_restrict_performance_levels_before_switch(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_notify_link_speed_change_before_state_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_set_uvd_clock_before_set_eng_clock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_halt_smc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_upload_sw_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_upload_mc_reg_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_program_memory_timing_parameters(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_resume_smc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_set_sw_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_set_uvd_clock_after_set_eng_clock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_notify_link_speed_change_after_state_change(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @btc_set_power_state_conditionally_enable_ulv(ptr noundef %rdev, ptr noundef %radeon_new_state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %ulv = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %ulv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ulv, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @rv770_get_ps(ptr noundef %radeon_new_state) #7
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %pl.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %pl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pl.i, align 4
  %mclk.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk.i, align 4
  %mclk2.i = getelementptr inbounds %struct.rv7xx_pl, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mclk2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp eq i32 %5, %7
  br i1 %cmp.not.i, label %btc_is_state_ulv_compatible.exit, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

btc_is_state_ulv_compatible.exit:                 ; preds = %if.then
  %vddci.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %vddci.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vddci.i, align 2
  %vddci4.i = getelementptr inbounds %struct.rv7xx_pl, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %vddci4.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vddci4.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp6.not.i = icmp eq i16 %9, %11
  br i1 %cmp6.not.i, label %if.then2, label %btc_is_state_ulv_compatible.exit.if.end7_crit_edge

btc_is_state_ulv_compatible.exit.if.end7_crit_edge: ; preds = %btc_is_state_ulv_compatible.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %btc_is_state_ulv_compatible.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i12 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %pl.i13 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i12, i32 0, i32 22, i32 1
  %12 = ptrtoint ptr %pl.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pl.i13, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %mclk.i14 = getelementptr inbounds %struct.rv7xx_pl, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %mclk.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mclk.i14, align 4
  tail call void @radeon_atom_set_engine_dram_timings(ptr noundef %rdev, i32 noundef %15, i32 noundef %17) #7
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 4
  %call2.i = tail call i32 @rv770_calculate_memory_refresh_rate(ptr noundef %rdev, i32 noundef %19) #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 10160
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %23 = and i32 %22, 16777215
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %and4.i = and i32 %call2.i, 255
  %or.i = or i32 %24, %and4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %27, i32 10160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %25) #7, !srcloc !104
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %13, align 4
  %30 = ptrtoint ptr %mclk.i14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mclk.i14, align 4
  %call7.i = tail call i32 @cypress_calculate_burst_time(ptr noundef %rdev, i32 noundef %29, i32 noundef %31) #7
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %33, i32 10248
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %35 = and i32 %34, -520093697
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %and13.i = and i32 %call7.i, 31
  %or14.i = or i32 %36, %and13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #7
  %38 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %39, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %37) #7, !srcloc !104
  %call.i15 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 98) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i15)
  %cmp.not.i16 = icmp eq i8 %call.i15, 1
  %..i = select i1 %cmp.not.i16, i32 0, i32 -22
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %btc_is_state_ulv_compatible.exit.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ %..i, %if.then2 ], [ 0, %btc_is_state_ulv_compatible.exit.if.end7_crit_edge ], [ 0, %entry.if.end7_crit_edge ], [ 0, %if.then.if.end7_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_dpm_post_set_power_state(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %call.i = tail call ptr @rv770_get_ps(ptr noundef %requested_rps) #7
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %current_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25
  %0 = call ptr @memcpy(ptr %current_rps.i, ptr %requested_rps, i32 40)
  %current_ps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 26
  %1 = call ptr @memcpy(ptr %current_ps.i, ptr %call.i, i32 64)
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc_update_current_ps(ptr noundef %rdev, ptr noundef %rps) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %rps) #7
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 25
  %0 = call ptr @memcpy(ptr %current_rps, ptr %rps, i32 40)
  %current_ps = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 26
  %1 = call ptr @memcpy(ptr %current_ps, ptr %call, i32 64)
  %ps_priv = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 25, i32 9
  %2 = ptrtoint ptr %ps_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %current_ps, ptr %ps_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_enable(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %boot_ps2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %0 = ptrtoint ptr %boot_ps2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %boot_ps2, align 4
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gfx_clock_gating, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  %switch.tableidx = add i32 %5, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.btc_dpm_enable, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load, i32 noundef 48) #7
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call zeroext i1 @rv770_is_smc_running(ptr noundef %rdev) #7
  br i1 %call.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mg_clock_gating, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  %family.i161 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %10 = ptrtoint ptr %family.i161 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family.i161, align 4
  %switch.tableidx195 = add i32 %11, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx195)
  %12 = icmp ult i32 %switch.tableidx195, 3
  br i1 %12, label %switch.lookup194, label %if.then7.if.end8_crit_edge

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

switch.lookup194:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep196 = getelementptr inbounds [3 x i32], ptr @switch.table.btc_dpm_enable.17, i32 0, i32 %switch.tableidx195
  %13 = ptrtoint ptr %switch.gep196 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load197 = load i32, ptr %switch.gep196, align 4
  %switch.gep198 = getelementptr inbounds [3 x ptr], ptr @switch.table.btc_dpm_enable.18, i32 0, i32 %switch.tableidx195
  %14 = ptrtoint ptr %switch.gep198 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load199 = load ptr, ptr %switch.gep198, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load199, i32 noundef %switch.load197) #7
  br label %if.end8

if.end8:                                          ; preds = %switch.lookup194, %if.then7.if.end8_crit_edge, %if.end5.if.end8_crit_edge
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 11
  %15 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ls_clock_gating, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool9.not = icmp eq i8 %16, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  %family.i166 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %17 = ptrtoint ptr %family.i166 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %family.i166, align 4
  %switch.tableidx201 = add i32 %18, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx201)
  %19 = icmp ult i32 %switch.tableidx201, 3
  br i1 %19, label %switch.lookup200, label %if.then10.if.end11_crit_edge

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

switch.lookup200:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep202 = getelementptr inbounds [3 x i32], ptr @switch.table.btc_dpm_enable.19, i32 0, i32 %switch.tableidx201
  %20 = ptrtoint ptr %switch.gep202 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load203 = load i32, ptr %switch.gep202, align 4
  %switch.gep204 = getelementptr inbounds [3 x ptr], ptr @switch.table.btc_dpm_enable.20, i32 0, i32 %switch.tableidx201
  %21 = ptrtoint ptr %switch.gep204 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load205 = load ptr, ptr %switch.gep204, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load205, i32 noundef %switch.load203) #7
  br label %if.end11

if.end11:                                         ; preds = %switch.lookup200, %if.then10.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %voltage_control, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not = icmp eq i8 %23, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %if.then13

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %if.end11
  tail call void @rv770_enable_voltage_control(ptr noundef %rdev, i1 noundef zeroext true) #7
  %call14 = tail call i32 @cypress_construct_voltage_tables(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then16

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mvdd_control, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool19.not = icmp eq i8 %25, 0
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %call21 = tail call i32 @cypress_get_mvdd_configuration(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end25_crit_edge, label %if.then23

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 2
  %26 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dynamic_ac_timing, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool26.not = icmp eq i8 %27, 0
  br i1 %tobool26.not, label %if.end25.if.end33_crit_edge, label %if.then27

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  %call.i172 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %mc_reg_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18
  %call1.i = tail call zeroext i8 @rv770_get_memory_module_index(ptr noundef %rdev) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 2772) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then27.if.then30_crit_edge, label %if.end.i

if.then27.if.then30_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end.i:                                         ; preds = %if.then27
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 10400
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %33, i32 10860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %31) #7, !srcloc !104
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %35, i32 10404
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %38, i32 10864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %36) #7, !srcloc !104
  %39 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %40, i32 10408
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %43, i32 10868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %41) #7, !srcloc !104
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %45, i32 10412
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %48, i32 10872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 %46) #7, !srcloc !104
  %49 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i95.i = getelementptr i8, ptr %50, i32 10420
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %53, i32 11036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %51) #7, !srcloc !104
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %55, i32 10424
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %58, i32 11040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %56) #7, !srcloc !104
  %59 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %60, i32 10428
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %63, i32 10876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %61) #7, !srcloc !104
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %65, i32 10432
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i123.i = getelementptr i8, ptr %68, i32 10880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123.i, i32 %66) #7, !srcloc !104
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %70, i32 10764
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i131.i = getelementptr i8, ptr %73, i32 10884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131.i, i32 %71) #7, !srcloc !104
  %74 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %75, i32 10924
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %78, i32 10888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %76) #7, !srcloc !104
  %79 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %80, i32 11076
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %82 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %83, i32 11080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %81) #7, !srcloc !104
  %call14.i = tail call i32 @radeon_atom_init_mc_reg_table(ptr noundef %rdev, i8 noundef zeroext %call1.i, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge

if.end.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit.thread185

if.end17.i:                                       ; preds = %if.end.i
  %84 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %85)
  %cmp.i148.i = icmp ugt i8 %85, 16
  br i1 %cmp.i148.i, label %if.end17.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, label %if.end.i.i

if.end17.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit.thread185

if.end.i.i:                                       ; preds = %if.end17.i
  %num_entries.i.i = getelementptr inbounds %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_entries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %87)
  %cmp3.i.i = icmp ugt i8 %87, 16
  br i1 %cmp3.i.i, label %if.end.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit.thread185

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp1084.not.i.i = icmp eq i8 %85, 0
  br i1 %cmp1084.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 3, i32 %indvars.iv.i.i
  %88 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i.i, align 4
  %s115.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %indvars.iv.i.i, i32 1
  %90 = ptrtoint ptr %s115.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %s115.i.i, align 2
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %91 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %call7.i.i.i, align 8
  %93 = zext i8 %92 to i32
  %cmp10.i.i = icmp ult i32 %indvars.iv.next.i.i, %93
  br i1 %cmp10.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %.lcssa83.i.i = phi i8 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %92, %for.body.i.i.for.end.i.i_crit_edge ]
  %94 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %.lcssa83.i.i, ptr %mc_reg_table.i, align 4
  %95 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_entries.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp2288.not.i.i = icmp eq i8 %96, 0
  br i1 %cmp2288.not.i.i, label %for.end.i.i.if.end21.i_crit_edge, label %for.end.i.i.for.body24.i.i_crit_edge

for.end.i.i.for.body24.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body24.i.i

for.end.i.i.if.end21.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

for.body24.i.i:                                   ; preds = %for.inc52.i.i.for.body24.i.i_crit_edge, %for.end.i.i.for.body24.i.i_crit_edge
  %indvars.iv95.i.i = phi i32 [ %indvars.iv.next96.i.i, %for.inc52.i.i.for.body24.i.i_crit_edge ], [ 0, %for.end.i.i.for.body24.i.i_crit_edge ]
  %arrayidx26.i.i = getelementptr %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 2, i32 %indvars.iv95.i.i
  %97 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx26.i.i, align 4
  %arrayidx29.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv95.i.i
  %99 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx29.i.i, align 4
  %100 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp3586.not.i.i = icmp eq i8 %101, 0
  br i1 %cmp3586.not.i.i, label %for.body24.i.i.for.inc52.i.i_crit_edge, label %for.body24.i.i.for.body37.i.i_crit_edge

for.body24.i.i.for.body37.i.i_crit_edge:          ; preds = %for.body24.i.i
  br label %for.body37.i.i

for.body24.i.i.for.inc52.i.i_crit_edge:           ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc52.i.i

for.body37.i.i:                                   ; preds = %for.body37.i.i.for.body37.i.i_crit_edge, %for.body24.i.i.for.body37.i.i_crit_edge
  %indvars.iv93.i.i = phi i32 [ %indvars.iv.next94.i.i, %for.body37.i.i.for.body37.i.i_crit_edge ], [ 0, %for.body24.i.i.for.body37.i.i_crit_edge ]
  %arrayidx42.i.i = getelementptr %struct.atom_mc_reg_table, ptr %call7.i.i.i, i32 0, i32 2, i32 %indvars.iv95.i.i, i32 1, i32 %indvars.iv93.i.i
  %102 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx42.i.i, align 4
  %arrayidx48.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv95.i.i, i32 1, i32 %indvars.iv93.i.i
  %104 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx48.i.i, align 4
  %indvars.iv.next94.i.i = add nuw nsw i32 %indvars.iv93.i.i, 1
  %105 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %call7.i.i.i, align 8
  %107 = zext i8 %106 to i32
  %cmp35.i.i = icmp ult i32 %indvars.iv.next94.i.i, %107
  br i1 %cmp35.i.i, label %for.body37.i.i.for.body37.i.i_crit_edge, label %for.body37.i.i.for.inc52.i.i_crit_edge

for.body37.i.i.for.inc52.i.i_crit_edge:           ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc52.i.i

for.body37.i.i.for.body37.i.i_crit_edge:          ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37.i.i

for.inc52.i.i:                                    ; preds = %for.body37.i.i.for.inc52.i.i_crit_edge, %for.body24.i.i.for.inc52.i.i_crit_edge
  %indvars.iv.next96.i.i = add nuw nsw i32 %indvars.iv95.i.i, 1
  %108 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %num_entries.i.i, align 1
  %110 = zext i8 %109 to i32
  %cmp22.i.i = icmp ult i32 %indvars.iv.next96.i.i, %110
  br i1 %cmp22.i.i, label %for.inc52.i.i.for.body24.i.i_crit_edge, label %if.end21thread-pre-split.i

for.inc52.i.i.for.body24.i.i_crit_edge:           ; preds = %for.inc52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24.i.i

if.end21thread-pre-split.i:                       ; preds = %for.inc52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %.pr.i = load i8, ptr %mc_reg_table.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21thread-pre-split.i, %for.end.i.i.if.end21.i_crit_edge
  %112 = phi i8 [ %.pr.i, %if.end21thread-pre-split.i ], [ %.lcssa83.i.i, %for.end.i.i.if.end21.i_crit_edge ]
  %.lcssa.i.i = phi i8 [ %109, %if.end21thread-pre-split.i ], [ 0, %for.end.i.i.if.end21.i_crit_edge ]
  %num_entries56.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 1
  %113 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %.lcssa.i.i, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp21.not.i.i = icmp eq i8 %112, 0
  br i1 %cmp21.not.i.i, label %if.end21.i.btc_set_s0_mc_reg_index.exit.i_crit_edge, label %if.end21.i.for.body.i150.i_crit_edge

if.end21.i.for.body.i150.i_crit_edge:             ; preds = %if.end21.i
  br label %for.body.i150.i

if.end21.i.btc_set_s0_mc_reg_index.exit.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_set_s0_mc_reg_index.exit.i

for.body.i150.i:                                  ; preds = %btc_check_s0_mc_reg_index.exit.i.i.for.body.i150.i_crit_edge, %if.end21.i.for.body.i150.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %btc_check_s0_mc_reg_index.exit.i.i.for.body.i150.i_crit_edge ], [ 0, %if.end21.i.for.body.i150.i_crit_edge ]
  %arrayidx.i149.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %i.022.i.i
  %s1.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %i.022.i.i, i32 1
  %114 = ptrtoint ptr %s1.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %s1.i.i, align 2
  %116 = zext i16 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %115, label %for.body.i150.i.btc_check_s0_mc_reg_index.exit.i.i_crit_edge [
    i16 2600, label %for.body.i150.i._crit_edge
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
  ]

for.body.i150.i._crit_edge:                       ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

for.body.i150.i.btc_check_s0_mc_reg_index.exit.i.i_crit_edge: ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_check_s0_mc_reg_index.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb2.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb3.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb4.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb5.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb6.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb7.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb8.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb9.i.i.i:                                     ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

sw.bb10.i.i.i:                                    ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %117

117:                                              ; preds = %sw.bb10.i.i.i, %sw.bb9.i.i.i, %sw.bb8.i.i.i, %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %for.body.i150.i._crit_edge
  %.sink.i.i.i = phi i16 [ 2770, %sw.bb10.i.i.i ], [ 2722, %sw.bb9.i.i.i ], [ 2721, %sw.bb8.i.i.i ], [ 2720, %sw.bb7.i.i.i ], [ 2719, %sw.bb6.i.i.i ], [ 2760, %sw.bb5.i.i.i ], [ 2759, %sw.bb4.i.i.i ], [ 2718, %sw.bb3.i.i.i ], [ 2717, %sw.bb2.i.i.i ], [ 2716, %sw.bb1.i.i.i ], [ 2715, %for.body.i150.i._crit_edge ]
  br label %btc_check_s0_mc_reg_index.exit.i.i

btc_check_s0_mc_reg_index.exit.i.i:               ; preds = %117, %for.body.i150.i.btc_check_s0_mc_reg_index.exit.i.i_crit_edge
  %.sroa.speculated.i.i = phi i16 [ %.sink.i.i.i, %117 ], [ %115, %for.body.i150.i.btc_check_s0_mc_reg_index.exit.i.i_crit_edge ]
  %118 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %.sroa.speculated.i.i, ptr %arrayidx.i149.i, align 4
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %119 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %mc_reg_table.i, align 4
  %conv.i.i = zext i8 %120 to i32
  %cmp.i151.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i151.i, label %btc_check_s0_mc_reg_index.exit.i.i.for.body.i150.i_crit_edge, label %btc_check_s0_mc_reg_index.exit.i.i.btc_set_s0_mc_reg_index.exit.i_crit_edge

btc_check_s0_mc_reg_index.exit.i.i.btc_set_s0_mc_reg_index.exit.i_crit_edge: ; preds = %btc_check_s0_mc_reg_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_set_s0_mc_reg_index.exit.i

btc_check_s0_mc_reg_index.exit.i.i.for.body.i150.i_crit_edge: ; preds = %btc_check_s0_mc_reg_index.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i150.i

btc_set_s0_mc_reg_index.exit.i:                   ; preds = %btc_check_s0_mc_reg_index.exit.i.i.btc_set_s0_mc_reg_index.exit.i_crit_edge, %if.end21.i.btc_set_s0_mc_reg_index.exit.i_crit_edge
  %call.i.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %121 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %mc_reg_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp204.not.i.i = icmp eq i8 %122, 0
  br i1 %cmp204.not.i.i, label %if.end25.thread.i, label %btc_set_s0_mc_reg_index.exit.i.for.body.i154.i_crit_edge

btc_set_s0_mc_reg_index.exit.i.for.body.i154.i_crit_edge: ; preds = %btc_set_s0_mc_reg_index.exit.i
  br label %for.body.i154.i

if.end25.thread.i:                                ; preds = %btc_set_s0_mc_reg_index.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %mc_reg_table.i, align 4
  br label %btc_initialize_mc_reg_table.exit

for.body.i154.i:                                  ; preds = %for.inc124.i.i.for.body.i154.i_crit_edge, %btc_set_s0_mc_reg_index.exit.i.for.body.i154.i_crit_edge
  %indvars.iv217.i.i = phi i32 [ %indvars.iv.next218.i.i, %for.inc124.i.i.for.body.i154.i_crit_edge ], [ 0, %btc_set_s0_mc_reg_index.exit.i.for.body.i154.i_crit_edge ]
  %j.0206.i.i = phi i8 [ %j.1.i.i, %for.inc124.i.i.for.body.i154.i_crit_edge ], [ %122, %btc_set_s0_mc_reg_index.exit.i.for.body.i154.i_crit_edge ]
  %s1.i153.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %indvars.iv217.i.i, i32 1
  %124 = ptrtoint ptr %s1.i153.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %s1.i153.i, align 2
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %125, label %for.body.i154.i.for.inc124.i.i_crit_edge [
    i16 2689, label %sw.bb.i.i
    i16 2690, label %sw.bb83.i.i
  ]

for.body.i154.i.for.inc124.i.i_crit_edge:         ; preds = %for.body.i154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc124.i.i

sw.bb.i.i:                                        ; preds = %for.body.i154.i
  %127 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %128, i32 10764
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %idxprom7.i.i = zext i8 %j.0206.i.i to i32
  %arrayidx8.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %idxprom7.i.i
  %s19.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %idxprom7.i.i, i32 1
  %130 = ptrtoint ptr %s19.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 2691, ptr %s19.i.i, align 2
  %131 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 2721, ptr %arrayidx8.i.i, align 4
  %132 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %cmp16200.not.i.i = icmp eq i8 %133, 0
  br i1 %cmp16200.not.i.i, label %sw.bb.i.i.for.end.i156.i_crit_edge, label %for.body18.lr.ph.i.i

sw.bb.i.i.for.end.i156.i_crit_edge:               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i156.i

for.body18.lr.ph.i.i:                             ; preds = %sw.bb.i.i
  %134 = and i32 %129, 65535
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #7
  %wide.trip.count211.i.i = zext i8 %133 to i32
  br label %for.body18.i.i

for.body18.i.i:                                   ; preds = %for.body18.i.i.for.body18.i.i_crit_edge, %for.body18.lr.ph.i.i
  %indvars.iv209.i.i = phi i32 [ 0, %for.body18.lr.ph.i.i ], [ %indvars.iv.next210.i.i, %for.body18.i.i.for.body18.i.i_crit_edge ]
  %arrayidx22.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv209.i.i, i32 1, i32 %indvars.iv217.i.i
  %136 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx22.i.i, align 4
  %shr.i.i = lshr i32 %137, 16
  %or.i.i = or i32 %shr.i.i, %135
  %arrayidx29.i155.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv209.i.i, i32 1, i32 %idxprom7.i.i
  %138 = ptrtoint ptr %arrayidx29.i155.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or.i.i, ptr %arrayidx29.i155.i, align 4
  %indvars.iv.next210.i.i = add nuw nsw i32 %indvars.iv209.i.i, 1
  %exitcond212.not.i.i = icmp eq i32 %indvars.iv.next210.i.i, %wide.trip.count211.i.i
  br i1 %exitcond212.not.i.i, label %for.body18.i.i.for.end.i156.i_crit_edge, label %for.body18.i.i.for.body18.i.i_crit_edge

for.body18.i.i.for.body18.i.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i.i

for.body18.i.i.for.end.i156.i_crit_edge:          ; preds = %for.body18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i156.i

for.end.i156.i:                                   ; preds = %for.body18.i.i.for.end.i156.i_crit_edge, %sw.bb.i.i.for.end.i156.i_crit_edge
  %inc30.i.i = add i8 %j.0206.i.i, 1
  %conv31.i.i = zext i8 %inc30.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc30.i.i)
  %cmp32.i.i = icmp ugt i8 %inc30.i.i, 15
  br i1 %cmp32.i.i, label %for.end.i156.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, label %if.end.i157.i

for.end.i156.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge: ; preds = %for.end.i156.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit.thread185

if.end.i157.i:                                    ; preds = %for.end.i156.i
  %139 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i192.i.i = getelementptr i8, ptr %140, i32 10924
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %arrayidx37.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %conv31.i.i
  %s138.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %conv31.i.i, i32 1
  %142 = ptrtoint ptr %s138.i.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 2731, ptr %s138.i.i, align 2
  %143 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 2722, ptr %arrayidx37.i.i, align 4
  %144 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp47202.not.i.i = icmp eq i8 %145, 0
  br i1 %cmp47202.not.i.i, label %if.end.i157.i.for.end76.i.i_crit_edge, label %for.body49.lr.ph.i.i

if.end.i157.i.for.end76.i.i_crit_edge:            ; preds = %if.end.i157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76.i.i

for.body49.lr.ph.i.i:                             ; preds = %if.end.i157.i
  %146 = and i32 %141, 65535
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #7
  %wide.trip.count215.i.i = zext i8 %145 to i32
  br label %for.body49.i.i

for.body49.i.i:                                   ; preds = %for.inc74.i.i.for.body49.i.i_crit_edge, %for.body49.lr.ph.i.i
  %indvars.iv213.i.i = phi i32 [ 0, %for.body49.lr.ph.i.i ], [ %indvars.iv.next214.i.i, %for.inc74.i.i.for.body49.i.i_crit_edge ]
  %arrayidx56.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv213.i.i, i32 1, i32 %indvars.iv217.i.i
  %148 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx56.i.i, align 4
  %and57.i.i = and i32 %149, 65535
  %or58.i.i = or i32 %and57.i.i, %147
  %arrayidx64.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv213.i.i, i32 1, i32 %conv31.i.i
  %150 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or58.i.i, ptr %arrayidx64.i.i, align 4
  %151 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %call.i.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i.i = icmp eq i8 %152, 0
  br i1 %tobool.not.i.i, label %if.then65.i.i, label %for.body49.i.i.for.inc74.i.i_crit_edge

for.body49.i.i.for.inc74.i.i_crit_edge:           ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc74.i.i

if.then65.i.i:                                    ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or72.i.i = or i32 %or58.i.i, 256
  %153 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %or72.i.i, ptr %arrayidx64.i.i, align 4
  br label %for.inc74.i.i

for.inc74.i.i:                                    ; preds = %if.then65.i.i, %for.body49.i.i.for.inc74.i.i_crit_edge
  %indvars.iv.next214.i.i = add nuw nsw i32 %indvars.iv213.i.i, 1
  %exitcond216.not.i.i = icmp eq i32 %indvars.iv.next214.i.i, %wide.trip.count215.i.i
  br i1 %exitcond216.not.i.i, label %for.inc74.i.i.for.end76.i.i_crit_edge, label %for.inc74.i.i.for.body49.i.i_crit_edge

for.inc74.i.i.for.body49.i.i_crit_edge:           ; preds = %for.inc74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49.i.i

for.inc74.i.i.for.end76.i.i_crit_edge:            ; preds = %for.inc74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end76.i.i

for.end76.i.i:                                    ; preds = %for.inc74.i.i.for.end76.i.i_crit_edge, %if.end.i157.i.for.end76.i.i_crit_edge
  %inc77.i.i = add i8 %j.0206.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc77.i.i)
  %cmp79.i.i = icmp ugt i8 %inc77.i.i, 15
  br i1 %cmp79.i.i, label %for.end76.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, label %for.end76.i.i.for.inc124.i.i_crit_edge

for.end76.i.i.for.inc124.i.i_crit_edge:           ; preds = %for.end76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc124.i.i

for.end76.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge: ; preds = %for.end76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit.thread185

sw.bb83.i.i:                                      ; preds = %for.body.i154.i
  %154 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i196.i.i = getelementptr i8, ptr %155, i32 11076
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %idxprom86.i.i = zext i8 %j.0206.i.i to i32
  %arrayidx87.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %idxprom86.i.i
  %s188.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 4, i32 %idxprom86.i.i, i32 1
  %157 = ptrtoint ptr %s188.i.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 2769, ptr %s188.i.i, align 2
  %158 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 2770, ptr %arrayidx87.i.i, align 4
  %159 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %cmp97198.not.i.i = icmp eq i8 %160, 0
  br i1 %cmp97198.not.i.i, label %sw.bb83.i.i.for.end117.i.i_crit_edge, label %for.body99.lr.ph.i.i

sw.bb83.i.i.for.end117.i.i_crit_edge:             ; preds = %sw.bb83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end117.i.i

for.body99.lr.ph.i.i:                             ; preds = %sw.bb83.i.i
  %161 = and i32 %156, 65535
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #7
  %wide.trip.count.i.i = zext i8 %160 to i32
  br label %for.body99.i.i

for.body99.i.i:                                   ; preds = %for.body99.i.i.for.body99.i.i_crit_edge, %for.body99.lr.ph.i.i
  %indvars.iv.i158.i = phi i32 [ 0, %for.body99.lr.ph.i.i ], [ %indvars.iv.next.i159.i, %for.body99.i.i.for.body99.i.i_crit_edge ]
  %arrayidx106.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv.i158.i, i32 1, i32 %indvars.iv217.i.i
  %163 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx106.i.i, align 4
  %and107.i.i = and i32 %164, 65535
  %or108.i.i = or i32 %and107.i.i, %162
  %arrayidx114.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv.i158.i, i32 1, i32 %idxprom86.i.i
  %165 = ptrtoint ptr %arrayidx114.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %or108.i.i, ptr %arrayidx114.i.i, align 4
  %indvars.iv.next.i159.i = add nuw nsw i32 %indvars.iv.i158.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i159.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.body99.i.i.for.end117.i.i_crit_edge, label %for.body99.i.i.for.body99.i.i_crit_edge

for.body99.i.i.for.body99.i.i_crit_edge:          ; preds = %for.body99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body99.i.i

for.body99.i.i.for.end117.i.i_crit_edge:          ; preds = %for.body99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end117.i.i

for.end117.i.i:                                   ; preds = %for.body99.i.i.for.end117.i.i_crit_edge, %sw.bb83.i.i.for.end117.i.i_crit_edge
  %inc118.i.i = add i8 %j.0206.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc118.i.i)
  %cmp120.i.i = icmp ugt i8 %inc118.i.i, 15
  br i1 %cmp120.i.i, label %for.end117.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, label %for.end117.i.i.for.inc124.i.i_crit_edge

for.end117.i.i.for.inc124.i.i_crit_edge:          ; preds = %for.end117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc124.i.i

for.end117.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge: ; preds = %for.end117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit.thread185

for.inc124.i.i:                                   ; preds = %for.end117.i.i.for.inc124.i.i_crit_edge, %for.end76.i.i.for.inc124.i.i_crit_edge, %for.body.i154.i.for.inc124.i.i_crit_edge
  %j.1.i.i = phi i8 [ %j.0206.i.i, %for.body.i154.i.for.inc124.i.i_crit_edge ], [ %inc118.i.i, %for.end117.i.i.for.inc124.i.i_crit_edge ], [ %inc77.i.i, %for.end76.i.i.for.inc124.i.i_crit_edge ]
  %indvars.iv.next218.i.i = add nuw nsw i32 %indvars.iv217.i.i, 1
  %166 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %mc_reg_table.i, align 4
  %168 = zext i8 %167 to i32
  %cmp.i160.i = icmp ult i32 %indvars.iv.next218.i.i, %168
  br i1 %cmp.i160.i, label %for.inc124.i.i.for.body.i154.i_crit_edge, label %if.end25.i

for.inc124.i.i.for.body.i154.i_crit_edge:         ; preds = %for.inc124.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i154.i

if.end25.i:                                       ; preds = %for.inc124.i.i
  %169 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %j.1.i.i, ptr %mc_reg_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %j.1.i.i)
  %cmp38.not.i.i = icmp eq i8 %j.1.i.i, 0
  br i1 %cmp38.not.i.i, label %if.end25.i.btc_initialize_mc_reg_table.exit_crit_edge, label %for.cond3.preheader.lr.ph.i.i

if.end25.i.btc_initialize_mc_reg_table.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit

for.cond3.preheader.lr.ph.i.i:                    ; preds = %if.end25.i
  %170 = ptrtoint ptr %num_entries56.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %num_entries56.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %171)
  %cmp636.i.i = icmp ugt i8 %171, 1
  %valid_flag.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 2
  %wide.trip.count43.i.i = zext i8 %j.1.i.i to i32
  %wide.trip.count.i163.i = zext i8 %171 to i32
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.inc22.i.i.for.cond3.preheader.i.i_crit_edge, %for.cond3.preheader.lr.ph.i.i
  %indvars.iv41.i.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i.i ], [ %indvars.iv.next42.i.i, %for.inc22.i.i.for.cond3.preheader.i.i_crit_edge ]
  br i1 %cmp636.i.i, label %for.cond3.preheader.i.i.for.body8.i.i_crit_edge, label %for.cond3.preheader.i.i.for.inc22.i.i_crit_edge

for.cond3.preheader.i.i.for.inc22.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22.i.i

for.cond3.preheader.i.i.for.body8.i.i_crit_edge:  ; preds = %for.cond3.preheader.i.i
  br label %for.body8.i.i

for.cond3.i.i:                                    ; preds = %for.body8.i.i
  %indvars.iv.next.i164.i = add nuw nsw i32 %indvars.iv.i166.i, 1
  %exitcond.not.i165.i = icmp eq i32 %indvars.iv.next.i164.i, %wide.trip.count.i163.i
  br i1 %exitcond.not.i165.i, label %for.cond3.i.i.for.inc22.i.i_crit_edge, label %for.cond3.i.i.for.body8.i.i_crit_edge

for.cond3.i.i.for.body8.i.i_crit_edge:            ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8.i.i

for.cond3.i.i.for.inc22.i.i_crit_edge:            ; preds = %for.cond3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22.i.i

for.body8.i.i:                                    ; preds = %for.cond3.i.i.for.body8.i.i_crit_edge, %for.cond3.preheader.i.i.for.body8.i.i_crit_edge
  %indvars.iv.i166.i = phi i32 [ %indvars.iv.next.i164.i, %for.cond3.i.i.for.body8.i.i_crit_edge ], [ 1, %for.cond3.preheader.i.i.for.body8.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %indvars.iv.i166.i, -1
  %arrayidx10.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %sub.i.i, i32 1, i32 %indvars.iv41.i.i
  %172 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx10.i.i, align 4
  %arrayidx16.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i172, i32 0, i32 18, i32 3, i32 %indvars.iv.i166.i, i32 1, i32 %indvars.iv41.i.i
  %174 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %175)
  %cmp17.not.i.i = icmp eq i32 %173, %175
  br i1 %cmp17.not.i.i, label %for.cond3.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw i32 1, %indvars.iv41.i.i
  %176 = ptrtoint ptr %valid_flag.i.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %valid_flag.i.i, align 2
  %178 = trunc i32 %shl.i.i to i16
  %conv21.i.i = or i16 %177, %178
  store i16 %conv21.i.i, ptr %valid_flag.i.i, align 2
  br label %for.inc22.i.i

for.inc22.i.i:                                    ; preds = %if.then.i.i, %for.cond3.i.i.for.inc22.i.i_crit_edge, %for.cond3.preheader.i.i.for.inc22.i.i_crit_edge
  %indvars.iv.next42.i.i = add nuw nsw i32 %indvars.iv41.i.i, 1
  %exitcond44.not.i.i = icmp eq i32 %indvars.iv.next42.i.i, %wide.trip.count43.i.i
  br i1 %exitcond44.not.i.i, label %for.inc22.i.i.btc_initialize_mc_reg_table.exit_crit_edge, label %for.inc22.i.i.for.cond3.preheader.i.i_crit_edge

for.inc22.i.i.for.cond3.preheader.i.i_crit_edge:  ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i.i

for.inc22.i.i.btc_initialize_mc_reg_table.exit_crit_edge: ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_initialize_mc_reg_table.exit

btc_initialize_mc_reg_table.exit.thread185:       ; preds = %for.end117.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, %for.end76.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, %for.end.i156.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, %if.end.i.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, %if.end17.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge, %if.end.i.btc_initialize_mc_reg_table.exit.thread185_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %if.then30

btc_initialize_mc_reg_table.exit:                 ; preds = %for.inc22.i.i.btc_initialize_mc_reg_table.exit_crit_edge, %if.end25.i.btc_initialize_mc_reg_table.exit_crit_edge, %if.end25.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %if.end33

if.then30:                                        ; preds = %btc_initialize_mc_reg_table.exit.thread185, %if.then27.if.then30_crit_edge
  %179 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %dynamic_ac_timing, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %btc_initialize_mc_reg_table.exit, %if.end25.if.end33_crit_edge
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %180 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %platform_caps, align 4
  %and = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end33.if.end38_crit_edge, label %if.then37

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rv770_enable_backbias(ptr noundef %rdev, i1 noundef zeroext true) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33.if.end38_crit_edge
  %dynamic_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 9
  %182 = ptrtoint ptr %dynamic_ss to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %dynamic_ss, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool39.not = icmp eq i8 %183, 0
  br i1 %tobool39.not, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cypress_enable_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext true) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 14
  %184 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %thermal_protection, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool42.not = icmp eq i8 %185, 0
  br i1 %tobool42.not, label %if.end41.if.end44_crit_edge, label %if.then43

if.end41.if.end44_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rv770_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext true) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41.if.end44_crit_edge
  tail call void @rv770_setup_bsp(ptr noundef %rdev) #7
  tail call void @rv770_program_git(ptr noundef %rdev) #7
  tail call void @rv770_program_tp(ptr noundef %rdev) #7
  tail call void @rv770_program_tpp(ptr noundef %rdev) #7
  tail call void @rv770_program_sstp(ptr noundef %rdev) #7
  tail call void @rv770_program_engine_speed_parameters(ptr noundef %rdev) #7
  tail call void @cypress_enable_display_gap(ptr noundef %rdev) #7
  tail call void @rv770_program_vc(ptr noundef %rdev) #7
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 2
  %186 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool45.not = icmp eq i8 %187, 0
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btc_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  %call48 = tail call i32 @rv770_upload_firmware(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = tail call i32 @cypress_get_table_locations(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %call.i173 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %call1.i174 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %smc_statetable.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60
  %188 = call ptr @memset(ptr %smc_statetable.i, i32 0, i32 1304)
  %call2.i = tail call i32 @cypress_populate_smc_voltage_tables(ptr noundef %rdev, ptr noundef %smc_statetable.i) #7
  %int_thermal_type.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %189 = ptrtoint ptr %int_thermal_type.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %int_thermal_type.i, align 4
  %191 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %190, label %sw.default.i [
    i32 6, label %if.end55.sw.epilog.i_crit_edge
    i32 10, label %if.end55.sw.epilog.i_crit_edge208
    i32 0, label %sw.bb3.i
  ]

if.end55.sw.epilog.i_crit_edge208:                ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end55.sw.epilog.i_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb3.i, %if.end55.sw.epilog.i_crit_edge, %if.end55.sw.epilog.i_crit_edge208
  %.sink.i = phi i8 [ 1, %sw.default.i ], [ -1, %sw.bb3.i ], [ 0, %if.end55.sw.epilog.i_crit_edge ], [ 0, %if.end55.sw.epilog.i_crit_edge208 ]
  %192 = ptrtoint ptr %smc_statetable.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %.sink.i, ptr %smc_statetable.i, align 1
  %193 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %platform_caps, align 4
  %and.i = and i32 %194, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i175 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i175, label %sw.epilog.i.if.end.i176_crit_edge, label %if.then.i

sw.epilog.i.if.end.i176_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i176

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %systemFlags.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 1
  %195 = ptrtoint ptr %systemFlags.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %systemFlags.i, align 1
  %197 = or i8 %196, 1
  store i8 %197, ptr %systemFlags.i, align 1
  br label %if.end.i176

if.end.i176:                                      ; preds = %if.then.i, %sw.epilog.i.if.end.i176_crit_edge
  %198 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %platform_caps, align 4
  %and11.i = and i32 %199, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end.i176.if.end18.i_crit_edge, label %if.then13.i

if.end.i176.if.end18.i_crit_edge:                 ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #9
  %systemFlags14.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 1
  %200 = ptrtoint ptr %systemFlags14.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %systemFlags14.i, align 1
  %202 = or i8 %201, 16
  store i8 %202, ptr %systemFlags14.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end.i176.if.end18.i_crit_edge
  %203 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %platform_caps, align 4
  %and22.i = and i32 %204, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end29.i_crit_edge, label %if.then24.i

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %systemFlags25.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 1
  %205 = ptrtoint ptr %systemFlags25.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %systemFlags25.i, align 1
  %207 = or i8 %206, 2
  store i8 %207, ptr %systemFlags25.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.end18.i.if.end29.i_crit_edge
  %208 = ptrtoint ptr %call.i173 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %call.i173, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool30.not.i = icmp eq i8 %209, 0
  br i1 %tobool30.not.i, label %if.end29.i.if.end36.i_crit_edge, label %if.then31.i

if.end29.i.if.end36.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then31.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %systemFlags32.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 1
  %210 = ptrtoint ptr %systemFlags32.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %systemFlags32.i, align 1
  %212 = or i8 %211, 4
  store i8 %212, ptr %systemFlags32.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then31.i, %if.end29.i.if.end36.i_crit_edge
  %call37.i = tail call i32 @cypress_populate_smc_initial_state(ptr noundef %rdev, ptr noundef %1, ptr noundef %smc_statetable.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40.i:                                       ; preds = %if.end36.i
  %sclk_deep_sleep.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i174, i32 0, i32 9
  %213 = ptrtoint ptr %sclk_deep_sleep.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %sclk_deep_sleep.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %tobool41.not.i = icmp eq i8 %214, 0
  br i1 %tobool41.not.i, label %if.end40.i.if.end46.i_crit_edge, label %do.body.i

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

do.body.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i.i177 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %215 = ptrtoint ptr %rmmio.i.i177 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rmmio.i.i177, align 4
  %add.ptr.i.i178 = getelementptr i8, ptr %216, i32 2240
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i178) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %218 = and i32 %217, -65281
  %219 = or i32 %218, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %220 = ptrtoint ptr %rmmio.i.i177 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %rmmio.i.i177, align 4
  %add.ptr.i104.i = getelementptr i8, ptr %221, i32 2240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 %219) #7, !srcloc !104
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.body.i, %if.end40.i.if.end46.i_crit_edge
  %call.i.i179 = tail call i32 @cypress_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %smc_statetable.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %cmp.i105.i = icmp eq i32 %call.i.i179, 0
  br i1 %cmp.i105.i, label %if.end50.i, label %if.end46.i.cleanup_crit_edge

if.end46.i.cleanup_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50.i:                                       ; preds = %if.end46.i
  %222 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 8, i32 4, i32 0, i32 1
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %222, align 1
  %224 = getelementptr %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 8, i32 4, i32 1, i32 1
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %224, align 1
  %226 = getelementptr %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 8, i32 4, i32 2, i32 1
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 0, ptr %226, align 1
  %ulv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i174, i32 0, i32 22
  %228 = ptrtoint ptr %ulv.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %ulv.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool51.not.i = icmp eq i8 %229, 0
  br i1 %tobool51.not.i, label %if.end50.i.btc_init_smc_table.exit_crit_edge, label %if.then52.i

if.end50.i.btc_init_smc_table.exit_crit_edge:     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_init_smc_table.exit

if.then52.i:                                      ; preds = %if.end50.i
  %call.i106.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %pl.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i106.i, i32 0, i32 22, i32 1
  %230 = ptrtoint ptr %pl.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pl.i.i, align 4
  %vddc.i.i = getelementptr inbounds %struct.rv7xx_pl, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %vddc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %tobool.not.i.i180 = icmp eq i16 %233, 0
  br i1 %tobool.not.i.i180, label %if.then52.i.if.then55.i_crit_edge, label %if.then.i108.i

if.then52.i.if.then55.i_crit_edge:                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i

if.then.i108.i:                                   ; preds = %if.then52.i
  %levels.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 10, i32 4
  %call1.i.i = tail call i32 @cypress_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %231, ptr noundef %levels.i.i, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i107.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i107.i, label %btc_populate_ulv_state.exit.i, label %if.then.i108.i.if.then55.i_crit_edge

if.then.i108.i.if.then55.i_crit_edge:             ; preds = %if.then.i108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i

btc_populate_ulv_state.exit.i:                    ; preds = %if.then.i108.i
  call void @__sanitizer_cov_trace_pc() #9
  %ULVState.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 10
  %234 = ptrtoint ptr %levels.i.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 10, ptr %levels.i.i, align 1
  %235 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 10, i32 4, i32 0, i32 1
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %235, align 1
  %arrayidx11.i.i = getelementptr %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 10, i32 4, i32 1
  %237 = call ptr @memcpy(ptr %arrayidx11.i.i, ptr %levels.i.i, i32 92)
  %arrayidx17.i.i = getelementptr %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 10, i32 4, i32 2
  %238 = call ptr @memcpy(ptr %arrayidx17.i.i, ptr %levels.i.i, i32 92)
  %239 = ptrtoint ptr %ULVState.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %ULVState.i.i, align 1
  %241 = or i8 %240, 1
  store i8 %241, ptr %ULVState.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %242 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i181 = getelementptr i8, ptr %243, i32 2248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i181, i32 1343488000) #7, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %244 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %245, i32 2252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 889193472) #7, !srcloc !104
  br label %btc_init_smc_table.exit

if.then55.i:                                      ; preds = %if.then.i108.i.if.then55.i_crit_edge, %if.then52.i.if.then55.i_crit_edge
  %246 = ptrtoint ptr %ulv.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %ulv.i, align 4
  br label %btc_init_smc_table.exit

btc_init_smc_table.exit:                          ; preds = %if.then55.i, %btc_populate_ulv_state.exit.i, %if.end50.i.btc_init_smc_table.exit_crit_edge
  %driverState.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 9
  %initialState.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 60, i32 7
  %247 = call ptr @memcpy(ptr %driverState.i, ptr %initialState.i, i32 280)
  %state_table_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 57
  %248 = ptrtoint ptr %state_table_start.i to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %state_table_start.i, align 4
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i173, i32 0, i32 59
  %250 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %sram_end.i, align 4
  %call60.i = tail call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %249, ptr noundef %smc_statetable.i, i16 noundef zeroext 1304, i16 noundef zeroext %251) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool57.not = icmp eq i32 %call60.i, 0
  br i1 %tobool57.not, label %if.end59, label %btc_init_smc_table.exit.cleanup_crit_edge

btc_init_smc_table.exit.cleanup_crit_edge:        ; preds = %btc_init_smc_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59:                                         ; preds = %btc_init_smc_table.exit
  %252 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %dynamic_ac_timing, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool61.not = icmp eq i8 %253, 0
  br i1 %tobool61.not, label %if.end59.if.end67_crit_edge, label %if.then62

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then62:                                        ; preds = %if.end59
  %call63 = tail call i32 @cypress_populate_mc_reg_table(ptr noundef %rdev, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then62.if.end67_crit_edge, label %if.then65

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %if.end59.if.end67_crit_edge
  tail call void @cypress_program_response_times(ptr noundef %rdev) #7
  tail call void @r7xx_start_smc(ptr noundef %rdev) #7
  %call68 = tail call i32 @cypress_notify_smc_display_change(ptr noundef %rdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %cleanup

if.end71:                                         ; preds = %if.end67
  tail call void @cypress_enable_sclk_control(ptr noundef %rdev, i1 noundef zeroext true) #7
  %memory_transition = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 6
  %254 = ptrtoint ptr %memory_transition to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %memory_transition, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool72.not = icmp eq i8 %255, 0
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.then73

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cypress_enable_mclk_control(ptr noundef %rdev, i1 noundef zeroext true) #7
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end71.if.end74_crit_edge
  tail call void @cypress_start_dpm(ptr noundef %rdev) #7
  %256 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %gfx_clock_gating, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool76.not = icmp eq i8 %257, 0
  br i1 %tobool76.not, label %if.end74.if.end78_crit_edge, label %if.then77

if.end74.if.end78_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btc_cg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74.if.end78_crit_edge
  %258 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %mg_clock_gating, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool80.not = icmp eq i8 %259, 0
  br i1 %tobool80.not, label %if.end78.if.end82_crit_edge, label %if.then81

if.end78.if.end82_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btc_mg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.end78.if.end82_crit_edge
  %260 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %ls_clock_gating, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool84.not = icmp eq i8 %261, 0
  br i1 %tobool84.not, label %if.end82.if.end86_crit_edge, label %if.then85

if.end82.if.end86_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btc_ls_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %if.end82.if.end86_crit_edge
  tail call void @rv770_enable_auto_throttle_source(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #7
  tail call fastcc void @btc_init_stutter_mode(ptr noundef %rdev)
  %262 = ptrtoint ptr %boot_ps2 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %boot_ps2, align 4
  tail call fastcc void @btc_update_current_ps(ptr noundef %rdev, ptr noundef %263)
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then70, %if.then65, %btc_init_smc_table.exit.cleanup_crit_edge, %if.end46.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %if.then54, %if.then50, %if.then23, %if.then16, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then16 ], [ %call21, %if.then23 ], [ %call48, %if.then50 ], [ %call52, %if.then54 ], [ %call63, %if.then65 ], [ %call68, %if.then70 ], [ 0, %if.end86 ], [ -22, %if.end.cleanup_crit_edge ], [ %call60.i, %btc_init_smc_table.exit.cleanup_crit_edge ], [ %call.i.i179, %if.end46.i.cleanup_crit_edge ], [ %call37.i, %if.end36.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_voltage_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_construct_voltage_tables(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_get_mvdd_configuration(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_backbias(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_spread_spectrum(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_thermal_protection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_setup_bsp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_git(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_tp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_tpp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_sstp(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_engine_speed_parameters(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_display_gap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_vc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %0 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pciep_rreg.i, align 4
  %call1.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 164) #7
  %2 = and i32 %call1.i, 25165824
  br i1 %enable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %2)
  %.not.i = icmp eq i32 %2, 25165824
  br i1 %.not.i, label %if.then5.i, label %if.then.i.do.body_crit_edge

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then5.i:                                       ; preds = %if.then.i
  %boot_in_gen2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %boot_in_gen2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %boot_in_gen2.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not.i = icmp eq i8 %4, 0
  br i1 %tobool6.not.i, label %btc_enable_bif_dynamic_pcie_gen2.exit.thread32, label %if.then5.i.do.body_crit_edge

if.then5.i.do.body_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

btc_enable_bif_dynamic_pcie_gen2.exit.thread32:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2036
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %8 = and i32 %7, 16777215
  %9 = or i32 %8, 218103808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %11, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %9) #7, !srcloc !104
  %and10.i = and i32 %call1.i, -2109442
  %or13.i = or i32 %and10.i, 2101249
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %12 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %13(ptr noundef %rdev, i32 noundef 164, i32 noundef %or13.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %and14.i = or i32 %and10.i, 4097
  %15 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %16(ptr noundef %rdev, i32 noundef 164, i32 noundef %and14.i) #7
  br label %do.body

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %if.else.i.do.body2_crit_edge, label %if.then21.i

if.else.i.do.body2_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

if.then21.i:                                      ; preds = %if.else.i
  %boot_in_gen222.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %boot_in_gen222.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %boot_in_gen222.i, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not.i = icmp eq i8 %19, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.then21.i.btc_enable_bif_dynamic_pcie_gen2.exit_crit_edge

if.then21.i.btc_enable_bif_dynamic_pcie_gen2.exit_crit_edge: ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_enable_bif_dynamic_pcie_gen2.exit

if.then24.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  %rmmio.i70.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i70.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i70.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %21, i32 2036
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %23 = and i32 %22, 16777215
  %24 = or i32 %23, 218103808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %rmmio.i70.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i70.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %26, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %24) #7, !srcloc !104
  %and29.i = and i32 %call1.i, -12290
  br label %btc_enable_bif_dynamic_pcie_gen2.exit

btc_enable_bif_dynamic_pcie_gen2.exit:            ; preds = %if.then24.i, %if.then21.i.btc_enable_bif_dynamic_pcie_gen2.exit_crit_edge
  %tmp.0.i = phi i32 [ %call1.i, %if.then21.i.btc_enable_bif_dynamic_pcie_gen2.exit_crit_edge ], [ %and29.i, %if.then24.i ]
  %pciep_wreg31.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %27 = ptrtoint ptr %pciep_wreg31.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pciep_wreg31.i, align 8
  tail call void %28(ptr noundef %rdev, i32 noundef 164, i32 noundef %tmp.0.i) #7
  br label %do.body2

do.body:                                          ; preds = %btc_enable_bif_dynamic_pcie_gen2.exit.thread32, %if.then5.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 1596
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %32 = or i32 %31, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %34, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %32) #7, !srcloc !104
  br label %if.end

do.body2:                                         ; preds = %btc_enable_bif_dynamic_pcie_gen2.exit, %if.else.i.do.body2_crit_edge
  %rmmio.i24 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %36, i32 1596
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %38 = and i32 %37, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %rmmio.i24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i24, align 4
  %add.ptr.i30 = getelementptr i8, ptr %40, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %38) #7, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_upload_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_get_table_locations(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_populate_mc_reg_table(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_program_response_times(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r7xx_start_smc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_notify_smc_display_change(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_sclk_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_enable_mclk_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_start_dpm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc_cg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %1, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %if.end28, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %. = select i1 %enable, i32 49, i32 50
  %switch.table.btc_cg_clock_gating_enable.switch.table.btc_cg_clock_gating_enable.21 = select i1 %enable, ptr @switch.table.btc_cg_clock_gating_enable, ptr @switch.table.btc_cg_clock_gating_enable.21
  %switch.gep39 = getelementptr inbounds [3 x ptr], ptr %switch.table.btc_cg_clock_gating_enable.switch.table.btc_cg_clock_gating_enable.21, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load40 = load ptr, ptr %switch.gep39, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load40, i32 noundef %.)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc_mg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %1, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %if.end28, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.table.btc_mg_clock_gating_enable.switch.table.btc_mg_clock_gating_enable.22 = select i1 %enable, ptr @switch.table.btc_mg_clock_gating_enable, ptr @switch.table.btc_mg_clock_gating_enable.22
  %switch.gep39 = getelementptr inbounds [3 x ptr], ptr %switch.table.btc_mg_clock_gating_enable.switch.table.btc_mg_clock_gating_enable.22, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep39 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load40 = load ptr, ptr %switch.gep39, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load40, i32 noundef 10)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc_ls_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %1, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %if.end28, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.table.btc_ls_clock_gating_enable.23.switch.table.btc_ls_clock_gating_enable.25 = select i1 %enable, ptr @switch.table.btc_ls_clock_gating_enable.23, ptr @switch.table.btc_ls_clock_gating_enable.25
  %switch.table.btc_ls_clock_gating_enable.switch.table.btc_ls_clock_gating_enable.24 = select i1 %enable, ptr @switch.table.btc_ls_clock_gating_enable, ptr @switch.table.btc_ls_clock_gating_enable.24
  %switch.gep41 = getelementptr inbounds [3 x i32], ptr %switch.table.btc_ls_clock_gating_enable.switch.table.btc_ls_clock_gating_enable.24, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  %switch.gep43 = getelementptr inbounds [3 x ptr], ptr %switch.table.btc_ls_clock_gating_enable.23.switch.table.btc_ls_clock_gating_enable.25, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load44 = load ptr, ptr %switch.gep43, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load44, i32 noundef %switch.load42)
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_auto_throttle_source(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @btc_init_stutter_mode(ptr noundef %rdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %mclk_stutter_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 40
  %0 = ptrtoint ptr %mclk_stutter_mode_threshold to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk_stutter_mode_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then.if.end7_crit_edge, label %if.then2

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.then
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 10452
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %and = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then4, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %and5 = and i32 %7, -1013
  %or = or i32 %and5, 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %10, i32 10452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %8) #7, !srcloc !104
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then2.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_dpm_disable(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #7
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %call.i = tail call zeroext i1 @rv770_is_smc_running(ptr noundef %rdev) #7
  br i1 %call.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rv770_clear_vc(ptr noundef %rdev) #7
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %thermal_protection, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rv770_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext false) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @btc_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext false)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.end7.if.end14_crit_edge, label %land.lhs.true

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end7
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %6 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_thermal_type, align 4
  %call9 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %7) #7
  br i1 %call9, label %if.then10, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %8 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %irq12 = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq12, align 4
  %call13 = tail call i32 %12(ptr noundef %rdev) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %land.lhs.true.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gfx_clock_gating, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %15 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %family.i, align 4
  %switch.tableidx = add i32 %16, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %17 = icmp ult i32 %switch.tableidx, 3
  br i1 %17, label %switch.lookup, label %if.then16.if.end17_crit_edge

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

switch.lookup:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.btc_dpm_disable, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load, i32 noundef 50) #7
  br label %if.end17

if.end17:                                         ; preds = %switch.lookup, %if.then16.if.end17_crit_edge, %if.end14.if.end17_crit_edge
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 11
  %19 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mg_clock_gating, align 1, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  %family.i49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %21 = ptrtoint ptr %family.i49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %family.i49, align 4
  %switch.tableidx62 = add i32 %22, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx62)
  %23 = icmp ult i32 %switch.tableidx62, 3
  br i1 %23, label %switch.lookup61, label %if.then19.if.end20_crit_edge

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

switch.lookup61:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep63 = getelementptr inbounds [3 x ptr], ptr @switch.table.btc_dpm_disable.26, i32 0, i32 %switch.tableidx62
  %24 = ptrtoint ptr %switch.gep63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load64 = load ptr, ptr %switch.gep63, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load64, i32 noundef 10) #7
  br label %if.end20

if.end20:                                         ; preds = %switch.lookup61, %if.then19.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 11
  %25 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ls_clock_gating, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  br i1 %tobool21.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  %family.i54 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %27 = ptrtoint ptr %family.i54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %family.i54, align 4
  %switch.tableidx66 = add i32 %28, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx66)
  %29 = icmp ult i32 %switch.tableidx66, 3
  br i1 %29, label %switch.lookup65, label %if.then22.if.end23_crit_edge

if.then22.if.end23_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

switch.lookup65:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep67 = getelementptr inbounds [3 x i32], ptr @switch.table.btc_dpm_disable.27, i32 0, i32 %switch.tableidx66
  %30 = ptrtoint ptr %switch.gep67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load68 = load i32, ptr %switch.gep67, align 4
  %switch.gep69 = getelementptr inbounds [3 x ptr], ptr @switch.table.btc_dpm_disable.28, i32 0, i32 %switch.tableidx66
  %31 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load70 = load ptr, ptr %switch.gep69, align 4
  tail call void @btc_program_mgcg_hw_sequence(ptr noundef %rdev, ptr noundef nonnull %switch.load70, i32 noundef %switch.load68) #7
  br label %if.end23

if.end23:                                         ; preds = %switch.lookup65, %if.then22.if.end23_crit_edge, %if.end20.if.end23_crit_edge
  tail call void @rv770_stop_dpm(ptr noundef %rdev) #7
  %call.i59 = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 132) #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %32 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp5.i = icmp sgt i32 %33, 0
  br i1 %cmp5.i, label %if.end23.for.body.i_crit_edge, label %if.end23.btc_stop_smc.exit_crit_edge

if.end23.btc_stop_smc.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_stop_smc.exit

if.end23.for.body.i_crit_edge:                    ; preds = %if.end23
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end23.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end23.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 27432
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %37 = and i32 %36, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %37)
  %cmp1.not.i = icmp eq i32 %37, 16777216
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.btc_stop_smc.exit_crit_edge

for.body.i.btc_stop_smc.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_stop_smc.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %39 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %40
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.btc_stop_smc.exit_crit_edge

if.end.i.btc_stop_smc.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %btc_stop_smc.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

btc_stop_smc.exit:                                ; preds = %if.end.i.btc_stop_smc.exit_crit_edge, %for.body.i.btc_stop_smc.exit_crit_edge, %if.end23.btc_stop_smc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #7
  tail call void @r7xx_stop_smc(ptr noundef %rdev) #7
  tail call void @cypress_enable_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext false) #7
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %42 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %boot_ps, align 4
  %call.i60 = tail call ptr @rv770_get_ps(ptr noundef %43) #7
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %current_rps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25
  %44 = call ptr @memcpy(ptr %current_rps.i, ptr %43, i32 40)
  %current_ps.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 26
  %45 = call ptr @memcpy(ptr %current_ps.i, ptr %call.i60, i32 64)
  %ps_priv.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 25, i32 9
  %46 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %btc_stop_smc.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_clear_vc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_stop_dpm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %call1 = tail call i32 @ni_mc_load_microcode(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rv770_get_memory_type(ptr noundef %rdev) #7
  tail call void @rv740_read_clock_registers(ptr noundef %rdev) #7
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %bootup_arb_registers.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 21
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 10100
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !101
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %4 = ptrtoint ptr %bootup_arb_registers.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %bootup_arb_registers.i, align 4
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %6, i32 10104
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !101
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %mc_arb_dram_timing2.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %mc_arb_dram_timing2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mc_arb_dram_timing2.i, align 4
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %11, i32 10160
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #7, !srcloc !101
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %mc_arb_rfsh_rate.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 21, i32 2
  %14 = ptrtoint ptr %mc_arb_rfsh_rate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mc_arb_rfsh_rate.i, align 4
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %16, i32 10248
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #7, !srcloc !101
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %mc_arb_burst_time.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 21, i32 3
  %19 = ptrtoint ptr %mc_arb_burst_time.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mc_arb_burst_time.i, align 4
  tail call void @rv770_read_voltage_smio_registers(ptr noundef %rdev) #7
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 7
  %20 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pcie_performance_request, align 2, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not = icmp eq i8 %21, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cypress_advertise_gen2_capability(ptr noundef %rdev) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  tail call void @rv770_get_pcie_gen2_status(ptr noundef %rdev) #7
  tail call void @rv770_enable_acpi_pm(ptr noundef %rdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_mc_load_microcode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_memory_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv740_read_clock_registers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_read_voltage_smio_registers(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cypress_advertise_gen2_capability(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_pcie_gen2_status(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_acpi_pm(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_init(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #7
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 3752) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 4
  tail call void @rv770_get_max_vddc(ptr noundef %rdev) #7
  %ulv = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 22
  %3 = ptrtoint ptr %ulv to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %ulv, align 4
  %acpi_vddc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 36
  %4 = ptrtoint ptr %acpi_vddc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %acpi_vddc, align 8
  %acpi_vddci = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 14
  %5 = ptrtoint ptr %acpi_vddci to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %acpi_vddci, align 2
  %min_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 27
  %6 = ptrtoint ptr %min_vddc_in_table to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %min_vddc_in_table, align 4
  %max_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 26
  %7 = ptrtoint ptr %max_vddc_in_table to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %max_vddc_in_table, align 2
  %call1 = tail call i32 @r600_get_platform_caps(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @rv7xx_parse_power_table(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @r600_parse_extended_power_table(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #10
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %9 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %entries, align 4
  %tobool20.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @r600_free_extended_power_table(ptr noundef %rdev) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %vddc_dependency_on_dispclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4
  %10 = ptrtoint ptr %vddc_dependency_on_dispclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %vddc_dependency_on_dispclk, align 4
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call7.i.i.i, align 8
  %v = getelementptr inbounds %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %v, align 4
  %arrayidx43 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 36000, ptr %arrayidx43, align 8
  %v51 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 1, i32 1
  %14 = ptrtoint ptr %v51 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 800, ptr %v51, align 4
  %arrayidx57 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 2
  %15 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 54000, ptr %arrayidx57, align 8
  %v65 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 2, i32 1
  %16 = ptrtoint ptr %v65 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 800, ptr %v65, align 4
  %arrayidx71 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 3
  %17 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 72000, ptr %arrayidx71, align 8
  %v79 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %call7.i.i.i, i32 3, i32 1
  %18 = ptrtoint ptr %v79 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 800, ptr %v79, align 4
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %19 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %voltage_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp82 = icmp eq i32 %20, 0
  br i1 %cmp82, label %if.then83, label %if.end22.if.end87_crit_edge

if.end22.if.end87_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then83:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1000, ptr %voltage_response_time, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end22.if.end87_crit_edge
  %backbias_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %22 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %backbias_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp90 = icmp eq i32 %23, 0
  br i1 %cmp90, label %if.then91, label %if.end87.if.end95_crit_edge

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1000, ptr %backbias_response_time, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end87.if.end95_crit_edge
  %call96 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %dividers) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end95.if.end101_crit_edge, label %if.then98

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %25 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ref_div, align 4
  %add = add i32 %26, 1
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end95.if.end101_crit_edge
  %add.sink = phi i32 [ %add, %if.then98 ], [ 4, %if.end95.if.end101_crit_edge ]
  %27 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 38
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add.sink, ptr %27, align 4
  %mclk_strobe_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 41
  %29 = ptrtoint ptr %mclk_strobe_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 40000, ptr %mclk_strobe_mode_threshold, align 8
  %mclk_edc_enable_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 42
  %30 = ptrtoint ptr %mclk_edc_enable_threshold to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 40000, ptr %mclk_edc_enable_threshold, align 4
  %mclk_edc_wr_enable_threshold = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 17
  %31 = ptrtoint ptr %mclk_edc_wr_enable_threshold to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 40000, ptr %mclk_edc_wr_enable_threshold, align 4
  %rlp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 53
  %32 = ptrtoint ptr %rlp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 10, ptr %rlp, align 8
  %rmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 54
  %33 = ptrtoint ptr %rmp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 25, ptr %rmp, align 4
  %lhp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 55
  %34 = ptrtoint ptr %lhp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 25, ptr %lhp, align 8
  %lmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 56
  %35 = ptrtoint ptr %lmp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10, ptr %lmp, align 4
  %ats = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23
  %36 = ptrtoint ptr %ats to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 10, ptr %ats, align 4
  %rmp106 = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 1
  %37 = ptrtoint ptr %rmp106 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 25, ptr %rmp106, align 8
  %lhp109 = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 2
  %38 = ptrtoint ptr %lhp109 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 25, ptr %lhp109, align 4
  %lmp112 = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 0, i32 3
  %39 = ptrtoint ptr %lmp112 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10, ptr %lmp112, align 8
  %arrayidx114 = getelementptr %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 1
  %40 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 20, ptr %arrayidx114, align 4
  %rmp118 = getelementptr %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 1, i32 1
  %41 = ptrtoint ptr %rmp118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 50, ptr %rmp118, align 8
  %lhp121 = getelementptr %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 1, i32 2
  %42 = ptrtoint ptr %lhp121 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 50, ptr %lhp121, align 4
  %lmp124 = getelementptr %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 23, i32 1, i32 3
  %43 = ptrtoint ptr %lmp124 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 20, ptr %lmp124, align 8
  %smu_uvd_hs = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 12
  %44 = ptrtoint ptr %smu_uvd_hs to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %smu_uvd_hs, align 1
  %call125 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 1, i8 noundef zeroext 0) #7
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 5
  %frombool = zext i1 %call125 to i8
  %45 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool, ptr %voltage_control, align 1
  %call126 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 2, i8 noundef zeroext 0) #7
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 6
  %frombool127 = zext i1 %call126 to i8
  %46 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %frombool127, ptr %mvdd_control, align 2
  %call128 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 4, i8 noundef zeroext 0) #7
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 1
  %frombool129 = zext i1 %call128 to i8
  %47 = ptrtoint ptr %vddci_control to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %frombool129, ptr %vddci_control, align 8
  call void @rv770_get_engine_memory_ss(ptr noundef %rdev) #7
  %asi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 49
  %48 = ptrtoint ptr %asi to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1000, ptr %asi, align 8
  %pasi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 50
  %49 = ptrtoint ptr %pasi to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 400000, ptr %pasi, align 4
  %vrc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 51
  %50 = ptrtoint ptr %vrc to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 12582963, ptr %vrc, align 8
  %power_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 13
  %51 = ptrtoint ptr %power_gating to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %power_gating, align 1
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 10
  %52 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %gfx_clock_gating, align 2
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 11
  %53 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %mg_clock_gating, align 1
  %mgcgtssm = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 12
  %54 = ptrtoint ptr %mgcgtssm to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %mgcgtssm, align 4
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 11
  %55 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ls_clock_gating, align 2
  %sclk_deep_sleep = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 9
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %dynamic_pcie_gen2, align 2
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %57 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %int_thermal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp131.not = icmp ne i32 %58, 0
  %spec.select = zext i1 %cmp131.not to i8
  %59 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 14
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %spec.select, ptr %59, align 2
  %display_gap = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 15
  %61 = ptrtoint ptr %display_gap to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %display_gap, align 1
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 8
  %and = lshr i32 %63, 16
  %64 = trunc i32 %and to i8
  %65 = and i8 %64, 1
  %66 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 16
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %65, ptr %66, align 8
  %ulps = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 17
  %68 = ptrtoint ptr %ulps to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %ulps, align 1
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 2
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 7
  %69 = call ptr @memset(ptr %dynamic_ac_timing, i32 1, i32 5)
  %70 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %pcie_performance_request, align 2
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %71 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %72)
  %cmp141 = icmp eq i32 %72, 47
  %.sink369 = zext i1 %cmp141 to i8
  %73 = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 10
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %.sink369, ptr %73, align 1
  %75 = ptrtoint ptr %sclk_deep_sleep to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %sclk_deep_sleep, align 8
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %device, align 2
  %80 = zext i16 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %79, label %if.else191 [
    i16 26697, label %if.end101.if.end193_crit_edge
    i16 26704, label %if.end101.if.end193_crit_edge371
    i16 26712, label %if.end101.if.end193_crit_edge372
    i16 26713, label %if.end101.if.end193_crit_edge373
    i16 26688, label %if.end101.if.end193_crit_edge374
    i16 26689, label %if.end101.if.end193_crit_edge375
    i16 26690, label %if.end101.if.end193_crit_edge376
    i16 26691, label %if.end101.if.end193_crit_edge377
  ]

if.end101.if.end193_crit_edge377:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge376:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge375:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge374:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge373:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge372:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge371:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end101.if.end193_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.else191:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.end193:                                        ; preds = %if.else191, %if.end101.if.end193_crit_edge, %if.end101.if.end193_crit_edge371, %if.end101.if.end193_crit_edge372, %if.end101.if.end193_crit_edge373, %if.end101.if.end193_crit_edge374, %if.end101.if.end193_crit_edge375, %if.end101.if.end193_crit_edge376, %if.end101.if.end193_crit_edge377
  %.sink = phi i32 [ 0, %if.else191 ], [ 30000, %if.end101.if.end193_crit_edge ], [ 30000, %if.end101.if.end193_crit_edge371 ], [ 30000, %if.end101.if.end193_crit_edge372 ], [ 30000, %if.end101.if.end193_crit_edge373 ], [ 30000, %if.end101.if.end193_crit_edge374 ], [ 30000, %if.end101.if.end193_crit_edge375 ], [ 30000, %if.end101.if.end193_crit_edge376 ], [ 30000, %if.end101.if.end193_crit_edge377 ]
  %mclk_stutter_mode_threshold192 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 40
  %81 = ptrtoint ptr %mclk_stutter_mode_threshold192 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %.sink, ptr %mclk_stutter_mode_threshold192, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 59
  %82 = ptrtoint ptr %sram_end to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -32768, ptr %sram_end, align 4
  %mclk_sclk_ratio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 13
  %83 = ptrtoint ptr %mclk_sclk_ratio to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %mclk_sclk_ratio, align 4
  %vddc_vddci_delta = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 15
  %84 = ptrtoint ptr %vddc_vddci_delta to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 200, ptr %vddc_vddci_delta, align 4
  %min_vddc_for_pcie_gen2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 16
  %85 = ptrtoint ptr %min_vddc_for_pcie_gen2 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 900, ptr %min_vddc_for_pcie_gen2, align 2
  %valid_sclk_values = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9
  %86 = ptrtoint ptr %valid_sclk_values to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 40, ptr %valid_sclk_values, align 4
  %values = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 9, i32 1
  %87 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @btc_valid_sclk, ptr %values, align 4
  %valid_mclk_values = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10
  %88 = ptrtoint ptr %valid_mclk_values to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %valid_mclk_values, align 4
  %values219 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 10, i32 1
  %89 = ptrtoint ptr %values219 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %values219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %72)
  %cmp221 = icmp eq i32 %72, 48
  %.sink370 = select i1 %cmp221, i32 15000, i32 10000
  %90 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 14
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink370, ptr %90, align 4
  %max_clock_voltage_on_dc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11
  %92 = ptrtoint ptr %max_clock_voltage_on_dc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_clock_voltage_on_dc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp236 = icmp eq i32 %93, 0
  br i1 %cmp236, label %if.end193.if.then245_crit_edge, label %lor.lhs.false238

if.end193.if.then245_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then245

lor.lhs.false238:                                 ; preds = %if.end193
  %mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 1
  %94 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp243 = icmp eq i32 %95, 0
  br i1 %cmp243, label %lor.lhs.false238.if.then245_crit_edge, label %lor.lhs.false238.cleanup_crit_edge

lor.lhs.false238.cleanup_crit_edge:               ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false238.if.then245_crit_edge:            ; preds = %lor.lhs.false238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then245

if.then245:                                       ; preds = %lor.lhs.false238.if.then245_crit_edge, %if.end193.if.then245_crit_edge
  %max_clock_voltage_on_ac = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %96 = call ptr @memcpy(ptr %max_clock_voltage_on_dc, ptr %max_clock_voltage_on_ac, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.then245, %lor.lhs.false238.cleanup_crit_edge, %if.then21, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.then245 ], [ 0, %lor.lhs.false238.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_max_vddc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv7xx_parse_power_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_parse_extended_power_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_free_extended_power_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_engine_memory_ss(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_dpm_fini(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @kfree(ptr noundef %5) #7
  %inc = add nuw nsw i32 %i.018, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #7
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #7
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 4, i32 1
  %12 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %13) #7
  tail call void @r600_free_extended_power_table(ptr noundef %rdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @btc_dpm_debugfs_print_current_performance_level(ptr noundef %rdev, ptr noundef %m) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25
  %call1 = tail call ptr @rv770_get_ps(ptr noundef %current_rps) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1644
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  %3 = lshr i32 %2, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %2)
  %cmp = icmp ugt i32 %2, 805306367
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %3) #7
  br label %if.end11

if.else:                                          ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %if.else.if.end9_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then7
  ]

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 2
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4, %if.else.if.end9_crit_edge
  %pl.0 = phi ptr [ %low, %if.then4 ], [ %medium, %if.then7 ], [ %call1, %if.else.if.end9_crit_edge ]
  %vclk = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 3
  %5 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25, i32 4
  %7 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %6, i32 noundef %8) #7
  %9 = ptrtoint ptr %pl.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pl.0, align 4
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 1
  %11 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mclk, align 4
  %vddc = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 2
  %13 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vddc, align 4
  %conv = zext i16 %14 to i32
  %vddci = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 3
  %15 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vddci, align 2
  %conv10 = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i32 noundef %3, i32 noundef %10, i32 noundef %12, i32 noundef %conv, i32 noundef %conv10) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_ps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_get_current_sclk(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25
  %call1 = tail call ptr @rv770_get_ps(ptr noundef %current_rps) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1644
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %2)
  %cmp = icmp ugt i32 %2, 805306367
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = lshr i32 %2, 28
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %if.else.if.end9_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then7
  ]

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 2
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4, %if.else.if.end9_crit_edge
  %pl.0 = phi ptr [ %low, %if.then4 ], [ %medium, %if.then7 ], [ %call1, %if.else.if.end9_crit_edge ]
  %5 = ptrtoint ptr %pl.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pl.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_get_current_mclk(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %current_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 25
  %call1 = tail call ptr @rv770_get_ps(ptr noundef %current_rps) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1644
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306367, i32 %2)
  %cmp = icmp ugt i32 %2, 805306367
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = lshr i32 %2, 28
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %if.else.if.end9_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then7
  ]

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 2
  br label %if.end9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 1
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4, %if.else.if.end9_crit_edge
  %pl.0 = phi ptr [ %low, %if.then4 ], [ %medium, %if.then7 ], [ %call1, %if.else.if.end9_crit_edge ]
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl.0, i32 0, i32 1
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end9 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_get_sclk(ptr noundef %rdev, i1 noundef zeroext %low) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %call1 = tail call ptr @rv770_get_ps(ptr noundef %requested_rps) #7
  %low2 = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 2
  %retval.0.in = select i1 %low, ptr %low2, ptr %call1
  %0 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btc_dpm_get_mclk(ptr noundef %rdev, i1 noundef zeroext %low) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #7
  %requested_rps = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 27
  %call1 = tail call ptr @rv770_get_ps(ptr noundef %requested_rps) #7
  %low2 = getelementptr inbounds %struct.rv7xx_ps, ptr %call1, i32 0, i32 2
  %low2.pn = select i1 %low, ptr %low2, ptr %call1
  %retval.0.in = getelementptr inbounds %struct.rv7xx_pl, ptr %low2.pn, i32 0, i32 1
  %0 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_engine_dram_timings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_calculate_memory_refresh_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_calculate_burst_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_get_memory_module_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_init_mc_reg_table(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_populate_smc_voltage_tables(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_populate_smc_initial_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_copy_bytes_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_populate_smc_acpi_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_convert_power_level_to_smc(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r7xx_stop_smc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @btc_valid_sclk, !1, !"btc_valid_sclk", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1157, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2312, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2321, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2329, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2335, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2344, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2349, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2359, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2397, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2405, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2439, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2444, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2454, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2463, i32 3}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2537, i32 3}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2745, i32 17}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2753, i32 17}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 2754, i32 17}
!36 = distinct !{null, !37, !"btc_blacklist_clocks", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1165, i32 45}
!38 = !{ptr @barts_cgcg_cgls_default, !39, !"barts_cgcg_cgls_default", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 56, i32 18}
!40 = !{ptr @turks_cgcg_cgls_default, !41, !"turks_cgcg_cgls_default", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 674, i32 18}
!42 = !{ptr @caicos_cgcg_cgls_default, !43, !"caicos_cgcg_cgls_default", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 400, i32 18}
!44 = !{ptr @barts_mgcg_default, !45, !"barts_mgcg_default", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 220, i32 18}
!46 = !{ptr @turks_mgcg_default, !47, !"turks_mgcg_default", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 838, i32 18}
!48 = !{ptr @caicos_mgcg_default, !49, !"caicos_mgcg_default", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 563, i32 18}
!50 = !{ptr @barts_sysls_default, !51, !"barts_sysls_default", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 975, i32 18}
!52 = !{ptr @turks_sysls_default, !53, !"turks_sysls_default", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1095, i32 18}
!54 = !{ptr @caicos_sysls_default, !55, !"caicos_sysls_default", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1037, i32 18}
!56 = !{ptr @barts_cgcg_cgls_enable, !57, !"barts_cgcg_cgls_enable", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 165, i32 18}
!58 = !{ptr @turks_cgcg_cgls_enable, !59, !"turks_cgcg_cgls_enable", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 782, i32 18}
!60 = !{ptr @caicos_cgcg_cgls_enable, !61, !"caicos_cgcg_cgls_enable", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 508, i32 18}
!62 = !{ptr @barts_cgcg_cgls_disable, !63, !"barts_cgcg_cgls_disable", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 110, i32 18}
!64 = !{ptr @turks_cgcg_cgls_disable, !65, !"turks_cgcg_cgls_disable", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 727, i32 18}
!66 = !{ptr @caicos_cgcg_cgls_disable, !67, !"caicos_cgcg_cgls_disable", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 453, i32 18}
!68 = !{ptr @barts_mgcg_enable, !69, !"barts_mgcg_enable", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 384, i32 18}
!70 = !{ptr @turks_mgcg_enable, !71, !"turks_mgcg_enable", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 953, i32 18}
!72 = !{ptr @caicos_mgcg_enable, !73, !"caicos_mgcg_enable", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 658, i32 18}
!74 = !{ptr @barts_mgcg_disable, !75, !"barts_mgcg_disable", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 369, i32 18}
!76 = !{ptr @turks_mgcg_disable, !77, !"turks_mgcg_disable", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 938, i32 18}
!78 = !{ptr @caicos_mgcg_disable, !79, !"caicos_mgcg_disable", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 643, i32 18}
!80 = !{ptr @barts_sysls_enable, !81, !"barts_sysls_enable", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1016, i32 18}
!82 = !{ptr @turks_sysls_enable, !83, !"turks_sysls_enable", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1135, i32 18}
!84 = !{ptr @caicos_sysls_enable, !85, !"caicos_sysls_enable", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1075, i32 18}
!86 = !{ptr @barts_sysls_disable, !87, !"barts_sysls_disable", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 996, i32 18}
!88 = !{ptr @turks_sysls_disable, !89, !"turks_sysls_disable", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1115, i32 18}
!90 = !{ptr @caicos_sysls_disable, !91, !"caicos_sysls_disable", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/btc_dpm.c", i32 1056, i32 18}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 5065997}
!102 = !{i64 2158346936}
!103 = !{i64 2158347343}
!104 = !{i64 5065579}
!105 = !{i8 0, i8 2}
