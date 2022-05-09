; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/cypress_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/cypress_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.rv7xx_pl = type { i32, i32, i16, i16, i32, i32 }
%struct.evergreen_power_info = type { %struct.rv7xx_power_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, %struct.evergreen_mc_reg_table, %struct.atom_voltage_table, %struct.atom_voltage_table, %struct.evergreen_arb_registers, %struct.evergreen_ulv_param, [2 x %struct.at], i16, %struct.radeon_ps, %struct.rv7xx_ps, %struct.radeon_ps, %struct.rv7xx_ps }
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
%struct.atom_clock_dividers = type { i32, %union.anon.110, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.110 = type { %struct.anon.111 }
%struct.anon.111 = type { i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.SMC_Evergreen_MCRegisters = type { i8, [3 x i8], [16 x %struct.SMC_Evergreen_MCRegisterAddress], [5 x %struct.SMC_Evergreen_MCRegisterSet] }
%struct.SMC_Evergreen_MCRegisterSet = type { [16 x i32] }
%struct.atom_memory_info = type { i8, i8 }
%struct.atom_memory_clock_range_table = type { i8, [3 x i8], [16 x i32] }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cypress_construct_voltage_tables failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rv770_upload_firmware failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cypress_get_table_locations failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cypress_init_smc_table failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cypress_populate_mc_reg_table failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cypress_notify_smc_display_change failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"rv770_restrict_performance_levels_before_switch failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv770_halt_smc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cypress_upload_sw_state failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cypress_upload_mc_reg_table failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rv770_resume_smc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rv770_set_sw_state failed\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.cypress_wait_for_mc_sequencer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 2, i32 4, i32 4], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 26688, i64 26689, i64 26690, i64 26691, i64 26697, i64 26704, i64 26712, i64 26713]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 10]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1819, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1864, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1870, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1875, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1881, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1892, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1962, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1971, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1976, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1982, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1991, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/cypress_dpm.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1996, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [43 x i8] c"switch.table.cypress_wait_for_mc_sequencer\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.cypress_wait_for_mc_sequencer], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cypress_wait_for_mc_sequencer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_enable_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  br i1 %enable, label %if.then, label %do.body14

if.then:                                          ; preds = %entry
  %sclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %sclk_ss to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sclk_ss, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %do.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1596
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %5 = or i32 %4, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %7, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %5) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then.if.end_crit_edge
  %mclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 8
  %8 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mclk_ss, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.if.end42_crit_edge, label %do.body6

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i74 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i74 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i74, align 4
  %add.ptr.i75 = getelementptr i8, ptr %11, i32 1564
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %13 = or i32 %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %rmmio.i74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i74, align 4
  %add.ptr.i79 = getelementptr i8, ptr %15, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %13) #6, !srcloc !39
  br label %if.end42

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i82 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i83 = getelementptr i8, ptr %17, i32 1936
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i87 = getelementptr i8, ptr %21, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %19) #6, !srcloc !39
  %22 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i91 = getelementptr i8, ptr %23, i32 1596
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %25 = and i32 %24, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i95 = getelementptr i8, ptr %27, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %25) #6, !srcloc !39
  %28 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i99 = getelementptr i8, ptr %29, i32 1564
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %31 = and i32 %30, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i103 = getelementptr i8, ptr %33, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %31) #6, !srcloc !39
  %34 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i107 = getelementptr i8, ptr %35, i32 1564
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %37 = and i32 %36, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i111 = getelementptr i8, ptr %39, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %37) #6, !srcloc !39
  br label %if.end42

if.end42:                                         ; preds = %do.body14, %do.body6, %if.end.if.end42_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_pi(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_start_dpm(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1596
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %3) #6, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_enable_sclk_control(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1604
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #6, !srcloc !39
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_enable_mclk_control(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1608
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = and i32 %2, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #6, !srcloc !39
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_notify_smc_display_change(ptr noundef %rdev, i1 noundef zeroext %has_display) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %has_display, i16 94, i16 93
  %call = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call)
  %cmp.not = icmp eq i8 %call, 1
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_send_msg_to_smc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_program_response_times(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_xclk, align 4
  %call = tail call i32 %3(ptr noundef %rdev) #6
  %mul = mul i32 %call, 460
  %div = udiv i32 %mul, 100
  %call1 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 120, i32 noundef %div) #6
  %call2 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 104, i32 noundef 1) #6
  %call3 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 144, i32 noundef 170) #6
  tail call void @rv770_program_response_times(ptr noundef %rdev) #6
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.if.end_crit_edge [
    i16 26697, label %entry.if.then_crit_edge
    i16 26704, label %entry.if.then_crit_edge61
    i16 26712, label %entry.if.then_crit_edge62
    i16 26713, label %entry.if.then_crit_edge63
    i16 26688, label %entry.if.then_crit_edge64
    i16 26689, label %entry.if.then_crit_edge65
    i16 26690, label %entry.if.then_crit_edge66
    i16 26691, label %entry.if.then_crit_edge67
  ]

entry.if.then_crit_edge67:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge66:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge65:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge63:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge62:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge61:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge61, %entry.if.then_crit_edge62, %entry.if.then_crit_edge63, %entry.if.then_crit_edge64, %entry.if.then_crit_edge65, %entry.if.then_crit_edge66, %entry.if.then_crit_edge67
  %call46 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 160, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_write_smc_soft_register(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_response_times(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_advertise_gen2_capability(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %pciep_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %0 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pciep_rreg, align 4
  %call1 = tail call i32 %1(ptr noundef %rdev, i32 noundef 164) #6
  %2 = and i32 %call1, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %2)
  %.not = icmp eq i32 %2, 25165824
  %3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 1
  br i1 %.not, label %if.end.thread, label %if.then7

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %3, align 1
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %7 = ptrtoint ptr %pciep_rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pciep_rreg, align 4
  %call.i = tail call i32 %8(ptr noundef %rdev, i32 noundef 164) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_notify_link_speed_change_after_state_change(ptr noundef %rdev, ptr noundef %radeon_new_state, ptr noundef %radeon_current_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rv770_get_ps(ptr noundef %radeon_new_state) #6
  %flags.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  %call.i12 = tail call ptr @rv770_get_ps(ptr noundef %radeon_current_state) #6
  %flags.i13 = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i12, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i13, align 4
  %and.i14 = and i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i14)
  %cmp = icmp ult i32 %and.i, %and.i14
  br i1 %cmp, label %if.end7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %5 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i15 = tail call i32 %6(ptr noundef %rdev, i32 noundef 164) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_notify_link_speed_change_before_state_change(ptr noundef %rdev, ptr noundef %radeon_new_state, ptr noundef %radeon_current_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rv770_get_ps(ptr noundef %radeon_new_state) #6
  %flags.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  %call.i12 = tail call ptr @rv770_get_ps(ptr noundef %radeon_current_state) #6
  %flags.i13 = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i12, i32 0, i32 4
  %2 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i13, align 4
  %and.i14 = and i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i14)
  %cmp = icmp ugt i32 %and.i, %and.i14
  br i1 %cmp, label %if.end7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %5 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i15 = tail call i32 %6(ptr noundef %rdev, i32 noundef 164) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @cypress_get_strobe_mode_settings(ptr noundef %rdev, i32 noundef %mclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %mclk_strobe_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 41
  %2 = ptrtoint ptr %mclk_strobe_mode_threshold to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk_strobe_mode_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mclk)
  %cmp.not = icmp ult i32 %3, %mclk
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %5)
  %cmp.i = icmp ugt i32 %5, 46
  br i1 %cmp.i, label %if.then.i, label %if.else23.i

if.then.i:                                        ; preds = %if.then
  br i1 %cmp.not, label %if.else8.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %mclk)
  %cmp2.i = icmp ult i32 %mclk, 10000
  br i1 %cmp2.i, label %if.then1.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else.i

if.then1.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %mclk)
  %cmp4.i = icmp ugt i32 %mclk, 47500
  br i1 %cmp4.i, label %if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else6.i

if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = trunc i32 %mclk to i16
  %div.lhs.trunc.i = add i16 %6, -10000
  %div67.i = udiv i16 %div.lhs.trunc.i, 2500
  %conv.i = trunc i16 %div67.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %mclk)
  %cmp9.i = icmp ult i32 %mclk, 65000
  br i1 %cmp9.i, label %if.else8.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else12.i

if.else8.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %mclk)
  %cmp13.i = icmp ugt i32 %mclk, 135000
  br i1 %cmp13.i, label %if.else12.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else16.i

if.else12.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i = add nsw i32 %mclk, -60000
  %div18.i = udiv i32 %sub17.i, 5000
  %conv19.i = trunc i32 %div18.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else23.i:                                      ; preds = %if.then
  br i1 %cmp.not, label %if.else39.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %mclk)
  %cmp26.i = icmp ult i32 %mclk, 10000
  br i1 %cmp26.i, label %if.then25.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else29.i

if.then25.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else29.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %mclk)
  %cmp30.i = icmp ugt i32 %mclk, 47500
  br i1 %cmp30.i, label %if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else33.i

if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else33.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = trunc i32 %mclk to i16
  %div35.lhs.trunc.i = add i16 %7, -10000
  %div3568.i = udiv i16 %div35.lhs.trunc.i, 2500
  %conv36.i = trunc i16 %div3568.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else39.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %mclk)
  %cmp40.i = icmp ult i32 %mclk, 40000
  br i1 %cmp40.i, label %if.else39.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else43.i

if.else39.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else43.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %mclk)
  %cmp44.i = icmp ugt i32 %mclk, 115000
  br i1 %cmp44.i, label %if.else43.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else47.i

if.else43.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else47.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub48.i = add nsw i32 %mclk, -40000
  %div49.i = udiv i32 %sub48.i, 5000
  %conv50.i = trunc i32 %div49.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit

cypress_get_mclk_frequency_ratio.exit:            ; preds = %if.else47.i, %if.else43.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else39.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else33.i, %if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.then25.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else16.i, %if.else12.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else8.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else6.i, %if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.then1.i.cypress_get_mclk_frequency_ratio.exit_crit_edge
  %mc_para_index.0.i = phi i8 [ %conv.i, %if.else6.i ], [ %conv19.i, %if.else16.i ], [ %conv36.i, %if.else33.i ], [ %conv50.i, %if.else47.i ], [ 0, %if.then1.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 15, %if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 0, %if.else8.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 15, %if.else12.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 0, %if.then25.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 15, %if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 0, %if.else39.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 15, %if.else43.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ]
  %8 = or i8 %mc_para_index.0.i, 16
  %spec.select = select i1 %cmp.not, i8 %mc_para_index.0.i, i8 %8
  br label %if.end8

if.end8:                                          ; preds = %cypress_get_mclk_frequency_ratio.exit, %entry.if.end8_crit_edge
  %result.0 = phi i8 [ 0, %entry.if.end8_crit_edge ], [ %spec.select, %cypress_get_mclk_frequency_ratio.exit ]
  ret i8 %result.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cypress_get_mclk_frequency_ratio(ptr nocapture noundef readonly %rdev, i32 noundef %memory_clock, i1 noundef zeroext %strobe_mode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %1)
  %cmp = icmp ugt i32 %1, 46
  br i1 %cmp, label %if.then, label %if.else23

if.then:                                          ; preds = %entry
  br i1 %strobe_mode, label %if.then1, label %if.else8

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %memory_clock)
  %cmp2 = icmp ult i32 %memory_clock, 10000
  br i1 %cmp2, label %if.then1.if.end54_crit_edge, label %if.else

if.then1.if.end54_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %memory_clock)
  %cmp4 = icmp ugt i32 %memory_clock, 47500
  br i1 %cmp4, label %if.else.if.end54_crit_edge, label %if.else6

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %2 = trunc i32 %memory_clock to i16
  %div.lhs.trunc = add i16 %2, -10000
  %div67 = udiv i16 %div.lhs.trunc, 2500
  %conv = trunc i16 %div67 to i8
  br label %if.end54

if.else8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %memory_clock)
  %cmp9 = icmp ult i32 %memory_clock, 65000
  br i1 %cmp9, label %if.else8.if.end54_crit_edge, label %if.else12

if.else8.if.end54_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %memory_clock)
  %cmp13 = icmp ugt i32 %memory_clock, 135000
  br i1 %cmp13, label %if.else12.if.end54_crit_edge, label %if.else16

if.else12.if.end54_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  %sub17 = add nsw i32 %memory_clock, -60000
  %div18 = udiv i32 %sub17, 5000
  %conv19 = trunc i32 %div18 to i8
  br label %if.end54

if.else23:                                        ; preds = %entry
  br i1 %strobe_mode, label %if.then25, label %if.else39

if.then25:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %memory_clock)
  %cmp26 = icmp ult i32 %memory_clock, 10000
  br i1 %cmp26, label %if.then25.if.end54_crit_edge, label %if.else29

if.then25.if.end54_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %memory_clock)
  %cmp30 = icmp ugt i32 %memory_clock, 47500
  br i1 %cmp30, label %if.else29.if.end54_crit_edge, label %if.else33

if.else29.if.end54_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  %3 = trunc i32 %memory_clock to i16
  %div35.lhs.trunc = add i16 %3, -10000
  %div3568 = udiv i16 %div35.lhs.trunc, 2500
  %conv36 = trunc i16 %div3568 to i8
  br label %if.end54

if.else39:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %memory_clock)
  %cmp40 = icmp ult i32 %memory_clock, 40000
  br i1 %cmp40, label %if.else39.if.end54_crit_edge, label %if.else43

if.else39.if.end54_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %memory_clock)
  %cmp44 = icmp ugt i32 %memory_clock, 115000
  br i1 %cmp44, label %if.else43.if.end54_crit_edge, label %if.else47

if.else43.if.end54_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.else47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %sub48 = add nsw i32 %memory_clock, -40000
  %div49 = udiv i32 %sub48, 5000
  %conv50 = trunc i32 %div49 to i8
  br label %if.end54

if.end54:                                         ; preds = %if.else47, %if.else43.if.end54_crit_edge, %if.else39.if.end54_crit_edge, %if.else33, %if.else29.if.end54_crit_edge, %if.then25.if.end54_crit_edge, %if.else16, %if.else12.if.end54_crit_edge, %if.else8.if.end54_crit_edge, %if.else6, %if.else.if.end54_crit_edge, %if.then1.if.end54_crit_edge
  %mc_para_index.0 = phi i8 [ %conv, %if.else6 ], [ %conv19, %if.else16 ], [ %conv36, %if.else33 ], [ %conv50, %if.else47 ], [ 0, %if.then1.if.end54_crit_edge ], [ 15, %if.else.if.end54_crit_edge ], [ 0, %if.else8.if.end54_crit_edge ], [ 15, %if.else12.if.end54_crit_edge ], [ 0, %if.then25.if.end54_crit_edge ], [ 15, %if.else29.if.end54_crit_edge ], [ 0, %if.else39.if.end54_crit_edge ], [ 15, %if.else43.if.end54_crit_edge ]
  ret i8 %mc_para_index.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cypress_map_clkf_to_ibias(ptr nocapture noundef readonly %rdev, i32 noundef %clkf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mpll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %0 = ptrtoint ptr %mpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll, align 4
  %mul = mul i32 %1, %clkf
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %1)
  %cmp = icmp eq i32 %1, 10000
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %mul)
  %cmp1 = icmp ugt i32 %mul, 500000
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %mul)
  %cmp3 = icmp ugt i32 %mul, 400000
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 330000, i32 %mul)
  %cmp6 = icmp ugt i32 %mul, 330000
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %mul)
  %cmp9 = icmp ugt i32 %mul, 250000
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000, i32 %mul)
  %cmp12 = icmp ugt i32 %mul, 160000
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %mul)
  %cmp15 = icmp ugt i32 %mul, 120000
  %. = select i1 %cmp15, i32 10, i32 75
  br label %cleanup

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %mul)
  %cmp19 = icmp ugt i32 %mul, 250000
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %mul)
  %cmp22 = icmp ugt i32 %mul, 200000
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %mul)
  %cmp25 = icmp ugt i32 %mul, 150000
  %.38 = select i1 %cmp25, i32 155, i32 107
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 198, %if.then.cleanup_crit_edge ], [ 157, %if.end.cleanup_crit_edge ], [ 108, %if.end5.cleanup_crit_edge ], [ 43, %if.end8.cleanup_crit_edge ], [ 91, %if.end11.cleanup_crit_edge ], [ %., %if.end14 ], [ 139, %if.end18.cleanup_crit_edge ], [ 204, %if.end21.cleanup_crit_edge ], [ %.38, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_convert_power_level_to_smc(ptr noundef %rdev, ptr nocapture noundef readonly %pl, ptr noundef %level, i8 noundef zeroext %watermark_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_gen2, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond3 = phi i8 [ %5, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %gen2PCIE = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 3
  %6 = ptrtoint ptr %gen2PCIE to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cond3, ptr %gen2PCIE, align 1
  %flags4 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 4
  %7 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags4, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %gen2XSP = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 4
  %11 = ptrtoint ptr %gen2XSP to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %gen2XSP, align 1
  %12 = load i32, ptr %flags4, align 4
  %13 = trunc i32 %12 to i8
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 1
  %backbias = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 5
  %16 = ptrtoint ptr %backbias to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %backbias, align 1
  %displayWatermark = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 2
  %17 = ptrtoint ptr %displayWatermark to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %watermark_level, ptr %displayWatermark, align 1
  %18 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pl, align 4
  %sclk14 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 10
  %call15 = tail call i32 @rv740_populate_sclk_value(ptr noundef %rdev, i32 noundef %19, ptr noundef %sclk14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %mcFlags = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 7
  %20 = ptrtoint ptr %mcFlags to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %mcFlags, align 1
  %mclk_stutter_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 40
  %21 = ptrtoint ptr %mclk_stutter_mode_threshold to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mclk_stutter_mode_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.not = icmp eq i32 %22, 0
  br i1 %tobool17.not, label %if.end.if.end36_crit_edge, label %land.lhs.true

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end
  %mclk = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %23 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not = icmp ugt i32 %24, %22
  br i1 %cmp.not, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true20

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true20:                                  ; preds = %land.lhs.true
  %uvd_enabled = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 13
  %25 = ptrtoint ptr %uvd_enabled to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %uvd_enabled, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not = icmp eq i8 %26, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true20.if.end36_crit_edge

land.lhs.true20.if.end36_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %mcFlags to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %mcFlags, align 1
  %sclk_deep_sleep = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 9
  %28 = ptrtoint ptr %sclk_deep_sleep to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sclk_deep_sleep, align 4, !range !35
  %stateFlags31 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 17
  %30 = ptrtoint ptr %stateFlags31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %stateFlags31, align 1
  %32 = and i8 %31, -2
  %.sink = or i8 %32, %29
  store i8 %.sink, ptr %stateFlags31, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then22, %land.lhs.true20.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool37.not = icmp eq i8 %34, 0
  %mclk103 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %35 = ptrtoint ptr %mclk103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mclk103, align 4
  br i1 %tobool37.not, label %if.else101, label %if.then38

if.then38:                                        ; preds = %if.end36
  %mclk_edc_enable_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 42
  %37 = ptrtoint ptr %mclk_edc_enable_threshold to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mclk_edc_enable_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp40 = icmp ugt i32 %36, %38
  br i1 %cmp40, label %if.then42, label %if.then38.if.end47_crit_edge

if.then38.if.end47_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mcFlags to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mcFlags, align 1
  %41 = or i8 %40, 1
  store i8 %41, ptr %mcFlags, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %if.then38.if.end47_crit_edge
  %42 = ptrtoint ptr %mclk103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mclk103, align 4
  %mclk_edc_wr_enable_threshold = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 17
  %44 = ptrtoint ptr %mclk_edc_wr_enable_threshold to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mclk_edc_wr_enable_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp49 = icmp ugt i32 %43, %45
  br i1 %cmp49, label %if.then51, label %if.end47.if.end56_crit_edge

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %mcFlags to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mcFlags, align 1
  %48 = or i8 %47, 2
  store i8 %48, ptr %mcFlags, align 1
  %49 = ptrtoint ptr %mclk103 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %mclk103, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end47.if.end56_crit_edge
  %50 = phi i32 [ %.pr, %if.then51 ], [ %43, %if.end47.if.end56_crit_edge ]
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %call.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %cypress_get_strobe_mode_settings.exit.thread, label %if.then.i

cypress_get_strobe_mode_settings.exit.thread:     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %strobeMode228 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 6
  %53 = ptrtoint ptr %strobeMode228 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %strobeMode228, align 1
  br label %if.else87

if.then.i:                                        ; preds = %if.end56
  %mclk_strobe_mode_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 41
  %54 = ptrtoint ptr %mclk_strobe_mode_threshold.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mclk_strobe_mode_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %50)
  %cmp.not.i = icmp ult i32 %55, %50
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %56 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %57)
  %cmp.i.i = icmp ugt i32 %57, 46
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else23.i.i

if.then.i.i:                                      ; preds = %if.then.i
  br i1 %cmp.not.i, label %if.else8.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %50)
  %cmp2.i.i = icmp ult i32 %50, 10000
  br i1 %cmp2.i.i, label %if.then1.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else.i.i

if.then1.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else.i.i:                                      ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %50)
  %cmp4.i.i = icmp ugt i32 %50, 47500
  br i1 %cmp4.i.i, label %if.else.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else6.i.i

if.else.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = trunc i32 %50 to i16
  %div.lhs.trunc.i.i = add i16 %58, -10000
  %div67.i.i = udiv i16 %div.lhs.trunc.i.i, 2500
  %conv.i.i = trunc i16 %div67.i.i to i8
  br label %cypress_get_strobe_mode_settings.exit

if.else8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %50)
  %cmp9.i.i = icmp ult i32 %50, 65000
  br i1 %cmp9.i.i, label %if.else8.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else12.i.i

if.else8.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else12.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %50)
  %cmp13.i.i = icmp ugt i32 %50, 135000
  br i1 %cmp13.i.i, label %if.else12.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else16.i.i

if.else12.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else16.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i.i = add nsw i32 %50, -60000
  %div18.i.i = udiv i32 %sub17.i.i, 5000
  %conv19.i.i = trunc i32 %div18.i.i to i8
  br label %cypress_get_strobe_mode_settings.exit

if.else23.i.i:                                    ; preds = %if.then.i
  br i1 %cmp.not.i, label %if.else39.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %50)
  %cmp26.i.i = icmp ult i32 %50, 10000
  br i1 %cmp26.i.i, label %if.then25.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else29.i.i

if.then25.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else29.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %50)
  %cmp30.i.i = icmp ugt i32 %50, 47500
  br i1 %cmp30.i.i, label %if.else29.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else33.i.i

if.else29.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else33.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = trunc i32 %50 to i16
  %div35.lhs.trunc.i.i = add i16 %59, -10000
  %div3568.i.i = udiv i16 %div35.lhs.trunc.i.i, 2500
  %conv36.i.i = trunc i16 %div3568.i.i to i8
  br label %cypress_get_strobe_mode_settings.exit

if.else39.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %50)
  %cmp40.i.i = icmp ult i32 %50, 40000
  br i1 %cmp40.i.i, label %if.else39.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else43.i.i

if.else39.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else43.i.i:                                    ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %50)
  %cmp44.i.i = icmp ugt i32 %50, 115000
  br i1 %cmp44.i.i, label %if.else43.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.else47.i.i

if.else43.i.i.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.else47.i.i:                                    ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub48.i.i = add nsw i32 %50, -40000
  %div49.i.i = udiv i32 %sub48.i.i, 5000
  %conv50.i.i = trunc i32 %div49.i.i to i8
  br label %cypress_get_strobe_mode_settings.exit

cypress_get_strobe_mode_settings.exit:            ; preds = %if.else47.i.i, %if.else43.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.else39.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.else33.i.i, %if.else29.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.then25.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.else16.i.i, %if.else12.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.else8.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.else6.i.i, %if.else.i.i.cypress_get_strobe_mode_settings.exit_crit_edge, %if.then1.i.i.cypress_get_strobe_mode_settings.exit_crit_edge
  %mc_para_index.0.i.i = phi i8 [ %conv.i.i, %if.else6.i.i ], [ %conv19.i.i, %if.else16.i.i ], [ %conv36.i.i, %if.else33.i.i ], [ %conv50.i.i, %if.else47.i.i ], [ 0, %if.then1.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 15, %if.else.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 0, %if.else8.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 15, %if.else12.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 0, %if.then25.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 15, %if.else29.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 0, %if.else39.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ], [ 15, %if.else43.i.i.cypress_get_strobe_mode_settings.exit_crit_edge ]
  %60 = or i8 %mc_para_index.0.i.i, 16
  %spec.select.i = select i1 %cmp.not.i, i8 %mc_para_index.0.i.i, i8 %60
  %strobeMode = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 6
  %61 = ptrtoint ptr %strobeMode to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %spec.select.i, ptr %strobeMode, align 1
  %62 = and i8 %spec.select.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool62.not = icmp eq i8 %62, 0
  br i1 %tobool62.not, label %cypress_get_strobe_mode_settings.exit.if.else87_crit_edge, label %if.then63

cypress_get_strobe_mode_settings.exit.if.else87_crit_edge: ; preds = %cypress_get_strobe_mode_settings.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else87

if.then63:                                        ; preds = %cypress_get_strobe_mode_settings.exit
  %63 = ptrtoint ptr %mclk103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mclk103, align 4
  %65 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %66)
  %cmp.i = icmp ugt i32 %66, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %64)
  %cmp2.i = icmp ult i32 %64, 10000
  br i1 %cmp.i, label %if.then.i193, label %if.else23.i

if.then.i193:                                     ; preds = %if.then63
  br i1 %cmp2.i, label %if.then.i193.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else.i

if.then.i193.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.then.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else.i:                                        ; preds = %if.then.i193
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %64)
  %cmp4.i = icmp ugt i32 %64, 47500
  br i1 %cmp4.i, label %if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else6.i

if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = trunc i32 %64 to i16
  %div.lhs.trunc.i = add i16 %67, -10000
  %div67.i = udiv i16 %div.lhs.trunc.i, 2500
  br label %cypress_get_mclk_frequency_ratio.exit

if.else23.i:                                      ; preds = %if.then63
  br i1 %cmp2.i, label %if.else23.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else29.i

if.else23.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else29.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %64)
  %cmp30.i = icmp ugt i32 %64, 47500
  br i1 %cmp30.i, label %if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, label %if.else33.i

if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge: ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit

if.else33.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  %68 = trunc i32 %64 to i16
  %div35.lhs.trunc.i = add i16 %68, -10000
  %div3568.i = udiv i16 %div35.lhs.trunc.i, 2500
  br label %cypress_get_mclk_frequency_ratio.exit

cypress_get_mclk_frequency_ratio.exit:            ; preds = %if.else33.i, %if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else23.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.else6.i, %if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge, %if.then.i193.cypress_get_mclk_frequency_ratio.exit_crit_edge
  %mc_para_index.0.i.shrunk = phi i16 [ %div67.i, %if.else6.i ], [ %div3568.i, %if.else33.i ], [ 0, %if.then.i193.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 15, %if.else.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 0, %if.else23.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ], [ 15, %if.else29.i.cypress_get_mclk_frequency_ratio.exit_crit_edge ]
  %mc_para_index.0.i = zext i16 %mc_para_index.0.i.shrunk to i32
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %69 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %70, i32 10852
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %72 = lshr i32 %71, 8
  %and68 = and i32 %72, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and68, i32 %mc_para_index.0.i)
  %cmp69.not = icmp ugt i32 %and68, %mc_para_index.0.i
  %73 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp69.not, label %if.else78, label %if.then71

if.then71:                                        ; preds = %cypress_get_mclk_frequency_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i199 = getelementptr i8, ptr %74, i32 10836
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %76 = and i32 %75, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool75 = icmp ne i32 %76, 0
  br label %if.end90

if.else78:                                        ; preds = %cypress_get_mclk_frequency_ratio.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i204 = getelementptr i8, ptr %74, i32 10840
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %78 = and i32 %77, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool82 = icmp ne i32 %78, 0
  br label %if.end90

if.else87:                                        ; preds = %cypress_get_strobe_mode_settings.exit.if.else87_crit_edge, %cypress_get_strobe_mode_settings.exit.thread
  %strobeMode231 = phi ptr [ %strobeMode228, %cypress_get_strobe_mode_settings.exit.thread ], [ %strobeMode, %cypress_get_strobe_mode_settings.exit.if.else87_crit_edge ]
  %dll_default_on = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 10
  %79 = ptrtoint ptr %dll_default_on to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dll_default_on, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %extract.t192 = icmp ne i8 %80, 0
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.else78, %if.then71
  %strobeMode230 = phi ptr [ %strobeMode, %if.then71 ], [ %strobeMode, %if.else78 ], [ %strobeMode231, %if.else87 ]
  %dll_state_on.0.off0 = phi i1 [ %tobool75, %if.then71 ], [ %tobool82, %if.else78 ], [ %extract.t192, %if.else87 ]
  %81 = ptrtoint ptr %mclk103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mclk103, align 4
  %mclk93 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11
  %83 = ptrtoint ptr %strobeMode230 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %strobeMode230, align 1
  %85 = and i8 %84, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp97 = icmp ne i8 %85, 0
  %call100 = tail call fastcc i32 @cypress_populate_mclk_value(ptr noundef %rdev, i32 noundef %82, ptr noundef %mclk93, i1 noundef zeroext %cmp97, i1 noundef zeroext %dll_state_on.0.off0)
  br label %if.end106

if.else101:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %mclk104 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 11
  %call105 = tail call fastcc i32 @cypress_populate_mclk_value(ptr noundef %rdev, i32 noundef %36, ptr noundef %mclk104, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %if.end106

if.end106:                                        ; preds = %if.else101, %if.end90
  %ret.0 = phi i32 [ %call100, %if.end90 ], [ %call105, %if.else101 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool107.not = icmp eq i32 %ret.0, 0
  br i1 %tobool107.not, label %if.end109, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end109:                                        ; preds = %if.end106
  %vddc_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 19
  %vddc = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 2
  %86 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vddc, align 4
  %vddc110 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 12
  %88 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp3.not5.i = icmp eq i32 %89, 0
  br i1 %cmp3.not5.i, label %if.end109.cypress_populate_voltage_value.exit_crit_edge, label %if.end109.for.body.i_crit_edge

if.end109.for.body.i_crit_edge:                   ; preds = %if.end109
  br label %for.body.i

if.end109.cypress_populate_voltage_value.exit_crit_edge: ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end109.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end109.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %i.04.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %91, i16 %87)
  %cmp3.not.i = icmp ult i16 %91, %87
  br i1 %cmp3.not.i, label %for.inc.i, label %if.then.i206

if.then.i206:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i32 %i.04.i to i8
  %index.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 12, i32 1
  %92 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv5.i, ptr %index.i, align 1
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx.i, align 4
  %95 = ptrtoint ptr %vddc110 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 2)
  store i16 %94, ptr %vddc110, align 1
  br label %cypress_populate_voltage_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %89
  br i1 %exitcond.not.i, label %for.inc.i.cypress_populate_voltage_value.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cypress_populate_voltage_value.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit

cypress_populate_voltage_value.exit:              ; preds = %for.inc.i.cypress_populate_voltage_value.exit_crit_edge, %if.then.i206, %if.end109.cypress_populate_voltage_value.exit_crit_edge
  %i.02.i = phi i32 [ %i.04.i, %if.then.i206 ], [ 0, %if.end109.cypress_populate_voltage_value.exit_crit_edge ], [ %89, %for.inc.i.cypress_populate_voltage_value.exit_crit_edge ]
  %96 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i, i32 %97)
  %cmp11.i.not = icmp eq i32 %i.02.i, %97
  br i1 %cmp11.i.not, label %cypress_populate_voltage_value.exit.cleanup_crit_edge, label %if.end114

cypress_populate_voltage_value.exit.cleanup_crit_edge: ; preds = %cypress_populate_voltage_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end114:                                        ; preds = %cypress_populate_voltage_value.exit
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 1
  %98 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %vddci_control, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool115.not = icmp eq i8 %99, 0
  br i1 %tobool115.not, label %if.end114.if.end122_crit_edge, label %if.then116

if.end114.if.end122_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then116:                                       ; preds = %if.end114
  %vddci_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 20
  %vddci = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 3
  %100 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %vddci, align 2
  %vddci117 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 14
  %102 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp3.not5.i207 = icmp eq i32 %103, 0
  br i1 %cmp3.not5.i207, label %if.then116.cypress_populate_voltage_value.exit221_crit_edge, label %if.then116.for.body.i211_crit_edge

if.then116.for.body.i211_crit_edge:               ; preds = %if.then116
  br label %for.body.i211

if.then116.cypress_populate_voltage_value.exit221_crit_edge: ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit221

for.body.i211:                                    ; preds = %for.inc.i217.for.body.i211_crit_edge, %if.then116.for.body.i211_crit_edge
  %i.04.i208 = phi i32 [ %inc.i215, %for.inc.i217.for.body.i211_crit_edge ], [ 0, %if.then116.for.body.i211_crit_edge ]
  %arrayidx.i209 = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 20, i32 3, i32 %i.04.i208
  %104 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.i209, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %105, i16 %101)
  %cmp3.not.i210 = icmp ult i16 %105, %101
  br i1 %cmp3.not.i210, label %for.inc.i217, label %if.then.i214

if.then.i214:                                     ; preds = %for.body.i211
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i212 = trunc i32 %i.04.i208 to i8
  %index.i213 = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 14, i32 1
  %106 = ptrtoint ptr %index.i213 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv5.i212, ptr %index.i213, align 1
  %107 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx.i209, align 4
  %109 = ptrtoint ptr %vddci117 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 2)
  store i16 %108, ptr %vddci117, align 1
  br label %cypress_populate_voltage_value.exit221

for.inc.i217:                                     ; preds = %for.body.i211
  %inc.i215 = add nuw i32 %i.04.i208, 1
  %exitcond.not.i216 = icmp eq i32 %inc.i215, %103
  br i1 %exitcond.not.i216, label %for.inc.i217.cypress_populate_voltage_value.exit221_crit_edge, label %for.inc.i217.for.body.i211_crit_edge

for.inc.i217.for.body.i211_crit_edge:             ; preds = %for.inc.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i211

for.inc.i217.cypress_populate_voltage_value.exit221_crit_edge: ; preds = %for.inc.i217
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit221

cypress_populate_voltage_value.exit221:           ; preds = %for.inc.i217.cypress_populate_voltage_value.exit221_crit_edge, %if.then.i214, %if.then116.cypress_populate_voltage_value.exit221_crit_edge
  %i.02.i218 = phi i32 [ %i.04.i208, %if.then.i214 ], [ 0, %if.then116.cypress_populate_voltage_value.exit221_crit_edge ], [ %103, %for.inc.i217.cypress_populate_voltage_value.exit221_crit_edge ]
  %110 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i218, i32 %111)
  %cmp11.i219.not = icmp eq i32 %i.02.i218, %111
  br i1 %cmp11.i219.not, label %cypress_populate_voltage_value.exit221.cleanup_crit_edge, label %cypress_populate_voltage_value.exit221.if.end122_crit_edge

cypress_populate_voltage_value.exit221.if.end122_crit_edge: ; preds = %cypress_populate_voltage_value.exit221
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

cypress_populate_voltage_value.exit221.cleanup_crit_edge: ; preds = %cypress_populate_voltage_value.exit221
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end122:                                        ; preds = %cypress_populate_voltage_value.exit221.if.end122_crit_edge, %if.end114.if.end122_crit_edge
  %mclk123 = getelementptr inbounds %struct.rv7xx_pl, ptr %pl, i32 0, i32 1
  %112 = ptrtoint ptr %mclk123 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mclk123, align 4
  %mvdd = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 13
  %call.i222 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mvdd_control.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i222, i32 0, i32 6
  %114 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %mvdd_control.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i223 = icmp eq i8 %115, 0
  br i1 %tobool.not.i223, label %if.then.i224, label %if.end.i

if.then.i224:                                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %mvdd_high_index.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 15
  br label %cypress_populate_mvdd_value.exit

if.end.i:                                         ; preds = %if.end122
  %mvdd_split_frequency.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i222, i32 0, i32 23
  %116 = ptrtoint ptr %mvdd_split_frequency.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mvdd_split_frequency.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %113)
  %cmp.not.i225 = icmp ult i32 %117, %113
  br i1 %cmp.not.i225, label %if.else.i226, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mvdd_low_index.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 16
  br label %cypress_populate_mvdd_value.exit

if.else.i226:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mvdd_high_index5.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 15
  br label %cypress_populate_mvdd_value.exit

cypress_populate_mvdd_value.exit:                 ; preds = %if.else.i226, %if.then2.i, %if.then.i224
  %.sink.in.i = phi ptr [ %mvdd_low_index.i, %if.then2.i ], [ %mvdd_high_index5.i, %if.else.i226 ], [ %mvdd_high_index.i, %if.then.i224 ]
  %storemerge1.i = phi i16 [ 0, %if.then2.i ], [ -1, %if.else.i226 ], [ -1, %if.then.i224 ]
  %118 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %index3.i = getelementptr inbounds %struct.RV770_SMC_HW_PERFORMANCE_LEVEL, ptr %level, i32 0, i32 13, i32 1
  %119 = ptrtoint ptr %index3.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %.sink.i, ptr %index3.i, align 1
  %120 = ptrtoint ptr %mvdd to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 %storemerge1.i, ptr %mvdd, align 1
  br label %cleanup

cleanup:                                          ; preds = %cypress_populate_mvdd_value.exit, %cypress_populate_voltage_value.exit221.cleanup_crit_edge, %cypress_populate_voltage_value.exit.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cypress_populate_mvdd_value.exit ], [ %call15, %cond.end.cleanup_crit_edge ], [ %ret.0, %if.end106.cleanup_crit_edge ], [ -22, %cypress_populate_voltage_value.exit.cleanup_crit_edge ], [ -22, %cypress_populate_voltage_value.exit221.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @evergreen_get_pi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_populate_sclk_value(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cypress_populate_mclk_value(ptr noundef %rdev, i32 noundef %memory_clock, ptr nocapture noundef writeonly %mclk, i1 noundef zeroext %strobe_mode, i1 noundef zeroext %dll_state_on) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  %ss = alloca %struct.radeon_atom_ss, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %mpll_ad_func_cntl2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %0 = ptrtoint ptr %mpll_ad_func_cntl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll_ad_func_cntl2, align 4
  %mpll_ad_func_cntl_24 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %2 = ptrtoint ptr %mpll_ad_func_cntl_24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpll_ad_func_cntl_24, align 4
  %mpll_dq_func_cntl6 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %4 = ptrtoint ptr %mpll_dq_func_cntl6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpll_dq_func_cntl6, align 4
  %mpll_dq_func_cntl_28 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %6 = ptrtoint ptr %mpll_dq_func_cntl_28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_dq_func_cntl_28, align 4
  %mclk_pwrmgt_cntl10 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %8 = ptrtoint ptr %mclk_pwrmgt_cntl10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk_pwrmgt_cntl10, align 4
  %dll_cntl12 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %10 = ptrtoint ptr %dll_cntl12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dll_cntl12, align 4
  %mpll_ss114 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 11
  %12 = ptrtoint ptr %mpll_ss114 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mpll_ss114, align 4
  %mpll_ss216 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 12
  %14 = ptrtoint ptr %mpll_ss216 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mpll_ss216, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #6
  %16 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %call17 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 1, i32 noundef %memory_clock, i1 noundef zeroext %strobe_mode, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %strobe_mode, label %if.end.if.end25_crit_edge, label %if.then20

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %if.end
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 10852
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  br i1 %tobool22.not, label %if.then20.if.end25_crit_edge, label %if.then23

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dividers, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %22 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load = load i32, ptr %22, align 4
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 4095
  %mpll.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 4
  %24 = ptrtoint ptr %mpll.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mpll.i, align 4
  %mul.i = mul i32 %bf.clear, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %25)
  %cmp.i1 = icmp eq i32 %25, 10000
  br i1 %cmp.i1, label %if.then.i, label %if.end18.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %mul.i)
  %cmp1.i = icmp ugt i32 %mul.i, 500000
  br i1 %cmp1.i, label %if.then.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end.i

if.then.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %mul.i)
  %cmp3.i = icmp ugt i32 %mul.i, 400000
  br i1 %cmp3.i, label %if.end.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end5.i

if.end.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 330000, i32 %mul.i)
  %cmp6.i = icmp ugt i32 %mul.i, 330000
  br i1 %cmp6.i, label %if.end5.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end8.i

if.end5.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %mul.i)
  %cmp9.i = icmp ugt i32 %mul.i, 250000
  br i1 %cmp9.i, label %if.end8.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end11.i

if.end8.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000, i32 %mul.i)
  %cmp12.i = icmp ugt i32 %mul.i, 160000
  br i1 %cmp12.i, label %if.end11.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end14.i

if.end11.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000, i32 %mul.i)
  %cmp15.i = icmp ugt i32 %mul.i, 120000
  %..i = select i1 %cmp15.i, i32 10485760, i32 78643200
  br label %cypress_map_clkf_to_ibias.exit

if.end18.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %mul.i)
  %cmp19.i = icmp ugt i32 %mul.i, 250000
  br i1 %cmp19.i, label %if.end18.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end21.i

if.end18.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end21.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %mul.i)
  %cmp22.i = icmp ugt i32 %mul.i, 200000
  br i1 %cmp22.i, label %if.end21.i.cypress_map_clkf_to_ibias.exit_crit_edge, label %if.end24.i

if.end21.i.cypress_map_clkf_to_ibias.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_map_clkf_to_ibias.exit

if.end24.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %mul.i)
  %cmp25.i = icmp ugt i32 %mul.i, 150000
  %.38.i = select i1 %cmp25.i, i32 162529280, i32 112197632
  br label %cypress_map_clkf_to_ibias.exit

cypress_map_clkf_to_ibias.exit:                   ; preds = %if.end24.i, %if.end21.i.cypress_map_clkf_to_ibias.exit_crit_edge, %if.end18.i.cypress_map_clkf_to_ibias.exit_crit_edge, %if.end14.i, %if.end11.i.cypress_map_clkf_to_ibias.exit_crit_edge, %if.end8.i.cypress_map_clkf_to_ibias.exit_crit_edge, %if.end5.i.cypress_map_clkf_to_ibias.exit_crit_edge, %if.end.i.cypress_map_clkf_to_ibias.exit_crit_edge, %if.then.i.cypress_map_clkf_to_ibias.exit_crit_edge
  %retval.0.i = phi i32 [ 207618048, %if.then.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ 164626432, %if.end.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ 113246208, %if.end5.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ 45088768, %if.end8.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ 95420416, %if.end11.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ %..i, %if.end14.i ], [ 145752064, %if.end18.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ 213909504, %if.end21.i.cypress_map_clkf_to_ibias.exit_crit_edge ], [ %.38.i, %if.end24.i ]
  %and27 = and i32 %1, -1073217536
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %26 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_div, align 4
  %shl = shl i32 %27, 7
  %28 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dividers, align 4
  %shl29 = shl i32 %29, 17
  %bf.clear37 = shl i32 %bf.load, 12
  %shl38 = and i32 %bf.clear37, 67104768
  %or = or i32 %shl38, %bf.clear
  %or30 = or i32 %or, %and27
  %or35 = or i32 %or30, %retval.0.i
  %or39 = or i32 %or35, %shl
  %or41 = or i32 %or39, %shl29
  %vco_mode = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %30 = ptrtoint ptr %vco_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vco_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not = icmp eq i32 %31, 0
  %and45 = and i32 %3, -536870913
  %masksel = select i1 %tobool42.not, i32 0, i32 536870912
  %mpll_ad_func_cntl_2.0 = or i32 %masksel, %and45
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool47.not = icmp eq i8 %33, 0
  br i1 %tobool47.not, label %cypress_map_clkf_to_ibias.exit.if.end80_crit_edge, label %if.then48

cypress_map_clkf_to_ibias.exit.if.end80_crit_edge: ; preds = %cypress_map_clkf_to_ibias.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then48:                                        ; preds = %cypress_map_clkf_to_ibias.exit
  %and49 = and i32 %5, 1074266112
  %or52 = or i32 %shl29, %shl
  %or52.masked = and i32 %or52, 2147483520
  %or55.masked = or i32 %or52.masked, %and49
  %masksel2 = select i1 %strobe_mode, i32 0, i32 -2147483648
  %or64.masked = or i32 %or, %masksel2
  %and69 = or i32 %or64.masked, %retval.0.i
  %mpll_dq_func_cntl.0 = or i32 %and69, %or55.masked
  br i1 %tobool42.not, label %if.else77, label %if.then75

if.then75:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %or76 = or i32 %7, 536870912
  br label %if.end80

if.else77:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %and78 = and i32 %7, -536870913
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.then75, %cypress_map_clkf_to_ibias.exit.if.end80_crit_edge
  %mpll_dq_func_cntl_2.0 = phi i32 [ %or76, %if.then75 ], [ %and78, %if.else77 ], [ %7, %cypress_map_clkf_to_ibias.exit.if.end80_crit_edge ]
  %mpll_dq_func_cntl.1 = phi i32 [ %mpll_dq_func_cntl.0, %if.then75 ], [ %mpll_dq_func_cntl.0, %if.else77 ], [ %5, %cypress_map_clkf_to_ibias.exit.if.end80_crit_edge ]
  %mclk_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 8
  %34 = ptrtoint ptr %mclk_ss to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mclk_ss, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool81.not = icmp eq i8 %35, 0
  br i1 %tobool81.not, label %if.end80.if.end108_crit_edge, label %if.then82

if.end80.if.end108_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then82:                                        ; preds = %if.end80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ss) #6
  %36 = call ptr @memset(ptr %ss, i32 255, i32 16)
  %mul = mul i32 %29, %memory_clock
  %call84 = call zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef %rdev, ptr noundef nonnull %ss, i32 noundef 1, i32 noundef %mul) #6
  br i1 %call84, label %if.then85, label %if.then82.if.end107_crit_edge

if.then82.if.end107_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then85:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %mpll.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mpll.i, align 4
  %39 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ref_div, align 4
  %call87 = call i32 @rv740_get_decoded_reference_divider(i32 noundef %40) #6
  %mul88 = mul i32 %38, 5
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %41 = ptrtoint ptr %rate to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rate, align 2
  %conv = zext i16 %42 to i32
  %mul89 = mul i32 %call87, %conv
  %div = udiv i32 %mul88, %mul89
  %43 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ss, align 2
  %conv90 = zext i16 %44 to i32
  %45 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load91 = load i32, ptr %22, align 4
  %bf.clear93 = and i32 %bf.load91, 67092480
  %bf.clear96 = shl i32 %bf.load91, 11
  %mul97 = and i32 %bf.clear96, 33552384
  %add = add nuw nsw i32 %mul97, %bf.clear93
  %mul98 = mul i32 %add, %conv90
  %mul99 = mul i32 %div, 625
  %div100 = udiv i32 %mul98, %mul99
  %and101 = and i32 %13, -67108864
  %or103 = or i32 %div100, %and101
  %and104 = and i32 %15, -4096
  %or106 = or i32 %div, %and104
  br label %if.end107

if.end107:                                        ; preds = %if.then85, %if.then82.if.end107_crit_edge
  %mpll_ss1.0 = phi i32 [ %or103, %if.then85 ], [ %13, %if.then82.if.end107_crit_edge ]
  %mpll_ss2.0 = phi i32 [ %or106, %if.then85 ], [ %15, %if.then82.if.end107_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ss) #6
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end80.if.end108_crit_edge
  %mpll_ss1.1 = phi i32 [ %mpll_ss1.0, %if.end107 ], [ %13, %if.end80.if.end108_crit_edge ]
  %mpll_ss2.1 = phi i32 [ %mpll_ss2.0, %if.end107 ], [ %15, %if.end80.if.end108_crit_edge ]
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool110 = icmp ne i8 %47, 0
  %call111 = call i32 @rv740_get_dll_speed(i1 noundef zeroext %tobool110, i32 noundef %memory_clock) #6
  %and112 = and i32 %9, -65312
  %call111.masked = and i32 %call111, -65281
  %masksel3 = select i1 %dll_state_on, i32 65280, i32 0
  %and119 = or i32 %and112, %masksel3
  %mclk_pwrmgt_cntl.0 = or i32 %and119, %call111.masked
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 8
  %48 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %memory_clock, ptr %mclk_value, align 1
  %49 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %or41, ptr %mclk, align 1
  %vMPLL_AD_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 1
  %50 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %mpll_ad_func_cntl_2.0, ptr %vMPLL_AD_FUNC_CNTL_2, align 1
  %vMPLL_DQ_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 2
  %51 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %mpll_dq_func_cntl.1, ptr %vMPLL_DQ_FUNC_CNTL, align 1
  %vMPLL_DQ_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 3
  %52 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %mpll_dq_func_cntl_2.0, ptr %vMPLL_DQ_FUNC_CNTL_2, align 1
  %vMCLK_PWRMGT_CNTL = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 4
  %53 = ptrtoint ptr %vMCLK_PWRMGT_CNTL to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %mclk_pwrmgt_cntl.0, ptr %vMCLK_PWRMGT_CNTL, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 5
  %54 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %11, ptr %vDLL_CNTL, align 1
  %vMPLL_SS = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 6
  %55 = ptrtoint ptr %vMPLL_SS to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %mpll_ss1.1, ptr %vMPLL_SS, align 1
  %vMPLL_SS2 = getelementptr inbounds %struct.RV770_SMC_MCLK_VALUE, ptr %mclk, i32 0, i32 7
  %56 = ptrtoint ptr %vMPLL_SS2 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 %mpll_ss2.1, ptr %vMPLL_SS2, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #6
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_upload_sw_state(ptr noundef %rdev, ptr noundef %radeon_new_state) local_unnamed_addr #0 align 64 {
entry:
  %state = alloca %struct.RV770_SMC_SWSTATE, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %state_table_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 57
  %0 = ptrtoint ptr %state_table_start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state_table_start, align 4
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %state) #6
  %2 = call ptr @memset(ptr %state, i32 0, i32 280)
  %call.i = tail call ptr @rv770_get_ps(ptr noundef %radeon_new_state) #6
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %3 = ptrtoint ptr %radeon_new_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %radeon_new_state, align 4
  %and.i = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %state, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %low.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i, i32 0, i32 2
  %levels.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state, i32 0, i32 4
  %call3.i = call i32 @cypress_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %low.i, ptr noundef %levels.i, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %medium.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i, i32 0, i32 1
  %arrayidx8.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state, i32 0, i32 4, i32 1
  %call9.i = call i32 @cypress_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %medium.i, ptr noundef %arrayidx8.i, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %if.end6.i
  %arrayidx14.i = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state, i32 0, i32 4, i32 2
  %call15.i = call i32 @cypress_convert_power_level_to_smc(ptr noundef %rdev, ptr noundef %call.i, ptr noundef %arrayidx14.i, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %cypress_convert_power_state_to_smc.exit, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cypress_convert_power_state_to_smc.exit:          ; preds = %if.end12.i
  %8 = ptrtoint ptr %levels.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 11, ptr %levels.i, align 1
  %9 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 12, ptr %arrayidx8.i, align 1
  %10 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 13, ptr %arrayidx14.i, align 1
  %dynamic_ac_timing.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 2
  %11 = ptrtoint ptr %dynamic_ac_timing.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dynamic_ac_timing.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool27.not.i = icmp eq i8 %12, 0
  %.sink76.i = select i1 %tobool27.not.i, i8 0, i8 2
  %.sink75.i = select i1 %tobool27.not.i, i8 0, i8 3
  %.sink.i = select i1 %tobool27.not.i, i8 0, i8 4
  %13 = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink76.i, ptr %13, align 1
  %15 = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink75.i, ptr %15, align 1
  %17 = getelementptr inbounds %struct.RV770_SMC_SWSTATE, ptr %state, i32 0, i32 4, i32 2, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink.i, ptr %17, align 1
  %call42.i = call i32 @rv770_populate_smc_sp(ptr noundef %rdev, ptr noundef %radeon_new_state, ptr noundef nonnull %state) #6
  %call43.i = call i32 @rv770_populate_smc_t(ptr noundef %rdev, ptr noundef %radeon_new_state, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not = icmp eq i32 %call43.i, 0
  br i1 %tobool.not, label %if.end, label %cypress_convert_power_state_to_smc.exit.cleanup_crit_edge

cypress_convert_power_state_to_smc.exit.cleanup_crit_edge: ; preds = %cypress_convert_power_state_to_smc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cypress_convert_power_state_to_smc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i16 %1, 744
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %19 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sram_end, align 4
  %call3 = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add, ptr noundef nonnull %state, i16 noundef zeroext 280, i16 noundef zeroext %20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cypress_convert_power_state_to_smc.exit.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call43.i, %cypress_convert_power_state_to_smc.exit.cleanup_crit_edge ], [ %call15.i, %if.end12.i.cleanup_crit_edge ], [ %call9.i, %if.end6.i.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %state) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_copy_bytes_to_smc(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_upload_mc_reg_table(ptr noundef %rdev, ptr noundef %radeon_new_state) local_unnamed_addr #0 align 64 {
entry:
  %mc_reg_table = alloca %struct.SMC_Evergreen_MCRegisters, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 388, ptr nonnull %mc_reg_table) #6
  %0 = call ptr @memset(ptr %mc_reg_table, i32 0, i32 388)
  call fastcc void @cypress_convert_mc_reg_table_to_smc(ptr noundef %rdev, ptr noundef %radeon_new_state, ptr noundef nonnull %mc_reg_table)
  %mc_reg_table_start = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 24
  %1 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mc_reg_table_start, align 4
  %add = add i16 %2, 196
  %arrayidx = getelementptr inbounds %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 3, i32 2
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %3 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sram_end, align 4
  %call3 = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add, ptr noundef %arrayidx, i16 noundef zeroext 192, i16 noundef zeroext %4) #6
  call void @llvm.lifetime.end.p0(i64 388, ptr nonnull %mc_reg_table) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_convert_mc_reg_table_to_smc(ptr noundef %rdev, ptr noundef %radeon_state, ptr nocapture noundef writeonly %mc_reg_table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %radeon_state) #6
  %arrayidx = getelementptr %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 3, i32 2
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %num_entries.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_entries.i, align 1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp32.not.i = icmp eq i8 %1, 0
  br i1 %cmp32.not.i, label %entry.for.end.thread.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i

for.body.lr.ph.i:                                 ; preds = %entry
  %mclk.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 3, i32 %i.033.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3.not.i = icmp ugt i32 %3, %5
  br i1 %cmp3.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %conv.i, %for.inc.i.for.end.i_crit_edge ], [ %i.033.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %conv.i)
  %cmp8.i = icmp eq i32 %i.0.lcssa.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp10.not.i = icmp eq i32 %i.0.lcssa.i, 0
  %dec.i = add nsw i32 %i.0.lcssa.i, -1
  br i1 %cmp10.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i._crit_edge

for.end.i._crit_edge:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %6

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %entry.for.end.thread.i_crit_edge
  %cmp844.i = phi i1 [ %cmp8.i, %for.end.i.for.end.thread.i_crit_edge ], [ true, %entry.for.end.thread.i_crit_edge ]
  br label %6

6:                                                ; preds = %for.end.thread.i, %for.end.i._crit_edge
  %cmp843.i = phi i1 [ %cmp844.i, %for.end.thread.i ], [ %cmp8.i, %for.end.i._crit_edge ]
  %i.0.lcssa41.i = phi i32 [ 0, %for.end.thread.i ], [ %i.0.lcssa.i, %for.end.i._crit_edge ]
  %7 = phi i32 [ 0, %for.end.thread.i ], [ %dec.i, %for.end.i._crit_edge ]
  %i.1.i = select i1 %cmp843.i, i32 %7, i32 %i.0.lcssa41.i
  %mc_reg_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18
  %8 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mc_reg_table.i, align 4
  %conv18.i = zext i8 %9 to i32
  %valid_flag.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %valid_flag.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %valid_flag.i, align 2
  %conv20.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp8.not.i.i = icmp eq i8 %9, 0
  br i1 %cmp8.not.i.i, label %.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge, label %.for.body.i.i_crit_edge

.for.body.i.i_crit_edge:                          ; preds = %6
  br label %for.body.i.i

.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge: ; preds = %6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %.for.body.i.i_crit_edge
  %j.010.i.i = phi i32 [ %inc3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %.for.body.i.i_crit_edge ]
  %i.09.i.i = phi i32 [ %i.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %j.010.i.i
  %and.i.i = and i32 %shl.i.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 3, i32 %i.1.i, i32 1, i32 %j.010.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr [16 x i32], ptr %arrayidx, i32 0, i32 %i.09.i.i
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %arrayidx2.i.i, align 1
  %inc.i.i = add i32 %i.09.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i ], [ %i.09.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc3.i.i = add nuw nsw i32 %j.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc3.i.i, %conv18.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit

cypress_convert_mc_reg_table_entry_to_smc.exit:   ; preds = %for.inc.i.i.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge, %.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge
  %arrayidx2 = getelementptr %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 3, i32 3
  %call.i11 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %num_entries.i12 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i11, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %num_entries.i12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_entries.i12, align 1
  %conv.i13 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp32.not.i14 = icmp eq i8 %16, 0
  br i1 %cmp32.not.i14, label %cypress_convert_mc_reg_table_entry_to_smc.exit.for.end.thread.i15_crit_edge, label %for.body.lr.ph.i17

cypress_convert_mc_reg_table_entry_to_smc.exit.for.end.thread.i15_crit_edge: ; preds = %cypress_convert_mc_reg_table_entry_to_smc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i15

for.body.lr.ph.i17:                               ; preds = %cypress_convert_mc_reg_table_entry_to_smc.exit
  %mclk.i16 = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %mclk.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mclk.i16, align 4
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i24.for.body.i21_crit_edge, %for.body.lr.ph.i17
  %i.033.i18 = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc.i22, %for.inc.i24.for.body.i21_crit_edge ]
  %arrayidx.i19 = getelementptr %struct.evergreen_power_info, ptr %call.i11, i32 0, i32 18, i32 3, i32 %i.033.i18
  %19 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.not.i20 = icmp ugt i32 %18, %20
  br i1 %cmp3.not.i20, label %for.inc.i24, label %for.body.i21.for.end.i29_crit_edge

for.body.i21.for.end.i29_crit_edge:               ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i29

for.inc.i24:                                      ; preds = %for.body.i21
  %inc.i22 = add nuw nsw i32 %i.033.i18, 1
  %exitcond.not.i23 = icmp eq i32 %inc.i22, %conv.i13
  br i1 %exitcond.not.i23, label %for.inc.i24.for.end.i29_crit_edge, label %for.inc.i24.for.body.i21_crit_edge

for.inc.i24.for.body.i21_crit_edge:               ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i21

for.inc.i24.for.end.i29_crit_edge:                ; preds = %for.inc.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i29

for.end.i29:                                      ; preds = %for.inc.i24.for.end.i29_crit_edge, %for.body.i21.for.end.i29_crit_edge
  %i.0.lcssa.i25 = phi i32 [ %conv.i13, %for.inc.i24.for.end.i29_crit_edge ], [ %i.033.i18, %for.body.i21.for.end.i29_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i25, i32 %conv.i13)
  %cmp8.i26 = icmp eq i32 %i.0.lcssa.i25, %conv.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i25)
  %cmp10.not.i27 = icmp eq i32 %i.0.lcssa.i25, 0
  %dec.i28 = add nsw i32 %i.0.lcssa.i25, -1
  br i1 %cmp10.not.i27, label %for.end.i29.for.end.thread.i15_crit_edge, label %for.end.i29._crit_edge

for.end.i29._crit_edge:                           ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %21

for.end.i29.for.end.thread.i15_crit_edge:         ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i15

for.end.thread.i15:                               ; preds = %for.end.i29.for.end.thread.i15_crit_edge, %cypress_convert_mc_reg_table_entry_to_smc.exit.for.end.thread.i15_crit_edge
  %cmp844.i30 = phi i1 [ %cmp8.i26, %for.end.i29.for.end.thread.i15_crit_edge ], [ true, %cypress_convert_mc_reg_table_entry_to_smc.exit.for.end.thread.i15_crit_edge ]
  br label %21

21:                                               ; preds = %for.end.thread.i15, %for.end.i29._crit_edge
  %cmp843.i31 = phi i1 [ %cmp844.i30, %for.end.thread.i15 ], [ %cmp8.i26, %for.end.i29._crit_edge ]
  %i.0.lcssa41.i32 = phi i32 [ 0, %for.end.thread.i15 ], [ %i.0.lcssa.i25, %for.end.i29._crit_edge ]
  %22 = phi i32 [ 0, %for.end.thread.i15 ], [ %dec.i28, %for.end.i29._crit_edge ]
  %i.1.i33 = select i1 %cmp843.i31, i32 %22, i32 %i.0.lcssa41.i32
  %mc_reg_table.i34 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i11, i32 0, i32 18
  %23 = ptrtoint ptr %mc_reg_table.i34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mc_reg_table.i34, align 4
  %conv18.i35 = zext i8 %24 to i32
  %valid_flag.i36 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i11, i32 0, i32 18, i32 2
  %25 = ptrtoint ptr %valid_flag.i36 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %valid_flag.i36, align 2
  %conv20.i37 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp8.not.i.i38 = icmp eq i8 %24, 0
  br i1 %cmp8.not.i.i38, label %.cypress_convert_mc_reg_table_entry_to_smc.exit53_crit_edge, label %.for.body.i.i44_crit_edge

.for.body.i.i44_crit_edge:                        ; preds = %21
  br label %for.body.i.i44

.cypress_convert_mc_reg_table_entry_to_smc.exit53_crit_edge: ; preds = %21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit53

for.body.i.i44:                                   ; preds = %for.inc.i.i52.for.body.i.i44_crit_edge, %.for.body.i.i44_crit_edge
  %j.010.i.i39 = phi i32 [ %inc3.i.i50, %for.inc.i.i52.for.body.i.i44_crit_edge ], [ 0, %.for.body.i.i44_crit_edge ]
  %i.09.i.i40 = phi i32 [ %i.1.i.i49, %for.inc.i.i52.for.body.i.i44_crit_edge ], [ 0, %.for.body.i.i44_crit_edge ]
  %shl.i.i41 = shl nuw i32 1, %j.010.i.i39
  %and.i.i42 = and i32 %shl.i.i41, %conv20.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool.not.i.i43 = icmp eq i32 %and.i.i42, 0
  br i1 %tobool.not.i.i43, label %for.body.i.i44.for.inc.i.i52_crit_edge, label %if.then.i.i48

for.body.i.i44.for.inc.i.i52_crit_edge:           ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i52

if.then.i.i48:                                    ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i45 = getelementptr %struct.evergreen_power_info, ptr %call.i11, i32 0, i32 18, i32 3, i32 %i.1.i33, i32 1, i32 %j.010.i.i39
  %27 = ptrtoint ptr %arrayidx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i45, align 4
  %arrayidx2.i.i46 = getelementptr [16 x i32], ptr %arrayidx2, i32 0, i32 %i.09.i.i40
  %29 = ptrtoint ptr %arrayidx2.i.i46 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx2.i.i46, align 1
  %inc.i.i47 = add i32 %i.09.i.i40, 1
  br label %for.inc.i.i52

for.inc.i.i52:                                    ; preds = %if.then.i.i48, %for.body.i.i44.for.inc.i.i52_crit_edge
  %i.1.i.i49 = phi i32 [ %inc.i.i47, %if.then.i.i48 ], [ %i.09.i.i40, %for.body.i.i44.for.inc.i.i52_crit_edge ]
  %inc3.i.i50 = add nuw nsw i32 %j.010.i.i39, 1
  %exitcond.not.i.i51 = icmp eq i32 %inc3.i.i50, %conv18.i35
  br i1 %exitcond.not.i.i51, label %for.inc.i.i52.cypress_convert_mc_reg_table_entry_to_smc.exit53_crit_edge, label %for.inc.i.i52.for.body.i.i44_crit_edge

for.inc.i.i52.for.body.i.i44_crit_edge:           ; preds = %for.inc.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i44

for.inc.i.i52.cypress_convert_mc_reg_table_entry_to_smc.exit53_crit_edge: ; preds = %for.inc.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit53

cypress_convert_mc_reg_table_entry_to_smc.exit53: ; preds = %for.inc.i.i52.cypress_convert_mc_reg_table_entry_to_smc.exit53_crit_edge, %.cypress_convert_mc_reg_table_entry_to_smc.exit53_crit_edge
  %arrayidx4 = getelementptr %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 3, i32 4
  %call.i54 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %num_entries.i55 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i54, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %num_entries.i55 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_entries.i55, align 1
  %conv.i56 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp32.not.i57 = icmp eq i8 %31, 0
  br i1 %cmp32.not.i57, label %cypress_convert_mc_reg_table_entry_to_smc.exit53.for.end.thread.i58_crit_edge, label %for.body.lr.ph.i60

cypress_convert_mc_reg_table_entry_to_smc.exit53.for.end.thread.i58_crit_edge: ; preds = %cypress_convert_mc_reg_table_entry_to_smc.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i58

for.body.lr.ph.i60:                               ; preds = %cypress_convert_mc_reg_table_entry_to_smc.exit53
  %mclk.i59 = getelementptr inbounds %struct.rv7xx_pl, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %mclk.i59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mclk.i59, align 4
  br label %for.body.i64

for.body.i64:                                     ; preds = %for.inc.i67.for.body.i64_crit_edge, %for.body.lr.ph.i60
  %i.033.i61 = phi i32 [ 0, %for.body.lr.ph.i60 ], [ %inc.i65, %for.inc.i67.for.body.i64_crit_edge ]
  %arrayidx.i62 = getelementptr %struct.evergreen_power_info, ptr %call.i54, i32 0, i32 18, i32 3, i32 %i.033.i61
  %34 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp3.not.i63 = icmp ugt i32 %33, %35
  br i1 %cmp3.not.i63, label %for.inc.i67, label %for.body.i64.for.end.i72_crit_edge

for.body.i64.for.end.i72_crit_edge:               ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i72

for.inc.i67:                                      ; preds = %for.body.i64
  %inc.i65 = add nuw nsw i32 %i.033.i61, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, %conv.i56
  br i1 %exitcond.not.i66, label %for.inc.i67.for.end.i72_crit_edge, label %for.inc.i67.for.body.i64_crit_edge

for.inc.i67.for.body.i64_crit_edge:               ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i64

for.inc.i67.for.end.i72_crit_edge:                ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i72

for.end.i72:                                      ; preds = %for.inc.i67.for.end.i72_crit_edge, %for.body.i64.for.end.i72_crit_edge
  %i.0.lcssa.i68 = phi i32 [ %conv.i56, %for.inc.i67.for.end.i72_crit_edge ], [ %i.033.i61, %for.body.i64.for.end.i72_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i68, i32 %conv.i56)
  %cmp8.i69 = icmp eq i32 %i.0.lcssa.i68, %conv.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i68)
  %cmp10.not.i70 = icmp eq i32 %i.0.lcssa.i68, 0
  %dec.i71 = add nsw i32 %i.0.lcssa.i68, -1
  br i1 %cmp10.not.i70, label %for.end.i72.for.end.thread.i58_crit_edge, label %for.end.i72._crit_edge

for.end.i72._crit_edge:                           ; preds = %for.end.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %36

for.end.i72.for.end.thread.i58_crit_edge:         ; preds = %for.end.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i58

for.end.thread.i58:                               ; preds = %for.end.i72.for.end.thread.i58_crit_edge, %cypress_convert_mc_reg_table_entry_to_smc.exit53.for.end.thread.i58_crit_edge
  %cmp844.i73 = phi i1 [ %cmp8.i69, %for.end.i72.for.end.thread.i58_crit_edge ], [ true, %cypress_convert_mc_reg_table_entry_to_smc.exit53.for.end.thread.i58_crit_edge ]
  br label %36

36:                                               ; preds = %for.end.thread.i58, %for.end.i72._crit_edge
  %cmp843.i74 = phi i1 [ %cmp844.i73, %for.end.thread.i58 ], [ %cmp8.i69, %for.end.i72._crit_edge ]
  %i.0.lcssa41.i75 = phi i32 [ 0, %for.end.thread.i58 ], [ %i.0.lcssa.i68, %for.end.i72._crit_edge ]
  %37 = phi i32 [ 0, %for.end.thread.i58 ], [ %dec.i71, %for.end.i72._crit_edge ]
  %i.1.i76 = select i1 %cmp843.i74, i32 %37, i32 %i.0.lcssa41.i75
  %mc_reg_table.i77 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i54, i32 0, i32 18
  %38 = ptrtoint ptr %mc_reg_table.i77 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %mc_reg_table.i77, align 4
  %conv18.i78 = zext i8 %39 to i32
  %valid_flag.i79 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i54, i32 0, i32 18, i32 2
  %40 = ptrtoint ptr %valid_flag.i79 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %valid_flag.i79, align 2
  %conv20.i80 = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp8.not.i.i81 = icmp eq i8 %39, 0
  br i1 %cmp8.not.i.i81, label %.cypress_convert_mc_reg_table_entry_to_smc.exit96_crit_edge, label %.for.body.i.i87_crit_edge

.for.body.i.i87_crit_edge:                        ; preds = %36
  br label %for.body.i.i87

.cypress_convert_mc_reg_table_entry_to_smc.exit96_crit_edge: ; preds = %36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit96

for.body.i.i87:                                   ; preds = %for.inc.i.i95.for.body.i.i87_crit_edge, %.for.body.i.i87_crit_edge
  %j.010.i.i82 = phi i32 [ %inc3.i.i93, %for.inc.i.i95.for.body.i.i87_crit_edge ], [ 0, %.for.body.i.i87_crit_edge ]
  %i.09.i.i83 = phi i32 [ %i.1.i.i92, %for.inc.i.i95.for.body.i.i87_crit_edge ], [ 0, %.for.body.i.i87_crit_edge ]
  %shl.i.i84 = shl nuw i32 1, %j.010.i.i82
  %and.i.i85 = and i32 %shl.i.i84, %conv20.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85)
  %tobool.not.i.i86 = icmp eq i32 %and.i.i85, 0
  br i1 %tobool.not.i.i86, label %for.body.i.i87.for.inc.i.i95_crit_edge, label %if.then.i.i91

for.body.i.i87.for.inc.i.i95_crit_edge:           ; preds = %for.body.i.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i95

if.then.i.i91:                                    ; preds = %for.body.i.i87
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i88 = getelementptr %struct.evergreen_power_info, ptr %call.i54, i32 0, i32 18, i32 3, i32 %i.1.i76, i32 1, i32 %j.010.i.i82
  %42 = ptrtoint ptr %arrayidx.i.i88 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i88, align 4
  %arrayidx2.i.i89 = getelementptr [16 x i32], ptr %arrayidx4, i32 0, i32 %i.09.i.i83
  %44 = ptrtoint ptr %arrayidx2.i.i89 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %arrayidx2.i.i89, align 1
  %inc.i.i90 = add i32 %i.09.i.i83, 1
  br label %for.inc.i.i95

for.inc.i.i95:                                    ; preds = %if.then.i.i91, %for.body.i.i87.for.inc.i.i95_crit_edge
  %i.1.i.i92 = phi i32 [ %inc.i.i90, %if.then.i.i91 ], [ %i.09.i.i83, %for.body.i.i87.for.inc.i.i95_crit_edge ]
  %inc3.i.i93 = add nuw nsw i32 %j.010.i.i82, 1
  %exitcond.not.i.i94 = icmp eq i32 %inc3.i.i93, %conv18.i78
  br i1 %exitcond.not.i.i94, label %for.inc.i.i95.cypress_convert_mc_reg_table_entry_to_smc.exit96_crit_edge, label %for.inc.i.i95.for.body.i.i87_crit_edge

for.inc.i.i95.for.body.i.i87_crit_edge:           ; preds = %for.inc.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i87

for.inc.i.i95.cypress_convert_mc_reg_table_entry_to_smc.exit96_crit_edge: ; preds = %for.inc.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit96

cypress_convert_mc_reg_table_entry_to_smc.exit96: ; preds = %for.inc.i.i95.cypress_convert_mc_reg_table_entry_to_smc.exit96_crit_edge, %.cypress_convert_mc_reg_table_entry_to_smc.exit96_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_calculate_burst_time(ptr noundef %rdev, i32 noundef %engine_clock, i32 noundef %memory_clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %mul = select i1 %tobool.not, i32 8, i32 4
  %mul1 = mul i32 %mul, %engine_clock
  %div15 = lshr i32 %memory_clock, 1
  %div2 = udiv i32 %mul1, %div15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div2)
  %cmp = icmp ult i32 %div2, 5
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div2)
  %cmp3 = icmp ult i32 %div2, 8
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %div2, -4
  br label %if.end10

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %div616 = lshr i32 %div2, 1
  %2 = tail call i32 @llvm.umin.i32(i32 %div616, i32 18)
  br label %if.end10

if.end10:                                         ; preds = %if.else5, %if.then4, %entry.if.end10_crit_edge
  %burst_time.0 = phi i32 [ %sub, %if.then4 ], [ %2, %if.else5 ], [ 0, %entry.if.end10_crit_edge ]
  ret i32 %burst_time.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %radeon_new_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %radeon_new_state) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 10248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %low, align 4
  %mclk = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mclk, align 4
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %mul.i = select i1 %tobool.not.i, i32 8, i32 4
  %mul1.i = mul i32 %mul.i, %4
  %div15.i = lshr i32 %6, 1
  %div2.i = udiv i32 %mul1.i, %div15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div2.i)
  %cmp.i31 = icmp ult i32 %div2.i, 5
  br i1 %cmp.i31, label %entry.cypress_calculate_burst_time.exit_crit_edge, label %if.else.i

entry.cypress_calculate_burst_time.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_calculate_burst_time.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div2.i)
  %cmp3.i = icmp ult i32 %div2.i, 8
  br i1 %cmp3.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %div2.i, -4
  br label %cypress_calculate_burst_time.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %div616.i = lshr i32 %div2.i, 1
  %9 = tail call i32 @llvm.umin.i32(i32 %div616.i, i32 18) #6
  br label %cypress_calculate_burst_time.exit

cypress_calculate_burst_time.exit:                ; preds = %if.else5.i, %if.then4.i, %entry.cypress_calculate_burst_time.exit_crit_edge
  %burst_time.0.i = phi i32 [ %sub.i, %if.then4.i ], [ %9, %if.else5.i ], [ 0, %entry.cypress_calculate_burst_time.exit_crit_edge ]
  %medium = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %medium to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %medium, align 4
  %mclk6 = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %mclk6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk6, align 4
  %call.i32 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %14 = ptrtoint ptr %call.i32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call.i32, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i33 = icmp eq i8 %15, 0
  %mul.i34 = select i1 %tobool.not.i33, i32 8, i32 4
  %mul1.i35 = mul i32 %mul.i34, %11
  %div15.i36 = lshr i32 %13, 1
  %div2.i37 = udiv i32 %mul1.i35, %div15.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div2.i37)
  %cmp.i38 = icmp ult i32 %div2.i37, 5
  br i1 %cmp.i38, label %cypress_calculate_burst_time.exit.cypress_calculate_burst_time.exit46_crit_edge, label %if.else.i40

cypress_calculate_burst_time.exit.cypress_calculate_burst_time.exit46_crit_edge: ; preds = %cypress_calculate_burst_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_calculate_burst_time.exit46

if.else.i40:                                      ; preds = %cypress_calculate_burst_time.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div2.i37)
  %cmp3.i39 = icmp ult i32 %div2.i37, 8
  br i1 %cmp3.i39, label %if.then4.i42, label %if.else5.i44

if.then4.i42:                                     ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i41 = add nsw i32 %div2.i37, -4
  br label %cypress_calculate_burst_time.exit46

if.else5.i44:                                     ; preds = %if.else.i40
  call void @__sanitizer_cov_trace_pc() #8
  %div616.i43 = lshr i32 %div2.i37, 1
  %16 = tail call i32 @llvm.umin.i32(i32 %div616.i43, i32 18) #6
  br label %cypress_calculate_burst_time.exit46

cypress_calculate_burst_time.exit46:              ; preds = %if.else5.i44, %if.then4.i42, %cypress_calculate_burst_time.exit.cypress_calculate_burst_time.exit46_crit_edge
  %burst_time.0.i45 = phi i32 [ %sub.i41, %if.then4.i42 ], [ %16, %if.else5.i44 ], [ 0, %cypress_calculate_burst_time.exit.cypress_calculate_burst_time.exit46_crit_edge ]
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  %mclk12 = getelementptr inbounds %struct.rv7xx_pl, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %mclk12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk12, align 4
  %call.i47 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %21 = ptrtoint ptr %call.i47 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %call.i47, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i48 = icmp eq i8 %22, 0
  %mul.i49 = select i1 %tobool.not.i48, i32 8, i32 4
  %mul1.i50 = mul i32 %mul.i49, %18
  %div15.i51 = lshr i32 %20, 1
  %div2.i52 = udiv i32 %mul1.i50, %div15.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div2.i52)
  %cmp.i53 = icmp ult i32 %div2.i52, 5
  br i1 %cmp.i53, label %cypress_calculate_burst_time.exit46.cypress_calculate_burst_time.exit61_crit_edge, label %if.else.i55

cypress_calculate_burst_time.exit46.cypress_calculate_burst_time.exit61_crit_edge: ; preds = %cypress_calculate_burst_time.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_calculate_burst_time.exit61

if.else.i55:                                      ; preds = %cypress_calculate_burst_time.exit46
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div2.i52)
  %cmp3.i54 = icmp ult i32 %div2.i52, 8
  br i1 %cmp3.i54, label %if.then4.i57, label %if.else5.i59

if.then4.i57:                                     ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i56 = add nsw i32 %div2.i52, -4
  br label %cypress_calculate_burst_time.exit61

if.else5.i59:                                     ; preds = %if.else.i55
  call void @__sanitizer_cov_trace_pc() #8
  %div616.i58 = lshr i32 %div2.i52, 1
  %23 = tail call i32 @llvm.umin.i32(i32 %div616.i58, i32 18) #6
  br label %cypress_calculate_burst_time.exit61

cypress_calculate_burst_time.exit61:              ; preds = %if.else5.i59, %if.then4.i57, %cypress_calculate_burst_time.exit46.cypress_calculate_burst_time.exit61_crit_edge
  %burst_time.0.i60 = phi i32 [ %sub.i56, %if.then4.i57 ], [ %23, %if.else5.i59 ], [ 0, %cypress_calculate_burst_time.exit46.cypress_calculate_burst_time.exit61_crit_edge ]
  %24 = and i32 %2, 520155391
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %shl = shl nuw nsw i32 %burst_time.0.i, 5
  %or = or i32 %shl, %25
  %shl8 = shl nuw nsw i32 %burst_time.0.i45, 10
  %or9 = or i32 %or, %shl8
  %shl14 = shl nuw nsw i32 %burst_time.0.i60, 15
  %or15 = or i32 %or9, %shl14
  tail call void @rv730_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %radeon_new_state) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or15) #6
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %28, i32 10248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %26) #6, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rv770_get_ps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv730_program_memory_timing_parameters(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_populate_smc_initial_state(ptr noundef %rdev, ptr noundef %radeon_initial_state, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %radeon_initial_state) #6
  %call1 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call2 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19
  %mpll_ad_func_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 5
  %0 = ptrtoint ptr %mpll_ad_func_cntl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll_ad_func_cntl, align 4
  %levels = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4
  %mclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %mclk, align 1
  %mpll_ad_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 6
  %3 = ptrtoint ptr %mpll_ad_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mpll_ad_func_cntl_2, align 4
  %vMPLL_AD_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 1
  %5 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %vMPLL_AD_FUNC_CNTL_2, align 1
  %mpll_dq_func_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 7
  %6 = ptrtoint ptr %mpll_dq_func_cntl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_dq_func_cntl, align 4
  %vMPLL_DQ_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 2
  %8 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %vMPLL_DQ_FUNC_CNTL, align 1
  %mpll_dq_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 8
  %9 = ptrtoint ptr %mpll_dq_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mpll_dq_func_cntl_2, align 4
  %vMPLL_DQ_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 3
  %11 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %vMPLL_DQ_FUNC_CNTL_2, align 1
  %mclk_pwrmgt_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 9
  %12 = ptrtoint ptr %mclk_pwrmgt_cntl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mclk_pwrmgt_cntl, align 4
  %vMCLK_PWRMGT_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 4
  %14 = ptrtoint ptr %vMCLK_PWRMGT_CNTL to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %vMCLK_PWRMGT_CNTL, align 1
  %dll_cntl = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 10
  %15 = ptrtoint ptr %dll_cntl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dll_cntl, align 4
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 5
  %17 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %vDLL_CNTL, align 1
  %mpll_ss1 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 11
  %18 = ptrtoint ptr %mpll_ss1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mpll_ss1, align 4
  %vMPLL_SS = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 6
  %20 = ptrtoint ptr %vMPLL_SS to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %vMPLL_SS, align 1
  %mpll_ss2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 12
  %21 = ptrtoint ptr %mpll_ss2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mpll_ss2, align 4
  %vMPLL_SS2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 7
  %23 = ptrtoint ptr %vMPLL_SS2 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %vMPLL_SS2, align 1
  %low = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2
  %mclk38 = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %mclk38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk38, align 4
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 11, i32 0, i32 8
  %26 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %mclk_value, align 1
  %27 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_regs, align 4
  %sclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10
  %29 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %sclk, align 1
  %cg_spll_func_cntl_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 1
  %30 = ptrtoint ptr %cg_spll_func_cntl_2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cg_spll_func_cntl_2, align 4
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %cg_spll_func_cntl_3 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 2
  %33 = ptrtoint ptr %cg_spll_func_cntl_3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cg_spll_func_cntl_3, align 4
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %cg_spll_spread_spectrum = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 3
  %36 = ptrtoint ptr %cg_spll_spread_spectrum to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cg_spll_spread_spectrum, align 4
  %vCG_SPLL_SPREAD_SPECTRUM = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 3
  %38 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %37, ptr %vCG_SPLL_SPREAD_SPECTRUM, align 1
  %cg_spll_spread_spectrum_2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 19, i32 0, i32 4
  %39 = ptrtoint ptr %cg_spll_spread_spectrum_2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cg_spll_spread_spectrum_2, align 4
  %vCG_SPLL_SPREAD_SPECTRUM_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 4
  %41 = ptrtoint ptr %vCG_SPLL_SPREAD_SPECTRUM_2 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %vCG_SPLL_SPREAD_SPECTRUM_2, align 1
  %42 = ptrtoint ptr %low to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %low, align 4
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 10, i32 5
  %44 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %sclk_value, align 1
  %45 = ptrtoint ptr %levels to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 10, ptr %levels, align 1
  %46 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %46, align 1
  %vddc_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call2, i32 0, i32 19
  %vddc = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %vddc to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %vddc, align 4
  %vddc83 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 12
  %50 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp3.not5.i = icmp eq i32 %51, 0
  br i1 %cmp3.not5.i, label %entry.cypress_populate_voltage_value.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cypress_populate_voltage_value.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call2, i32 0, i32 19, i32 3, i32 %i.04.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %49)
  %cmp3.not.i = icmp ult i16 %53, %49
  br i1 %cmp3.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i32 %i.04.i to i8
  %index.i = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv5.i, ptr %index.i, align 1
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i, align 4
  %57 = ptrtoint ptr %vddc83 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 2)
  store i16 %56, ptr %vddc83, align 1
  br label %cypress_populate_voltage_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %51
  br i1 %exitcond.not.i, label %for.inc.i.cypress_populate_voltage_value.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cypress_populate_voltage_value.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit

cypress_populate_voltage_value.exit:              ; preds = %for.inc.i.cypress_populate_voltage_value.exit_crit_edge, %if.then.i, %entry.cypress_populate_voltage_value.exit_crit_edge
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call2, i32 0, i32 1
  %58 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %vddci_control, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not = icmp eq i8 %59, 0
  br i1 %tobool.not, label %cypress_populate_voltage_value.exit.if.end_crit_edge, label %if.then

cypress_populate_voltage_value.exit.if.end_crit_edge: ; preds = %cypress_populate_voltage_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cypress_populate_voltage_value.exit
  %vddci_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call2, i32 0, i32 20
  %vddci = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %vddci to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vddci, align 2
  %vddci89 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 14
  %62 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp3.not5.i221 = icmp eq i32 %63, 0
  br i1 %cmp3.not5.i221, label %if.then.if.end_crit_edge, label %if.then.for.body.i225_crit_edge

if.then.for.body.i225_crit_edge:                  ; preds = %if.then
  br label %for.body.i225

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i225:                                    ; preds = %for.inc.i231.for.body.i225_crit_edge, %if.then.for.body.i225_crit_edge
  %i.04.i222 = phi i32 [ %inc.i229, %for.inc.i231.for.body.i225_crit_edge ], [ 0, %if.then.for.body.i225_crit_edge ]
  %arrayidx.i223 = getelementptr %struct.evergreen_power_info, ptr %call2, i32 0, i32 20, i32 3, i32 %i.04.i222
  %64 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i223, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %65, i16 %61)
  %cmp3.not.i224 = icmp ult i16 %65, %61
  br i1 %cmp3.not.i224, label %for.inc.i231, label %if.then.i228

if.then.i228:                                     ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i226 = trunc i32 %i.04.i222 to i8
  %index.i227 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %index.i227 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv5.i226, ptr %index.i227, align 1
  %67 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %arrayidx.i223, align 4
  %69 = ptrtoint ptr %vddci89 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 2)
  store i16 %68, ptr %vddci89, align 1
  br label %if.end

for.inc.i231:                                     ; preds = %for.body.i225
  %inc.i229 = add nuw i32 %i.04.i222, 1
  %exitcond.not.i230 = icmp eq i32 %inc.i229, %63
  br i1 %exitcond.not.i230, label %for.inc.i231.if.end_crit_edge, label %for.inc.i231.for.body.i225_crit_edge

for.inc.i231.for.body.i225_crit_edge:             ; preds = %for.inc.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i225

for.inc.i231.if.end_crit_edge:                    ; preds = %for.inc.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.inc.i231.if.end_crit_edge, %if.then.i228, %if.then.if.end_crit_edge, %cypress_populate_voltage_value.exit.if.end_crit_edge
  %mvdd = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 13
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mvdd_high_index.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 15
  %70 = ptrtoint ptr %mvdd_high_index.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mvdd_high_index.i, align 4
  %index.i236 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 13, i32 1
  %72 = ptrtoint ptr %index.i236 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %index.i236, align 1
  %73 = ptrtoint ptr %mvdd to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 -1, ptr %mvdd, align 1
  %aT = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 8
  %74 = ptrtoint ptr %aT to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 65535, ptr %aT, align 1
  %dsp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 47
  %75 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dsp, align 4
  %bSP = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 9
  %77 = ptrtoint ptr %bSP to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %bSP, align 1
  %boot_in_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 4
  %78 = ptrtoint ptr %boot_in_gen2 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %boot_in_gen2, align 4, !range !35
  %80 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 3
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %79, ptr %80, align 1
  %flags = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 4
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %85, ptr %86, align 1
  %88 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %call1, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool123.not = icmp eq i8 %89, 0
  br i1 %tobool123.not, label %if.end.if.end143_crit_edge, label %if.then124

if.end.if.end143_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end143

if.then124:                                       ; preds = %if.end
  %90 = ptrtoint ptr %mclk38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mclk38, align 4
  %call.i237 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %92 = ptrtoint ptr %call.i237 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %call.i237, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i, label %if.then124.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.then.i238

if.then124.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.then.i238:                                     ; preds = %if.then124
  %mclk_strobe_mode_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i237, i32 0, i32 41
  %94 = ptrtoint ptr %mclk_strobe_mode_threshold.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mclk_strobe_mode_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %91)
  %cmp.not.i = icmp ult i32 %95, %91
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %96 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %97)
  %cmp.i.i = icmp ugt i32 %97, 46
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else23.i.i

if.then.i.i:                                      ; preds = %if.then.i238
  br i1 %cmp.not.i, label %if.else8.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %91)
  %cmp2.i.i = icmp ult i32 %91, 10000
  br i1 %cmp2.i.i, label %if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else.i.i

if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else.i.i:                                      ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %91)
  %cmp4.i.i = icmp ugt i32 %91, 47500
  br i1 %cmp4.i.i, label %if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else6.i.i

if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = trunc i32 %91 to i16
  %div.lhs.trunc.i.i = add i16 %98, -10000
  %div67.i.i = udiv i16 %div.lhs.trunc.i.i, 2500
  %conv.i.i = trunc i16 %div67.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %91)
  %cmp9.i.i = icmp ult i32 %91, 65000
  br i1 %cmp9.i.i, label %if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else12.i.i

if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else12.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %91)
  %cmp13.i.i = icmp ugt i32 %91, 135000
  br i1 %cmp13.i.i, label %if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else16.i.i

if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else16.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i.i = add nsw i32 %91, -60000
  %div18.i.i = udiv i32 %sub17.i.i, 5000
  %conv19.i.i = trunc i32 %div18.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else23.i.i:                                    ; preds = %if.then.i238
  br i1 %cmp.not.i, label %if.else39.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %91)
  %cmp26.i.i = icmp ult i32 %91, 10000
  br i1 %cmp26.i.i, label %if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else29.i.i

if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else29.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %91)
  %cmp30.i.i = icmp ugt i32 %91, 47500
  br i1 %cmp30.i.i, label %if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else33.i.i

if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else33.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = trunc i32 %91 to i16
  %div35.lhs.trunc.i.i = add i16 %99, -10000
  %div3568.i.i = udiv i16 %div35.lhs.trunc.i.i, 2500
  %conv36.i.i = trunc i16 %div3568.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else39.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %91)
  %cmp40.i.i = icmp ult i32 %91, 40000
  br i1 %cmp40.i.i, label %if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else43.i.i

if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else43.i.i:                                    ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %91)
  %cmp44.i.i = icmp ugt i32 %91, 115000
  br i1 %cmp44.i.i, label %if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else47.i.i

if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else47.i.i:                                    ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub48.i.i = add nsw i32 %91, -40000
  %div49.i.i = udiv i32 %sub48.i.i, 5000
  %conv50.i.i = trunc i32 %div49.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

cypress_get_mclk_frequency_ratio.exit.i:          ; preds = %if.else47.i.i, %if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else33.i.i, %if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else16.i.i, %if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else6.i.i, %if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge
  %mc_para_index.0.i.i = phi i8 [ %conv.i.i, %if.else6.i.i ], [ %conv19.i.i, %if.else16.i.i ], [ %conv36.i.i, %if.else33.i.i ], [ %conv50.i.i, %if.else47.i.i ], [ 0, %if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 0, %if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 0, %if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 0, %if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ]
  %100 = or i8 %mc_para_index.0.i.i, 16
  %spec.select.i = select i1 %cmp.not.i, i8 %mc_para_index.0.i.i, i8 %100
  br label %cypress_get_strobe_mode_settings.exit

cypress_get_strobe_mode_settings.exit:            ; preds = %cypress_get_mclk_frequency_ratio.exit.i, %if.then124.cypress_get_strobe_mode_settings.exit_crit_edge
  %result.0.i = phi i8 [ 0, %if.then124.cypress_get_strobe_mode_settings.exit_crit_edge ], [ %spec.select.i, %cypress_get_mclk_frequency_ratio.exit.i ]
  %strobeMode = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 6
  %101 = ptrtoint ptr %strobeMode to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %result.0.i, ptr %strobeMode, align 1
  %102 = ptrtoint ptr %mclk38 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mclk38, align 4
  %mclk_edc_enable_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call1, i32 0, i32 42
  %104 = ptrtoint ptr %mclk_edc_enable_threshold to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mclk_edc_enable_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp = icmp ugt i32 %103, %105
  %mcFlags = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 0, i32 7
  %. = select i1 %cmp, i8 3, i8 0
  %106 = ptrtoint ptr %mcFlags to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %., ptr %mcFlags, align 1
  br label %if.end143

if.end143:                                        ; preds = %cypress_get_strobe_mode_settings.exit, %if.end.if.end143_crit_edge
  %initialState = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7
  %arrayidx146 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 1
  %107 = call ptr @memcpy(ptr %arrayidx146, ptr %levels, i32 92)
  %arrayidx152 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 7, i32 4, i32 2
  %108 = call ptr @memcpy(ptr %arrayidx152, ptr %levels, i32 92)
  %109 = ptrtoint ptr %initialState to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %initialState, align 1
  %111 = or i8 %110, 1
  store i8 %111, ptr %initialState, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %clk_regs = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19
  %mpll_ad_func_cntl2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 5
  %0 = ptrtoint ptr %mpll_ad_func_cntl2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpll_ad_func_cntl2, align 4
  %mpll_ad_func_cntl_24 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 6
  %2 = ptrtoint ptr %mpll_ad_func_cntl_24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mpll_ad_func_cntl_24, align 4
  %mpll_dq_func_cntl6 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 7
  %4 = ptrtoint ptr %mpll_dq_func_cntl6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpll_dq_func_cntl6, align 4
  %mpll_dq_func_cntl_28 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 8
  %6 = ptrtoint ptr %mpll_dq_func_cntl_28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mpll_dq_func_cntl_28, align 4
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
  %mclk_pwrmgt_cntl13 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 9
  %14 = ptrtoint ptr %mclk_pwrmgt_cntl13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk_pwrmgt_cntl13, align 4
  %dll_cntl15 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 19, i32 0, i32 10
  %16 = ptrtoint ptr %dll_cntl15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dll_cntl15, align 4
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
  %vddc_voltage_table51 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 19
  br i1 %tobool.not, label %if.else50, label %if.then

if.then:                                          ; preds = %entry
  %vddc = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12
  %24 = ptrtoint ptr %vddc_voltage_table51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vddc_voltage_table51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3.not5.i = icmp eq i32 %25, 0
  br i1 %cmp3.not5.i, label %if.then.cypress_populate_voltage_value.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cypress_populate_voltage_value.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %i.04.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %23)
  %cmp3.not.i = icmp ult i16 %27, %23
  br i1 %cmp3.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = trunc i32 %i.04.i to i8
  %index.i = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5.i, ptr %index.i, align 1
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %vddc to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %30, ptr %vddc, align 1
  br label %cypress_populate_voltage_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.cypress_populate_voltage_value.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cypress_populate_voltage_value.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit

cypress_populate_voltage_value.exit:              ; preds = %for.inc.i.cypress_populate_voltage_value.exit_crit_edge, %if.then.i, %if.then.cypress_populate_voltage_value.exit_crit_edge
  %pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 1
  %32 = ptrtoint ptr %pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pcie_gen2, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool21.not = icmp eq i8 %33, 0
  br i1 %tobool21.not, label %if.else32, label %if.then22

if.then22:                                        ; preds = %cypress_populate_voltage_value.exit
  %acpi_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 3
  %34 = ptrtoint ptr %acpi_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %acpi_pcie_gen2, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not = icmp eq i8 %35, 0
  %gen2PCIE31 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %gen2PCIE31 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %gen2PCIE31, align 1
  br label %if.end37

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %gen2PCIE31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %gen2PCIE31, align 1
  br label %if.end37

if.else32:                                        ; preds = %cypress_populate_voltage_value.exit
  call void @__sanitizer_cov_trace_pc() #8
  %gen2PCIE36 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  %38 = ptrtoint ptr %gen2PCIE36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %gen2PCIE36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.else, %if.then24
  %acpi_pcie_gen238 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 3
  %39 = ptrtoint ptr %acpi_pcie_gen238 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %acpi_pcie_gen238, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool39.not = icmp eq i8 %40, 0
  %gen2XSP48 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 4
  br i1 %tobool39.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %gen2XSP48 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %gen2XSP48, align 1
  br label %if.end61

if.else44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %gen2XSP48 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %gen2XSP48, align 1
  br label %if.end61

if.else50:                                        ; preds = %entry
  %min_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 27
  %43 = ptrtoint ptr %min_vddc_in_table to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %min_vddc_in_table, align 4
  %vddc55 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12
  %45 = ptrtoint ptr %vddc_voltage_table51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vddc_voltage_table51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp3.not5.i218 = icmp eq i32 %46, 0
  br i1 %cmp3.not5.i218, label %if.else50.cypress_populate_voltage_value.exit232_crit_edge, label %if.else50.for.body.i222_crit_edge

if.else50.for.body.i222_crit_edge:                ; preds = %if.else50
  br label %for.body.i222

if.else50.cypress_populate_voltage_value.exit232_crit_edge: ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit232

for.body.i222:                                    ; preds = %for.inc.i228.for.body.i222_crit_edge, %if.else50.for.body.i222_crit_edge
  %i.04.i219 = phi i32 [ %inc.i226, %for.inc.i228.for.body.i222_crit_edge ], [ 0, %if.else50.for.body.i222_crit_edge ]
  %arrayidx.i220 = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %i.04.i219
  %47 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i220, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %44)
  %cmp3.not.i221 = icmp ult i16 %48, %44
  br i1 %cmp3.not.i221, label %for.inc.i228, label %if.then.i225

if.then.i225:                                     ; preds = %for.body.i222
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i223 = trunc i32 %i.04.i219 to i8
  %index.i224 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 12, i32 1
  %49 = ptrtoint ptr %index.i224 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv5.i223, ptr %index.i224, align 1
  %50 = ptrtoint ptr %arrayidx.i220 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i220, align 4
  %52 = ptrtoint ptr %vddc55 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %vddc55, align 1
  br label %cypress_populate_voltage_value.exit232

for.inc.i228:                                     ; preds = %for.body.i222
  %inc.i226 = add nuw i32 %i.04.i219, 1
  %exitcond.not.i227 = icmp eq i32 %inc.i226, %46
  br i1 %exitcond.not.i227, label %for.inc.i228.cypress_populate_voltage_value.exit232_crit_edge, label %for.inc.i228.for.body.i222_crit_edge

for.inc.i228.for.body.i222_crit_edge:             ; preds = %for.inc.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i222

for.inc.i228.cypress_populate_voltage_value.exit232_crit_edge: ; preds = %for.inc.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_voltage_value.exit232

cypress_populate_voltage_value.exit232:           ; preds = %for.inc.i228.cypress_populate_voltage_value.exit232_crit_edge, %if.then.i225, %if.else50.cypress_populate_voltage_value.exit232_crit_edge
  %gen2PCIE60 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 3
  %53 = ptrtoint ptr %gen2PCIE60 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %gen2PCIE60, align 1
  br label %if.end61

if.end61:                                         ; preds = %cypress_populate_voltage_value.exit232, %if.else44, %if.then40
  %acpi_vddci = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 14
  %54 = ptrtoint ptr %acpi_vddci to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %acpi_vddci, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool62.not = icmp eq i16 %55, 0
  br i1 %tobool62.not, label %if.end61.if.end72_crit_edge, label %if.then63

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then63:                                        ; preds = %if.end61
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 1
  %56 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %vddci_control, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool64.not = icmp eq i8 %57, 0
  br i1 %tobool64.not, label %if.then63.if.end72_crit_edge, label %if.then65

if.then63.if.end72_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then65:                                        ; preds = %if.then63
  %vddci_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 20
  %vddci = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 14
  %58 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp3.not5.i233 = icmp eq i32 %59, 0
  br i1 %cmp3.not5.i233, label %if.then65.if.end72_crit_edge, label %if.then65.for.body.i237_crit_edge

if.then65.for.body.i237_crit_edge:                ; preds = %if.then65
  br label %for.body.i237

if.then65.if.end72_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

for.body.i237:                                    ; preds = %for.inc.i243.for.body.i237_crit_edge, %if.then65.for.body.i237_crit_edge
  %i.04.i234 = phi i32 [ %inc.i241, %for.inc.i243.for.body.i237_crit_edge ], [ 0, %if.then65.for.body.i237_crit_edge ]
  %arrayidx.i235 = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 20, i32 3, i32 %i.04.i234
  %60 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i235, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %55)
  %cmp3.not.i236 = icmp ult i16 %61, %55
  br i1 %cmp3.not.i236, label %for.inc.i243, label %if.then.i240

if.then.i240:                                     ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i238 = trunc i32 %i.04.i234 to i8
  %index.i239 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 14, i32 1
  %62 = ptrtoint ptr %index.i239 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv5.i238, ptr %index.i239, align 1
  %63 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx.i235, align 4
  %65 = ptrtoint ptr %vddci to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 %64, ptr %vddci, align 1
  br label %if.end72

for.inc.i243:                                     ; preds = %for.body.i237
  %inc.i241 = add nuw i32 %i.04.i234, 1
  %exitcond.not.i242 = icmp eq i32 %inc.i241, %59
  br i1 %exitcond.not.i242, label %for.inc.i243.if.end72_crit_edge, label %for.inc.i243.for.body.i237_crit_edge

for.inc.i243.for.body.i237_crit_edge:             ; preds = %for.inc.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i237

for.inc.i243.if.end72_crit_edge:                  ; preds = %for.inc.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.end72:                                         ; preds = %for.inc.i243.if.end72_crit_edge, %if.then.i240, %if.then65.if.end72_crit_edge, %if.then63.if.end72_crit_edge, %if.end61.if.end72_crit_edge
  %and73 = and i32 %1, 2147483647
  %or = or i32 %3, 50331648
  %66 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool74.not = icmp eq i8 %67, 0
  %and76 = and i32 %5, 2147483647
  %spec.select = select i1 %tobool74.not, i32 %5, i32 %and76
  %or78 = or i32 %7, 50855936
  %or79 = and i32 %15, -16776961
  %and80 = or i32 %or79, 16711680
  %or81 = or i32 %17, -16777216
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %68 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %69)
  %cmp = icmp ult i32 %69, 44
  %or84 = or i32 %9, 11
  %spll_func_cntl.0 = select i1 %cmp, i32 %or84, i32 %9
  %and86 = and i32 %11, -512
  %or87 = or i32 %and86, 4
  %mclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11
  %70 = ptrtoint ptr %mclk to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %and73, ptr %mclk, align 1
  %vMPLL_AD_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 1
  %71 = ptrtoint ptr %vMPLL_AD_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %or, ptr %vMPLL_AD_FUNC_CNTL_2, align 1
  %vMPLL_DQ_FUNC_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 2
  %72 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %spec.select, ptr %vMPLL_DQ_FUNC_CNTL, align 1
  %vMPLL_DQ_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 3
  %73 = ptrtoint ptr %vMPLL_DQ_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 4)
  store i32 %or78, ptr %vMPLL_DQ_FUNC_CNTL_2, align 1
  %vMCLK_PWRMGT_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 4
  %74 = ptrtoint ptr %vMCLK_PWRMGT_CNTL to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %and80, ptr %vMCLK_PWRMGT_CNTL, align 1
  %vDLL_CNTL = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 5
  %75 = ptrtoint ptr %vDLL_CNTL to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %or81, ptr %vDLL_CNTL, align 1
  %mclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 11, i32 0, i32 8
  %76 = ptrtoint ptr %mclk_value to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 0, ptr %mclk_value, align 1
  %sclk = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10
  %77 = ptrtoint ptr %sclk to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %spll_func_cntl.0, ptr %sclk, align 1
  %vCG_SPLL_FUNC_CNTL_2 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 1
  %78 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_2 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 %or87, ptr %vCG_SPLL_FUNC_CNTL_2, align 1
  %vCG_SPLL_FUNC_CNTL_3 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 2
  %79 = ptrtoint ptr %vCG_SPLL_FUNC_CNTL_3 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %13, ptr %vCG_SPLL_FUNC_CNTL_3, align 1
  %sclk_value = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 10, i32 5
  %80 = ptrtoint ptr %sclk_value to i32
  call void @__asan_storeN_noabort(i32 %80, i32 4)
  store i32 0, ptr %sclk_value, align 1
  %mvdd = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 13
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mvdd_control.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 6
  %81 = ptrtoint ptr %mvdd_control.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mvdd_control.i, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  %mvdd_low_index.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 16
  %mvdd_high_index.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 15
  %.sink.in.i = select i1 %tobool.not.i, ptr %mvdd_high_index.i, ptr %mvdd_low_index.i
  %storemerge1.i = sext i1 %tobool.not.i to i16
  %83 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %.sink.i = load i8, ptr %.sink.in.i, align 1
  %index3.i = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 13, i32 1
  %84 = ptrtoint ptr %index3.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink.i, ptr %index3.i, align 1
  %85 = ptrtoint ptr %mvdd to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %storemerge1.i, ptr %mvdd, align 1
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 2
  %86 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %dynamic_ac_timing, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool134.not = icmp eq i8 %87, 0
  br i1 %tobool134.not, label %if.end72.if.end139_crit_edge, label %if.then135

if.end72.if.end139_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then135:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %88 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %88, align 1
  br label %if.end139

if.end139:                                        ; preds = %if.then135, %if.end72.if.end139_crit_edge
  %levels89 = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4
  %arrayidx142 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 1
  %90 = call ptr @memcpy(ptr %arrayidx142, ptr %levels89, i32 92)
  %arrayidx148 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 8, i32 4, i32 2
  %91 = call ptr @memcpy(ptr %arrayidx148, ptr %levels89, i32 92)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_construct_voltage_tables(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %vddc_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 19
  %call1 = tail call i32 @radeon_atom_get_voltage_table(ptr noundef %rdev, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %vddc_voltage_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %if.end.i, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  %sub.i = add i32 %1, -32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.01.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 19, i32 3, i32 %i.01.i
  %add.i = add i32 %sub.i, %i.01.i
  %arrayidx4.i = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 19, i32 3, i32 %add.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %arrayidx4.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %cypress_trim_voltage_table_to_fit_state_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cypress_trim_voltage_table_to_fit_state_table.exit: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 32, ptr %vddc_voltage_table, align 4
  br label %if.end5

if.end5:                                          ; preds = %cypress_trim_voltage_table_to_fit_state_table.exit, %if.end.if.end5_crit_edge
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %vddci_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vddci_control, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  %vddci_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 20
  %call8 = tail call i32 @radeon_atom_get_voltage_table(ptr noundef %rdev, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef %vddci_voltage_table) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %8 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp14 = icmp ugt i32 %9, 32
  br i1 %cmp14, label %if.end.i35, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i35:                                       ; preds = %if.end11
  %sub.i34 = add i32 %9, -32
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %if.end.i35
  %i.01.i36 = phi i32 [ 0, %if.end.i35 ], [ %inc.i40, %for.body.i42.for.body.i42_crit_edge ]
  %arrayidx.i37 = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 20, i32 3, i32 %i.01.i36
  %add.i38 = add i32 %sub.i34, %i.01.i36
  %arrayidx4.i39 = getelementptr %struct.evergreen_power_info, ptr %call, i32 0, i32 20, i32 3, i32 %add.i38
  %10 = ptrtoint ptr %arrayidx4.i39 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %arrayidx4.i39, align 4
  %12 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %arrayidx.i37, align 4
  %inc.i40 = add nuw nsw i32 %i.01.i36, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, 32
  br i1 %exitcond.not.i41, label %cypress_trim_voltage_table_to_fit_state_table.exit44, label %for.body.i42.for.body.i42_crit_edge

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i42

cypress_trim_voltage_table_to_fit_state_table.exit44: ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %vddci_voltage_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %cypress_trim_voltage_table_to_fit_state_table.exit44, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call8, %if.then7.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %cypress_trim_voltage_table_to_fit_state_table.exit44 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_voltage_table(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_populate_smc_voltage_tables(ptr noundef %rdev, ptr nocapture noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %vddc_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 19
  %0 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 4, i32 %i.02.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx.i, align 1
  %smio_low.i = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %i.02.i, i32 1
  %3 = ptrtoint ptr %smio_low.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smio_low.i, align 4
  %arrayidx2.i = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 5, i32 %i.02.i
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx2.i, align 1
  %or.i = or i32 %6, %4
  store i32 %or.i, ptr %arrayidx2.i, align 1
  %inc.i = add nuw i32 %i.02.i, 1
  %7 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vddc_voltage_table, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %cypress_populate_smc_voltage_table.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cypress_populate_smc_voltage_table.exit:          ; preds = %for.body.i
  %voltageMaskTable = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 6
  %9 = ptrtoint ptr %voltageMaskTable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %voltageMaskTable, align 1
  %mask_low = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %mask_low to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_low, align 4
  %lowMask = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %lowMask to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %lowMask, align 1
  %13 = ptrtoint ptr %vddc_voltage_table to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vddc_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp60.not = icmp eq i32 %14, 0
  br i1 %cmp60.not, label %cypress_populate_smc_voltage_table.exit.if.end16_crit_edge, label %for.body.lr.ph

cypress_populate_smc_voltage_table.exit.if.end16_crit_edge: ; preds = %cypress_populate_smc_voltage_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.body.lr.ph:                                   ; preds = %cypress_populate_smc_voltage_table.exit
  %max_vddc_in_table = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 26
  %15 = ptrtoint ptr %max_vddc_in_table to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_vddc_in_table, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv62 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.inc.for.body_crit_edge ]
  %i.061 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx11 = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 19, i32 3, i32 %conv62
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp13.not = icmp ugt i16 %16, %18
  br i1 %cmp13.not, label %for.inc, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %maxVDDCIndexInPPTable = getelementptr inbounds %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 2
  %19 = ptrtoint ptr %maxVDDCIndexInPPTable to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %i.061, ptr %maxVDDCIndexInPPTable, align 1
  br label %if.end16

for.inc:                                          ; preds = %for.body
  %inc = add i8 %i.061, 1
  %conv = zext i8 %inc to i32
  %cmp = icmp ugt i32 %14, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end16_crit_edge

for.inc.if.end16_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end16:                                         ; preds = %for.inc.if.end16_crit_edge, %if.then15, %cypress_populate_smc_voltage_table.exit.if.end16_crit_edge, %entry.if.end16_crit_edge
  %vddci_voltage_table = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 20
  %20 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vddci_voltage_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool18.not = icmp eq i32 %21, 0
  br i1 %tobool18.not, label %if.end16.if.end29_crit_edge, label %if.end16.for.body.i57_crit_edge

if.end16.for.body.i57_crit_edge:                  ; preds = %if.end16
  br label %for.body.i57

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.body.i57:                                     ; preds = %for.body.i57.for.body.i57_crit_edge, %if.end16.for.body.i57_crit_edge
  %i.02.i50 = phi i32 [ %inc.i55, %for.body.i57.for.body.i57_crit_edge ], [ 0, %if.end16.for.body.i57_crit_edge ]
  %arrayidx.i51 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 4, i32 %i.02.i50
  %22 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i51, align 1
  %smio_low.i52 = getelementptr %struct.evergreen_power_info, ptr %call1, i32 0, i32 20, i32 3, i32 %i.02.i50, i32 1
  %23 = ptrtoint ptr %smio_low.i52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %smio_low.i52, align 4
  %arrayidx2.i53 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 5, i32 %i.02.i50
  %25 = ptrtoint ptr %arrayidx2.i53 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx2.i53, align 1
  %or.i54 = or i32 %26, %24
  store i32 %or.i54, ptr %arrayidx2.i53, align 1
  %inc.i55 = add nuw i32 %i.02.i50, 1
  %27 = ptrtoint ptr %vddci_voltage_table to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vddci_voltage_table, align 4
  %cmp.i56 = icmp ult i32 %inc.i55, %28
  br i1 %cmp.i56, label %for.body.i57.for.body.i57_crit_edge, label %cypress_populate_smc_voltage_table.exit58

for.body.i57.for.body.i57_crit_edge:              ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i57

cypress_populate_smc_voltage_table.exit58:        ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 6, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx23, align 1
  %mask_low25 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 20, i32 1
  %30 = ptrtoint ptr %mask_low25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask_low25, align 4
  %arrayidx28 = getelementptr %struct.RV770_SMC_STATETABLE, ptr %table, i32 0, i32 6, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %arrayidx28, align 1
  br label %if.end29

if.end29:                                         ; preds = %cypress_populate_smc_voltage_table.exit58, %if.end16.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_get_mvdd_configuration(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %memory_info = alloca %struct.atom_memory_info, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %memory_info) #6
  %0 = ptrtoint ptr %memory_info to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %memory_info, align 1, !annotation !40
  %1 = getelementptr inbounds %struct.atom_memory_info, ptr %memory_info, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !40
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1596
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %and = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mvdd_high_index = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 15
  %7 = ptrtoint ptr %mvdd_high_index to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %mvdd_high_index, align 4
  %mvdd_low_index = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 16
  %8 = ptrtoint ptr %mvdd_low_index to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %mvdd_low_index, align 1
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and3 = and i32 %6, 524288
  %and3.lobit44 = lshr exact i32 %and3, 19
  %9 = trunc i32 %and3.lobit44 to i8
  %10 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 15
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %10, align 4
  %and3.lobit = lshr exact i32 %and3, 19
  %12 = trunc i32 %and3.lobit to i8
  %13 = xor i8 %12, 1
  %mvdd_low_index12 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 16
  %14 = ptrtoint ptr %mvdd_low_index12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %mvdd_low_index12, align 1
  %call13 = tail call zeroext i8 @rv770_get_memory_module_index(ptr noundef %rdev) #6
  %call14 = call i32 @radeon_atom_get_memory_info(ptr noundef %rdev, i8 noundef zeroext %call13, ptr noundef nonnull %memory_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 1
  %17 = add i8 %16, 80
  %switch.and.i = and i8 %17, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  %18 = select i1 %switch.selectcmp.i, i32 30000, i32 0
  %mvdd_split_frequency = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 23
  %19 = ptrtoint ptr %mvdd_split_frequency to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mvdd_split_frequency, align 4
  br i1 %switch.selectcmp.i, label %if.end18.cleanup_crit_edge, label %if.end18.cleanup.sink.split_crit_edge

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end18.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %if.then
  %mvdd_control24 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 6
  %20 = ptrtoint ptr %mvdd_control24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %mvdd_control24, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end18.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %memory_info) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rv770_get_memory_module_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_memory_info(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_populate_mc_reg_table(ptr noundef %rdev, ptr noundef %radeon_boot_state) local_unnamed_addr #0 align 64 {
entry:
  %mc_reg_table = alloca %struct.SMC_Evergreen_MCRegisters, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %call2 = tail call ptr @rv770_get_ps(ptr noundef %radeon_boot_state) #6
  call void @llvm.lifetime.start.p0(i64 388, ptr nonnull %mc_reg_table) #6
  %0 = getelementptr inbounds i8, ptr %mc_reg_table, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 387)
  %call3 = tail call i32 @rv770_write_smc_soft_register(ptr noundef %rdev, i16 noundef zeroext 100, i32 noundef 1) #6
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mc_reg_table1.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mc_reg_table1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp30.not.i = icmp eq i8 %3, 0
  br i1 %cmp30.not.i, label %entry.cypress_populate_mc_reg_addresses.exit_crit_edge, label %for.body.lr.ph.i

entry.cypress_populate_mc_reg_addresses.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_mc_reg_addresses.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %valid_flag.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc14.i, %for.inc.i.for.body.i_crit_edge ]
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %valid_flag.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %valid_flag.i, align 2
  %conv4.i = zext i16 %5 to i32
  %shl.i = shl nuw i32 1, %j.032.i
  %and.i = and i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 %j.032.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 2, i32 %i.031.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %arrayidx6.i, align 1
  %s1.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 %j.032.i, i32 1
  %9 = ptrtoint ptr %s1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s1.i, align 2
  %s113.i = getelementptr %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 2, i32 %i.031.i, i32 1
  %11 = ptrtoint ptr %s113.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %s113.i, align 1
  %inc.i = add i32 %i.031.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %if.then.i ], [ %i.031.i, %for.body.i.for.inc.i_crit_edge ]
  %inc14.i = add nuw nsw i32 %j.032.i, 1
  %12 = ptrtoint ptr %mc_reg_table1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mc_reg_table1.i, align 4
  %conv.i = zext i8 %13 to i32
  %cmp.i = icmp ult i32 %inc14.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cypress_populate_mc_reg_addresses.exit_crit_edge

for.inc.i.cypress_populate_mc_reg_addresses.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_populate_mc_reg_addresses.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cypress_populate_mc_reg_addresses.exit:           ; preds = %for.inc.i.cypress_populate_mc_reg_addresses.exit_crit_edge, %entry.cypress_populate_mc_reg_addresses.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.cypress_populate_mc_reg_addresses.exit_crit_edge ], [ %i.1.i, %for.inc.i.cypress_populate_mc_reg_addresses.exit_crit_edge ]
  %conv15.i = trunc i32 %i.0.lcssa.i to i8
  %14 = ptrtoint ptr %mc_reg_table to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15.i, ptr %mc_reg_table, align 1
  %data = getelementptr inbounds %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 3
  %call.i22 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %num_entries.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i22, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_entries.i, align 1
  %conv.i23 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp32.not.i = icmp eq i8 %16, 0
  br i1 %cmp32.not.i, label %cypress_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge, label %for.body.lr.ph.i24

cypress_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge: ; preds = %cypress_populate_mc_reg_addresses.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i

for.body.lr.ph.i24:                               ; preds = %cypress_populate_mc_reg_addresses.exit
  %mclk.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call2, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mclk.i, align 4
  br label %for.body.i26

for.body.i26:                                     ; preds = %for.inc.i28.for.body.i26_crit_edge, %for.body.lr.ph.i24
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i24 ], [ %inc.i27, %for.inc.i28.for.body.i26_crit_edge ]
  %arrayidx.i25 = getelementptr %struct.evergreen_power_info, ptr %call.i22, i32 0, i32 18, i32 3, i32 %i.033.i
  %19 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.not.i = icmp ugt i32 %18, %20
  br i1 %cmp3.not.i, label %for.inc.i28, label %for.body.i26.for.end.i_crit_edge

for.body.i26.for.end.i_crit_edge:                 ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i28:                                      ; preds = %for.body.i26
  %inc.i27 = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i27, %conv.i23
  br i1 %exitcond.not.i, label %for.inc.i28.for.end.i_crit_edge, label %for.inc.i28.for.body.i26_crit_edge

for.inc.i28.for.body.i26_crit_edge:               ; preds = %for.inc.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i26

for.inc.i28.for.end.i_crit_edge:                  ; preds = %for.inc.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i28.for.end.i_crit_edge, %for.body.i26.for.end.i_crit_edge
  %i.0.lcssa.i29 = phi i32 [ %conv.i23, %for.inc.i28.for.end.i_crit_edge ], [ %i.033.i, %for.body.i26.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i29, i32 %conv.i23)
  %cmp8.i = icmp eq i32 %i.0.lcssa.i29, %conv.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i29)
  %cmp10.not.i = icmp eq i32 %i.0.lcssa.i29, 0
  %dec.i = add nsw i32 %i.0.lcssa.i29, -1
  br i1 %cmp10.not.i, label %for.end.i.for.end.thread.i_crit_edge, label %for.end.i._crit_edge

for.end.i._crit_edge:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %21

for.end.i.for.end.thread.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.end.i.for.end.thread.i_crit_edge, %cypress_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge
  %cmp844.i = phi i1 [ %cmp8.i, %for.end.i.for.end.thread.i_crit_edge ], [ true, %cypress_populate_mc_reg_addresses.exit.for.end.thread.i_crit_edge ]
  br label %21

21:                                               ; preds = %for.end.thread.i, %for.end.i._crit_edge
  %cmp843.i = phi i1 [ %cmp844.i, %for.end.thread.i ], [ %cmp8.i, %for.end.i._crit_edge ]
  %i.0.lcssa41.i = phi i32 [ 0, %for.end.thread.i ], [ %i.0.lcssa.i29, %for.end.i._crit_edge ]
  %22 = phi i32 [ 0, %for.end.thread.i ], [ %dec.i, %for.end.i._crit_edge ]
  %i.1.i30 = select i1 %cmp843.i, i32 %22, i32 %i.0.lcssa41.i
  %mc_reg_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i22, i32 0, i32 18
  %23 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mc_reg_table.i, align 4
  %conv18.i = zext i8 %24 to i32
  %valid_flag.i31 = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i22, i32 0, i32 18, i32 2
  %25 = ptrtoint ptr %valid_flag.i31 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %valid_flag.i31, align 2
  %conv20.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp8.not.i.i = icmp eq i8 %24, 0
  br i1 %cmp8.not.i.i, label %.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge, label %.for.body.i.i_crit_edge

.for.body.i.i_crit_edge:                          ; preds = %21
  br label %for.body.i.i

.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge: ; preds = %21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %.for.body.i.i_crit_edge
  %j.010.i.i = phi i32 [ %inc3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %.for.body.i.i_crit_edge ]
  %i.09.i.i = phi i32 [ %i.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %j.010.i.i
  %and.i.i = and i32 %shl.i.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i22, i32 0, i32 18, i32 3, i32 %i.1.i30, i32 1, i32 %j.010.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr [16 x i32], ptr %data, i32 0, i32 %i.09.i.i
  %29 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %arrayidx2.i.i, align 1
  %inc.i.i = add i32 %i.09.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %i.1.i.i = phi i32 [ %inc.i.i, %if.then.i.i ], [ %i.09.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %inc3.i.i = add nuw nsw i32 %j.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc3.i.i, %conv18.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_reg_table_entry_to_smc.exit

cypress_convert_mc_reg_table_entry_to_smc.exit:   ; preds = %for.inc.i.i.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge, %.cypress_convert_mc_reg_table_entry_to_smc.exit_crit_edge
  %mc_reg_table4 = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 18
  %mc_reg_table_entry = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 18, i32 3
  %arrayidx7 = getelementptr inbounds %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %mc_reg_table4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mc_reg_table4, align 4
  %conv = zext i8 %31 to i32
  %valid_flag = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 18, i32 2
  %32 = ptrtoint ptr %valid_flag to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %valid_flag, align 2
  %conv10 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp8.not.i = icmp eq i8 %31, 0
  br i1 %cmp8.not.i, label %cypress_convert_mc_reg_table_entry_to_smc.exit.cypress_convert_mc_registers.exit_crit_edge, label %cypress_convert_mc_reg_table_entry_to_smc.exit.for.body.i35_crit_edge

cypress_convert_mc_reg_table_entry_to_smc.exit.for.body.i35_crit_edge: ; preds = %cypress_convert_mc_reg_table_entry_to_smc.exit
  br label %for.body.i35

cypress_convert_mc_reg_table_entry_to_smc.exit.cypress_convert_mc_registers.exit_crit_edge: ; preds = %cypress_convert_mc_reg_table_entry_to_smc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_registers.exit

for.body.i35:                                     ; preds = %for.inc.i41.for.body.i35_crit_edge, %cypress_convert_mc_reg_table_entry_to_smc.exit.for.body.i35_crit_edge
  %j.010.i = phi i32 [ %inc3.i, %for.inc.i41.for.body.i35_crit_edge ], [ 0, %cypress_convert_mc_reg_table_entry_to_smc.exit.for.body.i35_crit_edge ]
  %i.09.i = phi i32 [ %i.1.i39, %for.inc.i41.for.body.i35_crit_edge ], [ 0, %cypress_convert_mc_reg_table_entry_to_smc.exit.for.body.i35_crit_edge ]
  %shl.i32 = shl nuw i32 1, %j.010.i
  %and.i33 = and i32 %shl.i32, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33)
  %tobool.not.i34 = icmp eq i32 %and.i33, 0
  br i1 %tobool.not.i34, label %for.body.i35.for.inc.i41_crit_edge, label %if.then.i38

for.body.i35.for.inc.i41_crit_edge:               ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i41

if.then.i38:                                      ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i36 = getelementptr %struct.evergreen_mc_reg_entry, ptr %mc_reg_table_entry, i32 0, i32 1, i32 %j.010.i
  %34 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i36, align 4
  %arrayidx2.i = getelementptr [16 x i32], ptr %arrayidx7, i32 0, i32 %i.09.i
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %arrayidx2.i, align 1
  %inc.i37 = add i32 %i.09.i, 1
  br label %for.inc.i41

for.inc.i41:                                      ; preds = %if.then.i38, %for.body.i35.for.inc.i41_crit_edge
  %i.1.i39 = phi i32 [ %inc.i37, %if.then.i38 ], [ %i.09.i, %for.body.i35.for.inc.i41_crit_edge ]
  %inc3.i = add nuw nsw i32 %j.010.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc3.i, %conv
  br i1 %exitcond.not.i40, label %for.inc.i41.cypress_convert_mc_registers.exit_crit_edge, label %for.inc.i41.for.body.i35_crit_edge

for.inc.i41.for.body.i35_crit_edge:               ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i35

for.inc.i41.cypress_convert_mc_registers.exit_crit_edge: ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_convert_mc_registers.exit

cypress_convert_mc_registers.exit:                ; preds = %for.inc.i41.cypress_convert_mc_registers.exit_crit_edge, %cypress_convert_mc_reg_table_entry_to_smc.exit.cypress_convert_mc_registers.exit_crit_edge
  call fastcc void @cypress_convert_mc_reg_table_to_smc(ptr noundef %rdev, ptr noundef %radeon_boot_state, ptr noundef nonnull %mc_reg_table)
  %mc_reg_table_start = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 24
  %37 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %mc_reg_table_start, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %39 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sram_end, align 4
  %call11 = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %38, ptr noundef nonnull %mc_reg_table, i16 noundef zeroext 388, i16 noundef zeroext %40) #6
  call void @llvm.lifetime.end.p0(i64 388, ptr nonnull %mc_reg_table) #6
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_get_table_locations(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !40
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 59
  %1 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sram_end, align 4
  %call2 = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 268, ptr noundef nonnull %tmp, i16 noundef zeroext %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp, align 4
  %conv = trunc i32 %4 to i16
  %state_table_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 57
  %5 = ptrtoint ptr %state_table_start to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %state_table_start, align 4
  %6 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sram_end, align 4
  %call4 = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 264, ptr noundef nonnull %tmp, i16 noundef zeroext %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp, align 4
  %conv8 = trunc i32 %9 to i16
  %soft_regs_start = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 58
  %10 = ptrtoint ptr %soft_regs_start to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv8, ptr %soft_regs_start, align 2
  %11 = ptrtoint ptr %sram_end to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sram_end, align 4
  %call10 = call i32 @rv770_read_smc_sram_dword(ptr noundef %rdev, i16 noundef zeroext 288, ptr noundef nonnull %tmp, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp, align 4
  %conv14 = trunc i32 %14 to i16
  %mc_reg_table_start = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 24
  %15 = ptrtoint ptr %mc_reg_table_start to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv14, ptr %mc_reg_table_start, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_read_smc_sram_dword(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_enable_display_gap(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1812
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %3 = and i32 %2, -251658256
  %4 = or i32 %3, 251658253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %4) #6, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  tail call void @rv740_read_clock_registers(ptr noundef %rdev) #6
  tail call void @rv770_read_voltage_smio_registers(ptr noundef %rdev) #6
  tail call void @rv770_get_max_vddc(ptr noundef %rdev) #6
  tail call void @rv770_get_memory_type(ptr noundef %rdev) #6
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_performance_request, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then3

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %entry
  %pcie_performance_request_registered = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %pcie_performance_request_registered to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pcie_performance_request_registered, align 1
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %3 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pciep_rreg.i, align 4
  %call1.i = tail call i32 %4(ptr noundef %rdev, i32 noundef 164) #6
  %5 = and i32 %call1.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %5)
  %.not.i = icmp eq i32 %5, 25165824
  %6 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 1
  br i1 %.not.i, label %if.end.thread.i, label %if.then7.i

if.end.thread.i:                                  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %6, align 1
  br label %if.end4

if.then7.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %6, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #6
  %10 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pciep_rreg.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %rdev, i32 noundef 164) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then7.i, %if.end.thread.i, %entry.if.end4_crit_edge
  tail call void @rv770_get_pcie_gen2_status(ptr noundef %rdev) #6
  tail call void @rv770_enable_acpi_pm(ptr noundef %rdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv740_read_clock_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_read_voltage_smio_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_max_vddc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_memory_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_pcie_gen2_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_acpi_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_dpm_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %range_table.i = alloca %struct.atom_memory_clock_range_table, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %boot_ps2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %0 = ptrtoint ptr %boot_ps2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %boot_ps2, align 4
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gfx_clock_gating, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rv770_restore_cgcg(ptr noundef %rdev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call zeroext i1 @rv770_dpm_enabled(ptr noundef %rdev) #6
  br i1 %call3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %voltage_control, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  tail call void @rv770_enable_voltage_control(ptr noundef %rdev, i1 noundef zeroext true) #6
  %call8 = tail call i32 @cypress_construct_voltage_tables(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mvdd_control, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @cypress_get_mvdd_configuration(ptr noundef %rdev)
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end12.if.end19_crit_edge
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dynamic_ac_timing, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  br i1 %tobool20.not, label %if.end19.if.end27_crit_edge, label %if.then21

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %if.end19
  %call.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mc_reg_table.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18
  %mc_reg_address.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4
  %10 = ptrtoint ptr %mc_reg_address.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2715, ptr %mc_reg_address.i, align 4
  %s1.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %s1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2600, ptr %s1.i, align 2
  %arrayidx6.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2716, ptr %arrayidx6.i, align 4
  %s111.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %s111.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2601, ptr %s111.i, align 2
  %arrayidx15.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2717, ptr %arrayidx15.i, align 4
  %s120.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 2, i32 1
  %15 = ptrtoint ptr %s120.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2602, ptr %s120.i, align 2
  %arrayidx24.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 3
  %16 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2718, ptr %arrayidx24.i, align 4
  %s129.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 3, i32 1
  %17 = ptrtoint ptr %s129.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2603, ptr %s129.i, align 2
  %arrayidx33.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 4
  %18 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2759, ptr %arrayidx33.i, align 4
  %s138.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 4, i32 1
  %19 = ptrtoint ptr %s138.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2605, ptr %s138.i, align 2
  %arrayidx42.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 5
  %20 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2760, ptr %arrayidx42.i, align 4
  %s147.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 5, i32 1
  %21 = ptrtoint ptr %s147.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2606, ptr %s147.i, align 2
  %arrayidx51.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 6
  %22 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2719, ptr %arrayidx51.i, align 4
  %s156.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 6, i32 1
  %23 = ptrtoint ptr %s156.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2607, ptr %s156.i, align 2
  %arrayidx60.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 7
  %24 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2720, ptr %arrayidx60.i, align 4
  %s165.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 7, i32 1
  %25 = ptrtoint ptr %s165.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2608, ptr %s165.i, align 2
  %arrayidx69.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 8
  %26 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2721, ptr %arrayidx69.i, align 4
  %s174.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 8, i32 1
  %27 = ptrtoint ptr %s174.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2691, ptr %s174.i, align 2
  %arrayidx78.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 9
  %28 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2722, ptr %arrayidx78.i, align 4
  %s183.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 9, i32 1
  %29 = ptrtoint ptr %s183.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2731, ptr %s183.i, align 2
  %arrayidx87.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 10
  %30 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2770, ptr %arrayidx87.i, align 4
  %s192.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 10, i32 1
  %31 = ptrtoint ptr %s192.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2769, ptr %s192.i, align 2
  %arrayidx96.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 11
  %32 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2689, ptr %arrayidx96.i, align 4
  %s1101.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 11, i32 1
  %33 = ptrtoint ptr %s1101.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2689, ptr %s1101.i, align 2
  %arrayidx105.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 12
  %34 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2690, ptr %arrayidx105.i, align 4
  %s1110.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 12, i32 1
  %35 = ptrtoint ptr %s1110.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2690, ptr %s1110.i, align 2
  %arrayidx114.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 13
  %36 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2699, ptr %arrayidx114.i, align 4
  %s1119.i = getelementptr %struct.evergreen_power_info, ptr %call.i, i32 0, i32 18, i32 4, i32 13, i32 1
  %37 = ptrtoint ptr %s1119.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2699, ptr %s1119.i, align 2
  %38 = ptrtoint ptr %mc_reg_table.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 14, ptr %mc_reg_table.i, align 4
  %call.i143 = tail call ptr @rv770_get_ps(ptr noundef %1) #6
  %call.i.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mc_reg_table.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i.i, i32 0, i32 18
  %39 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mc_reg_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp25.not.i.i = icmp eq i8 %40, 0
  br i1 %cmp25.not.i.i, label %if.then21.cypress_copy_ac_timing_from_s1_to_s0.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then21.cypress_copy_ac_timing_from_s1_to_s0.exit.i_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_copy_ac_timing_from_s1_to_s0.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then21
  %rmmio_size.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %r100_mm_wreg.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %r100_mm_wreg.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i, i32 0, i32 18, i32 4, i32 %i.026.i.i
  %s1.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i, i32 0, i32 18, i32 4, i32 %i.026.i.i, i32 1
  %41 = ptrtoint ptr %s1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %s1.i.i, align 2
  %conv3.i.i = zext i16 %42 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 2
  %43 = ptrtoint ptr %rmmio_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %shl.i.i)
  %cmp.i.i.i = icmp ugt i32 %44, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %42)
  %cmp1.i.i.i = icmp ult i16 %42, 16384
  %or.cond.i.i.i = or i1 %cmp1.i.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %46, i32 %shl.i.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !36
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  br label %r100_mm_rreg.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %shl.i.i) #6
  br label %r100_mm_rreg.exit.i.i

r100_mm_rreg.exit.i.i:                            ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.else.i.i.i ], [ %48, %if.then.i.i.i ]
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i.i, align 4
  %conv8.i.i = zext i16 %50 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 2
  %51 = ptrtoint ptr %rmmio_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rmmio_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %shl9.i.i)
  %cmp.i18.i.i = icmp ugt i32 %52, %shl9.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %50)
  %cmp1.i19.i.i = icmp ult i16 %50, 16384
  %or.cond.i20.i.i = or i1 %cmp1.i19.i.i, %cmp.i18.i.i
  br i1 %or.cond.i20.i.i, label %do.body.i.i.i, label %if.else.i23.i.i

do.body.i.i.i:                                    ; preds = %r100_mm_rreg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i) #6
  %54 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %55, i32 %shl9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %53) #6, !srcloc !39
  br label %r100_mm_wreg.exit.i.i

if.else.i23.i.i:                                  ; preds = %r100_mm_rreg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %shl9.i.i, i32 noundef %retval.0.i.i.i) #6
  br label %r100_mm_wreg.exit.i.i

r100_mm_wreg.exit.i.i:                            ; preds = %if.else.i23.i.i, %do.body.i.i.i
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %56 = ptrtoint ptr %mc_reg_table.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %mc_reg_table.i.i, align 4
  %conv.i.i = zext i8 %57 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %r100_mm_wreg.exit.i.i.for.body.i.i_crit_edge, label %r100_mm_wreg.exit.i.i.cypress_copy_ac_timing_from_s1_to_s0.exit.i_crit_edge

r100_mm_wreg.exit.i.i.cypress_copy_ac_timing_from_s1_to_s0.exit.i_crit_edge: ; preds = %r100_mm_wreg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_copy_ac_timing_from_s1_to_s0.exit.i

r100_mm_wreg.exit.i.i.for.body.i.i_crit_edge:     ; preds = %r100_mm_wreg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

cypress_copy_ac_timing_from_s1_to_s0.exit.i:      ; preds = %r100_mm_wreg.exit.i.i.cypress_copy_ac_timing_from_s1_to_s0.exit.i_crit_edge, %if.then21.cypress_copy_ac_timing_from_s1_to_s0.exit.i_crit_edge
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %58 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %asic.i, align 8
  %mc_wait_for_idle.i = getelementptr inbounds %struct.radeon_asic, ptr %59, i32 0, i32 8
  %60 = ptrtoint ptr %mc_wait_for_idle.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mc_wait_for_idle.i, align 4
  %call1.i = tail call i32 %61(ptr noundef %rdev) #6
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %62 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %family.i, align 4
  %64 = and i32 %63, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %64)
  %switch.i = icmp eq i32 %64, 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %65 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i, align 4
  br i1 %switch.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cypress_copy_ac_timing_from_s1_to_s0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 8352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 251658240) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %68, i32 8356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 251658240) #6, !srcloc !39
  br label %if.end.i

if.else.i:                                        ; preds = %cypress_copy_ac_timing_from_s1_to_s0.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i54.i = getelementptr i8, ptr %66, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 251658240) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %70, i32 9660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 251658240) #6, !srcloc !39
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %71 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp480.i = icmp sgt i32 %72, 0
  br i1 %cmp480.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.081.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %asic.i, align 8
  %wait_for_vblank.i = getelementptr inbounds %struct.radeon_asic, ptr %74, i32 0, i32 16, i32 2
  %75 = ptrtoint ptr %wait_for_vblank.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wait_for_vblank.i, align 4
  tail call void %76(ptr noundef %rdev, i32 noundef %i.081.i) #6
  %inc.i = add nuw nsw i32 %i.081.i, 1
  %77 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_crtc.i, align 4
  %cmp4.i = icmp slt i32 %inc.i, %78
  br i1 %cmp4.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %80, i32 10856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 67108864) #6, !srcloc !39
  tail call fastcc void @cypress_wait_for_mc_sequencer(ptr noundef %rdev, i8 noundef zeroext 4) #6
  %mclk.i = getelementptr inbounds %struct.rv7xx_ps, ptr %call.i143, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mclk.i, align 4
  %call.i63.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %83 = ptrtoint ptr %call.i63.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %call.i63.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i.i, label %for.end.i.cypress_get_strobe_mode_settings.exit.i_crit_edge, label %if.then.i.i

for.end.i.cypress_get_strobe_mode_settings.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit.i

if.then.i.i:                                      ; preds = %for.end.i
  %mclk_strobe_mode_threshold.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i63.i, i32 0, i32 41
  %85 = ptrtoint ptr %mclk_strobe_mode_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mclk_strobe_mode_threshold.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %82)
  %cmp.not.i.i = icmp ult i32 %86, %82
  %87 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %88)
  %cmp.i.i64.i = icmp ugt i32 %88, 46
  br i1 %cmp.i.i64.i, label %if.then.i.i65.i, label %if.else23.i.i.i

if.then.i.i65.i:                                  ; preds = %if.then.i.i
  br i1 %cmp.not.i.i, label %if.else8.i.i.i, label %if.then1.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %82)
  %cmp2.i.i.i = icmp ult i32 %82, 10000
  br i1 %cmp2.i.i.i, label %if.then1.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else.i.i66.i

if.then1.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else.i.i66.i:                                  ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %82)
  %cmp4.i.i.i = icmp ugt i32 %82, 47500
  br i1 %cmp4.i.i.i, label %if.else.i.i66.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else6.i.i.i

if.else.i.i66.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.else.i.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else6.i.i.i:                                   ; preds = %if.else.i.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = trunc i32 %82 to i16
  %div.lhs.trunc.i.i.i = add i16 %89, -10000
  %div67.i.i.i = udiv i16 %div.lhs.trunc.i.i.i, 2500
  %conv.i.i.i = trunc i16 %div67.i.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else8.i.i.i:                                   ; preds = %if.then.i.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %82)
  %cmp9.i.i.i = icmp ult i32 %82, 65000
  br i1 %cmp9.i.i.i, label %if.else8.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else12.i.i.i

if.else8.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else12.i.i.i:                                  ; preds = %if.else8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %82)
  %cmp13.i.i.i = icmp ugt i32 %82, 135000
  br i1 %cmp13.i.i.i, label %if.else12.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else16.i.i.i

if.else12.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else16.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i.i.i = add nsw i32 %82, -60000
  %div18.i.i.i = udiv i32 %sub17.i.i.i, 5000
  %conv19.i.i.i = trunc i32 %div18.i.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else23.i.i.i:                                  ; preds = %if.then.i.i
  br i1 %cmp.not.i.i, label %if.else39.i.i.i, label %if.then25.i.i.i

if.then25.i.i.i:                                  ; preds = %if.else23.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %82)
  %cmp26.i.i.i = icmp ult i32 %82, 10000
  br i1 %cmp26.i.i.i, label %if.then25.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else29.i.i.i

if.then25.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else29.i.i.i:                                  ; preds = %if.then25.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %82)
  %cmp30.i.i.i = icmp ugt i32 %82, 47500
  br i1 %cmp30.i.i.i, label %if.else29.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else33.i.i.i

if.else29.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.else29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else33.i.i.i:                                  ; preds = %if.else29.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = trunc i32 %82 to i16
  %div35.lhs.trunc.i.i.i = add i16 %90, -10000
  %div3568.i.i.i = udiv i16 %div35.lhs.trunc.i.i.i, 2500
  %conv36.i.i.i = trunc i16 %div3568.i.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else39.i.i.i:                                  ; preds = %if.else23.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %82)
  %cmp40.i.i.i = icmp ult i32 %82, 40000
  br i1 %cmp40.i.i.i, label %if.else39.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else43.i.i.i

if.else39.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.else39.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else43.i.i.i:                                  ; preds = %if.else39.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %82)
  %cmp44.i.i.i = icmp ugt i32 %82, 115000
  br i1 %cmp44.i.i.i, label %if.else43.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, label %if.else47.i.i.i

if.else43.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge: ; preds = %if.else43.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

if.else47.i.i.i:                                  ; preds = %if.else43.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub48.i.i.i = add nsw i32 %82, -40000
  %div49.i.i.i = udiv i32 %sub48.i.i.i, 5000
  %conv50.i.i.i = trunc i32 %div49.i.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i.i

cypress_get_mclk_frequency_ratio.exit.i.i:        ; preds = %if.else47.i.i.i, %if.else43.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.else39.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.else33.i.i.i, %if.else29.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.then25.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.else16.i.i.i, %if.else12.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.else8.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.else6.i.i.i, %if.else.i.i66.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge, %if.then1.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge
  %mc_para_index.0.i.i.i = phi i8 [ %conv.i.i.i, %if.else6.i.i.i ], [ %conv19.i.i.i, %if.else16.i.i.i ], [ %conv36.i.i.i, %if.else33.i.i.i ], [ %conv50.i.i.i, %if.else47.i.i.i ], [ 0, %if.then1.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 15, %if.else.i.i66.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 0, %if.else8.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 15, %if.else12.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 0, %if.then25.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 15, %if.else29.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 0, %if.else39.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ], [ 15, %if.else43.i.i.i.cypress_get_mclk_frequency_ratio.exit.i.i_crit_edge ]
  %91 = or i8 %mc_para_index.0.i.i.i, 16
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %mc_para_index.0.i.i.i, i8 %91
  %phi.cast.i = zext i8 %spec.select.i.i to i32
  %phi.bo.i = shl nuw i32 %phi.cast.i, 24
  br label %cypress_get_strobe_mode_settings.exit.i

cypress_get_strobe_mode_settings.exit.i:          ; preds = %cypress_get_mclk_frequency_ratio.exit.i.i, %for.end.i.cypress_get_strobe_mode_settings.exit.i_crit_edge
  %result.0.i.i = phi i32 [ 0, %for.end.i.cypress_get_strobe_mode_settings.exit.i_crit_edge ], [ %phi.bo.i, %cypress_get_mclk_frequency_ratio.exit.i.i ]
  %or.i = or i32 %result.0.i.i, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %93 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %94, i32 10856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 %92) #6, !srcloc !39
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %95 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp882.i = icmp sgt i32 %96, 0
  br i1 %cmp882.i, label %cypress_get_strobe_mode_settings.exit.i.for.body10.i_crit_edge, label %cypress_get_strobe_mode_settings.exit.i.cypress_force_mc_use_s0.exit_crit_edge

cypress_get_strobe_mode_settings.exit.i.cypress_force_mc_use_s0.exit_crit_edge: ; preds = %cypress_get_strobe_mode_settings.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_force_mc_use_s0.exit

cypress_get_strobe_mode_settings.exit.i.for.body10.i_crit_edge: ; preds = %cypress_get_strobe_mode_settings.exit.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %if.end13.i.for.body10.i_crit_edge, %cypress_get_strobe_mode_settings.exit.i.for.body10.i_crit_edge
  %i.183.i = phi i32 [ %inc15.i, %if.end13.i.for.body10.i_crit_edge ], [ 0, %cypress_get_strobe_mode_settings.exit.i.for.body10.i_crit_edge ]
  %97 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %98, i32 10740
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %100 = and i32 %99, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i, label %for.body10.i.cypress_force_mc_use_s0.exit_crit_edge, label %if.end13.i

for.body10.i.cypress_force_mc_use_s0.exit_crit_edge: ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_force_mc_use_s0.exit

if.end13.i:                                       ; preds = %for.body10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 214748) #6
  %inc15.i = add nuw nsw i32 %i.183.i, 1
  %102 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %usec_timeout.i, align 4
  %cmp8.i = icmp slt i32 %inc15.i, %103
  br i1 %cmp8.i, label %if.end13.i.for.body10.i_crit_edge, label %if.end13.i.cypress_force_mc_use_s0.exit_crit_edge

if.end13.i.cypress_force_mc_use_s0.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_force_mc_use_s0.exit

if.end13.i.for.body10.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10.i

cypress_force_mc_use_s0.exit:                     ; preds = %if.end13.i.cypress_force_mc_use_s0.exit_crit_edge, %for.body10.i.cypress_force_mc_use_s0.exit_crit_edge, %cypress_get_strobe_mode_settings.exit.i.cypress_force_mc_use_s0.exit_crit_edge
  %or18.i = or i32 %result.0.i.i, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %104 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #6
  %105 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %106, i32 10856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %104) #6, !srcloc !39
  tail call fastcc void @cypress_wait_for_mc_sequencer(ptr noundef %rdev, i8 noundef zeroext 10) #6
  %call.i144 = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1.i145 = tail call zeroext i8 @rv770_get_memory_module_index(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %range_table.i) #6
  %107 = call ptr @memset(ptr %range_table.i, i32 0, i32 68)
  %108 = ptrtoint ptr %call.i144 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %call.i144, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.i = icmp ne i8 %109, 0
  %call2.i = call i32 @radeon_atom_get_mclk_range_table(ptr noundef %rdev, i1 noundef zeroext %tobool.i, i8 noundef zeroext %call1.i145, ptr noundef nonnull %range_table.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i147, label %if.then24

if.end.i147:                                      ; preds = %cypress_force_mc_use_s0.exit
  %call.i.i146 = call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %110 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %range_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %cmp72.not.i.i = icmp eq i8 %111, 0
  br i1 %cmp72.not.i.i, label %if.end.i147.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i148

if.end.i147.for.end.i.i_crit_edge:                ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.lr.ph.i.i148:                            ; preds = %if.end.i147
  %rmmio_size.i.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  br label %for.body.i.i150

for.body.i.i150:                                  ; preds = %cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.body.i.i150_crit_edge, %for.body.lr.ph.i.i148
  %i.073.i.i = phi i32 [ 0, %for.body.lr.ph.i.i148 ], [ %inc.i.i153, %cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.body.i.i150_crit_edge ]
  %arrayidx.i.i149 = getelementptr %struct.atom_memory_clock_range_table, ptr %range_table.i, i32 0, i32 2, i32 %i.073.i.i
  %112 = ptrtoint ptr %arrayidx.i.i149 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i.i149, align 4
  %arrayidx2.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18, i32 3, i32 %i.073.i.i
  %114 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx2.i.i, align 4
  %115 = load i32, ptr %arrayidx.i.i149, align 4
  call void @radeon_atom_set_ac_timing(ptr noundef %rdev, i32 noundef %115) #6
  %call.i.i.i = call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %mc_reg_table.i.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i.i.i, i32 0, i32 18
  %116 = ptrtoint ptr %mc_reg_table.i.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %mc_reg_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp13.not.i.i.i = icmp eq i8 %117, 0
  br i1 %cmp13.not.i.i.i, label %for.body.i.i150.cypress_retrieve_ac_timing_for_one_entry.exit.i.i_crit_edge, label %for.body.i.i150.for.body.i.i.i_crit_edge

for.body.i.i150.for.body.i.i.i_crit_edge:         ; preds = %for.body.i.i150
  br label %for.body.i.i.i

for.body.i.i150.cypress_retrieve_ac_timing_for_one_entry.exit.i.i_crit_edge: ; preds = %for.body.i.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_retrieve_ac_timing_for_one_entry.exit.i.i

for.body.i.i.i:                                   ; preds = %r100_mm_rreg.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i150.for.body.i.i.i_crit_edge
  %i.014.i.i.i = phi i32 [ %inc.i.i.i, %r100_mm_rreg.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i150.for.body.i.i.i_crit_edge ]
  %s1.i.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i.i, i32 0, i32 18, i32 4, i32 %i.014.i.i.i, i32 1
  %118 = ptrtoint ptr %s1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %s1.i.i.i, align 2
  %conv4.i.i.i = zext i16 %119 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv4.i.i.i, 2
  %120 = ptrtoint ptr %rmmio_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rmmio_size.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %shl.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %121, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %119)
  %cmp1.i.i.i.i = icmp ult i16 %119, 16384
  %or.cond.i.i.i.i = or i1 %cmp1.i.i.i.i, %cmp.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then.i.i.i.i, label %if.else.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %123, i32 %shl.i.i.i
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !36
  %125 = call i32 @llvm.bswap.i32(i32 %124) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  br label %r100_mm_rreg.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i.i.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %shl.i.i.i) #6
  br label %r100_mm_rreg.exit.i.i.i

r100_mm_rreg.exit.i.i.i:                          ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %call3.i.i.i.i, %if.else.i.i.i.i ], [ %125, %if.then.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18, i32 3, i32 %i.073.i.i, i32 1, i32 %i.014.i.i.i
  %126 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %retval.0.i.i.i.i, ptr %arrayidx6.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.014.i.i.i, 1
  %127 = ptrtoint ptr %mc_reg_table.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %mc_reg_table.i.i.i, align 4
  %conv.i.i.i151 = zext i8 %128 to i32
  %cmp.i.i.i152 = icmp ult i32 %inc.i.i.i, %conv.i.i.i151
  br i1 %cmp.i.i.i152, label %r100_mm_rreg.exit.i.i.i.for.body.i.i.i_crit_edge, label %r100_mm_rreg.exit.i.i.i.cypress_retrieve_ac_timing_for_one_entry.exit.i.i_crit_edge

r100_mm_rreg.exit.i.i.i.cypress_retrieve_ac_timing_for_one_entry.exit.i.i_crit_edge: ; preds = %r100_mm_rreg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_retrieve_ac_timing_for_one_entry.exit.i.i

r100_mm_rreg.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %r100_mm_rreg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

cypress_retrieve_ac_timing_for_one_entry.exit.i.i: ; preds = %r100_mm_rreg.exit.i.i.i.cypress_retrieve_ac_timing_for_one_entry.exit.i.i_crit_edge, %for.body.i.i150.cypress_retrieve_ac_timing_for_one_entry.exit.i.i_crit_edge
  %inc.i.i153 = add nuw nsw i32 %i.073.i.i, 1
  %129 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %range_table.i, align 4
  %conv.i.i154 = zext i8 %130 to i32
  %cmp.i.i155 = icmp ult i32 %inc.i.i153, %conv.i.i154
  br i1 %cmp.i.i155, label %cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.body.i.i150_crit_edge, label %cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.end.i.i_crit_edge

cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.end.i.i_crit_edge: ; preds = %cypress_retrieve_ac_timing_for_one_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.body.i.i150_crit_edge: ; preds = %cypress_retrieve_ac_timing_for_one_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i150

for.end.i.i:                                      ; preds = %cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.end.i.i_crit_edge, %if.end.i147.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i8 [ 0, %if.end.i147.for.end.i.i_crit_edge ], [ %130, %cypress_retrieve_ac_timing_for_one_entry.exit.i.i.for.end.i.i_crit_edge ]
  %mc_reg_table9.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18
  %num_entries10.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18, i32 1
  %131 = ptrtoint ptr %num_entries10.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %.lcssa.i.i, ptr %num_entries10.i.i, align 1
  %valid_flag.i.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18, i32 2
  %132 = ptrtoint ptr %valid_flag.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %valid_flag.i.i, align 2
  %133 = ptrtoint ptr %mc_reg_table9.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mc_reg_table9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %cmp1578.not.i.i = icmp eq i8 %134, 0
  br i1 %cmp1578.not.i.i, label %for.end.i.i.cypress_initialize_mc_reg_table.exit.thread_crit_edge, label %for.cond18.preheader.i.preheader.i

for.end.i.i.cypress_initialize_mc_reg_table.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_initialize_mc_reg_table.exit.thread

for.cond18.preheader.i.preheader.i:               ; preds = %for.end.i.i
  %135 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %range_table.i, align 4
  %conv20.i.i = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %136)
  %cmp2175.i.i = icmp ugt i8 %136, 1
  br label %for.cond18.preheader.i.i

for.cond18.preheader.i.i:                         ; preds = %for.inc42.i.i.for.cond18.preheader.i.i_crit_edge, %for.cond18.preheader.i.preheader.i
  %i.179.i.i = phi i32 [ %inc43.i.i, %for.inc42.i.i.for.cond18.preheader.i.i_crit_edge ], [ 0, %for.cond18.preheader.i.preheader.i ]
  br i1 %cmp2175.i.i, label %for.cond18.preheader.i.i.for.body23.i.i_crit_edge, label %for.cond18.preheader.i.i.for.inc42.i.i_crit_edge

for.cond18.preheader.i.i.for.inc42.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc42.i.i

for.cond18.preheader.i.i.for.body23.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  br label %for.body23.i.i

for.cond18.i.i:                                   ; preds = %for.body23.i.i
  %inc40.i.i = add nuw nsw i32 %j.076.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc40.i.i, %conv20.i.i
  br i1 %exitcond.not.i.i, label %for.cond18.i.i.for.inc42.i.i_crit_edge, label %for.cond18.i.i.for.body23.i.i_crit_edge

for.cond18.i.i.for.body23.i.i_crit_edge:          ; preds = %for.cond18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.i.i

for.cond18.i.i.for.inc42.i.i_crit_edge:           ; preds = %for.cond18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc42.i.i

for.body23.i.i:                                   ; preds = %for.cond18.i.i.for.body23.i.i_crit_edge, %for.cond18.preheader.i.i.for.body23.i.i_crit_edge
  %j.076.i.i = phi i32 [ %inc40.i.i, %for.cond18.i.i.for.body23.i.i_crit_edge ], [ 1, %for.cond18.preheader.i.i.for.body23.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %j.076.i.i, -1
  %arrayidx27.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18, i32 3, i32 %sub.i.i, i32 1, i32 %i.179.i.i
  %137 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx27.i.i, align 4
  %arrayidx32.i.i = getelementptr %struct.evergreen_power_info, ptr %call.i.i146, i32 0, i32 18, i32 3, i32 %j.076.i.i, i32 1, i32 %i.179.i.i
  %139 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx32.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp33.not.i.i = icmp eq i32 %138, %140
  br i1 %cmp33.not.i.i, label %for.cond18.i.i, label %if.then.i.i157

if.then.i.i157:                                   ; preds = %for.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i156 = shl nuw i32 1, %i.179.i.i
  %141 = ptrtoint ptr %valid_flag.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %valid_flag.i.i, align 2
  %143 = trunc i32 %shl.i.i156 to i16
  %conv38.i.i = or i16 %142, %143
  store i16 %conv38.i.i, ptr %valid_flag.i.i, align 2
  br label %for.inc42.i.i

for.inc42.i.i:                                    ; preds = %if.then.i.i157, %for.cond18.i.i.for.inc42.i.i_crit_edge, %for.cond18.preheader.i.i.for.inc42.i.i_crit_edge
  %inc43.i.i = add nuw nsw i32 %i.179.i.i, 1
  %144 = ptrtoint ptr %mc_reg_table9.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %mc_reg_table9.i.i, align 4
  %conv14.i.i = zext i8 %145 to i32
  %cmp15.i.i = icmp ult i32 %inc43.i.i, %conv14.i.i
  br i1 %cmp15.i.i, label %for.inc42.i.i.for.cond18.preheader.i.i_crit_edge, label %for.inc42.i.i.cypress_initialize_mc_reg_table.exit.thread_crit_edge

for.inc42.i.i.cypress_initialize_mc_reg_table.exit.thread_crit_edge: ; preds = %for.inc42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_initialize_mc_reg_table.exit.thread

for.inc42.i.i.for.cond18.preheader.i.i_crit_edge: ; preds = %for.inc42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader.i.i

cypress_initialize_mc_reg_table.exit.thread:      ; preds = %for.inc42.i.i.cypress_initialize_mc_reg_table.exit.thread_crit_edge, %for.end.i.i.cypress_initialize_mc_reg_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %range_table.i) #6
  br label %if.end26

if.then24:                                        ; preds = %cypress_force_mc_use_s0.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %range_table.i) #6
  %146 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %dynamic_ac_timing, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %cypress_initialize_mc_reg_table.exit.thread
  call fastcc void @cypress_force_mc_use_s1(ptr noundef %rdev, ptr noundef %1)
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end19.if.end27_crit_edge
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %147 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %platform_caps, align 4
  %and = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void @rv770_enable_backbias(ptr noundef %rdev, i1 noundef zeroext true) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %dynamic_ss = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 9
  %149 = ptrtoint ptr %dynamic_ss to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %dynamic_ss, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool33.not = icmp eq i8 %150, 0
  br i1 %tobool33.not, label %if.end32.if.end35_crit_edge, label %if.then34

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  %call.i158 = call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %sclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i158, i32 0, i32 7
  %151 = ptrtoint ptr %sclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %sclk_ss.i, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool1.not.i = icmp eq i8 %152, 0
  br i1 %tobool1.not.i, label %if.then34.if.end.i162_crit_edge, label %do.body.i

if.then34.if.end.i162_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i162

do.body.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i.i160 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %153 = ptrtoint ptr %rmmio.i.i160 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmmio.i.i160, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %154, i32 1596
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i161) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %156 = or i32 %155, 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %157 = ptrtoint ptr %rmmio.i.i160 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmmio.i.i160, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %158, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 %156) #6, !srcloc !39
  br label %if.end.i162

if.end.i162:                                      ; preds = %do.body.i, %if.then34.if.end.i162_crit_edge
  %mclk_ss.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i158, i32 0, i32 8
  %159 = ptrtoint ptr %mclk_ss.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %mclk_ss.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool4.not.i = icmp eq i8 %160, 0
  br i1 %tobool4.not.i, label %if.end.i162.if.end35_crit_edge, label %do.body6.i

if.end.i162.if.end35_crit_edge:                   ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.body6.i:                                       ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i74.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %161 = ptrtoint ptr %rmmio.i74.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i74.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %162, i32 1564
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %164 = or i32 %163, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %165 = ptrtoint ptr %rmmio.i74.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %rmmio.i74.i, align 4
  %add.ptr.i79.i163 = getelementptr i8, ptr %166, i32 1564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i163, i32 %164) #6, !srcloc !39
  br label %if.end35

if.end35:                                         ; preds = %do.body6.i, %if.end.i162.if.end35_crit_edge, %if.end32.if.end35_crit_edge
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 14
  %167 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %thermal_protection, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool36.not = icmp eq i8 %168, 0
  br i1 %tobool36.not, label %if.end35.if.end38_crit_edge, label %if.then37

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void @rv770_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext true) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  call void @rv770_setup_bsp(ptr noundef %rdev) #6
  call void @rv770_program_git(ptr noundef %rdev) #6
  call void @rv770_program_tp(ptr noundef %rdev) #6
  call void @rv770_program_tpp(ptr noundef %rdev) #6
  call void @rv770_program_sstp(ptr noundef %rdev) #6
  call void @rv770_program_engine_speed_parameters(ptr noundef %rdev) #6
  %rmmio.i.i164 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %169 = ptrtoint ptr %rmmio.i.i164 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmmio.i.i164, align 4
  %add.ptr.i.i165 = getelementptr i8, ptr %170, i32 1812
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i165) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %172 = and i32 %171, -251658256
  %173 = or i32 %172, 251658253
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @arm_heavy_mb() #6
  %174 = ptrtoint ptr %rmmio.i.i164 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i.i164, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %175, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %173) #6, !srcloc !39
  call void @rv770_program_vc(ptr noundef %rdev) #6
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 2
  %176 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool39.not = icmp eq i8 %177, 0
  br i1 %tobool39.not, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cypress_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %call42 = call i32 @rv770_upload_firmware(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call46 = call i32 @cypress_get_table_locations(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  %call.i166 = call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %smc_statetable.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60
  %178 = call ptr @memset(ptr %smc_statetable.i, i32 0, i32 1304)
  %call1.i167 = call i32 @cypress_populate_smc_voltage_tables(ptr noundef %rdev, ptr noundef %smc_statetable.i) #6
  %int_thermal_type.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %179 = ptrtoint ptr %int_thermal_type.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %int_thermal_type.i, align 4
  %181 = zext i32 %180 to i64
  call void @__sanitizer_cov_trace_switch(i64 %181, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %180, label %sw.default.i [
    i32 6, label %if.end49.sw.epilog.i_crit_edge
    i32 10, label %if.end49.sw.epilog.i_crit_edge174
    i32 0, label %sw.bb2.i
  ]

if.end49.sw.epilog.i_crit_edge174:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end49.sw.epilog.i_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb2.i, %if.end49.sw.epilog.i_crit_edge, %if.end49.sw.epilog.i_crit_edge174
  %.sink.i = phi i8 [ 1, %sw.default.i ], [ -1, %sw.bb2.i ], [ 0, %if.end49.sw.epilog.i_crit_edge ], [ 0, %if.end49.sw.epilog.i_crit_edge174 ]
  %182 = ptrtoint ptr %smc_statetable.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %.sink.i, ptr %smc_statetable.i, align 1
  %183 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %platform_caps, align 4
  %and.i = and i32 %184, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i168 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i168, label %sw.epilog.i.if.end.i170_crit_edge, label %if.then.i169

sw.epilog.i.if.end.i170_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i170

if.then.i169:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %systemFlags.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60, i32 1
  %185 = ptrtoint ptr %systemFlags.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %systemFlags.i, align 1
  %187 = or i8 %186, 1
  store i8 %187, ptr %systemFlags.i, align 1
  br label %if.end.i170

if.end.i170:                                      ; preds = %if.then.i169, %sw.epilog.i.if.end.i170_crit_edge
  %188 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %platform_caps, align 4
  %and10.i = and i32 %189, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i170.if.end17.i_crit_edge, label %if.then12.i

if.end.i170.if.end17.i_crit_edge:                 ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  %systemFlags13.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60, i32 1
  %190 = ptrtoint ptr %systemFlags13.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %systemFlags13.i, align 1
  %192 = or i8 %191, 16
  store i8 %192, ptr %systemFlags13.i, align 1
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.end.i170.if.end17.i_crit_edge
  %193 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %platform_caps, align 4
  %and21.i = and i32 %194, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end17.i.if.end28.i_crit_edge, label %if.then23.i

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %systemFlags24.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60, i32 1
  %195 = ptrtoint ptr %systemFlags24.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %systemFlags24.i, align 1
  %197 = or i8 %196, 2
  store i8 %197, ptr %systemFlags24.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %if.end17.i.if.end28.i_crit_edge
  %198 = ptrtoint ptr %call.i166 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %call.i166, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool29.not.i = icmp eq i8 %199, 0
  br i1 %tobool29.not.i, label %if.end28.i.cypress_init_smc_table.exit_crit_edge, label %if.then30.i

if.end28.i.cypress_init_smc_table.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_init_smc_table.exit

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %systemFlags31.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60, i32 1
  %200 = ptrtoint ptr %systemFlags31.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %systemFlags31.i, align 1
  %202 = or i8 %201, 4
  store i8 %202, ptr %systemFlags31.i, align 1
  br label %cypress_init_smc_table.exit

cypress_init_smc_table.exit:                      ; preds = %if.then30.i, %if.end28.i.cypress_init_smc_table.exit_crit_edge
  %call36.i = call i32 @cypress_populate_smc_initial_state(ptr noundef %rdev, ptr noundef %1, ptr noundef %smc_statetable.i) #6
  %call40.i = call i32 @cypress_populate_smc_acpi_state(ptr noundef %rdev, ptr noundef %smc_statetable.i) #6
  %driverState.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60, i32 9
  %initialState.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 60, i32 7
  %203 = call ptr @memcpy(ptr %driverState.i, ptr %initialState.i, i32 280)
  %state_table_start.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 57
  %204 = ptrtoint ptr %state_table_start.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %state_table_start.i, align 4
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i166, i32 0, i32 59
  %206 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %sram_end.i, align 4
  %call44.i = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %205, ptr noundef %smc_statetable.i, i16 noundef zeroext 1304, i16 noundef zeroext %207) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool51.not = icmp eq i32 %call44.i, 0
  br i1 %tobool51.not, label %if.end53, label %if.then52

if.then52:                                        ; preds = %cypress_init_smc_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end53:                                         ; preds = %cypress_init_smc_table.exit
  %208 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %dynamic_ac_timing, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool55.not = icmp eq i8 %209, 0
  br i1 %tobool55.not, label %if.end53.if.end61_crit_edge, label %if.then56

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then56:                                        ; preds = %if.end53
  %call57 = call i32 @cypress_populate_mc_reg_table(ptr noundef %rdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then56.if.end61_crit_edge, label %if.then59

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end61:                                         ; preds = %if.then56.if.end61_crit_edge, %if.end53.if.end61_crit_edge
  call void @cypress_program_response_times(ptr noundef %rdev)
  call void @r7xx_start_smc(ptr noundef %rdev) #6
  %call.i171 = call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext 93) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call.i171)
  %cmp.not.i = icmp eq i8 %call.i171, 1
  br i1 %cmp.not.i, label %if.end65, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  call void @cypress_enable_sclk_control(ptr noundef %rdev, i1 noundef zeroext true)
  %memory_transition = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 6
  %210 = ptrtoint ptr %memory_transition to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %memory_transition, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool66.not = icmp eq i8 %211, 0
  br i1 %tobool66.not, label %if.end65.if.end68_crit_edge, label %if.then67

if.end65.if.end68_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  call void @cypress_enable_mclk_control(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65.if.end68_crit_edge
  call void @cypress_start_dpm(ptr noundef %rdev)
  %212 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %gfx_clock_gating, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool70.not = icmp eq i8 %213, 0
  br i1 %tobool70.not, label %if.end68.if.end72_crit_edge, label %if.then71

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cypress_gfx_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 11
  %214 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %mg_clock_gating, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool73.not = icmp eq i8 %215, 0
  br i1 %tobool73.not, label %if.end72.if.end75_crit_edge, label %if.then74

if.end72.if.end75_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cypress_mg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext true)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end72.if.end75_crit_edge
  call void @rv770_enable_auto_throttle_source(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then64, %if.then59, %if.then52, %if.then48, %if.then44, %if.then10, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10 ], [ %call42, %if.then44 ], [ %call46, %if.then48 ], [ %call44.i, %if.then52 ], [ %call57, %if.then59 ], [ -22, %if.then64 ], [ 0, %if.end75 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_restore_cgcg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rv770_dpm_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_voltage_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_force_mc_use_s1(ptr noundef %rdev, ptr noundef %radeon_boot_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_ps(ptr noundef %radeon_boot_state) #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 10740
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.rv7xx_ps, ptr %call, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mclk, align 4
  tail call void @radeon_atom_set_ac_timing(ptr noundef %rdev, i32 noundef %5) #6
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %mc_wait_for_idle = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %mc_wait_for_idle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc_wait_for_idle, align 4
  %call2 = tail call i32 %9(ptr noundef %rdev) #6
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %12)
  %switch = icmp eq i32 %12, 42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  br i1 %switch, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i61 = getelementptr i8, ptr %14, i32 8352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 251658240) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %16, i32 8356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 251658240) #6, !srcloc !39
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i69 = getelementptr i8, ptr %14, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 251658240) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %18, i32 9660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 251658240) #6, !srcloc !39
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %19 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp791 = icmp sgt i32 %20, 0
  br i1 %cmp791, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %21 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asic, align 8
  %wait_for_vblank = getelementptr inbounds %struct.radeon_asic, ptr %22, i32 0, i32 16, i32 2
  %23 = ptrtoint ptr %wait_for_vblank to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wait_for_vblank, align 4
  tail call void %24(ptr noundef %rdev, i32 noundef %i.092) #6
  %inc = add nuw nsw i32 %i.092, 1
  %25 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_crtc, align 4
  %cmp7 = icmp slt i32 %inc, %26
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %28, i32 10856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 67108864) #6, !srcloc !39
  tail call fastcc void @cypress_wait_for_mc_sequencer(ptr noundef %rdev, i8 noundef zeroext 4)
  %29 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mclk, align 4
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.end.cypress_get_strobe_mode_settings.exit_crit_edge, label %if.then.i

for.end.cypress_get_strobe_mode_settings.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_strobe_mode_settings.exit

if.then.i:                                        ; preds = %for.end
  %mclk_strobe_mode_threshold.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 41
  %33 = ptrtoint ptr %mclk_strobe_mode_threshold.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk_strobe_mode_threshold.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %30)
  %cmp.not.i = icmp ult i32 %34, %30
  %35 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %36)
  %cmp.i.i = icmp ugt i32 %36, 46
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else23.i.i

if.then.i.i:                                      ; preds = %if.then.i
  br i1 %cmp.not.i, label %if.else8.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %30)
  %cmp2.i.i = icmp ult i32 %30, 10000
  br i1 %cmp2.i.i, label %if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else.i.i

if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else.i.i:                                      ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %30)
  %cmp4.i.i = icmp ugt i32 %30, 47500
  br i1 %cmp4.i.i, label %if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else6.i.i

if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = trunc i32 %30 to i16
  %div.lhs.trunc.i.i = add i16 %37, -10000
  %div67.i.i = udiv i16 %div.lhs.trunc.i.i, 2500
  %conv.i.i = trunc i16 %div67.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65000, i32 %30)
  %cmp9.i.i = icmp ult i32 %30, 65000
  br i1 %cmp9.i.i, label %if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else12.i.i

if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else12.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 135000, i32 %30)
  %cmp13.i.i = icmp ugt i32 %30, 135000
  br i1 %cmp13.i.i, label %if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else16.i.i

if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else16.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub17.i.i = add nsw i32 %30, -60000
  %div18.i.i = udiv i32 %sub17.i.i, 5000
  %conv19.i.i = trunc i32 %div18.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else23.i.i:                                    ; preds = %if.then.i
  br i1 %cmp.not.i, label %if.else39.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %30)
  %cmp26.i.i = icmp ult i32 %30, 10000
  br i1 %cmp26.i.i, label %if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else29.i.i

if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else29.i.i:                                    ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47500, i32 %30)
  %cmp30.i.i = icmp ugt i32 %30, 47500
  br i1 %cmp30.i.i, label %if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else33.i.i

if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else33.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = trunc i32 %30 to i16
  %div35.lhs.trunc.i.i = add i16 %38, -10000
  %div3568.i.i = udiv i16 %div35.lhs.trunc.i.i, 2500
  %conv36.i.i = trunc i16 %div3568.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else39.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %30)
  %cmp40.i.i = icmp ult i32 %30, 40000
  br i1 %cmp40.i.i, label %if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else43.i.i

if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else43.i.i:                                    ; preds = %if.else39.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 115000, i32 %30)
  %cmp44.i.i = icmp ugt i32 %30, 115000
  br i1 %cmp44.i.i, label %if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, label %if.else47.i.i

if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge: ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_get_mclk_frequency_ratio.exit.i

if.else47.i.i:                                    ; preds = %if.else43.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub48.i.i = add nsw i32 %30, -40000
  %div49.i.i = udiv i32 %sub48.i.i, 5000
  %conv50.i.i = trunc i32 %div49.i.i to i8
  br label %cypress_get_mclk_frequency_ratio.exit.i

cypress_get_mclk_frequency_ratio.exit.i:          ; preds = %if.else47.i.i, %if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else33.i.i, %if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else16.i.i, %if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.else6.i.i, %if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge, %if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge
  %mc_para_index.0.i.i = phi i8 [ %conv.i.i, %if.else6.i.i ], [ %conv19.i.i, %if.else16.i.i ], [ %conv36.i.i, %if.else33.i.i ], [ %conv50.i.i, %if.else47.i.i ], [ 0, %if.then1.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 0, %if.else8.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else12.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 0, %if.then25.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else29.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 0, %if.else39.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ], [ 15, %if.else43.i.i.cypress_get_mclk_frequency_ratio.exit.i_crit_edge ]
  %39 = or i8 %mc_para_index.0.i.i, 16
  %spec.select.i = select i1 %cmp.not.i, i8 %mc_para_index.0.i.i, i8 %39
  %phi.cast = zext i8 %spec.select.i to i32
  %phi.bo = shl nuw i32 %phi.cast, 24
  br label %cypress_get_strobe_mode_settings.exit

cypress_get_strobe_mode_settings.exit:            ; preds = %cypress_get_mclk_frequency_ratio.exit.i, %for.end.cypress_get_strobe_mode_settings.exit_crit_edge
  %result.0.i = phi i32 [ 0, %for.end.cypress_get_strobe_mode_settings.exit_crit_edge ], [ %phi.bo, %cypress_get_mclk_frequency_ratio.exit.i ]
  %or = or i32 %result.0.i, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %42, i32 10856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %40) #6, !srcloc !39
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %43 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp1393 = icmp sgt i32 %44, 0
  br i1 %cmp1393, label %cypress_get_strobe_mode_settings.exit.for.body15_crit_edge, label %cypress_get_strobe_mode_settings.exit.for.end23_crit_edge

cypress_get_strobe_mode_settings.exit.for.end23_crit_edge: ; preds = %cypress_get_strobe_mode_settings.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

cypress_get_strobe_mode_settings.exit.for.body15_crit_edge: ; preds = %cypress_get_strobe_mode_settings.exit
  br label %for.body15

for.body15:                                       ; preds = %if.end20.for.body15_crit_edge, %cypress_get_strobe_mode_settings.exit.for.body15_crit_edge
  %i.194 = phi i32 [ %inc22, %if.end20.for.body15_crit_edge ], [ 0, %cypress_get_strobe_mode_settings.exit.for.body15_crit_edge ]
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %46, i32 10740
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool18.not = icmp eq i32 %48, 0
  br i1 %tobool18.not, label %if.end20, label %for.body15.for.end23_crit_edge

for.body15.for.end23_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

if.end20:                                         ; preds = %for.body15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #6
  %inc22 = add nuw nsw i32 %i.194, 1
  %50 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usec_timeout, align 4
  %cmp13 = icmp slt i32 %inc22, %51
  br i1 %cmp13, label %if.end20.for.body15_crit_edge, label %if.end20.for.end23_crit_edge

if.end20.for.end23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end23

if.end20.for.body15_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.end23:                                        ; preds = %if.end20.for.end23_crit_edge, %for.body15.for.end23_crit_edge, %cypress_get_strobe_mode_settings.exit.for.end23_crit_edge
  %or25 = or i32 %result.0.i, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %or25) #6
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %54, i32 10856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %52) #6, !srcloc !39
  tail call fastcc void @cypress_wait_for_mc_sequencer(ptr noundef %rdev, i8 noundef zeroext 10)
  br label %cleanup

cleanup:                                          ; preds = %for.end23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_backbias(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_thermal_protection(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_setup_bsp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_git(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_tp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_tpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_sstp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_engine_speed_parameters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_program_vc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_enable_dynamic_pcie_gen2(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %0 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pciep_rreg.i, align 4
  %call1.i = tail call i32 %1(ptr noundef %rdev, i32 noundef 164) #6
  br i1 %enable, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %2 = and i32 %call1.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %2)
  %.not.i = icmp eq i32 %2, 25165824
  br i1 %.not.i, label %if.then5.i, label %if.then.i.do.body_crit_edge

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then5.i:                                       ; preds = %if.then.i
  %boot_in_gen2.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %boot_in_gen2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %boot_in_gen2.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not.i = icmp eq i8 %4, 0
  br i1 %tobool6.not.i, label %cypress_enable_bif_dynamic_pcie_gen2.exit.thread32, label %if.then5.i.do.body_crit_edge

if.then5.i.do.body_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cypress_enable_bif_dynamic_pcie_gen2.exit.thread32: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2036
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %8 = and i32 %7, 16777215
  %9 = or i32 %8, 218103808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %11, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %9) #6, !srcloc !39
  %and10.i = and i32 %call1.i, -2109442
  %or13.i = or i32 %and10.i, 2101249
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %12 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %13(ptr noundef %rdev, i32 noundef 164, i32 noundef %or13.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #6
  %and14.i = or i32 %and10.i, 4097
  %15 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %16(ptr noundef %rdev, i32 noundef 164, i32 noundef %and14.i) #6
  br label %do.body

if.else.i:                                        ; preds = %entry
  %boot_in_gen217.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %boot_in_gen217.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %boot_in_gen217.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not.i = icmp eq i8 %18, 0
  %and21.i = and i32 %call1.i, -12290
  %spec.select.i = select i1 %tobool18.not.i, i32 %and21.i, i32 %call1.i
  %19 = and i32 %spec.select.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.else.i.do.body2_crit_edge, label %cypress_enable_bif_dynamic_pcie_gen2.exit

if.else.i.do.body2_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

cypress_enable_bif_dynamic_pcie_gen2.exit:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %pciep_wreg28.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %21 = ptrtoint ptr %pciep_wreg28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pciep_wreg28.i, align 8
  tail call void %22(ptr noundef %rdev, i32 noundef 164, i32 noundef %spec.select.i) #6
  br label %do.body2

do.body:                                          ; preds = %cypress_enable_bif_dynamic_pcie_gen2.exit.thread32, %if.then5.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 1596
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %26 = or i32 %25, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %28, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %26) #6, !srcloc !39
  br label %if.end

do.body2:                                         ; preds = %cypress_enable_bif_dynamic_pcie_gen2.exit, %if.else.i.do.body2_crit_edge
  %rmmio.i24 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i24, align 4
  %add.ptr.i25 = getelementptr i8, ptr %30, i32 1596
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %32 = and i32 %31, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %rmmio.i24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i24, align 4
  %add.ptr.i30 = getelementptr i8, ptr %34, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %32) #6, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_upload_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r7xx_start_smc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_gfx_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  br i1 %enable, label %if.then, label %do.body11

if.then:                                          ; preds = %entry
  %light_sleep = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %light_sleep to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %light_sleep, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.then.do.body4_crit_edge, label %if.then2

if.then.do.body4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 192) #6, !srcloc !39
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 32, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 33, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 34, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 35, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 36, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 37, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 38, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 39, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 40, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 41, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 42, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 43, i32 noundef -1) #6
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %5, i32 1604
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %7 = or i32 %6, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %9, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %7) #6, !srcloc !39
  br label %do.body4

do.body4:                                         ; preds = %if.then2, %if.then.do.body4_crit_edge
  %rmmio.i107 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i107 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i107, align 4
  %add.ptr.i108 = getelementptr i8, ptr %11, i32 1604
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %13 = or i32 %12, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %rmmio.i107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i107, align 4
  %add.ptr.i112 = getelementptr i8, ptr %15, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %13) #6, !srcloc !39
  br label %if.end44

do.body11:                                        ; preds = %entry
  %rmmio.i115 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %17, i32 1604
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %19 = and i32 %18, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i120 = getelementptr i8, ptr %21, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %19) #6, !srcloc !39
  %22 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i124 = getelementptr i8, ptr %23, i32 1604
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %25 = or i32 %24, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i128 = getelementptr i8, ptr %27, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %25) #6, !srcloc !39
  %28 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i132 = getelementptr i8, ptr %29, i32 1604
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %31 = and i32 %30, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i136 = getelementptr i8, ptr %33, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %31) #6, !srcloc !39
  %34 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i140 = getelementptr i8, ptr %35, i32 39160
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %light_sleep33 = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 5
  %37 = ptrtoint ptr %light_sleep33 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %light_sleep33, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool34.not = icmp eq i8 %38, 0
  br i1 %tobool34.not, label %do.body11.if.end44_crit_edge, label %do.body36

do.body11.if.end44_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.body36:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i144 = getelementptr i8, ptr %40, i32 1604
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %42 = and i32 %41, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i148 = getelementptr i8, ptr %44, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %42) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %rmmio.i115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i115, align 4
  %add.ptr.i152 = getelementptr i8, ptr %46, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 192) #6, !srcloc !39
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 32, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 33, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 34, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 35, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 36, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 37, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 38, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 39, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 40, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 41, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 42, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 43, i32 noundef 0) #6
  br label %if.end44

if.end44:                                         ; preds = %do.body36, %do.body11.if.end44_crit_edge, %do.body4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_mg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  br i1 %enable, label %if.then, label %if.else64

if.then:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 192) #6, !srcloc !39
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 2, i32 noundef 0) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 3, i32 noundef 0) #6
  %mgcgtssm = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %mgcgtssm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mgcgtssm, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then9

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %1)
  %switch.selectcmp118 = icmp eq i32 %1, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 40
  %switch.select = select i1 %switch.selectcmp, i32 1855209536, i32 -2120987712
  %switch.select119 = select i1 %switch.selectcmp118, i32 1184120896, i32 %switch.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %switch.select119) #6
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %8, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %6) #6, !srcloc !39
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then.if.end10_crit_edge
  %mcls = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 4
  %9 = ptrtoint ptr %mcls to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mcls, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool11.not, label %if.end10.if.end69_crit_edge, label %do.body

if.end10.if.end69_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %12, i32 9800
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %14 = or i32 %13, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %16, i32 9800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 %14) #6, !srcloc !39
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %18, i32 9804
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %20 = or i32 %19, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %22, i32 9804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 %20) #6, !srcloc !39
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %24, i32 9808
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %26 = or i32 %25, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %28, i32 9808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %26) #6, !srcloc !39
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %30, i32 8376
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %32 = or i32 %31, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %34, i32 8376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %32) #6, !srcloc !39
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %36, i32 8380
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i159) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %38 = or i32 %37, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %40, i32 8380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 %38) #6, !srcloc !39
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i167 = getelementptr i8, ptr %42, i32 8384
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %44 = or i32 %43, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %45 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %46, i32 8384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i171, i32 %44) #6, !srcloc !39
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %48, i32 9336
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %50 = or i32 %49, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %52, i32 9336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %50) #6, !srcloc !39
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i183 = getelementptr i8, ptr %54, i32 5568
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i183) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %56 = or i32 %55, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i187 = getelementptr i8, ptr %58, i32 5568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %56) #6, !srcloc !39
  br label %if.end69

if.else64:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %rmmio.i190 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %59 = ptrtoint ptr %rmmio.i190 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i190, align 4
  %add.ptr.i191 = getelementptr i8, ptr %60, i32 32812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i191, i32 192) #6, !srcloc !39
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 0, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 1, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 2, i32 noundef -1) #6
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 3, i32 noundef -1) #6
  %mgcgtssm65 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 12
  %61 = ptrtoint ptr %mgcgtssm65 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mgcgtssm65, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool66.not = icmp eq i8 %62, 0
  br i1 %tobool66.not, label %if.else64.if.end69_crit_edge, label %if.then67

if.else64.if.end69_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %rmmio.i190 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i190, align 4
  %add.ptr.i195 = getelementptr i8, ptr %64, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i195, i32 -1068764031) #6, !srcloc !39
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.else64.if.end69_crit_edge, %do.body, %if.end10.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_enable_auto_throttle_source(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_dpm_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %boot_ps2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %0 = ptrtoint ptr %boot_ps2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %boot_ps2, align 4
  %call3 = tail call zeroext i1 @rv770_dpm_enabled(ptr noundef %rdev) #6
  br i1 %call3, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rv770_clear_vc(ptr noundef %rdev) #6
  %thermal_protection = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %thermal_protection to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %thermal_protection, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rv770_enable_thermal_protection(ptr noundef %rdev, i1 noundef zeroext false) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dynamic_pcie_gen2, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  %call.i.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %pciep_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %6 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call1.i.i = tail call i32 %7(ptr noundef %rdev, i32 noundef 164) #6
  %boot_in_gen217.i.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %boot_in_gen217.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %boot_in_gen217.i.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not.i.i = icmp eq i8 %9, 0
  %and21.i.i = and i32 %call1.i.i, -12290
  %spec.select.i.i = select i1 %tobool18.not.i.i, i32 %and21.i.i, i32 %call1.i.i
  %10 = and i32 %spec.select.i.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.then7.cypress_enable_dynamic_pcie_gen2.exit_crit_edge, label %cypress_enable_bif_dynamic_pcie_gen2.exit.i

if.then7.cypress_enable_dynamic_pcie_gen2.exit_crit_edge: ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_enable_dynamic_pcie_gen2.exit

cypress_enable_bif_dynamic_pcie_gen2.exit.i:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %pciep_wreg28.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %12 = ptrtoint ptr %pciep_wreg28.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pciep_wreg28.i.i, align 8
  tail call void %13(ptr noundef %rdev, i32 noundef 164, i32 noundef %spec.select.i.i) #6
  br label %cypress_enable_dynamic_pcie_gen2.exit

cypress_enable_dynamic_pcie_gen2.exit:            ; preds = %cypress_enable_bif_dynamic_pcie_gen2.exit.i, %if.then7.cypress_enable_dynamic_pcie_gen2.exit_crit_edge
  %rmmio.i24.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %15, i32 1596
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %17 = and i32 %16, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %rmmio.i24.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i24.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %19, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %17) #6, !srcloc !39
  br label %if.end8

if.end8:                                          ; preds = %cypress_enable_dynamic_pcie_gen2.exit, %if.end5.if.end8_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %irq, align 8, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool9.not = icmp eq i8 %21, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %22 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %int_thermal_type, align 4
  %call11 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %23) #6
  br i1 %call11, label %if.then12, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %24 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %25 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %asic, align 8
  %irq14 = getelementptr inbounds %struct.radeon_asic, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq14, align 4
  %call15 = tail call i32 %28(ptr noundef %rdev) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %gfx_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 10
  %29 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gfx_clock_gating, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool17.not = icmp eq i8 %30, 0
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_gfx_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext false)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call, i32 0, i32 11
  %31 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mg_clock_gating, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool20.not = icmp eq i8 %32, 0
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_mg_clock_gating_enable(ptr noundef %rdev, i1 noundef zeroext false)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  tail call void @rv770_stop_dpm(ptr noundef %rdev) #6
  tail call void @r7xx_stop_smc(ptr noundef %rdev) #6
  tail call void @cypress_enable_spread_spectrum(ptr noundef %rdev, i1 noundef zeroext false)
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call1, i32 0, i32 2
  %33 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dynamic_ac_timing, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  br i1 %tobool23.not, label %if.end22.if.end25_crit_edge, label %if.then24

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @cypress_force_mc_use_s1(ptr noundef %rdev, ptr noundef %1)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  tail call void @rv770_reset_smio_status(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_clear_vc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_stop_dpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r7xx_stop_smc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_reset_smio_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %mc_reg_table.i = alloca %struct.SMC_Evergreen_MCRegisters, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %2 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ps, align 4
  %call3 = tail call i32 @rv770_restrict_performance_levels_before_switch(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcie_performance_request, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  %call.i.i = tail call ptr @rv770_get_ps(ptr noundef %1) #6
  %flags.i.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  %call.i12.i = tail call ptr @rv770_get_ps(ptr noundef %3) #6
  %flags.i13.i = getelementptr inbounds %struct.rv7xx_pl, ptr %call.i12.i, i32 0, i32 4
  %8 = ptrtoint ptr %flags.i13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i13.i, align 4
  %and.i14.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %and.i14.i)
  %cmp.i = icmp ugt i32 %and.i.i, %and.i14.i
  br i1 %cmp.i, label %if.end7.i, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end7.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  %pciep_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %11 = ptrtoint ptr %pciep_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pciep_rreg.i.i, align 4
  %call.i15.i = tail call i32 %12(ptr noundef %rdev, i32 noundef 164) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end7.i, %if.then5.if.end6_crit_edge, %if.end.if.end6_crit_edge
  tail call void @rv770_set_uvd_clock_before_set_eng_clock(ptr noundef %rdev, ptr noundef %1, ptr noundef %3) #6
  %call7 = tail call i32 @rv770_halt_smc(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @cypress_upload_sw_state(ptr noundef %rdev, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %dynamic_ac_timing to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dynamic_ac_timing, align 1, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %call.i = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1.i = tail call ptr @evergreen_get_pi(ptr noundef %rdev) #6
  call void @llvm.lifetime.start.p0(i64 388, ptr nonnull %mc_reg_table.i) #6
  %15 = call ptr @memset(ptr %mc_reg_table.i, i32 0, i32 388)
  call fastcc void @cypress_convert_mc_reg_table_to_smc(ptr noundef %rdev, ptr noundef %1, ptr noundef nonnull %mc_reg_table.i) #6
  %mc_reg_table_start.i = getelementptr inbounds %struct.evergreen_power_info, ptr %call1.i, i32 0, i32 24
  %16 = ptrtoint ptr %mc_reg_table_start.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mc_reg_table_start.i, align 4
  %add.i = add i16 %17, 196
  %arrayidx.i = getelementptr inbounds %struct.SMC_Evergreen_MCRegisters, ptr %mc_reg_table.i, i32 0, i32 3, i32 2
  %sram_end.i = getelementptr inbounds %struct.rv7xx_power_info, ptr %call.i, i32 0, i32 59
  %18 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sram_end.i, align 4
  %call3.i = call i32 @rv770_copy_bytes_to_smc(ptr noundef %rdev, i16 noundef zeroext %add.i, ptr noundef %arrayidx.i, i16 noundef zeroext 192, i16 noundef zeroext %19) #6
  call void @llvm.lifetime.end.p0(i64 388, ptr nonnull %mc_reg_table.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool18.not = icmp eq i32 %call3.i, 0
  br i1 %tobool18.not, label %if.then16.if.end21_crit_edge, label %if.then19

if.then16.if.end21_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end21:                                         ; preds = %if.then16.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  call void @cypress_program_memory_timing_parameters(ptr noundef %rdev, ptr noundef %1)
  %call22 = call i32 @rv770_resume_smc(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @rv770_set_sw_state(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @rv770_set_uvd_clock_after_set_eng_clock(ptr noundef %rdev, ptr noundef %1, ptr noundef %3) #6
  %20 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pcie_performance_request, align 2, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool31.not = icmp eq i8 %21, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @cypress_notify_link_speed_change_after_state_change(ptr noundef %rdev, ptr noundef %1, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %if.then28, %if.then24, %if.then19, %if.then13, %if.then9, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call7, %if.then9 ], [ %call11, %if.then13 ], [ %call3.i, %if.then19 ], [ %call22, %if.then24 ], [ %call26, %if.then28 ], [ 0, %if.then32 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_restrict_performance_levels_before_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_set_uvd_clock_before_set_eng_clock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_halt_smc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_resume_smc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_set_sw_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_set_uvd_clock_after_set_eng_clock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_dpm_display_configuration_changed(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1812
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %3 = and i32 %2, -251658241
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %5 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  %or1.i = or i32 %4, 3
  %tmp.0.i = select i1 %cmp.i, i32 %4, i32 %or1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5.i = icmp sgt i32 %6, 1
  %or9.i = or i32 %tmp.0.i, 12
  %tmp.1.i = select i1 %cmp5.i, i32 %tmp.0.i, i32 %or9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %tmp.1.i) #6
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %9, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %7) #6, !srcloc !39
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %11, i32 1276
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i) #6, !srcloc !36
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %14 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp16.i = icmp sgt i32 %15, 0
  br i1 %cmp16.i, label %land.lhs.true.i, label %entry.cypress_program_display_gap.exit_crit_edge

entry.cypress_program_display_gap.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_program_display_gap.exit

land.lhs.true.i:                                  ; preds = %entry
  %and12.i = and i32 %13, 7
  %new_active_crtcs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 14
  %16 = ptrtoint ptr %new_active_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %new_active_crtcs.i, align 4
  %shl.i = shl nuw nsw i32 1, %and12.i
  %and19.i = and i32 %17, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %land.lhs.true.i.cypress_program_display_gap.exit_crit_edge

land.lhs.true.i.cypress_program_display_gap.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cypress_program_display_gap.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %18 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2181.i = icmp sgt i32 %19, 0
  br i1 %cmp2181.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.082.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl25.i = shl nuw i32 1, %i.082.i
  %and26.i = and i32 %shl25.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.inc.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.082.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %19, %for.inc.i.for.end.i_crit_edge ], [ %i.082.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %19)
  %cmp31.i = icmp eq i32 %i.0.lcssa.i, %19
  %.i.0.i = select i1 %cmp31.i, i32 0, i32 %i.0.lcssa.i
  %and35.i = and i32 %13, -8
  %or37.i = or i32 %.i.0.i, %and35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or37.i) #6
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %22, i32 1276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %20) #6, !srcloc !39
  br label %cypress_program_display_gap.exit

cypress_program_display_gap.exit:                 ; preds = %for.end.i, %land.lhs.true.i.cypress_program_display_gap.exit_crit_edge, %entry.cypress_program_display_gap.exit_crit_edge
  %23 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp42.i = icmp sgt i32 %24, 0
  %conv.i.i = select i1 %cmp42.i, i16 94, i16 93
  %call.i.i = tail call zeroext i8 @rv770_send_msg_to_smc(ptr noundef %rdev, i16 noundef zeroext %conv.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cypress_dpm_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #6
  %0 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 3752) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 4
  tail call void @rv770_get_max_vddc(ptr noundef %rdev) #6
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
  %call1 = tail call i32 @r600_get_platform_caps(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @rv7xx_parse_power_table(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %8 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %voltage_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1000, ptr %voltage_response_time, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end7.if.end15_crit_edge
  %backbias_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %11 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backbias_response_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18 = icmp eq i32 %12, 0
  br i1 %cmp18, label %if.then19, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1000, ptr %backbias_response_time, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end15.if.end23_crit_edge
  %call24 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %dividers) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %14 = ptrtoint ptr %ref_div to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ref_div, align 4
  %add = add i32 %15, 1
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %add.sink = phi i32 [ %add, %if.then26 ], [ 4, %if.end23.if.end29_crit_edge ]
  %16 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 38
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.sink, ptr %16, align 4
  %mclk_strobe_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 41
  %18 = ptrtoint ptr %mclk_strobe_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40000, ptr %mclk_strobe_mode_threshold, align 8
  %mclk_edc_enable_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 42
  %19 = ptrtoint ptr %mclk_edc_enable_threshold to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40000, ptr %mclk_edc_enable_threshold, align 4
  %mclk_edc_wr_enable_threshold = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 17
  %20 = ptrtoint ptr %mclk_edc_wr_enable_threshold to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 40000, ptr %mclk_edc_wr_enable_threshold, align 4
  %rlp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 53
  %21 = ptrtoint ptr %rlp to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 10, ptr %rlp, align 8
  %rmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 54
  %22 = ptrtoint ptr %rmp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 25, ptr %rmp, align 4
  %lhp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 55
  %23 = ptrtoint ptr %lhp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 25, ptr %lhp, align 8
  %lmp = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 56
  %24 = ptrtoint ptr %lmp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %lmp, align 4
  %call30 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 1, i8 noundef zeroext 0) #6
  %voltage_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 5
  %frombool = zext i1 %call30 to i8
  %25 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %voltage_control, align 1
  %call31 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  %mvdd_control = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 6
  %frombool32 = zext i1 %call31 to i8
  %26 = ptrtoint ptr %mvdd_control to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool32, ptr %mvdd_control, align 2
  %call33 = call zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef %rdev, i8 noundef zeroext 4, i8 noundef zeroext 0) #6
  %vddci_control = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 1
  %frombool34 = zext i1 %call33 to i8
  %27 = ptrtoint ptr %vddci_control to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool34, ptr %vddci_control, align 8
  call void @rv770_get_engine_memory_ss(ptr noundef %rdev) #6
  %asi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 49
  %28 = ptrtoint ptr %asi to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1000, ptr %asi, align 8
  %pasi = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 50
  %29 = ptrtoint ptr %pasi to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 400000, ptr %pasi, align 4
  %vrc = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 51
  %30 = ptrtoint ptr %vrc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12582963, ptr %vrc, align 8
  %power_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %power_gating to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %power_gating, align 1
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %32 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %family, align 4
  %34 = and i32 %33, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %34)
  %switch = icmp ne i32 %34, 42
  %spec.select = zext i1 %switch to i8
  %35 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select, ptr %35, align 2
  %mg_clock_gating = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 11
  %37 = ptrtoint ptr %mg_clock_gating to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %mg_clock_gating, align 1
  %mgcgtssm = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 12
  %38 = ptrtoint ptr %mgcgtssm to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %mgcgtssm, align 4
  %ls_clock_gating = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 11
  %39 = ptrtoint ptr %ls_clock_gating to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %ls_clock_gating, align 2
  %sclk_deep_sleep = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 9
  %dynamic_pcie_gen2 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %dynamic_pcie_gen2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %dynamic_pcie_gen2, align 2
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %41 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %int_thermal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp43.not = icmp ne i32 %42, 0
  %.sink141 = zext i1 %cmp43.not to i8
  %43 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 14
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %.sink141, ptr %43, align 2
  %display_gap = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 15
  %45 = ptrtoint ptr %display_gap to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %display_gap, align 1
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 8
  %and = lshr i32 %47, 16
  %48 = trunc i32 %and to i8
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 16
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %49, ptr %50, align 8
  %ulps = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 17
  %52 = ptrtoint ptr %ulps to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %ulps, align 1
  %dynamic_ac_timing = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 2
  %pcie_performance_request = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 7
  %53 = call ptr @memset(ptr %dynamic_ac_timing, i32 1, i32 5)
  %54 = ptrtoint ptr %pcie_performance_request to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %pcie_performance_request, align 2
  %.off139 = add i32 %33, -41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off139)
  %switch140 = icmp ult i32 %.off139, 3
  %.sink143 = zext i1 %switch140 to i8
  %55 = getelementptr inbounds %struct.evergreen_power_info, ptr %call7.i.i, i32 0, i32 10
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink143, ptr %55, align 1
  %57 = ptrtoint ptr %sclk_deep_sleep to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %sclk_deep_sleep, align 8
  %mclk_stutter_mode_threshold = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 40
  %58 = ptrtoint ptr %mclk_stutter_mode_threshold to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mclk_stutter_mode_threshold, align 4
  %sram_end = getelementptr inbounds %struct.rv7xx_power_info, ptr %call7.i.i, i32 0, i32 59
  %59 = ptrtoint ptr %sram_end to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -32768, ptr %sram_end, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv7xx_parse_power_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atom_is_voltage_gpio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv770_get_engine_memory_ss(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cypress_dpm_fini(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void @kfree(ptr noundef %5) #6
  %inc = add nuw nsw i32 %i.014, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #6
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cypress_dpm_vblank_too_short(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rv770_get_pi(ptr noundef %rdev) #6
  %call1 = tail call i32 @r600_dpm_get_vblank_time(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 450
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %cond)
  %cmp = icmp ult i32 %call1, %cond
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dpm_get_vblank_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_get_decoded_reference_divider(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv740_get_dll_speed(i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_smc_sp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rv770_populate_smc_t(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cypress_wait_for_mc_sequencer(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %switch.tableidx = add i32 %1, -39
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cypress_wait_for_mc_sequencer, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end6

if.end6:                                          ; preds = %switch.lookup, %entry.if.end6_crit_edge
  %channels.0 = phi i32 [ %switch.load, %switch.lookup ], [ 2, %entry.if.end6_crit_edge ]
  %rmmio.i99 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %if.end6
  %i.0119 = phi i32 [ 0, %if.end6 ], [ %inc54, %for.inc53.for.body_crit_edge ]
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %6)
  %switch = icmp eq i32 %6, 42
  %7 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i99, align 4
  br i1 %switch, label %do.body, label %do.body25

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %8, i32 8352
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %10 = and i32 %9, -458753
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %shl = shl i32 %i.0119, 8
  %or = or i32 %11, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %13 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i88 = getelementptr i8, ptr %14, i32 8352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %12) #6, !srcloc !39
  %15 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i92 = getelementptr i8, ptr %16, i32 8356
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %18 = and i32 %17, -458753
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %or21 = or i32 %19, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or21) #6
  %21 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i96 = getelementptr i8, ptr %22, i32 8356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %20) #6, !srcloc !39
  br label %if.end43

do.body25:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i100 = getelementptr i8, ptr %8, i32 8192
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i100) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %24 = and i32 %23, -805306369
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %shl29 = shl i32 %i.0119, 4
  %or31 = or i32 %25, %shl29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %or31) #6
  %27 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i104 = getelementptr i8, ptr %28, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %26) #6, !srcloc !39
  %29 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i108 = getelementptr i8, ptr %30, i32 9660
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108) #6, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %32 = and i32 %31, -805306369
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %or40 = or i32 %33, %shl29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %or40) #6
  %35 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i112 = getelementptr i8, ptr %36, i32 9660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %34) #6, !srcloc !39
  br label %if.end43

if.end43:                                         ; preds = %do.body25, %do.body
  %37 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp45117.not = icmp eq i32 %38, 0
  br i1 %cmp45117.not, label %if.end43.for.inc53_crit_edge, label %if.end43.for.body46_crit_edge

if.end43.for.body46_crit_edge:                    ; preds = %if.end43
  br label %for.body46

if.end43.for.inc53_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53

for.body46:                                       ; preds = %if.end52.for.body46_crit_edge, %if.end43.for.body46_crit_edge
  %j.0118 = phi i32 [ %inc, %if.end52.for.body46_crit_edge ], [ 0, %if.end43.for.body46_crit_edge ]
  %39 = ptrtoint ptr %rmmio.i99 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i99, align 4
  %add.ptr.i116 = getelementptr i8, ptr %40, i32 10856
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !36
  %42 = lshr i32 %41, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %43 = trunc i32 %42 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %value)
  %cmp49 = icmp eq i8 %43, %value
  br i1 %cmp49, label %for.body46.for.inc53_crit_edge, label %if.end52

for.body46.for.inc53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53

if.end52:                                         ; preds = %for.body46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748) #6
  %inc = add nuw i32 %j.0118, 1
  %45 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usec_timeout, align 4
  %cmp45 = icmp ult i32 %inc, %46
  br i1 %cmp45, label %if.end52.for.body46_crit_edge, label %if.end52.for.inc53_crit_edge

if.end52.for.inc53_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc53

if.end52.for.body46_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body46

for.inc53:                                        ; preds = %if.end52.for.inc53_crit_edge, %for.body46.for.inc53_crit_edge, %if.end43.for.inc53_crit_edge
  %inc54 = add nuw nsw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc54, %channels.0
  br i1 %exitcond.not, label %for.end55, label %for.inc53.for.body_crit_edge

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end55:                                        ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_mclk_range_table(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_ac_timing(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eg_cg_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1819, i32 4}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1827, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1864, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1870, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1875, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1881, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1892, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1962, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1971, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1976, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1982, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1991, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/cypress_dpm.c", i32 1996, i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i8 0, i8 2}
!36 = !{i64 5039035}
!37 = !{i64 2158332809}
!38 = !{i64 2158333216}
!39 = !{i64 5038617}
!40 = !{!"auto-init"}
