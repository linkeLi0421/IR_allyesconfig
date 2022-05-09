; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_atombios.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_atombios.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.radeon_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_GPIO_I2C_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x %struct._ATOM_GPIO_I2C_ASSIGMENT] }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_GPIO_I2C_ASSIGMENT = type <{ i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_I2C_ID_CONFIG_ACCESS, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%union._ATOM_I2C_ID_CONFIG_ACCESS = type { %struct._ATOM_I2C_ID_CONFIG }
%struct._ATOM_I2C_ID_CONFIG = type { i8 }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct._ATOM_GPIO_PIN_LUT = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_GPIO_PIN_ASSIGNMENT] }
%struct._ATOM_GPIO_PIN_ASSIGNMENT = type { i16, i8, i8 }
%struct.radeon_router = type { i32, %struct.radeon_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_hpd = type { i32, i8, %struct.radeon_gpio_rec }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct._ATOM_OBJECT_HEADER = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_DISPLAY_OBJECT_PATH_TABLE = type { i8, i8, [2 x i8], [1 x %struct._ATOM_DISPLAY_OBJECT_PATH] }
%struct._ATOM_DISPLAY_OBJECT_PATH = type { i16, i16, i16, i16, [1 x i16] }
%struct._ATOM_OBJECT_TABLE = type { i8, [3 x i8], [1 x %struct._ATOM_OBJECT] }
%struct._ATOM_OBJECT = type { i16, i16, i16, i16 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, [2 x i32], i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, [96 x i32] }
%struct._ATOM_COMMON_RECORD_HEADER = type { i8, i8 }
%struct._ATOM_ENCODER_CAP_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, %union.anon.109 }
%union.anon.109 = type { i16 }
%struct._ATOM_I2C_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, %struct._ATOM_I2C_ID_CONFIG, i8 }
%struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8, [2 x i8] }
%struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8, [2 x i8] }
%struct._ATOM_HPD_INT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8 }
%struct._ATOM_SUPPORTED_DEVICES_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, [10 x %struct._ATOM_CONNECTOR_INFO_I2C] }
%struct._ATOM_CONNECTOR_INFO_I2C = type { %union._ATOM_CONNECTOR_INFO_ACCESS, %union._ATOM_I2C_ID_CONFIG_ACCESS }
%union._ATOM_CONNECTOR_INFO_ACCESS = type { %struct._ATOM_CONNECTOR_INFO }
%struct._ATOM_CONNECTOR_INFO = type { i8 }
%struct._ATOM_SUPPORTED_DEVICES_INFO_2d1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, [16 x %struct._ATOM_CONNECTOR_INFO_I2C], [16 x %struct._ATOM_CONNECTOR_INC_SRC_BITMAP] }
%struct._ATOM_CONNECTOR_INC_SRC_BITMAP = type { i8 }
%struct.bios_connector = type { i8, i16, i16, i32, %struct.radeon_i2c_bus_rec, %struct.radeon_hpd }
%struct._ATOM_XTMDS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, %union._ATOM_I2C_ID_CONFIG_ACCESS, i8, i8, i8, i8, i8 }
%struct._ATOM_FIRMWARE_INFO = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%union._ATOM_FIRMWARE_CAPABILITY_ACCESS = type { %struct._ATOM_FIRMWARE_CAPABILITY }
%struct._ATOM_FIRMWARE_CAPABILITY = type { i16 }
%struct._ATOM_FIRMWARE_INFO_V1_2 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8], [2 x i32], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%struct._ATOM_FIRMWARE_INFO_V1_4 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%struct._ATOM_FIRMWARE_INFO_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, [3 x i8] }
%struct._ATOM_FIRMWARE_INFO_V2_2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i8, [3 x i8], i32, i32, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, [3 x i8], i16, i16, [3 x i32] }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V6 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, [10 x i32], [10 x i32], [10 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i8, i8, i16, i16, i8, i8, [15 x i32], %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.111, i8, i16, i16 }
%union.anon.111 = type { i8 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i8, i8, i16, i16, i16, [2 x i32], i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_TMDS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, [4 x %struct._ATOM_MISC_CONTROL_INFO] }
%struct._ATOM_MISC_CONTROL_INFO = type { i16, i8, i8, i8, i8 }
%struct.radeon_tmds_pll = type { i32, i32 }
%struct._ATOM_SPREAD_SPECTRUM_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT] }
%struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct._ATOM_ASIC_INTERNAL_SS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [4 x %struct._ATOM_ASIC_SS_ASSIGNMENT] }
%struct._ATOM_ASIC_SS_ASSIGNMENT = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_ASIC_INTERNAL_SS_INFO_V2 = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_ASIC_SS_ASSIGNMENT_V2] }
%struct._ATOM_ASIC_SS_ASSIGNMENT_V2 = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_ASIC_INTERNAL_SS_INFO_V3 = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_ASIC_SS_ASSIGNMENT_V3] }
%struct._ATOM_ASIC_SS_ASSIGNMENT_V3 = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i16, i16, [4 x i32], i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%union._ATOM_TDP_CONFIG = type { %struct._ATOM_TDP_CONFIG_BITS }
%struct._ATOM_TDP_CONFIG_BITS = type { i32 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [3 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i16, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct.radeon_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16, ptr, i32, i8, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct._ATOM_LVDS_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, %struct._ATOM_DTD_FORMAT, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_DTD_FORMAT = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8 }
%union._ATOM_MODE_MISC_INFO_ACCESS = type { %struct._ATOM_MODE_MISC_INFO }
%struct._ATOM_MODE_MISC_INFO = type { i16 }
%struct.radeon_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr, ptr, i32 }
%struct._ATOM_FAKE_EDID_PATCH_RECORD = type { i8, i8, [1 x i8] }
%struct._ATOM_PANEL_RESOLUTION_PATCH_RECORD = type <{ i8, i16, i16 }>
%struct._COMPASSIONATE_DATA = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i16, i8, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i8, i16, i16, i8, i8, i8, i16 }>
%struct._ATOM_ANALOG_TV_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, [2 x %struct._ATOM_MODE_TIMING] }
%struct._ATOM_MODE_TIMING = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_MODE_MISC_INFO_ACCESS, i16, i16, i16, i16, i16, i8, i8 }
%struct._ATOM_ANALOG_TV_INFO_V1_2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, [3 x %struct._ATOM_DTD_FORMAT] }
%struct.radeon_encoder_tv_dac = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, %struct.radeon_tv_regs }
%struct.radeon_tv_regs = type { i32, i32, i32, i32, i32, [32 x i16], [32 x i16] }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct._ATOM_POWERPLAY_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i8, [8 x %struct._ATOM_POWERMODE_INFO] }
%struct._ATOM_POWERMODE_INFO = type <{ i32, i32, i32, i16, i16, i8, i8, i8, i8, i8 }>
%struct._ATOM_POWERPLAY_INFO_V3 = type { %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i8, [8 x %struct._ATOM_POWERMODE_INFO_V3] }
%struct._ATOM_POWERMODE_INFO_V3 = type <{ i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }>
%struct.radeon_power_state = type { i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.radeon_pm_clock_info = type { i32, i32, %struct.radeon_voltage, i32 }
%struct.radeon_voltage = type { i32, %struct.radeon_gpio_rec, i32, i8, i8, i8, i8, i16, i16 }
%struct._ATOM_POWERMODE_INFO_V2 = type <{ i32, i32, i32, i32, i8, i8, i8, i8, i8 }>
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_STATE = type { i8, [1 x i8] }
%struct._StateArray = type { i8, [1 x %struct._ATOM_PPLIB_STATE_V2] }
%struct._ATOM_PPLIB_STATE_V2 = type { i8, i8, [1 x i8] }
%struct._NonClockInfoArray = type { i8, i8, [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO] }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ClockInfoArray = type { i8, i8, [1 x i8] }
%union.get_clock_dividers = type { %struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6 }
%struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6 = type { %struct._ATOM_COMPUTE_CLOCK_FREQ, [2 x i32] }
%struct._ATOM_COMPUTE_CLOCK_FREQ = type { i32 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS = type { i32, i8, i8, i8, i8 }
%struct.atom_clock_dividers = type { i32, %union.anon.113, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V2 = type <{ i32, i8, i16, i8 }>
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V3 = type { %union.anon.115, i8, i8, i8, i8 }
%union.anon.115 = type { %struct._ATOM_COMPUTE_CLOCK_FREQ }
%struct._ATOM_S_MPLL_FB_DIVIDER = type { i16, i16 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V5 = type { %union.anon.116, i8, i8, %union.anon.117, i8 }
%union.anon.116 = type { %struct._ATOM_COMPUTE_CLOCK_FREQ }
%union.anon.117 = type { i8 }
%struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6 = type { %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4, %struct._ATOM_S_MPLL_FB_DIVIDER, i8, i8, i8, i8 }
%struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V4 = type { i32 }
%struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1 = type { %union.anon.120, i8, i8, %union.anon.121, i8 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i8 }
%struct.atom_mpll_param = type { %union.anon.118, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32 }
%struct._DYNAMIC_CLOCK_GATING_PARAMETERS = type { i8, [3 x i8] }
%struct._GET_ENGINE_CLOCK_PARAMETERS = type { i32 }
%struct._GET_MEMORY_CLOCK_PARAMETERS = type { i32 }
%struct._SET_ENGINE_CLOCK_PS_ALLOCATION = type { i32, %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS }
%struct._SET_MEMORY_CLOCK_PS_ALLOCATION = type { i32, %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS }
%union.set_voltage = type { %struct._SET_VOLTAGE_PS_ALLOCATION }
%struct._SET_VOLTAGE_PS_ALLOCATION = type { %struct._SET_VOLTAGE_PARAMETERS, %struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS }
%struct._SET_VOLTAGE_PARAMETERS = type { i8, i8, i8, i8 }
%struct._WRITE_ONE_BYTE_HW_I2C_DATA_PARAMETERS = type { i16, i16, i8, i8, i8, i8 }
%struct._ATOM_ASIC_PROFILING_INFO_V2_1 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i16, i8, i16, i16, i8, i16, i16 }>
%union.get_voltage_info = type { %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2 }
%struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2 = type { i8, i8, i16, i32 }
%struct.radeon_clock_voltage_dependency_entry = type { i32, i16 }
%struct._ATOM_VOLTAGE_OBJECT = type { i8, i8, %struct._ATOM_VOLTAGE_CONTROL, %struct._ATOM_VOLTAGE_FORMULA }
%struct._ATOM_VOLTAGE_CONTROL = type { i8, i8, i8, i8, i16, [9 x i8], i8 }
%struct._ATOM_VOLTAGE_FORMULA = type { i16, i16, i8, i8, i8, i8, [32 x i8] }
%struct._ATOM_VOLTAGE_OBJECT_V2 = type { i8, i8, %struct._ATOM_VOLTAGE_CONTROL, %struct._ATOM_VOLTAGE_FORMULA_V2 }
%struct._ATOM_VOLTAGE_FORMULA_V2 = type { i8, [3 x i8], [32 x %struct._VOLTAGE_LUT_ENTRY] }
%struct._VOLTAGE_LUT_ENTRY = type { i16, i16 }
%struct._ATOM_VOLTAGE_OBJECT_HEADER_V3 = type { i8, i8, i16 }
%struct._ATOM_SVID2_VOLTAGE_OBJECT_V3 = type { %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, i16, i8, i8, i32 }
%struct.atom_voltage_table = type { i32, i32, i32, [32 x %struct.atom_voltage_table_entry] }
%struct.atom_voltage_table_entry = type { i16, i32 }
%struct._ATOM_GPIO_VOLTAGE_OBJECT_V3 = type <{ %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, i8, i8, i8, i8, i32, [1 x %struct._VOLTAGE_LUT_ENTRY_V2] }>
%struct._VOLTAGE_LUT_ENTRY_V2 = type <{ i32, i16 }>
%struct._ATOM_VRAM_INFO_V3 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, [9 x i8], i8, [16 x %struct._ATOM_VRAM_MODULE_V3], %struct._ATOM_INIT_REG_BLOCK }>
%struct._ATOM_VRAM_MODULE_V3 = type { i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, %struct._ATOM_MEMORY_FORMAT }
%struct._ATOM_MEMORY_FORMAT = type { i32, %union.anon.122, %union.anon.123, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x %struct._ATOM_MEMORY_TIMING_FORMAT] }
%union.anon.122 = type { i16 }
%union.anon.123 = type { i16 }
%struct._ATOM_MEMORY_TIMING_FORMAT = type { i32, %union.anon.124, %union.anon.125, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.126 }
%union.anon.124 = type { i16 }
%union.anon.125 = type { i16 }
%union.anon.126 = type { i16 }
%struct._ATOM_INIT_REG_BLOCK = type <{ i16, i16, [1 x %struct._ATOM_INIT_REG_INDEX_FORMAT], [1 x %struct._ATOM_MEMORY_SETTING_DATA_BLOCK] }>
%struct._ATOM_INIT_REG_INDEX_FORMAT = type <{ i16, i8 }>
%struct._ATOM_MEMORY_SETTING_DATA_BLOCK = type { %union._ATOM_MEMORY_SETTING_ID_CONFIG_ACCESS, [1 x i32] }
%union._ATOM_MEMORY_SETTING_ID_CONFIG_ACCESS = type { %struct._ATOM_MEMORY_SETTING_ID_CONFIG }
%struct._ATOM_MEMORY_SETTING_ID_CONFIG = type { i32 }
%struct.atom_memory_info = type { i8, i8 }
%struct._ATOM_VRAM_INFO_V4 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, i8, i32, [4 x i8], i8, [16 x %struct._ATOM_VRAM_MODULE_V4], %struct._ATOM_INIT_REG_BLOCK }>
%struct._ATOM_VRAM_MODULE_V4 = type { i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], %union.anon.128, %union.anon.129, i8, i8, [2 x i8], [5 x %struct._ATOM_MEMORY_TIMING_FORMAT] }
%union.anon.128 = type { i16 }
%union.anon.129 = type { i16 }
%struct._ATOM_VRAM_INFO_HEADER_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, [3 x i16], i8, i8, i8, i8, [16 x %struct._ATOM_VRAM_MODULE_V7] }
%struct._ATOM_VRAM_MODULE_V7 = type <{ i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, i16, i8, i8, i8, i8, [20 x i8] }>
%struct.atom_memory_clock_range_table = type { i8, [3 x i8], [16 x i32] }
%struct.atom_mc_reg_table = type { i8, i8, [20 x %struct.atom_mc_reg_entry], [32 x %struct.atom_mc_register_address] }
%struct.atom_mc_reg_entry = type { i32, [32 x i32] }
%struct.atom_mc_register_address = type { i16, i8 }
%struct.radeon_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i8, i16, %struct.radeon_hpd, %struct.radeon_router, ptr, i32, i32, i32, i8, ptr, ptr, %struct.drm_dp_mst_topology_mgr, ptr, [6 x %struct.stream_attribs], i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.stream_attribs = type { i16, i16 }
%struct._ATOM_PPLIB_SUMO_CLOCK_INFO = type { i16, i8, i8, i16, i16, [2 x i32] }
%struct._ATOM_PPLIB_RS780_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i8, i8, i16, i8, i8, i16, i32 }>
%struct._ATOM_PPLIB_CI_CLOCK_INFO = type <{ i16, i8, i16, i8, i8, i16 }>
%struct._ATOM_PPLIB_SI_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i8, i8, i32 }>
%struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i16, i32 }>
%struct._ATOM_PPLIB_R600_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i16, i16, i32 }>

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0x%x\00", [27 x i8] zeroinitializer }, align 32
@object_connector_convert = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 0, i32 2, i32 2, i32 3, i32 3, i32 1, i32 5, i32 6, i32 0, i32 0, i32 9, i32 0, i32 11, i32 12, i32 7, i32 9, i32 0, i32 0, i32 0, i32 10, i32 14, i32 0], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Skipping Component Video\0A\00", [38 x i8] zeroinitializer }, align 32
@supported_devices_connector_convert = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 5, i32 7, i32 0, i32 0, i32 11, i32 12, i32 0, i32 0, i32 9, i32 10], [32 x i8] zeroinitializer }, align 32
@radeon_r4xx_atom = external dso_local local_unnamed_addr global i32, align 4
@radeon_atom_get_clock_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016[drm] Changing default dispclk from %dMhz to 600Mhz\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon_atom_get_clock_info\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/radeon/radeon_atombios.c\00", [55 x i8] zeroinitializer }, align 32
@radeon_atom_get_clock_info._entry_ptr = internal global ptr @radeon_atom_get_clock_info._entry, section ".printk_index", align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported IGP table: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TMDS PLL From ATOMBIOS %u %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Unsupported ASIC_InternalSS_Info table: %d %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bad LCD record %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Default TV standard: NTSC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Default TV standard: NTSC-J\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Default TV standard: PAL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Default TV standard: PAL-M\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Default TV standard: PAL-N\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Default TV standard: PAL-CN\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Default TV standard: PAL-60\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Default TV standard: SECAM\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown TV standard; defaulting to NTSC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown table version %d, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown voltage object table\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"old table version %d, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"new table version %d, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TV1 connected\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TV1 disconnected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CV connected\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CV disconnected\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LCD1 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LCD1 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CRT1 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CRT1 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CRT2 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CRT2 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP1 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP1 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP2 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP2 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP3 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP3 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP4 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP4 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP5 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP5 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DFP6 connected\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DFP6 disconnected\0A\00", [45 x i8] zeroinitializer }, align 32
@supported_devices_connector_object_id_convert = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 0, i16 5, i16 2, i16 4, i16 5, i16 6, i16 7, i16 14, i16 10, i16 10, i16 19, i16 12, i16 13, i16 7], [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@radeon_atombios_parse_power_table_1_3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 2099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] Possible %s thermal controller at 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"radeon_atombios_parse_power_table_1_3\00", [58 x i8] zeroinitializer }, align 32
@radeon_atombios_parse_power_table_1_3._entry_ptr = internal global ptr @radeon_atombios_parse_power_table_1_3._entry, section ".printk_index", align 4
@thermal_controller_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.47, ptr @.str.51, ptr @.str.52], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm63\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1032\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1030\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6649\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f75375\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asc7xxx\00", [24 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] Internal thermal controller %s fan control\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"radeon_atombios_add_pplib_thermal_controller\00", [51 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry, section ".printk_index", align 4
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.58 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.57, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.60 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.59, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.62 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.61, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.64 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.63, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.66 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.65, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.68 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.67, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 2324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.70 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.69, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.54, ptr @.str.4, i32 2330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016[drm] External GPIO thermal controller %s fan control\0A\00", [39 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.73 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.71, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.54, ptr @.str.4, i32 2336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016[drm] ADT7473 with internal thermal controller %s fan control\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.76 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.74, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.54, ptr @.str.4, i32 2342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016[drm] EMC2103 with internal thermal controller %s fan control\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.79 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.77, section ".printk_index", align 4
@radeon_atombios_add_pplib_thermal_controller._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.54, ptr @.str.4, i32 2349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016[drm] Possible %s thermal controller at 0x%02x %s fan control\0A\00", [63 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.82 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.80, section ".printk_index", align 4
@pp_lib_thermal_controller_names = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.47, ptr @.str.51, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.46, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], [52 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.54, ptr @.str.4, i32 2365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016[drm] Unknown thermal controller type %d at 0x%02x %s fan control\0A\00", [59 x i8] zeroinitializer }, align 32
@radeon_atombios_add_pplib_thermal_controller._entry_ptr.85 = internal global ptr @radeon_atombios_add_pplib_thermal_controller._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RV6xx\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RV770\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7473\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"External GPIO\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Evergreen\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emc2103\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sumo\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Northern Islands\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Southern Islands\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm96163\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sea Islands\00", [20 x i8] zeroinitializer }, align 32
@switch.table.radeon_atombios_get_tv_info = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.13, ptr @.str.15, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@switch.table.radeon_atombios_get_tv_info.97 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 1, i32 2, i32 7, i32 8, i32 3, i32 6], [32 x i8] zeroinitializer }, align 32
@switch.table.radeon_atombios_get_tv_dac_info = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.13, ptr @.str.15, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@switch.table.radeon_atombios_get_tv_dac_info.98 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 1, i32 2, i32 7, i32 8, i32 3, i32 6], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 6144, i64 6400, i64 6656]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 3, i64 2, i64 4]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 14, i64 15]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 256, i64 65536, i64 16777216, i64 67108864, i64 268435456]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 16, i64 6144, i64 6400, i64 6656]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 16, i64 22099, i64 31041, i64 31086]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 512]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 16, i64 28994, i64 28998, i64 29125]
@__sancov_gen_cov_switch_values.107 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 16, i64 128]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 16, i64 38040, i64 38289, i64 38340]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 16, i64 38914, i64 38917, i64 38918]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 7]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 255]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.123 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 4]
@__sancov_gen_cov_switch_values.144 = internal global [13 x i64] [i64 11, i64 8, i64 7, i64 8, i64 11, i64 12, i64 14, i64 15, i64 16, i64 18, i64 19, i64 137, i64 141]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 188, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant [25 x i8] c"object_connector_convert\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 491, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 937, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [36 x i8] c"supported_devices_connector_convert\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 455, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1255, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1318, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1360, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1600, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1742, i32 6 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1901, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1905, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1909, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1913, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1917, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1921, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1925, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1929, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1933, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3131, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3471, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3737, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 3960, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4182, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4186, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4195, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4199, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4208, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4213, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4222, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4227, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4236, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4241, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4250, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4255, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4264, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4269, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4278, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4283, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4292, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4297, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4306, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4311, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4320, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 4325, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant [46 x i8] c"supported_devices_connector_object_id_convert\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 474, i32 23 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2097, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [25 x i8] c"thermal_controller_names\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1981, i32 20 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1982, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1983, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1984, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1985, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1986, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1988, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1989, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2287, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2292, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2297, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2302, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2307, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2312, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2317, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2322, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2328, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2334, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2340, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2345, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant [32 x i8] c"pp_lib_thermal_controller_names\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 1992, i32 20 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2361, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2000, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2001, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2002, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2004, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2005, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2006, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2007, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2008, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2009, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2010, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private constant [44 x i8] c"../drivers/gpu/drm/radeon/radeon_atombios.c\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 2011, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [41 x i8] c"switch.table.radeon_atombios_get_tv_info\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [44 x i8] c"switch.table.radeon_atombios_get_tv_info.97\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [45 x i8] c"switch.table.radeon_atombios_get_tv_dac_info\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [48 x i8] c"switch.table.radeon_atombios_get_tv_dac_info.98\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @radeon_atom_get_clock_info._entry, ptr @radeon_atom_get_clock_info._entry_ptr, ptr @radeon_atombios_add_pplib_thermal_controller._entry, ptr @radeon_atombios_add_pplib_thermal_controller._entry.57, ptr @radeon_atombios_add_pplib_thermal_controller._entry.59, ptr @radeon_atombios_add_pplib_thermal_controller._entry.61, ptr @radeon_atombios_add_pplib_thermal_controller._entry.63, ptr @radeon_atombios_add_pplib_thermal_controller._entry.65, ptr @radeon_atombios_add_pplib_thermal_controller._entry.67, ptr @radeon_atombios_add_pplib_thermal_controller._entry.69, ptr @radeon_atombios_add_pplib_thermal_controller._entry.71, ptr @radeon_atombios_add_pplib_thermal_controller._entry.74, ptr @radeon_atombios_add_pplib_thermal_controller._entry.77, ptr @radeon_atombios_add_pplib_thermal_controller._entry.80, ptr @radeon_atombios_add_pplib_thermal_controller._entry.83, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.58, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.60, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.62, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.64, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.66, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.68, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.70, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.73, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.76, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.79, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.82, ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.85, ptr @radeon_atombios_parse_power_table_1_3._entry, ptr @radeon_atombios_parse_power_table_1_3._entry_ptr, ptr @.str, ptr @object_connector_convert, ptr @.str.1, ptr @supported_devices_connector_convert, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @supported_devices_connector_object_id_convert, ptr @.str.44, ptr @.str.45, ptr @thermal_controller_names, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @pp_lib_thermal_controller_names, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @switch.table.radeon_atombios_get_tv_info, ptr @switch.table.radeon_atombios_get_tv_info.97, ptr @switch.table.radeon_atombios_get_tv_dac_info, ptr @switch.table.radeon_atombios_get_tv_dac_info.98], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @object_connector_convert to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_devices_connector_convert to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atom_get_clock_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_devices_connector_object_id_convert to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_parse_power_table_1_3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_controller_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_lib_thermal_controller_names to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_atombios_add_pplib_thermal_controller._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atombios_get_tv_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atombios_get_tv_info.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atombios_get_tv_dac_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_atombios_get_tv_dac_info.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_i2c_init(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %i2c = alloca %struct.radeon_i2c_bus_rec, align 4
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %stmp = alloca [32 x i8], align 1
  %tmp = alloca %struct.radeon_i2c_bus_rec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %i2c) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %stmp) #11
  %4 = call ptr @memset(ptr %stmp, i32 255, i32 32)
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %size, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size, align 2
  %conv1 = zext i16 %6 to i32
  %sub = add nsw i32 %conv1, -4
  %div = udiv i32 %sub, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %7 = icmp ult i32 %sub, 27
  br i1 %7, label %if.then.if.end11_crit_edge, label %for.body.lr.ph

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

for.body.lr.ph:                                   ; preds = %if.then
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %asGPIO_Info = getelementptr inbounds %struct._ATOM_GPIO_I2C_INFO, ptr %add.ptr, i32 0, i32 1
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %i2c, i32 0, i32 1
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %gpio.022 = phi ptr [ %asGPIO_Info, %for.body.lr.ph ], [ %add.ptr10, %if.end.for.body_crit_edge ]
  %conv3 = trunc i32 %i.025 to i8
  %12 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %13, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i, label %for.body.if.end19.i_crit_edge

for.body.if.end19.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then.i:                                        ; preds = %for.body
  %14 = ptrtoint ptr %gpio.022 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %gpio.022, align 1
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %if.then.i.if.end19.i_crit_edge [
    i16 6144, label %if.then.i.if.then18.i_crit_edge
    i16 6400, label %if.then.i.if.then18.i_crit_edge27
    i16 6656, label %if.then.i.if.then18.i_crit_edge28
  ]

if.then.i.if.then18.i_crit_edge28:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then.i.if.then18.i_crit_edge27:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then.i.if.then18.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.then.i.if.then18.i_crit_edge, %if.then.i.if.then18.i_crit_edge27, %if.then.i.if.then18.i_crit_edge28
  %ucClkMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 9
  %17 = ptrtoint ptr %ucClkMaskShift.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 25, ptr %ucClkMaskShift.i, align 1
  %ucDataMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 13
  %18 = ptrtoint ptr %ucDataMaskShift.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 24, ptr %ucDataMaskShift.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.then.i.if.end19.i_crit_edge, %for.body.if.end19.i_crit_edge
  %19 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %20)
  %cmp21.i = icmp ugt i32 %20, 38
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv3)
  %cmp25.i = icmp eq i8 %conv3, 7
  %or.cond.i = and i1 %cmp25.i, %cmp21.i
  br i1 %or.cond.i, label %land.lhs.true.i, label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %21 = ptrtoint ptr %gpio.022 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %gpio.022, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13849, i16 %22)
  %cmp29.i = icmp eq i16 %22, 13849
  br i1 %cmp29.i, label %land.lhs.true31.i, label %land.lhs.true.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

land.lhs.true31.i:                                ; preds = %land.lhs.true.i
  %sucI2cId.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 8
  %23 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sucI2cId.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp33.i = icmp eq i8 %24, 0
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true31.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true31.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

if.then35.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -105, ptr %sucI2cId.i, align 1
  %ucDataMaskShift37.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 13
  %26 = ptrtoint ptr %ucDataMaskShift37.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 134744072, ptr %ucDataMaskShift37.i, align 1
  br label %radeon_lookup_i2c_gpio_quirks.exit

if.end39.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %20)
  %cmp41.i = icmp ugt i32 %20, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv3)
  %cmp45.i = icmp eq i8 %conv3, 4
  %or.cond80.i = and i1 %cmp45.i, %cmp41.i
  br i1 %or.cond80.i, label %land.lhs.true47.i, label %if.end39.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

if.end39.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

land.lhs.true47.i:                                ; preds = %if.end39.i
  %27 = ptrtoint ptr %gpio.022 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %gpio.022, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9697, i16 %28)
  %cmp50.i = icmp eq i16 %28, -9697
  br i1 %cmp50.i, label %land.lhs.true52.i, label %land.lhs.true47.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true47.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

land.lhs.true52.i:                                ; preds = %land.lhs.true47.i
  %sucI2cId53.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.022, i32 0, i32 8
  %29 = ptrtoint ptr %sucI2cId53.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sucI2cId53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %30)
  %cmp55.i = icmp eq i8 %30, -108
  br i1 %cmp55.i, label %if.then57.i, label %land.lhs.true52.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true52.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

if.then57.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %sucI2cId53.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 20, ptr %sucI2cId53.i, align 1
  br label %radeon_lookup_i2c_gpio_quirks.exit

radeon_lookup_i2c_gpio_quirks.exit:               ; preds = %if.then57.i, %land.lhs.true52.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %land.lhs.true47.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %if.end39.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %if.then35.i, %land.lhs.true31.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %land.lhs.true.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp) #11
  call fastcc void @radeon_get_bus_rec_for_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %tmp, ptr noundef %gpio.022)
  %32 = call ptr @memcpy(ptr %i2c, ptr %tmp, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp) #11
  %33 = ptrtoint ptr %i2c to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %i2c, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  br i1 %tobool.not, label %radeon_lookup_i2c_gpio_quirks.exit.if.end_crit_edge, label %if.then4

radeon_lookup_i2c_gpio_quirks.exit.if.end_crit_edge: ; preds = %radeon_lookup_i2c_gpio_quirks.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %radeon_lookup_i2c_gpio_quirks.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_id, align 1
  %conv5 = zext i8 %36 to i32
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %stmp, ptr noundef nonnull @.str, i32 noundef %conv5)
  %37 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ddev, align 4
  %call8 = call ptr @radeon_i2c_create(ptr noundef %38, ptr noundef nonnull %i2c, ptr noundef nonnull %stmp) #11
  %arrayidx9 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 99, i32 %i.025
  %39 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8, ptr %arrayidx9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %radeon_lookup_i2c_gpio_quirks.exit.if.end_crit_edge
  %add.ptr10 = getelementptr i8, ptr %gpio.022, i32 27
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end.if.end11_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %stmp) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %i2c) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @radeon_get_bus_rec_for_i2c_gpio(ptr noalias sret(%struct.radeon_i2c_bus_rec) align 4 %agg.result, ptr nocapture noundef readonly %gpio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 12)
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %gpio, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %mask_clk_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 5
  %4 = ptrtoint ptr %mask_clk_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %mask_clk_reg, align 4
  %usDataMaskRegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 4
  %5 = ptrtoint ptr %usDataMaskRegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %usDataMaskRegisterIndex, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv1 = zext i16 %7 to i32
  %mul2 = shl nuw nsw i32 %conv1, 2
  %mask_data_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 6
  %8 = ptrtoint ptr %mask_data_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul2, ptr %mask_data_reg, align 4
  %usClkEnRegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 1
  %9 = ptrtoint ptr %usClkEnRegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %usClkEnRegisterIndex, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv3 = zext i16 %11 to i32
  %mul4 = shl nuw nsw i32 %conv3, 2
  %en_clk_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 9
  %12 = ptrtoint ptr %en_clk_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul4, ptr %en_clk_reg, align 4
  %usDataEnRegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 5
  %13 = ptrtoint ptr %usDataEnRegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %usDataEnRegisterIndex, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv5 = zext i16 %15 to i32
  %mul6 = shl nuw nsw i32 %conv5, 2
  %en_data_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 10
  %16 = ptrtoint ptr %en_data_reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul6, ptr %en_data_reg, align 4
  %usClkY_RegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 2
  %17 = ptrtoint ptr %usClkY_RegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %usClkY_RegisterIndex, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv7 = zext i16 %19 to i32
  %mul8 = shl nuw nsw i32 %conv7, 2
  %y_clk_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 11
  %20 = ptrtoint ptr %y_clk_reg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul8, ptr %y_clk_reg, align 4
  %usDataY_RegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 6
  %21 = ptrtoint ptr %usDataY_RegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usDataY_RegisterIndex, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv9 = zext i16 %23 to i32
  %mul10 = shl nuw nsw i32 %conv9, 2
  %y_data_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 12
  %24 = ptrtoint ptr %y_data_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul10, ptr %y_data_reg, align 4
  %usClkA_RegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 3
  %25 = ptrtoint ptr %usClkA_RegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %usClkA_RegisterIndex, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %conv11 = zext i16 %27 to i32
  %mul12 = shl nuw nsw i32 %conv11, 2
  %a_clk_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 7
  %28 = ptrtoint ptr %a_clk_reg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul12, ptr %a_clk_reg, align 4
  %usDataA_RegisterIndex = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 7
  %29 = ptrtoint ptr %usDataA_RegisterIndex to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usDataA_RegisterIndex, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %conv13 = zext i16 %31 to i32
  %mul14 = shl nuw nsw i32 %conv13, 2
  %a_data_reg = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 8
  %32 = ptrtoint ptr %a_data_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul14, ptr %a_data_reg, align 4
  %ucClkMaskShift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 9
  %33 = ptrtoint ptr %ucClkMaskShift to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucClkMaskShift, align 1
  %conv15 = zext i8 %34 to i32
  %shl = shl nuw i32 1, %conv15
  %mask_clk_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 13
  %35 = ptrtoint ptr %mask_clk_mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl, ptr %mask_clk_mask, align 4
  %ucDataMaskShift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 13
  %36 = ptrtoint ptr %ucDataMaskShift to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucDataMaskShift, align 1
  %conv16 = zext i8 %37 to i32
  %shl17 = shl nuw i32 1, %conv16
  %mask_data_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 14
  %38 = ptrtoint ptr %mask_data_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shl17, ptr %mask_data_mask, align 4
  %ucClkEnShift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 10
  %39 = ptrtoint ptr %ucClkEnShift to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ucClkEnShift, align 1
  %conv18 = zext i8 %40 to i32
  %shl19 = shl nuw i32 1, %conv18
  %en_clk_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 17
  %41 = ptrtoint ptr %en_clk_mask to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl19, ptr %en_clk_mask, align 4
  %ucDataEnShift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 14
  %42 = ptrtoint ptr %ucDataEnShift to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ucDataEnShift, align 1
  %conv20 = zext i8 %43 to i32
  %shl21 = shl nuw i32 1, %conv20
  %en_data_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 18
  %44 = ptrtoint ptr %en_data_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl21, ptr %en_data_mask, align 4
  %ucClkY_Shift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 11
  %45 = ptrtoint ptr %ucClkY_Shift to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ucClkY_Shift, align 1
  %conv22 = zext i8 %46 to i32
  %shl23 = shl nuw i32 1, %conv22
  %y_clk_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 19
  %47 = ptrtoint ptr %y_clk_mask to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl23, ptr %y_clk_mask, align 4
  %ucDataY_Shift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 15
  %48 = ptrtoint ptr %ucDataY_Shift to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucDataY_Shift, align 1
  %conv24 = zext i8 %49 to i32
  %shl25 = shl nuw i32 1, %conv24
  %y_data_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 20
  %50 = ptrtoint ptr %y_data_mask to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl25, ptr %y_data_mask, align 4
  %ucClkA_Shift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 12
  %51 = ptrtoint ptr %ucClkA_Shift to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucClkA_Shift, align 1
  %conv26 = zext i8 %52 to i32
  %shl27 = shl nuw i32 1, %conv26
  %a_clk_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 15
  %53 = ptrtoint ptr %a_clk_mask to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl27, ptr %a_clk_mask, align 4
  %ucDataA_Shift = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 16
  %54 = ptrtoint ptr %ucDataA_Shift to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucDataA_Shift, align 1
  %conv28 = zext i8 %55 to i32
  %shl29 = shl nuw i32 1, %conv28
  %a_data_mask = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 16
  %56 = ptrtoint ptr %a_data_mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl29, ptr %a_data_mask, align 4
  %sucI2cId = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio, i32 0, i32 8
  %57 = ptrtoint ptr %sucI2cId to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %sucI2cId, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.else35_crit_edge, label %if.end

entry.if.else35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else35

if.end:                                           ; preds = %entry
  %hw_capable = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 3
  %58 = ptrtoint ptr %hw_capable to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %hw_capable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, -96
  br i1 %cmp, label %if.end.if.end37_crit_edge, label %if.end.if.else35_crit_edge

if.end.if.else35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else35

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.else35:                                        ; preds = %if.end.if.else35_crit_edge, %entry.if.else35_crit_edge
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.end.if.end37_crit_edge
  %.sink = phi i8 [ 0, %if.else35 ], [ 1, %if.end.if.end37_crit_edge ]
  %mm_i2c36 = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 4
  %59 = ptrtoint ptr %mm_i2c36 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink, ptr %mm_i2c36, align 1
  %i2c_id = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %agg.result, i32 0, i32 1
  %60 = ptrtoint ptr %i2c_id to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %bf.load, ptr %i2c_id, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool40.not = icmp ne i16 %2, 0
  %. = zext i1 %tobool40.not to i8
  %61 = ptrtoint ptr %agg.result to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %., ptr %agg.result, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_i2c_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_lookup_gpio(ptr noalias nocapture writeonly sret(%struct.radeon_gpio_rec) align 4 %agg.result, ptr nocapture noundef readonly %rdev, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %4 = call ptr @memset(ptr %agg.result, i32 0, i32 16)
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %1, i32 noundef 12, ptr noundef nonnull %size, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size, align 2
  %conv1 = zext i16 %6 to i32
  %sub = add nsw i32 %conv1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp26.not = icmp ult i32 %sub, 4
  br i1 %cmp26.not, label %if.then.if.end16_crit_edge, label %for.body.preheader

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

for.body.preheader:                               ; preds = %if.then
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %asGPIO_Pin = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr, i32 0, i32 1
  %div24 = lshr i32 %sub, 2
  %umax = call i32 @llvm.umax.i32(i32 %div24, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.028 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pin.027 = phi ptr [ %add.ptr15, %if.end.for.body_crit_edge ], [ %asGPIO_Pin, %for.body.preheader ]
  %ucGPIO_ID = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027, i32 0, i32 2
  %11 = ptrtoint ptr %ucGPIO_ID to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucGPIO_ID, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %id)
  %cmp5 = icmp eq i8 %12, %id
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %id9 = getelementptr inbounds %struct.radeon_gpio_rec, ptr %agg.result, i32 0, i32 1
  %13 = ptrtoint ptr %id9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %id, ptr %id9, align 1
  %14 = ptrtoint ptr %pin.027 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %pin.027, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv10 = zext i16 %16 to i32
  %mul = shl nuw nsw i32 %conv10, 2
  %reg = getelementptr inbounds %struct.radeon_gpio_rec, ptr %agg.result, i32 0, i32 2
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %reg, align 4
  %ucGpioPinBitShift = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027, i32 0, i32 1
  %18 = ptrtoint ptr %ucGpioPinBitShift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucGpioPinBitShift, align 1
  %conv11 = zext i8 %19 to i32
  %shift = getelementptr inbounds %struct.radeon_gpio_rec, ptr %agg.result, i32 0, i32 4
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv11, ptr %shift, align 4
  %shl = shl nuw i32 1, %conv11
  %mask = getelementptr inbounds %struct.radeon_gpio_rec, ptr %agg.result, i32 0, i32 3
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %mask, align 4
  %22 = ptrtoint ptr %agg.result to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %agg.result, align 4
  br label %if.end16

if.end:                                           ; preds = %for.body
  %add.ptr15 = getelementptr i8, ptr %pin.027, i32 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.if.end16_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end16:                                         ; preds = %if.end.if.end16_crit_edge, %if.then7, %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_get_atom_connector_info_from_object_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i = alloca i16, align 2
  %size.i = alloca i16, align 2
  %size = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %connector_type = alloca i32, align 4
  %conn_id = alloca i16, align 2
  %ddc_bus = alloca %struct.radeon_i2c_bus_rec, align 4
  %router = alloca %struct.radeon_router, align 4
  %hpd = alloca %struct.radeon_hpd, align 8
  %igp_offset = alloca i16, align 2
  %tmp = alloca %struct.radeon_i2c_bus_rec, align 4
  %tmp306 = alloca %struct.radeon_i2c_bus_rec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_info1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %5 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %connector_type) #11
  %8 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %connector_type, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %conn_id) #11
  %9 = ptrtoint ptr %conn_id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %conn_id, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ddc_bus) #11
  %10 = call ptr @memset(ptr %ddc_bus, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %router) #11
  %11 = call ptr @memset(ptr %router, i32 255, i32 92)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %hpd) #11
  %12 = call ptr @memset(ptr %hpd, i32 255, i32 24)
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %3, i32 noundef 22, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.end, label %entry.cleanup348_crit_edge

entry.cleanup348_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup348

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp = icmp ult i8 %14, 2
  br i1 %cmp, label %if.end.cleanup348_crit_edge, label %if.end4

if.end.cleanup348_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup348

if.end4:                                          ; preds = %if.end
  %bios = getelementptr inbounds %struct.atom_context, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bios, align 4
  %17 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data_offset, align 2
  %conv5 = zext i16 %18 to i32
  %add.ptr = getelementptr i8, ptr %16, i32 %conv5
  %usDisplayPathTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 6
  %19 = ptrtoint ptr %usDisplayPathTableOffset to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usDisplayPathTableOffset, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv9 = zext i16 %21 to i32
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv9
  %usConnectorObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 2
  %22 = ptrtoint ptr %usConnectorObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usConnectorObjectTableOffset, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv14 = zext i16 %24 to i32
  %add.ptr15 = getelementptr i8, ptr %add.ptr, i32 %conv14
  %usEncoderObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 4
  %25 = ptrtoint ptr %usEncoderObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %usEncoderObjectTableOffset, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv19 = zext i16 %27 to i32
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 %conv19
  %usRouterObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 3
  %28 = ptrtoint ptr %usRouterObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usRouterObjectTableOffset, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv24 = zext i16 %30 to i32
  %add.ptr25 = getelementptr i8, ptr %add.ptr, i32 %conv24
  %usDeviceSupport = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %add.ptr, i32 0, i32 1
  %31 = ptrtoint ptr %usDeviceSupport to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usDeviceSupport, align 1
  %33 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp28561.not = icmp eq i8 %34, 0
  br i1 %cmp28561.not, label %if.end4.for.end347_crit_edge, label %for.body.lr.ph

if.end4.for.end347_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end347

for.body.lr.ph:                                   ; preds = %if.end4
  %asDispPath = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH_TABLE, ptr %add.ptr10, i32 0, i32 3
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %ddc_valid = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 3
  %cd_valid = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 7
  %asObjects159 = getelementptr inbounds %struct._ATOM_OBJECT_TABLE, ptr %add.ptr25, i32 0, i32 2
  %cd_mux_type = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 8
  %cd_mux_control_pin = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 9
  %cd_mux_state = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 10
  %ddc_mux_type = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 4
  %ddc_mux_control_pin = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 5
  %ddc_mux_state = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 6
  %i2c_info = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 1
  %i2c_addr = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 2
  %asObjects = getelementptr inbounds %struct._ATOM_OBJECT_TABLE, ptr %add.ptr20, i32 0, i32 2
  %asObjects267 = getelementptr inbounds %struct._ATOM_OBJECT_TABLE, ptr %add.ptr15, i32 0, i32 2
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %tmp309.sroa.5.0.hpd.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 8
  %tmp309.sroa.5.sroa.4.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 9
  %tmp309.sroa.5.sroa.5.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 10
  %tmp309.sroa.5.sroa.6.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 12
  %tmp309.sroa.5.sroa.7.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 16
  %tmp309.sroa.5.sroa.8.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %hpd, i32 20
  %plugged_state = getelementptr inbounds %struct.radeon_hpd, ptr %hpd, i32 0, i32 1
  %hpd325 = getelementptr inbounds %struct.radeon_i2c_bus_rec, ptr %ddc_bus, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup341.for.body_crit_edge, %for.body.lr.ph
  %path_size.0575 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %cleanup341.for.body_crit_edge ]
  %i.0574 = phi i32 [ 0, %for.body.lr.ph ], [ %inc346, %cleanup341.for.body_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %asDispPath, i32 %path_size.0575
  %usSize = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH, ptr %add.ptr30, i32 0, i32 1
  %35 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %usSize, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv31 = zext i16 %37 to i32
  %add = add i32 %path_size.0575, %conv31
  %38 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr30, align 1
  %40 = and i16 %39, %32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.not = icmp eq i16 %40, 0
  br i1 %tobool.not, label %for.body.cleanup341_crit_edge, label %if.then33

for.body.cleanup341_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341

if.then33:                                        ; preds = %for.body
  %usConnObjectId = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH, ptr %add.ptr30, i32 0, i32 2
  %41 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %usConnObjectId, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp44 = icmp eq i16 %39, 1
  br i1 %cmp44, label %if.then33.cleanup341_crit_edge, label %if.end47

if.then33.cleanup341_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341

if.end47:                                         ; preds = %if.then33
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 8
  %and48 = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp ne i32 %and48, 0
  %conv36.mask493 = and i16 %43, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv36.mask493)
  %cmp51 = icmp eq i16 %conv36.mask493, 16
  %or.cond = select i1 %tobool49.not, i1 %cmp51, i1 false
  br i1 %or.cond, label %if.then53, label %if.else84

if.then53:                                        ; preds = %if.end47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %igp_offset) #11
  %46 = ptrtoint ptr %igp_offset to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %igp_offset, align 2
  %call54 = call zeroext i1 @atom_parse_data_header(ptr noundef %3, i32 noundef 30, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %igp_offset) #11
  br i1 %call54, label %if.then55, label %if.else79

if.then55:                                        ; preds = %if.then53
  %47 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp57 = icmp ugt i8 %48, 1
  br i1 %cmp57, label %if.then59, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %if.then55
  %49 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bios, align 4
  %51 = ptrtoint ptr %igp_offset to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %igp_offset, align 2
  %conv61 = zext i16 %52 to i32
  %add.ptr62 = getelementptr i8, ptr %50, i32 %conv61
  %tobool63.not = icmp eq ptr %add.ptr62, null
  br i1 %tobool63.not, label %if.then59.cleanup_crit_edge, label %if.then64

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then64:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  %53 = and i16 %43, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %53)
  %cmp66 = icmp eq i16 %53, 256
  %ulDDISlot1Config = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr62, i32 0, i32 10
  %ulDDISlot2Config = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr62, i32 0, i32 11
  %slot_config.0.in = select i1 %cmp66, ptr %ulDDISlot1Config, ptr %ulDDISlot2Config
  %54 = ptrtoint ptr %slot_config.0.in to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %slot_config.0 = load i32, ptr %slot_config.0.in, align 1
  %shr70 = lshr i32 %slot_config.0, 16
  %and71 = and i32 %shr70, 255
  %arrayidx = getelementptr [22 x i32], ptr @object_connector_convert, i32 0, i32 %and71
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx, align 4
  %57 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %connector_type, align 4
  %conv72 = trunc i32 %and71 to i16
  br label %cleanup.thread

if.else79:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %connector_type, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else79, %if.then64
  %igp_lane_info.2.ph = phi i32 [ 0, %if.else79 ], [ %slot_config.0, %if.then64 ]
  %connector_object_id.2.ph = phi i16 [ 16, %if.else79 ], [ %conv72, %if.then64 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %igp_offset) #11
  %59 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr = load i32, ptr %connector_type, align 4
  br label %if.end88

cleanup:                                          ; preds = %if.then59.cleanup_crit_edge, %if.then55.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %igp_offset) #11
  br label %cleanup341

if.else84:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom85 = zext i16 %conv36.mask493 to i32
  %arrayidx86 = getelementptr [22 x i32], ptr @object_connector_convert, i32 0, i32 %idxprom85
  %60 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx86, align 4
  %62 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %connector_type, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %cleanup.thread
  %63 = phi i32 [ %.pr, %cleanup.thread ], [ %61, %if.else84 ]
  %igp_lane_info.3 = phi i32 [ %igp_lane_info.2.ph, %cleanup.thread ], [ 0, %if.else84 ]
  %connector_object_id.3 = phi i16 [ %connector_object_id.2.ph, %cleanup.thread ], [ %conv36.mask493, %if.else84 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp89 = icmp eq i32 %63, 0
  br i1 %cmp89, label %if.end88.cleanup341_crit_edge, label %if.end92

if.end88.cleanup341_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341

if.end92:                                         ; preds = %if.end88
  %64 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %ddc_valid, align 1
  %65 = ptrtoint ptr %cd_valid to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %cd_valid, align 1
  %66 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %usSize, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67)
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %68)
  %cmp96536 = icmp ugt i16 %68, 9
  br i1 %cmp96536, label %for.body98.lr.ph, label %if.end92.for.end251_crit_edge

if.end92.for.end251_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end251

for.body98.lr.ph:                                 ; preds = %if.end92
  %usGraphicObjIds = getelementptr inbounds %struct._ATOM_DISPLAY_OBJECT_PATH, ptr %add.ptr30, i32 0, i32 4
  br label %for.body98

for.body98:                                       ; preds = %if.end248.for.body98_crit_edge, %for.body98.lr.ph
  %j.0537 = phi i32 [ 0, %for.body98.lr.ph ], [ %inc250, %if.end248.for.body98_crit_edge ]
  %arrayidx99 = getelementptr [1 x i16], ptr %usGraphicObjIds, i32 0, i32 %j.0537
  %69 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %arrayidx99, align 1
  %71 = lshr i16 %70, 4
  %trunc = trunc i16 %71 to i3
  %72 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.99)
  switch i3 %trunc, label %for.body98.if.end248_crit_edge [
    i3 2, label %for.cond108.preheader
    i3 -4, label %for.cond153.preheader
  ]

for.body98.if.end248_crit_edge:                   ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

for.cond153.preheader:                            ; preds = %for.body98
  %73 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %add.ptr25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp156520.not = icmp eq i8 %74, 0
  br i1 %cmp156520.not, label %for.cond153.preheader.if.end248_crit_edge, label %for.cond153.preheader.for.body158_crit_edge

for.cond153.preheader.for.body158_crit_edge:      ; preds = %for.cond153.preheader
  br label %for.body158

for.cond153.preheader.if.end248_crit_edge:        ; preds = %for.cond153.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

for.cond108.preheader:                            ; preds = %for.body98
  %75 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %cmp110530.not = icmp eq i8 %76, 0
  br i1 %cmp110530.not, label %for.cond108.preheader.if.end248_crit_edge, label %for.cond108.preheader.for.body112_crit_edge

for.cond108.preheader.for.body112_crit_edge:      ; preds = %for.cond108.preheader
  br label %for.body112

for.cond108.preheader.if.end248_crit_edge:        ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

for.body112:                                      ; preds = %if.end147.for.body112_crit_edge, %for.cond108.preheader.for.body112_crit_edge
  %k.0531 = phi i32 [ %inc, %if.end147.for.body112_crit_edge ], [ 0, %for.cond108.preheader.for.body112_crit_edge ]
  %arrayidx113 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects, i32 0, i32 %k.0531
  %77 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %arrayidx113, align 1
  %79 = call i16 @llvm.bswap.i16(i16 %78)
  %80 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %arrayidx99, align 1
  %conv117 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %78)
  %cmp118 = icmp eq i16 %81, %78
  br i1 %cmp118, label %if.then120, label %for.body112.if.end147_crit_edge

for.body112.if.end147_crit_edge:                  ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

if.then120:                                       ; preds = %for.body112
  %82 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bios, align 4
  %84 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %data_offset, align 2
  %conv122 = zext i16 %85 to i32
  %add.ptr123 = getelementptr i8, ptr %83, i32 %conv122
  %usRecordOffset = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects, i32 0, i32 %k.0531, i32 2
  %86 = ptrtoint ptr %usRecordOffset to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %usRecordOffset, align 1
  %88 = call i16 @llvm.bswap.i16(i16 %87)
  %conv126 = zext i16 %88 to i32
  %add.ptr127 = getelementptr i8, ptr %add.ptr123, i32 %conv126
  %ucRecordSize523 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr127, i32 0, i32 1
  %89 = ptrtoint ptr %ucRecordSize523 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %ucRecordSize523, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp129.not524 = icmp eq i8 %90, 0
  br i1 %cmp129.not524, label %if.then120.while.end_crit_edge, label %if.then120.land.lhs.true131_crit_edge

if.then120.land.lhs.true131_crit_edge:            ; preds = %if.then120
  br label %land.lhs.true131

if.then120.while.end_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.lhs.true131:                                 ; preds = %sw.epilog.land.lhs.true131_crit_edge, %if.then120.land.lhs.true131_crit_edge
  %91 = phi i8 [ %101, %sw.epilog.land.lhs.true131_crit_edge ], [ %90, %if.then120.land.lhs.true131_crit_edge ]
  %caps.0526 = phi i16 [ %caps.1, %sw.epilog.land.lhs.true131_crit_edge ], [ 0, %if.then120.land.lhs.true131_crit_edge ]
  %record.0525 = phi ptr [ %add.ptr143, %sw.epilog.land.lhs.true131_crit_edge ], [ %add.ptr127, %if.then120.land.lhs.true131_crit_edge ]
  %92 = ptrtoint ptr %record.0525 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %record.0525, align 1
  %94 = add i8 %93, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %94)
  %95 = icmp ult i8 %94, 21
  br i1 %95, label %while.body, label %land.lhs.true131.while.end_crit_edge

land.lhs.true131.while.end_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %93)
  %cond374 = icmp eq i8 %93, 20
  br i1 %cond374, label %sw.bb, label %while.body.sw.epilog_crit_edge

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %96 = getelementptr inbounds %struct._ATOM_ENCODER_CAP_RECORD, ptr %record.0525, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %96, align 1
  %99 = call i16 @llvm.bswap.i16(i16 %98)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body.sw.epilog_crit_edge
  %caps.1 = phi i16 [ %99, %sw.bb ], [ %caps.0526, %while.body.sw.epilog_crit_edge ]
  %conv142 = zext i8 %91 to i32
  %add.ptr143 = getelementptr i8, ptr %record.0525, i32 %conv142
  %ucRecordSize = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr143, i32 0, i32 1
  %100 = ptrtoint ptr %ucRecordSize to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ucRecordSize, align 1
  %cmp129.not = icmp eq i8 %101, 0
  br i1 %cmp129.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.land.lhs.true131_crit_edge

sw.epilog.land.lhs.true131_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true131

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %land.lhs.true131.while.end_crit_edge, %if.then120.while.end_crit_edge
  %caps.0.lcssa = phi i16 [ 0, %if.then120.while.end_crit_edge ], [ %caps.1, %sw.epilog.while.end_crit_edge ], [ %caps.0526, %land.lhs.true131.while.end_crit_edge ]
  %102 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %add.ptr30, align 1
  %104 = call i16 @llvm.bswap.i16(i16 %103)
  %conv146 = zext i16 %104 to i32
  call void @radeon_add_atom_encoder(ptr noundef %dev, i32 noundef %conv117, i32 noundef %conv146, i16 noundef zeroext %caps.0.lcssa) #11
  br label %if.end147

if.end147:                                        ; preds = %while.end, %for.body112.if.end147_crit_edge
  %inc = add nuw nsw i32 %k.0531, 1
  %105 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr20, align 1
  %conv109 = zext i8 %106 to i32
  %cmp110 = icmp ult i32 %inc, %conv109
  br i1 %cmp110, label %if.end147.for.body112_crit_edge, label %if.end147.if.end248_crit_edge

if.end147.if.end248_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

if.end147.for.body112_crit_edge:                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body112

for.body158:                                      ; preds = %if.end243.for.body158_crit_edge, %for.cond153.preheader.for.body158_crit_edge
  %k.1521 = phi i32 [ %inc245, %if.end243.for.body158_crit_edge ], [ 0, %for.cond153.preheader.for.body158_crit_edge ]
  %arrayidx160 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects159, i32 0, i32 %k.1521
  %107 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %arrayidx160, align 1
  %109 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %arrayidx99, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %108)
  %cmp166 = icmp eq i16 %110, %108
  br i1 %cmp166, label %if.then168, label %for.body158.if.end243_crit_edge

for.body158.if.end243_crit_edge:                  ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243

if.then168:                                       ; preds = %for.body158
  %111 = call i16 @llvm.bswap.i16(i16 %108)
  %conv165 = zext i16 %111 to i32
  %112 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bios, align 4
  %114 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %data_offset, align 2
  %conv171 = zext i16 %115 to i32
  %add.ptr172 = getelementptr i8, ptr %113, i32 %conv171
  %usRecordOffset175 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects159, i32 0, i32 %k.1521, i32 2
  %116 = ptrtoint ptr %usRecordOffset175 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %usRecordOffset175, align 1
  %118 = call i16 @llvm.bswap.i16(i16 %117)
  %conv176 = zext i16 %118 to i32
  %add.ptr177 = getelementptr i8, ptr %add.ptr172, i32 %conv176
  %usSrcDstTableOffset = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects159, i32 0, i32 %k.1521, i32 1
  %119 = ptrtoint ptr %usSrcDstTableOffset to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %usSrcDstTableOffset, align 1
  %121 = call i16 @llvm.bswap.i16(i16 %120)
  %conv183 = zext i16 %121 to i32
  %add.ptr184 = getelementptr i8, ptr %add.ptr172, i32 %conv183
  %add.ptr185 = getelementptr i8, ptr %add.ptr184, i32 1
  %122 = ptrtoint ptr %add.ptr184 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %add.ptr184, align 1
  %conv186 = zext i8 %123 to i32
  %mul = shl nuw nsw i32 %conv186, 1
  %add.ptr187 = getelementptr i8, ptr %add.ptr185, i32 %mul
  %add.ptr188 = getelementptr i8, ptr %add.ptr187, i32 1
  %124 = ptrtoint ptr %router to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv165, ptr %router, align 4
  %125 = ptrtoint ptr %add.ptr187 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %add.ptr187, align 1
  %conv191 = zext i8 %126 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp192511.not = icmp eq i8 %126, 0
  br i1 %cmp192511.not, label %if.then168.for.end205_crit_edge, label %for.body194.lr.ph

if.then168.for.end205_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end205

for.body194.lr.ph:                                ; preds = %if.then168
  %127 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %usConnObjectId, align 1
  br label %for.body194

for.body194:                                      ; preds = %for.inc203.for.body194_crit_edge, %for.body194.lr.ph
  %enum_id.0512 = phi i32 [ 0, %for.body194.lr.ph ], [ %inc204, %for.inc203.for.body194_crit_edge ]
  %arrayidx197 = getelementptr i16, ptr %add.ptr188, i32 %enum_id.0512
  %129 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx197, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %128, i16 %130)
  %cmp199 = icmp eq i16 %128, %130
  br i1 %cmp199, label %for.body194.for.end205_crit_edge, label %for.inc203

for.body194.for.end205_crit_edge:                 ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end205

for.inc203:                                       ; preds = %for.body194
  %inc204 = add nuw nsw i32 %enum_id.0512, 1
  %exitcond.not = icmp eq i32 %inc204, %conv191
  br i1 %exitcond.not, label %for.inc203.for.end205_crit_edge, label %for.inc203.for.body194_crit_edge

for.inc203.for.body194_crit_edge:                 ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body194

for.inc203.for.end205_crit_edge:                  ; preds = %for.inc203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end205

for.end205:                                       ; preds = %for.inc203.for.end205_crit_edge, %for.body194.for.end205_crit_edge, %if.then168.for.end205_crit_edge
  %enum_id.0.lcssa = phi i32 [ 0, %if.then168.for.end205_crit_edge ], [ %enum_id.0512, %for.body194.for.end205_crit_edge ], [ %conv191, %for.inc203.for.end205_crit_edge ]
  %ucRecordSize207514 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr177, i32 0, i32 1
  %131 = ptrtoint ptr %ucRecordSize207514 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ucRecordSize207514, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %cmp209.not515 = icmp eq i8 %132, 0
  br i1 %cmp209.not515, label %for.end205.if.end243_crit_edge, label %for.end205.land.lhs.true211_crit_edge

for.end205.land.lhs.true211_crit_edge:            ; preds = %for.end205
  br label %land.lhs.true211

for.end205.if.end243_crit_edge:                   ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243

land.lhs.true211:                                 ; preds = %sw.epilog238.land.lhs.true211_crit_edge, %for.end205.land.lhs.true211_crit_edge
  %ucRecordSize207518 = phi ptr [ %ucRecordSize207, %sw.epilog238.land.lhs.true211_crit_edge ], [ %ucRecordSize207514, %for.end205.land.lhs.true211_crit_edge ]
  %record169.0516 = phi ptr [ %add.ptr241, %sw.epilog238.land.lhs.true211_crit_edge ], [ %add.ptr177, %for.end205.land.lhs.true211_crit_edge ]
  %133 = ptrtoint ptr %record169.0516 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %record169.0516, align 1
  %135 = add i8 %134, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %135)
  %136 = icmp ult i8 %135, 21
  br i1 %136, label %while.body222, label %land.lhs.true211.if.end243_crit_edge

land.lhs.true211.if.end243_crit_edge:             ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243

while.body222:                                    ; preds = %land.lhs.true211
  %137 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %134, label %while.body222.sw.epilog238_crit_edge [
    i8 1, label %sw.bb225
    i8 14, label %sw.bb229
    i8 15, label %sw.bb232
  ]

while.body222.sw.epilog238_crit_edge:             ; preds = %while.body222
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog238

sw.bb225:                                         ; preds = %while.body222
  call void @__sanitizer_cov_trace_pc() #13
  %sucI2cId = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %record169.0516, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp) #11
  %138 = ptrtoint ptr %sucI2cId to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %sucI2cId, align 1
  call fastcc void @radeon_lookup_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %tmp, ptr noundef %1, i8 noundef zeroext %139)
  %140 = call ptr @memcpy(ptr %i2c_info, ptr %tmp, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp) #11
  %ucI2CAddr = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %record169.0516, i32 0, i32 2
  %141 = ptrtoint ptr %ucI2CAddr to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ucI2CAddr, align 1
  %143 = lshr i8 %142, 1
  %144 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %i2c_addr, align 4
  br label %sw.epilog238

sw.bb229:                                         ; preds = %while.body222
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %ddc_valid, align 1
  %ucMuxType = getelementptr inbounds %struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD, ptr %record169.0516, i32 0, i32 1
  %146 = ptrtoint ptr %ucMuxType to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ucMuxType, align 1
  %148 = ptrtoint ptr %ddc_mux_type to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %ddc_mux_type, align 2
  %ucMuxControlPin = getelementptr inbounds %struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD, ptr %record169.0516, i32 0, i32 2
  %149 = ptrtoint ptr %ucMuxControlPin to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ucMuxControlPin, align 1
  %151 = ptrtoint ptr %ddc_mux_control_pin to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %ddc_mux_control_pin, align 1
  %arrayidx231 = getelementptr %struct._ATOM_ROUTER_DDC_PATH_SELECT_RECORD, ptr %record169.0516, i32 0, i32 3, i32 %enum_id.0.lcssa
  %152 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx231, align 1
  %154 = ptrtoint ptr %ddc_mux_state to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %ddc_mux_state, align 4
  br label %sw.epilog238

sw.bb232:                                         ; preds = %while.body222
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %cd_valid to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %cd_valid, align 1
  %ucMuxType234 = getelementptr inbounds %struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD, ptr %record169.0516, i32 0, i32 1
  %156 = ptrtoint ptr %ucMuxType234 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %ucMuxType234, align 1
  %158 = ptrtoint ptr %cd_mux_type to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %cd_mux_type, align 2
  %ucMuxControlPin235 = getelementptr inbounds %struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD, ptr %record169.0516, i32 0, i32 2
  %159 = ptrtoint ptr %ucMuxControlPin235 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ucMuxControlPin235, align 1
  %161 = ptrtoint ptr %cd_mux_control_pin to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %cd_mux_control_pin, align 1
  %arrayidx237 = getelementptr %struct._ATOM_ROUTER_DATA_CLOCK_PATH_SELECT_RECORD, ptr %record169.0516, i32 0, i32 3, i32 %enum_id.0.lcssa
  %162 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx237, align 1
  %164 = ptrtoint ptr %cd_mux_state to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %163, ptr %cd_mux_state, align 4
  br label %sw.epilog238

sw.epilog238:                                     ; preds = %sw.bb232, %sw.bb229, %sw.bb225, %while.body222.sw.epilog238_crit_edge
  %165 = ptrtoint ptr %ucRecordSize207518 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %ucRecordSize207518, align 1
  %conv240 = zext i8 %166 to i32
  %add.ptr241 = getelementptr i8, ptr %record169.0516, i32 %conv240
  %ucRecordSize207 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr241, i32 0, i32 1
  %167 = ptrtoint ptr %ucRecordSize207 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ucRecordSize207, align 1
  %cmp209.not = icmp eq i8 %168, 0
  br i1 %cmp209.not, label %sw.epilog238.if.end243_crit_edge, label %sw.epilog238.land.lhs.true211_crit_edge

sw.epilog238.land.lhs.true211_crit_edge:          ; preds = %sw.epilog238
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true211

sw.epilog238.if.end243_crit_edge:                 ; preds = %sw.epilog238
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end243

if.end243:                                        ; preds = %sw.epilog238.if.end243_crit_edge, %land.lhs.true211.if.end243_crit_edge, %for.end205.if.end243_crit_edge, %for.body158.if.end243_crit_edge
  %inc245 = add nuw nsw i32 %k.1521, 1
  %169 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %add.ptr25, align 1
  %conv155 = zext i8 %170 to i32
  %cmp156 = icmp ult i32 %inc245, %conv155
  br i1 %cmp156, label %if.end243.for.body158_crit_edge, label %if.end243.if.end248_crit_edge

if.end243.if.end248_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

if.end243.for.body158_crit_edge:                  ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body158

if.end248:                                        ; preds = %if.end243.if.end248_crit_edge, %if.end147.if.end248_crit_edge, %for.cond108.preheader.if.end248_crit_edge, %for.cond153.preheader.if.end248_crit_edge, %for.body98.if.end248_crit_edge
  %inc250 = add nuw nsw i32 %j.0537, 1
  %171 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %171, i32 2)
  %172 = load i16, ptr %usSize, align 1
  %173 = call i16 @llvm.bswap.i16(i16 %172)
  %conv95 = zext i16 %173 to i32
  %sub = add nsw i32 %conv95, -8
  %div = sdiv i32 %sub, 2
  %cmp96 = icmp slt i32 %inc250, %div
  br i1 %cmp96, label %if.end248.for.body98_crit_edge, label %if.end248.for.end251_crit_edge

if.end248.for.end251_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end251

if.end248.for.body98_crit_edge:                   ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body98

for.end251:                                       ; preds = %if.end248.for.end251_crit_edge, %if.end92.for.end251_crit_edge
  %174 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %ddc_bus, align 4
  %175 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 255, ptr %hpd, align 8
  %176 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %add.ptr30, align 1
  %178 = and i16 %177, 1025
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %178)
  %cmp256 = icmp eq i16 %178, 0
  br i1 %cmp256, label %for.cond259.preheader, label %for.end251.if.end323_crit_edge

for.end251.if.end323_crit_edge:                   ; preds = %for.end251
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

for.cond259.preheader:                            ; preds = %for.end251
  %179 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %add.ptr15, align 1
  %conv261 = zext i8 %180 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp262538.not = icmp eq i8 %180, 0
  br i1 %cmp262538.not, label %for.cond259.preheader.if.end323_crit_edge, label %for.body264.lr.ph

for.cond259.preheader.if.end323_crit_edge:        ; preds = %for.cond259.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

for.body264.lr.ph:                                ; preds = %for.cond259.preheader
  %181 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %182 = load i16, ptr %usConnObjectId, align 1
  br label %for.body264

for.body264:                                      ; preds = %for.inc320.for.body264_crit_edge, %for.body264.lr.ph
  %j.1539 = phi i32 [ 0, %for.body264.lr.ph ], [ %inc321, %for.inc320.for.body264_crit_edge ]
  %arrayidx268 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects267, i32 0, i32 %j.1539
  %183 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %184 = load i16, ptr %arrayidx268, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %182, i16 %184)
  %cmp271 = icmp eq i16 %182, %184
  br i1 %cmp271, label %if.then273, label %for.inc320

if.then273:                                       ; preds = %for.body264
  %185 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bios, align 4
  %187 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %data_offset, align 2
  %conv276 = zext i16 %188 to i32
  %add.ptr277 = getelementptr i8, ptr %186, i32 %conv276
  %usRecordOffset280 = getelementptr [1 x %struct._ATOM_OBJECT], ptr %asObjects267, i32 0, i32 %j.1539, i32 2
  %189 = ptrtoint ptr %usRecordOffset280 to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %usRecordOffset280, align 1
  %191 = call i16 @llvm.bswap.i16(i16 %190)
  %conv281 = zext i16 %191 to i32
  %add.ptr282 = getelementptr i8, ptr %add.ptr277, i32 %conv281
  %ucRecordSize286540 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr282, i32 0, i32 1
  %192 = ptrtoint ptr %ucRecordSize286540 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ucRecordSize286540, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %cmp288.not541 = icmp eq i8 %193, 0
  br i1 %cmp288.not541, label %if.then273.if.end323_crit_edge, label %if.then273.land.lhs.true290_crit_edge

if.then273.land.lhs.true290_crit_edge:            ; preds = %if.then273
  br label %land.lhs.true290

if.then273.if.end323_crit_edge:                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

land.lhs.true290:                                 ; preds = %sw.epilog310.land.lhs.true290_crit_edge, %if.then273.land.lhs.true290_crit_edge
  %ucRecordSize286547 = phi ptr [ %ucRecordSize286, %sw.epilog310.land.lhs.true290_crit_edge ], [ %ucRecordSize286540, %if.then273.land.lhs.true290_crit_edge ]
  %record274.0545 = phi ptr [ %add.ptr313, %sw.epilog310.land.lhs.true290_crit_edge ], [ %add.ptr282, %if.then273.land.lhs.true290_crit_edge ]
  %194 = ptrtoint ptr %record274.0545 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %record274.0545, align 1
  %196 = add i8 %195, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %196)
  %197 = icmp ult i8 %196, 21
  br i1 %197, label %while.body301, label %land.lhs.true290.if.end323_crit_edge

land.lhs.true290.if.end323_crit_edge:             ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

while.body301:                                    ; preds = %land.lhs.true290
  %198 = zext i8 %195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %195, label %while.body301.sw.epilog310_crit_edge [
    i8 1, label %sw.bb304
    i8 2, label %sw.bb307
  ]

while.body301.sw.epilog310_crit_edge:             ; preds = %while.body301
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog310

sw.bb304:                                         ; preds = %while.body301
  call void @__sanitizer_cov_trace_pc() #13
  %sucI2cId305 = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %record274.0545, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp306) #11
  %199 = ptrtoint ptr %sucI2cId305 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %sucI2cId305, align 1
  call fastcc void @radeon_lookup_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %tmp306, ptr noundef %1, i8 noundef zeroext %200)
  %201 = call ptr @memcpy(ptr %ddc_bus, ptr %tmp306, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp306) #11
  br label %sw.epilog310

sw.bb307:                                         ; preds = %while.body301
  %ucHPDIntGPIOID = getelementptr inbounds %struct._ATOM_HPD_INT_RECORD, ptr %record274.0545, i32 0, i32 1
  %202 = ptrtoint ptr %ucHPDIntGPIOID to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %ucHPDIntGPIOID, align 1
  %204 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mode_info1, align 4, !noalias !198
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #11, !noalias !198
  %206 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -1, ptr %data_offset.i, align 2, !noalias !198, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #11, !noalias !198
  %207 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -1, ptr %size.i, align 2, !noalias !198, !annotation !196
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %205, i32 noundef 12, ptr noundef nonnull %size.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset.i) #11, !noalias !198
  br i1 %call.i, label %if.then.i, label %sw.bb307.radeon_atombios_lookup_gpio.exit.thread_crit_edge

sw.bb307.radeon_atombios_lookup_gpio.exit.thread_crit_edge: ; preds = %sw.bb307
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit.thread

if.then.i:                                        ; preds = %sw.bb307
  %208 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %size.i, align 2, !noalias !198
  %conv1.i = zext i16 %209 to i32
  %sub.i = add nsw i32 %conv1.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp26.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp26.not.i, label %if.then.i.radeon_atombios_lookup_gpio.exit.thread_crit_edge, label %for.body.preheader.i

if.then.i.radeon_atombios_lookup_gpio.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit.thread

for.body.preheader.i:                             ; preds = %if.then.i
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %205, i32 0, i32 3
  %210 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bios.i, align 4, !noalias !198
  %212 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %data_offset.i, align 2, !noalias !198
  %conv.i = zext i16 %213 to i32
  %add.ptr.i = getelementptr i8, ptr %211, i32 %conv.i
  %asGPIO_Pin.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr.i, i32 0, i32 1
  %div24.i = lshr i32 %sub.i, 2
  %umax.i = call i32 @llvm.umax.i32(i32 %div24.i, i32 1) #11
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.028.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pin.027.i = phi ptr [ %add.ptr15.i, %if.end.i.for.body.i_crit_edge ], [ %asGPIO_Pin.i, %for.body.preheader.i ]
  %ucGPIO_ID.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i, i32 0, i32 2
  %214 = ptrtoint ptr %ucGPIO_ID.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %ucGPIO_ID.i, align 1, !noalias !198
  call void @__sanitizer_cov_trace_cmp1(i8 %215, i8 %203)
  %cmp5.i = icmp eq i8 %215, %203
  br i1 %cmp5.i, label %radeon_atombios_lookup_gpio.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %add.ptr15.i = getelementptr i8, ptr %pin.027.i, i32 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end.i.radeon_atombios_lookup_gpio.exit.thread_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end.i.radeon_atombios_lookup_gpio.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit.thread

radeon_atombios_lookup_gpio.exit.thread:          ; preds = %if.end.i.radeon_atombios_lookup_gpio.exit.thread_crit_edge, %if.then.i.radeon_atombios_lookup_gpio.exit.thread_crit_edge, %sw.bb307.radeon_atombios_lookup_gpio.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #11, !noalias !198
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11, !noalias !198
  br label %if.end23.sink.split.i

radeon_atombios_lookup_gpio.exit:                 ; preds = %for.body.i
  %216 = ptrtoint ptr %pin.027.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 2)
  %217 = load i16, ptr %pin.027.i, align 1, !noalias !198
  %218 = call i16 @llvm.bswap.i16(i16 %217) #11
  %conv10.i = zext i16 %218 to i32
  %mul.i = shl nuw nsw i32 %conv10.i, 2
  %ucGpioPinBitShift.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i, i32 0, i32 1
  %219 = ptrtoint ptr %ucGpioPinBitShift.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %ucGpioPinBitShift.i, align 1, !noalias !198
  %conv11.i = zext i8 %220 to i32
  %shl.i = shl nuw i32 1, %conv11.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #11, !noalias !198
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11, !noalias !198
  %221 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %family.i, align 4, !noalias !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %222)
  %cmp.i = icmp ugt i32 %222, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %222)
  %cmp2.i = icmp ugt i32 %222, 38
  %..i = select i1 %cmp2.i, i32 25780, i32 32404
  %reg.0.i = select i1 %cmp.i, i32 26036, i32 %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %reg.0.i)
  %cmp8.i = icmp eq i32 %mul.i, %reg.0.i
  br i1 %cmp8.i, label %if.then9.i, label %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge

radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge: ; preds = %radeon_atombios_lookup_gpio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

if.then9.i:                                       ; preds = %radeon_atombios_lookup_gpio.exit
  %223 = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %shl.i, label %sw.default.i [
    i32 1, label %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge
    i32 256, label %if.then9.i.if.end23.sink.split.i_crit_edge
    i32 65536, label %sw.bb12.i
    i32 16777216, label %sw.bb14.i
    i32 67108864, label %sw.bb16.i
    i32 268435456, label %sw.bb18.i
  ]

if.then9.i.if.end23.sink.split.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atom_get_hpd_info_from_gpio.exit

sw.bb12.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

sw.bb14.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

sw.bb16.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

sw.bb18.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

sw.default.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %sw.default.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %if.then9.i.if.end23.sink.split.i_crit_edge, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge, %radeon_atombios_lookup_gpio.exit.thread
  %tmp308.sroa.8.2601 = phi i32 [ %conv11.i, %sw.bb12.i ], [ %conv11.i, %sw.bb14.i ], [ %conv11.i, %sw.bb16.i ], [ %conv11.i, %sw.bb18.i ], [ %conv11.i, %sw.default.i ], [ %conv11.i, %if.then9.i.if.end23.sink.split.i_crit_edge ], [ %conv11.i, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge ], [ 0, %radeon_atombios_lookup_gpio.exit.thread ]
  %tmp308.sroa.7.2599 = phi i32 [ %shl.i, %sw.bb12.i ], [ %shl.i, %sw.bb14.i ], [ %shl.i, %sw.bb16.i ], [ %shl.i, %sw.bb18.i ], [ %shl.i, %sw.default.i ], [ %shl.i, %if.then9.i.if.end23.sink.split.i_crit_edge ], [ %shl.i, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge ], [ 0, %radeon_atombios_lookup_gpio.exit.thread ]
  %tmp308.sroa.6498.2597 = phi i32 [ %mul.i, %sw.bb12.i ], [ %mul.i, %sw.bb14.i ], [ %mul.i, %sw.bb16.i ], [ %mul.i, %sw.bb18.i ], [ %mul.i, %sw.default.i ], [ %mul.i, %if.then9.i.if.end23.sink.split.i_crit_edge ], [ %mul.i, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge ], [ 0, %radeon_atombios_lookup_gpio.exit.thread ]
  %tmp308.sroa.5.2595 = phi i8 [ %203, %sw.bb12.i ], [ %203, %sw.bb14.i ], [ %203, %sw.bb16.i ], [ %203, %sw.bb18.i ], [ %203, %sw.default.i ], [ %203, %if.then9.i.if.end23.sink.split.i_crit_edge ], [ %203, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge ], [ 0, %radeon_atombios_lookup_gpio.exit.thread ]
  %tmp308.sroa.0.2593 = phi i8 [ 1, %sw.bb12.i ], [ 1, %sw.bb14.i ], [ 1, %sw.bb16.i ], [ 1, %sw.bb18.i ], [ 1, %sw.default.i ], [ 1, %if.then9.i.if.end23.sink.split.i_crit_edge ], [ 1, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge ], [ 0, %radeon_atombios_lookup_gpio.exit.thread ]
  %.sink.i = phi i32 [ 2, %sw.bb12.i ], [ 3, %sw.bb14.i ], [ 4, %sw.bb16.i ], [ 5, %sw.bb18.i ], [ 255, %sw.default.i ], [ 1, %if.then9.i.if.end23.sink.split.i_crit_edge ], [ 255, %radeon_atombios_lookup_gpio.exit.if.end23.sink.split.i_crit_edge ], [ 255, %radeon_atombios_lookup_gpio.exit.thread ]
  br label %radeon_atom_get_hpd_info_from_gpio.exit

radeon_atom_get_hpd_info_from_gpio.exit:          ; preds = %if.end23.sink.split.i, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge
  %tmp308.sroa.8.2600 = phi i32 [ %tmp308.sroa.8.2601, %if.end23.sink.split.i ], [ %conv11.i, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp308.sroa.7.2598 = phi i32 [ %tmp308.sroa.7.2599, %if.end23.sink.split.i ], [ %shl.i, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp308.sroa.6498.2596 = phi i32 [ %tmp308.sroa.6498.2597, %if.end23.sink.split.i ], [ %mul.i, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp308.sroa.5.2594 = phi i8 [ %tmp308.sroa.5.2595, %if.end23.sink.split.i ], [ %203, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp308.sroa.0.2592 = phi i8 [ %tmp308.sroa.0.2593, %if.end23.sink.split.i ], [ 1, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp309.sroa.0.sroa.0.0 = phi i32 [ %.sink.i, %if.end23.sink.split.i ], [ 0, %if.then9.i.radeon_atom_get_hpd_info_from_gpio.exit_crit_edge ]
  %tmp309.sroa.0.sroa.0.0.insert.ext = zext i32 %tmp309.sroa.0.sroa.0.0 to i64
  %tmp309.sroa.0.sroa.0.0.insert.shift = shl nuw nsw i64 %tmp309.sroa.0.sroa.0.0.insert.ext, 32
  %224 = ptrtoint ptr %hpd to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %tmp309.sroa.0.sroa.0.0.insert.shift, ptr %hpd, align 8
  %225 = ptrtoint ptr %tmp309.sroa.5.0.hpd.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %tmp308.sroa.0.2592, ptr %tmp309.sroa.5.0.hpd.sroa_idx, align 8
  %226 = ptrtoint ptr %tmp309.sroa.5.sroa.4.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %tmp308.sroa.5.2594, ptr %tmp309.sroa.5.sroa.4.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx, align 1
  %227 = ptrtoint ptr %tmp309.sroa.5.sroa.5.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %tmp309.sroa.5.sroa.5.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx, align 2
  %228 = ptrtoint ptr %tmp309.sroa.5.sroa.6.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %tmp308.sroa.6498.2596, ptr %tmp309.sroa.5.sroa.6.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx, align 4
  %229 = ptrtoint ptr %tmp309.sroa.5.sroa.7.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %tmp308.sroa.7.2598, ptr %tmp309.sroa.5.sroa.7.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx, align 8
  %230 = ptrtoint ptr %tmp309.sroa.5.sroa.8.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %tmp308.sroa.8.2600, ptr %tmp309.sroa.5.sroa.8.0.tmp309.sroa.5.0.hpd.sroa_idx.sroa_idx, align 4
  %ucPlugged_PinState = getelementptr inbounds %struct._ATOM_HPD_INT_RECORD, ptr %record274.0545, i32 0, i32 2
  %231 = ptrtoint ptr %ucPlugged_PinState to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %ucPlugged_PinState, align 1
  %233 = ptrtoint ptr %plugged_state to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %232, ptr %plugged_state, align 4
  br label %sw.epilog310

sw.epilog310:                                     ; preds = %radeon_atom_get_hpd_info_from_gpio.exit, %sw.bb304, %while.body301.sw.epilog310_crit_edge
  %234 = ptrtoint ptr %ucRecordSize286547 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %ucRecordSize286547, align 1
  %conv312 = zext i8 %235 to i32
  %add.ptr313 = getelementptr i8, ptr %record274.0545, i32 %conv312
  %ucRecordSize286 = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %add.ptr313, i32 0, i32 1
  %236 = ptrtoint ptr %ucRecordSize286 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %ucRecordSize286, align 1
  %cmp288.not = icmp eq i8 %237, 0
  br i1 %cmp288.not, label %sw.epilog310.if.end323_crit_edge, label %sw.epilog310.land.lhs.true290_crit_edge

sw.epilog310.land.lhs.true290_crit_edge:          ; preds = %sw.epilog310
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true290

sw.epilog310.if.end323_crit_edge:                 ; preds = %sw.epilog310
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

for.inc320:                                       ; preds = %for.body264
  %inc321 = add nuw nsw i32 %j.1539, 1
  %exitcond581.not = icmp eq i32 %inc321, %conv261
  br i1 %exitcond581.not, label %for.inc320.if.end323_crit_edge, label %for.inc320.for.body264_crit_edge

for.inc320.for.body264_crit_edge:                 ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body264

for.inc320.if.end323_crit_edge:                   ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end323

if.end323:                                        ; preds = %for.inc320.if.end323_crit_edge, %sw.epilog310.if.end323_crit_edge, %land.lhs.true290.if.end323_crit_edge, %if.then273.if.end323_crit_edge, %for.cond259.preheader.if.end323_crit_edge, %for.end251.if.end323_crit_edge
  %238 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %hpd, align 8
  %240 = ptrtoint ptr %hpd325 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %hpd325, align 4
  %241 = ptrtoint ptr %usConnObjectId to i32
  call void @__asan_loadN_noabort(i32 %241, i32 2)
  %242 = load i16, ptr %usConnObjectId, align 1
  %243 = call i16 @llvm.bswap.i16(i16 %242)
  %244 = ptrtoint ptr %conn_id to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %conn_id, align 2
  %245 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 2)
  %246 = load i16, ptr %add.ptr30, align 1
  %247 = call i16 @llvm.bswap.i16(i16 %246)
  %conv328 = zext i16 %247 to i32
  %call329 = call fastcc zeroext i1 @radeon_atom_apply_quirks(ptr noundef %dev, i32 noundef %conv328, ptr noundef nonnull %connector_type, ptr noundef nonnull %ddc_bus, ptr noundef nonnull %conn_id)
  br i1 %call329, label %if.end331, label %if.end323.cleanup341_crit_edge

if.end323.cleanup341_crit_edge:                   ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup341

if.end331:                                        ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #13
  %248 = ptrtoint ptr %conn_id to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %conn_id, align 2
  %conv332 = zext i16 %249 to i32
  %250 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_loadN_noabort(i32 %250, i32 2)
  %251 = load i16, ptr %add.ptr30, align 1
  %252 = call i16 @llvm.bswap.i16(i16 %251)
  %conv334 = zext i16 %252 to i32
  %253 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %connector_type, align 4
  %conv335 = and i32 %igp_lane_info.3, 65535
  call void @radeon_add_atom_connector(ptr noundef %dev, i32 noundef %conv332, i32 noundef %conv334, i32 noundef %254, ptr noundef nonnull %ddc_bus, i32 noundef %conv335, i16 noundef zeroext %connector_object_id.3, ptr noundef nonnull %hpd, ptr noundef nonnull %router) #11
  br label %cleanup341

cleanup341:                                       ; preds = %if.end331, %if.end323.cleanup341_crit_edge, %if.end88.cleanup341_crit_edge, %cleanup, %if.then33.cleanup341_crit_edge, %for.body.cleanup341_crit_edge
  %inc346 = add nuw nsw i32 %i.0574, 1
  %255 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %add.ptr10, align 1
  %conv27 = zext i8 %256 to i32
  %cmp28 = icmp ult i32 %inc346, %conv27
  br i1 %cmp28, label %cleanup341.for.body_crit_edge, label %cleanup341.for.end347_crit_edge

cleanup341.for.end347_crit_edge:                  ; preds = %cleanup341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end347

cleanup341.for.body_crit_edge:                    ; preds = %cleanup341
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end347:                                       ; preds = %cleanup341.for.end347_crit_edge, %if.end4.for.end347_crit_edge
  call void @radeon_link_encoder_connector(ptr noundef %dev) #11
  call void @radeon_setup_mst_connector(ptr noundef %dev) #11
  br label %cleanup348

cleanup348:                                       ; preds = %for.end347, %if.end.cleanup348_crit_edge, %entry.cleanup348_crit_edge
  %retval.0 = phi i1 [ true, %for.end347 ], [ false, %entry.cleanup348_crit_edge ], [ false, %if.end.cleanup348_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %hpd) #11
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %router) #11
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ddc_bus) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %conn_id) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %connector_type) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_add_atom_encoder(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_lookup_i2c_gpio(ptr noalias nocapture writeonly sret(%struct.radeon_i2c_bus_rec) align 4 %agg.result, ptr nocapture noundef readonly %rdev, i8 noundef zeroext %id) unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %4 = call ptr @memset(ptr %agg.result, i32 0, i32 76)
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %size, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size, align 2
  %conv1 = zext i16 %6 to i32
  %sub = add nsw i32 %conv1, -4
  %div = udiv i32 %sub, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %7 = icmp ult i32 %sub, 27
  br i1 %7, label %if.then.if.end10_crit_edge, label %for.body.lr.ph

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

for.body.lr.ph:                                   ; preds = %if.then
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %asGPIO_Info = getelementptr inbounds %struct._ATOM_GPIO_I2C_INFO, ptr %add.ptr, i32 0, i32 1
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %gpio.020 = phi ptr [ %asGPIO_Info, %for.body.lr.ph ], [ %add.ptr9, %if.end.for.body_crit_edge ]
  %conv3 = trunc i32 %i.021 to i8
  %12 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family.i, align 4
  %.off.i = add i32 %13, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i, label %for.body.if.end19.i_crit_edge

for.body.if.end19.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then.i:                                        ; preds = %for.body
  %14 = ptrtoint ptr %gpio.020 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %gpio.020, align 1
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.103)
  switch i16 %15, label %if.then.i.if.end19.i_crit_edge [
    i16 6144, label %if.then.i.if.then18.i_crit_edge
    i16 6400, label %if.then.i.if.then18.i_crit_edge27
    i16 6656, label %if.then.i.if.then18.i_crit_edge28
  ]

if.then.i.if.then18.i_crit_edge28:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then.i.if.then18.i_crit_edge27:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then.i.if.then18.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.then.i.if.then18.i_crit_edge, %if.then.i.if.then18.i_crit_edge27, %if.then.i.if.then18.i_crit_edge28
  %ucClkMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.020, i32 0, i32 9
  %17 = ptrtoint ptr %ucClkMaskShift.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 25, ptr %ucClkMaskShift.i, align 1
  %ucDataMaskShift.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.020, i32 0, i32 13
  %18 = ptrtoint ptr %ucDataMaskShift.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 24, ptr %ucDataMaskShift.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %if.then.i.if.end19.i_crit_edge, %for.body.if.end19.i_crit_edge
  %19 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %20)
  %cmp21.i = icmp ugt i32 %20, 38
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv3)
  %cmp25.i = icmp eq i8 %conv3, 7
  %or.cond.i = and i1 %cmp25.i, %cmp21.i
  br i1 %or.cond.i, label %land.lhs.true.i, label %if.end39.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %21 = ptrtoint ptr %gpio.020 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %gpio.020, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 13849, i16 %22)
  %cmp29.i = icmp eq i16 %22, 13849
  br i1 %cmp29.i, label %land.lhs.true31.i, label %land.lhs.true.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

land.lhs.true31.i:                                ; preds = %land.lhs.true.i
  %sucI2cId.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.020, i32 0, i32 8
  %23 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sucI2cId.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp33.i = icmp eq i8 %24, 0
  br i1 %cmp33.i, label %if.then35.i, label %land.lhs.true31.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true31.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

if.then35.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -105, ptr %sucI2cId.i, align 1
  %ucDataMaskShift37.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.020, i32 0, i32 13
  %26 = ptrtoint ptr %ucDataMaskShift37.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 134744072, ptr %ucDataMaskShift37.i, align 1
  br label %radeon_lookup_i2c_gpio_quirks.exit

if.end39.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %20)
  %cmp41.i = icmp ugt i32 %20, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %conv3)
  %cmp45.i = icmp eq i8 %conv3, 4
  %or.cond80.i = and i1 %cmp45.i, %cmp41.i
  br i1 %or.cond80.i, label %land.lhs.true47.i, label %if.end39.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

if.end39.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

land.lhs.true47.i:                                ; preds = %if.end39.i
  %27 = ptrtoint ptr %gpio.020 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %gpio.020, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9697, i16 %28)
  %cmp50.i = icmp eq i16 %28, -9697
  br i1 %cmp50.i, label %land.lhs.true52.i, label %land.lhs.true47.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true47.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

land.lhs.true52.i:                                ; preds = %land.lhs.true47.i
  %sucI2cId53.i = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.020, i32 0, i32 8
  %29 = ptrtoint ptr %sucI2cId53.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sucI2cId53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %30)
  %cmp55.i = icmp eq i8 %30, -108
  br i1 %cmp55.i, label %if.then57.i, label %land.lhs.true52.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge

land.lhs.true52.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_lookup_i2c_gpio_quirks.exit

if.then57.i:                                      ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %sucI2cId53.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 20, ptr %sucI2cId53.i, align 1
  br label %radeon_lookup_i2c_gpio_quirks.exit

radeon_lookup_i2c_gpio_quirks.exit:               ; preds = %if.then57.i, %land.lhs.true52.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %land.lhs.true47.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %if.end39.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %if.then35.i, %land.lhs.true31.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge, %land.lhs.true.i.radeon_lookup_i2c_gpio_quirks.exit_crit_edge
  %sucI2cId = getelementptr inbounds %struct._ATOM_GPIO_I2C_ASSIGMENT, ptr %gpio.020, i32 0, i32 8
  %32 = ptrtoint ptr %sucI2cId to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sucI2cId, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %id)
  %cmp6 = icmp eq i8 %33, %id
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %radeon_lookup_i2c_gpio_quirks.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @radeon_get_bus_rec_for_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %agg.result, ptr noundef %gpio.020)
  br label %if.end10

if.end:                                           ; preds = %radeon_lookup_i2c_gpio_quirks.exit
  %add.ptr9 = getelementptr i8, ptr %gpio.020, i32 27
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %if.end.if.end10_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %if.then8, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @radeon_atom_apply_quirks(ptr nocapture noundef readonly %dev, i32 noundef %supported_device, ptr noundef %connector_type, ptr nocapture noundef %i2c_bus, ptr nocapture noundef writeonly %line_mux) unnamed_addr #0 align 64 {
entry:
  %tmp294 = alloca %struct.radeon_i2c_bus_rec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %device = getelementptr i8, ptr %1, i32 -102
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31006, i16 %3)
  %cmp = icmp eq i16 %3, 31006
  br i1 %cmp, label %land.lhs.true, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %subsystem_vendor = getelementptr i8, ptr %1, i32 -100
  %4 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %5)
  %cmp4 = icmp eq i16 %5, 4163
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end16thread-pre-split_crit_edge

land.lhs.true.if.end16thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16thread-pre-split

land.lhs.true6:                                   ; preds = %land.lhs.true
  %subsystem_device = getelementptr i8, ptr %1, i32 -98
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32147, i16 %7)
  %cmp8 = icmp eq i16 %7, -32147
  br i1 %cmp8, label %if.then, label %land.lhs.true6.if.end16thread-pre-split_crit_edge

land.lhs.true6.if.end16thread-pre-split_crit_edge: ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16thread-pre-split

if.then:                                          ; preds = %land.lhs.true6
  %8 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp10 = icmp eq i32 %9, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %supported_device)
  %cmp13 = icmp eq i32 %supported_device, 512
  %or.cond = and i1 %cmp13, %cmp10
  br i1 %or.cond, label %if.then15, label %if.then.if.end16thread-pre-split_crit_edge

if.then.if.end16thread-pre-split_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16thread-pre-split

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %connector_type, align 4
  br label %if.end16thread-pre-split

if.end16thread-pre-split:                         ; preds = %if.then15, %if.then.if.end16thread-pre-split_crit_edge, %land.lhs.true6.if.end16thread-pre-split_crit_edge, %land.lhs.true.if.end16thread-pre-split_crit_edge
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %.pr = load i16, ptr %device, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end16thread-pre-split, %entry.if.end16_crit_edge
  %12 = phi i16 [ %.pr, %if.end16thread-pre-split ], [ %3, %entry.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 31041, i16 %12)
  %cmp19 = icmp eq i16 %12, 31041
  br i1 %cmp19, label %land.lhs.true21, label %if.end16.if.end39_crit_edge

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true21:                                  ; preds = %if.end16
  %subsystem_vendor22 = getelementptr i8, ptr %1, i32 -100
  %13 = ptrtoint ptr %subsystem_vendor22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6217, i16 %14)
  %cmp24 = icmp eq i16 %14, 6217
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true21.if.end39_crit_edge

land.lhs.true21.if.end39_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %subsystem_device27 = getelementptr i8, ptr %1, i32 -98
  %15 = ptrtoint ptr %subsystem_device27 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_device27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31041, i16 %16)
  %cmp29 = icmp eq i16 %16, 31041
  br i1 %cmp29, label %if.then31, label %land.lhs.true26.if.end39_crit_edge

land.lhs.true26.if.end39_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then31:                                        ; preds = %land.lhs.true26
  %17 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %18)
  %cmp32 = icmp eq i32 %18, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %supported_device)
  %cmp35 = icmp eq i32 %supported_device, 512
  %or.cond1 = and i1 %cmp35, %cmp32
  br i1 %or.cond1, label %if.then37, label %if.then31.if.end39_crit_edge

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %connector_type, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then31.if.end39_crit_edge, %land.lhs.true26.if.end39_crit_edge, %land.lhs.true21.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %21, label %if.end39.if.end101_crit_edge [
    i16 31086, label %land.lhs.true44
    i16 31041, label %land.lhs.true66
    i16 22099, label %land.lhs.true86
  ]

if.end39.if.end101_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

land.lhs.true44:                                  ; preds = %if.end39
  %subsystem_vendor45 = getelementptr i8, ptr %1, i32 -100
  %23 = ptrtoint ptr %subsystem_vendor45 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %subsystem_vendor45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5218, i16 %24)
  %cmp47 = icmp eq i16 %24, 5218
  br i1 %cmp47, label %land.lhs.true49, label %land.lhs.true44.if.end168_crit_edge

land.lhs.true44.if.end168_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %subsystem_device50 = getelementptr i8, ptr %1, i32 -98
  %25 = ptrtoint ptr %subsystem_device50 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device50, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29442, i16 %26)
  %cmp52 = icmp eq i16 %26, 29442
  br i1 %cmp52, label %if.then54, label %land.lhs.true49.if.end101thread-pre-split_crit_edge

land.lhs.true49.if.end101thread-pre-split_crit_edge: ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101thread-pre-split

if.then54:                                        ; preds = %land.lhs.true49
  %27 = zext i32 %supported_device to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %supported_device, label %if.then54.if.end101thread-pre-split_crit_edge [
    i32 128, label %if.then54.cleanup_crit_edge
    i32 512, label %if.then54.cleanup_crit_edge18
  ]

if.then54.cleanup_crit_edge18:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then54.if.end101thread-pre-split_crit_edge:    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101thread-pre-split

land.lhs.true66:                                  ; preds = %if.end39
  %subsystem_vendor67 = getelementptr i8, ptr %1, i32 -100
  %28 = ptrtoint ptr %subsystem_vendor67 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %subsystem_vendor67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5243, i16 %29)
  %cmp69 = icmp eq i16 %29, 5243
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true66.if.end168_crit_edge

land.lhs.true66.if.end168_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true71:                                  ; preds = %land.lhs.true66
  %subsystem_device72 = getelementptr i8, ptr %1, i32 -98
  %30 = ptrtoint ptr %subsystem_device72 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %subsystem_device72, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9234, i16 %31)
  %cmp74 = icmp eq i16 %31, 9234
  br i1 %cmp74, label %if.then76, label %land.lhs.true71.if.end101thread-pre-split_crit_edge

land.lhs.true71.if.end101thread-pre-split_crit_edge: ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101thread-pre-split

if.then76:                                        ; preds = %land.lhs.true71
  %32 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp77 = icmp eq i32 %33, 2
  br i1 %cmp77, label %if.then76.cleanup_crit_edge, label %if.then76.if.end101thread-pre-split_crit_edge

if.then76.if.end101thread-pre-split_crit_edge:    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101thread-pre-split

if.then76.cleanup_crit_edge:                      ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true86:                                  ; preds = %if.end39
  %subsystem_vendor87 = getelementptr i8, ptr %1, i32 -100
  %34 = ptrtoint ptr %subsystem_vendor87 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %subsystem_vendor87, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5218, i16 %35)
  %cmp89 = icmp eq i16 %35, 5218
  br i1 %cmp89, label %land.lhs.true91, label %land.lhs.true86.if.end168_crit_edge

land.lhs.true86.if.end168_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true91:                                  ; preds = %land.lhs.true86
  %subsystem_device92 = getelementptr i8, ptr %1, i32 -98
  %36 = ptrtoint ptr %subsystem_device92 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %subsystem_device92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 657, i16 %37)
  %cmp94 = icmp eq i16 %37, 657
  br i1 %cmp94, label %if.then96, label %land.lhs.true91.if.end101thread-pre-split_crit_edge

land.lhs.true91.if.end101thread-pre-split_crit_edge: ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101thread-pre-split

if.then96:                                        ; preds = %land.lhs.true91
  %38 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp97 = icmp eq i32 %39, 7
  br i1 %cmp97, label %if.then99, label %if.then96.if.end101thread-pre-split_crit_edge

if.then96.if.end101thread-pre-split_crit_edge:    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101thread-pre-split

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %i2c_bus, align 4
  %41 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 53, ptr %line_mux, align 2
  br label %if.end101thread-pre-split

if.end101thread-pre-split:                        ; preds = %if.then99, %if.then96.if.end101thread-pre-split_crit_edge, %land.lhs.true91.if.end101thread-pre-split_crit_edge, %if.then76.if.end101thread-pre-split_crit_edge, %land.lhs.true71.if.end101thread-pre-split_crit_edge, %if.then54.if.end101thread-pre-split_crit_edge, %land.lhs.true49.if.end101thread-pre-split_crit_edge
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %42)
  %.pr17 = load i16, ptr %device, align 2
  br label %if.end101

if.end101:                                        ; preds = %if.end101thread-pre-split, %if.end39.if.end101_crit_edge
  %43 = phi i16 [ %.pr17, %if.end101thread-pre-split ], [ %21, %if.end39.if.end101_crit_edge ]
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %43, label %if.end101.if.end168_crit_edge [
    i16 28998, label %land.lhs.true106
    i16 28994, label %land.lhs.true126
    i16 29125, label %land.lhs.true146
  ]

if.end101.if.end168_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true106:                                 ; preds = %if.end101
  %subsystem_vendor107 = getelementptr i8, ptr %1, i32 -100
  %45 = ptrtoint ptr %subsystem_vendor107 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %subsystem_vendor107, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6063, i16 %46)
  %cmp109 = icmp eq i16 %46, 6063
  br i1 %cmp109, label %land.lhs.true111, label %land.lhs.true106.if.end168_crit_edge

land.lhs.true106.if.end168_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true111:                                 ; preds = %land.lhs.true106
  %subsystem_device112 = getelementptr i8, ptr %1, i32 -98
  %47 = ptrtoint ptr %subsystem_device112 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %subsystem_device112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8280, i16 %48)
  %cmp114 = icmp eq i16 %48, 8280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %supported_device)
  %cmp117 = icmp eq i32 %supported_device, 8
  %or.cond2 = and i1 %cmp117, %cmp114
  br i1 %or.cond2, label %land.lhs.true111.cleanup_crit_edge, label %land.lhs.true111.if.end168_crit_edge

land.lhs.true111.if.end168_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true111.cleanup_crit_edge:               ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true126:                                 ; preds = %if.end101
  %subsystem_vendor127 = getelementptr i8, ptr %1, i32 -100
  %49 = ptrtoint ptr %subsystem_vendor127 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %subsystem_vendor127, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5208, i16 %50)
  %cmp129 = icmp eq i16 %50, 5208
  br i1 %cmp129, label %land.lhs.true131, label %land.lhs.true126.if.end168_crit_edge

land.lhs.true126.if.end168_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true131:                                 ; preds = %land.lhs.true126
  %subsystem_device132 = getelementptr i8, ptr %1, i32 -98
  %51 = ptrtoint ptr %subsystem_device132 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %subsystem_device132, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8500, i16 %52)
  %cmp134 = icmp eq i16 %52, 8500
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %supported_device)
  %cmp137 = icmp eq i32 %supported_device, 8
  %or.cond3 = and i1 %cmp137, %cmp134
  br i1 %or.cond3, label %land.lhs.true131.cleanup_crit_edge, label %land.lhs.true131.if.end168_crit_edge

land.lhs.true131.if.end168_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true131.cleanup_crit_edge:               ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true146:                                 ; preds = %if.end101
  %subsystem_vendor147 = getelementptr i8, ptr %1, i32 -100
  %53 = ptrtoint ptr %subsystem_vendor147 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %subsystem_vendor147, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4203, i16 %54)
  %cmp149 = icmp eq i16 %54, 4203
  br i1 %cmp149, label %land.lhs.true151, label %land.lhs.true146.if.end168_crit_edge

land.lhs.true146.if.end168_crit_edge:             ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true151:                                 ; preds = %land.lhs.true146
  %subsystem_device152 = getelementptr i8, ptr %1, i32 -98
  %55 = ptrtoint ptr %subsystem_device152 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %subsystem_device152, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %56)
  %cmp154 = icmp eq i16 %56, 128
  br i1 %cmp154, label %if.then156, label %land.lhs.true151.if.end168_crit_edge

land.lhs.true151.if.end168_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then156:                                       ; preds = %land.lhs.true151
  %57 = zext i32 %supported_device to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %supported_device, label %if.then156.if.end175_crit_edge [
    i32 1, label %if.then156.cleanup_crit_edge
    i32 128, label %if.then156.cleanup_crit_edge19
    i32 16, label %if.then156.if.end175.sink.split_crit_edge
    i32 4, label %if.then156.land.lhs.true171_crit_edge
  ]

if.then156.land.lhs.true171_crit_edge:            ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true171

if.then156.if.end175.sink.split_crit_edge:        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175.sink.split

if.then156.cleanup_crit_edge19:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then156.if.end175_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

if.end168:                                        ; preds = %land.lhs.true151.if.end168_crit_edge, %land.lhs.true146.if.end168_crit_edge, %land.lhs.true131.if.end168_crit_edge, %land.lhs.true126.if.end168_crit_edge, %land.lhs.true111.if.end168_crit_edge, %land.lhs.true106.if.end168_crit_edge, %if.end101.if.end168_crit_edge, %land.lhs.true86.if.end168_crit_edge, %land.lhs.true66.if.end168_crit_edge, %land.lhs.true44.if.end168_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %supported_device)
  %cmp169 = icmp eq i32 %supported_device, 4
  br i1 %cmp169, label %if.end168.land.lhs.true171_crit_edge, label %if.end168.if.end175_crit_edge

if.end168.if.end175_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

if.end168.land.lhs.true171_crit_edge:             ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true171

land.lhs.true171:                                 ; preds = %if.end168.land.lhs.true171_crit_edge, %if.then156.land.lhs.true171_crit_edge
  %58 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp172 = icmp eq i32 %59, 2
  br i1 %cmp172, label %if.then174, label %land.lhs.true171.if.end175_crit_edge

land.lhs.true171.if.end175_crit_edge:             ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end175

if.then174:                                       ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 9, ptr %connector_type, align 4
  br label %if.end175.sink.split

if.end175.sink.split:                             ; preds = %if.then174, %if.then156.if.end175.sink.split_crit_edge
  %.sink = phi i16 [ 12559, %if.then174 ], [ 144, %if.then156.if.end175.sink.split_crit_edge ]
  %61 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %.sink, ptr %line_mux, align 2
  br label %if.end175

if.end175:                                        ; preds = %if.end175.sink.split, %land.lhs.true171.if.end175_crit_edge, %if.end168.if.end175_crit_edge, %if.then156.if.end175_crit_edge
  %62 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27240, i16 %63)
  %cmp178 = icmp eq i16 %63, -27240
  br i1 %cmp178, label %land.lhs.true180, label %if.end175.if.end215_crit_edge

if.end175.if.end215_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

land.lhs.true180:                                 ; preds = %if.end175
  %subsystem_vendor181 = getelementptr i8, ptr %1, i32 -100
  %64 = ptrtoint ptr %subsystem_vendor181 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %subsystem_vendor181, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %65)
  %cmp183 = icmp eq i16 %65, 4163
  br i1 %cmp183, label %land.lhs.true185, label %land.lhs.true180.if.end195_crit_edge

land.lhs.true180.if.end195_crit_edge:             ; preds = %land.lhs.true180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

land.lhs.true185:                                 ; preds = %land.lhs.true180
  %subsystem_device186 = getelementptr i8, ptr %1, i32 -98
  %66 = ptrtoint ptr %subsystem_device186 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %subsystem_device186, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 474, i16 %67)
  %cmp188 = icmp eq i16 %67, 474
  br i1 %cmp188, label %if.then190, label %land.lhs.true185.if.end195_crit_edge

land.lhs.true185.if.end195_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then190:                                       ; preds = %land.lhs.true185
  %68 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %69)
  %cmp191 = icmp eq i32 %69, 11
  br i1 %cmp191, label %if.then193, label %if.then190.if.end195_crit_edge

if.then190.if.end195_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end195

if.then193:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %connector_type, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then193, %if.then190.if.end195_crit_edge, %land.lhs.true185.if.end195_crit_edge, %land.lhs.true180.if.end195_crit_edge
  %71 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %71)
  %.pr12 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27240, i16 %.pr12)
  %cmp198 = icmp eq i16 %.pr12, -27240
  br i1 %cmp198, label %land.lhs.true200, label %if.end195.if.end215_crit_edge

if.end195.if.end215_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

land.lhs.true200:                                 ; preds = %if.end195
  %72 = ptrtoint ptr %subsystem_vendor181 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %subsystem_vendor181, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %73)
  %cmp203 = icmp eq i16 %73, 4163
  br i1 %cmp203, label %land.lhs.true205, label %land.lhs.true200.if.end215thread-pre-split_crit_edge

land.lhs.true200.if.end215thread-pre-split_crit_edge: ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215thread-pre-split

land.lhs.true205:                                 ; preds = %land.lhs.true200
  %subsystem_device206 = getelementptr i8, ptr %1, i32 -98
  %74 = ptrtoint ptr %subsystem_device206 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %subsystem_device206, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 484, i16 %75)
  %cmp208 = icmp eq i16 %75, 484
  br i1 %cmp208, label %if.then210, label %land.lhs.true205.if.end215thread-pre-split_crit_edge

land.lhs.true205.if.end215thread-pre-split_crit_edge: ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215thread-pre-split

if.then210:                                       ; preds = %land.lhs.true205
  %76 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %77)
  %cmp211 = icmp eq i32 %77, 11
  br i1 %cmp211, label %if.then213, label %if.then210.if.end215thread-pre-split_crit_edge

if.then210.if.end215thread-pre-split_crit_edge:   ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215thread-pre-split

if.then213:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %connector_type, align 4
  br label %if.end215thread-pre-split

if.end215thread-pre-split:                        ; preds = %if.then213, %if.then210.if.end215thread-pre-split_crit_edge, %land.lhs.true205.if.end215thread-pre-split_crit_edge, %land.lhs.true200.if.end215thread-pre-split_crit_edge
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %79)
  %.pr14 = load i16, ptr %device, align 2
  br label %if.end215

if.end215:                                        ; preds = %if.end215thread-pre-split, %if.end195.if.end215_crit_edge, %if.end175.if.end215_crit_edge
  %80 = phi i16 [ %.pr14, %if.end215thread-pre-split ], [ %.pr12, %if.end195.if.end215_crit_edge ], [ %63, %if.end175.if.end215_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -27195, i16 %80)
  %cmp218 = icmp eq i16 %80, -27195
  br i1 %cmp218, label %land.lhs.true220, label %if.end215.if.end235_crit_edge

if.end215.if.end235_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

land.lhs.true220:                                 ; preds = %if.end215
  %subsystem_vendor221 = getelementptr i8, ptr %1, i32 -100
  %81 = ptrtoint ptr %subsystem_vendor221 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %subsystem_vendor221, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %82)
  %cmp223 = icmp eq i16 %82, 4163
  br i1 %cmp223, label %land.lhs.true225, label %land.lhs.true220.if.end235_crit_edge

land.lhs.true220.if.end235_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

land.lhs.true225:                                 ; preds = %land.lhs.true220
  %subsystem_device226 = getelementptr i8, ptr %1, i32 -98
  %83 = ptrtoint ptr %subsystem_device226 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %subsystem_device226, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 482, i16 %84)
  %cmp228 = icmp eq i16 %84, 482
  br i1 %cmp228, label %if.then230, label %land.lhs.true225.if.end235_crit_edge

land.lhs.true225.if.end235_crit_edge:             ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

if.then230:                                       ; preds = %land.lhs.true225
  %85 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %86)
  %cmp231 = icmp eq i32 %86, 11
  br i1 %cmp231, label %if.then233, label %if.then230.if.end235_crit_edge

if.then230.if.end235_crit_edge:                   ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

if.then233:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %connector_type, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.then230.if.end235_crit_edge, %land.lhs.true225.if.end235_crit_edge, %land.lhs.true220.if.end235_crit_edge, %if.end215.if.end235_crit_edge
  %88 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %89)
  %cmp236 = icmp ne i32 %89, 11
  %and = and i32 %supported_device, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond4 = or i1 %tobool.not, %cmp236
  br i1 %or.cond4, label %if.end235.if.end241_crit_edge, label %if.then239

if.end235.if.end241_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241

if.then239:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %connector_type, align 4
  %91 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %line_mux, align 2
  br label %if.end241

if.end241:                                        ; preds = %if.then239, %if.end235.if.end241_crit_edge
  %92 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %device, align 2
  %94 = zext i16 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %93, label %if.end241.if.end295_crit_edge [
    i16 -27196, label %if.end241.land.lhs.true251_crit_edge
    i16 -27247, label %if.end241.land.lhs.true251_crit_edge20
    i16 -27496, label %land.lhs.true274
  ]

if.end241.land.lhs.true251_crit_edge20:           ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true251

if.end241.land.lhs.true251_crit_edge:             ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true251

if.end241.if.end295_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295

land.lhs.true251:                                 ; preds = %if.end241.land.lhs.true251_crit_edge, %if.end241.land.lhs.true251_crit_edge20
  %subsystem_vendor252 = getelementptr i8, ptr %1, i32 -100
  %95 = ptrtoint ptr %subsystem_vendor252 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %subsystem_vendor252, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4133, i16 %96)
  %cmp254 = icmp eq i16 %96, 4133
  br i1 %cmp254, label %land.lhs.true256, label %land.lhs.true251.if.end295thread-pre-split_crit_edge

land.lhs.true251.if.end295thread-pre-split_crit_edge: ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295thread-pre-split

land.lhs.true256:                                 ; preds = %land.lhs.true251
  %subsystem_device257 = getelementptr i8, ptr %1, i32 -98
  %97 = ptrtoint ptr %subsystem_device257 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %subsystem_device257, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 316, i16 %98)
  %cmp259 = icmp eq i16 %98, 316
  br i1 %cmp259, label %if.then261, label %land.lhs.true256.if.end295thread-pre-split_crit_edge

land.lhs.true256.if.end295thread-pre-split_crit_edge: ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295thread-pre-split

if.then261:                                       ; preds = %land.lhs.true256
  %99 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %connector_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %100)
  %cmp262 = icmp eq i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %supported_device)
  %cmp265 = icmp eq i32 %supported_device, 8
  %or.cond5 = and i1 %cmp265, %cmp262
  br i1 %or.cond5, label %if.then267, label %if.then261.if.end295thread-pre-split_crit_edge

if.then261.if.end295thread-pre-split_crit_edge:   ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295thread-pre-split

if.then267:                                       ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 3, ptr %connector_type, align 4
  br label %cleanup

land.lhs.true274:                                 ; preds = %if.end241
  %subsystem_vendor275 = getelementptr i8, ptr %1, i32 -100
  %102 = ptrtoint ptr %subsystem_vendor275 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %subsystem_vendor275, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5762, i16 %103)
  %cmp277 = icmp eq i16 %103, 5762
  br i1 %cmp277, label %land.lhs.true279, label %land.lhs.true274.if.end295thread-pre-split_crit_edge

land.lhs.true274.if.end295thread-pre-split_crit_edge: ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295thread-pre-split

land.lhs.true279:                                 ; preds = %land.lhs.true274
  %subsystem_device280 = getelementptr i8, ptr %1, i32 -98
  %104 = ptrtoint ptr %subsystem_device280 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %subsystem_device280, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9298, i16 %105)
  %cmp282 = icmp eq i16 %105, 9298
  br i1 %cmp282, label %land.lhs.true284, label %land.lhs.true279.if.end295thread-pre-split_crit_edge

land.lhs.true279.if.end295thread-pre-split_crit_edge: ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295thread-pre-split

land.lhs.true284:                                 ; preds = %land.lhs.true279
  %106 = ptrtoint ptr %i2c_bus to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %i2c_bus, align 4, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %cmp288 = icmp eq i8 %107, 0
  %and291 = and i32 %supported_device, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291)
  %tobool292.not = icmp eq i32 %and291, 0
  %or.cond6 = and i1 %tobool292.not, %cmp288
  br i1 %or.cond6, label %if.then293, label %land.lhs.true284.if.end295thread-pre-split_crit_edge

land.lhs.true284.if.end295thread-pre-split_crit_edge: ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295thread-pre-split

if.then293:                                       ; preds = %land.lhs.true284
  call void @__sanitizer_cov_trace_pc() #13
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %108 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp294) #11
  call fastcc void @radeon_lookup_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %tmp294, ptr noundef %109, i8 noundef zeroext -109)
  %110 = call ptr @memcpy(ptr %i2c_bus, ptr %tmp294, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp294) #11
  br label %if.end295thread-pre-split

if.end295thread-pre-split:                        ; preds = %if.then293, %land.lhs.true284.if.end295thread-pre-split_crit_edge, %land.lhs.true279.if.end295thread-pre-split_crit_edge, %land.lhs.true274.if.end295thread-pre-split_crit_edge, %if.then261.if.end295thread-pre-split_crit_edge, %land.lhs.true256.if.end295thread-pre-split_crit_edge, %land.lhs.true251.if.end295thread-pre-split_crit_edge
  %111 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %111)
  %.pr16 = load i16, ptr %device, align 2
  br label %if.end295

if.end295:                                        ; preds = %if.end295thread-pre-split, %if.end241.if.end295_crit_edge
  %112 = phi i16 [ %.pr16, %if.end295thread-pre-split ], [ %93, %if.end241.if.end295_crit_edge ]
  %113 = zext i16 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %112, label %if.end295.cleanup_crit_edge [
    i16 -26622, label %if.end295.land.lhs.true310_crit_edge
    i16 -26619, label %if.end295.land.lhs.true310_crit_edge21
    i16 -26618, label %if.end295.land.lhs.true310_crit_edge22
  ]

if.end295.land.lhs.true310_crit_edge22:           ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true310

if.end295.land.lhs.true310_crit_edge21:           ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true310

if.end295.land.lhs.true310_crit_edge:             ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true310

if.end295.cleanup_crit_edge:                      ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true310:                                 ; preds = %if.end295.land.lhs.true310_crit_edge, %if.end295.land.lhs.true310_crit_edge21, %if.end295.land.lhs.true310_crit_edge22
  %subsystem_vendor311 = getelementptr i8, ptr %1, i32 -100
  %114 = ptrtoint ptr %subsystem_vendor311 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %subsystem_vendor311, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5940, i16 %115)
  %cmp313 = icmp eq i16 %115, 5940
  br i1 %cmp313, label %land.lhs.true315, label %land.lhs.true310.cleanup_crit_edge

land.lhs.true310.cleanup_crit_edge:               ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true315:                                 ; preds = %land.lhs.true310
  %subsystem_device316 = getelementptr i8, ptr %1, i32 -98
  %116 = ptrtoint ptr %subsystem_device316 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %subsystem_device316, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4541, i16 %117)
  %cmp318 = icmp eq i16 %117, 4541
  br i1 %cmp318, label %if.then320, label %land.lhs.true315.cleanup_crit_edge

land.lhs.true315.cleanup_crit_edge:               ; preds = %land.lhs.true315
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then320:                                       ; preds = %land.lhs.true315
  %118 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %connector_type, align 4
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %119, label %if.then320.cleanup_crit_edge [
    i32 1, label %if.then323
    i32 3, label %if.then326
  ]

if.then320.cleanup_crit_edge:                     ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then323:                                       ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %connector_type, align 4
  %122 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 12547, ptr %line_mux, align 2
  br label %cleanup

if.then326:                                       ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #13
  %123 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %connector_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then326, %if.then323, %if.then320.cleanup_crit_edge, %land.lhs.true315.cleanup_crit_edge, %land.lhs.true310.cleanup_crit_edge, %if.end295.cleanup_crit_edge, %if.then267, %if.then156.cleanup_crit_edge, %if.then156.cleanup_crit_edge19, %land.lhs.true131.cleanup_crit_edge, %land.lhs.true111.cleanup_crit_edge, %if.then76.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then54.cleanup_crit_edge18
  %retval.0 = phi i1 [ false, %if.then267 ], [ false, %if.then54.cleanup_crit_edge ], [ false, %if.then54.cleanup_crit_edge18 ], [ false, %if.then76.cleanup_crit_edge ], [ false, %land.lhs.true111.cleanup_crit_edge ], [ false, %land.lhs.true131.cleanup_crit_edge ], [ false, %if.then156.cleanup_crit_edge ], [ false, %if.then156.cleanup_crit_edge19 ], [ true, %if.then320.cleanup_crit_edge ], [ true, %if.end295.cleanup_crit_edge ], [ true, %if.then323 ], [ true, %if.then326 ], [ true, %land.lhs.true315.cleanup_crit_edge ], [ true, %land.lhs.true310.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_add_atom_connector(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_link_encoder_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_setup_mst_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_get_atom_connector_info_from_supported_devices_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %size.i = alloca i16, align 2
  %data_offset.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %size = alloca i16, align 2
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %router = alloca %struct.radeon_router, align 4
  %tmp = alloca %struct.radeon_i2c_bus_rec, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_info1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %5 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %router) #11
  %8 = call ptr @memset(ptr %router, i32 255, i32 92)
  %ddc_valid = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 3
  %9 = ptrtoint ptr %ddc_valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ddc_valid, align 1
  %cd_valid = getelementptr inbounds %struct.radeon_router, ptr %router, i32 0, i32 7
  %10 = ptrtoint ptr %cd_valid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %cd_valid, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1792) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup281_crit_edge, label %if.end

entry.cleanup281_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup281

if.end:                                           ; preds = %entry
  %call2 = call zeroext i1 @atom_parse_data_header(ptr noundef %3, i32 noundef 9, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call2, label %if.end4, label %if.end.cleanup281.sink.split_crit_edge

if.end.cleanup281.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup281.sink.split

if.end4:                                          ; preds = %if.end
  %bios = getelementptr inbounds %struct.atom_context, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios, align 4
  %14 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv
  %usDeviceSupport = getelementptr inbounds %struct._ATOM_SUPPORTED_DEVICES_INFO, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %usDeviceSupport to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %usDeviceSupport, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp ugt i8 %20, 1
  %. = select i1 %cmp, i32 16, i32 10
  %asConnInfo = getelementptr inbounds %struct._ATOM_SUPPORTED_DEVICES_INFO, ptr %add.ptr, i32 0, i32 2
  %conv12 = zext i16 %18 to i32
  %asIntSrcInfo = getelementptr inbounds %struct._ATOM_SUPPORTED_DEVICES_INFO_2d1, ptr %add.ptr, i32 0, i32 3
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %ddc_bus44 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 6, i32 4
  %ddc_bus = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 2, i32 4
  %hpd96 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 7, i32 5
  %hpd89 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 3, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end4
  %i.0453 = phi i32 [ 0, %if.end4 ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x %struct._ATOM_CONNECTOR_INFO_I2C], ptr %asConnInfo, i32 0, i32 %i.0453
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %ci.sroa.0.0.copyload = load i8, ptr %arrayidx, align 1
  %ci.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %22 = ptrtoint ptr %ci.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %ci.sroa.6.0.copyload = load i8, ptr %ci.sroa.6.0.arrayidx.sroa_idx, align 1
  %arrayidx11 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx11, align 8
  %shl = shl nuw i32 1, %i.0453
  %and = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body.cleanup_crit_edge, label %if.end15

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0453)
  %cmp16 = icmp eq i32 %i.0453, 8
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %bf.lshr = lshr i8 %ci.sroa.0.0.copyload, 4
  %idxprom = zext i8 %bf.lshr to i32
  %arrayidx20 = getelementptr [16 x i32], ptr @supported_devices_connector_convert, i32 0, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %connector_type = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453, i32 3
  %26 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %connector_type, align 8
  %27 = lshr i32 13057, %idxprom
  %28 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp24.not = icmp eq i32 %28, 0
  br i1 %cmp24.not, label %if.end27, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end19
  %bf.clear = and i8 %ci.sroa.0.0.copyload, 15
  %conv30 = zext i8 %ci.sroa.6.0.copyload to i16
  %line_mux = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453, i32 1
  %29 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv30, ptr %line_mux, align 2
  %30 = zext i32 %i.0453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %i.0453, label %if.else57 [
    i32 2, label %if.then34
    i32 6, label %if.then42
  ]

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %ddc_bus, align 4
  %32 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 50, ptr %line_mux, align 2
  br label %if.end65

if.then42:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %ddc_bus44 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ddc_bus44, align 4
  %34 = ptrtoint ptr %line_mux to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 51, ptr %line_mux, align 2
  br label %if.end65

if.else57:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %ddc_bus59 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453, i32 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp) #11
  call fastcc void @radeon_lookup_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %tmp, ptr noundef %1, i8 noundef zeroext %ci.sroa.6.0.copyload)
  %35 = call ptr @memcpy(ptr %ddc_bus59, ptr %tmp, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp) #11
  br label %if.end65

if.end65:                                         ; preds = %if.else57, %if.then42, %if.then34
  %36 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp67 = icmp ugt i8 %37, 1
  br i1 %cmp67, label %land.lhs.true, label %if.end65.if.else84_crit_edge

if.end65.if.else84_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else84

land.lhs.true:                                    ; preds = %if.end65
  %38 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp70 = icmp ugt i8 %39, 1
  br i1 %cmp70, label %if.then72, label %land.lhs.true.if.else84_crit_edge

land.lhs.true.if.else84_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else84

if.then72:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx73 = getelementptr [16 x %struct._ATOM_CONNECTOR_INC_SRC_BITMAP], ptr %asIntSrcInfo, i32 0, i32 %i.0453
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %41)
  %switch.selectcmp = icmp eq i8 %41, 10
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %41)
  %switch.selectcmp466 = icmp eq i8 %41, 4
  %switch.select467 = select i1 %switch.selectcmp466, i32 0, i32 %switch.select
  br label %if.end104

if.else84:                                        ; preds = %land.lhs.true.if.else84_crit_edge, %if.end65.if.else84_crit_edge
  %42 = zext i32 %i.0453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %i.0453, label %if.else84.if.end104_crit_edge [
    i32 3, label %if.then87
    i32 7, label %if.then94
  ]

if.else84.if.end104_crit_edge:                    ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then87:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %hpd89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hpd89, align 8
  br label %if.end112

if.then94:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %hpd96 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %hpd96, align 8
  br label %if.end112

if.end104:                                        ; preds = %if.else84.if.end104_crit_edge, %if.then72
  %.sink = phi i32 [ %switch.select467, %if.then72 ], [ 255, %if.else84.if.end104_crit_edge ]
  %hpd = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453, i32 5
  %45 = ptrtoint ptr %hpd to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %hpd, align 8
  %46 = zext i32 %i.0453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %i.0453, label %if.end104.if.end112_crit_edge [
    i32 0, label %if.end104.if.then109_crit_edge
    i32 4, label %if.end104.if.then109_crit_edge468
  ]

if.end104.if.then109_crit_edge468:                ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

if.end104.if.then109_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then109:                                       ; preds = %if.end104.if.then109_crit_edge, %if.end104.if.then109_crit_edge468
  %47 = ptrtoint ptr %connector_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %connector_type, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end104.if.end112_crit_edge, %if.then94, %if.then87
  %ddc_bus117 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453, i32 4
  %call122 = call fastcc zeroext i1 @radeon_atom_apply_quirks(ptr noundef %dev, i32 noundef %shl, ptr noundef %connector_type, ptr noundef %ddc_bus117, ptr noundef %line_mux)
  br i1 %call122, label %if.end124, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end124:                                        ; preds = %if.end112
  %48 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx11, align 8
  %conv128 = trunc i32 %shl to i16
  %devices = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.0453, i32 2
  %49 = ptrtoint ptr %devices to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv128, ptr %devices, align 4
  %50 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %51)
  %cmp130 = icmp ugt i32 %51, 17
  br i1 %cmp130, label %if.end124.if.then134_crit_edge, label %lor.lhs.false132

if.end124.if.then134_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then134

lor.lhs.false132:                                 ; preds = %if.end124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_r4xx_atom to i32))
  %52 = load i32, ptr @radeon_r4xx_atom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool133.not = icmp eq i32 %52, 0
  br i1 %tobool133.not, label %if.else138, label %lor.lhs.false132.if.then134_crit_edge

lor.lhs.false132.if.then134_crit_edge:            ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false132.if.then134_crit_edge, %if.end124.if.then134_crit_edge
  %call136 = call i32 @radeon_get_encoder_enum(ptr noundef %dev, i32 noundef %shl, i8 noundef zeroext %bf.clear) #11
  call void @radeon_add_atom_encoder(ptr noundef %dev, i32 noundef %call136, i32 noundef %shl, i16 noundef zeroext 0) #11
  br label %cleanup

if.else138:                                       ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #13
  %call140 = call i32 @radeon_get_encoder_enum(ptr noundef %dev, i32 noundef %shl, i8 noundef zeroext %bf.clear) #11
  call void @radeon_add_legacy_encoder(ptr noundef %dev, i32 noundef %call140, i32 noundef %shl) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else138, %if.then134, %if.end112.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then18, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0453, 1
  %exitcond.not = icmp eq i32 %inc, %.
  br i1 %exitcond.not, label %cleanup.for.body146_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.body146_crit_edge:                    ; preds = %cleanup
  br label %for.body146

for.body146:                                      ; preds = %for.inc249.for.body146_crit_edge, %cleanup.for.body146_crit_edge
  %i.1459 = phi i32 [ %inc250, %for.inc249.for.body146_crit_edge ], [ 0, %cleanup.for.body146_crit_edge ]
  %arrayidx147 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.1459
  %53 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx147, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool149.not = icmp eq i8 %54, 0
  br i1 %tobool149.not, label %for.body146.for.inc249_crit_edge, label %for.cond151.preheader

for.body146.for.inc249_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc249

for.cond151.preheader:                            ; preds = %for.body146
  %line_mux164 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.1459, i32 1
  %devices173 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.1459, i32 2
  %ddc_bus181 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.1459, i32 4
  %connector_type228 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.1459, i32 3
  %hpd236 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.1459, i32 5
  br label %for.body154

for.body154:                                      ; preds = %for.inc245.for.body154_crit_edge, %for.cond151.preheader
  %j.0456 = phi i32 [ 0, %for.cond151.preheader ], [ %inc246, %for.inc245.for.body154_crit_edge ]
  %arrayidx155 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %j.0456
  %55 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx155, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool157.not = icmp eq i8 %56, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1459, i32 %j.0456)
  %cmp160.not = icmp eq i32 %i.1459, %j.0456
  %or.cond = select i1 %tobool157.not, i1 true, i1 %cmp160.not
  br i1 %or.cond, label %for.body154.for.inc245_crit_edge, label %if.then162

for.body154.for.inc245_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc245

if.then162:                                       ; preds = %for.body154
  %57 = ptrtoint ptr %line_mux164 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %line_mux164, align 2
  %line_mux167 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %j.0456, i32 1
  %59 = ptrtoint ptr %line_mux167 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %line_mux167, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %60)
  %cmp169 = icmp eq i16 %58, %60
  br i1 %cmp169, label %if.then171, label %if.then162.for.inc245_crit_edge

if.then162.for.inc245_crit_edge:                  ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc245

if.then171:                                       ; preds = %if.then162
  %61 = ptrtoint ptr %devices173 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %devices173, align 4
  %conv174 = zext i16 %62 to i32
  %and175 = and i32 %conv174, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end183, label %if.then177

if.then177:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %line_mux164 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 53, ptr %line_mux164, align 2
  %64 = ptrtoint ptr %ddc_bus181 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %ddc_bus181, align 4
  br label %for.inc245

if.end183:                                        ; preds = %if.then171
  %devices185 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %j.0456, i32 2
  %65 = ptrtoint ptr %devices185 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %devices185, align 4
  %conv186 = zext i16 %66 to i32
  %and187 = and i32 %conv186, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187)
  %tobool188.not = icmp eq i32 %and187, 0
  br i1 %tobool188.not, label %if.end195, label %if.then189

if.then189:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %line_mux167 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 53, ptr %line_mux167, align 2
  %ddc_bus193 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %j.0456, i32 4
  %68 = ptrtoint ptr %ddc_bus193 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %ddc_bus193, align 4
  br label %for.inc245

if.end195:                                        ; preds = %if.end183
  %and199 = and i32 %conv174, 3784
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  %and205 = and i32 %conv186, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  %or.cond451 = select i1 %tobool200.not, i1 true, i1 %tobool206.not
  br i1 %or.cond451, label %lor.lhs.false207, label %if.end195.if.then219_crit_edge

if.end195.if.then219_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then219

lor.lhs.false207:                                 ; preds = %if.end195
  %69 = and i16 %66, 3784
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool212.not = icmp eq i16 %69, 0
  %70 = and i16 %62, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool218.not = icmp eq i16 %70, 0
  %or.cond452 = select i1 %tobool212.not, i1 true, i1 %tobool218.not
  br i1 %or.cond452, label %lor.lhs.false207.for.inc245_crit_edge, label %lor.lhs.false207.if.then219_crit_edge

lor.lhs.false207.if.then219_crit_edge:            ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then219

lor.lhs.false207.for.inc245_crit_edge:            ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc245

if.then219:                                       ; preds = %lor.lhs.false207.if.then219_crit_edge, %if.end195.if.then219_crit_edge
  %or450 = or i16 %66, %62
  %71 = ptrtoint ptr %devices173 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %or450, ptr %devices173, align 4
  %72 = ptrtoint ptr %connector_type228 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %connector_type228, align 8
  %73 = ptrtoint ptr %devices185 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %devices185, align 4
  %75 = and i16 %74, 3784
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool233.not = icmp eq i16 %75, 0
  br i1 %tobool233.not, label %if.then219.if.end239_crit_edge, label %if.then234

if.then219.if.end239_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end239

if.then234:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #13
  %hpd238 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %j.0456, i32 5
  %76 = call ptr @memcpy(ptr %hpd236, ptr %hpd238, i32 24)
  br label %if.end239

if.end239:                                        ; preds = %if.then234, %if.then219.if.end239_crit_edge
  %77 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx155, align 8
  br label %for.inc245

for.inc245:                                       ; preds = %if.end239, %lor.lhs.false207.for.inc245_crit_edge, %if.then189, %if.then177, %if.then162.for.inc245_crit_edge, %for.body154.for.inc245_crit_edge
  %inc246 = add nuw nsw i32 %j.0456, 1
  %exitcond463.not = icmp eq i32 %inc246, %.
  br i1 %exitcond463.not, label %for.inc245.for.inc249_crit_edge, label %for.inc245.for.body154_crit_edge

for.inc245.for.body154_crit_edge:                 ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body154

for.inc245.for.inc249_crit_edge:                  ; preds = %for.inc245
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc249

for.inc249:                                       ; preds = %for.inc245.for.inc249_crit_edge, %for.body146.for.inc249_crit_edge
  %inc250 = add nuw nsw i32 %i.1459, 1
  %exitcond464.not = icmp eq i32 %inc250, %.
  br i1 %exitcond464.not, label %for.inc249.for.body255_crit_edge, label %for.inc249.for.body146_crit_edge

for.inc249.for.body146_crit_edge:                 ; preds = %for.inc249
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body146

for.inc249.for.body255_crit_edge:                 ; preds = %for.inc249
  br label %for.body255

for.body255:                                      ; preds = %for.inc278.for.body255_crit_edge, %for.inc249.for.body255_crit_edge
  %i.2461 = phi i32 [ %inc279, %for.inc278.for.body255_crit_edge ], [ 0, %for.inc249.for.body255_crit_edge ]
  %arrayidx256 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.2461
  %78 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx256, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool258.not = icmp eq i8 %79, 0
  br i1 %tobool258.not, label %for.body255.for.inc278_crit_edge, label %if.then259

for.body255.for.inc278_crit_edge:                 ; preds = %for.body255
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc278

if.then259:                                       ; preds = %for.body255
  %connector_type261 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.2461, i32 3
  %80 = ptrtoint ptr %connector_type261 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %connector_type261, align 8
  %devices263 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.2461, i32 2
  %82 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_private, align 4
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %85, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [14 x i16], ptr @supported_devices_connector_object_id_convert, i32 0, i32 %81
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i, align 2
  br label %atombios_get_connector_object_id.exit

if.else.i:                                        ; preds = %if.then259
  %88 = ptrtoint ptr %devices263 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %devices263, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %81)
  %cmp.i = icmp eq i32 %81, 2
  %90 = and i32 %81, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %91 = icmp ne i32 %90, 2
  %92 = and i16 %89, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool3.not.i = icmp eq i16 %92, 0
  %or.cond41.i = or i1 %91, %tobool3.not.i
  br i1 %or.cond41.i, label %if.else30.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  %mode_info5.i = getelementptr inbounds %struct.radeon_device, ptr %83, i32 0, i32 44
  %93 = ptrtoint ptr %mode_info5.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mode_info5.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i) #11
  %95 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -1, ptr %size.i, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #11
  %96 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %97 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %98 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %94, i32 noundef 20, ptr noundef nonnull %size.i, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #11
  br i1 %call.i, label %if.then6.i, label %if.else21.i

if.then6.i:                                       ; preds = %if.then4.i
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bios.i, align 4
  %101 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %data_offset.i, align 2
  %conv7.i = zext i16 %102 to i32
  %add.ptr.i = getelementptr i8, ptr %100, i32 %conv7.i
  %ucSupportedLink.i = getelementptr inbounds %struct._ATOM_XTMDS_INFO, ptr %add.ptr.i, i32 0, i32 4
  %103 = ptrtoint ptr %ucSupportedLink.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ucSupportedLink.i, align 1
  %105 = and i8 %104, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool10.not.i = icmp eq i8 %105, 0
  br i1 %tobool10.not.i, label %if.else16.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %..i = select i1 %cmp.i, i16 2, i16 4
  br label %cleanup.i

if.else16.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  %.42.i = select i1 %cmp.i, i16 1, i16 3
  br label %cleanup.i

if.else21.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx22.i = getelementptr [14 x i16], ptr @supported_devices_connector_object_id_convert, i32 0, i32 %81
  %106 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx22.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else21.i, %if.else16.i, %if.then11.i
  %retval.0.i = phi i16 [ %107, %if.else21.i ], [ %..i, %if.then11.i ], [ %.42.i, %if.else16.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i) #11
  br label %atombios_get_connector_object_id.exit

if.else30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx31.i = getelementptr [14 x i16], ptr @supported_devices_connector_object_id_convert, i32 0, i32 %81
  %108 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx31.i, align 2
  br label %atombios_get_connector_object_id.exit

atombios_get_connector_object_id.exit:            ; preds = %if.else30.i, %cleanup.i, %if.then.i
  %retval.1.i = phi i16 [ %87, %if.then.i ], [ %retval.0.i, %cleanup.i ], [ %109, %if.else30.i ]
  %line_mux266 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.2461, i32 1
  %110 = ptrtoint ptr %line_mux266 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %line_mux266, align 2
  %conv267 = zext i16 %111 to i32
  %112 = ptrtoint ptr %devices263 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %devices263, align 4
  %conv270 = zext i16 %113 to i32
  %114 = ptrtoint ptr %connector_type261 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %connector_type261, align 8
  %ddc_bus274 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.2461, i32 4
  %hpd276 = getelementptr %struct.bios_connector, ptr %call7.i.i, i32 %i.2461, i32 5
  call void @radeon_add_atom_connector(ptr noundef %dev, i32 noundef %conv267, i32 noundef %conv270, i32 noundef %115, ptr noundef %ddc_bus274, i32 noundef 0, i16 noundef zeroext %retval.1.i, ptr noundef %hpd276, ptr noundef nonnull %router) #11
  br label %for.inc278

for.inc278:                                       ; preds = %atombios_get_connector_object_id.exit, %for.body255.for.inc278_crit_edge
  %inc279 = add nuw nsw i32 %i.2461, 1
  %exitcond465.not = icmp eq i32 %inc279, %.
  br i1 %exitcond465.not, label %for.end280, label %for.inc278.for.body255_crit_edge

for.inc278.for.body255_crit_edge:                 ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body255

for.end280:                                       ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #13
  call void @radeon_link_encoder_connector(ptr noundef %dev) #11
  br label %cleanup281.sink.split

cleanup281.sink.split:                            ; preds = %for.end280, %if.end.cleanup281.sink.split_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup281

cleanup281:                                       ; preds = %cleanup281.sink.split, %entry.cleanup281_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup281_crit_edge ], [ %call2, %cleanup281.sink.split ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %router) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_get_encoder_enum(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_add_legacy_encoder(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atom_get_clock_info(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset.i = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %clock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41
  %p2pll4 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 1
  %dcpll6 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 2
  %spll8 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3
  %mpll10 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %6, i32 noundef 4, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %usReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 25
  %13 = ptrtoint ptr %usReferenceClock to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %usReferenceClock, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv12 = zext i16 %15 to i32
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv12, ptr %clock, align 4
  %reference_div = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 1
  %17 = ptrtoint ptr %reference_div to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reference_div, align 4
  %18 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp = icmp ult i8 %19, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %20 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp16 = icmp ult i8 %21, 2
  br i1 %cmp16, label %if.end.thread, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %usMinPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 23
  %22 = ptrtoint ptr %usMinPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usMinPixelClockPLL_Output, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv19 = zext i16 %24 to i32
  %pll_out_min = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 5
  %25 = ptrtoint ptr %pll_out_min to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv19, ptr %pll_out_min, align 4
  %ulMaxPixelClockPLL_Output359 = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 8
  %26 = ptrtoint ptr %ulMaxPixelClockPLL_Output359 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %ulMaxPixelClockPLL_Output359, align 1
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %pll_out_max360 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 6
  %29 = ptrtoint ptr %pll_out_max360 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pll_out_max360, align 4
  br label %land.lhs.true24

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %ulMinPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_2, ptr %add.ptr, i32 0, i32 15
  %30 = ptrtoint ptr %ulMinPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %ulMinPixelClockPLL_Output, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %pll_out_min20 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 5
  %33 = ptrtoint ptr %pll_out_min20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pll_out_min20, align 4
  %ulMaxPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 8
  %34 = ptrtoint ptr %ulMaxPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %ulMaxPixelClockPLL_Output, align 1
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %pll_out_max = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 6
  %37 = ptrtoint ptr %pll_out_max to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %pll_out_max, align 4
  br i1 %cmp, label %if.end.land.lhs.true24_crit_edge, label %if.end.if.then31_crit_edge

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.end.land.lhs.true24_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end.land.lhs.true24_crit_edge, %if.end.thread
  %pll_out_max363 = phi ptr [ %pll_out_max360, %if.end.thread ], [ %pll_out_max, %if.end.land.lhs.true24_crit_edge ]
  %38 = phi i32 [ %28, %if.end.thread ], [ %36, %if.end.land.lhs.true24_crit_edge ]
  %39 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp26 = icmp ugt i8 %40, 3
  br i1 %cmp26, label %land.lhs.true24.if.then31_crit_edge, label %if.else49

land.lhs.true24.if.then31_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true24.if.then31_crit_edge, %if.end.if.then31_crit_edge
  %pll_out_max362 = phi ptr [ %pll_out_max363, %land.lhs.true24.if.then31_crit_edge ], [ %pll_out_max, %if.end.if.then31_crit_edge ]
  %usLcdMinPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr, i32 0, i32 14
  %41 = ptrtoint ptr %usLcdMinPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %usLcdMinPixelClockPLL_Output, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %conv32 = zext i16 %43 to i32
  %mul = mul nuw nsw i32 %conv32, 100
  %lcd_pll_out_min = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 7
  %44 = ptrtoint ptr %lcd_pll_out_min to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul, ptr %lcd_pll_out_min, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp34 = icmp eq i16 %42, 0
  br i1 %cmp34, label %if.then36, label %if.then31.if.end39_crit_edge

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %pll_out_min37 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 5
  %45 = ptrtoint ptr %pll_out_min37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pll_out_min37, align 4
  %47 = ptrtoint ptr %lcd_pll_out_min to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %lcd_pll_out_min, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.then31.if.end39_crit_edge
  %usLcdMaxPixelClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr, i32 0, i32 15
  %48 = ptrtoint ptr %usLcdMaxPixelClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %usLcdMaxPixelClockPLL_Output, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %conv40 = zext i16 %50 to i32
  %mul41 = mul nuw nsw i32 %conv40, 100
  %lcd_pll_out_max = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 8
  %51 = ptrtoint ptr %lcd_pll_out_max to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul41, ptr %lcd_pll_out_max, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp43 = icmp eq i16 %49, 0
  br i1 %cmp43, label %if.then45, label %if.end39.if.end54_crit_edge

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %pll_out_max362 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pll_out_max362, align 4
  %54 = ptrtoint ptr %lcd_pll_out_max to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %lcd_pll_out_max, align 4
  br label %if.end54

if.else49:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  %pll_out_min50 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 5
  %55 = ptrtoint ptr %pll_out_min50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pll_out_min50, align 4
  %lcd_pll_out_min51 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 7
  %57 = ptrtoint ptr %lcd_pll_out_min51 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %lcd_pll_out_min51, align 4
  %lcd_pll_out_max53 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 8
  %58 = ptrtoint ptr %lcd_pll_out_max53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %38, ptr %lcd_pll_out_max53, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then45, %if.end39.if.end54_crit_edge
  %pll_out_min55 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 5
  %59 = ptrtoint ptr %pll_out_min55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pll_out_min55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp56 = icmp eq i32 %60, 0
  br i1 %cmp56, label %if.then58, label %if.end54.if.end66_crit_edge

if.end54.if.end66_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %61 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %62)
  %cmp59 = icmp ugt i32 %62, 17
  %. = select i1 %cmp59, i32 64800, i32 20000
  %63 = ptrtoint ptr %pll_out_min55 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %., ptr %pll_out_min55, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %if.end54.if.end66_crit_edge
  %usMinPixelClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 21
  %64 = ptrtoint ptr %usMinPixelClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %usMinPixelClockPLL_Input, align 1
  %66 = call i16 @llvm.bswap.i16(i16 %65)
  %conv67 = zext i16 %66 to i32
  %pll_in_min = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 3
  %67 = ptrtoint ptr %pll_in_min to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv67, ptr %pll_in_min, align 4
  %usMaxPixelClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 22
  %68 = ptrtoint ptr %usMaxPixelClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %usMaxPixelClockPLL_Input, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69)
  %conv68 = zext i16 %70 to i32
  %pll_in_max = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 0, i32 4
  %71 = ptrtoint ptr %pll_in_max to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv68, ptr %pll_in_max, align 4
  %72 = call ptr @memcpy(ptr %p2pll4, ptr %clock, i32 80)
  %family69 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %73 = ptrtoint ptr %family69 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %family69, align 4
  %75 = ptrtoint ptr %usReferenceClock to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usReferenceClock, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %storemerge = zext i16 %77 to i32
  %78 = ptrtoint ptr %spll8 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %storemerge, ptr %spll8, align 4
  %reference_div80 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 1
  %79 = ptrtoint ptr %reference_div80 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %reference_div80, align 4
  %usMinEngineClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 16
  %80 = ptrtoint ptr %usMinEngineClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %usMinEngineClockPLL_Output, align 1
  %82 = call i16 @llvm.bswap.i16(i16 %81)
  %conv81 = zext i16 %82 to i32
  %pll_out_min82 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 5
  %83 = ptrtoint ptr %pll_out_min82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv81, ptr %pll_out_min82, align 4
  %ulMaxEngineClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 6
  %84 = ptrtoint ptr %ulMaxEngineClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %ulMaxEngineClockPLL_Output, align 1
  %86 = call i32 @llvm.bswap.i32(i32 %85)
  %pll_out_max83 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 6
  %87 = ptrtoint ptr %pll_out_max83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %pll_out_max83, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp85 = icmp eq i16 %81, 0
  br i1 %cmp85, label %if.then87, label %if.end66.if.end96_crit_edge

if.end66.if.end96_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then87:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %74)
  %cmp89 = icmp ugt i32 %74, 17
  %.372 = select i1 %cmp89, i32 64800, i32 20000
  %88 = ptrtoint ptr %pll_out_min82 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %.372, ptr %pll_out_min82, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then87, %if.end66.if.end96_crit_edge
  %usMinEngineClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 14
  %89 = ptrtoint ptr %usMinEngineClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %usMinEngineClockPLL_Input, align 1
  %91 = call i16 @llvm.bswap.i16(i16 %90)
  %conv97 = zext i16 %91 to i32
  %pll_in_min98 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 3
  %92 = ptrtoint ptr %pll_in_min98 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv97, ptr %pll_in_min98, align 4
  %usMaxEngineClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 15
  %93 = ptrtoint ptr %usMaxEngineClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %usMaxEngineClockPLL_Input, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94)
  %conv99 = zext i16 %95 to i32
  %pll_in_max100 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 3, i32 4
  %96 = ptrtoint ptr %pll_in_max100 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv99, ptr %pll_in_max100, align 4
  %97 = ptrtoint ptr %family69 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %family69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %98)
  %cmp102 = icmp ugt i32 %98, 38
  %usMemoryReferenceClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %add.ptr, i32 0, i32 30
  %usReferenceClock.sink = select i1 %cmp102, ptr %usMemoryReferenceClock, ptr %usReferenceClock
  %99 = ptrtoint ptr %usReferenceClock.sink to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %usReferenceClock.sink, align 1
  %101 = call i16 @llvm.bswap.i16(i16 %100)
  %storemerge357 = zext i16 %101 to i32
  %102 = ptrtoint ptr %mpll10 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %storemerge357, ptr %mpll10, align 4
  %reference_div112 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 1
  %103 = ptrtoint ptr %reference_div112 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %reference_div112, align 4
  %usMinMemoryClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 19
  %104 = ptrtoint ptr %usMinMemoryClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %usMinMemoryClockPLL_Output, align 1
  %106 = call i16 @llvm.bswap.i16(i16 %105)
  %conv113 = zext i16 %106 to i32
  %pll_out_min114 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 5
  %107 = ptrtoint ptr %pll_out_min114 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv113, ptr %pll_out_min114, align 4
  %ulMaxMemoryClockPLL_Output = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 7
  %108 = ptrtoint ptr %ulMaxMemoryClockPLL_Output to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %ulMaxMemoryClockPLL_Output, align 1
  %110 = call i32 @llvm.bswap.i32(i32 %109)
  %pll_out_max115 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 6
  %111 = ptrtoint ptr %pll_out_max115 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %pll_out_max115, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %cmp117 = icmp eq i16 %105, 0
  br i1 %cmp117, label %if.then119, label %if.end96.if.end128_crit_edge

if.end96.if.end128_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then119:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %98)
  %cmp121 = icmp ugt i32 %98, 17
  %.373 = select i1 %cmp121, i32 64800, i32 20000
  %112 = ptrtoint ptr %pll_out_min114 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.373, ptr %pll_out_min114, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then119, %if.end96.if.end128_crit_edge
  %usMinMemoryClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 17
  %113 = ptrtoint ptr %usMinMemoryClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %usMinMemoryClockPLL_Input, align 1
  %115 = call i16 @llvm.bswap.i16(i16 %114)
  %conv129 = zext i16 %115 to i32
  %pll_in_min130 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 3
  %116 = ptrtoint ptr %pll_in_min130 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %conv129, ptr %pll_in_min130, align 4
  %usMaxMemoryClockPLL_Input = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 18
  %117 = ptrtoint ptr %usMaxMemoryClockPLL_Input to i32
  call void @__asan_loadN_noabort(i32 %117, i32 2)
  %118 = load i16, ptr %usMaxMemoryClockPLL_Input, align 1
  %119 = call i16 @llvm.bswap.i16(i16 %118)
  %conv131 = zext i16 %119 to i32
  %pll_in_max132 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 4, i32 4
  %120 = ptrtoint ptr %pll_in_max132 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv131, ptr %pll_in_max132, align 4
  %ulDefaultEngineClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 2
  %121 = ptrtoint ptr %ulDefaultEngineClock to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %ulDefaultEngineClock, align 1
  %123 = call i32 @llvm.bswap.i32(i32 %122)
  %default_sclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 6
  %124 = ptrtoint ptr %default_sclk to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %default_sclk, align 4
  %ulDefaultMemoryClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 3
  %125 = ptrtoint ptr %ulDefaultMemoryClock to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %ulDefaultMemoryClock, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126)
  %default_mclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 5
  %128 = ptrtoint ptr %default_mclk to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %default_mclk, align 4
  %129 = ptrtoint ptr %family69 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %family69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %130)
  %cmp136 = icmp ugt i32 %130, 38
  br i1 %cmp136, label %if.then138, label %if.end128.if.end184_crit_edge

if.end128.if.end184_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

if.then138:                                       ; preds = %if.end128
  %ulDefaultDispEngineClkFreq = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %add.ptr, i32 0, i32 10
  %131 = ptrtoint ptr %ulDefaultDispEngineClkFreq to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %ulDefaultDispEngineClkFreq, align 1
  %133 = call i32 @llvm.bswap.i32(i32 %132)
  %default_dispclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp142 = icmp eq i32 %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %130)
  %cmp146 = icmp ugt i32 %130, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %130)
  %cmp153 = icmp ugt i32 %130, 46
  %.374 = select i1 %cmp153, i32 54000, i32 60000
  %.sink371 = select i1 %cmp146, i32 60000, i32 %.374
  %storemerge375 = select i1 %cmp142, i32 %.sink371, i32 %133
  %134 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %storemerge375, ptr %default_dispclk, align 4
  %135 = ptrtoint ptr %family69 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %family69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %136)
  %cmp165 = icmp ugt i32 %136, 50
  br i1 %cmp165, label %land.lhs.true167, label %if.then138.if.end178_crit_edge

if.then138.if.end178_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

land.lhs.true167:                                 ; preds = %if.then138
  %137 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %default_dispclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53900, i32 %138)
  %cmp170 = icmp ult i32 %138, 53900
  br i1 %cmp170, label %do.end, label %land.lhs.true167.if.end178_crit_edge

land.lhs.true167.if.end178_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

do.end:                                           ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #13
  %div.lhs.trunc = trunc i32 %138 to i16
  %div366 = udiv i16 %div.lhs.trunc, 100
  %div.zext = zext i16 %div366 to i32
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %div.zext) #15
  %139 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 60000, ptr %default_dispclk, align 4
  br label %if.end178

if.end178:                                        ; preds = %do.end, %land.lhs.true167.if.end178_crit_edge, %if.then138.if.end178_crit_edge
  %usUniphyDPModeExtClkFreq = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %add.ptr, i32 0, i32 31
  %140 = ptrtoint ptr %usUniphyDPModeExtClkFreq to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %usUniphyDPModeExtClkFreq, align 1
  %142 = call i16 @llvm.bswap.i16(i16 %141)
  %conv179 = zext i16 %142 to i32
  %dp_extclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 9
  %143 = ptrtoint ptr %dp_extclk to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv179, ptr %dp_extclk, align 4
  %144 = ptrtoint ptr %default_dispclk to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %default_dispclk, align 4
  %current_dispclk = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 8
  %146 = ptrtoint ptr %current_dispclk to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %current_dispclk, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.end178, %if.end128.if.end184_crit_edge
  %147 = call ptr @memcpy(ptr %dcpll6, ptr %clock, i32 80)
  %usMaxPixelClock = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 20
  %148 = ptrtoint ptr %usMaxPixelClock to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %usMaxPixelClock, align 1
  %150 = call i16 @llvm.bswap.i16(i16 %149)
  %max_pixel_clock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %cmp189 = icmp eq i16 %149, 0
  %narrow = select i1 %cmp189, i16 -25536, i16 %150
  %spec.select = zext i16 %narrow to i32
  %151 = ptrtoint ptr %max_pixel_clock to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %spec.select, ptr %max_pixel_clock, align 4
  %usFirmwareCapability = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr, i32 0, i32 24
  %152 = ptrtoint ptr %usFirmwareCapability to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %usFirmwareCapability, align 1
  %154 = call i16 @llvm.bswap.i16(i16 %153)
  %firmware_flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 44, i32 19
  %155 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %firmware_flags, align 4
  %156 = ptrtoint ptr %family69 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %family69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %157)
  %cmp197 = icmp ugt i32 %157, 56
  br i1 %cmp197, label %if.then199, label %if.else201

if.then199:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %ulGPUPLL_OutputFreq = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %add.ptr, i32 0, i32 5
  %158 = ptrtoint ptr %ulGPUPLL_OutputFreq to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %ulGPUPLL_OutputFreq, align 1
  %160 = call i32 @llvm.bswap.i32(i32 %159)
  %vco_freq = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 11
  %161 = ptrtoint ptr %vco_freq to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %vco_freq, align 4
  br label %if.end223

if.else201:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %157)
  %cmp203 = icmp ugt i32 %157, 46
  br i1 %cmp203, label %if.then205, label %if.else210

if.then205:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #13
  %current_dispclk207 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 8
  %162 = ptrtoint ptr %current_dispclk207 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %current_dispclk207, align 4
  %vco_freq209 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 11
  %164 = ptrtoint ptr %vco_freq209 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %vco_freq209, align 4
  br label %if.end223

if.else210:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %157)
  %cmp212 = icmp ugt i32 %157, 43
  br i1 %cmp212, label %land.lhs.true214, label %if.else210.if.else216_crit_edge

if.else210.if.else216_crit_edge:                  ; preds = %if.else210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else216

land.lhs.true214:                                 ; preds = %if.else210
  %flags = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 7
  %165 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags, align 8
  %and = and i32 %166, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true214.if.else216_crit_edge, label %if.then215

land.lhs.true214.if.else216_crit_edge:            ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else216

if.then215:                                       ; preds = %land.lhs.true214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %167 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %168 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #11
  %169 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !196
  %170 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mode_info1, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %171, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #11
  br i1 %call.i, label %if.then.i, label %if.then215.radeon_atombios_get_dentist_vco_freq.exit_crit_edge

if.then215.radeon_atombios_get_dentist_vco_freq.exit_crit_edge: ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_get_dentist_vco_freq.exit

if.then.i:                                        ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #13
  %172 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mode_info1, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %173, i32 0, i32 3
  %174 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bios.i, align 4
  %176 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %177 to i32
  %add.ptr.i = getelementptr i8, ptr %175, i32 %conv.i
  %ulDentistVCOFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i, i32 0, i32 2
  %178 = ptrtoint ptr %ulDentistVCOFreq.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 4)
  %179 = load i32, ptr %ulDentistVCOFreq.i, align 1
  %180 = call i32 @llvm.bswap.i32(i32 %179) #11
  %vco_freq.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 11
  %181 = ptrtoint ptr %vco_freq.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %vco_freq.i, align 4
  br label %radeon_atombios_get_dentist_vco_freq.exit

radeon_atombios_get_dentist_vco_freq.exit:        ; preds = %if.then.i, %if.then215.radeon_atombios_get_dentist_vco_freq.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  br label %if.end223

if.else216:                                       ; preds = %land.lhs.true214.if.else216_crit_edge, %if.else210.if.else216_crit_edge
  %current_dispclk218 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 8
  %182 = ptrtoint ptr %current_dispclk218 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %current_dispclk218, align 4
  %vco_freq220 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 11
  %184 = ptrtoint ptr %vco_freq220 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %vco_freq220, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.else216, %radeon_atombios_get_dentist_vco_freq.exit, %if.then205, %if.then199
  %vco_freq225 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 41, i32 11
  %185 = ptrtoint ptr %vco_freq225 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %vco_freq225, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp226 = icmp eq i32 %186, 0
  br i1 %cmp226, label %if.then228, label %if.end223.cleanup_crit_edge

if.end223.cleanup_crit_edge:                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then228:                                       ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %vco_freq225 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 360000, ptr %vco_freq225, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then228, %if.end223.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i1 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atombios_sideport_present(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %4)
  %cmp = icmp eq i32 %4, 18
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %6, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then2, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %13 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %crev, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %14, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then2
  %ulBootUpMemoryClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 2
  %16 = ptrtoint ptr %ulBootUpMemoryClock to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %ulBootUpMemoryClock, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %sw.bb.if.end13_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

sw.bb7:                                           ; preds = %if.then2
  %ulBootUpSidePortClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 4
  %18 = ptrtoint ptr %ulBootUpSidePortClock to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %ulBootUpSidePortClock, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %sw.bb7.if.end13_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7.if.end13_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

sw.default:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i8 %14 to i32
  %20 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %frev, align 1
  %conv11 = zext i8 %21 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %conv11, i32 noundef %conv4) #11
  br label %if.end13

if.end13:                                         ; preds = %sw.default, %sw.bb7.if.end13_crit_edge, %sw.bb.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ false, %entry.cleanup_crit_edge ], [ true, %sw.bb.cleanup_crit_edge ], [ true, %sw.bb7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atombios_get_tmds_info(ptr nocapture noundef readonly %encoder, ptr nocapture noundef %tmds) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mode_info2 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %5 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %7 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info2, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %8, i32 noundef 7, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info2, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %usMaxFrequency = getelementptr inbounds %struct._ATOM_TMDS_INFO, ptr %add.ptr, i32 0, i32 1
  %15 = ptrtoint ptr %usMaxFrequency to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usMaxFrequency, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %asMiscInfo = getelementptr inbounds %struct._ATOM_TMDS_INFO, ptr %add.ptr, i32 0, i32 2
  %conv43 = zext i16 %17 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then
  %i.092 = phi i32 [ 0, %if.then ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct._ATOM_MISC_CONTROL_INFO], ptr %asMiscInfo, i32 0, i32 %i.092
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv5 = zext i16 %20 to i32
  %arrayidx6 = getelementptr [4 x %struct.radeon_tmds_pll], ptr %tmds, i32 0, i32 %i.092
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv5, ptr %arrayidx6, align 4
  %ucPLL_ChargePump = getelementptr [4 x %struct._ATOM_MISC_CONTROL_INFO], ptr %asMiscInfo, i32 0, i32 %i.092, i32 1
  %22 = ptrtoint ptr %ucPLL_ChargePump to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucPLL_ChargePump, align 1
  %24 = and i8 %23, 63
  %and = zext i8 %24 to i32
  %value = getelementptr [4 x %struct.radeon_tmds_pll], ptr %tmds, i32 0, i32 %i.092, i32 1
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %value, align 4
  %ucPLL_VCO_Gain = getelementptr [4 x %struct._ATOM_MISC_CONTROL_INFO], ptr %asMiscInfo, i32 0, i32 %i.092, i32 3
  %26 = ptrtoint ptr %ucPLL_VCO_Gain to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucPLL_VCO_Gain, align 1
  %28 = and i8 %27, 63
  %and15 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %and15, 6
  %or = or i32 %shl, %and
  store i32 %or, ptr %value, align 4
  %ucPLL_DutyCycle = getelementptr [4 x %struct._ATOM_MISC_CONTROL_INFO], ptr %asMiscInfo, i32 0, i32 %i.092, i32 2
  %29 = ptrtoint ptr %ucPLL_DutyCycle to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucPLL_DutyCycle, align 1
  %31 = and i8 %30, 15
  %and22 = zext i8 %31 to i32
  %shl23 = shl nuw nsw i32 %and22, 12
  %or27 = or i32 %shl23, %or
  store i32 %or27, ptr %value, align 4
  %ucPLL_VoltageSwing = getelementptr [4 x %struct._ATOM_MISC_CONTROL_INFO], ptr %asMiscInfo, i32 0, i32 %i.092, i32 4
  %32 = ptrtoint ptr %ucPLL_VoltageSwing to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ucPLL_VoltageSwing, align 1
  %34 = and i8 %33, 15
  %and31 = zext i8 %34 to i32
  %shl32 = shl nuw nsw i32 %and31, 16
  %or36 = or i32 %shl32, %or27
  store i32 %or36, ptr %value, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %conv5, i32 noundef %or36) #11
  %35 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv43)
  %cmp47 = icmp eq i32 %36, %conv43
  br i1 %cmp47, label %if.then49, label %for.cond

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atombios_get_ppll_ss_info(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %ss, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %4 = call ptr @memset(ptr %ss, i32 0, i32 16)
  %5 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %6, i32 noundef 18, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %size, align 2
  %conv3 = zext i16 %8 to i32
  %sub = add nsw i32 %conv3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp38.not = icmp ult i32 %sub, 8
  br i1 %cmp38.not, label %if.then.cleanup_crit_edge, label %for.body.preheader

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.then
  %9 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %asSS_Info = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %add.ptr, i32 0, i32 1
  %div36 = lshr i32 %sub, 3
  %umax = call i32 @llvm.umax.i32(i32 %div36, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.040 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ss_assign.039 = phi ptr [ %add.ptr10, %if.end.for.body_crit_edge ], [ %asSS_Info, %for.body.preheader ]
  %ucSS_Id = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, ptr %ss_assign.039, i32 0, i32 4
  %15 = ptrtoint ptr %ucSS_Id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucSS_Id, align 1
  %conv5 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %id)
  %cmp6 = icmp eq i32 %conv5, %id
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ss_assign.039 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ss_assign.039, align 1
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %20 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %ss, align 2
  %ucSpreadSpectrumType = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, ptr %ss_assign.039, i32 0, i32 1
  %21 = ptrtoint ptr %ucSpreadSpectrumType to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucSpreadSpectrumType, align 1
  %type = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %type, align 2
  %ucSS_Step = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, ptr %ss_assign.039, i32 0, i32 2
  %24 = ptrtoint ptr %ucSS_Step to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucSS_Step, align 1
  %conv9 = zext i8 %25 to i16
  %step = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 3
  %26 = ptrtoint ptr %step to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv9, ptr %step, align 2
  %ucSS_Delay = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, ptr %ss_assign.039, i32 0, i32 3
  %27 = ptrtoint ptr %ucSS_Delay to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ucSS_Delay, align 1
  %delay = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 4
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %delay, align 2
  %ucSS_Range = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, ptr %ss_assign.039, i32 0, i32 6
  %30 = ptrtoint ptr %ucSS_Range to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ucSS_Range, align 1
  %range = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 5
  %32 = ptrtoint ptr %range to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %range, align 1
  %ucRecommendedRef_Div = getelementptr inbounds %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT, ptr %ss_assign.039, i32 0, i32 5
  %33 = ptrtoint ptr %ucRecommendedRef_Div to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ucRecommendedRef_Div, align 1
  %refdiv = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 6
  %35 = ptrtoint ptr %refdiv to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %refdiv, align 2
  br label %cleanup

if.end:                                           ; preds = %for.body
  %add.ptr10 = getelementptr i8, ptr %ss_assign.039, i32 8
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then8 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atombios_get_asic_ss_info(ptr nocapture noundef readonly %rdev, ptr nocapture noundef %ss, i32 noundef %id, i32 noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %4 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %id, label %entry.if.end15_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then7
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then:                                          ; preds = %entry
  %firmware_flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 19
  %5 = ptrtoint ptr %firmware_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %firmware_flags, align 4
  %7 = and i16 %6, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %entry
  %firmware_flags9 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 19
  %8 = ptrtoint ptr %firmware_flags9 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %firmware_flags9, align 4
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool12.not = icmp eq i16 %10, 0
  br i1 %tobool12.not, label %if.then7.cleanup_crit_edge, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.then7.if.end15_crit_edge, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %11 = call ptr @memset(ptr %ss, i32 0, i32 16)
  %12 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %13, i32 noundef 26, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then16, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bios, align 4
  %18 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data_offset, align 2
  %conv18 = zext i16 %19 to i32
  %add.ptr = getelementptr i8, ptr %17, i32 %conv18
  %20 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %frev, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %21, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb31
    i8 3, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.then16
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size, align 2
  %conv20 = zext i16 %24 to i32
  %sub = add nsw i32 %conv20, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %25 = icmp ult i32 %sub, 12
  br i1 %25, label %sw.bb.cleanup_crit_edge, label %for.body.preheader

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %asSpreadSpectrum = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO, ptr %add.ptr, i32 0, i32 1
  %div = udiv i32 %sub, 12
  %umax226 = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.preheader
  %i.0218 = phi i32 [ %inc, %if.end29.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ss_assign.0216 = phi ptr [ %add.ptr30, %if.end29.for.body_crit_edge ], [ %asSpreadSpectrum, %for.body.preheader ]
  %ucClockIndication = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0216, i32 0, i32 3
  %26 = ptrtoint ptr %ucClockIndication to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucClockIndication, align 1
  %conv23 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %id)
  %cmp24 = icmp eq i32 %conv23, %id
  br i1 %cmp24, label %land.lhs.true, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %for.body
  %28 = ptrtoint ptr %ss_assign.0216 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %ss_assign.0216, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %clock)
  %cmp26.not = icmp ult i32 %30, %clock
  br i1 %cmp26.not, label %land.lhs.true.if.end29_crit_edge, label %if.then28

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %usSpreadSpectrumPercentage = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0216, i32 0, i32 1
  %31 = ptrtoint ptr %usSpreadSpectrumPercentage to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usSpreadSpectrumPercentage, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %34 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %ss, align 2
  %ucSpreadSpectrumMode = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0216, i32 0, i32 4
  %35 = ptrtoint ptr %ucSpreadSpectrumMode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ucSpreadSpectrumMode, align 1
  %type = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %type, align 2
  %usSpreadRateInKhz = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT, ptr %ss_assign.0216, i32 0, i32 2
  %38 = ptrtoint ptr %usSpreadRateInKhz to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usSpreadRateInKhz, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %rate = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %41 = ptrtoint ptr %rate to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %rate, align 2
  %percentage_divider = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 1
  %42 = ptrtoint ptr %percentage_divider to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 100, ptr %percentage_divider, align 2
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %for.body.if.end29_crit_edge
  %add.ptr30 = getelementptr i8, ptr %ss_assign.0216, i32 12
  %inc = add nuw nsw i32 %i.0218, 1
  %exitcond227.not = icmp eq i32 %inc, %umax226
  br i1 %exitcond227.not, label %if.end29.cleanup_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb31:                                          ; preds = %if.then16
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %size, align 2
  %conv32 = zext i16 %44 to i32
  %sub33 = add nsw i32 %conv32, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub33)
  %45 = icmp ult i32 %sub33, 12
  br i1 %45, label %sw.bb31.cleanup_crit_edge, label %for.body40.preheader

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body40.preheader:                             ; preds = %sw.bb31
  %asSpreadSpectrum35 = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V2, ptr %add.ptr, i32 0, i32 1
  %div34 = udiv i32 %sub33, 12
  %umax224 = call i32 @llvm.umax.i32(i32 %div34, i32 1)
  br label %for.body40

for.body40:                                       ; preds = %if.end70.for.body40_crit_edge, %for.body40.preheader
  %i.1214 = phi i32 [ %inc73, %if.end70.for.body40_crit_edge ], [ 0, %for.body40.preheader ]
  %ss_assign.1212 = phi ptr [ %add.ptr71, %if.end70.for.body40_crit_edge ], [ %asSpreadSpectrum35, %for.body40.preheader ]
  %ucClockIndication41 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1212, i32 0, i32 3
  %46 = ptrtoint ptr %ucClockIndication41 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ucClockIndication41, align 1
  %conv42 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv42, i32 %id)
  %cmp43 = icmp eq i32 %conv42, %id
  br i1 %cmp43, label %land.lhs.true45, label %for.body40.if.end70_crit_edge

for.body40.if.end70_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

land.lhs.true45:                                  ; preds = %for.body40
  %48 = ptrtoint ptr %ss_assign.1212 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %ss_assign.1212, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %clock)
  %cmp47.not = icmp ult i32 %50, %clock
  br i1 %cmp47.not, label %land.lhs.true45.if.end70_crit_edge, label %if.then49

land.lhs.true45.if.end70_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then49:                                        ; preds = %land.lhs.true45
  %usSpreadSpectrumPercentage50 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1212, i32 0, i32 1
  %51 = ptrtoint ptr %usSpreadSpectrumPercentage50 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %usSpreadSpectrumPercentage50, align 1
  %53 = call i16 @llvm.bswap.i16(i16 %52)
  %54 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %ss, align 2
  %ucSpreadSpectrumMode52 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1212, i32 0, i32 4
  %55 = ptrtoint ptr %ucSpreadSpectrumMode52 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ucSpreadSpectrumMode52, align 1
  %type53 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %57 = ptrtoint ptr %type53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %type53, align 2
  %usSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %ss_assign.1212, i32 0, i32 2
  %58 = ptrtoint ptr %usSpreadRateIn10Hz to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %usSpreadRateIn10Hz, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %rate54 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %61 = ptrtoint ptr %rate54 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %rate54, align 2
  %percentage_divider55 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 1
  %62 = ptrtoint ptr %percentage_divider55 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 100, ptr %percentage_divider55, align 2
  %63 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp57 = icmp eq i8 %64, 2
  %id.off = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off)
  %switch = icmp ult i32 %id.off, 2
  %or.cond = and i1 %switch, %cmp57
  br i1 %or.cond, label %if.then64, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then64:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %65 = udiv i16 %60, 100
  %66 = ptrtoint ptr %rate54 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %rate54, align 2
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true45.if.end70_crit_edge, %for.body40.if.end70_crit_edge
  %add.ptr71 = getelementptr i8, ptr %ss_assign.1212, i32 12
  %inc73 = add nuw nsw i32 %i.1214, 1
  %exitcond225.not = icmp eq i32 %inc73, %umax224
  br i1 %exitcond225.not, label %if.end70.cleanup_crit_edge, label %if.end70.for.body40_crit_edge

if.end70.for.body40_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb75:                                          ; preds = %if.then16
  %67 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %size, align 2
  %conv76 = zext i16 %68 to i32
  %sub77 = add nsw i32 %conv76, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub77)
  %69 = icmp ult i32 %sub77, 12
  br i1 %69, label %sw.bb75.cleanup_crit_edge, label %for.body84.preheader

sw.bb75.cleanup_crit_edge:                        ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body84.preheader:                             ; preds = %sw.bb75
  %asSpreadSpectrum79 = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V3, ptr %add.ptr, i32 0, i32 1
  %div78 = udiv i32 %sub77, 12
  %umax = call i32 @llvm.umax.i32(i32 %div78, i32 1)
  br label %for.body84

for.body84:                                       ; preds = %if.end123.for.body84_crit_edge, %for.body84.preheader
  %i.2210 = phi i32 [ %inc126, %if.end123.for.body84_crit_edge ], [ 0, %for.body84.preheader ]
  %ss_assign.2208 = phi ptr [ %add.ptr124, %if.end123.for.body84_crit_edge ], [ %asSpreadSpectrum79, %for.body84.preheader ]
  %ucClockIndication85 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2208, i32 0, i32 3
  %70 = ptrtoint ptr %ucClockIndication85 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ucClockIndication85, align 1
  %conv86 = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv86, i32 %id)
  %cmp87 = icmp eq i32 %conv86, %id
  br i1 %cmp87, label %land.lhs.true89, label %for.body84.if.end123_crit_edge

for.body84.if.end123_crit_edge:                   ; preds = %for.body84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

land.lhs.true89:                                  ; preds = %for.body84
  %72 = ptrtoint ptr %ss_assign.2208 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %ss_assign.2208, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %clock)
  %cmp91.not = icmp ult i32 %74, %clock
  br i1 %cmp91.not, label %land.lhs.true89.if.end123_crit_edge, label %if.then93

land.lhs.true89.if.end123_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

if.then93:                                        ; preds = %land.lhs.true89
  %usSpreadSpectrumPercentage94 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2208, i32 0, i32 1
  %75 = ptrtoint ptr %usSpreadSpectrumPercentage94 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usSpreadSpectrumPercentage94, align 1
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %78 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %ss, align 2
  %ucSpreadSpectrumMode96 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2208, i32 0, i32 4
  %79 = ptrtoint ptr %ucSpreadSpectrumMode96 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ucSpreadSpectrumMode96, align 1
  %type97 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 2
  %81 = ptrtoint ptr %type97 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %type97, align 2
  %usSpreadRateIn10Hz98 = getelementptr inbounds %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %ss_assign.2208, i32 0, i32 2
  %82 = ptrtoint ptr %usSpreadRateIn10Hz98 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %usSpreadRateIn10Hz98, align 1
  %84 = call i16 @llvm.bswap.i16(i16 %83)
  %rate99 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %85 = ptrtoint ptr %rate99 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %rate99, align 2
  %86 = ptrtoint ptr %ucSpreadSpectrumMode96 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ucSpreadSpectrumMode96, align 1
  %88 = and i8 %87, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool103.not = icmp eq i8 %88, 0
  %spec.select = select i1 %tobool103.not, i16 100, i16 1000
  %89 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %spec.select, ptr %89, align 2
  %id.off200 = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.off200)
  %switch201 = icmp ult i32 %id.off200, 2
  br i1 %switch201, label %if.then113, label %if.then93.if.end118_crit_edge

if.then93.if.end118_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then113:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %91 = udiv i16 %84, 100
  %92 = ptrtoint ptr %rate99 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %rate99, align 2
  br label %if.end118

if.end118:                                        ; preds = %if.then113, %if.then93.if.end118_crit_edge
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 8
  %and119 = and i32 %94, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.cleanup_crit_edge, label %if.then121

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @radeon_atombios_get_igp_ss_overrides(ptr noundef %rdev, ptr noundef %ss, i32 noundef %id)
  br label %cleanup

if.end123:                                        ; preds = %land.lhs.true89.if.end123_crit_edge, %for.body84.if.end123_crit_edge
  %add.ptr124 = getelementptr i8, ptr %ss_assign.2208, i32 12
  %inc126 = add nuw nsw i32 %i.2210, 1
  %exitcond.not = icmp eq i32 %inc126, %umax
  br i1 %exitcond.not, label %if.end123.cleanup_crit_edge, label %if.end123.for.body84_crit_edge

if.end123.for.body84_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body84

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %conv19 = zext i8 %21 to i32
  %95 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %crev, align 1
  %conv129 = zext i8 %96 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %conv19, i32 noundef %conv129) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end123.cleanup_crit_edge, %if.then121, %if.end118.cleanup_crit_edge, %sw.bb75.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.then64, %if.then49.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then28, %sw.bb.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then28 ], [ false, %if.then.cleanup_crit_edge ], [ false, %if.then7.cleanup_crit_edge ], [ true, %if.then64 ], [ true, %if.then49.cleanup_crit_edge ], [ true, %if.then121 ], [ true, %if.end118.cleanup_crit_edge ], [ false, %sw.default ], [ false, %if.end15.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb31.cleanup_crit_edge ], [ false, %sw.bb75.cleanup_crit_edge ], [ false, %if.end29.cleanup_crit_edge ], [ false, %if.end70.cleanup_crit_edge ], [ false, %if.end123.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_atombios_get_igp_ss_overrides(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %ss, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %size, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 30, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %13, label %sw.default [
    i8 6, label %sw.bb
    i8 7, label %sw.bb7
    i8 8, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.then
  %15 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %id, label %sw.bb.if.end38_crit_edge [
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
  ]

sw.bb.if.end38_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %usDVISSPercentage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 37
  %16 = ptrtoint ptr %usDVISSPercentage to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %usDVISSPercentage, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %usDVISSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 38
  br label %sw.epilog31

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %usHDMISSPercentage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 35
  %19 = ptrtoint ptr %usHDMISSPercentage to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usHDMISSPercentage, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %usHDMISSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 36
  br label %sw.epilog31

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %usLvdsSSPercentage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 33
  %22 = ptrtoint ptr %usLvdsSSPercentage to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usLvdsSSPercentage, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %usLvdsSSpreadRateIn10Hz = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr, i32 0, i32 34
  br label %sw.epilog31

sw.bb7:                                           ; preds = %if.then
  %25 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %id, label %sw.bb7.if.end38_crit_edge [
    i32 4, label %sw.bb8
    i32 5, label %sw.bb11
    i32 6, label %sw.bb14
  ]

sw.bb7.if.end38_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

sw.bb8:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %usDVISSPercentage9 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 37
  %26 = ptrtoint ptr %usDVISSPercentage9 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usDVISSPercentage9, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %usDVISSpreadRateIn10Hz10 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 38
  br label %sw.epilog31

sw.bb11:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %usHDMISSPercentage12 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 35
  %29 = ptrtoint ptr %usHDMISSPercentage12 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usHDMISSPercentage12, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %usHDMISSpreadRateIn10Hz13 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 36
  br label %sw.epilog31

sw.bb14:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  %usLvdsSSPercentage15 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 33
  %32 = ptrtoint ptr %usLvdsSSPercentage15 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usLvdsSSPercentage15, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %usLvdsSSpreadRateIn10Hz16 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr, i32 0, i32 34
  br label %sw.epilog31

sw.bb18:                                          ; preds = %if.then
  %35 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %id, label %sw.bb18.if.end38_crit_edge [
    i32 4, label %sw.bb19
    i32 5, label %sw.bb22
    i32 6, label %sw.bb25
  ]

sw.bb18.if.end38_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

sw.bb19:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %usDVISSPercentage20 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 36
  %36 = ptrtoint ptr %usDVISSPercentage20 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usDVISSPercentage20, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %usDVISSpreadRateIn10Hz21 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 37
  br label %sw.epilog31

sw.bb22:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %usHDMISSPercentage23 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 34
  %39 = ptrtoint ptr %usHDMISSPercentage23 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %usHDMISSPercentage23, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  %usHDMISSpreadRateIn10Hz24 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 35
  br label %sw.epilog31

sw.bb25:                                          ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #13
  %usLvdsSSPercentage26 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 32
  %42 = ptrtoint ptr %usLvdsSSPercentage26 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %usLvdsSSPercentage26, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %usLvdsSSpreadRateIn10Hz27 = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr, i32 0, i32 33
  br label %sw.epilog31

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %13 to i32
  %45 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %frev, align 1
  %conv29 = zext i8 %46 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %conv29, i32 noundef %conv3) #11
  br label %if.end38

sw.epilog31:                                      ; preds = %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb4
  %usDVISSpreadRateIn10Hz21.sink = phi ptr [ %usDVISSpreadRateIn10Hz21, %sw.bb19 ], [ %usHDMISSpreadRateIn10Hz24, %sw.bb22 ], [ %usLvdsSSpreadRateIn10Hz27, %sw.bb25 ], [ %usDVISSpreadRateIn10Hz10, %sw.bb8 ], [ %usHDMISSpreadRateIn10Hz13, %sw.bb11 ], [ %usLvdsSSpreadRateIn10Hz16, %sw.bb14 ], [ %usDVISSpreadRateIn10Hz, %sw.bb4 ], [ %usHDMISSpreadRateIn10Hz, %sw.bb5 ], [ %usLvdsSSpreadRateIn10Hz, %sw.bb6 ]
  %percentage.0 = phi i16 [ %38, %sw.bb19 ], [ %41, %sw.bb22 ], [ %44, %sw.bb25 ], [ %28, %sw.bb8 ], [ %31, %sw.bb11 ], [ %34, %sw.bb14 ], [ %18, %sw.bb4 ], [ %21, %sw.bb5 ], [ %24, %sw.bb6 ]
  %47 = ptrtoint ptr %usDVISSpreadRateIn10Hz21.sink to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %usDVISSpreadRateIn10Hz21.sink, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %percentage.0)
  %tobool.not = icmp eq i16 %percentage.0, 0
  br i1 %tobool.not, label %sw.epilog31.if.end_crit_edge, label %if.then32

sw.epilog31.if.end_crit_edge:                     ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then32:                                        ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %ss to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %percentage.0, ptr %ss, align 2
  br label %if.end

if.end:                                           ; preds = %if.then32, %sw.epilog31.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool34.not = icmp eq i16 %48, 0
  br i1 %tobool34.not, label %if.end.if.end38_crit_edge, label %if.then35

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rate36 = getelementptr inbounds %struct.radeon_atom_ss, ptr %ss, i32 0, i32 7
  %51 = ptrtoint ptr %rate36 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %49, ptr %rate36, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end.if.end38_crit_edge, %sw.default, %sw.bb18.if.end38_crit_edge, %sw.bb7.if.end38_crit_edge, %sw.bb.if.end38_crit_edge, %entry.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_atombios_get_lvds_info(ptr nocapture noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mode_info2 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %5 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %encoder_enum3 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 1
  %7 = ptrtoint ptr %encoder_enum3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %encoder_enum3, align 4
  %9 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info2, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %10, i32 noundef 6, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode_info2, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios, align 4
  %15 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %16 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 160) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sLCDTiming = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 1
  %18 = ptrtoint ptr %sLCDTiming to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %sLCDTiming, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv7 = zext i16 %20 to i32
  %mul = mul nuw nsw i32 %conv7, 10
  %native_mode = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %native_mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %native_mode, align 4
  %usHActive = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 1
  %22 = ptrtoint ptr %usHActive to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usHActive, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %hdisplay = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %hdisplay to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %hdisplay, align 8
  %usVActive = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 3
  %26 = ptrtoint ptr %usVActive to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usVActive, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %vdisplay = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 6
  %29 = ptrtoint ptr %vdisplay to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vdisplay, align 2
  %usHBlanking_Time = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 2
  %30 = ptrtoint ptr %usHBlanking_Time to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usHBlanking_Time, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %add = add i16 %32, %24
  %htotal = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 4
  %33 = ptrtoint ptr %htotal to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add, ptr %htotal, align 2
  %usHSyncOffset = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 5
  %34 = ptrtoint ptr %usHSyncOffset to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usHSyncOffset, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %add24 = add i16 %36, %24
  %hsync_start = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %hsync_start to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %add24, ptr %hsync_start, align 2
  %usHSyncWidth = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 6
  %38 = ptrtoint ptr %usHSyncWidth to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usHSyncWidth, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39)
  %add32 = add i16 %40, %add24
  %hsync_end = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 3
  %41 = ptrtoint ptr %hsync_end to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %add32, ptr %hsync_end, align 4
  %usVBlanking_Time = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 4
  %42 = ptrtoint ptr %usVBlanking_Time to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %usVBlanking_Time, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43)
  %add40 = add i16 %44, %28
  %vtotal = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 9
  %45 = ptrtoint ptr %vtotal to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %add40, ptr %vtotal, align 8
  %usVSyncOffset = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 7
  %46 = ptrtoint ptr %usVSyncOffset to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %usVSyncOffset, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %add48 = add i16 %48, %28
  %vsync_start = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 7
  %49 = ptrtoint ptr %vsync_start to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %add48, ptr %vsync_start, align 4
  %usVSyncWidth = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 8
  %50 = ptrtoint ptr %usVSyncWidth to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %usVSyncWidth, align 1
  %52 = call i16 @llvm.bswap.i16(i16 %51)
  %add56 = add i16 %52, %add48
  %vsync_end = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 8
  %53 = ptrtoint ptr %vsync_end to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %add56, ptr %vsync_end, align 2
  %usOffDelayInMs = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 4
  %54 = ptrtoint ptr %usOffDelayInMs to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %usOffDelayInMs, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55)
  %panel_pwr_delay = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %panel_pwr_delay to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %panel_pwr_delay, align 4
  %ucLVDS_Misc = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 7
  %58 = ptrtoint ptr %ucLVDS_Misc to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ucLVDS_Misc, align 1
  %conv59 = zext i8 %59 to i32
  %lcd_misc = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %lcd_misc to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv59, ptr %lcd_misc, align 8
  %susModeMiscInfo = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 13
  %61 = ptrtoint ptr %susModeMiscInfo to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %susModeMiscInfo, align 1
  %63 = call i16 @llvm.bswap.i16(i16 %62)
  %conv61 = zext i16 %63 to i32
  %and62 = and i32 %conv61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end.if.end66_crit_edge, label %if.then64

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then64:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %or = or i32 %65, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end.if.end66_crit_edge
  %and68 = and i32 %conv61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end66.if.end74_crit_edge, label %if.then70

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %flags72 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %66 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags72, align 4
  %or73 = or i32 %67, 2
  store i32 %or73, ptr %flags72, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end66.if.end74_crit_edge
  %and76 = and i32 %conv61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end74.if.end82_crit_edge, label %if.then78

if.end74.if.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %flags80 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %68 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags80, align 4
  %or81 = or i32 %69, 64
  store i32 %or81, ptr %flags80, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %if.end74.if.end82_crit_edge
  %and84 = and i32 %conv61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end90_crit_edge, label %if.then86

if.end82.if.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %flags88 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %70 = ptrtoint ptr %flags88 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags88, align 4
  %or89 = or i32 %71, 16
  store i32 %or89, ptr %flags88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end82.if.end90_crit_edge
  %and92 = and i32 %conv61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end98_crit_edge, label %if.then94

if.end90.if.end98_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %flags96 = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 11
  %72 = ptrtoint ptr %flags96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags96, align 4
  %or97 = or i32 %73, 32
  store i32 %or97, ptr %flags96, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then94, %if.end90.if.end98_crit_edge
  %usImageHSize = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 9
  %74 = ptrtoint ptr %usImageHSize to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %usImageHSize, align 1
  %76 = call i16 @llvm.bswap.i16(i16 %75)
  %width_mm = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 26
  %77 = ptrtoint ptr %width_mm to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %width_mm, align 2
  %usImageVSize = getelementptr inbounds %struct._ATOM_DTD_FORMAT, ptr %sLCDTiming, i32 0, i32 10
  %78 = ptrtoint ptr %usImageVSize to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %usImageVSize, align 1
  %80 = call i16 @llvm.bswap.i16(i16 %79)
  %height_mm = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 6, i32 27
  %81 = ptrtoint ptr %height_mm to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %height_mm, align 8
  call void @drm_mode_set_crtcinfo(ptr noundef %native_mode, i32 noundef 1) #11
  %ucSS_Id = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 10
  %82 = ptrtoint ptr %ucSS_Id to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ucSS_Id, align 1
  %conv104 = zext i8 %83 to i32
  %lcd_ss_id = getelementptr inbounds %struct.radeon_encoder_atom_dig, ptr %call7.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %lcd_ss_id to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv104, ptr %lcd_ss_id, align 8
  %native_mode105 = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 11
  %85 = call ptr @memcpy(ptr %native_mode105, ptr %native_mode, i32 112)
  %86 = and i32 %8, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %86)
  %cmp = icmp eq i32 %86, 512
  %. = zext i1 %cmp to i8
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %., ptr %call7.i.i, align 8
  %usModePatchTableOffset = getelementptr inbounds %struct._ATOM_LVDS_INFO, ptr %add.ptr, i32 0, i32 2
  %88 = ptrtoint ptr %usModePatchTableOffset to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %usModePatchTableOffset, align 1
  %90 = call i16 @llvm.bswap.i16(i16 %89)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool111.not = icmp eq i16 %89, 0
  br i1 %tobool111.not, label %if.end98.cleanup_crit_edge, label %if.then112

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then112:                                       ; preds = %if.end98
  %91 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp114 = icmp eq i8 %92, 1
  br i1 %cmp114, label %land.lhs.true, label %if.then112.if.else125_crit_edge

if.then112.if.else125_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else125

land.lhs.true:                                    ; preds = %if.then112
  %93 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp117 = icmp ult i8 %94, 2
  br i1 %cmp117, label %if.then119, label %land.lhs.true.if.else125_crit_edge

land.lhs.true.if.else125_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else125

if.then119:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mode_info2, align 4
  %bios121 = getelementptr inbounds %struct.atom_context, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %bios121 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bios121, align 4
  br label %if.end133

if.else125:                                       ; preds = %land.lhs.true.if.else125_crit_edge, %if.then112.if.else125_crit_edge
  %99 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mode_info2, align 4
  %bios127 = getelementptr inbounds %struct.atom_context, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %bios127 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bios127, align 4
  %103 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %data_offset, align 2
  %conv128 = zext i16 %104 to i32
  %add.ptr129 = getelementptr i8, ptr %102, i32 %conv128
  br label %if.end133

if.end133:                                        ; preds = %if.else125, %if.then119
  %add.ptr129.sink = phi ptr [ %add.ptr129, %if.else125 ], [ %98, %if.then119 ]
  %conv131 = zext i16 %90 to i32
  %add.ptr132 = getelementptr i8, ptr %add.ptr129.sink, i32 %conv131
  %bios_hardcoded_edid = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 16
  %bios_hardcoded_edid_size = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44, i32 17
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end133
  %record.1 = phi ptr [ %add.ptr132, %if.end133 ], [ %add.ptr179, %sw.epilog ]
  %105 = ptrtoint ptr %record.1 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %record.1, align 1
  %107 = zext i8 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %106, label %sw.epilog.thread [
    i8 -1, label %while.cond.cleanup_crit_edge
    i8 1, label %while.cond.sw.epilog_crit_edge
    i8 2, label %sw.bb139
    i8 3, label %sw.bb141
    i8 4, label %sw.bb143
    i8 5, label %sw.bb174
  ]

while.cond.sw.epilog_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb139:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb141:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb143:                                         ; preds = %while.cond
  %ucFakeEDIDLength = getelementptr inbounds %struct._ATOM_FAKE_EDID_PATCH_RECORD, ptr %record.1, i32 0, i32 1
  %108 = ptrtoint ptr %ucFakeEDIDLength to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %ucFakeEDIDLength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool144.not = icmp eq i8 %109, 0
  br i1 %tobool144.not, label %sw.bb143.if.end162_crit_edge, label %if.then145

sw.bb143.if.end162_crit_edge:                     ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then145:                                       ; preds = %sw.bb143
  %110 = call i8 @llvm.umax.i8(i8 %109, i8 -128)
  %cond = zext i8 %110 to i32
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3264) #16
  %tobool151.not = icmp eq ptr %call9.i, null
  br i1 %tobool151.not, label %if.then145.if.end162_crit_edge, label %if.then152

if.then145.if.end162_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end162

if.then152:                                       ; preds = %if.then145
  %ucFakeEDIDString = getelementptr inbounds %struct._ATOM_FAKE_EDID_PATCH_RECORD, ptr %record.1, i32 0, i32 2
  %111 = ptrtoint ptr %ucFakeEDIDLength to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ucFakeEDIDLength, align 1
  %conv154 = zext i8 %112 to i32
  %113 = call ptr @memcpy(ptr %call9.i, ptr %ucFakeEDIDString, i32 %conv154)
  %call155 = call zeroext i1 @drm_edid_is_valid(ptr noundef nonnull %call9.i) #11
  br i1 %call155, label %if.then156, label %if.else159

if.then156:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %bios_hardcoded_edid to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call9.i, ptr %bios_hardcoded_edid, align 4
  %115 = ptrtoint ptr %bios_hardcoded_edid_size to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond, ptr %bios_hardcoded_edid_size, align 4
  br label %if.end162

if.else159:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %if.end162

if.end162:                                        ; preds = %if.else159, %if.then156, %if.then145.if.end162_crit_edge, %sw.bb143.if.end162_crit_edge
  %116 = ptrtoint ptr %ucFakeEDIDLength to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ucFakeEDIDLength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool165.not = icmp eq i8 %117, 0
  %conv164 = zext i8 %117 to i32
  %add169 = add nuw nsw i32 %conv164, 2
  %cond172 = select i1 %tobool165.not, i32 3, i32 %add169
  br label %sw.epilog

sw.bb174:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %usHSize = getelementptr inbounds %struct._ATOM_PANEL_RESOLUTION_PATCH_RECORD, ptr %record.1, i32 0, i32 1
  %118 = ptrtoint ptr %usHSize to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %usHSize, align 1
  %120 = ptrtoint ptr %width_mm to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %width_mm, align 2
  %usVSize = getelementptr inbounds %struct._ATOM_PANEL_RESOLUTION_PATCH_RECORD, ptr %record.1, i32 0, i32 2
  %121 = ptrtoint ptr %usVSize to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %usVSize, align 1
  %123 = ptrtoint ptr %height_mm to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %height_mm, align 8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %conv134 = zext i8 %106 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %conv134) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb174, %if.end162, %sw.bb141, %sw.bb139, %while.cond.sw.epilog_crit_edge
  %.sink = phi i32 [ 5, %sw.bb174 ], [ %cond172, %if.end162 ], [ 3, %sw.bb141 ], [ 2, %sw.bb139 ], [ 5, %while.cond.sw.epilog_crit_edge ]
  %add.ptr179 = getelementptr i8, ptr %record.1, i32 %.sink
  br label %while.cond

cleanup:                                          ; preds = %sw.epilog.thread, %while.cond.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call7.i.i, %if.end98.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %sw.epilog.thread ], [ %call7.i.i, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @radeon_atombios_get_primary_dac_info(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mode_info2 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %5 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %7 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info2, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %8, i32 noundef 16, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info2, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 4) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %ucDAC1_BG_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 1
  %16 = ptrtoint ptr %ucDAC1_BG_Adjustment to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucDAC1_BG_Adjustment, align 1
  %ucDAC1_DAC_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 2
  %18 = ptrtoint ptr %ucDAC1_DAC_Adjustment to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucDAC1_DAC_Adjustment, align 1
  %conv6 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv6, 8
  %conv7 = zext i8 %19 to i32
  %or = or i32 %shl, %conv7
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call7.i.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atom_get_tv_timings(ptr nocapture noundef readonly %rdev, i32 noundef %index, ptr noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %4, i32 noundef 8, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %crev, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %6, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb82
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp = icmp sgt i32 %index, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %8 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios, align 4
  %12 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_offset, align 2
  %conv3 = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv3
  %aModeTimings = getelementptr inbounds %struct._ATOM_ANALOG_TV_INFO, ptr %add.ptr, i32 0, i32 5
  %arrayidx = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %17 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %crtc_htotal, align 2
  %usCRTC_H_Disp = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 1
  %18 = ptrtoint ptr %usCRTC_H_Disp to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %usCRTC_H_Disp, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %21 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %crtc_hdisplay, align 4
  %usCRTC_H_SyncStart = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 2
  %22 = ptrtoint ptr %usCRTC_H_SyncStart to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usCRTC_H_SyncStart, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %25 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %crtc_hsync_start, align 2
  %26 = ptrtoint ptr %usCRTC_H_SyncStart to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usCRTC_H_SyncStart, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %usCRTC_H_SyncWidth = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 3
  %29 = ptrtoint ptr %usCRTC_H_SyncWidth to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usCRTC_H_SyncWidth, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %add = add i16 %31, %28
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %32 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %add, ptr %crtc_hsync_end, align 4
  %usCRTC_V_Total = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 4
  %33 = ptrtoint ptr %usCRTC_V_Total to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %usCRTC_V_Total, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %crtc_vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %36 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %crtc_vtotal, align 4
  %usCRTC_V_Disp = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 5
  %37 = ptrtoint ptr %usCRTC_V_Disp to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %usCRTC_V_Disp, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %crtc_vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %40 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %crtc_vdisplay, align 2
  %usCRTC_V_SyncStart = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 6
  %41 = ptrtoint ptr %usCRTC_V_SyncStart to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %usCRTC_V_SyncStart, align 1
  %43 = call i16 @llvm.bswap.i16(i16 %42)
  %crtc_vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %44 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %crtc_vsync_start, align 4
  %45 = ptrtoint ptr %usCRTC_V_SyncStart to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %usCRTC_V_SyncStart, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %usCRTC_V_SyncWidth = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 7
  %48 = ptrtoint ptr %usCRTC_V_SyncWidth to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %usCRTC_V_SyncWidth, align 1
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %add32 = add i16 %50, %47
  %crtc_vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %51 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %add32, ptr %crtc_vsync_end, align 2
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flags, align 4
  %susModeMiscInfo = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 9
  %53 = ptrtoint ptr %susModeMiscInfo to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %susModeMiscInfo, align 1
  %55 = call i16 @llvm.bswap.i16(i16 %54)
  %conv36 = zext i16 %55 to i32
  %and = shl nuw nsw i32 %conv36, 1
  %56 = and i32 %and, 8
  %and41 = and i32 %conv36, 2
  %57 = or i32 %and41, %56
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %flags, align 4
  %and48 = and i32 %conv36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end6.if.end53_crit_edge, label %if.then50

if.end6.if.end53_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then50:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags, align 4
  %or52 = or i32 %60, 64
  store i32 %or52, ptr %flags, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end6.if.end53_crit_edge
  %and55 = and i32 %conv36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end60_crit_edge, label %if.then57

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %or59 = or i32 %62, 16
  store i32 %or59, ptr %flags, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53.if.end60_crit_edge
  %and62 = and i32 %conv36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end67_crit_edge, label %if.then64

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags, align 4
  %or66 = or i32 %64, 32
  store i32 %or66, ptr %flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60.if.end67_crit_edge
  %usPixelClock = getelementptr [2 x %struct._ATOM_MODE_TIMING], ptr %aModeTimings, i32 0, i32 %index, i32 8
  %65 = ptrtoint ptr %usPixelClock to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %usPixelClock, align 1
  %67 = call i16 @llvm.bswap.i16(i16 %66)
  %conv70 = zext i16 %67 to i32
  %mul = mul nuw nsw i32 %conv70, 10
  %68 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul, ptr %mode, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %69 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul, ptr %crtc_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %index)
  %cmp71 = icmp eq i32 %index, 1
  br i1 %cmp71, label %if.then73, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then73:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i16 %16, -1
  %70 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %sub, ptr %crtc_htotal, align 2
  %sub79 = add i16 %35, -1
  %71 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %sub79, ptr %crtc_vtotal, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %cmp87 = icmp sgt i32 %index, 2
  br i1 %cmp87, label %sw.bb82.cleanup_crit_edge, label %if.end90

sw.bb82.cleanup_crit_edge:                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end90:                                         ; preds = %sw.bb82
  %72 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mode_info1, align 4
  %bios84 = getelementptr inbounds %struct.atom_context, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %bios84 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bios84, align 4
  %76 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data_offset, align 2
  %conv85 = zext i16 %77 to i32
  %add.ptr86 = getelementptr i8, ptr %75, i32 %conv85
  %aModeTimings91 = getelementptr inbounds %struct._ATOM_ANALOG_TV_INFO_V1_2, ptr %add.ptr86, i32 0, i32 5
  %arrayidx92 = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index
  %usHActive = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 1
  %78 = ptrtoint ptr %usHActive to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %usHActive, align 1
  %80 = call i16 @llvm.bswap.i16(i16 %79)
  %usHBlanking_Time = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 2
  %81 = ptrtoint ptr %usHBlanking_Time to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %usHBlanking_Time, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82)
  %add95 = add i16 %83, %80
  %crtc_htotal97 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %84 = ptrtoint ptr %crtc_htotal97 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %add95, ptr %crtc_htotal97, align 2
  %85 = ptrtoint ptr %usHActive to i32
  call void @__asan_loadN_noabort(i32 %85, i32 2)
  %86 = load i16, ptr %usHActive, align 1
  %87 = call i16 @llvm.bswap.i16(i16 %86)
  %crtc_hdisplay99 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %88 = ptrtoint ptr %crtc_hdisplay99 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %crtc_hdisplay99, align 4
  %89 = ptrtoint ptr %usHActive to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %usHActive, align 1
  %91 = call i16 @llvm.bswap.i16(i16 %90)
  %usHSyncOffset = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 5
  %92 = ptrtoint ptr %usHSyncOffset to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %usHSyncOffset, align 1
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %add103 = add i16 %94, %91
  %crtc_hsync_start105 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %95 = ptrtoint ptr %crtc_hsync_start105 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %add103, ptr %crtc_hsync_start105, align 2
  %usHSyncWidth = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 6
  %96 = ptrtoint ptr %usHSyncWidth to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %usHSyncWidth, align 1
  %98 = call i16 @llvm.bswap.i16(i16 %97)
  %add109 = add i16 %98, %add103
  %crtc_hsync_end111 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %99 = ptrtoint ptr %crtc_hsync_end111 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %add109, ptr %crtc_hsync_end111, align 4
  %usVActive = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 3
  %100 = ptrtoint ptr %usVActive to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %usVActive, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101)
  %usVBlanking_Time = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 4
  %103 = ptrtoint ptr %usVBlanking_Time to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %usVBlanking_Time, align 1
  %105 = call i16 @llvm.bswap.i16(i16 %104)
  %add114 = add i16 %105, %102
  %crtc_vtotal116 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %106 = ptrtoint ptr %crtc_vtotal116 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %add114, ptr %crtc_vtotal116, align 4
  %107 = ptrtoint ptr %usVActive to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %usVActive, align 1
  %109 = call i16 @llvm.bswap.i16(i16 %108)
  %crtc_vdisplay118 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %110 = ptrtoint ptr %crtc_vdisplay118 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %crtc_vdisplay118, align 2
  %111 = ptrtoint ptr %usVActive to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %usVActive, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112)
  %usVSyncOffset = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 7
  %114 = ptrtoint ptr %usVSyncOffset to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %usVSyncOffset, align 1
  %116 = call i16 @llvm.bswap.i16(i16 %115)
  %add122 = add i16 %116, %113
  %crtc_vsync_start124 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %117 = ptrtoint ptr %crtc_vsync_start124 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %add122, ptr %crtc_vsync_start124, align 4
  %usVSyncWidth = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 8
  %118 = ptrtoint ptr %usVSyncWidth to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %usVSyncWidth, align 1
  %120 = call i16 @llvm.bswap.i16(i16 %119)
  %add128 = add i16 %120, %add122
  %crtc_vsync_end130 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %121 = ptrtoint ptr %crtc_vsync_end130 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %add128, ptr %crtc_vsync_end130, align 2
  %flags131 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %122 = ptrtoint ptr %flags131 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %flags131, align 4
  %susModeMiscInfo132 = getelementptr [3 x %struct._ATOM_DTD_FORMAT], ptr %aModeTimings91, i32 0, i32 %index, i32 13
  %123 = ptrtoint ptr %susModeMiscInfo132 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %susModeMiscInfo132, align 1
  %125 = call i16 @llvm.bswap.i16(i16 %124)
  %conv133 = zext i16 %125 to i32
  %and134 = shl nuw nsw i32 %conv133, 1
  %126 = and i32 %and134, 8
  %and141 = and i32 %conv133, 2
  %127 = or i32 %and141, %126
  %128 = ptrtoint ptr %flags131 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %flags131, align 4
  %and148 = and i32 %conv133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end90.if.end153_crit_edge, label %if.then150

if.end90.if.end153_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then150:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %flags131 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags131, align 4
  %or152 = or i32 %130, 64
  store i32 %or152, ptr %flags131, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.end90.if.end153_crit_edge
  %and155 = and i32 %conv133, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end153.if.end160_crit_edge, label %if.then157

if.end153.if.end160_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %flags131 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags131, align 4
  %or159 = or i32 %132, 16
  store i32 %or159, ptr %flags131, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end153.if.end160_crit_edge
  %and162 = and i32 %conv133, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end160.if.end167_crit_edge, label %if.then164

if.end160.if.end167_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %133 = ptrtoint ptr %flags131 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flags131, align 4
  %or166 = or i32 %134, 32
  store i32 %or166, ptr %flags131, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.end160.if.end167_crit_edge
  %135 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %arrayidx92, align 1
  %137 = call i16 @llvm.bswap.i16(i16 %136)
  %conv168 = zext i16 %137 to i32
  %mul169 = mul nuw nsw i32 %conv168, 10
  %138 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %mul169, ptr %mode, align 4
  %crtc_clock171 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %139 = ptrtoint ptr %crtc_clock171 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mul169, ptr %crtc_clock171, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %sw.bb82.cleanup_crit_edge, %if.then73, %if.end67.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb82.cleanup_crit_edge ], [ true, %if.end67.cleanup_crit_edge ], [ true, %if.then73 ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end167 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atombios_get_tv_info(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %4, i32 noundef 8, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
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
  %ucTV_BootUpDefaultStandard = getelementptr inbounds %struct._ATOM_ANALOG_TV_INFO, ptr %add.ptr, i32 0, i32 2
  %11 = ptrtoint ptr %ucTV_BootUpDefaultStandard to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucTV_BootUpDefaultStandard, align 1
  %switch.tableidx = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %13 = icmp ult i8 %switch.tableidx, 8
  br i1 %13, label %switch.lookup, label %if.then.if.end.sink.split_crit_edge

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.radeon_atombios_get_tv_info, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %16 = sext i8 %switch.tableidx to i32
  %switch.gep12 = getelementptr inbounds [8 x i32], ptr @switch.table.radeon_atombios_get_tv_info.97, i32 0, i32 %16
  %17 = ptrtoint ptr %switch.gep12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load13 = load i32, ptr %switch.gep12, align 4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %switch.lookup, %if.then.if.end.sink.split_crit_edge
  %.str.9.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %if.then.if.end.sink.split_crit_edge ]
  %tv_std.0.ph = phi i32 [ %switch.load13, %switch.lookup ], [ 0, %if.then.if.end.sink.split_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.9.sink) #11
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %tv_std.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %tv_std.0.ph, %if.end.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret i32 %tv_std.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @radeon_atombios_get_tv_dac_info(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mode_info2 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %4 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %5 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %7 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info2, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %8, i32 noundef 16, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info2, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 184) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %ucDAC2_CRT2_BG_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 4
  %16 = ptrtoint ptr %ucDAC2_CRT2_BG_Adjustment to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucDAC2_CRT2_BG_Adjustment, align 1
  %ucDAC2_CRT2_DAC_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 5
  %18 = ptrtoint ptr %ucDAC2_CRT2_DAC_Adjustment to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucDAC2_CRT2_DAC_Adjustment, align 1
  %conv6 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv6, 16
  %conv7 = zext i8 %19 to i32
  %shl8 = shl nuw nsw i32 %conv7, 20
  %or = or i32 %shl8, %shl
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %call7.i.i, align 8
  %ucDAC2_PAL_BG_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 19
  %21 = ptrtoint ptr %ucDAC2_PAL_BG_Adjustment to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucDAC2_PAL_BG_Adjustment, align 1
  %ucDAC2_PAL_DAC_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 20
  %23 = ptrtoint ptr %ucDAC2_PAL_DAC_Adjustment to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucDAC2_PAL_DAC_Adjustment, align 1
  %conv9 = zext i8 %22 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %conv11 = zext i8 %24 to i32
  %shl12 = shl nuw nsw i32 %conv11, 20
  %or13 = or i32 %shl12, %shl10
  %pal_tvdac_adj = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %pal_tvdac_adj to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or13, ptr %pal_tvdac_adj, align 8
  %ucDAC2_NTSC_BG_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 9
  %26 = ptrtoint ptr %ucDAC2_NTSC_BG_Adjustment to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucDAC2_NTSC_BG_Adjustment, align 1
  %ucDAC2_NTSC_DAC_Adjustment = getelementptr inbounds %struct._COMPASSIONATE_DATA, ptr %add.ptr, i32 0, i32 10
  %28 = ptrtoint ptr %ucDAC2_NTSC_DAC_Adjustment to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucDAC2_NTSC_DAC_Adjustment, align 1
  %conv14 = zext i8 %27 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %conv16 = zext i8 %29 to i32
  %shl17 = shl nuw nsw i32 %conv16, 20
  %or18 = or i32 %shl17, %shl15
  %ntsc_tvdac_adj = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %ntsc_tvdac_adj to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or18, ptr %ntsc_tvdac_adj, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #11
  %31 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %32 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %33 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  %34 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mode_info2, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %35, i32 noundef 8, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #11
  br i1 %call.i, label %if.then.i, label %if.end.radeon_atombios_get_tv_info.exit_crit_edge

if.end.radeon_atombios_get_tv_info.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_get_tv_info.exit

if.then.i:                                        ; preds = %if.end
  %36 = ptrtoint ptr %mode_info2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mode_info2, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bios.i, align 4
  %40 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %41 to i32
  %add.ptr.i = getelementptr i8, ptr %39, i32 %conv.i
  %ucTV_BootUpDefaultStandard.i = getelementptr inbounds %struct._ATOM_ANALOG_TV_INFO, ptr %add.ptr.i, i32 0, i32 2
  %42 = ptrtoint ptr %ucTV_BootUpDefaultStandard.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ucTV_BootUpDefaultStandard.i, align 1
  %switch.tableidx = add i8 %43, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %44 = icmp ult i8 %switch.tableidx, 8
  br i1 %44, label %switch.lookup, label %if.then.i.if.end.sink.split.i_crit_edge

if.then.i.if.end.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.sink.split.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.radeon_atombios_get_tv_dac_info, i32 0, i32 %45
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %47 = sext i8 %switch.tableidx to i32
  %switch.gep47 = getelementptr inbounds [8 x i32], ptr @switch.table.radeon_atombios_get_tv_dac_info.98, i32 0, i32 %47
  %48 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %switch.lookup, %if.then.i.if.end.sink.split.i_crit_edge
  %.str.9.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %if.then.i.if.end.sink.split.i_crit_edge ]
  %tv_std.0.ph.i = phi i32 [ %switch.load48, %switch.lookup ], [ 0, %if.then.i.if.end.sink.split.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.9.sink.i) #11
  br label %radeon_atombios_get_tv_info.exit

radeon_atombios_get_tv_info.exit:                 ; preds = %if.end.sink.split.i, %if.end.radeon_atombios_get_tv_info.exit_crit_edge
  %tv_std.0.i = phi i32 [ 0, %if.end.radeon_atombios_get_tv_info.exit_crit_edge ], [ %tv_std.0.ph.i, %if.end.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11
  %tv_std = getelementptr inbounds %struct.radeon_encoder_tv_dac, ptr %call7.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %tv_std to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %tv_std.0.i, ptr %tv_std, align 8
  br label %cleanup

cleanup:                                          ; preds = %radeon_atombios_get_tv_info.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call7.i.i, %radeon_atombios_get_tv_info.exit ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_get_default_voltages(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %vddc, ptr nocapture noundef writeonly %vddci, ptr nocapture noundef writeonly %mvdd) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  %3 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %vddc, align 2
  %4 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %vddci, align 2
  %5 = ptrtoint ptr %mvdd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %mvdd, align 2
  %6 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %7, i32 noundef 4, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info1, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios, align 4
  %12 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv
  %usBootUpVDDCVoltage = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr, i32 0, i32 13
  %14 = ptrtoint ptr %usBootUpVDDCVoltage to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usBootUpVDDCVoltage, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %17 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vddc, align 2
  %18 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp = icmp eq i8 %19, 2
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then
  %20 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp6 = icmp ugt i8 %21, 1
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %usBootUpVDDCIVoltage = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %add.ptr, i32 0, i32 25
  %22 = ptrtoint ptr %usBootUpVDDCIVoltage to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usBootUpVDDCIVoltage, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vddci, align 2
  %usBootUpMVDDCVoltage = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %add.ptr, i32 0, i32 32
  %26 = ptrtoint ptr %usBootUpMVDDCVoltage to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usBootUpMVDDCVoltage, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27)
  %29 = ptrtoint ptr %mvdd to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %mvdd, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_get_power_modes(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i166 = alloca i16, align 2
  %frev.i167 = alloca i8, align 1
  %crev.i168 = alloca i8, align 1
  %data_offset.i129 = alloca i16, align 2
  %frev.i130 = alloca i8, align 1
  %crev.i131 = alloca i8, align 1
  %data_offset.i751.i = alloca i16, align 2
  %size.i752.i = alloca i16, align 2
  %data_offset.i716.i = alloca i16, align 2
  %size.i717.i = alloca i16, align 2
  %data_offset.i.i = alloca i16, align 2
  %size.i.i = alloca i16, align 2
  %i2c_bus.i = alloca %struct.radeon_i2c_bus_rec, align 4
  %data_offset.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %tmp13.i = alloca %struct.radeon_i2c_bus_rec, align 4
  %info.i = alloca %struct.i2c_board_info, align 4
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %default_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %3 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %default_power_state_index, align 4
  %4 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frev, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %7, label %if.then.if.then8_crit_edge [
    i8 1, label %if.then.sw.bb_crit_edge
    i8 2, label %if.then.sw.bb_crit_edge265
    i8 3, label %if.then.sw.bb_crit_edge266
    i8 4, label %if.then.sw.bb3_crit_edge
    i8 5, label %if.then.sw.bb3_crit_edge267
    i8 6, label %sw.bb5
  ]

if.then.sw.bb3_crit_edge267:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

if.then.sw.bb3_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

if.then.sw.bb_crit_edge266:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.sw.bb_crit_edge265:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge265, %if.then.sw.bb_crit_edge266
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %i2c_bus.i) #11
  %9 = call ptr @memset(ptr %i2c_bus.i, i32 255, i32 76)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #11
  %10 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %11 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %12 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  %13 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode_info1, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %14, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #11
  br i1 %call.i, label %if.end.i, label %sw.bb.radeon_atombios_parse_power_table_1_3.exit_crit_edge

sw.bb.radeon_atombios_parse_power_table_1_3.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_1_3.exit

if.end.i:                                         ; preds = %sw.bb
  %15 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mode_info1, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bios.i, align 4
  %19 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %20 to i32
  %add.ptr.i = getelementptr i8, ptr %18, i32 %conv.i
  %ucOverdriveThermalController.i = getelementptr inbounds %struct._ATOM_POWERPLAY_INFO, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %ucOverdriveThermalController.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucOverdriveThermalController.i, align 1
  %23 = add i8 %22, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %23)
  %24 = icmp ult i8 %23, 7
  br i1 %24, label %do.end.i, label %if.end.i.if.end31.i_crit_edge

if.end.i.if.end31.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

do.end.i:                                         ; preds = %if.end.i
  %conv3.i = zext i8 %22 to i32
  %arrayidx.i = getelementptr [8 x ptr], ptr @thermal_controller_names, i32 0, i32 %conv3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %ucOverdriveControllerAddress.i = getelementptr inbounds %struct._ATOM_POWERPLAY_INFO, ptr %add.ptr.i, i32 0, i32 4
  %27 = ptrtoint ptr %ucOverdriveControllerAddress.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ucOverdriveControllerAddress.i, align 1
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i32
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %26, i32 noundef %30) #15
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tmp13.i) #11
  %ucOverdriveI2cLine.i = getelementptr inbounds %struct._ATOM_POWERPLAY_INFO, ptr %add.ptr.i, i32 0, i32 2
  %31 = ptrtoint ptr %ucOverdriveI2cLine.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucOverdriveI2cLine.i, align 1
  call fastcc void @radeon_lookup_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %tmp13.i, ptr noundef %rdev, i8 noundef zeroext %32) #11
  %33 = call ptr @memcpy(ptr %i2c_bus.i, ptr %tmp13.i, i32 76)
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tmp13.i) #11
  %call14.i = call ptr @radeon_i2c_lookup(ptr noundef %rdev, ptr noundef nonnull %i2c_bus.i) #11
  %i2c_bus15.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 33
  %34 = ptrtoint ptr %i2c_bus15.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14.i, ptr %i2c_bus15.i, align 8
  %tobool.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i, label %do.end.i.if.end31.i_crit_edge, label %if.then18.i

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #11
  %35 = call ptr @memset(ptr %info.i, i32 0, i32 56)
  %36 = ptrtoint ptr %ucOverdriveThermalController.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucOverdriveThermalController.i, align 1
  %idxprom20.i = zext i8 %37 to i32
  %arrayidx21.i = getelementptr [8 x ptr], ptr @thermal_controller_names, i32 0, i32 %idxprom20.i
  %38 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx21.i, align 4
  %40 = ptrtoint ptr %ucOverdriveControllerAddress.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucOverdriveControllerAddress.i, align 1
  %42 = lshr i8 %41, 1
  %conv25.i = zext i8 %42 to i16
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 2
  %43 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv25.i, ptr %addr.i, align 2
  %call26.i = call i32 @strlcpy(ptr noundef nonnull %info.i, ptr noundef %39, i32 noundef 20) #11
  %44 = ptrtoint ptr %i2c_bus15.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_bus15.i, align 8
  %call29.i = call ptr @i2c_new_client_device(ptr noundef %45, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then18.i, %do.end.i.if.end31.i_crit_edge, %if.end.i.if.end31.i_crit_edge
  %ucNumOfPowerModeEntries.i = getelementptr inbounds %struct._ATOM_POWERPLAY_INFO, ptr %add.ptr.i, i32 0, i32 6
  %46 = ptrtoint ptr %ucNumOfPowerModeEntries.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ucNumOfPowerModeEntries.i, align 1
  %48 = call i8 @llvm.umin.i8(i8 %47, i8 8) #11
  %49 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp37.i = icmp eq i8 %48, 0
  br i1 %cmp37.i, label %if.end31.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, label %if.end7.i.i.i

if.end31.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_1_3.exit

if.end7.i.i.i:                                    ; preds = %if.end31.i
  %50 = shl nuw nsw i32 %49, 5
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3520) #16
  %power_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %51 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call8.i.i.i, ptr %power_state.i, align 4
  %tobool45.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool45.not.i, label %if.end7.i.i.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, label %for.body.lr.ph.i

if.end7.i.i.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_1_3.exit

for.body.lr.ph.i:                                 ; preds = %if.end7.i.i.i
  %asPowerPlayInfo303.i = getelementptr inbounds %struct._ATOM_POWERPLAY_INFO_V3, ptr %add.ptr.i, i32 0, i32 7
  %smax.i = call i32 @llvm.smax.i32(i32 %49, i32 1) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %state_index.0810.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %state_index.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0805.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc443.i, %for.inc.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %power_state.i, align 4
  %clock_info.i = getelementptr %struct.radeon_power_state, ptr %53, i32 %state_index.0810.i, i32 1
  %54 = ptrtoint ptr %clock_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clock_info.i, align 4
  %tobool53.not.i = icmp eq ptr %55, null
  br i1 %tobool53.not.i, label %if.then54.i, label %for.body.i.if.end60.i_crit_edge

for.body.i.if.end60.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60.i

if.then54.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 44) #14
  %57 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %power_state.i, align 4
  %clock_info59.i = getelementptr %struct.radeon_power_state, ptr %58, i32 %state_index.0810.i, i32 1
  %59 = ptrtoint ptr %clock_info59.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %clock_info59.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then54.i, %for.body.i.if.end60.i_crit_edge
  %60 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %power_state.i, align 4
  %clock_info64.i = getelementptr %struct.radeon_power_state, ptr %61, i32 %state_index.0810.i, i32 1
  %62 = ptrtoint ptr %clock_info64.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %clock_info64.i, align 4
  %tobool65.not.i = icmp eq ptr %63, null
  br i1 %tobool65.not.i, label %if.end60.i.out.i_crit_edge, label %if.end67.i

if.end60.i.out.i_crit_edge:                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end67.i:                                       ; preds = %if.end60.i
  %num_clock_modes.i = getelementptr %struct.radeon_power_state, ptr %61, i32 %state_index.0810.i, i32 2
  %64 = ptrtoint ptr %num_clock_modes.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %num_clock_modes.i, align 4
  %65 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %power_state.i, align 4
  %clock_info74.i = getelementptr %struct.radeon_power_state, ptr %66, i32 %state_index.0810.i, i32 1
  %67 = ptrtoint ptr %clock_info74.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clock_info74.i, align 4
  %voltage.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %voltage.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %voltage.i, align 4
  %70 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %frev.i, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %71, label %if.end67.i.for.inc.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb182.i
    i8 3, label %sw.bb302.i
  ]

if.end67.i.for.inc.i_crit_edge:                   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.end67.i
  %arrayidx78.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i
  %usMemoryClock.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 4
  %73 = ptrtoint ptr %usMemoryClock.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %usMemoryClock.i, align 1
  %75 = call i16 @llvm.bswap.i16(i16 %74) #11
  %conv79.i = zext i16 %75 to i32
  %76 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %power_state.i, align 4
  %clock_info83.i = getelementptr %struct.radeon_power_state, ptr %77, i32 %state_index.0810.i, i32 1
  %78 = ptrtoint ptr %clock_info83.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clock_info83.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv79.i, ptr %79, align 4
  %usEngineClock.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 3
  %81 = ptrtoint ptr %usEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %usEngineClock.i, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82) #11
  %conv87.i = zext i16 %83 to i32
  %84 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %power_state.i, align 4
  %clock_info91.i = getelementptr %struct.radeon_power_state, ptr %85, i32 %state_index.0810.i, i32 1
  %86 = ptrtoint ptr %clock_info91.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clock_info91.i, align 4
  %sclk.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %sclk.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv87.i, ptr %sclk.i, align 4
  %89 = load ptr, ptr %power_state.i, align 4
  %clock_info96.i = getelementptr %struct.radeon_power_state, ptr %89, i32 %state_index.0810.i, i32 1
  %90 = ptrtoint ptr %clock_info96.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clock_info96.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp99.i = icmp eq i32 %93, 0
  br i1 %cmp99.i, label %sw.bb.i.for.inc.i_crit_edge, label %lor.lhs.false.i

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %sclk106.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %91, i32 0, i32 1
  %94 = ptrtoint ptr %sclk106.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sclk106.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp107.i = icmp eq i32 %95, 0
  br i1 %cmp107.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end110.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end110.i:                                      ; preds = %lor.lhs.false.i
  %ucNumPciELanes.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 9
  %96 = ptrtoint ptr %ucNumPciELanes.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ucNumPciELanes.i, align 1
  %conv113.i = zext i8 %97 to i32
  %pcie_lanes.i = getelementptr %struct.radeon_power_state, ptr %89, i32 %state_index.0810.i, i32 7
  %98 = ptrtoint ptr %pcie_lanes.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv113.i, ptr %pcie_lanes.i, align 4
  %99 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %arrayidx78.i, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %100) #11
  %and121.i = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  %102 = and i32 %101, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %if.else157.i, label %if.then123.i

if.then123.i:                                     ; preds = %if.end110.i
  %104 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %power_state.i, align 4
  %clock_info127.i = getelementptr %struct.radeon_power_state, ptr %105, i32 %state_index.0810.i, i32 1
  %106 = ptrtoint ptr %clock_info127.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %clock_info127.i, align 4
  %voltage129.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %voltage129.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %voltage129.i, align 4
  %109 = load ptr, ptr %power_state.i, align 4
  %clock_info134.i = getelementptr %struct.radeon_power_state, ptr %109, i32 %state_index.0810.i, i32 1
  %110 = ptrtoint ptr %clock_info134.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %clock_info134.i, align 4
  %gpio.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %111, i32 0, i32 2, i32 1
  %ucVoltageDropIndex.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 5
  %112 = ptrtoint ptr %ucVoltageDropIndex.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ucVoltageDropIndex.i, align 1
  %114 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mode_info1, align 4, !noalias !204
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i.i) #11, !noalias !204
  %116 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 -1, ptr %data_offset.i.i, align 2, !noalias !204, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i.i) #11, !noalias !204
  %117 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 -1, ptr %size.i.i, align 2, !noalias !204, !annotation !196
  %call.i.i = call zeroext i1 @atom_parse_data_header(ptr noundef %115, i32 noundef 12, ptr noundef nonnull %size.i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset.i.i) #11, !noalias !204
  br i1 %call.i.i, label %if.then.i.i, label %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge

if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge: ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit.i

if.then.i.i:                                      ; preds = %if.then123.i
  %118 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %size.i.i, align 2, !noalias !204
  %conv1.i.i = zext i16 %119 to i32
  %sub.i.i = add nsw i32 %conv1.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i)
  %cmp26.not.i.i = icmp ult i32 %sub.i.i, 4
  br i1 %cmp26.not.i.i, label %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge, label %for.body.preheader.i.i

if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %bios.i.i = getelementptr inbounds %struct.atom_context, ptr %115, i32 0, i32 3
  %120 = ptrtoint ptr %bios.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bios.i.i, align 4, !noalias !204
  %122 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %data_offset.i.i, align 2, !noalias !204
  %conv.i.i = zext i16 %123 to i32
  %add.ptr.i.i = getelementptr i8, ptr %121, i32 %conv.i.i
  %asGPIO_Pin.i.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr.i.i, i32 0, i32 1
  %div24.i.i = lshr i32 %sub.i.i, 2
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div24.i.i, i32 1) #11
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.028.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %pin.027.i.i = phi ptr [ %add.ptr15.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %asGPIO_Pin.i.i, %for.body.preheader.i.i ]
  %ucGPIO_ID.i.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %ucGPIO_ID.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ucGPIO_ID.i.i, align 1, !noalias !204
  call void @__sanitizer_cov_trace_cmp1(i8 %125, i8 %113)
  %cmp5.i.i = icmp eq i8 %125, %113
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %pin.027.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 2)
  %127 = load i16, ptr %pin.027.i.i, align 1, !noalias !204
  %128 = call i16 @llvm.bswap.i16(i16 %127) #11
  %conv10.i.i = zext i16 %128 to i32
  %mul.i.i = shl nuw nsw i32 %conv10.i.i, 2
  %ucGpioPinBitShift.i.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %ucGpioPinBitShift.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ucGpioPinBitShift.i.i, align 1, !noalias !204
  %conv11.i.i = zext i8 %130 to i32
  %shl.i.i = shl nuw i32 1, %conv11.i.i
  br label %radeon_atombios_lookup_gpio.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %add.ptr15.i.i = getelementptr i8, ptr %pin.027.i.i, i32 4
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit.i

radeon_atombios_lookup_gpio.exit.i:               ; preds = %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge, %if.then7.i.i, %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge, %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge
  %tmp137.sroa.0.1.i = phi i8 [ 0, %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ 1, %if.then7.i.i ], [ 0, %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ 0, %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ]
  %tmp137.sroa.5.1.i = phi i8 [ 0, %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ %113, %if.then7.i.i ], [ 0, %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ 0, %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ]
  %tmp137.sroa.6788.1.i = phi i32 [ 0, %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ %mul.i.i, %if.then7.i.i ], [ 0, %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ 0, %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ]
  %tmp137.sroa.7.1.i = phi i32 [ 0, %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ %shl.i.i, %if.then7.i.i ], [ 0, %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ 0, %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ]
  %tmp137.sroa.8.1.i = phi i32 [ 0, %if.then.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ %conv11.i.i, %if.then7.i.i ], [ 0, %if.then123.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ], [ 0, %if.end.i.i.radeon_atombios_lookup_gpio.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i.i) #11, !noalias !204
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i.i) #11, !noalias !204
  %131 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %tmp137.sroa.0.1.i, ptr %gpio.i, align 4
  %tmp137.sroa.5.0.gpio.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %111, i32 0, i32 2, i32 1, i32 1
  %132 = ptrtoint ptr %tmp137.sroa.5.0.gpio.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %tmp137.sroa.5.1.i, ptr %tmp137.sroa.5.0.gpio.sroa_idx.i, align 1
  %tmp137.sroa.6.0.gpio.sroa_idx.i = getelementptr inbounds i8, ptr %gpio.i, i32 2
  %133 = ptrtoint ptr %tmp137.sroa.6.0.gpio.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %tmp137.sroa.6.0.gpio.sroa_idx.i, align 2
  %tmp137.sroa.6788.0.gpio.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %111, i32 0, i32 2, i32 1, i32 2
  %134 = ptrtoint ptr %tmp137.sroa.6788.0.gpio.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %tmp137.sroa.6788.1.i, ptr %tmp137.sroa.6788.0.gpio.sroa_idx.i, align 4
  %tmp137.sroa.7.0.gpio.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %111, i32 0, i32 2, i32 1, i32 3
  %135 = ptrtoint ptr %tmp137.sroa.7.0.gpio.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %tmp137.sroa.7.1.i, ptr %tmp137.sroa.7.0.gpio.sroa_idx.i, align 4
  %tmp137.sroa.8.0.gpio.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %111, i32 0, i32 2, i32 1, i32 4
  %136 = ptrtoint ptr %tmp137.sroa.8.0.gpio.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %tmp137.sroa.8.1.i, ptr %tmp137.sroa.8.0.gpio.sroa_idx.i, align 4
  %137 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %power_state.i, align 4
  %clock_info152.i = getelementptr %struct.radeon_power_state, ptr %138, i32 %state_index.0810.i, i32 1
  %139 = ptrtoint ptr %clock_info152.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clock_info152.i, align 4
  %active_high155.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %140, i32 0, i32 2, i32 3
  br i1 %tobool122.not.i, label %if.else.i, label %if.then142.i

if.then142.i:                                     ; preds = %radeon_atombios_lookup_gpio.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %141 = ptrtoint ptr %active_high155.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 1, ptr %active_high155.i, align 4
  br label %if.end178.i

if.else.i:                                        ; preds = %radeon_atombios_lookup_gpio.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %active_high155.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %active_high155.i, align 4
  br label %if.end178.i

if.else157.i:                                     ; preds = %if.end110.i
  %and158.i = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158.i)
  %tobool159.not.i = icmp eq i32 %and158.i, 0
  br i1 %tobool159.not.i, label %if.else157.i.if.end178.i_crit_edge, label %if.then160.i

if.else157.i.if.end178.i_crit_edge:               ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178.i

if.then160.i:                                     ; preds = %if.else157.i
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %power_state.i, align 4
  %clock_info164.i = getelementptr %struct.radeon_power_state, ptr %144, i32 %state_index.0810.i, i32 1
  %145 = ptrtoint ptr %clock_info164.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %clock_info164.i, align 4
  %voltage166.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %voltage166.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %voltage166.i, align 4
  %ucVoltageDropIndex170.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 5
  %148 = ptrtoint ptr %ucVoltageDropIndex170.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ucVoltageDropIndex170.i, align 1
  %150 = load ptr, ptr %power_state.i, align 4
  %clock_info174.i = getelementptr %struct.radeon_power_state, ptr %150, i32 %state_index.0810.i, i32 1
  %151 = ptrtoint ptr %clock_info174.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %clock_info174.i, align 4
  %vddc_id.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %152, i32 0, i32 2, i32 4
  %153 = ptrtoint ptr %vddc_id.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %149, ptr %vddc_id.i, align 1
  br label %if.end178.i

if.end178.i:                                      ; preds = %if.then160.i, %if.else157.i.if.end178.i_crit_edge, %if.else.i, %if.then142.i
  %154 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %power_state.i, align 4
  %flags.i = getelementptr %struct.radeon_power_state, ptr %155, i32 %state_index.0810.i, i32 4
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 1, ptr %flags.i, align 4
  call fastcc void @radeon_atombios_parse_misc_flags_1_3(ptr noundef %rdev, i32 noundef %state_index.0810.i, i32 noundef %101, i32 noundef 0) #11
  %inc.i = add i32 %state_index.0810.i, 1
  br label %for.inc.i

sw.bb182.i:                                       ; preds = %if.end67.i
  %arrayidx184.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i
  %ulMemoryClock.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 3
  %157 = ptrtoint ptr %ulMemoryClock.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %ulMemoryClock.i, align 1
  %159 = call i32 @llvm.bswap.i32(i32 %158) #11
  %160 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %power_state.i, align 4
  %clock_info188.i = getelementptr %struct.radeon_power_state, ptr %161, i32 %state_index.0810.i, i32 1
  %162 = ptrtoint ptr %clock_info188.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %clock_info188.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %159, ptr %163, align 4
  %ulEngineClock.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 2
  %165 = ptrtoint ptr %ulEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %ulEngineClock.i, align 1
  %167 = call i32 @llvm.bswap.i32(i32 %166) #11
  %168 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %power_state.i, align 4
  %clock_info196.i = getelementptr %struct.radeon_power_state, ptr %169, i32 %state_index.0810.i, i32 1
  %170 = ptrtoint ptr %clock_info196.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %clock_info196.i, align 4
  %sclk198.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %sclk198.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %167, ptr %sclk198.i, align 4
  %173 = load ptr, ptr %power_state.i, align 4
  %clock_info202.i = getelementptr %struct.radeon_power_state, ptr %173, i32 %state_index.0810.i, i32 1
  %174 = ptrtoint ptr %clock_info202.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %clock_info202.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp205.i = icmp eq i32 %177, 0
  br i1 %cmp205.i, label %sw.bb182.i.for.inc.i_crit_edge, label %lor.lhs.false207.i

sw.bb182.i.for.inc.i_crit_edge:                   ; preds = %sw.bb182.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false207.i:                               ; preds = %sw.bb182.i
  %sclk213.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %175, i32 0, i32 1
  %178 = ptrtoint ptr %sclk213.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %sclk213.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp214.i = icmp eq i32 %179, 0
  br i1 %cmp214.i, label %lor.lhs.false207.i.for.inc.i_crit_edge, label %if.end217.i

lor.lhs.false207.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end217.i:                                      ; preds = %lor.lhs.false207.i
  %ucNumPciELanes220.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 8
  %180 = ptrtoint ptr %ucNumPciELanes220.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %ucNumPciELanes220.i, align 1
  %conv221.i = zext i8 %181 to i32
  %pcie_lanes225.i = getelementptr %struct.radeon_power_state, ptr %173, i32 %state_index.0810.i, i32 7
  %182 = ptrtoint ptr %pcie_lanes225.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv221.i, ptr %pcie_lanes225.i, align 4
  %183 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %arrayidx184.i, align 1
  %185 = call i32 @llvm.bswap.i32(i32 %184) #11
  %ulMiscInfo2.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 1
  %186 = ptrtoint ptr %ulMiscInfo2.i to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %ulMiscInfo2.i, align 1
  %188 = call i32 @llvm.bswap.i32(i32 %187) #11
  %and234.i = and i32 %185, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234.i)
  %tobool235.not.i = icmp eq i32 %and234.i, 0
  %189 = and i32 %185, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %if.else274.i, label %if.then236.i

if.then236.i:                                     ; preds = %if.end217.i
  %191 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %power_state.i, align 4
  %clock_info240.i = getelementptr %struct.radeon_power_state, ptr %192, i32 %state_index.0810.i, i32 1
  %193 = ptrtoint ptr %clock_info240.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %clock_info240.i, align 4
  %voltage242.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %voltage242.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 1, ptr %voltage242.i, align 4
  %196 = load ptr, ptr %power_state.i, align 4
  %clock_info247.i = getelementptr %struct.radeon_power_state, ptr %196, i32 %state_index.0810.i, i32 1
  %197 = ptrtoint ptr %clock_info247.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %clock_info247.i, align 4
  %gpio250.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %198, i32 0, i32 2, i32 1
  %ucVoltageDropIndex254.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 4
  %199 = ptrtoint ptr %ucVoltageDropIndex254.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %ucVoltageDropIndex254.i, align 1
  %201 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mode_info1, align 4, !noalias !207
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i716.i) #11, !noalias !207
  %203 = ptrtoint ptr %data_offset.i716.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -1, ptr %data_offset.i716.i, align 2, !noalias !207, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i717.i) #11, !noalias !207
  %204 = ptrtoint ptr %size.i717.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 -1, ptr %size.i717.i, align 2, !noalias !207, !annotation !196
  %call.i719.i = call zeroext i1 @atom_parse_data_header(ptr noundef %202, i32 noundef 12, ptr noundef nonnull %size.i717.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset.i716.i) #11, !noalias !207
  br i1 %call.i719.i, label %if.then.i723.i, label %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge

if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge: ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit750.i

if.then.i723.i:                                   ; preds = %if.then236.i
  %205 = ptrtoint ptr %size.i717.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %size.i717.i, align 2, !noalias !207
  %conv1.i720.i = zext i16 %206 to i32
  %sub.i721.i = add nsw i32 %conv1.i720.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i721.i)
  %cmp26.not.i722.i = icmp ult i32 %sub.i721.i, 4
  br i1 %cmp26.not.i722.i, label %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge, label %for.body.preheader.i730.i

if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge: ; preds = %if.then.i723.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit750.i

for.body.preheader.i730.i:                        ; preds = %if.then.i723.i
  %bios.i724.i = getelementptr inbounds %struct.atom_context, ptr %202, i32 0, i32 3
  %207 = ptrtoint ptr %bios.i724.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bios.i724.i, align 4, !noalias !207
  %209 = ptrtoint ptr %data_offset.i716.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %data_offset.i716.i, align 2, !noalias !207
  %conv.i725.i = zext i16 %210 to i32
  %add.ptr.i726.i = getelementptr i8, ptr %208, i32 %conv.i725.i
  %asGPIO_Pin.i727.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr.i726.i, i32 0, i32 1
  %div24.i728.i = lshr i32 %sub.i721.i, 2
  %umax.i729.i = call i32 @llvm.umax.i32(i32 %div24.i728.i, i32 1) #11
  br label %for.body.i735.i

for.body.i735.i:                                  ; preds = %if.end.i749.i.for.body.i735.i_crit_edge, %for.body.preheader.i730.i
  %i.028.i731.i = phi i32 [ %inc.i747.i, %if.end.i749.i.for.body.i735.i_crit_edge ], [ 0, %for.body.preheader.i730.i ]
  %pin.027.i732.i = phi ptr [ %add.ptr15.i746.i, %if.end.i749.i.for.body.i735.i_crit_edge ], [ %asGPIO_Pin.i727.i, %for.body.preheader.i730.i ]
  %ucGPIO_ID.i733.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i732.i, i32 0, i32 2
  %211 = ptrtoint ptr %ucGPIO_ID.i733.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %ucGPIO_ID.i733.i, align 1, !noalias !207
  call void @__sanitizer_cov_trace_cmp1(i8 %212, i8 %200)
  %cmp5.i734.i = icmp eq i8 %212, %200
  br i1 %cmp5.i734.i, label %if.then7.i745.i, label %if.end.i749.i

if.then7.i745.i:                                  ; preds = %for.body.i735.i
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %pin.027.i732.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 2)
  %214 = load i16, ptr %pin.027.i732.i, align 1, !noalias !207
  %215 = call i16 @llvm.bswap.i16(i16 %214) #11
  %conv10.i737.i = zext i16 %215 to i32
  %mul.i738.i = shl nuw nsw i32 %conv10.i737.i, 2
  %ucGpioPinBitShift.i740.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i732.i, i32 0, i32 1
  %216 = ptrtoint ptr %ucGpioPinBitShift.i740.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %ucGpioPinBitShift.i740.i, align 1, !noalias !207
  %conv11.i741.i = zext i8 %217 to i32
  %shl.i743.i = shl nuw i32 1, %conv11.i741.i
  br label %radeon_atombios_lookup_gpio.exit750.i

if.end.i749.i:                                    ; preds = %for.body.i735.i
  %add.ptr15.i746.i = getelementptr i8, ptr %pin.027.i732.i, i32 4
  %inc.i747.i = add nuw nsw i32 %i.028.i731.i, 1
  %exitcond.not.i748.i = icmp eq i32 %inc.i747.i, %umax.i729.i
  br i1 %exitcond.not.i748.i, label %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge, label %if.end.i749.i.for.body.i735.i_crit_edge

if.end.i749.i.for.body.i735.i_crit_edge:          ; preds = %if.end.i749.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i735.i

if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge: ; preds = %if.end.i749.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit750.i

radeon_atombios_lookup_gpio.exit750.i:            ; preds = %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge, %if.then7.i745.i, %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge, %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge
  %tmp251.sroa.0.1.i = phi i8 [ 0, %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ 1, %if.then7.i745.i ], [ 0, %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ 0, %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ]
  %tmp251.sroa.5.1.i = phi i8 [ 0, %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ %200, %if.then7.i745.i ], [ 0, %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ 0, %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ]
  %tmp251.sroa.6787.1.i = phi i32 [ 0, %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ %mul.i738.i, %if.then7.i745.i ], [ 0, %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ 0, %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ]
  %tmp251.sroa.7.1.i = phi i32 [ 0, %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ %shl.i743.i, %if.then7.i745.i ], [ 0, %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ 0, %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ]
  %tmp251.sroa.8.1.i = phi i32 [ 0, %if.then.i723.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ %conv11.i741.i, %if.then7.i745.i ], [ 0, %if.then236.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ], [ 0, %if.end.i749.i.radeon_atombios_lookup_gpio.exit750.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i717.i) #11, !noalias !207
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i716.i) #11, !noalias !207
  %218 = ptrtoint ptr %gpio250.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %tmp251.sroa.0.1.i, ptr %gpio250.i, align 4
  %tmp251.sroa.5.0.gpio250.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %198, i32 0, i32 2, i32 1, i32 1
  %219 = ptrtoint ptr %tmp251.sroa.5.0.gpio250.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %tmp251.sroa.5.1.i, ptr %tmp251.sroa.5.0.gpio250.sroa_idx.i, align 1
  %tmp251.sroa.6.0.gpio250.sroa_idx.i = getelementptr inbounds i8, ptr %gpio250.i, i32 2
  %220 = ptrtoint ptr %tmp251.sroa.6.0.gpio250.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %tmp251.sroa.6.0.gpio250.sroa_idx.i, align 2
  %tmp251.sroa.6787.0.gpio250.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %198, i32 0, i32 2, i32 1, i32 2
  %221 = ptrtoint ptr %tmp251.sroa.6787.0.gpio250.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %tmp251.sroa.6787.1.i, ptr %tmp251.sroa.6787.0.gpio250.sroa_idx.i, align 4
  %tmp251.sroa.7.0.gpio250.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %198, i32 0, i32 2, i32 1, i32 3
  %222 = ptrtoint ptr %tmp251.sroa.7.0.gpio250.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %tmp251.sroa.7.1.i, ptr %tmp251.sroa.7.0.gpio250.sroa_idx.i, align 4
  %tmp251.sroa.8.0.gpio250.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %198, i32 0, i32 2, i32 1, i32 4
  %223 = ptrtoint ptr %tmp251.sroa.8.0.gpio250.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %tmp251.sroa.8.1.i, ptr %tmp251.sroa.8.0.gpio250.sroa_idx.i, align 4
  %224 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %power_state.i, align 4
  %clock_info269.i = getelementptr %struct.radeon_power_state, ptr %225, i32 %state_index.0810.i, i32 1
  %226 = ptrtoint ptr %clock_info269.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %clock_info269.i, align 4
  %active_high272.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %227, i32 0, i32 2, i32 3
  br i1 %tobool235.not.i, label %if.else265.i, label %if.then257.i

if.then257.i:                                     ; preds = %radeon_atombios_lookup_gpio.exit750.i
  call void @__sanitizer_cov_trace_pc() #13
  %228 = ptrtoint ptr %active_high272.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 1, ptr %active_high272.i, align 4
  br label %if.end296.i

if.else265.i:                                     ; preds = %radeon_atombios_lookup_gpio.exit750.i
  call void @__sanitizer_cov_trace_pc() #13
  %229 = ptrtoint ptr %active_high272.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %active_high272.i, align 4
  br label %if.end296.i

if.else274.i:                                     ; preds = %if.end217.i
  %and275.i = and i32 %185, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275.i)
  %tobool276.not.i = icmp eq i32 %and275.i, 0
  br i1 %tobool276.not.i, label %if.else274.i.if.end296.i_crit_edge, label %if.then277.i

if.else274.i.if.end296.i_crit_edge:               ; preds = %if.else274.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end296.i

if.then277.i:                                     ; preds = %if.else274.i
  call void @__sanitizer_cov_trace_pc() #13
  %230 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %power_state.i, align 4
  %clock_info281.i = getelementptr %struct.radeon_power_state, ptr %231, i32 %state_index.0810.i, i32 1
  %232 = ptrtoint ptr %clock_info281.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %clock_info281.i, align 4
  %voltage283.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %voltage283.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 2, ptr %voltage283.i, align 4
  %ucVoltageDropIndex287.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V2], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 4
  %235 = ptrtoint ptr %ucVoltageDropIndex287.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %ucVoltageDropIndex287.i, align 1
  %237 = load ptr, ptr %power_state.i, align 4
  %clock_info291.i = getelementptr %struct.radeon_power_state, ptr %237, i32 %state_index.0810.i, i32 1
  %238 = ptrtoint ptr %clock_info291.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %clock_info291.i, align 4
  %vddc_id294.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %239, i32 0, i32 2, i32 4
  %240 = ptrtoint ptr %vddc_id294.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %236, ptr %vddc_id294.i, align 1
  br label %if.end296.i

if.end296.i:                                      ; preds = %if.then277.i, %if.else274.i.if.end296.i_crit_edge, %if.else265.i, %if.then257.i
  %241 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %power_state.i, align 4
  %flags300.i = getelementptr %struct.radeon_power_state, ptr %242, i32 %state_index.0810.i, i32 4
  %243 = ptrtoint ptr %flags300.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %flags300.i, align 4
  call fastcc void @radeon_atombios_parse_misc_flags_1_3(ptr noundef %rdev, i32 noundef %state_index.0810.i, i32 noundef %185, i32 noundef %188) #11
  %inc301.i = add i32 %state_index.0810.i, 1
  br label %for.inc.i

sw.bb302.i:                                       ; preds = %if.end67.i
  %arrayidx304.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i
  %ulMemoryClock305.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 3
  %244 = ptrtoint ptr %ulMemoryClock305.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %ulMemoryClock305.i, align 1
  %246 = call i32 @llvm.bswap.i32(i32 %245) #11
  %247 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %power_state.i, align 4
  %clock_info309.i = getelementptr %struct.radeon_power_state, ptr %248, i32 %state_index.0810.i, i32 1
  %249 = ptrtoint ptr %clock_info309.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %clock_info309.i, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %246, ptr %250, align 4
  %ulEngineClock314.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 2
  %252 = ptrtoint ptr %ulEngineClock314.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %253 = load i32, ptr %ulEngineClock314.i, align 1
  %254 = call i32 @llvm.bswap.i32(i32 %253) #11
  %255 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %power_state.i, align 4
  %clock_info318.i = getelementptr %struct.radeon_power_state, ptr %256, i32 %state_index.0810.i, i32 1
  %257 = ptrtoint ptr %clock_info318.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %clock_info318.i, align 4
  %sclk320.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %sclk320.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %254, ptr %sclk320.i, align 4
  %260 = load ptr, ptr %power_state.i, align 4
  %clock_info324.i = getelementptr %struct.radeon_power_state, ptr %260, i32 %state_index.0810.i, i32 1
  %261 = ptrtoint ptr %clock_info324.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %clock_info324.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp327.i = icmp eq i32 %264, 0
  br i1 %cmp327.i, label %sw.bb302.i.for.inc.i_crit_edge, label %lor.lhs.false329.i

sw.bb302.i.for.inc.i_crit_edge:                   ; preds = %sw.bb302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

lor.lhs.false329.i:                               ; preds = %sw.bb302.i
  %sclk335.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %262, i32 0, i32 1
  %265 = ptrtoint ptr %sclk335.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %sclk335.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %cmp336.i = icmp eq i32 %266, 0
  br i1 %cmp336.i, label %lor.lhs.false329.i.for.inc.i_crit_edge, label %if.end339.i

lor.lhs.false329.i.for.inc.i_crit_edge:           ; preds = %lor.lhs.false329.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end339.i:                                      ; preds = %lor.lhs.false329.i
  %ucNumPciELanes342.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 8
  %267 = ptrtoint ptr %ucNumPciELanes342.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %ucNumPciELanes342.i, align 1
  %conv343.i = zext i8 %268 to i32
  %pcie_lanes347.i = getelementptr %struct.radeon_power_state, ptr %260, i32 %state_index.0810.i, i32 7
  %269 = ptrtoint ptr %pcie_lanes347.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %conv343.i, ptr %pcie_lanes347.i, align 4
  %270 = ptrtoint ptr %arrayidx304.i to i32
  call void @__asan_loadN_noabort(i32 %270, i32 4)
  %271 = load i32, ptr %arrayidx304.i, align 1
  %272 = call i32 @llvm.bswap.i32(i32 %271) #11
  %ulMiscInfo2353.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 1
  %273 = ptrtoint ptr %ulMiscInfo2353.i to i32
  call void @__asan_loadN_noabort(i32 %273, i32 4)
  %274 = load i32, ptr %ulMiscInfo2353.i, align 1
  %275 = call i32 @llvm.bswap.i32(i32 %274) #11
  %and357.i = and i32 %272, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357.i)
  %tobool358.not.i = icmp eq i32 %and357.i, 0
  %276 = and i32 %272, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %if.else397.i, label %if.then359.i

if.then359.i:                                     ; preds = %if.end339.i
  %278 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %power_state.i, align 4
  %clock_info363.i = getelementptr %struct.radeon_power_state, ptr %279, i32 %state_index.0810.i, i32 1
  %280 = ptrtoint ptr %clock_info363.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %clock_info363.i, align 4
  %voltage365.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %281, i32 0, i32 2
  %282 = ptrtoint ptr %voltage365.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1, ptr %voltage365.i, align 4
  %283 = load ptr, ptr %power_state.i, align 4
  %clock_info370.i = getelementptr %struct.radeon_power_state, ptr %283, i32 %state_index.0810.i, i32 1
  %284 = ptrtoint ptr %clock_info370.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %clock_info370.i, align 4
  %gpio373.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %285, i32 0, i32 2, i32 1
  %ucVoltageDropIndex377.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 4
  %286 = ptrtoint ptr %ucVoltageDropIndex377.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %ucVoltageDropIndex377.i, align 1
  %288 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mode_info1, align 4, !noalias !210
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i751.i) #11, !noalias !210
  %290 = ptrtoint ptr %data_offset.i751.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 -1, ptr %data_offset.i751.i, align 2, !noalias !210, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size.i752.i) #11, !noalias !210
  %291 = ptrtoint ptr %size.i752.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 -1, ptr %size.i752.i, align 2, !noalias !210, !annotation !196
  %call.i754.i = call zeroext i1 @atom_parse_data_header(ptr noundef %289, i32 noundef 12, ptr noundef nonnull %size.i752.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %data_offset.i751.i) #11, !noalias !210
  br i1 %call.i754.i, label %if.then.i758.i, label %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge

if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge: ; preds = %if.then359.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit785.i

if.then.i758.i:                                   ; preds = %if.then359.i
  %292 = ptrtoint ptr %size.i752.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %size.i752.i, align 2, !noalias !210
  %conv1.i755.i = zext i16 %293 to i32
  %sub.i756.i = add nsw i32 %conv1.i755.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i756.i)
  %cmp26.not.i757.i = icmp ult i32 %sub.i756.i, 4
  br i1 %cmp26.not.i757.i, label %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge, label %for.body.preheader.i765.i

if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge: ; preds = %if.then.i758.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit785.i

for.body.preheader.i765.i:                        ; preds = %if.then.i758.i
  %bios.i759.i = getelementptr inbounds %struct.atom_context, ptr %289, i32 0, i32 3
  %294 = ptrtoint ptr %bios.i759.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %bios.i759.i, align 4, !noalias !210
  %296 = ptrtoint ptr %data_offset.i751.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %data_offset.i751.i, align 2, !noalias !210
  %conv.i760.i = zext i16 %297 to i32
  %add.ptr.i761.i = getelementptr i8, ptr %295, i32 %conv.i760.i
  %asGPIO_Pin.i762.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_LUT, ptr %add.ptr.i761.i, i32 0, i32 1
  %div24.i763.i = lshr i32 %sub.i756.i, 2
  %umax.i764.i = call i32 @llvm.umax.i32(i32 %div24.i763.i, i32 1) #11
  br label %for.body.i770.i

for.body.i770.i:                                  ; preds = %if.end.i784.i.for.body.i770.i_crit_edge, %for.body.preheader.i765.i
  %i.028.i766.i = phi i32 [ %inc.i782.i, %if.end.i784.i.for.body.i770.i_crit_edge ], [ 0, %for.body.preheader.i765.i ]
  %pin.027.i767.i = phi ptr [ %add.ptr15.i781.i, %if.end.i784.i.for.body.i770.i_crit_edge ], [ %asGPIO_Pin.i762.i, %for.body.preheader.i765.i ]
  %ucGPIO_ID.i768.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i767.i, i32 0, i32 2
  %298 = ptrtoint ptr %ucGPIO_ID.i768.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %ucGPIO_ID.i768.i, align 1, !noalias !210
  call void @__sanitizer_cov_trace_cmp1(i8 %299, i8 %287)
  %cmp5.i769.i = icmp eq i8 %299, %287
  br i1 %cmp5.i769.i, label %if.then7.i780.i, label %if.end.i784.i

if.then7.i780.i:                                  ; preds = %for.body.i770.i
  call void @__sanitizer_cov_trace_pc() #13
  %300 = ptrtoint ptr %pin.027.i767.i to i32
  call void @__asan_loadN_noabort(i32 %300, i32 2)
  %301 = load i16, ptr %pin.027.i767.i, align 1, !noalias !210
  %302 = call i16 @llvm.bswap.i16(i16 %301) #11
  %conv10.i772.i = zext i16 %302 to i32
  %mul.i773.i = shl nuw nsw i32 %conv10.i772.i, 2
  %ucGpioPinBitShift.i775.i = getelementptr inbounds %struct._ATOM_GPIO_PIN_ASSIGNMENT, ptr %pin.027.i767.i, i32 0, i32 1
  %303 = ptrtoint ptr %ucGpioPinBitShift.i775.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %ucGpioPinBitShift.i775.i, align 1, !noalias !210
  %conv11.i776.i = zext i8 %304 to i32
  %shl.i778.i = shl nuw i32 1, %conv11.i776.i
  br label %radeon_atombios_lookup_gpio.exit785.i

if.end.i784.i:                                    ; preds = %for.body.i770.i
  %add.ptr15.i781.i = getelementptr i8, ptr %pin.027.i767.i, i32 4
  %inc.i782.i = add nuw nsw i32 %i.028.i766.i, 1
  %exitcond.not.i783.i = icmp eq i32 %inc.i782.i, %umax.i764.i
  br i1 %exitcond.not.i783.i, label %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge, label %if.end.i784.i.for.body.i770.i_crit_edge

if.end.i784.i.for.body.i770.i_crit_edge:          ; preds = %if.end.i784.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i770.i

if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge: ; preds = %if.end.i784.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_lookup_gpio.exit785.i

radeon_atombios_lookup_gpio.exit785.i:            ; preds = %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge, %if.then7.i780.i, %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge, %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge
  %tmp374.sroa.0.1.i = phi i8 [ 0, %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ 1, %if.then7.i780.i ], [ 0, %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ 0, %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ]
  %tmp374.sroa.5.1.i = phi i8 [ 0, %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ %287, %if.then7.i780.i ], [ 0, %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ 0, %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ]
  %tmp374.sroa.6786.1.i = phi i32 [ 0, %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ %mul.i773.i, %if.then7.i780.i ], [ 0, %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ 0, %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ]
  %tmp374.sroa.7.1.i = phi i32 [ 0, %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ %shl.i778.i, %if.then7.i780.i ], [ 0, %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ 0, %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ]
  %tmp374.sroa.8.1.i = phi i32 [ 0, %if.then.i758.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ %conv11.i776.i, %if.then7.i780.i ], [ 0, %if.then359.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ], [ 0, %if.end.i784.i.radeon_atombios_lookup_gpio.exit785.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size.i752.i) #11, !noalias !210
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i751.i) #11, !noalias !210
  %305 = ptrtoint ptr %gpio373.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %tmp374.sroa.0.1.i, ptr %gpio373.i, align 4
  %tmp374.sroa.5.0.gpio373.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %285, i32 0, i32 2, i32 1, i32 1
  %306 = ptrtoint ptr %tmp374.sroa.5.0.gpio373.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %tmp374.sroa.5.1.i, ptr %tmp374.sroa.5.0.gpio373.sroa_idx.i, align 1
  %tmp374.sroa.6.0.gpio373.sroa_idx.i = getelementptr inbounds i8, ptr %gpio373.i, i32 2
  %307 = ptrtoint ptr %tmp374.sroa.6.0.gpio373.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 0, ptr %tmp374.sroa.6.0.gpio373.sroa_idx.i, align 2
  %tmp374.sroa.6786.0.gpio373.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %285, i32 0, i32 2, i32 1, i32 2
  %308 = ptrtoint ptr %tmp374.sroa.6786.0.gpio373.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %tmp374.sroa.6786.1.i, ptr %tmp374.sroa.6786.0.gpio373.sroa_idx.i, align 4
  %tmp374.sroa.7.0.gpio373.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %285, i32 0, i32 2, i32 1, i32 3
  %309 = ptrtoint ptr %tmp374.sroa.7.0.gpio373.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %tmp374.sroa.7.1.i, ptr %tmp374.sroa.7.0.gpio373.sroa_idx.i, align 4
  %tmp374.sroa.8.0.gpio373.sroa_idx.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %285, i32 0, i32 2, i32 1, i32 4
  %310 = ptrtoint ptr %tmp374.sroa.8.0.gpio373.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %tmp374.sroa.8.1.i, ptr %tmp374.sroa.8.0.gpio373.sroa_idx.i, align 4
  %311 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %power_state.i, align 4
  %clock_info392.i = getelementptr %struct.radeon_power_state, ptr %312, i32 %state_index.0810.i, i32 1
  %313 = ptrtoint ptr %clock_info392.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %clock_info392.i, align 4
  %active_high395.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %314, i32 0, i32 2, i32 3
  br i1 %tobool358.not.i, label %if.else388.i, label %if.then380.i

if.then380.i:                                     ; preds = %radeon_atombios_lookup_gpio.exit785.i
  call void @__sanitizer_cov_trace_pc() #13
  %315 = ptrtoint ptr %active_high395.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 1, ptr %active_high395.i, align 4
  br label %if.end437.i

if.else388.i:                                     ; preds = %radeon_atombios_lookup_gpio.exit785.i
  call void @__sanitizer_cov_trace_pc() #13
  %316 = ptrtoint ptr %active_high395.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %active_high395.i, align 4
  br label %if.end437.i

if.else397.i:                                     ; preds = %if.end339.i
  %and398.i = and i32 %272, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and398.i)
  %tobool399.not.i = icmp eq i32 %and398.i, 0
  br i1 %tobool399.not.i, label %if.else397.i.if.end437.i_crit_edge, label %if.then400.i

if.else397.i.if.end437.i_crit_edge:               ; preds = %if.else397.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437.i

if.then400.i:                                     ; preds = %if.else397.i
  %317 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %power_state.i, align 4
  %clock_info404.i = getelementptr %struct.radeon_power_state, ptr %318, i32 %state_index.0810.i, i32 1
  %319 = ptrtoint ptr %clock_info404.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %clock_info404.i, align 4
  %voltage406.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %320, i32 0, i32 2
  %321 = ptrtoint ptr %voltage406.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 2, ptr %voltage406.i, align 4
  %ucVoltageDropIndex410.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 4
  %322 = ptrtoint ptr %ucVoltageDropIndex410.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %ucVoltageDropIndex410.i, align 1
  %324 = load ptr, ptr %power_state.i, align 4
  %clock_info414.i = getelementptr %struct.radeon_power_state, ptr %324, i32 %state_index.0810.i, i32 1
  %325 = ptrtoint ptr %clock_info414.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %clock_info414.i, align 4
  %vddc_id417.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %326, i32 0, i32 2, i32 4
  %327 = ptrtoint ptr %vddc_id417.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %323, ptr %vddc_id417.i, align 1
  %and418.i = and i32 %275, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and418.i)
  %tobool419.not.i = icmp eq i32 %and418.i, 0
  br i1 %tobool419.not.i, label %if.then400.i.if.end437.i_crit_edge, label %if.then420.i

if.then400.i.if.end437.i_crit_edge:               ; preds = %if.then400.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437.i

if.then420.i:                                     ; preds = %if.then400.i
  call void @__sanitizer_cov_trace_pc() #13
  %328 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %power_state.i, align 4
  %clock_info424.i = getelementptr %struct.radeon_power_state, ptr %329, i32 %state_index.0810.i, i32 1
  %330 = ptrtoint ptr %clock_info424.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %clock_info424.i, align 4
  %vddci_enabled.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %331, i32 0, i32 2, i32 6
  %332 = ptrtoint ptr %vddci_enabled.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 1, ptr %vddci_enabled.i, align 1
  %ucVDDCI_VoltageDropIndex.i = getelementptr [8 x %struct._ATOM_POWERMODE_INFO_V3], ptr %asPowerPlayInfo303.i, i32 0, i32 %i.0805.i, i32 9
  %333 = ptrtoint ptr %ucVDDCI_VoltageDropIndex.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %ucVDDCI_VoltageDropIndex.i, align 1
  %335 = load ptr, ptr %power_state.i, align 4
  %clock_info432.i = getelementptr %struct.radeon_power_state, ptr %335, i32 %state_index.0810.i, i32 1
  %336 = ptrtoint ptr %clock_info432.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %clock_info432.i, align 4
  %vddci_id.i = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %337, i32 0, i32 2, i32 5
  %338 = ptrtoint ptr %vddci_id.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %334, ptr %vddci_id.i, align 2
  br label %if.end437.i

if.end437.i:                                      ; preds = %if.then420.i, %if.then400.i.if.end437.i_crit_edge, %if.else397.i.if.end437.i_crit_edge, %if.else388.i, %if.then380.i
  %339 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %power_state.i, align 4
  %flags441.i = getelementptr %struct.radeon_power_state, ptr %340, i32 %state_index.0810.i, i32 4
  %341 = ptrtoint ptr %flags441.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 1, ptr %flags441.i, align 4
  call fastcc void @radeon_atombios_parse_misc_flags_1_3(ptr noundef %rdev, i32 noundef %state_index.0810.i, i32 noundef %272, i32 noundef %275) #11
  %inc442.i = add i32 %state_index.0810.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end437.i, %lor.lhs.false329.i.for.inc.i_crit_edge, %sw.bb302.i.for.inc.i_crit_edge, %if.end296.i, %lor.lhs.false207.i.for.inc.i_crit_edge, %sw.bb182.i.for.inc.i_crit_edge, %if.end178.i, %lor.lhs.false.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %if.end67.i.for.inc.i_crit_edge
  %state_index.1.i = phi i32 [ %state_index.0810.i, %if.end67.i.for.inc.i_crit_edge ], [ %state_index.0810.i, %sw.bb302.i.for.inc.i_crit_edge ], [ %state_index.0810.i, %lor.lhs.false329.i.for.inc.i_crit_edge ], [ %inc442.i, %if.end437.i ], [ %state_index.0810.i, %sw.bb182.i.for.inc.i_crit_edge ], [ %state_index.0810.i, %lor.lhs.false207.i.for.inc.i_crit_edge ], [ %inc301.i, %if.end296.i ], [ %state_index.0810.i, %sw.bb.i.for.inc.i_crit_edge ], [ %state_index.0810.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %inc.i, %if.end178.i ]
  %inc443.i = add nuw nsw i32 %i.0805.i, 1
  %exitcond.not.i = icmp eq i32 %inc443.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.out.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.out.i_crit_edge:                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

out.i:                                            ; preds = %for.inc.i.out.i_crit_edge, %if.end60.i.out.i_crit_edge
  %state_index.0.lcssa.ph.i = phi i32 [ %state_index.0810.i, %if.end60.i.out.i_crit_edge ], [ %state_index.1.i, %for.inc.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_index.0.lcssa.ph.i)
  %tobool444.not.i = icmp eq i32 %state_index.0.lcssa.ph.i, 0
  %tobool444.not.not.i = xor i1 %tobool444.not.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %state_index.0.lcssa.ph.i, i32 %49)
  %cmp446.i = icmp slt i32 %state_index.0.lcssa.ph.i, %49
  %or.cond713.i = select i1 %tobool444.not.not.i, i1 %cmp446.i, i1 false
  br i1 %or.cond713.i, label %if.then448.i, label %out.i.if.end457.i_crit_edge

out.i.if.end457.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end457.i

if.then448.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  %342 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %power_state.i, align 4
  %clock_info452.i = getelementptr %struct.radeon_power_state, ptr %343, i32 %state_index.0.lcssa.ph.i, i32 1
  %344 = ptrtoint ptr %clock_info452.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %clock_info452.i, align 4
  call void @kfree(ptr noundef %345) #11
  %346 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %power_state.i, align 4
  %clock_info456.i = getelementptr %struct.radeon_power_state, ptr %347, i32 %state_index.0.lcssa.ph.i, i32 1
  %348 = ptrtoint ptr %clock_info456.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %clock_info456.i, align 4
  br label %if.end457.i

if.end457.i:                                      ; preds = %if.then448.i, %out.i.if.end457.i_crit_edge
  br i1 %tobool444.not.i, label %if.end457.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, label %land.lhs.true459.i

if.end457.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge: ; preds = %if.end457.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_1_3.exit

land.lhs.true459.i:                               ; preds = %if.end457.i
  %349 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %default_power_state_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %350)
  %cmp461.i = icmp eq i32 %350, -1
  br i1 %cmp461.i, label %if.then463.i, label %land.lhs.true459.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge

land.lhs.true459.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge: ; preds = %land.lhs.true459.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_1_3.exit

if.then463.i:                                     ; preds = %land.lhs.true459.i
  call void @__sanitizer_cov_trace_pc() #13
  %351 = ptrtoint ptr %power_state.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %power_state.i, align 4
  %sub.i = add i32 %state_index.0.lcssa.ph.i, -1
  %arrayidx466.i = getelementptr %struct.radeon_power_state, ptr %352, i32 %sub.i
  %353 = ptrtoint ptr %arrayidx466.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 0, ptr %arrayidx466.i, align 4
  %354 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %sub.i, ptr %default_power_state_index, align 4
  %355 = load ptr, ptr %power_state.i, align 4
  %clock_info475.i = getelementptr %struct.radeon_power_state, ptr %355, i32 %sub.i, i32 1
  %356 = ptrtoint ptr %clock_info475.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %clock_info475.i, align 4
  %default_clock_mode.i = getelementptr %struct.radeon_power_state, ptr %355, i32 %sub.i, i32 3
  %358 = ptrtoint ptr %default_clock_mode.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store ptr %357, ptr %default_clock_mode.i, align 4
  %359 = load ptr, ptr %power_state.i, align 4
  %flags485.i = getelementptr %struct.radeon_power_state, ptr %359, i32 %sub.i, i32 4
  %360 = ptrtoint ptr %flags485.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %flags485.i, align 4
  %and486.i = and i32 %361, -2
  store i32 %and486.i, ptr %flags485.i, align 4
  %362 = load ptr, ptr %power_state.i, align 4
  %misc491.i = getelementptr %struct.radeon_power_state, ptr %362, i32 %sub.i, i32 5
  %363 = ptrtoint ptr %misc491.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 0, ptr %misc491.i, align 4
  %364 = load ptr, ptr %power_state.i, align 4
  %misc2496.i = getelementptr %struct.radeon_power_state, ptr %364, i32 %sub.i, i32 6
  %365 = ptrtoint ptr %misc2496.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 0, ptr %misc2496.i, align 4
  br label %radeon_atombios_parse_power_table_1_3.exit

radeon_atombios_parse_power_table_1_3.exit:       ; preds = %if.then463.i, %land.lhs.true459.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, %if.end457.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, %if.end7.i.i.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, %if.end31.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge, %sw.bb.radeon_atombios_parse_power_table_1_3.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb.radeon_atombios_parse_power_table_1_3.exit_crit_edge ], [ 0, %if.end31.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge ], [ 0, %if.end7.i.i.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge ], [ %state_index.0.lcssa.ph.i, %if.then463.i ], [ %state_index.0.lcssa.ph.i, %land.lhs.true459.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge ], [ 0, %if.end457.i.radeon_atombios_parse_power_table_1_3.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %i2c_bus.i) #11
  br label %if.end

sw.bb3:                                           ; preds = %if.then.sw.bb3_crit_edge, %if.then.sw.bb3_crit_edge267
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i129) #11
  %366 = ptrtoint ptr %data_offset.i129 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 -1, ptr %data_offset.i129, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i130) #11
  %367 = ptrtoint ptr %frev.i130 to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 -1, ptr %frev.i130, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i131) #11
  %368 = ptrtoint ptr %crev.i131 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 -1, ptr %crev.i131, align 1, !annotation !196
  %369 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %mode_info1, align 4
  %call.i133 = call zeroext i1 @atom_parse_data_header(ptr noundef %370, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i130, ptr noundef nonnull %crev.i131, ptr noundef nonnull %data_offset.i129) #11
  br i1 %call.i133, label %if.end.i137, label %sw.bb3.radeon_atombios_parse_power_table_4_5.exit_crit_edge

sw.bb3.radeon_atombios_parse_power_table_4_5.exit_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_4_5.exit

if.end.i137:                                      ; preds = %sw.bb3
  %371 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %mode_info1, align 4
  %bios.i134 = getelementptr inbounds %struct.atom_context, ptr %372, i32 0, i32 3
  %373 = ptrtoint ptr %bios.i134 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %bios.i134, align 4
  %375 = ptrtoint ptr %data_offset.i129 to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %data_offset.i129, align 2
  %conv.i135 = zext i16 %376 to i32
  %add.ptr.i136 = getelementptr i8, ptr %374, i32 %conv.i135
  %sThermalController.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 13
  call fastcc void @radeon_atombios_add_pplib_thermal_controller(ptr noundef %rdev, ptr noundef %sThermalController.i) #11
  %ucNumStates.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 2
  %377 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %ucNumStates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %378)
  %cmp.i = icmp eq i8 %378, 0
  br i1 %cmp.i, label %if.end.i137.radeon_atombios_parse_power_table_4_5.exit_crit_edge, label %if.end7.i.i.i147

if.end.i137.radeon_atombios_parse_power_table_4_5.exit_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_4_5.exit

if.end7.i.i.i147:                                 ; preds = %if.end.i137
  %conv3.i138 = zext i8 %378 to i32
  %379 = shl nuw nsw i32 %conv3.i138, 5
  %call8.i.i.i146 = call noalias align 128 ptr @__kmalloc(i32 noundef %379, i32 noundef 3520) #16
  %power_state10.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %380 = ptrtoint ptr %power_state10.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %call8.i.i.i146, ptr %power_state10.i, align 4
  %tobool.not.i149 = icmp eq ptr %call8.i.i.i146, null
  br i1 %tobool.not.i149, label %if.end7.i.i.i147.radeon_atombios_parse_power_table_4_5.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i147.radeon_atombios_parse_power_table_4_5.exit_crit_edge: ; preds = %if.end7.i.i.i147
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_4_5.exit

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i147
  %381 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %ucNumStates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %cmp17267.not.i = icmp eq i8 %382, 0
  br i1 %cmp17267.not.i, label %for.cond.preheader.i.for.end124.i_crit_edge, label %for.body.lr.ph.i151

for.cond.preheader.i.for.end124.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end124.i

for.body.lr.ph.i151:                              ; preds = %for.cond.preheader.i
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 6
  %ucStateEntrySize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 3
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 8
  %ucNonClockSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 5
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 7
  %ucClockInfoSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i136, i32 0, i32 4
  %default_mclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %default_sclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  br label %for.body.i155

for.cond105.preheader.i:                          ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_index.1.i160)
  %cmp106272.i = icmp sgt i32 %state_index.1.i160, 0
  br i1 %cmp106272.i, label %for.cond105.preheader.i.for.body108.i_crit_edge, label %for.cond105.preheader.i.for.end124.i_crit_edge

for.cond105.preheader.i.for.end124.i_crit_edge:   ; preds = %for.cond105.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end124.i

for.cond105.preheader.i.for.body108.i_crit_edge:  ; preds = %for.cond105.preheader.i
  br label %for.body108.i

for.body.i155:                                    ; preds = %for.inc102.i.for.body.i155_crit_edge, %for.body.lr.ph.i151
  %state_index.0269.i = phi i32 [ 0, %for.body.lr.ph.i151 ], [ %state_index.1.i160, %for.inc102.i.for.body.i155_crit_edge ]
  %i.0268.i = phi i32 [ 0, %for.body.lr.ph.i151 ], [ %inc103.i, %for.inc102.i.for.body.i155_crit_edge ]
  %383 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %mode_info1, align 4
  %bios20.i = getelementptr inbounds %struct.atom_context, ptr %384, i32 0, i32 3
  %385 = ptrtoint ptr %bios20.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %bios20.i, align 4
  %387 = ptrtoint ptr %data_offset.i129 to i32
  call void @__asan_load2_noabort(i32 %387)
  %388 = load i16, ptr %data_offset.i129, align 2
  %conv21.i = zext i16 %388 to i32
  %add.ptr22.i = getelementptr i8, ptr %386, i32 %conv21.i
  %389 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %389, i32 2)
  %390 = load i16, ptr %usStateArrayOffset.i, align 1
  %391 = call i16 @llvm.bswap.i16(i16 %390) #11
  %conv23.i = zext i16 %391 to i32
  %add.ptr24.i = getelementptr i8, ptr %add.ptr22.i, i32 %conv23.i
  %392 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv25.i152 = zext i8 %393 to i32
  %mul.i = mul i32 %i.0268.i, %conv25.i152
  %add.ptr26.i = getelementptr i8, ptr %add.ptr24.i, i32 %mul.i
  %394 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %394, i32 2)
  %395 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %396 = call i16 @llvm.bswap.i16(i16 %395) #11
  %conv31.i = zext i16 %396 to i32
  %add.ptr32.i = getelementptr i8, ptr %add.ptr22.i, i32 %conv31.i
  %397 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %add.ptr26.i, align 1
  %conv33.i = zext i8 %398 to i32
  %399 = ptrtoint ptr %ucNonClockSize.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %ucNonClockSize.i, align 1
  %conv34.i = zext i8 %400 to i32
  %mul35.i = mul nuw nsw i32 %conv34.i, %conv33.i
  %add.ptr36.i = getelementptr i8, ptr %add.ptr32.i, i32 %mul35.i
  %sub.i153 = add nsw i32 %conv25.i152, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i153)
  %tobool39.not.i = icmp eq i32 %sub.i153, 0
  %spec.select.i154 = select i1 %tobool39.not.i, i32 1, i32 %sub.i153
  %401 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i154, i32 44) #11
  %402 = extractvalue { i32, i1 } %401, 1
  br i1 %402, label %for.body.i155.kcalloc.exit252.i_crit_edge, label %if.end7.i.i250.i, !prof !213

for.body.i155.kcalloc.exit252.i_crit_edge:        ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %kcalloc.exit252.i

if.end7.i.i250.i:                                 ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #13
  %403 = extractvalue { i32, i1 } %401, 0
  %call8.i.i249.i = call noalias align 128 ptr @__kmalloc(i32 noundef %403, i32 noundef 3520) #16
  br label %kcalloc.exit252.i

kcalloc.exit252.i:                                ; preds = %if.end7.i.i250.i, %for.body.i155.kcalloc.exit252.i_crit_edge
  %retval.0.i.i251.i = phi ptr [ %call8.i.i249.i, %if.end7.i.i250.i ], [ null, %for.body.i155.kcalloc.exit252.i_crit_edge ]
  %404 = ptrtoint ptr %power_state10.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %power_state10.i, align 4
  %clock_info46.i = getelementptr %struct.radeon_power_state, ptr %405, i32 %i.0268.i, i32 1
  %406 = ptrtoint ptr %clock_info46.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr %retval.0.i.i251.i, ptr %clock_info46.i, align 4
  %407 = load ptr, ptr %power_state10.i, align 4
  %clock_info50.i = getelementptr %struct.radeon_power_state, ptr %407, i32 %i.0268.i, i32 1
  %408 = ptrtoint ptr %clock_info50.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %clock_info50.i, align 4
  %tobool51.not.i = icmp eq ptr %409, null
  br i1 %tobool51.not.i, label %kcalloc.exit252.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge, label %if.end53.i

kcalloc.exit252.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge: ; preds = %kcalloc.exit252.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_4_5.exit

if.end53.i:                                       ; preds = %kcalloc.exit252.i
  %410 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %ucStateEntrySize.i, align 1
  %412 = zext i8 %411 to i64
  call void @__sanitizer_cov_trace_switch(i64 %412, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %411, label %for.body65.lr.ph.i [
    i8 1, label %if.end94.thread.i
    i8 0, label %if.end94.thread279.i
  ]

if.end94.thread279.i:                             ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %num_clock_modes281.i = getelementptr %struct.radeon_power_state, ptr %407, i32 %state_index.0269.i, i32 2
  %413 = ptrtoint ptr %num_clock_modes281.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 0, ptr %num_clock_modes281.i, align 4
  br label %for.inc102.i

for.body65.lr.ph.i:                               ; preds = %if.end53.i
  %ucClockStateIndices.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE, ptr %add.ptr26.i, i32 0, i32 1
  br label %for.body65.i

for.body65.i:                                     ; preds = %for.body65.i.for.body65.i_crit_edge, %for.body65.lr.ph.i
  %mode_index.0265.i = phi i32 [ 0, %for.body65.lr.ph.i ], [ %spec.select219.i, %for.body65.i.for.body65.i_crit_edge ]
  %j.0264.i = phi i32 [ 0, %for.body65.lr.ph.i ], [ %inc81.i, %for.body65.i.for.body65.i_crit_edge ]
  %414 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %mode_info1, align 4
  %bios67.i = getelementptr inbounds %struct.atom_context, ptr %415, i32 0, i32 3
  %416 = ptrtoint ptr %bios67.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %bios67.i, align 4
  %418 = ptrtoint ptr %data_offset.i129 to i32
  call void @__asan_load2_noabort(i32 %418)
  %419 = load i16, ptr %data_offset.i129, align 2
  %conv68.i = zext i16 %419 to i32
  %add.ptr69.i = getelementptr i8, ptr %417, i32 %conv68.i
  %420 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %420, i32 2)
  %421 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %422 = call i16 @llvm.bswap.i16(i16 %421) #11
  %conv70.i = zext i16 %422 to i32
  %add.ptr71.i = getelementptr i8, ptr %add.ptr69.i, i32 %conv70.i
  %arrayidx72.i = getelementptr [1 x i8], ptr %ucClockStateIndices.i, i32 0, i32 %j.0264.i
  %423 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %arrayidx72.i, align 1
  %conv73.i = zext i8 %424 to i32
  %425 = ptrtoint ptr %ucClockInfoSize.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %ucClockInfoSize.i, align 1
  %conv74.i = zext i8 %426 to i32
  %mul75.i = mul nuw nsw i32 %conv74.i, %conv73.i
  %add.ptr76.i = getelementptr i8, ptr %add.ptr71.i, i32 %mul75.i
  %call77.i = call fastcc zeroext i1 @radeon_atombios_parse_pplib_clock_info(ptr noundef %rdev, i32 noundef %state_index.0269.i, i32 noundef %mode_index.0265.i, ptr noundef %add.ptr76.i) #11
  %inc.i156 = zext i1 %call77.i to i32
  %spec.select219.i = add i32 %mode_index.0265.i, %inc.i156
  %inc81.i = add nuw nsw i32 %j.0264.i, 1
  %427 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv61.i = zext i8 %428 to i32
  %sub62.i = add nsw i32 %conv61.i, -1
  %cmp63.i = icmp slt i32 %inc81.i, %sub62.i
  br i1 %cmp63.i, label %for.body65.i.for.body65.i_crit_edge, label %if.end94.i

for.body65.i.for.body65.i_crit_edge:              ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body65.i

if.end94.thread.i:                                ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  %429 = ptrtoint ptr %default_mclk.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %default_mclk.i, align 4
  %clock_info85.i = getelementptr %struct.radeon_power_state, ptr %407, i32 %state_index.0269.i, i32 1
  %431 = ptrtoint ptr %clock_info85.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %clock_info85.i, align 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %430, ptr %432, align 4
  %434 = ptrtoint ptr %default_sclk.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %default_sclk.i, align 4
  %436 = ptrtoint ptr %power_state10.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %power_state10.i, align 4
  %clock_info91.i157 = getelementptr %struct.radeon_power_state, ptr %437, i32 %state_index.0269.i, i32 1
  %438 = ptrtoint ptr %clock_info91.i157 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %clock_info91.i157, align 4
  %sclk.i158 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %439, i32 0, i32 1
  %440 = ptrtoint ptr %sclk.i158 to i32
  call void @__asan_store4_noabort(i32 %440)
  store i32 %435, ptr %sclk.i158, align 4
  %441 = load ptr, ptr %power_state10.i, align 4
  %num_clock_modes257.i = getelementptr %struct.radeon_power_state, ptr %441, i32 %state_index.0269.i, i32 2
  %442 = ptrtoint ptr %num_clock_modes257.i to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 1, ptr %num_clock_modes257.i, align 4
  br label %if.then99.i

if.end94.i:                                       ; preds = %for.body65.i
  %443 = ptrtoint ptr %power_state10.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %power_state10.i, align 4
  %num_clock_modes.i159 = getelementptr %struct.radeon_power_state, ptr %444, i32 %state_index.0269.i, i32 2
  %445 = ptrtoint ptr %num_clock_modes.i159 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 %spec.select219.i, ptr %num_clock_modes.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select219.i)
  %tobool98.not.i = icmp eq i32 %spec.select219.i, 0
  br i1 %tobool98.not.i, label %if.end94.i.for.inc102.i_crit_edge, label %if.end94.i.if.then99.i_crit_edge

if.end94.i.if.then99.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then99.i

if.end94.i.for.inc102.i_crit_edge:                ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc102.i

if.then99.i:                                      ; preds = %if.end94.i.if.then99.i_crit_edge, %if.end94.thread.i
  %mode_index.2259.i = phi i32 [ 1, %if.end94.thread.i ], [ %spec.select219.i, %if.end94.i.if.then99.i_crit_edge ]
  call fastcc void @radeon_atombios_parse_pplib_non_clock_info(ptr noundef %rdev, i32 noundef %state_index.0269.i, i32 noundef %mode_index.2259.i, ptr noundef %add.ptr36.i) #11
  %inc100.i = add i32 %state_index.0269.i, 1
  br label %for.inc102.i

for.inc102.i:                                     ; preds = %if.then99.i, %if.end94.i.for.inc102.i_crit_edge, %if.end94.thread279.i
  %state_index.1.i160 = phi i32 [ %inc100.i, %if.then99.i ], [ %state_index.0269.i, %if.end94.i.for.inc102.i_crit_edge ], [ %state_index.0269.i, %if.end94.thread279.i ]
  %inc103.i = add nuw nsw i32 %i.0268.i, 1
  %446 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %ucNumStates.i, align 1
  %conv16.i = zext i8 %447 to i32
  %cmp17.i = icmp ult i32 %inc103.i, %conv16.i
  br i1 %cmp17.i, label %for.inc102.i.for.body.i155_crit_edge, label %for.cond105.preheader.i

for.inc102.i.for.body.i155_crit_edge:             ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i155

for.body108.i:                                    ; preds = %for.inc122.i.for.body108.i_crit_edge, %for.cond105.preheader.i.for.body108.i_crit_edge
  %i.1273.i = phi i32 [ %inc123.i, %for.inc122.i.for.body108.i_crit_edge ], [ 0, %for.cond105.preheader.i.for.body108.i_crit_edge ]
  %448 = ptrtoint ptr %power_state10.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %power_state10.i, align 4
  %num_clock_modes112.i = getelementptr %struct.radeon_power_state, ptr %449, i32 %i.1273.i, i32 2
  %450 = ptrtoint ptr %num_clock_modes112.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %num_clock_modes112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %451)
  %cmp113.i = icmp sgt i32 %451, 1
  br i1 %cmp113.i, label %if.then115.i, label %for.body108.i.for.inc122.i_crit_edge

for.body108.i.for.inc122.i_crit_edge:             ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc122.i

if.then115.i:                                     ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #13
  %clock_info119.i = getelementptr %struct.radeon_power_state, ptr %449, i32 %i.1273.i, i32 1
  %452 = ptrtoint ptr %clock_info119.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %clock_info119.i, align 4
  %flags.i161 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %453, i32 0, i32 3
  %454 = ptrtoint ptr %flags.i161 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %flags.i161, align 4
  %or.i = or i32 %455, 1
  store i32 %or.i, ptr %flags.i161, align 4
  br label %for.inc122.i

for.inc122.i:                                     ; preds = %if.then115.i, %for.body108.i.for.inc122.i_crit_edge
  %inc123.i = add nuw nsw i32 %i.1273.i, 1
  %exitcond.not.i162 = icmp eq i32 %inc123.i, %state_index.1.i160
  br i1 %exitcond.not.i162, label %for.inc122.i.for.end124.i_crit_edge, label %for.inc122.i.for.body108.i_crit_edge

for.inc122.i.for.body108.i_crit_edge:             ; preds = %for.inc122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body108.i

for.inc122.i.for.end124.i_crit_edge:              ; preds = %for.inc122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end124.i

for.end124.i:                                     ; preds = %for.inc122.i.for.end124.i_crit_edge, %for.cond105.preheader.i.for.end124.i_crit_edge, %for.cond.preheader.i.for.end124.i_crit_edge
  %state_index.0.lcssa278.i = phi i32 [ %state_index.1.i160, %for.cond105.preheader.i.for.end124.i_crit_edge ], [ 0, %for.cond.preheader.i.for.end124.i_crit_edge ], [ %state_index.1.i160, %for.inc122.i.for.end124.i_crit_edge ]
  %456 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %default_power_state_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %457)
  %cmp126.i = icmp eq i32 %457, -1
  br i1 %cmp126.i, label %if.then128.i, label %for.end124.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge

for.end124.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge: ; preds = %for.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_4_5.exit

if.then128.i:                                     ; preds = %for.end124.i
  call void @__sanitizer_cov_trace_pc() #13
  %458 = ptrtoint ptr %power_state10.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %power_state10.i, align 4
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 0, ptr %459, align 4
  %461 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 0, ptr %default_power_state_index, align 4
  %462 = load ptr, ptr %power_state10.i, align 4
  %clock_info137.i = getelementptr inbounds %struct.radeon_power_state, ptr %462, i32 0, i32 1
  %463 = ptrtoint ptr %clock_info137.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %clock_info137.i, align 4
  %default_clock_mode.i164 = getelementptr inbounds %struct.radeon_power_state, ptr %462, i32 0, i32 3
  %465 = ptrtoint ptr %default_clock_mode.i164 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %464, ptr %default_clock_mode.i164, align 4
  br label %radeon_atombios_parse_power_table_4_5.exit

radeon_atombios_parse_power_table_4_5.exit:       ; preds = %if.then128.i, %for.end124.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge, %kcalloc.exit252.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge, %if.end7.i.i.i147.radeon_atombios_parse_power_table_4_5.exit_crit_edge, %if.end.i137.radeon_atombios_parse_power_table_4_5.exit_crit_edge, %sw.bb3.radeon_atombios_parse_power_table_4_5.exit_crit_edge
  %retval.0.i165 = phi i32 [ 0, %sw.bb3.radeon_atombios_parse_power_table_4_5.exit_crit_edge ], [ 0, %if.end.i137.radeon_atombios_parse_power_table_4_5.exit_crit_edge ], [ 0, %if.end7.i.i.i147.radeon_atombios_parse_power_table_4_5.exit_crit_edge ], [ %state_index.0.lcssa278.i, %if.then128.i ], [ %state_index.0.lcssa278.i, %for.end124.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge ], [ %state_index.0269.i, %kcalloc.exit252.i.radeon_atombios_parse_power_table_4_5.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i131) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i130) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i129) #11
  br label %if.end

sw.bb5:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i166) #11
  %466 = ptrtoint ptr %data_offset.i166 to i32
  call void @__asan_store2_noabort(i32 %466)
  store i16 -1, ptr %data_offset.i166, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i167) #11
  %467 = ptrtoint ptr %frev.i167 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 -1, ptr %frev.i167, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i168) #11
  %468 = ptrtoint ptr %crev.i168 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 -1, ptr %crev.i168, align 1, !annotation !196
  %469 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %mode_info1, align 4
  %call.i170 = call zeroext i1 @atom_parse_data_header(ptr noundef %470, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i167, ptr noundef nonnull %crev.i168, ptr noundef nonnull %data_offset.i166) #11
  br i1 %call.i170, label %if.end.i179, label %sw.bb5.radeon_atombios_parse_power_table_6.exit_crit_edge

sw.bb5.radeon_atombios_parse_power_table_6.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_6.exit

if.end.i179:                                      ; preds = %sw.bb5
  %471 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %mode_info1, align 4
  %bios.i171 = getelementptr inbounds %struct.atom_context, ptr %472, i32 0, i32 3
  %473 = ptrtoint ptr %bios.i171 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %bios.i171, align 4
  %475 = ptrtoint ptr %data_offset.i166 to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %data_offset.i166, align 2
  %conv.i172 = zext i16 %476 to i32
  %add.ptr.i173 = getelementptr i8, ptr %474, i32 %conv.i172
  %sThermalController.i174 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i173, i32 0, i32 13
  call fastcc void @radeon_atombios_add_pplib_thermal_controller(ptr noundef %rdev, ptr noundef %sThermalController.i174) #11
  %477 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %mode_info1, align 4
  %bios4.i = getelementptr inbounds %struct.atom_context, ptr %478, i32 0, i32 3
  %479 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %bios4.i, align 4
  %481 = ptrtoint ptr %data_offset.i166 to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %data_offset.i166, align 2
  %conv5.i = zext i16 %482 to i32
  %add.ptr6.i = getelementptr i8, ptr %480, i32 %conv5.i
  %usStateArrayOffset.i175 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i173, i32 0, i32 6
  %483 = ptrtoint ptr %usStateArrayOffset.i175 to i32
  call void @__asan_loadN_noabort(i32 %483, i32 2)
  %484 = load i16, ptr %usStateArrayOffset.i175, align 1
  %485 = call i16 @llvm.bswap.i16(i16 %484) #11
  %conv7.i = zext i16 %485 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %conv7.i
  %usClockInfoArrayOffset.i176 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i173, i32 0, i32 7
  %486 = ptrtoint ptr %usClockInfoArrayOffset.i176 to i32
  call void @__asan_loadN_noabort(i32 %486, i32 2)
  %487 = load i16, ptr %usClockInfoArrayOffset.i176, align 1
  %488 = call i16 @llvm.bswap.i16(i16 %487) #11
  %conv13.i = zext i16 %488 to i32
  %add.ptr14.i = getelementptr i8, ptr %add.ptr6.i, i32 %conv13.i
  %usNonClockInfoArrayOffset.i177 = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i173, i32 0, i32 8
  %489 = ptrtoint ptr %usNonClockInfoArrayOffset.i177 to i32
  call void @__asan_loadN_noabort(i32 %489, i32 2)
  %490 = load i16, ptr %usNonClockInfoArrayOffset.i177, align 1
  %491 = call i16 @llvm.bswap.i16(i16 %490) #11
  %conv19.i = zext i16 %491 to i32
  %add.ptr20.i = getelementptr i8, ptr %add.ptr6.i, i32 %conv19.i
  %492 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %493)
  %cmp.i178 = icmp eq i8 %493, 0
  br i1 %cmp.i178, label %if.end.i179.radeon_atombios_parse_power_table_6.exit_crit_edge, label %if.end7.i.i.i202

if.end.i179.radeon_atombios_parse_power_table_6.exit_crit_edge: ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_6.exit

if.end7.i.i.i202:                                 ; preds = %if.end.i179
  %conv21.i180 = zext i8 %493 to i32
  %494 = shl nuw nsw i32 %conv21.i180, 5
  %call8.i.i.i201 = call noalias align 128 ptr @__kmalloc(i32 noundef %494, i32 noundef 3520) #16
  %power_state28.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %495 = ptrtoint ptr %power_state28.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %call8.i.i.i201, ptr %power_state28.i, align 4
  %tobool.not.i204 = icmp eq ptr %call8.i.i.i201, null
  br i1 %tobool.not.i204, label %if.end7.i.i.i202.radeon_atombios_parse_power_table_6.exit_crit_edge, label %if.end32.i

if.end7.i.i.i202.radeon_atombios_parse_power_table_6.exit_crit_edge: ; preds = %if.end7.i.i.i202
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_6.exit

if.end32.i:                                       ; preds = %if.end7.i.i.i202
  %496 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %497)
  %cmp35264.not.i = icmp eq i8 %497, 0
  br i1 %cmp35264.not.i, label %if.end32.i.for.end117.i_crit_edge, label %for.body.lr.ph.i208

if.end32.i.for.end117.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end117.i

for.body.lr.ph.i208:                              ; preds = %if.end32.i
  %states.i = getelementptr inbounds %struct._StateArray, ptr %add.ptr8.i, i32 0, i32 1
  %nonClockInfo.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 2
  %clockInfo.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 2
  %ucEntrySize.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 1
  %default_mclk.i206 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %default_sclk.i207 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  br label %for.body.i212

for.cond98.preheader.i:                           ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_index.1.i221)
  %cmp99273.i = icmp sgt i32 %state_index.1.i221, 0
  br i1 %cmp99273.i, label %for.cond98.preheader.i.for.body101.i_crit_edge, label %for.cond98.preheader.i.for.end117.i_crit_edge

for.cond98.preheader.i.for.end117.i_crit_edge:    ; preds = %for.cond98.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end117.i

for.cond98.preheader.i.for.body101.i_crit_edge:   ; preds = %for.cond98.preheader.i
  br label %for.body101.i

for.body.i212:                                    ; preds = %if.end91.i.for.body.i212_crit_edge, %for.body.lr.ph.i208
  %power_state_offset.0268.i = phi ptr [ %states.i, %for.body.lr.ph.i208 ], [ %add.ptr94.i, %if.end91.i.for.body.i212_crit_edge ]
  %state_index.0266.i = phi i32 [ 0, %for.body.lr.ph.i208 ], [ %state_index.1.i221, %if.end91.i.for.body.i212_crit_edge ]
  %i.0265.i = phi i32 [ 0, %for.body.lr.ph.i208 ], [ %inc96.i, %if.end91.i.for.body.i212_crit_edge ]
  %nonClockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0268.i, i32 0, i32 1
  %498 = ptrtoint ptr %nonClockInfoIndex.i to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %nonClockInfoIndex.i, align 1
  %conv37.i = zext i8 %499 to i32
  %arrayidx.i209 = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv37.i
  %500 = ptrtoint ptr %power_state_offset.0268.i to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %power_state_offset.0268.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %501)
  %tobool39.not.i210 = icmp eq i8 %501, 0
  %narrow.i = select i1 %tobool39.not.i210, i8 1, i8 %501
  %spec.select.i211 = zext i8 %narrow.i to i32
  %502 = mul nuw nsw i32 %spec.select.i211, 44
  %call8.i.i247.i = call noalias align 128 ptr @__kmalloc(i32 noundef %502, i32 noundef 3520) #16
  %503 = ptrtoint ptr %power_state28.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %power_state28.i, align 4
  %clock_info46.i213 = getelementptr %struct.radeon_power_state, ptr %504, i32 %i.0265.i, i32 1
  %505 = ptrtoint ptr %clock_info46.i213 to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr %call8.i.i247.i, ptr %clock_info46.i213, align 4
  %506 = load ptr, ptr %power_state28.i, align 4
  %clock_info50.i214 = getelementptr %struct.radeon_power_state, ptr %506, i32 %i.0265.i, i32 1
  %507 = ptrtoint ptr %clock_info50.i214 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %clock_info50.i214, align 4
  %tobool51.not.i215 = icmp eq ptr %508, null
  br i1 %tobool51.not.i215, label %for.body.i212.radeon_atombios_parse_power_table_6.exit_crit_edge, label %if.end53.i216

for.body.i212.radeon_atombios_parse_power_table_6.exit_crit_edge: ; preds = %for.body.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_6.exit

if.end53.i216:                                    ; preds = %for.body.i212
  %509 = ptrtoint ptr %power_state_offset.0268.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %power_state_offset.0268.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %510)
  %tobool55.not.i = icmp eq i8 %510, 0
  br i1 %tobool55.not.i, label %if.end84.thread.i, label %if.end53.i216.for.body62.i_crit_edge

if.end53.i216.for.body62.i_crit_edge:             ; preds = %if.end53.i216
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %if.end53.i216.for.body62.i_crit_edge
  %mode_index.0262.i = phi i32 [ %spec.select217.i, %for.body62.i.for.body62.i_crit_edge ], [ 0, %if.end53.i216.for.body62.i_crit_edge ]
  %j.0261.i = phi i32 [ %inc71.i, %for.body62.i.for.body62.i_crit_edge ], [ 0, %if.end53.i216.for.body62.i_crit_edge ]
  %arrayidx63.i = getelementptr %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0268.i, i32 0, i32 2, i32 %j.0261.i
  %511 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %512 to i32
  %513 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %ucEntrySize.i, align 1
  %conv65.i = zext i8 %514 to i32
  %mul.i217 = mul nuw nsw i32 %conv65.i, %conv64.i
  %arrayidx66.i = getelementptr [1 x i8], ptr %clockInfo.i, i32 0, i32 %mul.i217
  %call67.i = call fastcc zeroext i1 @radeon_atombios_parse_pplib_clock_info(ptr noundef %rdev, i32 noundef %state_index.0266.i, i32 noundef %mode_index.0262.i, ptr noundef %arrayidx66.i) #11
  %inc.i218 = zext i1 %call67.i to i32
  %spec.select217.i = add i32 %mode_index.0262.i, %inc.i218
  %inc71.i = add nuw nsw i32 %j.0261.i, 1
  %515 = ptrtoint ptr %power_state_offset.0268.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %power_state_offset.0268.i, align 1
  %conv59.i = zext i8 %516 to i32
  %cmp60.i = icmp ult i32 %inc71.i, %conv59.i
  br i1 %cmp60.i, label %for.body62.i.for.body62.i_crit_edge, label %if.end84.i

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body62.i

if.end84.thread.i:                                ; preds = %if.end53.i216
  call void @__sanitizer_cov_trace_pc() #13
  %517 = ptrtoint ptr %default_mclk.i206 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %default_mclk.i206, align 4
  %clock_info75.i = getelementptr %struct.radeon_power_state, ptr %506, i32 %state_index.0266.i, i32 1
  %519 = ptrtoint ptr %clock_info75.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %clock_info75.i, align 4
  %521 = ptrtoint ptr %520 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %518, ptr %520, align 4
  %522 = ptrtoint ptr %default_sclk.i207 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %default_sclk.i207, align 4
  %524 = ptrtoint ptr %power_state28.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %power_state28.i, align 4
  %clock_info81.i = getelementptr %struct.radeon_power_state, ptr %525, i32 %state_index.0266.i, i32 1
  %526 = ptrtoint ptr %clock_info81.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %clock_info81.i, align 4
  %sclk.i219 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %527, i32 0, i32 1
  %528 = ptrtoint ptr %sclk.i219 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %523, ptr %sclk.i219, align 4
  %529 = load ptr, ptr %power_state28.i, align 4
  %num_clock_modes255.i = getelementptr %struct.radeon_power_state, ptr %529, i32 %state_index.0266.i, i32 2
  %530 = ptrtoint ptr %num_clock_modes255.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 1, ptr %num_clock_modes255.i, align 4
  br label %if.then89.i

if.end84.i:                                       ; preds = %for.body62.i
  %531 = ptrtoint ptr %power_state28.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %power_state28.i, align 4
  %num_clock_modes.i220 = getelementptr %struct.radeon_power_state, ptr %532, i32 %state_index.0266.i, i32 2
  %533 = ptrtoint ptr %num_clock_modes.i220 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 %spec.select217.i, ptr %num_clock_modes.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select217.i)
  %tobool88.not.i = icmp eq i32 %spec.select217.i, 0
  br i1 %tobool88.not.i, label %if.end84.i.if.end91.i_crit_edge, label %if.end84.i.if.then89.i_crit_edge

if.end84.i.if.then89.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then89.i

if.end84.i.if.end91.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then89.i:                                      ; preds = %if.end84.i.if.then89.i_crit_edge, %if.end84.thread.i
  %mode_index.2257.i = phi i32 [ 1, %if.end84.thread.i ], [ %spec.select217.i, %if.end84.i.if.then89.i_crit_edge ]
  call fastcc void @radeon_atombios_parse_pplib_non_clock_info(ptr noundef %rdev, i32 noundef %state_index.0266.i, i32 noundef %mode_index.2257.i, ptr noundef %arrayidx.i209) #11
  %inc90.i = add i32 %state_index.0266.i, 1
  br label %if.end91.i

if.end91.i:                                       ; preds = %if.then89.i, %if.end84.i.if.end91.i_crit_edge
  %state_index.1.i221 = phi i32 [ %inc90.i, %if.then89.i ], [ %state_index.0266.i, %if.end84.i.if.end91.i_crit_edge ]
  %534 = ptrtoint ptr %power_state_offset.0268.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %power_state_offset.0268.i, align 1
  %conv93.i = zext i8 %535 to i32
  %add.i = add nuw nsw i32 %conv93.i, 2
  %add.ptr94.i = getelementptr i8, ptr %power_state_offset.0268.i, i32 %add.i
  %inc96.i = add nuw nsw i32 %i.0265.i, 1
  %536 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %add.ptr8.i, align 1
  %conv34.i222 = zext i8 %537 to i32
  %cmp35.i = icmp ult i32 %inc96.i, %conv34.i222
  br i1 %cmp35.i, label %if.end91.i.for.body.i212_crit_edge, label %for.cond98.preheader.i

if.end91.i.for.body.i212_crit_edge:               ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i212

for.body101.i:                                    ; preds = %for.inc115.i.for.body101.i_crit_edge, %for.cond98.preheader.i.for.body101.i_crit_edge
  %i.1274.i = phi i32 [ %inc116.i, %for.inc115.i.for.body101.i_crit_edge ], [ 0, %for.cond98.preheader.i.for.body101.i_crit_edge ]
  %538 = ptrtoint ptr %power_state28.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %power_state28.i, align 4
  %num_clock_modes105.i = getelementptr %struct.radeon_power_state, ptr %539, i32 %i.1274.i, i32 2
  %540 = ptrtoint ptr %num_clock_modes105.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %num_clock_modes105.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %541)
  %cmp106.i = icmp sgt i32 %541, 1
  br i1 %cmp106.i, label %if.then108.i, label %for.body101.i.for.inc115.i_crit_edge

for.body101.i.for.inc115.i_crit_edge:             ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc115.i

if.then108.i:                                     ; preds = %for.body101.i
  call void @__sanitizer_cov_trace_pc() #13
  %clock_info112.i = getelementptr %struct.radeon_power_state, ptr %539, i32 %i.1274.i, i32 1
  %542 = ptrtoint ptr %clock_info112.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %clock_info112.i, align 4
  %flags.i223 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %543, i32 0, i32 3
  %544 = ptrtoint ptr %flags.i223 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %flags.i223, align 4
  %or.i224 = or i32 %545, 1
  store i32 %or.i224, ptr %flags.i223, align 4
  br label %for.inc115.i

for.inc115.i:                                     ; preds = %if.then108.i, %for.body101.i.for.inc115.i_crit_edge
  %inc116.i = add nuw nsw i32 %i.1274.i, 1
  %exitcond.not.i225 = icmp eq i32 %inc116.i, %state_index.1.i221
  br i1 %exitcond.not.i225, label %for.inc115.i.for.end117.i_crit_edge, label %for.inc115.i.for.body101.i_crit_edge

for.inc115.i.for.body101.i_crit_edge:             ; preds = %for.inc115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body101.i

for.inc115.i.for.end117.i_crit_edge:              ; preds = %for.inc115.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end117.i

for.end117.i:                                     ; preds = %for.inc115.i.for.end117.i_crit_edge, %for.cond98.preheader.i.for.end117.i_crit_edge, %if.end32.i.for.end117.i_crit_edge
  %state_index.0.lcssa279.i = phi i32 [ %state_index.1.i221, %for.cond98.preheader.i.for.end117.i_crit_edge ], [ 0, %if.end32.i.for.end117.i_crit_edge ], [ %state_index.1.i221, %for.inc115.i.for.end117.i_crit_edge ]
  %546 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %default_power_state_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %547)
  %cmp119.i = icmp eq i32 %547, -1
  br i1 %cmp119.i, label %if.then121.i, label %for.end117.i.radeon_atombios_parse_power_table_6.exit_crit_edge

for.end117.i.radeon_atombios_parse_power_table_6.exit_crit_edge: ; preds = %for.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_parse_power_table_6.exit

if.then121.i:                                     ; preds = %for.end117.i
  call void @__sanitizer_cov_trace_pc() #13
  %548 = ptrtoint ptr %power_state28.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %power_state28.i, align 4
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 0, ptr %549, align 4
  %551 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 0, ptr %default_power_state_index, align 4
  %552 = load ptr, ptr %power_state28.i, align 4
  %clock_info130.i = getelementptr inbounds %struct.radeon_power_state, ptr %552, i32 0, i32 1
  %553 = ptrtoint ptr %clock_info130.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %clock_info130.i, align 4
  %default_clock_mode.i227 = getelementptr inbounds %struct.radeon_power_state, ptr %552, i32 0, i32 3
  %555 = ptrtoint ptr %default_clock_mode.i227 to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %554, ptr %default_clock_mode.i227, align 4
  br label %radeon_atombios_parse_power_table_6.exit

radeon_atombios_parse_power_table_6.exit:         ; preds = %if.then121.i, %for.end117.i.radeon_atombios_parse_power_table_6.exit_crit_edge, %for.body.i212.radeon_atombios_parse_power_table_6.exit_crit_edge, %if.end7.i.i.i202.radeon_atombios_parse_power_table_6.exit_crit_edge, %if.end.i179.radeon_atombios_parse_power_table_6.exit_crit_edge, %sw.bb5.radeon_atombios_parse_power_table_6.exit_crit_edge
  %retval.0.i228 = phi i32 [ 0, %sw.bb5.radeon_atombios_parse_power_table_6.exit_crit_edge ], [ 0, %if.end.i179.radeon_atombios_parse_power_table_6.exit_crit_edge ], [ 0, %if.end7.i.i.i202.radeon_atombios_parse_power_table_6.exit_crit_edge ], [ %state_index.0.lcssa279.i, %if.then121.i ], [ %state_index.0.lcssa279.i, %for.end117.i.radeon_atombios_parse_power_table_6.exit_crit_edge ], [ %state_index.0266.i, %for.body.i212.radeon_atombios_parse_power_table_6.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i168) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i167) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i166) #11
  br label %if.end

if.end:                                           ; preds = %radeon_atombios_parse_power_table_6.exit, %radeon_atombios_parse_power_table_4_5.exit, %radeon_atombios_parse_power_table_1_3.exit
  %state_index.0 = phi i32 [ %retval.0.i228, %radeon_atombios_parse_power_table_6.exit ], [ %retval.0.i165, %radeon_atombios_parse_power_table_4_5.exit ], [ %retval.0.i, %radeon_atombios_parse_power_table_1_3.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_index.0)
  %cmp = icmp eq i32 %state_index.0, 0
  br i1 %cmp, label %if.end.if.then8_crit_edge, label %if.end.if.end64_crit_edge

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.then.if.then8_crit_edge, %entry.if.then8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %556 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %556, i32 noundef 3520, i32 noundef 32) #14
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %557 = ptrtoint ptr %power_state to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr %call7.i.i, ptr %power_state, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then8.if.end64_crit_edge, label %if.then13

if.then8.if.end64_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then13:                                        ; preds = %if.then8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %558 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i232 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %558, i32 noundef 3520, i32 noundef 44) #14
  %559 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %power_state, align 4
  %clock_info = getelementptr inbounds %struct.radeon_power_state, ptr %560, i32 0, i32 1
  %561 = ptrtoint ptr %clock_info to i32
  call void @__asan_store4_noabort(i32 %561)
  store ptr %call7.i.i.i232, ptr %clock_info, align 4
  %562 = load ptr, ptr %power_state, align 4
  %clock_info20 = getelementptr inbounds %struct.radeon_power_state, ptr %562, i32 0, i32 1
  %563 = ptrtoint ptr %clock_info20 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %clock_info20, align 4
  %tobool21.not = icmp eq ptr %564, null
  br i1 %tobool21.not, label %if.then13.if.end64_crit_edge, label %if.then22

if.then13.if.end64_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then22:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %565 = ptrtoint ptr %562 to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 0, ptr %562, align 4
  %566 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %power_state, align 4
  %num_clock_modes = getelementptr inbounds %struct.radeon_power_state, ptr %567, i32 0, i32 2
  %568 = ptrtoint ptr %num_clock_modes to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 1, ptr %num_clock_modes, align 4
  %default_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %569 = ptrtoint ptr %default_mclk to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %default_mclk, align 4
  %571 = load ptr, ptr %power_state, align 4
  %clock_info32 = getelementptr inbounds %struct.radeon_power_state, ptr %571, i32 0, i32 1
  %572 = ptrtoint ptr %clock_info32 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %clock_info32, align 4
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %570, ptr %573, align 4
  %default_sclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  %575 = ptrtoint ptr %default_sclk to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %default_sclk, align 4
  %577 = load ptr, ptr %power_state, align 4
  %clock_info38 = getelementptr inbounds %struct.radeon_power_state, ptr %577, i32 0, i32 1
  %578 = ptrtoint ptr %clock_info38 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %clock_info38, align 4
  %sclk = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %579, i32 0, i32 1
  %580 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %576, ptr %sclk, align 4
  %581 = load ptr, ptr %power_state, align 4
  %clock_info43 = getelementptr inbounds %struct.radeon_power_state, ptr %581, i32 0, i32 1
  %582 = ptrtoint ptr %clock_info43 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %clock_info43, align 4
  %default_clock_mode = getelementptr inbounds %struct.radeon_power_state, ptr %581, i32 0, i32 3
  %584 = ptrtoint ptr %default_clock_mode to i32
  call void @__asan_store4_noabort(i32 %584)
  store ptr %583, ptr %default_clock_mode, align 4
  %585 = load ptr, ptr %power_state, align 4
  %clock_info51 = getelementptr inbounds %struct.radeon_power_state, ptr %585, i32 0, i32 1
  %586 = ptrtoint ptr %clock_info51 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %clock_info51, align 4
  %voltage = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %587, i32 0, i32 2
  %588 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 0, ptr %voltage, align 4
  %589 = load ptr, ptr %power_state, align 4
  %pcie_lanes = getelementptr inbounds %struct.radeon_power_state, ptr %589, i32 0, i32 7
  %590 = ptrtoint ptr %pcie_lanes to i32
  call void @__asan_store4_noabort(i32 %590)
  store i32 16, ptr %pcie_lanes, align 4
  %591 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 0, ptr %default_power_state_index, align 4
  %592 = load ptr, ptr %power_state, align 4
  %flags = getelementptr inbounds %struct.radeon_power_state, ptr %592, i32 0, i32 4
  %593 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 0, ptr %flags, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then22, %if.then13.if.end64_crit_edge, %if.then8.if.end64_crit_edge, %if.end.if.end64_crit_edge
  %state_index.1 = phi i32 [ 1, %if.then22 ], [ 0, %if.then13.if.end64_crit_edge ], [ 0, %if.then8.if.end64_crit_edge ], [ %state_index.0, %if.end.if.end64_crit_edge ]
  %num_power_states = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 19
  %594 = ptrtoint ptr %num_power_states to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 %state_index.1, ptr %num_power_states, align 8
  %595 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %default_power_state_index, align 4
  %current_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 20
  %597 = ptrtoint ptr %current_power_state_index to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 %596, ptr %current_power_state_index, align 4
  %current_clock_mode_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 21
  %598 = ptrtoint ptr %current_clock_mode_index to i32
  call void @__asan_store4_noabort(i32 %598)
  store i32 0, ptr %current_clock_mode_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %596)
  %cmp72 = icmp sgt i32 %596, -1
  br i1 %cmp72, label %if.then74, label %if.end64.if.end87_crit_edge

if.end64.if.end87_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %power_state76 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %599 = ptrtoint ptr %power_state76 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %power_state76, align 4
  %clock_info80 = getelementptr %struct.radeon_power_state, ptr %600, i32 %596, i32 1
  %601 = ptrtoint ptr %clock_info80 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %clock_info80, align 4
  %voltage83 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %602, i32 0, i32 2, i32 7
  %603 = ptrtoint ptr %voltage83 to i32
  call void @__asan_load2_noabort(i32 %603)
  %604 = load i16, ptr %voltage83, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then74, %if.end64.if.end87_crit_edge
  %.sink = phi i16 [ %604, %if.then74 ], [ 0, %if.end64.if.end87_crit_edge ]
  %605 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 27
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store2_noabort(i32 %606)
  store i16 %.sink, ptr %605, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_clock_dividers(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %clock_type, i32 noundef %clock, i1 noundef zeroext %strobe_mode, ptr noundef %dividers) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.get_clock_dividers, align 4
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_INPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %2 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %3 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %4 = call ptr @memset(ptr %args, i32 0, i32 12)
  %5 = call ptr @memset(ptr %dividers, i32 0, i32 32)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %7, i32 noundef 60, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %9, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %if.end.sw.bb6_crit_edge
    i8 3, label %if.end.sw.bb6_crit_edge257
    i8 5, label %if.end.sw.bb6_crit_edge258
    i8 4, label %sw.bb135
    i8 6, label %sw.bb147
  ]

if.end.sw.bb6_crit_edge258:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.sw.bb6_crit_edge257:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %clock_type, ptr %0, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %clock)
  %13 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %args, align 4
  %14 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode_info, align 4
  %call3 = call i32 @atom_execute_table(ptr noundef %15, i32 noundef 60, ptr noundef nonnull %args) #11
  %ucPostDiv = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS, ptr %args, i32 0, i32 4
  %16 = ptrtoint ptr %ucPostDiv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucPostDiv, align 1
  %conv4 = zext i8 %17 to i32
  %18 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv4, ptr %dividers, align 4
  %ucFbDiv = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS, ptr %args, i32 0, i32 3
  %19 = ptrtoint ptr %ucFbDiv to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucFbDiv, align 2
  %conv5 = zext i8 %20 to i32
  %21 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv5, ptr %21, align 4
  %enable_post_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %23 = ptrtoint ptr %enable_post_div to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enable_post_div, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge257, %if.end.sw.bb6_crit_edge258
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %24 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %25)
  %cmp = icmp ult i32 %25, 36
  br i1 %cmp, label %if.then8, label %if.else39

if.then8:                                         ; preds = %sw.bb6
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %clock_type, ptr %0, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %clock)
  %28 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %args, align 4
  %29 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mode_info, align 4
  %call13 = call i32 @atom_execute_table(ptr noundef %30, i32 noundef 60, ptr noundef nonnull %args) #11
  %ucPostDiv14 = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V2, ptr %args, i32 0, i32 3
  %31 = ptrtoint ptr %ucPostDiv14 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucPostDiv14, align 1
  %conv15 = zext i8 %32 to i32
  %33 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv15, ptr %dividers, align 4
  %usFbDiv = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V2, ptr %args, i32 0, i32 2
  %34 = ptrtoint ptr %usFbDiv to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usFbDiv, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv17 = zext i16 %36 to i32
  %37 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv17, ptr %37, align 4
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %0, align 4
  %conv19 = zext i8 %40 to i32
  %ref_div = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %41 = ptrtoint ptr %ref_div to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv19, ptr %ref_div, align 4
  %42 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %43)
  %cmp21 = icmp eq i32 %43, 35
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %args, align 4
  %enable_post_div26 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = ptrtoint ptr %enable_post_div26 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %enable_post_div26, align 4
  %49 = lshr i32 %45, 1
  %.lobit256 = and i32 %49, 1
  %vco_mode = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %50 = ptrtoint ptr %vco_mode to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.lobit256, ptr %vco_mode, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %enable_post_div36 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %51 = trunc i16 %36 to i8
  %52 = and i8 %51, 1
  %53 = ptrtoint ptr %enable_post_div36 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %enable_post_div36, align 4
  br label %cleanup

if.else39:                                        ; preds = %sw.bb6
  %conv40 = zext i8 %clock_type to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %clock_type)
  %cmp41 = icmp eq i8 %clock_type, 2
  br i1 %cmp41, label %if.then43, label %if.else80

if.then43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %clock, 33554432
  %54 = call i32 @llvm.bswap.i32(i32 %or)
  %55 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %args, align 4
  %56 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mode_info, align 4
  %call47 = call i32 @atom_execute_table(ptr noundef %57, i32 noundef 60, ptr noundef nonnull %args) #11
  %ucPostDiv48 = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V3, ptr %args, i32 0, i32 2
  %58 = ptrtoint ptr %ucPostDiv48 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ucPostDiv48, align 1
  %conv49 = zext i8 %59 to i32
  %60 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv49, ptr %dividers, align 4
  %ucCntlFlag = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V3, ptr %args, i32 0, i32 3
  %61 = ptrtoint ptr %ucCntlFlag to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ucCntlFlag, align 2
  %63 = and i8 %62, 1
  %enable_post_div56 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %64 = ptrtoint ptr %enable_post_div56 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %enable_post_div56, align 4
  %enable_dithen = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 4
  %65 = lshr i8 %62, 2
  %.lobit254 = and i8 %65, 1
  %66 = xor i8 %.lobit254, 1
  %67 = ptrtoint ptr %enable_dithen to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %enable_dithen, align 1
  %usFbDiv65 = getelementptr inbounds %struct._ATOM_S_MPLL_FB_DIVIDER, ptr %args, i32 0, i32 1
  %68 = ptrtoint ptr %usFbDiv65 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %usFbDiv65, align 2
  %70 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load = load i32, ptr %70, align 4
  %72 = and i16 %69, -241
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %bf.value = zext i16 %73 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 14
  %bf.clear = and i32 %bf.load, -67108864
  %bf.set = or i32 %bf.shl, %bf.clear
  %74 = ptrtoint ptr %args to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %args, align 4
  %76 = and i16 %75, -193
  %77 = call i16 @llvm.bswap.i16(i16 %76)
  %bf.value69 = zext i16 %77 to i32
  %bf.set71 = or i32 %bf.set, %bf.value69
  %78 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %bf.set71, ptr %70, align 4
  %79 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %0, align 4
  %conv72 = zext i8 %80 to i32
  %ref_div73 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %81 = ptrtoint ptr %ref_div73 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv72, ptr %ref_div73, align 4
  %82 = lshr i8 %62, 1
  %.lobit255 = and i8 %82, 1
  %83 = zext i8 %.lobit255 to i32
  %vco_mode79 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %84 = ptrtoint ptr %vco_mode79 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %vco_mode79, align 4
  br label %cleanup

if.else80:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %25)
  %cmp82 = icmp ugt i32 %25, 51
  br i1 %cmp82, label %if.else80.cleanup_crit_edge, label %if.end85

if.else80.cleanup_crit_edge:                      ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end85:                                         ; preds = %if.else80
  %shl87 = shl nuw i32 %conv40, 24
  %or88 = or i32 %shl87, %clock
  %85 = call i32 @llvm.bswap.i32(i32 %or88)
  %86 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %args, align 4
  br i1 %strobe_mode, label %if.then90, label %if.end85.if.end91_crit_edge

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %87 = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V5, ptr %args, i32 0, i32 3
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %87, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.end85.if.end91_crit_edge
  %89 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mode_info, align 4
  %call94 = call i32 @atom_execute_table(ptr noundef %90, i32 noundef 60, ptr noundef nonnull %args) #11
  %ucPostDiv95 = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V5, ptr %args, i32 0, i32 2
  %91 = ptrtoint ptr %ucPostDiv95 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ucPostDiv95, align 1
  %conv96 = zext i8 %92 to i32
  %93 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv96, ptr %dividers, align 4
  %94 = getelementptr inbounds %struct._COMPUTE_MEMORY_ENGINE_PLL_PARAMETERS_V5, ptr %args, i32 0, i32 3
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 2
  %97 = and i8 %96, 1
  %enable_post_div103 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 3
  %98 = ptrtoint ptr %enable_post_div103 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %enable_post_div103, align 4
  %enable_dithen110 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 4
  %99 = lshr i8 %96, 2
  %.lobit = and i8 %99, 1
  %100 = xor i8 %.lobit, 1
  %101 = ptrtoint ptr %enable_dithen110 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %enable_dithen110, align 1
  %usFbDiv112 = getelementptr inbounds %struct._ATOM_S_MPLL_FB_DIVIDER, ptr %args, i32 0, i32 1
  %102 = ptrtoint ptr %usFbDiv112 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %usFbDiv112, align 2
  %104 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load114 = load i32, ptr %104, align 4
  %106 = and i16 %103, -241
  %107 = call i16 @llvm.bswap.i16(i16 %106)
  %bf.value115 = zext i16 %107 to i32
  %bf.shl116 = shl nuw nsw i32 %bf.value115, 14
  %bf.clear117 = and i32 %bf.load114, -67108864
  %bf.set118 = or i32 %bf.shl116, %bf.clear117
  %108 = ptrtoint ptr %args to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %args, align 4
  %110 = and i16 %109, -193
  %111 = call i16 @llvm.bswap.i16(i16 %110)
  %bf.value122 = zext i16 %111 to i32
  %bf.set124 = or i32 %bf.set118, %bf.value122
  %112 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %bf.set124, ptr %104, align 4
  %113 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %0, align 4
  %conv126 = zext i8 %114 to i32
  %ref_div127 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %115 = ptrtoint ptr %ref_div127 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv126, ptr %ref_div127, align 4
  %116 = lshr i8 %96, 1
  %.lobit252 = and i8 %116, 1
  %117 = zext i8 %.lobit252 to i32
  %vco_mode132 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 5
  %118 = ptrtoint ptr %vco_mode132 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %vco_mode132, align 4
  br label %cleanup

sw.bb135:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %119 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load136 = load i32, ptr %args, align 4
  %120 = and i32 %clock, -256
  %121 = call i32 @llvm.bswap.i32(i32 %120)
  %bf.clear138 = and i32 %bf.load136, -16777216
  %bf.set139 = or i32 %bf.clear138, %121
  %122 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %bf.set139, ptr %args, align 4
  %123 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mode_info, align 4
  %call142 = call i32 @atom_execute_table(ptr noundef %124, i32 noundef 60, ptr noundef nonnull %args) #11
  %125 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %125)
  %bf.load143 = load i32, ptr %args, align 4
  %bf.lshr = lshr i32 %bf.load143, 24
  %126 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %bf.lshr, ptr %dividers, align 4
  %post_divider = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %127 = ptrtoint ptr %post_divider to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %bf.lshr, ptr %post_divider, align 4
  %bf.clear146 = and i32 %bf.load143, 16777215
  %128 = call i32 @llvm.bswap.i32(i32 %bf.clear146)
  %real_clock = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 6
  %129 = ptrtoint ptr %real_clock to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %real_clock, align 4
  br label %cleanup

sw.bb147:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv148 = zext i8 %clock_type to i32
  %bf.shl152 = shl nuw i32 %conv148, 24
  %130 = and i32 %clock, -256
  %131 = call i32 @llvm.bswap.i32(i32 %130)
  %bf.set159 = or i32 %131, %bf.shl152
  %132 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %bf.set159, ptr %args, align 4
  %133 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mode_info, align 4
  %call162 = call i32 @atom_execute_table(ptr noundef %134, i32 noundef 60, ptr noundef nonnull %args) #11
  %usFbDiv163 = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 1, i32 1
  %135 = ptrtoint ptr %usFbDiv163 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %usFbDiv163, align 2
  %137 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %bf.load165 = load i32, ptr %137, align 4
  %139 = and i16 %136, -241
  %140 = call i16 @llvm.bswap.i16(i16 %139)
  %bf.value166 = zext i16 %140 to i32
  %bf.shl167 = shl nuw nsw i32 %bf.value166, 14
  %bf.clear168 = and i32 %bf.load165, -67108864
  %bf.set169 = or i32 %bf.shl167, %bf.clear168
  %141 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %0, align 4
  %143 = and i16 %142, -193
  %144 = call i16 @llvm.bswap.i16(i16 %143)
  %bf.value174 = zext i16 %144 to i32
  %bf.set176 = or i32 %bf.set169, %bf.value174
  %145 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %bf.set176, ptr %137, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %1, align 4
  %conv177 = zext i8 %147 to i32
  %ref_div178 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 2
  %148 = ptrtoint ptr %ref_div178 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %conv177, ptr %ref_div178, align 4
  %ucPllPostDiv = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 3
  %149 = ptrtoint ptr %ucPllPostDiv to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ucPllPostDiv, align 1
  %conv179 = zext i8 %150 to i32
  %151 = ptrtoint ptr %dividers to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv179, ptr %dividers, align 4
  %ucPllCntlFlag = getelementptr inbounds %struct._COMPUTE_GPU_CLOCK_OUTPUT_PARAMETERS_V1_6, ptr %args, i32 0, i32 4
  %152 = ptrtoint ptr %ucPllCntlFlag to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ucPllCntlFlag, align 2
  %conv181 = zext i8 %153 to i32
  %flags = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 8
  %154 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %conv181, ptr %flags, align 4
  %155 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %155)
  %bf.load183 = load i32, ptr %args, align 4
  %bf.clear184 = and i32 %bf.load183, 16777215
  %156 = call i32 @llvm.bswap.i32(i32 %bf.clear184)
  %real_clock185 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 6
  %157 = ptrtoint ptr %real_clock185 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %real_clock185, align 4
  %bf.lshr188 = lshr i32 %bf.load183, 24
  %post_divider189 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 7
  %158 = ptrtoint ptr %post_divider189 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %bf.lshr188, ptr %post_divider189, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb147, %sw.bb135, %if.end91, %if.else80.cleanup_crit_edge, %if.then43, %if.else, %if.then23, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else80.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then23 ], [ 0, %if.end91 ], [ 0, %if.then43 ], [ 0, %sw.bb147 ], [ 0, %sw.bb135 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_cmd_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_memory_pll_dividers(ptr nocapture noundef readonly %rdev, i32 noundef %clock, i1 noundef zeroext %strobe_mode, ptr nocapture noundef %mpll_param) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, align 8
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds %struct._COMPUTE_MEMORY_CLOCK_PARAM_PARAMETERS_V2_1, ptr %args, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %args, align 8
  %7 = call ptr @memset(ptr %mpll_param, i32 0, i32 32)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %9, i32 noundef 70, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cond36 = icmp eq i8 %11, 2
  br i1 %cond36, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cond37 = icmp eq i8 %13, 1
  br i1 %cond37, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call i32 @llvm.bswap.i32(i32 %clock)
  %15 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %args, align 8
  %spec.select = zext i1 %strobe_mode to i8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select, ptr %2, align 2
  %17 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mode_info, align 4
  %call9 = call i32 @atom_execute_table(ptr noundef %18, i32 noundef 70, ptr noundef nonnull %args) #11
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %args, align 8
  %21 = ptrtoint ptr %mpll_param to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %mpll_param, align 4
  %22 = and i16 %20, -241
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %bf.value = zext i16 %23 to i32
  %bf.shl = shl nuw nsw i32 %bf.value, 12
  %bf.clear = and i32 %bf.load, -16777216
  %bf.set = or i32 %bf.shl, %bf.clear
  %usFbDiv = getelementptr inbounds %struct._ATOM_S_MPLL_FB_DIVIDER, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %usFbDiv to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %usFbDiv, align 2
  %26 = and i16 %25, -241
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %bf.value13 = zext i16 %27 to i32
  %bf.set15 = or i32 %bf.set, %bf.value13
  %28 = ptrtoint ptr %mpll_param to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bf.set15, ptr %mpll_param, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  %conv16 = zext i8 %30 to i32
  %post_div = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 1
  %31 = ptrtoint ptr %post_div to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv16, ptr %post_div, align 4
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %0, align 4
  %conv17 = zext i8 %33 to i32
  %dll_speed = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 3
  %34 = ptrtoint ptr %dll_speed to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv17, ptr %dll_speed, align 4
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 1
  %conv18 = zext i8 %36 to i32
  %bwcntl = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 2
  %37 = ptrtoint ptr %bwcntl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv18, ptr %bwcntl, align 4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 2
  %40 = and i8 %39, 3
  %and = zext i8 %40 to i32
  %vco_mode = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 4
  %41 = ptrtoint ptr %vco_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and, ptr %vco_mode, align 4
  %42 = lshr i8 %39, 2
  %.lobit = and i8 %42, 1
  %43 = zext i8 %.lobit to i32
  %yclk_sel = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 5
  %44 = ptrtoint ptr %yclk_sel to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %yclk_sel, align 4
  %45 = lshr i8 %39, 3
  %.lobit49 = and i8 %45, 1
  %46 = zext i8 %.lobit49 to i32
  %qdr = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 6
  %47 = ptrtoint ptr %qdr to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %qdr, align 4
  %48 = lshr i8 %39, 4
  %.lobit50 = and i8 %48, 1
  %49 = zext i8 %.lobit50 to i32
  %half_rate = getelementptr inbounds %struct.atom_mpll_param, ptr %mpll_param, i32 0, i32 7
  %50 = ptrtoint ptr %half_rate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %half_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_set_clock_gating(ptr nocapture noundef readonly %rdev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._DYNAMIC_CLOCK_GATING_PARAMETERS, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %conv = trunc i32 %enable to i8
  %0 = getelementptr inbounds i8, ptr %args, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 3)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %args, align 1
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %3 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %4, i32 noundef 13, ptr noundef nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_engine_clock(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._GET_ENGINE_CLOCK_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %args, align 4, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %1 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %2, i32 noundef 48, ptr noundef nonnull %args) #11
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_memory_clock(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._GET_MEMORY_CLOCK_PARAMETERS, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %args, align 4, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %1 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %2, i32 noundef 47, ptr noundef nonnull %args) #11
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_set_engine_clock(ptr nocapture noundef readonly %rdev, i32 noundef %eng_clock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %eng_clock)
  %1 = getelementptr inbounds i8, ptr %args, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %args, align 4
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %5, i32 noundef 10, ptr noundef nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_set_memory_clock(ptr nocapture noundef readonly %rdev, i32 noundef %mem_clock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_MEMORY_CLOCK_PS_ALLOCATION, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = getelementptr inbounds i8, ptr %args, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 -1, ptr %0, align 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %mem_clock)
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %args, align 4
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %7, i32 noundef 11, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_set_engine_dram_timings(ptr nocapture noundef readonly %rdev, i32 noundef %eng_clock, i32 noundef %mem_clock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = getelementptr inbounds i8, ptr %args, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %and = and i32 %eng_clock, 16777215
  %or = or i32 %and, 33554432
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mem_clock)
  %tobool.not = icmp eq i32 %mem_clock, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds %struct._SET_ENGINE_CLOCK_PS_ALLOCATION, ptr %args, i32 0, i32 1
  %and1 = and i32 %mem_clock, 16777215
  %5 = tail call i32 @llvm.bswap.i32(i32 %and1)
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %8, i32 noundef 63, ptr noundef nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_update_memory_dll(ptr nocapture noundef readonly %rdev, i32 noundef %mem_clock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %mem_clock)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %args, align 4
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %2 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %3, i32 noundef 63, ptr noundef nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_set_ac_timing(ptr nocapture noundef readonly %rdev, i32 noundef %mem_clock) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct._SET_MEMORY_CLOCK_PS_ALLOCATION, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %or = or i32 %mem_clock, 16777216
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %1 = getelementptr inbounds i8, ptr %args, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 -1, ptr %1, align 4
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %args, align 4
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %5, i32 noundef 63, ptr noundef nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_set_voltage(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %voltage_level, i8 noundef zeroext %voltage_type) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.set_voltage, align 1
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 2
  %2 = call ptr @memset(ptr %args, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %3 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %4 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %conv = trunc i16 %voltage_level to i8
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %6, i32 noundef 67, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -255, i16 %voltage_level)
  %cmp = icmp ne i16 %voltage_level, -255
  %7 = and i1 %cmp, %call
  br i1 %7, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %entry
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %9, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %voltage_type, ptr %args, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %0, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %1, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %voltage_type, ptr %args, align 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %0, align 1
  %16 = call i16 @llvm.bswap.i16(i16 %voltage_level)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %1, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %voltage_type, ptr %args, align 1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %0, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %voltage_level)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %1, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = zext i8 %9 to i32
  %22 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %frev, align 1
  %conv13 = zext i8 %23 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv13, i32 noundef %conv5) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb6, %sw.bb
  %24 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode_info, align 4
  %call17 = call i32 @atom_execute_table(ptr noundef %25, i32 noundef 67, ptr noundef nonnull %args) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_max_vddc(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, i16 noundef zeroext %voltage_id, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.set_voltage, align 1
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 2
  %2 = call ptr @memset(ptr %args, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %3 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %4 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %6, i32 noundef 67, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %crev, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %8, label %sw.default [
    i8 1, label %if.end.cleanup_crit_edge
    i8 2, label %sw.bb1
    i8 3, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %args, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %0, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %voltage_type, ptr %args, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 6, ptr %0, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %voltage_id)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %8 to i32
  %15 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %frev, align 1
  %conv14 = zext i8 %16 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv14, i32 noundef %conv) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb1
  %.sink = phi i16 [ %14, %sw.bb6 ], [ 0, %sw.bb1 ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %.sink, ptr %1, align 1
  %18 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mode_info, align 4
  %call12 = call i32 @atom_execute_table(ptr noundef %19, i32 noundef 67, ptr noundef nonnull %args) #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %1, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_leakage_vddc_based_on_leakage_idx(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %voltage, i16 noundef zeroext %leakage_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_atom_get_max_vddc(ptr noundef %rdev, i8 noundef zeroext 1, i16 noundef zeroext %leakage_idx, ptr noundef %voltage)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_leakage_id_from_vbios(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %leakage_id) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.set_voltage, align 1
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %args, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %7, i32 noundef 67, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  %.off = add i8 %9, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %args, align 1
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %0, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 0, ptr %1, align 1
  %13 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode_info, align 4
  %call3 = call i32 @atom_execute_table(ptr noundef %14, i32 noundef 67, ptr noundef nonnull %args) #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %1, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %18 = ptrtoint ptr %leakage_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %leakage_id, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %9 to i32
  %19 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frev, align 1
  %conv5 = zext i8 %20 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv5, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_leakage_vddc_based_on_leakage_params(ptr nocapture noundef readonly %rdev, ptr nocapture noundef writeonly %vddc, ptr nocapture noundef writeonly %vddci, i16 noundef zeroext %virtual_voltage_id, i16 noundef zeroext %vbios_voltage_id) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %4 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %vddc, align 2
  %5 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %vddci, align 2
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %7, i32 noundef 31, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios, align 4
  %12 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv
  %14 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %frev, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %15, label %sw.default123 [
    i8 1, label %if.end.cleanup_crit_edge
    i8 2, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %17 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cond = icmp eq i8 %18, 1
  br i1 %cond, label %sw.bb6, label %sw.default

sw.bb6:                                           ; preds = %sw.bb4
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %20)
  %cmp = icmp ult i16 %20, 17
  br i1 %cmp, label %sw.bb6.cleanup_crit_edge, label %if.end10

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  %usLeakageBinArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 2
  %21 = ptrtoint ptr %usLeakageBinArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usLeakageBinArrayOffset, align 1
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv16 = zext i16 %23 to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %conv16
  %usElbVDDC_IdArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 4
  %24 = ptrtoint ptr %usElbVDDC_IdArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usElbVDDC_IdArrayOffset, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv23 = zext i16 %26 to i32
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 %conv23
  %usElbVDDC_LevelArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 5
  %27 = ptrtoint ptr %usElbVDDC_LevelArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %usElbVDDC_LevelArrayOffset, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv30 = zext i16 %29 to i32
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %conv30
  %usElbVDDCI_IdArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 7
  %30 = ptrtoint ptr %usElbVDDCI_IdArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usElbVDDCI_IdArrayOffset, align 1
  %32 = call i16 @llvm.bswap.i16(i16 %31)
  %conv37 = zext i16 %32 to i32
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %conv37
  %usElbVDDCI_LevelArrayOffset = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 8
  %33 = ptrtoint ptr %usElbVDDCI_LevelArrayOffset to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %usElbVDDCI_LevelArrayOffset, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv44 = zext i16 %35 to i32
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %conv44
  %ucElbVDDC_Num = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 3
  %36 = ptrtoint ptr %ucElbVDDC_Num to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ucElbVDDC_Num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp47.not = icmp eq i8 %37, 0
  br i1 %cmp47.not, label %if.end10.if.end78_crit_edge, label %for.cond.preheader

if.end10.if.end78_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

for.cond.preheader:                               ; preds = %if.end10
  %conv51 = zext i8 %37 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc75.for.body_crit_edge, %for.cond.preheader
  %i.0184 = phi i32 [ 0, %for.cond.preheader ], [ %inc76, %for.inc75.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %add.ptr24, i32 %i.0184
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %virtual_voltage_id)
  %cmp56 = icmp eq i16 %39, %virtual_voltage_id
  br i1 %cmp56, label %for.cond59.preheader, label %for.inc75

for.cond59.preheader:                             ; preds = %for.body
  %ucLeakageBinNum = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 1
  %40 = ptrtoint ptr %ucLeakageBinNum to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucLeakageBinNum, align 1
  %conv60 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp61185.not = icmp eq i8 %41, 0
  br i1 %cmp61185.not, label %for.cond59.preheader.if.end78_crit_edge, label %for.cond59.preheader.for.body63_crit_edge

for.cond59.preheader.for.body63_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body63

for.cond59.preheader.if.end78_crit_edge:          ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

for.body63:                                       ; preds = %for.inc.for.body63_crit_edge, %for.cond59.preheader.for.body63_crit_edge
  %j.0186 = phi i32 [ %inc, %for.inc.for.body63_crit_edge ], [ 0, %for.cond59.preheader.for.body63_crit_edge ]
  %arrayidx65 = getelementptr i16, ptr %add.ptr17, i32 %j.0186
  %42 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx65, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %vbios_voltage_id)
  %cmp67.not = icmp ult i16 %43, %vbios_voltage_id
  br i1 %cmp67.not, label %for.inc, label %if.then69

if.then69:                                        ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %j.0186, %conv51
  %add = add i32 %mul, %i.0184
  %arrayidx72 = getelementptr i16, ptr %add.ptr31, i32 %add
  %44 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx72, align 2
  %46 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %vddc, align 2
  br label %if.end78

for.inc:                                          ; preds = %for.body63
  %inc = add nuw nsw i32 %j.0186, 1
  %exitcond196.not = icmp eq i32 %inc, %conv60
  br i1 %exitcond196.not, label %for.inc.if.end78_crit_edge, label %for.inc.for.body63_crit_edge

for.inc.for.body63_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body63

for.inc.if.end78_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

for.inc75:                                        ; preds = %for.body
  %inc76 = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc76, %conv51
  br i1 %exitcond.not, label %for.inc75.if.end78_crit_edge, label %for.inc75.for.body_crit_edge

for.inc75.for.body_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc75.if.end78_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.end78:                                         ; preds = %for.inc75.if.end78_crit_edge, %for.inc.if.end78_crit_edge, %if.then69, %for.cond59.preheader.if.end78_crit_edge, %if.end10.if.end78_crit_edge
  %ucElbVDDCI_Num = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 6
  %47 = ptrtoint ptr %ucElbVDDCI_Num to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ucElbVDDCI_Num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp80.not = icmp eq i8 %48, 0
  br i1 %cmp80.not, label %if.end78.cleanup_crit_edge, label %for.cond83.preheader

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond83.preheader:                             ; preds = %if.end78
  %conv85 = zext i8 %48 to i32
  br label %for.body88

for.body88:                                       ; preds = %for.inc117.for.body88_crit_edge, %for.cond83.preheader
  %i.1187 = phi i32 [ 0, %for.cond83.preheader ], [ %inc118, %for.inc117.for.body88_crit_edge ]
  %arrayidx89 = getelementptr i16, ptr %add.ptr38, i32 %i.1187
  %49 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx89, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %virtual_voltage_id)
  %cmp92 = icmp eq i16 %50, %virtual_voltage_id
  br i1 %cmp92, label %for.cond95.preheader, label %for.inc117

for.cond95.preheader:                             ; preds = %for.body88
  %ucLeakageBinNum96 = getelementptr inbounds %struct._ATOM_ASIC_PROFILING_INFO_V2_1, ptr %add.ptr, i32 0, i32 1
  %51 = ptrtoint ptr %ucLeakageBinNum96 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucLeakageBinNum96, align 1
  %conv97 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp98188.not = icmp eq i8 %52, 0
  br i1 %cmp98188.not, label %for.cond95.preheader.cleanup_crit_edge, label %for.cond95.preheader.for.body100_crit_edge

for.cond95.preheader.for.body100_crit_edge:       ; preds = %for.cond95.preheader
  br label %for.body100

for.cond95.preheader.cleanup_crit_edge:           ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body100:                                      ; preds = %for.inc113.for.body100_crit_edge, %for.cond95.preheader.for.body100_crit_edge
  %j.1189 = phi i32 [ %inc114, %for.inc113.for.body100_crit_edge ], [ 0, %for.cond95.preheader.for.body100_crit_edge ]
  %arrayidx102 = getelementptr i16, ptr %add.ptr17, i32 %j.1189
  %53 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx102, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %vbios_voltage_id)
  %cmp104.not = icmp ult i16 %54, %vbios_voltage_id
  br i1 %cmp104.not, label %for.inc113, label %if.then106

if.then106:                                       ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #13
  %mul109 = mul i32 %j.1189, %conv85
  %add110 = add i32 %mul109, %i.1187
  %arrayidx111 = getelementptr i16, ptr %add.ptr45, i32 %add110
  %55 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx111, align 2
  %57 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %vddci, align 2
  br label %cleanup

for.inc113:                                       ; preds = %for.body100
  %inc114 = add nuw nsw i32 %j.1189, 1
  %exitcond198.not = icmp eq i32 %inc114, %conv97
  br i1 %exitcond198.not, label %for.inc113.cleanup_crit_edge, label %for.inc113.for.body100_crit_edge

for.inc113.for.body100_crit_edge:                 ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body100

for.inc113.cleanup_crit_edge:                     ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc117:                                       ; preds = %for.body88
  %inc118 = add nuw nsw i32 %i.1187, 1
  %exitcond197.not = icmp eq i32 %inc118, %conv85
  br i1 %exitcond197.not, label %for.inc117.cleanup_crit_edge, label %for.inc117.for.body88_crit_edge

for.inc117.for.body88_crit_edge:                  ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body88

for.inc117.cleanup_crit_edge:                     ; preds = %for.inc117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = zext i8 %18 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %conv5) #11
  br label %cleanup

sw.default123:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %15 to i32
  %58 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %crev, align 1
  %conv125 = zext i8 %59 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv3, i32 noundef %conv125) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default123, %sw.default, %for.inc117.cleanup_crit_edge, %for.inc113.cleanup_crit_edge, %if.then106, %for.cond95.preheader.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default123 ], [ -22, %sw.default ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ 0, %if.then106 ], [ 0, %if.end78.cleanup_crit_edge ], [ 0, %for.cond95.preheader.cleanup_crit_edge ], [ 0, %for.inc113.cleanup_crit_edge ], [ 0, %for.inc117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_voltage_evv(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %virtual_voltage_id, ptr nocapture noundef writeonly %voltage) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.get_voltage_info, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dyn_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %0 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dyn_state, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #11
  %2 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %args, i32 0, i32 1
  %3 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %args, i32 0, i32 2
  %4 = getelementptr inbounds %struct._GET_VOLTAGE_INFO_INPUT_PARAMETER_V1_2, ptr %args, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %5 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entries, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry_id.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %v = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %6, i32 %entry_id.034, i32 1
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %virtual_voltage_id)
  %cmp7 = icmp eq i16 %8, %virtual_voltage_id
  br i1 %cmp7, label %if.end12, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %entry_id.034, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %args, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %2, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %virtual_voltage_id)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %3, align 2
  %13 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entries, align 4
  %arrayidx18 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %14, i32 %entry_id.034
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx18, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %4, align 2
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %19 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_info, align 4
  %call = call i32 @atom_execute_table(ptr noundef %20, i32 noundef 80, ptr noundef nonnull %args) #11
  %21 = ptrtoint ptr %args to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %args, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %24 = ptrtoint ptr %voltage to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_voltage_gpio_settings(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %voltage_level, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %gpio_value, ptr nocapture noundef writeonly %gpio_mask) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.set_voltage, align 4
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %args, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %4 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %5 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %crev, align 1, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_cmd_header(ptr noundef %7, i32 noundef 67, ptr noundef nonnull %frev, ptr noundef nonnull %crev) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crev, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %9, label %sw.default [
    i8 1, label %if.end.cleanup_crit_edge
    i8 2, label %sw.bb1
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %voltage_type, ptr %args, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %0, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %voltage_level)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %1, align 2
  %15 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mode_info, align 4
  %call4 = call i32 @atom_execute_table(ptr noundef %16, i32 noundef 67, ptr noundef nonnull %args) #11
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %args, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %gpio_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %gpio_mask, align 4
  %21 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %voltage_type, ptr %args, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %0, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %13, ptr %1, align 2
  %24 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mode_info, align 4
  %call10 = call i32 @atom_execute_table(ptr noundef %25, i32 noundef 67, ptr noundef nonnull %args) #11
  %26 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %args, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %gpio_value to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %gpio_value, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %9 to i32
  %30 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %frev, align 1
  %conv11 = zext i8 %31 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv11, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb1 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_atom_is_voltage_gpio(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %13, label %sw.default30 [
    i8 1, label %if.then.sw.bb_crit_edge
    i8 2, label %if.then.sw.bb_crit_edge101
    i8 3, label %sw.bb21
  ]

if.then.sw.bb_crit_edge101:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge101
  %15 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %crev, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %16, label %sw.default [
    i8 1, label %sw.bb5
    i8 2, label %sw.bb10
  ]

sw.bb5:                                           ; preds = %sw.bb
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19) #11
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp18.i = icmp ugt i16 %20, 4
  br i1 %cmp18.i, label %sw.bb5.while.body.i_crit_edge, label %sw.bb5.if.end32_crit_edge

sw.bb5.if.end32_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.bb5.while.body.i_crit_edge:                    ; preds = %sw.bb5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb5.while.body.i_crit_edge
  %offset.019.i = phi i32 [ %add7.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.019.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %voltage_type)
  %cmp4.i = icmp eq i8 %22, %voltage_type
  br i1 %cmp4.i, label %atom_lookup_voltage_object_v1.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %asFormula.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3
  %ucNumOfVoltageEntries.i = getelementptr inbounds %struct._ATOM_VOLTAGE_FORMULA, ptr %asFormula.i, i32 0, i32 2
  %23 = ptrtoint ptr %ucNumOfVoltageEntries.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucNumOfVoltageEntries.i, align 1
  %conv6.i = zext i8 %24 to i32
  %add.i = add i32 %offset.019.i, 26
  %add7.i = add i32 %add.i, %conv6.i
  %cmp.i = icmp ult i32 %add7.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end32_crit_edge

cleanup.i.if.end32_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_lookup_voltage_object_v1.exit:               ; preds = %while.body.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %atom_lookup_voltage_object_v1.exit.if.end32_crit_edge, label %land.lhs.true

atom_lookup_voltage_object_v1.exit.if.end32_crit_edge: ; preds = %atom_lookup_voltage_object_v1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %atom_lookup_voltage_object_v1.exit
  %asControl = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 2
  %25 = ptrtoint ptr %asControl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %asControl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %26)
  %cmp = icmp eq i8 %26, -128
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %add.ptr, align 1
  %29 = call i16 @llvm.bswap.i16(i16 %28) #11
  %conv.i47 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %29)
  %cmp18.i48 = icmp ugt i16 %29, 4
  br i1 %cmp18.i48, label %sw.bb10.while.body.i52_crit_edge, label %sw.bb10.if.end32_crit_edge

sw.bb10.if.end32_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.bb10.while.body.i52_crit_edge:                 ; preds = %sw.bb10
  br label %while.body.i52

while.body.i52:                                   ; preds = %cleanup.i58.while.body.i52_crit_edge, %sw.bb10.while.body.i52_crit_edge
  %offset.019.i49 = phi i32 [ %add7.i56, %cleanup.i58.while.body.i52_crit_edge ], [ 4, %sw.bb10.while.body.i52_crit_edge ]
  %add.ptr.i50 = getelementptr i8, ptr %add.ptr, i32 %offset.019.i49
  %30 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr.i50, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %voltage_type)
  %cmp4.i51 = icmp eq i8 %31, %voltage_type
  br i1 %cmp4.i51, label %atom_lookup_voltage_object_v2.exit, label %cleanup.i58

cleanup.i58:                                      ; preds = %while.body.i52
  %asFormula.i53 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i50, i32 0, i32 3
  %32 = ptrtoint ptr %asFormula.i53 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %asFormula.i53, align 1
  %conv6.i54 = zext i8 %33 to i32
  %mul.i = shl nuw nsw i32 %conv6.i54, 2
  %add.i55 = add i32 %offset.019.i49, 22
  %add7.i56 = add i32 %add.i55, %mul.i
  %cmp.i57 = icmp ult i32 %add7.i56, %conv.i47
  br i1 %cmp.i57, label %cleanup.i58.while.body.i52_crit_edge, label %cleanup.i58.if.end32_crit_edge

cleanup.i58.if.end32_crit_edge:                   ; preds = %cleanup.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

cleanup.i58.while.body.i52_crit_edge:             ; preds = %cleanup.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i52

atom_lookup_voltage_object_v2.exit:               ; preds = %while.body.i52
  %tobool12.not = icmp eq ptr %add.ptr.i50, null
  br i1 %tobool12.not, label %atom_lookup_voltage_object_v2.exit.if.end32_crit_edge, label %land.lhs.true13

atom_lookup_voltage_object_v2.exit.if.end32_crit_edge: ; preds = %atom_lookup_voltage_object_v2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true13:                                  ; preds = %atom_lookup_voltage_object_v2.exit
  %asControl14 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i50, i32 0, i32 2
  %34 = ptrtoint ptr %asControl14 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %asControl14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %35)
  %cmp17 = icmp eq i8 %35, -128
  br i1 %cmp17, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end32_crit_edge

land.lhs.true13.if.end32_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

sw.bb21:                                          ; preds = %if.then
  %36 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cond = icmp eq i8 %37, 1
  br i1 %cond, label %sw.bb23, label %sw.default28

sw.bb23:                                          ; preds = %sw.bb21
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #11
  %conv.i60 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp26.i = icmp ugt i16 %40, 4
  br i1 %cmp26.i, label %sw.bb23.while.body.i62_crit_edge, label %sw.bb23.if.end32_crit_edge

sw.bb23.if.end32_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.bb23.while.body.i62_crit_edge:                 ; preds = %sw.bb23
  br label %while.body.i62

while.body.i62:                                   ; preds = %cleanup.i65.while.body.i62_crit_edge, %sw.bb23.while.body.i62_crit_edge
  %offset.027.i = phi i32 [ %add.i63, %cleanup.i65.while.body.i62_crit_edge ], [ 4, %sw.bb23.while.body.i62_crit_edge ]
  %add.ptr.i61 = getelementptr i8, ptr %add.ptr, i32 %offset.027.i
  %41 = ptrtoint ptr %add.ptr.i61 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i61, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %42, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i62.cleanup.i65_crit_edge

while.body.i62.cleanup.i65_crit_edge:             ; preds = %while.body.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i65

land.lhs.true.i:                                  ; preds = %while.body.i62
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i61, i32 0, i32 1
  %43 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %voltage_mode)
  %cmp10.i = icmp eq i8 %44, %voltage_mode
  br i1 %cmp10.i, label %atom_lookup_voltage_object_v3.exit, label %land.lhs.true.i.cleanup.i65_crit_edge

land.lhs.true.i.cleanup.i65_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i65

cleanup.i65:                                      ; preds = %land.lhs.true.i.cleanup.i65_crit_edge, %while.body.i62.cleanup.i65_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i61, i32 0, i32 2
  %45 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %usSize.i, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46) #11
  %conv13.i = zext i16 %47 to i32
  %add.i63 = add i32 %offset.027.i, %conv13.i
  %cmp.i64 = icmp ult i32 %add.i63, %conv.i60
  br i1 %cmp.i64, label %cleanup.i65.while.body.i62_crit_edge, label %cleanup.i65.if.end32_crit_edge

cleanup.i65.if.end32_crit_edge:                   ; preds = %cleanup.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

cleanup.i65.while.body.i62_crit_edge:             ; preds = %cleanup.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i62

atom_lookup_voltage_object_v3.exit:               ; preds = %land.lhs.true.i
  %tobool25.not = icmp eq ptr %add.ptr.i61, null
  br i1 %tobool25.not, label %atom_lookup_voltage_object_v3.exit.if.end32_crit_edge, label %atom_lookup_voltage_object_v3.exit.cleanup_crit_edge

atom_lookup_voltage_object_v3.exit.cleanup_crit_edge: ; preds = %atom_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

atom_lookup_voltage_object_v3.exit.if.end32_crit_edge: ; preds = %atom_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

sw.default28:                                     ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

sw.default30:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end32:                                         ; preds = %atom_lookup_voltage_object_v3.exit.if.end32_crit_edge, %cleanup.i65.if.end32_crit_edge, %sw.bb23.if.end32_crit_edge, %land.lhs.true13.if.end32_crit_edge, %atom_lookup_voltage_object_v2.exit.if.end32_crit_edge, %cleanup.i58.if.end32_crit_edge, %sw.bb10.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %atom_lookup_voltage_object_v1.exit.if.end32_crit_edge, %cleanup.i.if.end32_crit_edge, %sw.bb5.if.end32_crit_edge, %entry.if.end32_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sw.default30, %sw.default28, %atom_lookup_voltage_object_v3.exit.cleanup_crit_edge, %sw.default, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default30 ], [ false, %if.end32 ], [ false, %sw.default28 ], [ false, %sw.default ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true13.cleanup_crit_edge ], [ true, %atom_lookup_voltage_object_v3.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_svi2_info(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %svd_gpio_id, ptr nocapture noundef writeonly %svc_gpio_id) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cond = icmp eq i8 %13, 3
  br i1 %cond, label %sw.bb, label %sw.default8

sw.bb:                                            ; preds = %if.then
  %14 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cond17 = icmp eq i8 %15, 1
  br i1 %cond17, label %sw.bb5, label %sw.default

sw.bb5:                                           ; preds = %sw.bb
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #11
  %conv.i = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %18)
  %cmp26.i = icmp ugt i16 %18, 4
  br i1 %cmp26.i, label %sw.bb5.while.body.i_crit_edge, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb5.while.body.i_crit_edge:                    ; preds = %sw.bb5
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb5.while.body.i_crit_edge
  %offset.027.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb5.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.027.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %20, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 1
  %21 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %22)
  %cmp10.i = icmp eq i8 %22, 7
  br i1 %cmp10.i, label %atom_lookup_voltage_object_v3.exit, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i, i32 0, i32 2
  %23 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %usSize.i, align 1
  %25 = call i16 @llvm.bswap.i16(i16 %24) #11
  %conv13.i = zext i16 %25 to i32
  %add.i = add i32 %offset.027.i, %conv13.i
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_lookup_voltage_object_v3.exit:               ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %atom_lookup_voltage_object_v3.exit.cleanup_crit_edge, label %if.then7

atom_lookup_voltage_object_v3.exit.cleanup_crit_edge: ; preds = %atom_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %atom_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ucSVDGpioId = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 2
  %26 = ptrtoint ptr %ucSVDGpioId to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucSVDGpioId, align 1
  %28 = ptrtoint ptr %svd_gpio_id to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %svd_gpio_id, align 1
  %ucSVCGpioId = getelementptr inbounds %struct._ATOM_SVID2_VOLTAGE_OBJECT_V3, ptr %add.ptr.i, i32 0, i32 3
  %29 = ptrtoint ptr %ucSVCGpioId to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucSVCGpioId, align 1
  %31 = ptrtoint ptr %svc_gpio_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %svc_gpio_id, align 1
  br label %cleanup

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

sw.default8:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default8, %sw.default, %if.then7, %atom_lookup_voltage_object_v3.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %sw.default8 ], [ -22, %atom_lookup_voltage_object_v3.exit.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_max_voltage(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %max_voltage) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %13, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.then
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #11
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp18.i = icmp ugt i16 %17, 4
  br i1 %cmp18.i, label %sw.bb.while.body.i_crit_edge, label %sw.bb.cleanup40_crit_edge

sw.bb.cleanup40_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %offset.019.i = phi i32 [ %add7.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.019.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %voltage_type)
  %cmp4.i = icmp eq i8 %19, %voltage_type
  br i1 %cmp4.i, label %atom_lookup_voltage_object_v1.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %asFormula.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3
  %ucNumOfVoltageEntries.i = getelementptr inbounds %struct._ATOM_VOLTAGE_FORMULA, ptr %asFormula.i, i32 0, i32 2
  %20 = ptrtoint ptr %ucNumOfVoltageEntries.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucNumOfVoltageEntries.i, align 1
  %conv6.i = zext i8 %21 to i32
  %add.i = add i32 %offset.019.i, 26
  %add7.i = add i32 %add.i, %conv6.i
  %cmp.i = icmp ult i32 %add7.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup40_crit_edge

cleanup.i.cleanup40_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_lookup_voltage_object_v1.exit:               ; preds = %while.body.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %atom_lookup_voltage_object_v1.exit.cleanup40_crit_edge, label %if.then5

atom_lookup_voltage_object_v1.exit.cleanup40_crit_edge: ; preds = %atom_lookup_voltage_object_v1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.then5:                                         ; preds = %atom_lookup_voltage_object_v1.exit
  %asFormula = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3
  %ucFlag = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %ucFlag to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucFlag, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  %25 = ptrtoint ptr %asFormula to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %asFormula, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %ucNumOfVoltageEntries15 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %ucNumOfVoltageEntries15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucNumOfVoltageEntries15, align 1
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %30 = lshr i8 %29, 1
  %div = zext i8 %30 to i16
  %usVoltageStep = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %usVoltageStep to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usVoltageStep, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  br label %if.end

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %conv16 = zext i8 %29 to i16
  %sub = add nsw i16 %conv16, -1
  %usVoltageStep17 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %usVoltageStep17 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usVoltageStep17, align 1
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %.sink = phi i16 [ %36, %if.else ], [ %div, %if.then8 ]
  %sub.sink = phi i16 [ %sub, %if.else ], [ %33, %if.then8 ]
  %mul19 = mul i16 %sub.sink, %.sink
  %add20 = add i16 %mul19, %27
  %37 = ptrtoint ptr %max_voltage to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %add20, ptr %max_voltage, align 2
  br label %cleanup40

sw.bb23:                                          ; preds = %if.then
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #11
  %conv.i63 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp18.i64 = icmp ugt i16 %40, 4
  br i1 %cmp18.i64, label %sw.bb23.while.body.i68_crit_edge, label %sw.bb23.cleanup40_crit_edge

sw.bb23.cleanup40_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

sw.bb23.while.body.i68_crit_edge:                 ; preds = %sw.bb23
  br label %while.body.i68

while.body.i68:                                   ; preds = %cleanup.i74.while.body.i68_crit_edge, %sw.bb23.while.body.i68_crit_edge
  %offset.019.i65 = phi i32 [ %add7.i72, %cleanup.i74.while.body.i68_crit_edge ], [ 4, %sw.bb23.while.body.i68_crit_edge ]
  %add.ptr.i66 = getelementptr i8, ptr %add.ptr, i32 %offset.019.i65
  %41 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %voltage_type)
  %cmp4.i67 = icmp eq i8 %42, %voltage_type
  br i1 %cmp4.i67, label %atom_lookup_voltage_object_v2.exit, label %cleanup.i74

cleanup.i74:                                      ; preds = %while.body.i68
  %asFormula.i69 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i66, i32 0, i32 3
  %43 = ptrtoint ptr %asFormula.i69 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %asFormula.i69, align 1
  %conv6.i70 = zext i8 %44 to i32
  %mul.i = shl nuw nsw i32 %conv6.i70, 2
  %add.i71 = add i32 %offset.019.i65, 22
  %add7.i72 = add i32 %add.i71, %mul.i
  %cmp.i73 = icmp ult i32 %add7.i72, %conv.i63
  br i1 %cmp.i73, label %cleanup.i74.while.body.i68_crit_edge, label %cleanup.i74.cleanup40_crit_edge

cleanup.i74.cleanup40_crit_edge:                  ; preds = %cleanup.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

cleanup.i74.while.body.i68_crit_edge:             ; preds = %cleanup.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i68

atom_lookup_voltage_object_v2.exit:               ; preds = %while.body.i68
  %tobool25.not = icmp eq ptr %add.ptr.i66, null
  br i1 %tobool25.not, label %atom_lookup_voltage_object_v2.exit.cleanup40_crit_edge, label %if.then26

atom_lookup_voltage_object_v2.exit.cleanup40_crit_edge: ; preds = %atom_lookup_voltage_object_v2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.then26:                                        ; preds = %atom_lookup_voltage_object_v2.exit
  %asFormula28 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i66, i32 0, i32 3
  %45 = ptrtoint ptr %asFormula28 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %asFormula28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool30.not = icmp eq i8 %46, 0
  br i1 %tobool30.not, label %if.then26.cleanup40_crit_edge, label %if.then31

if.then26.cleanup40_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup40

if.then31:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %asVIDAdjustEntries = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i66, i32 0, i32 3, i32 2
  %conv33 = zext i8 %46 to i32
  %sub34 = shl nuw nsw i32 %conv33, 2
  %mul35 = add nsw i32 %sub34, -4
  %add.ptr36 = getelementptr i8, ptr %asVIDAdjustEntries, i32 %mul35
  %usVoltageValue = getelementptr inbounds %struct._VOLTAGE_LUT_ENTRY, ptr %add.ptr36, i32 0, i32 1
  %47 = ptrtoint ptr %usVoltageValue to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %usVoltageValue, align 1
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %50 = ptrtoint ptr %max_voltage to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %max_voltage, align 2
  br label %cleanup40

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup40

cleanup40:                                        ; preds = %sw.default, %if.then31, %if.then26.cleanup40_crit_edge, %atom_lookup_voltage_object_v2.exit.cleanup40_crit_edge, %cleanup.i74.cleanup40_crit_edge, %sw.bb23.cleanup40_crit_edge, %if.end, %atom_lookup_voltage_object_v1.exit.cleanup40_crit_edge, %cleanup.i.cleanup40_crit_edge, %sw.bb.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default ], [ 0, %if.end ], [ 0, %if.then31 ], [ -22, %if.then26.cleanup40_crit_edge ], [ -22, %atom_lookup_voltage_object_v1.exit.cleanup40_crit_edge ], [ -22, %atom_lookup_voltage_object_v2.exit.cleanup40_crit_edge ], [ -22, %entry.cleanup40_crit_edge ], [ -22, %sw.bb.cleanup40_crit_edge ], [ -22, %sw.bb23.cleanup40_crit_edge ], [ -22, %cleanup.i.cleanup40_crit_edge ], [ -22, %cleanup.i74.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_min_voltage(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %min_voltage) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %crev, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %13, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #11
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp18.i = icmp ugt i16 %17, 4
  br i1 %cmp18.i, label %sw.bb.while.body.i_crit_edge, label %sw.bb.cleanup17_crit_edge

sw.bb.cleanup17_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %offset.019.i = phi i32 [ %add7.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.019.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %voltage_type)
  %cmp4.i = icmp eq i8 %19, %voltage_type
  br i1 %cmp4.i, label %atom_lookup_voltage_object_v1.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %asFormula.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3
  %ucNumOfVoltageEntries.i = getelementptr inbounds %struct._ATOM_VOLTAGE_FORMULA, ptr %asFormula.i, i32 0, i32 2
  %20 = ptrtoint ptr %ucNumOfVoltageEntries.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucNumOfVoltageEntries.i, align 1
  %conv6.i = zext i8 %21 to i32
  %add.i = add i32 %offset.019.i, 26
  %add7.i = add i32 %add.i, %conv6.i
  %cmp.i = icmp ult i32 %add7.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup17_crit_edge

cleanup.i.cleanup17_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_lookup_voltage_object_v1.exit:               ; preds = %while.body.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %atom_lookup_voltage_object_v1.exit.cleanup17_crit_edge, label %if.then5

atom_lookup_voltage_object_v1.exit.cleanup17_crit_edge: ; preds = %atom_lookup_voltage_object_v1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.then5:                                         ; preds = %atom_lookup_voltage_object_v1.exit
  call void @__sanitizer_cov_trace_pc() #13
  %asFormula = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3
  %22 = ptrtoint ptr %asFormula to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %asFormula, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %min_voltage to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %min_voltage, align 2
  br label %cleanup17

sw.bb6:                                           ; preds = %if.then
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %add.ptr, align 1
  %28 = call i16 @llvm.bswap.i16(i16 %27) #11
  %conv.i32 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %28)
  %cmp18.i33 = icmp ugt i16 %28, 4
  br i1 %cmp18.i33, label %sw.bb6.while.body.i37_crit_edge, label %sw.bb6.cleanup17_crit_edge

sw.bb6.cleanup17_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

sw.bb6.while.body.i37_crit_edge:                  ; preds = %sw.bb6
  br label %while.body.i37

while.body.i37:                                   ; preds = %cleanup.i43.while.body.i37_crit_edge, %sw.bb6.while.body.i37_crit_edge
  %offset.019.i34 = phi i32 [ %add7.i41, %cleanup.i43.while.body.i37_crit_edge ], [ 4, %sw.bb6.while.body.i37_crit_edge ]
  %add.ptr.i35 = getelementptr i8, ptr %add.ptr, i32 %offset.019.i34
  %29 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i35, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %voltage_type)
  %cmp4.i36 = icmp eq i8 %30, %voltage_type
  br i1 %cmp4.i36, label %atom_lookup_voltage_object_v2.exit, label %cleanup.i43

cleanup.i43:                                      ; preds = %while.body.i37
  %asFormula.i38 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i35, i32 0, i32 3
  %31 = ptrtoint ptr %asFormula.i38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %asFormula.i38, align 1
  %conv6.i39 = zext i8 %32 to i32
  %mul.i = shl nuw nsw i32 %conv6.i39, 2
  %add.i40 = add i32 %offset.019.i34, 22
  %add7.i41 = add i32 %add.i40, %mul.i
  %cmp.i42 = icmp ult i32 %add7.i41, %conv.i32
  br i1 %cmp.i42, label %cleanup.i43.while.body.i37_crit_edge, label %cleanup.i43.cleanup17_crit_edge

cleanup.i43.cleanup17_crit_edge:                  ; preds = %cleanup.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

cleanup.i43.while.body.i37_crit_edge:             ; preds = %cleanup.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i37

atom_lookup_voltage_object_v2.exit:               ; preds = %while.body.i37
  %tobool8.not = icmp eq ptr %add.ptr.i35, null
  br i1 %tobool8.not, label %atom_lookup_voltage_object_v2.exit.cleanup17_crit_edge, label %if.then9

atom_lookup_voltage_object_v2.exit.cleanup17_crit_edge: ; preds = %atom_lookup_voltage_object_v2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.then9:                                         ; preds = %atom_lookup_voltage_object_v2.exit
  %asFormula11 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i35, i32 0, i32 3
  %33 = ptrtoint ptr %asFormula11 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %asFormula11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool12.not = icmp eq i8 %34, 0
  br i1 %tobool12.not, label %if.then9.cleanup17_crit_edge, label %if.then13

if.then9.cleanup17_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup17

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %usVoltageValue = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i35, i32 0, i32 3, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %usVoltageValue to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %usVoltageValue, align 1
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %38 = ptrtoint ptr %min_voltage to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %min_voltage, align 2
  br label %cleanup17

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup17

cleanup17:                                        ; preds = %sw.default, %if.then13, %if.then9.cleanup17_crit_edge, %atom_lookup_voltage_object_v2.exit.cleanup17_crit_edge, %cleanup.i43.cleanup17_crit_edge, %sw.bb6.cleanup17_crit_edge, %if.then5, %atom_lookup_voltage_object_v1.exit.cleanup17_crit_edge, %cleanup.i.cleanup17_crit_edge, %sw.bb.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default ], [ 0, %if.then5 ], [ 0, %if.then13 ], [ -22, %if.then9.cleanup17_crit_edge ], [ -22, %atom_lookup_voltage_object_v1.exit.cleanup17_crit_edge ], [ -22, %atom_lookup_voltage_object_v2.exit.cleanup17_crit_edge ], [ -22, %entry.cleanup17_crit_edge ], [ -22, %sw.bb.cleanup17_crit_edge ], [ -22, %sw.bb6.cleanup17_crit_edge ], [ -22, %cleanup.i.cleanup17_crit_edge ], [ -22, %cleanup.i43.cleanup17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_voltage_step(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, ptr nocapture noundef writeonly %voltage_step) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %crev, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %7, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %if.then.cleanup_crit_edge
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %9 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %add.ptr, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16) #11
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp18.i = icmp ugt i16 %17, 4
  br i1 %cmp18.i, label %sw.bb.while.body.i_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %offset.019.i = phi i32 [ %add7.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.019.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %voltage_type)
  %cmp4.i = icmp eq i8 %19, %voltage_type
  br i1 %cmp4.i, label %atom_lookup_voltage_object_v1.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %asFormula.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3
  %ucNumOfVoltageEntries.i = getelementptr inbounds %struct._ATOM_VOLTAGE_FORMULA, ptr %asFormula.i, i32 0, i32 2
  %20 = ptrtoint ptr %ucNumOfVoltageEntries.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucNumOfVoltageEntries.i, align 1
  %conv6.i = zext i8 %21 to i32
  %add.i = add i32 %offset.019.i, 26
  %add7.i = add i32 %add.i, %conv6.i
  %cmp.i = icmp ult i32 %add7.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup_crit_edge

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_lookup_voltage_object_v1.exit:               ; preds = %while.body.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %atom_lookup_voltage_object_v1.exit.cleanup_crit_edge, label %if.then5

atom_lookup_voltage_object_v1.exit.cleanup_crit_edge: ; preds = %atom_lookup_voltage_object_v1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %atom_lookup_voltage_object_v1.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ucFlag = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %ucFlag to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucFlag, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool7.not = icmp eq i8 %24, 0
  %usVoltageStep11 = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT, ptr %add.ptr.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %usVoltageStep11 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %usVoltageStep11, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv9 = zext i16 %27 to i32
  %add = add nuw nsw i32 %conv9, 1
  %div26 = lshr i32 %add, 1
  %conv10 = trunc i32 %div26 to i16
  %storemerge = select i1 %tobool7.not, i16 %27, i16 %conv10
  %28 = ptrtoint ptr %voltage_step to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge, ptr %voltage_step, align 2
  br label %cleanup

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.then5, %atom_lookup_voltage_object_v1.exit.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %if.then5 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %atom_lookup_voltage_object_v1.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %cleanup.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_round_to_true_voltage(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, i16 noundef zeroext %nominal_voltage, ptr nocapture noundef writeonly %true_voltage) local_unnamed_addr #0 align 64 {
entry:
  %min_voltage = alloca i16, align 2
  %max_voltage = alloca i16, align 2
  %voltage_step = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min_voltage) #11
  %0 = ptrtoint ptr %min_voltage to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %min_voltage, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_voltage) #11
  %1 = ptrtoint ptr %max_voltage to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %max_voltage, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %voltage_step) #11
  %2 = ptrtoint ptr %voltage_step to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %voltage_step, align 2, !annotation !196
  %call = call i32 @radeon_atom_get_max_voltage(ptr noundef %rdev, i8 noundef zeroext %voltage_type, ptr noundef nonnull %max_voltage)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @radeon_atom_get_min_voltage(ptr noundef %rdev, i8 noundef zeroext %voltage_type, ptr noundef nonnull %min_voltage)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @radeon_atom_get_voltage_step(ptr noundef %rdev, i8 noundef zeroext %voltage_type, ptr noundef nonnull %voltage_step)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %conv = zext i16 %nominal_voltage to i32
  %3 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %min_voltage, align 2
  %conv9 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %nominal_voltage)
  %cmp.not = icmp ult i16 %4, %nominal_voltage
  br i1 %cmp.not, label %if.else, label %if.end8.cleanup.sink.split_crit_edge

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end8
  %5 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_voltage, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %nominal_voltage)
  %cmp14.not = icmp ugt i16 %6, %nominal_voltage
  br i1 %cmp14.not, label %if.else17, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub nsw i32 %conv, %conv9
  %7 = ptrtoint ptr %voltage_step to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %voltage_step, align 2
  %conv21 = zext i16 %8 to i32
  %9 = srem i32 %sub, %conv21
  %mul = sub nsw i32 %sub, %9
  %10 = trunc i32 %mul to i16
  %conv23 = add i16 %4, %10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else17, %if.else.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge
  %.sink = phi i16 [ %conv23, %if.else17 ], [ %4, %if.end8.cleanup.sink.split_crit_edge ], [ %6, %if.else.cleanup.sink.split_crit_edge ]
  %11 = ptrtoint ptr %true_voltage to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %.sink, ptr %true_voltage, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %voltage_step) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_voltage) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min_voltage) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_voltage_table(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %voltage_type, i8 noundef zeroext %voltage_mode, ptr nocapture noundef writeonly %voltage_table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %4 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %5, i32 noundef 32, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup76_crit_edge

entry.cleanup76_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bios, align 4
  %10 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %conv
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frev, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %13, label %sw.default73 [
    i8 1, label %if.then.sw.bb_crit_edge
    i8 2, label %if.then.sw.bb_crit_edge175
    i8 3, label %sw.bb33
  ]

if.then.sw.bb_crit_edge175:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge175
  %15 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %crev, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %16, label %sw.default [
    i8 1, label %sw.bb5
    i8 2, label %sw.bb8
  ]

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = zext i8 %13 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %conv6, i32 noundef 1) #11
  br label %cleanup76

sw.bb8:                                           ; preds = %sw.bb
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %19) #11
  %conv.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp18.i = icmp ugt i16 %20, 4
  br i1 %cmp18.i, label %sw.bb8.while.body.i_crit_edge, label %sw.bb8.cleanup76_crit_edge

sw.bb8.cleanup76_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

sw.bb8.while.body.i_crit_edge:                    ; preds = %sw.bb8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %sw.bb8.while.body.i_crit_edge
  %offset.019.i = phi i32 [ %add7.i, %cleanup.i.while.body.i_crit_edge ], [ 4, %sw.bb8.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %offset.019.i
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %voltage_type)
  %cmp4.i = icmp eq i8 %22, %voltage_type
  br i1 %cmp4.i, label %atom_lookup_voltage_object_v2.exit, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %asFormula.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i, i32 0, i32 3
  %23 = ptrtoint ptr %asFormula.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %asFormula.i, align 1
  %conv6.i = zext i8 %24 to i32
  %mul.i = shl nuw nsw i32 %conv6.i, 2
  %add.i = add i32 %offset.019.i, 22
  %add7.i = add i32 %add.i, %mul.i
  %cmp.i = icmp ult i32 %add7.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.cleanup76_crit_edge

cleanup.i.cleanup76_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

atom_lookup_voltage_object_v2.exit:               ; preds = %while.body.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %atom_lookup_voltage_object_v2.exit.cleanup76_crit_edge, label %if.then10

atom_lookup_voltage_object_v2.exit.cleanup76_crit_edge: ; preds = %atom_lookup_voltage_object_v2.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.then10:                                        ; preds = %atom_lookup_voltage_object_v2.exit
  %asFormula = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i, i32 0, i32 3
  %25 = ptrtoint ptr %asFormula to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %asFormula, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %26)
  %cmp = icmp ugt i8 %26, 32
  br i1 %cmp, label %if.then10.cleanup76_crit_edge, label %if.end

if.then10.cleanup76_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.end:                                           ; preds = %if.then10
  %27 = ptrtoint ptr %asFormula to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %asFormula, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp16143.not = icmp eq i8 %28, 0
  br i1 %cmp16143.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %asVIDAdjustEntries = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_V2, ptr %add.ptr.i, i32 0, i32 3, i32 2
  %mask_low = getelementptr inbounds %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %lut.0145 = phi ptr [ %asVIDAdjustEntries, %for.body.lr.ph ], [ %add.ptr28, %if.end27.for.body_crit_edge ]
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end27.for.body_crit_edge ]
  %usVoltageValue = getelementptr inbounds %struct._VOLTAGE_LUT_ENTRY, ptr %lut.0145, i32 0, i32 1
  %29 = ptrtoint ptr %usVoltageValue to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usVoltageValue, align 1
  %31 = call i16 @llvm.bswap.i16(i16 %30)
  %arrayidx18 = getelementptr %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.0144
  %32 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx18, align 4
  %smio_low = getelementptr %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.0144, i32 1
  %call24 = call i32 @radeon_atom_get_voltage_gpio_settings(ptr noundef %rdev, i16 noundef zeroext %31, i8 noundef zeroext %voltage_type, ptr noundef %smio_low, ptr noundef %mask_low)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.cleanup76_crit_edge

for.body.cleanup76_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.end27:                                         ; preds = %for.body
  %add.ptr28 = getelementptr i8, ptr %lut.0145, i32 4
  %inc = add nuw nsw i32 %i.0144, 1
  %33 = ptrtoint ptr %asFormula to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %asFormula, align 1
  %conv15 = zext i8 %34 to i32
  %cmp16 = icmp ult i32 %inc, %conv15
  br i1 %cmp16, label %if.end27.for.body_crit_edge, label %for.end.loopexit

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i8 %34 to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.cast, %for.end.loopexit ], [ 0, %if.end.for.end_crit_edge ]
  %35 = ptrtoint ptr %voltage_table to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.lcssa, ptr %voltage_table, align 4
  br label %cleanup76

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup76

sw.bb33:                                          ; preds = %if.then
  %36 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cond = icmp eq i8 %37, 1
  br i1 %cond, label %sw.bb35, label %sw.default71

sw.bb35:                                          ; preds = %sw.bb33
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %add.ptr, align 1
  %40 = call i16 @llvm.bswap.i16(i16 %39) #11
  %conv.i122 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %40)
  %cmp26.i = icmp ugt i16 %40, 4
  br i1 %cmp26.i, label %sw.bb35.while.body.i124_crit_edge, label %sw.bb35.cleanup76_crit_edge

sw.bb35.cleanup76_crit_edge:                      ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

sw.bb35.while.body.i124_crit_edge:                ; preds = %sw.bb35
  br label %while.body.i124

while.body.i124:                                  ; preds = %cleanup.i127.while.body.i124_crit_edge, %sw.bb35.while.body.i124_crit_edge
  %offset.027.i = phi i32 [ %add.i125, %cleanup.i127.while.body.i124_crit_edge ], [ 4, %sw.bb35.while.body.i124_crit_edge ]
  %add.ptr.i123 = getelementptr i8, ptr %add.ptr, i32 %offset.027.i
  %41 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %add.ptr.i123, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %voltage_type)
  %cmp5.i = icmp eq i8 %42, %voltage_type
  br i1 %cmp5.i, label %land.lhs.true.i, label %while.body.i124.cleanup.i127_crit_edge

while.body.i124.cleanup.i127_crit_edge:           ; preds = %while.body.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i127

land.lhs.true.i:                                  ; preds = %while.body.i124
  %ucVoltageMode.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i123, i32 0, i32 1
  %43 = ptrtoint ptr %ucVoltageMode.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ucVoltageMode.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %voltage_mode)
  %cmp10.i = icmp eq i8 %44, %voltage_mode
  br i1 %cmp10.i, label %atom_lookup_voltage_object_v3.exit, label %land.lhs.true.i.cleanup.i127_crit_edge

land.lhs.true.i.cleanup.i127_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i127

cleanup.i127:                                     ; preds = %land.lhs.true.i.cleanup.i127_crit_edge, %while.body.i124.cleanup.i127_crit_edge
  %usSize.i = getelementptr inbounds %struct._ATOM_VOLTAGE_OBJECT_HEADER_V3, ptr %add.ptr.i123, i32 0, i32 2
  %45 = ptrtoint ptr %usSize.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %usSize.i, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46) #11
  %conv13.i = zext i16 %47 to i32
  %add.i125 = add i32 %offset.027.i, %conv13.i
  %cmp.i126 = icmp ult i32 %add.i125, %conv.i122
  br i1 %cmp.i126, label %cleanup.i127.while.body.i124_crit_edge, label %cleanup.i127.cleanup76_crit_edge

cleanup.i127.cleanup76_crit_edge:                 ; preds = %cleanup.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

cleanup.i127.while.body.i124_crit_edge:           ; preds = %cleanup.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i124

atom_lookup_voltage_object_v3.exit:               ; preds = %land.lhs.true.i
  %tobool37.not = icmp eq ptr %add.ptr.i123, null
  br i1 %tobool37.not, label %atom_lookup_voltage_object_v3.exit.cleanup76_crit_edge, label %if.then38

atom_lookup_voltage_object_v3.exit.cleanup76_crit_edge: ; preds = %atom_lookup_voltage_object_v3.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.then38:                                        ; preds = %atom_lookup_voltage_object_v3.exit
  %ucGpioEntryNum = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i123, i32 0, i32 2
  %48 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucGpioEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %49)
  %cmp41 = icmp ugt i8 %49, 32
  br i1 %cmp41, label %if.then38.cleanup76_crit_edge, label %if.end44

if.then38.cleanup76_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup76

if.end44:                                         ; preds = %if.then38
  %50 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ucGpioEntryNum, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp49139.not = icmp eq i8 %51, 0
  br i1 %cmp49139.not, label %if.end44.for.end62_crit_edge, label %for.body51.preheader

if.end44.for.end62_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body51.preheader:                             ; preds = %if.end44
  %asVolGpioLut = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i123, i32 0, i32 6
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.preheader
  %lut39.0141 = phi ptr [ %add.ptr59, %for.body51.for.body51_crit_edge ], [ %asVolGpioLut, %for.body51.preheader ]
  %i.1140 = phi i32 [ %inc61, %for.body51.for.body51_crit_edge ], [ 0, %for.body51.preheader ]
  %usVoltageValue52 = getelementptr inbounds %struct._VOLTAGE_LUT_ENTRY_V2, ptr %lut39.0141, i32 0, i32 1
  %52 = ptrtoint ptr %usVoltageValue52 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %usVoltageValue52, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %arrayidx54 = getelementptr %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.1140
  %55 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %arrayidx54, align 4
  %56 = ptrtoint ptr %lut39.0141 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %lut39.0141, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %smio_low58 = getelementptr %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 3, i32 %i.1140, i32 1
  %59 = ptrtoint ptr %smio_low58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %smio_low58, align 4
  %add.ptr59 = getelementptr i8, ptr %lut39.0141, i32 6
  %inc61 = add nuw nsw i32 %i.1140, 1
  %60 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ucGpioEntryNum, align 1
  %conv48 = zext i8 %61 to i32
  %cmp49 = icmp ult i32 %inc61, %conv48
  br i1 %cmp49, label %for.body51.for.body51_crit_edge, label %for.body51.for.end62_crit_edge

for.body51.for.end62_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body51

for.end62:                                        ; preds = %for.body51.for.end62_crit_edge, %if.end44.for.end62_crit_edge
  %ulGpioMaskVal = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i123, i32 0, i32 5
  %62 = ptrtoint ptr %ulGpioMaskVal to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %ulGpioMaskVal, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %mask_low63 = getelementptr inbounds %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 1
  %65 = ptrtoint ptr %mask_low63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %mask_low63, align 4
  %66 = ptrtoint ptr %ucGpioEntryNum to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %ucGpioEntryNum, align 1
  %conv65 = zext i8 %67 to i32
  %68 = ptrtoint ptr %voltage_table to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv65, ptr %voltage_table, align 4
  %ucPhaseDelay = getelementptr inbounds %struct._ATOM_GPIO_VOLTAGE_OBJECT_V3, ptr %add.ptr.i123, i32 0, i32 3
  %69 = ptrtoint ptr %ucPhaseDelay to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ucPhaseDelay, align 1
  %conv67 = zext i8 %70 to i32
  %phase_delay = getelementptr inbounds %struct.atom_voltage_table, ptr %voltage_table, i32 0, i32 2
  %71 = ptrtoint ptr %phase_delay to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv67, ptr %phase_delay, align 4
  br label %cleanup76

sw.default71:                                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup76

sw.default73:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #11
  br label %cleanup76

cleanup76:                                        ; preds = %sw.default73, %sw.default71, %for.end62, %if.then38.cleanup76_crit_edge, %atom_lookup_voltage_object_v3.exit.cleanup76_crit_edge, %cleanup.i127.cleanup76_crit_edge, %sw.bb35.cleanup76_crit_edge, %sw.default, %for.end, %for.body.cleanup76_crit_edge, %if.then10.cleanup76_crit_edge, %atom_lookup_voltage_object_v2.exit.cleanup76_crit_edge, %cleanup.i.cleanup76_crit_edge, %sw.bb8.cleanup76_crit_edge, %sw.bb5, %entry.cleanup76_crit_edge
  %retval.2 = phi i32 [ -22, %sw.default73 ], [ -22, %sw.default71 ], [ -22, %sw.default ], [ -22, %sw.bb5 ], [ 0, %for.end ], [ -22, %if.then10.cleanup76_crit_edge ], [ 0, %for.end62 ], [ -22, %if.then38.cleanup76_crit_edge ], [ -22, %atom_lookup_voltage_object_v2.exit.cleanup76_crit_edge ], [ -22, %atom_lookup_voltage_object_v3.exit.cleanup76_crit_edge ], [ -22, %entry.cleanup76_crit_edge ], [ -22, %sw.bb8.cleanup76_crit_edge ], [ -22, %sw.bb35.cleanup76_crit_edge ], [ %call24, %for.body.cleanup76_crit_edge ], [ -22, %cleanup.i.cleanup76_crit_edge ], [ -22, %cleanup.i127.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_memory_info(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %module_index, ptr nocapture noundef writeonly %mem_info) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %4 = ptrtoint ptr %mem_info to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %mem_info, align 1
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup126_crit_edge

entry.cleanup126_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %13 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %frev, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %14, label %sw.default121 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb72
  ]

sw.bb:                                            ; preds = %if.then
  %16 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %crev, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %17, label %sw.default [
    i8 3, label %sw.bb5
    i8 4, label %sw.bb28
  ]

sw.bb5:                                           ; preds = %sw.bb
  %ucNumOfVRAMModule = getelementptr inbounds %struct._ATOM_VRAM_INFO_V3, ptr %add.ptr, i32 0, i32 5
  %19 = ptrtoint ptr %ucNumOfVRAMModule to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucNumOfVRAMModule, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %module_index)
  %cmp = icmp ugt i8 %20, %module_index
  br i1 %cmp, label %if.then9, label %sw.bb5.cleanup126_crit_edge

sw.bb5.cleanup126_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.then9:                                         ; preds = %sw.bb5
  %aVramInfo = getelementptr inbounds %struct._ATOM_VRAM_INFO_V3, ptr %add.ptr, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %module_index)
  %cmp12188.not = icmp eq i8 %module_index, 0
  br i1 %cmp12188.not, label %if.then9.for.end_crit_edge, label %if.then9.for.body_crit_edge

if.then9.for.body_crit_edge:                      ; preds = %if.then9
  br label %for.body

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then9.for.body_crit_edge
  %vram_module.0190 = phi ptr [ %add.ptr20, %if.end.for.body_crit_edge ], [ %aVramInfo, %if.then9.for.body_crit_edge ]
  %i.0189 = phi i8 [ %inc, %if.end.for.body_crit_edge ], [ 0, %if.then9.for.body_crit_edge ]
  %usSize = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V3, ptr %vram_module.0190, i32 0, i32 1
  %21 = ptrtoint ptr %usSize to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp15 = icmp eq i16 %22, 0
  br i1 %cmp15, label %for.body.cleanup126_crit_edge, label %if.end

for.body.cleanup126_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.end:                                           ; preds = %for.body
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv14 = zext i16 %23 to i32
  %add.ptr20 = getelementptr i8, ptr %vram_module.0190, i32 %conv14
  %inc = add nuw i8 %i.0189, 1
  %cmp12 = icmp ult i8 %inc, %module_index
  br i1 %cmp12, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then9.for.end_crit_edge
  %vram_module.0.lcssa = phi ptr [ %aVramInfo, %if.then9.for.end_crit_edge ], [ %add.ptr20, %if.end.for.end_crit_edge ]
  %ucMemoryVenderID = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V3, ptr %vram_module.0.lcssa, i32 0, i32 10, i32 4
  %24 = ptrtoint ptr %ucMemoryVenderID to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucMemoryVenderID, align 1
  %26 = and i8 %25, 15
  %27 = ptrtoint ptr %mem_info to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %mem_info, align 1
  %ucMemoryType = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V3, ptr %vram_module.0.lcssa, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %ucMemoryType to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucMemoryType, align 1
  %30 = and i8 %29, -16
  %mem_type = getelementptr inbounds %struct.atom_memory_info, ptr %mem_info, i32 0, i32 1
  %31 = ptrtoint ptr %mem_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %mem_type, align 1
  br label %cleanup126

sw.bb28:                                          ; preds = %sw.bb
  %ucNumOfVRAMModule30 = getelementptr inbounds %struct._ATOM_VRAM_INFO_V4, ptr %add.ptr, i32 0, i32 7
  %32 = ptrtoint ptr %ucNumOfVRAMModule30 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ucNumOfVRAMModule30, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %module_index)
  %cmp32 = icmp ugt i8 %33, %module_index
  br i1 %cmp32, label %if.then34, label %sw.bb28.cleanup126_crit_edge

sw.bb28.cleanup126_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.then34:                                        ; preds = %sw.bb28
  %aVramInfo36 = getelementptr inbounds %struct._ATOM_VRAM_INFO_V4, ptr %add.ptr, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %module_index)
  %cmp41184.not = icmp eq i8 %module_index, 0
  br i1 %cmp41184.not, label %if.then34.for.end54_crit_edge, label %if.then34.for.body43_crit_edge

if.then34.for.body43_crit_edge:                   ; preds = %if.then34
  br label %for.body43

if.then34.for.end54_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.body43:                                       ; preds = %if.end48.for.body43_crit_edge, %if.then34.for.body43_crit_edge
  %vram_module35.0186 = phi ptr [ %add.ptr51, %if.end48.for.body43_crit_edge ], [ %aVramInfo36, %if.then34.for.body43_crit_edge ]
  %i.1185 = phi i8 [ %inc53, %if.end48.for.body43_crit_edge ], [ 0, %if.then34.for.body43_crit_edge ]
  %usModuleSize = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V4, ptr %vram_module35.0186, i32 0, i32 1
  %34 = ptrtoint ptr %usModuleSize to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usModuleSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp45 = icmp eq i16 %35, 0
  br i1 %cmp45, label %for.body43.cleanup126_crit_edge, label %if.end48

for.body43.cleanup126_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.end48:                                         ; preds = %for.body43
  %36 = call i16 @llvm.bswap.i16(i16 %35)
  %conv44 = zext i16 %36 to i32
  %add.ptr51 = getelementptr i8, ptr %vram_module35.0186, i32 %conv44
  %inc53 = add nuw i8 %i.1185, 1
  %cmp41 = icmp ult i8 %inc53, %module_index
  br i1 %cmp41, label %if.end48.for.body43_crit_edge, label %if.end48.for.end54_crit_edge

if.end48.for.end54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

if.end48.for.body43_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body43

for.end54:                                        ; preds = %if.end48.for.end54_crit_edge, %if.then34.for.end54_crit_edge
  %vram_module35.0.lcssa = phi ptr [ %aVramInfo36, %if.then34.for.end54_crit_edge ], [ %add.ptr51, %if.end48.for.end54_crit_edge ]
  %ucMemoryVenderID55 = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V4, ptr %vram_module35.0.lcssa, i32 0, i32 18
  %37 = ptrtoint ptr %ucMemoryVenderID55 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucMemoryVenderID55, align 1
  %39 = and i8 %38, 15
  %40 = ptrtoint ptr %mem_info to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %mem_info, align 1
  %ucMemoryType60 = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V4, ptr %vram_module35.0.lcssa, i32 0, i32 5
  %41 = ptrtoint ptr %ucMemoryType60 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucMemoryType60, align 1
  %43 = and i8 %42, -16
  %mem_type64 = getelementptr inbounds %struct.atom_memory_info, ptr %mem_info, i32 0, i32 1
  %44 = ptrtoint ptr %mem_type64 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %mem_type64, align 1
  br label %cleanup126

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i8 %17 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %conv4) #11
  br label %cleanup126

sw.bb72:                                          ; preds = %if.then
  %45 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cond = icmp eq i8 %46, 1
  br i1 %cond, label %sw.bb74, label %sw.default117

sw.bb74:                                          ; preds = %sw.bb72
  %ucNumOfVRAMModule76 = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %add.ptr, i32 0, i32 5
  %47 = ptrtoint ptr %ucNumOfVRAMModule76 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ucNumOfVRAMModule76, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %module_index)
  %cmp78 = icmp ugt i8 %48, %module_index
  br i1 %cmp78, label %if.then80, label %sw.bb74.cleanup126_crit_edge

sw.bb74.cleanup126_crit_edge:                     ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.then80:                                        ; preds = %sw.bb74
  %aVramInfo82 = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %add.ptr, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %module_index)
  %cmp87181.not = icmp eq i8 %module_index, 0
  br i1 %cmp87181.not, label %if.then80.for.end101_crit_edge, label %if.then80.for.body89_crit_edge

if.then80.for.body89_crit_edge:                   ; preds = %if.then80
  br label %for.body89

if.then80.for.end101_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.body89:                                       ; preds = %if.end95.for.body89_crit_edge, %if.then80.for.body89_crit_edge
  %vram_module81.0183 = phi ptr [ %add.ptr98, %if.end95.for.body89_crit_edge ], [ %aVramInfo82, %if.then80.for.body89_crit_edge ]
  %i.2182 = phi i8 [ %inc100, %if.end95.for.body89_crit_edge ], [ 0, %if.then80.for.body89_crit_edge ]
  %usModuleSize90 = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V7, ptr %vram_module81.0183, i32 0, i32 1
  %49 = ptrtoint ptr %usModuleSize90 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %usModuleSize90, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp92 = icmp eq i16 %50, 0
  br i1 %cmp92, label %for.body89.cleanup126_crit_edge, label %if.end95

for.body89.cleanup126_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

if.end95:                                         ; preds = %for.body89
  %51 = call i16 @llvm.bswap.i16(i16 %50)
  %conv91 = zext i16 %51 to i32
  %add.ptr98 = getelementptr i8, ptr %vram_module81.0183, i32 %conv91
  %inc100 = add nuw i8 %i.2182, 1
  %cmp87 = icmp ult i8 %inc100, %module_index
  br i1 %cmp87, label %if.end95.for.body89_crit_edge, label %if.end95.for.end101_crit_edge

if.end95.for.end101_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

if.end95.for.body89_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body89

for.end101:                                       ; preds = %if.end95.for.end101_crit_edge, %if.then80.for.end101_crit_edge
  %vram_module81.0.lcssa = phi ptr [ %aVramInfo82, %if.then80.for.end101_crit_edge ], [ %add.ptr98, %if.end95.for.end101_crit_edge ]
  %ucMemoryVenderID102 = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V7, ptr %vram_module81.0.lcssa, i32 0, i32 19
  %52 = ptrtoint ptr %ucMemoryVenderID102 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ucMemoryVenderID102, align 1
  %54 = and i8 %53, 15
  %55 = ptrtoint ptr %mem_info to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %mem_info, align 1
  %ucMemoryType107 = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V7, ptr %vram_module81.0.lcssa, i32 0, i32 5
  %56 = ptrtoint ptr %ucMemoryType107 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ucMemoryType107, align 1
  %58 = and i8 %57, -16
  %mem_type111 = getelementptr inbounds %struct.atom_memory_info, ptr %mem_info, i32 0, i32 1
  %59 = ptrtoint ptr %mem_type111 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %mem_type111, align 1
  br label %cleanup126

sw.default117:                                    ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #13
  %conv73 = zext i8 %46 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %conv73) #11
  br label %cleanup126

sw.default121:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %14 to i32
  %60 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %crev, align 1
  %conv123 = zext i8 %61 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv3, i32 noundef %conv123) #11
  br label %cleanup126

cleanup126:                                       ; preds = %sw.default121, %sw.default117, %for.end101, %for.body89.cleanup126_crit_edge, %sw.bb74.cleanup126_crit_edge, %sw.default, %for.end54, %for.body43.cleanup126_crit_edge, %sw.bb28.cleanup126_crit_edge, %for.end, %for.body.cleanup126_crit_edge, %sw.bb5.cleanup126_crit_edge, %entry.cleanup126_crit_edge
  %retval.3 = phi i32 [ -22, %sw.default121 ], [ -22, %sw.default117 ], [ -22, %sw.default ], [ -22, %sw.bb5.cleanup126_crit_edge ], [ -22, %sw.bb28.cleanup126_crit_edge ], [ -22, %sw.bb74.cleanup126_crit_edge ], [ 0, %for.end101 ], [ 0, %for.end54 ], [ 0, %for.end ], [ -22, %entry.cleanup126_crit_edge ], [ -22, %for.body.cleanup126_crit_edge ], [ -22, %for.body43.cleanup126_crit_edge ], [ -22, %for.body89.cleanup126_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_get_mclk_range_table(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %gddr5, i8 noundef zeroext %module_index, ptr nocapture noundef %mclk_range_table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %cond = select i1 %gddr5, i32 36, i32 24
  %4 = call ptr @memset(ptr %mclk_range_table, i32 0, i32 68)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup51_crit_edge

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %13 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %frev, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %14, label %sw.default46 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.then
  %16 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %crev, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %17, label %sw.default [
    i8 3, label %sw.bb5
    i8 4, label %sw.bb8
  ]

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 3) #11
  br label %cleanup51

sw.bb8:                                           ; preds = %sw.bb
  %ucNumOfVRAMModule = getelementptr inbounds %struct._ATOM_VRAM_INFO_V4, ptr %add.ptr, i32 0, i32 7
  %19 = ptrtoint ptr %ucNumOfVRAMModule to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucNumOfVRAMModule, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %module_index)
  %cmp = icmp ugt i8 %20, %module_index
  br i1 %cmp, label %if.then12, label %sw.bb8.cleanup51_crit_edge

sw.bb8.cleanup51_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.then12:                                        ; preds = %sw.bb8
  %aVramInfo = getelementptr inbounds %struct._ATOM_VRAM_INFO_V4, ptr %add.ptr, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %module_index)
  %cmp1578.not = icmp eq i8 %module_index, 0
  br i1 %cmp1578.not, label %if.then12.for.end_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.for.end_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then12.for.body_crit_edge
  %vram_module.080 = phi ptr [ %add.ptr23, %if.end.for.body_crit_edge ], [ %aVramInfo, %if.then12.for.body_crit_edge ]
  %i.079 = phi i8 [ %inc, %if.end.for.body_crit_edge ], [ 0, %if.then12.for.body_crit_edge ]
  %usModuleSize = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V4, ptr %vram_module.080, i32 0, i32 1
  %21 = ptrtoint ptr %usModuleSize to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %usModuleSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp18 = icmp eq i16 %22, 0
  br i1 %cmp18, label %for.body.cleanup51_crit_edge, label %if.end

for.body.cleanup51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

if.end:                                           ; preds = %for.body
  %23 = call i16 @llvm.bswap.i16(i16 %22)
  %conv17 = zext i16 %23 to i32
  %add.ptr23 = getelementptr i8, ptr %vram_module.080, i32 %conv17
  %inc = add nuw i8 %i.079, 1
  %cmp15 = icmp ult i8 %inc, %module_index
  br i1 %cmp15, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.then12.for.end_crit_edge
  %vram_module.0.lcssa = phi ptr [ %aVramInfo, %if.then12.for.end_crit_edge ], [ %add.ptr23, %if.end.for.end_crit_edge ]
  %usModuleSize24 = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V4, ptr %vram_module.0.lcssa, i32 0, i32 1
  %24 = ptrtoint ptr %usModuleSize24 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usModuleSize24, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv25 = zext i16 %26 to i32
  %sub = add nsw i32 %conv25, -32
  %div = udiv i32 %sub, %cond
  %conv26 = trunc i32 %div to i8
  %27 = ptrtoint ptr %mclk_range_table to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv26, ptr %mclk_range_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv26)
  %cmp3181.not = icmp eq i8 %conv26, 0
  br i1 %cmp3181.not, label %for.end.cleanup51_crit_edge, label %for.body33.preheader

for.end.cleanup51_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

for.body33.preheader:                             ; preds = %for.end
  %asMemTiming = getelementptr inbounds %struct._ATOM_VRAM_MODULE_V4, ptr %vram_module.0.lcssa, i32 0, i32 21
  %wide.trip.count = and i32 %div, 255
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body33.preheader
  %indvars.iv = phi i32 [ 0, %for.body33.preheader ], [ %indvars.iv.next, %for.body33.for.body33_crit_edge ]
  %format.083 = phi ptr [ %asMemTiming, %for.body33.preheader ], [ %add.ptr35, %for.body33.for.body33_crit_edge ]
  %28 = ptrtoint ptr %format.083 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %format.083, align 1
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %arrayidx34 = getelementptr %struct.atom_memory_clock_range_table, ptr %mclk_range_table, i32 0, i32 2, i32 %indvars.iv
  %31 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx34, align 4
  %add.ptr35 = getelementptr i8, ptr %format.083, i32 %cond
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body33.cleanup51_crit_edge, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

for.body33.cleanup51_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup51

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv4 = zext i8 %17 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef 1, i32 noundef %conv4) #11
  br label %cleanup51

sw.bb43:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %crev, align 1
  %conv45 = zext i8 %33 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef %conv45) #11
  br label %cleanup51

sw.default46:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %14 to i32
  %34 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %crev, align 1
  %conv48 = zext i8 %35 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv3, i32 noundef %conv48) #11
  br label %cleanup51

cleanup51:                                        ; preds = %sw.default46, %sw.bb43, %sw.default, %for.body33.cleanup51_crit_edge, %for.end.cleanup51_crit_edge, %for.body.cleanup51_crit_edge, %sw.bb8.cleanup51_crit_edge, %sw.bb5, %entry.cleanup51_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default46 ], [ -22, %sw.bb43 ], [ -22, %sw.default ], [ -22, %sw.bb5 ], [ -22, %sw.bb8.cleanup51_crit_edge ], [ -22, %entry.cleanup51_crit_edge ], [ 0, %for.end.cleanup51_crit_edge ], [ 0, %for.body33.cleanup51_crit_edge ], [ -22, %for.body.cleanup51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_atom_init_mc_reg_table(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %module_index, ptr nocapture noundef %reg_table) local_unnamed_addr #0 align 64 {
entry:
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %size = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %0 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %frev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %1 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %crev, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #11
  %2 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %data_offset, align 2, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %size) #11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %size, align 2, !annotation !196
  %4 = call ptr @memset(ptr %reg_table, i32 0, i32 2772)
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %size, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.then, label %entry.cleanup117_crit_edge

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bios, align 4
  %11 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %12 to i32
  %add.ptr = getelementptr i8, ptr %10, i32 %conv
  %13 = ptrtoint ptr %frev to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %frev, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %14, label %sw.default112 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %crev, align 1
  %conv5 = zext i8 %17 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef %conv5) #11
  br label %cleanup117

sw.bb6:                                           ; preds = %if.then
  %18 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %crev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cond = icmp eq i8 %19, 1
  br i1 %cond, label %sw.bb8, label %sw.default

sw.bb8:                                           ; preds = %sw.bb6
  %conv9 = zext i8 %module_index to i32
  %ucNumOfVRAMModule = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %add.ptr, i32 0, i32 5
  %20 = ptrtoint ptr %ucNumOfVRAMModule to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucNumOfVRAMModule, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %module_index)
  %cmp = icmp ugt i8 %21, %module_index
  br i1 %cmp, label %if.then12, label %sw.bb8.cleanup117_crit_edge

sw.bb8.cleanup117_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

if.then12:                                        ; preds = %sw.bb8
  %usMemClkPatchTblOffset = getelementptr inbounds %struct._ATOM_VRAM_INFO_HEADER_V2_1, ptr %add.ptr, i32 0, i32 2
  %22 = ptrtoint ptr %usMemClkPatchTblOffset to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usMemClkPatchTblOffset, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv13 = zext i16 %24 to i32
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %conv13
  %add.ptr15 = getelementptr i8, ptr %add.ptr14, i32 4
  %25 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr14, align 1
  %27 = call i16 @llvm.bswap.i16(i16 %26)
  %conv16 = zext i16 %27 to i32
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %conv16
  %div = udiv i16 %27, 3
  %narrow = add nuw nsw i16 %div, 255
  %28 = and i16 %narrow, 255
  %conv23 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %28)
  %cmp24 = icmp ugt i16 %28, 32
  br i1 %cmp24, label %if.then12.cleanup117_crit_edge, label %while.cond.preheader

if.then12.cleanup117_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

while.cond.preheader:                             ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp28177.not = icmp eq i16 %28, 0
  br i1 %cmp28177.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %format.0179 = phi ptr [ %add.ptr37, %if.end32.while.body_crit_edge ], [ %add.ptr15, %while.cond.preheader.while.body_crit_edge ]
  %i.0178 = phi i32 [ %inc, %if.end32.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %ucPreRegDataLength = getelementptr inbounds %struct._ATOM_INIT_REG_INDEX_FORMAT, ptr %format.0179, i32 0, i32 1
  %29 = ptrtoint ptr %ucPreRegDataLength to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucPreRegDataLength, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool.not = icmp sgt i8 %30, -1
  br i1 %tobool.not, label %if.end32, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end32:                                         ; preds = %while.body
  %31 = ptrtoint ptr %format.0179 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %format.0179, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32)
  %arrayidx33 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 3, i32 %i.0178
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx33, align 4
  %35 = ptrtoint ptr %ucPreRegDataLength to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ucPreRegDataLength, align 1
  %pre_reg_data = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 3, i32 %i.0178, i32 1
  %37 = ptrtoint ptr %pre_reg_data to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %pre_reg_data, align 2
  %inc = add nuw nsw i32 %i.0178, 1
  %add.ptr37 = getelementptr i8, ptr %format.0179, i32 3
  %exitcond.not = icmp eq i32 %inc, %conv23
  br i1 %exitcond.not, label %if.end32.while.end_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end32.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %i.0178, %while.body.while.end_crit_edge ], [ %conv23, %if.end32.while.end_crit_edge ]
  %conv38 = trunc i32 %i.0.lcssa to i8
  %38 = ptrtoint ptr %reg_table to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv38, ptr %reg_table, align 4
  %39 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp40.not186 = icmp eq i32 %40, 0
  br i1 %cmp40.not186, label %while.end.while.cond39._crit_edge_crit_edge, label %land.rhs.lr.ph

while.end.while.cond39._crit_edge_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond39._crit_edge

land.rhs.lr.ph:                                   ; preds = %while.end
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %usRegDataBlkSize = getelementptr inbounds %struct._ATOM_INIT_REG_BLOCK, ptr %add.ptr14, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %if.end97.land.rhs_crit_edge, %land.rhs.lr.ph
  %42 = phi i32 [ %41, %land.rhs.lr.ph ], [ %63, %if.end97.land.rhs_crit_edge ]
  %reg_data.0188 = phi ptr [ %add.ptr17, %land.rhs.lr.ph ], [ %add.ptr99, %if.end97.land.rhs_crit_edge ]
  %num_ranges.0187 = phi i8 [ 0, %land.rhs.lr.ph ], [ %num_ranges.1, %if.end97.land.rhs_crit_edge ]
  %conv42 = zext i8 %num_ranges.0187 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %num_ranges.0187)
  %cmp43 = icmp ult i8 %num_ranges.0187, 20
  br i1 %cmp43, label %while.body45, label %land.rhs.cleanup117_crit_edge

land.rhs.cleanup117_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup117

while.body45:                                     ; preds = %land.rhs
  %shr = lshr i32 %42, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv9)
  %cmp50 = icmp eq i32 %shr, %conv9
  br i1 %cmp50, label %if.then52, label %while.body45.if.end97_crit_edge

while.body45.if.end97_crit_edge:                  ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then52:                                        ; preds = %while.body45
  %and53 = and i32 %42, 16777215
  %arrayidx55 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and53, ptr %arrayidx55, align 4
  %44 = ptrtoint ptr %reg_table to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp58182.not = icmp eq i8 %45, 0
  br i1 %cmp58182.not, label %if.then52.for.end_crit_edge, label %if.then52.for.body_crit_edge

if.then52.for.body_crit_edge:                     ; preds = %if.then52
  br label %for.body

if.then52.for.end_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then52.for.body_crit_edge
  %j.0185 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 1, %if.then52.for.body_crit_edge ]
  %i.1183 = phi i32 [ %inc95, %for.inc.for.body_crit_edge ], [ 0, %if.then52.for.body_crit_edge ]
  %pre_reg_data62 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 3, i32 %i.1183, i32 1
  %46 = ptrtoint ptr %pre_reg_data62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pre_reg_data62, align 2
  %trunc = trunc i8 %47 to i4
  %48 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.143)
  switch i4 %trunc, label %for.body.for.inc_crit_edge [
    i4 4, label %if.then67
    i4 0, label %if.then81
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr68 = getelementptr i32, ptr %reg_data.0188, i32 %j.0185
  %49 = ptrtoint ptr %add.ptr68 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr68, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50)
  %arrayidx72 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42, i32 1, i32 %i.1183
  %52 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx72, align 4
  %inc73 = add i32 %j.0185, 1
  br label %for.inc

if.then81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %sub86 = add nsw i32 %i.1183, -1
  %arrayidx87 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42, i32 1, i32 %sub86
  %53 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx87, align 4
  %arrayidx92 = getelementptr %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 2, i32 %conv42, i32 1, i32 %i.1183
  %55 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx92, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.then67, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc73, %if.then67 ], [ %j.0185, %if.then81 ], [ %j.0185, %for.body.for.inc_crit_edge ]
  %inc95 = add nuw nsw i32 %i.1183, 1
  %56 = ptrtoint ptr %reg_table to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %reg_table, align 4
  %conv57 = zext i8 %57 to i32
  %cmp58 = icmp ult i32 %inc95, %conv57
  br i1 %cmp58, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then52.for.end_crit_edge
  %inc96 = add i8 %num_ranges.0187, 1
  br label %if.end97

if.end97:                                         ; preds = %for.end, %while.body45.if.end97_crit_edge
  %num_ranges.1 = phi i8 [ %inc96, %for.end ], [ %num_ranges.0187, %while.body45.if.end97_crit_edge ]
  %58 = ptrtoint ptr %usRegDataBlkSize to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %usRegDataBlkSize, align 1
  %60 = call i16 @llvm.bswap.i16(i16 %59)
  %conv98 = zext i16 %60 to i32
  %add.ptr99 = getelementptr i8, ptr %reg_data.0188, i32 %conv98
  %61 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr99, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  %cmp40.not = icmp eq i32 %62, 0
  br i1 %cmp40.not, label %if.end97.while.cond39._crit_edge_crit_edge, label %if.end97.land.rhs_crit_edge

if.end97.land.rhs_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.end97.while.cond39._crit_edge_crit_edge:       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond39._crit_edge

while.cond39._crit_edge:                          ; preds = %if.end97.while.cond39._crit_edge_crit_edge, %while.end.while.cond39._crit_edge_crit_edge
  %num_ranges.0.lcssa = phi i8 [ 0, %while.end.while.cond39._crit_edge_crit_edge ], [ %num_ranges.1, %if.end97.while.cond39._crit_edge_crit_edge ]
  %num_entries105 = getelementptr inbounds %struct.atom_mc_reg_table, ptr %reg_table, i32 0, i32 1
  %64 = ptrtoint ptr %num_entries105 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %num_ranges.0.lcssa, ptr %num_entries105, align 1
  br label %cleanup117

sw.default:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #13
  %conv7 = zext i8 %19 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef %conv7) #11
  br label %cleanup117

sw.default112:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i8 %14 to i32
  %65 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %crev, align 1
  %conv114 = zext i8 %66 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv3, i32 noundef %conv114) #11
  br label %cleanup117

cleanup117:                                       ; preds = %sw.default112, %sw.default, %while.cond39._crit_edge, %land.rhs.cleanup117_crit_edge, %if.then12.cleanup117_crit_edge, %sw.bb8.cleanup117_crit_edge, %sw.bb, %entry.cleanup117_crit_edge
  %retval.1 = phi i32 [ -22, %sw.default112 ], [ -22, %sw.default ], [ -22, %sw.bb ], [ -22, %sw.bb8.cleanup117_crit_edge ], [ -22, %entry.cleanup117_crit_edge ], [ 0, %while.cond39._crit_edge ], [ -22, %if.then12.cleanup117_crit_edge ], [ -22, %land.rhs.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %size) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_initialize_bios_scratch_regs(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %3)
  %cmp = icmp ugt i32 %3, 26
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %5, i32 5932
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !214
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %9, i32 5948
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #11, !srcloc !214
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i36 = getelementptr i8, ptr %5, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #11, !srcloc !214
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #11, !srcloc !214
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bios_2_scratch.0 = phi i32 [ %7, %if.then ], [ %13, %if.else ]
  %bios_6_scratch.0 = phi i32 [ %11, %if.then ], [ %17, %if.else ]
  %or = or i32 %bios_6_scratch.0, 536870912
  %18 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %19)
  %cmp5 = icmp ugt i32 %19, 38
  %spec.select.v = select i1 %cmp5, i32 -536936449, i32 -536870913
  %spec.select = and i32 %spec.select.v, %bios_2_scratch.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %19)
  %cmp10 = icmp ugt i32 %19, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #11
  %rmmio.i43 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i43, align 4
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i44 = getelementptr i8, ptr %22, i32 5932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %20) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %24 = ptrtoint ptr %rmmio.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i43, align 4
  %add.ptr.i48 = getelementptr i8, ptr %25, i32 5948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %23) #11, !srcloc !216
  br label %if.end13

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i52 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %20) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %27 = ptrtoint ptr %rmmio.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i43, align 4
  %add.ptr.i56 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %26) #11, !srcloc !216
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_save_bios_scratch_regs(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp = icmp ugt i32 %1, 26
  %. = select i1 %cmp, i32 5924, i32 16
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %.
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !214
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %add.1 = add nuw nsw i32 %., 4
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %8, i32 %add.1
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #11, !srcloc !214
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.1, align 4
  %add.2 = or i32 %., 8
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %13, i32 %add.2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #11, !srcloc !214
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx.2, align 4
  %add.3 = add nuw nsw i32 %., 12
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %18, i32 %add.3
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #11, !srcloc !214
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.3, align 4
  %add.4 = add nuw nsw i32 %., 16
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %23, i32 %add.4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #11, !srcloc !214
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.4, align 4
  %add.5 = add nuw nsw i32 %., 20
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %28, i32 %add.5
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #11, !srcloc !214
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.5, align 4
  %add.6 = add nuw nsw i32 %., 24
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %33, i32 %add.6
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #11, !srcloc !214
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.6, align 4
  %add.7 = add nuw nsw i32 %., 28
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %38, i32 %add.7
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #11, !srcloc !214
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 7
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx.7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_restore_bios_scratch_regs(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %1)
  %cmp = icmp ugt i32 %1, 26
  %. = select i1 %cmp, i32 5924, i32 16
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #11, !srcloc !216
  %arrayidx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1, align 4
  %add.1 = add nuw nsw i32 %., 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %11, i32 %add.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %9) #11, !srcloc !216
  %arrayidx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  %add.2 = or i32 %., 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %16, i32 %add.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %14) #11, !srcloc !216
  %arrayidx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3, align 4
  %add.3 = add nuw nsw i32 %., 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %21, i32 %add.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %19) #11, !srcloc !216
  %arrayidx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.4, align 4
  %add.4 = add nuw nsw i32 %., 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #11
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %26, i32 %add.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 %24) #11, !srcloc !216
  %arrayidx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.5, align 4
  %add.5 = add nuw nsw i32 %., 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %31, i32 %add.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 %29) #11, !srcloc !216
  %arrayidx.6 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 6
  %32 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.6, align 4
  %add.6 = add nuw nsw i32 %., 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %36, i32 %add.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 %34) #11, !srcloc !216
  %arrayidx.7 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 61, i32 7
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.7, align 4
  %add.7 = add nuw nsw i32 %., 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %41, i32 %add.7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.7, i32 %39) #11, !srcloc !216
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atom_output_lock(ptr nocapture noundef readonly %encoder, i1 noundef zeroext %lock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp = icmp ugt i32 %5, 26
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 5948
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !214
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i26 = getelementptr i8, ptr %7, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #11, !srcloc !214
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bios_6_scratch.0 = phi i32 [ %9, %if.then ], [ %11, %if.else ]
  %or = and i32 %bios_6_scratch.0, -273
  %bios_6_scratch.1.v = select i1 %lock, i32 256, i32 16
  %bios_6_scratch.1 = or i32 %or, %bios_6_scratch.1.v
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %13)
  %cmp9 = icmp ugt i32 %13, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %bios_6_scratch.1) #11
  %rmmio.i29 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i29, align 4
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i30 = getelementptr i8, ptr %16, i32 5948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %14) #11, !srcloc !216
  br label %if.end12

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i34 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %14) #11, !srcloc !216
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_connected_scratch_regs(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %encoder, i1 noundef zeroext %connected) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp = icmp ugt i32 %5, 26
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 5924
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !214
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i331 = getelementptr i8, ptr %11, i32 5936
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i331) #11, !srcloc !214
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i335 = getelementptr i8, ptr %15, i32 5948
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i335) #11, !srcloc !214
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i339 = getelementptr i8, ptr %7, i32 16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #11, !srcloc !214
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i343 = getelementptr i8, ptr %21, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i343) #11, !srcloc !214
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i347 = getelementptr i8, ptr %25, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i347) #11, !srcloc !214
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bios_0_scratch.0 = phi i32 [ %9, %if.then ], [ %19, %if.else ]
  %bios_3_scratch.0 = phi i32 [ %13, %if.then ], [ %23, %if.else ]
  %bios_6_scratch.0 = phi i32 [ %17, %if.then ], [ %27, %if.else ]
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %28 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devices, align 4
  %and = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %land.lhs.true

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %devices10 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %30 = ptrtoint ptr %devices10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %devices10, align 4
  %and11 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end22_crit_edge, label %if.then13

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then13:                                        ; preds = %land.lhs.true
  br i1 %connected, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22) #11
  %or = or i32 %bios_3_scratch.0, 4
  %or16 = or i32 %bios_6_scratch.0, 262144
  br label %if.end22

if.else17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23) #11
  %and18 = and i32 %bios_0_scratch.0, -19457
  %and19 = and i32 %bios_3_scratch.0, -5
  %and20 = and i32 %bios_6_scratch.0, -262145
  br label %if.end22

if.end22:                                         ; preds = %if.else17, %if.then15, %land.lhs.true.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %bios_0_scratch.1 = phi i32 [ %bios_0_scratch.0, %if.then15 ], [ %and18, %if.else17 ], [ %bios_0_scratch.0, %land.lhs.true.if.end22_crit_edge ], [ %bios_0_scratch.0, %if.end.if.end22_crit_edge ]
  %bios_3_scratch.1 = phi i32 [ %or, %if.then15 ], [ %and19, %if.else17 ], [ %bios_3_scratch.0, %land.lhs.true.if.end22_crit_edge ], [ %bios_3_scratch.0, %if.end.if.end22_crit_edge ]
  %bios_6_scratch.1 = phi i32 [ %or16, %if.then15 ], [ %and20, %if.else17 ], [ %bios_6_scratch.0, %land.lhs.true.if.end22_crit_edge ], [ %bios_6_scratch.0, %if.end.if.end22_crit_edge ]
  %32 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %devices, align 4
  %and24 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end40_crit_edge, label %land.lhs.true26

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

land.lhs.true26:                                  ; preds = %if.end22
  %devices27 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %34 = ptrtoint ptr %devices27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devices27, align 4
  %and28 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true26.if.end40_crit_edge, label %if.then30

land.lhs.true26.if.end40_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then30:                                        ; preds = %land.lhs.true26
  br i1 %connected, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24) #11
  %or33 = or i32 %bios_3_scratch.1, 256
  %or34 = or i32 %bios_6_scratch.1, 16777216
  br label %if.end40

if.else35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25) #11
  %and36 = and i32 %bios_0_scratch.1, -12289
  %and37 = and i32 %bios_3_scratch.1, -257
  %and38 = and i32 %bios_6_scratch.1, -16777217
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then32, %land.lhs.true26.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %bios_0_scratch.2 = phi i32 [ %bios_0_scratch.1, %if.then32 ], [ %and36, %if.else35 ], [ %bios_0_scratch.1, %land.lhs.true26.if.end40_crit_edge ], [ %bios_0_scratch.1, %if.end22.if.end40_crit_edge ]
  %bios_3_scratch.2 = phi i32 [ %or33, %if.then32 ], [ %and37, %if.else35 ], [ %bios_3_scratch.1, %land.lhs.true26.if.end40_crit_edge ], [ %bios_3_scratch.1, %if.end22.if.end40_crit_edge ]
  %bios_6_scratch.2 = phi i32 [ %or34, %if.then32 ], [ %and38, %if.else35 ], [ %bios_6_scratch.1, %land.lhs.true26.if.end40_crit_edge ], [ %bios_6_scratch.1, %if.end22.if.end40_crit_edge ]
  %36 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %devices, align 4
  %and42 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end59_crit_edge, label %land.lhs.true44

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true44:                                  ; preds = %if.end40
  %devices45 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %38 = ptrtoint ptr %devices45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devices45, align 4
  %and46 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.lhs.true44.if.end59_crit_edge, label %if.then48

land.lhs.true44.if.end59_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

if.then48:                                        ; preds = %land.lhs.true44
  br i1 %connected, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26) #11
  %or51 = or i32 %bios_0_scratch.2, 262144
  %or52 = or i32 %bios_3_scratch.2, 2
  %or53 = or i32 %bios_6_scratch.2, 131072
  br label %if.end59

if.else54:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.27) #11
  %and55 = and i32 %bios_0_scratch.2, -262145
  %and56 = and i32 %bios_3_scratch.2, -3
  %and57 = and i32 %bios_6_scratch.2, -131073
  br label %if.end59

if.end59:                                         ; preds = %if.else54, %if.then50, %land.lhs.true44.if.end59_crit_edge, %if.end40.if.end59_crit_edge
  %bios_0_scratch.3 = phi i32 [ %or51, %if.then50 ], [ %and55, %if.else54 ], [ %bios_0_scratch.2, %land.lhs.true44.if.end59_crit_edge ], [ %bios_0_scratch.2, %if.end40.if.end59_crit_edge ]
  %bios_3_scratch.3 = phi i32 [ %or52, %if.then50 ], [ %and56, %if.else54 ], [ %bios_3_scratch.2, %land.lhs.true44.if.end59_crit_edge ], [ %bios_3_scratch.2, %if.end40.if.end59_crit_edge ]
  %bios_6_scratch.3 = phi i32 [ %or53, %if.then50 ], [ %and57, %if.else54 ], [ %bios_6_scratch.2, %land.lhs.true44.if.end59_crit_edge ], [ %bios_6_scratch.2, %if.end40.if.end59_crit_edge ]
  %40 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devices, align 4
  %and61 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end78_crit_edge, label %land.lhs.true63

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

land.lhs.true63:                                  ; preds = %if.end59
  %devices64 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %42 = ptrtoint ptr %devices64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devices64, align 4
  %and65 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true63.if.end78_crit_edge, label %if.then67

land.lhs.true63.if.end78_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then67:                                        ; preds = %land.lhs.true63
  br i1 %connected, label %if.then69, label %if.else73

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #11
  %or70 = or i32 %bios_0_scratch.3, 2
  %or71 = or i32 %bios_3_scratch.3, 1
  %or72 = or i32 %bios_6_scratch.3, 65536
  br label %if.end78

if.else73:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.29) #11
  %and74 = and i32 %bios_0_scratch.3, -4
  %and75 = and i32 %bios_3_scratch.3, -2
  %and76 = and i32 %bios_6_scratch.3, -65537
  br label %if.end78

if.end78:                                         ; preds = %if.else73, %if.then69, %land.lhs.true63.if.end78_crit_edge, %if.end59.if.end78_crit_edge
  %bios_0_scratch.4 = phi i32 [ %or70, %if.then69 ], [ %and74, %if.else73 ], [ %bios_0_scratch.3, %land.lhs.true63.if.end78_crit_edge ], [ %bios_0_scratch.3, %if.end59.if.end78_crit_edge ]
  %bios_3_scratch.4 = phi i32 [ %or71, %if.then69 ], [ %and75, %if.else73 ], [ %bios_3_scratch.3, %land.lhs.true63.if.end78_crit_edge ], [ %bios_3_scratch.3, %if.end59.if.end78_crit_edge ]
  %bios_6_scratch.4 = phi i32 [ %or72, %if.then69 ], [ %and76, %if.else73 ], [ %bios_6_scratch.3, %land.lhs.true63.if.end78_crit_edge ], [ %bios_6_scratch.3, %if.end59.if.end78_crit_edge ]
  %44 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devices, align 4
  %and80 = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end78.if.end97_crit_edge, label %land.lhs.true82

if.end78.if.end97_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

land.lhs.true82:                                  ; preds = %if.end78
  %devices83 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %46 = ptrtoint ptr %devices83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devices83, align 4
  %and84 = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %land.lhs.true82.if.end97_crit_edge, label %if.then86

land.lhs.true82.if.end97_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end97

if.then86:                                        ; preds = %land.lhs.true82
  br i1 %connected, label %if.then88, label %if.else92

if.then88:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.30) #11
  %or89 = or i32 %bios_0_scratch.4, 512
  %or90 = or i32 %bios_3_scratch.4, 16
  %or91 = or i32 %bios_6_scratch.4, 1048576
  br label %if.end97

if.else92:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31) #11
  %and93 = and i32 %bios_0_scratch.4, -769
  %and94 = and i32 %bios_3_scratch.4, -17
  %and95 = and i32 %bios_6_scratch.4, -1048577
  br label %if.end97

if.end97:                                         ; preds = %if.else92, %if.then88, %land.lhs.true82.if.end97_crit_edge, %if.end78.if.end97_crit_edge
  %bios_0_scratch.5 = phi i32 [ %or89, %if.then88 ], [ %and93, %if.else92 ], [ %bios_0_scratch.4, %land.lhs.true82.if.end97_crit_edge ], [ %bios_0_scratch.4, %if.end78.if.end97_crit_edge ]
  %bios_3_scratch.5 = phi i32 [ %or90, %if.then88 ], [ %and94, %if.else92 ], [ %bios_3_scratch.4, %land.lhs.true82.if.end97_crit_edge ], [ %bios_3_scratch.4, %if.end78.if.end97_crit_edge ]
  %bios_6_scratch.5 = phi i32 [ %or91, %if.then88 ], [ %and95, %if.else92 ], [ %bios_6_scratch.4, %land.lhs.true82.if.end97_crit_edge ], [ %bios_6_scratch.4, %if.end78.if.end97_crit_edge ]
  %48 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %devices, align 4
  %and99 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end97.if.end116_crit_edge, label %land.lhs.true101

if.end97.if.end116_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

land.lhs.true101:                                 ; preds = %if.end97
  %devices102 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %50 = ptrtoint ptr %devices102 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %devices102, align 4
  %and103 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %land.lhs.true101.if.end116_crit_edge, label %if.then105

land.lhs.true101.if.end116_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then105:                                       ; preds = %land.lhs.true101
  br i1 %connected, label %if.then107, label %if.else111

if.then107:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.32) #11
  %or108 = or i32 %bios_0_scratch.5, 65536
  %or109 = or i32 %bios_3_scratch.5, 8
  %or110 = or i32 %bios_6_scratch.5, 524288
  br label %if.end116

if.else111:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33) #11
  %and112 = and i32 %bios_0_scratch.5, -65537
  %and113 = and i32 %bios_3_scratch.5, -9
  %and114 = and i32 %bios_6_scratch.5, -524289
  br label %if.end116

if.end116:                                        ; preds = %if.else111, %if.then107, %land.lhs.true101.if.end116_crit_edge, %if.end97.if.end116_crit_edge
  %bios_0_scratch.6 = phi i32 [ %or108, %if.then107 ], [ %and112, %if.else111 ], [ %bios_0_scratch.5, %land.lhs.true101.if.end116_crit_edge ], [ %bios_0_scratch.5, %if.end97.if.end116_crit_edge ]
  %bios_3_scratch.6 = phi i32 [ %or109, %if.then107 ], [ %and113, %if.else111 ], [ %bios_3_scratch.5, %land.lhs.true101.if.end116_crit_edge ], [ %bios_3_scratch.5, %if.end97.if.end116_crit_edge ]
  %bios_6_scratch.6 = phi i32 [ %or110, %if.then107 ], [ %and114, %if.else111 ], [ %bios_6_scratch.5, %land.lhs.true101.if.end116_crit_edge ], [ %bios_6_scratch.5, %if.end97.if.end116_crit_edge ]
  %52 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %devices, align 4
  %and118 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end116.if.end135_crit_edge, label %land.lhs.true120

if.end116.if.end135_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

land.lhs.true120:                                 ; preds = %if.end116
  %devices121 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %54 = ptrtoint ptr %devices121 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %devices121, align 4
  %and122 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %land.lhs.true120.if.end135_crit_edge, label %if.then124

land.lhs.true120.if.end135_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135

if.then124:                                       ; preds = %land.lhs.true120
  br i1 %connected, label %if.then126, label %if.else130

if.then126:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.34) #11
  %or127 = or i32 %bios_0_scratch.6, 131072
  %or128 = or i32 %bios_3_scratch.6, 128
  %or129 = or i32 %bios_6_scratch.6, 8388608
  br label %if.end135

if.else130:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35) #11
  %and131 = and i32 %bios_0_scratch.6, -131073
  %and132 = and i32 %bios_3_scratch.6, -129
  %and133 = and i32 %bios_6_scratch.6, -8388609
  br label %if.end135

if.end135:                                        ; preds = %if.else130, %if.then126, %land.lhs.true120.if.end135_crit_edge, %if.end116.if.end135_crit_edge
  %bios_0_scratch.7 = phi i32 [ %or127, %if.then126 ], [ %and131, %if.else130 ], [ %bios_0_scratch.6, %land.lhs.true120.if.end135_crit_edge ], [ %bios_0_scratch.6, %if.end116.if.end135_crit_edge ]
  %bios_3_scratch.7 = phi i32 [ %or128, %if.then126 ], [ %and132, %if.else130 ], [ %bios_3_scratch.6, %land.lhs.true120.if.end135_crit_edge ], [ %bios_3_scratch.6, %if.end116.if.end135_crit_edge ]
  %bios_6_scratch.7 = phi i32 [ %or129, %if.then126 ], [ %and133, %if.else130 ], [ %bios_6_scratch.6, %land.lhs.true120.if.end135_crit_edge ], [ %bios_6_scratch.6, %if.end116.if.end135_crit_edge ]
  %56 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %devices, align 4
  %and137 = and i32 %57, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end135.if.end154_crit_edge, label %land.lhs.true139

if.end135.if.end154_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

land.lhs.true139:                                 ; preds = %if.end135
  %devices140 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %58 = ptrtoint ptr %devices140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %devices140, align 4
  %and141 = and i32 %59, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %land.lhs.true139.if.end154_crit_edge, label %if.then143

land.lhs.true139.if.end154_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then143:                                       ; preds = %land.lhs.true139
  br i1 %connected, label %if.then145, label %if.else149

if.then145:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.36) #11
  %or146 = or i32 %bios_0_scratch.7, 2097152
  %or147 = or i32 %bios_3_scratch.7, 512
  %or148 = or i32 %bios_6_scratch.7, 33554432
  br label %if.end154

if.else149:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.37) #11
  %and150 = and i32 %bios_0_scratch.7, -2097153
  %and151 = and i32 %bios_3_scratch.7, -513
  %and152 = and i32 %bios_6_scratch.7, -33554433
  br label %if.end154

if.end154:                                        ; preds = %if.else149, %if.then145, %land.lhs.true139.if.end154_crit_edge, %if.end135.if.end154_crit_edge
  %bios_0_scratch.8 = phi i32 [ %or146, %if.then145 ], [ %and150, %if.else149 ], [ %bios_0_scratch.7, %land.lhs.true139.if.end154_crit_edge ], [ %bios_0_scratch.7, %if.end135.if.end154_crit_edge ]
  %bios_3_scratch.8 = phi i32 [ %or147, %if.then145 ], [ %and151, %if.else149 ], [ %bios_3_scratch.7, %land.lhs.true139.if.end154_crit_edge ], [ %bios_3_scratch.7, %if.end135.if.end154_crit_edge ]
  %bios_6_scratch.8 = phi i32 [ %or148, %if.then145 ], [ %and152, %if.else149 ], [ %bios_6_scratch.7, %land.lhs.true139.if.end154_crit_edge ], [ %bios_6_scratch.7, %if.end135.if.end154_crit_edge ]
  %60 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %devices, align 4
  %and156 = and i32 %61, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end154.if.end173_crit_edge, label %land.lhs.true158

if.end154.if.end173_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

land.lhs.true158:                                 ; preds = %if.end154
  %devices159 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %62 = ptrtoint ptr %devices159 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %devices159, align 4
  %and160 = and i32 %63, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %land.lhs.true158.if.end173_crit_edge, label %if.then162

land.lhs.true158.if.end173_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end173

if.then162:                                       ; preds = %land.lhs.true158
  br i1 %connected, label %if.then164, label %if.else168

if.then164:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.38) #11
  %or165 = or i32 %bios_0_scratch.8, 4194304
  %or166 = or i32 %bios_3_scratch.8, 1024
  %or167 = or i32 %bios_6_scratch.8, 67108864
  br label %if.end173

if.else168:                                       ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.39) #11
  %and169 = and i32 %bios_0_scratch.8, -4194305
  %and170 = and i32 %bios_3_scratch.8, -1025
  %and171 = and i32 %bios_6_scratch.8, -67108865
  br label %if.end173

if.end173:                                        ; preds = %if.else168, %if.then164, %land.lhs.true158.if.end173_crit_edge, %if.end154.if.end173_crit_edge
  %bios_0_scratch.9 = phi i32 [ %or165, %if.then164 ], [ %and169, %if.else168 ], [ %bios_0_scratch.8, %land.lhs.true158.if.end173_crit_edge ], [ %bios_0_scratch.8, %if.end154.if.end173_crit_edge ]
  %bios_3_scratch.9 = phi i32 [ %or166, %if.then164 ], [ %and170, %if.else168 ], [ %bios_3_scratch.8, %land.lhs.true158.if.end173_crit_edge ], [ %bios_3_scratch.8, %if.end154.if.end173_crit_edge ]
  %bios_6_scratch.9 = phi i32 [ %or167, %if.then164 ], [ %and171, %if.else168 ], [ %bios_6_scratch.8, %land.lhs.true158.if.end173_crit_edge ], [ %bios_6_scratch.8, %if.end154.if.end173_crit_edge ]
  %64 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %devices, align 4
  %and175 = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.if.end192_crit_edge, label %land.lhs.true177

if.end173.if.end192_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

land.lhs.true177:                                 ; preds = %if.end173
  %devices178 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %66 = ptrtoint ptr %devices178 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %devices178, align 4
  %and179 = and i32 %67, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %land.lhs.true177.if.end192_crit_edge, label %if.then181

land.lhs.true177.if.end192_crit_edge:             ; preds = %land.lhs.true177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

if.then181:                                       ; preds = %land.lhs.true177
  br i1 %connected, label %if.then183, label %if.else187

if.then183:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.40) #11
  %or184 = or i32 %bios_0_scratch.9, 8388608
  %or185 = or i32 %bios_3_scratch.9, 2048
  %or186 = or i32 %bios_6_scratch.9, 134217728
  br label %if.end192

if.else187:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.41) #11
  %and188 = and i32 %bios_0_scratch.9, -8388609
  %and189 = and i32 %bios_3_scratch.9, -2049
  %and190 = and i32 %bios_6_scratch.9, -134217729
  br label %if.end192

if.end192:                                        ; preds = %if.else187, %if.then183, %land.lhs.true177.if.end192_crit_edge, %if.end173.if.end192_crit_edge
  %bios_0_scratch.10 = phi i32 [ %or184, %if.then183 ], [ %and188, %if.else187 ], [ %bios_0_scratch.9, %land.lhs.true177.if.end192_crit_edge ], [ %bios_0_scratch.9, %if.end173.if.end192_crit_edge ]
  %bios_3_scratch.10 = phi i32 [ %or185, %if.then183 ], [ %and189, %if.else187 ], [ %bios_3_scratch.9, %land.lhs.true177.if.end192_crit_edge ], [ %bios_3_scratch.9, %if.end173.if.end192_crit_edge ]
  %bios_6_scratch.10 = phi i32 [ %or186, %if.then183 ], [ %and190, %if.else187 ], [ %bios_6_scratch.9, %land.lhs.true177.if.end192_crit_edge ], [ %bios_6_scratch.9, %if.end173.if.end192_crit_edge ]
  %68 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %devices, align 4
  %and194 = and i32 %69, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  br i1 %tobool195.not, label %if.end192.if.end211_crit_edge, label %land.lhs.true196

if.end192.if.end211_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

land.lhs.true196:                                 ; preds = %if.end192
  %devices197 = getelementptr inbounds %struct.radeon_connector, ptr %connector, i32 0, i32 2
  %70 = ptrtoint ptr %devices197 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %devices197, align 4
  %and198 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %land.lhs.true196.if.end211_crit_edge, label %if.then200

land.lhs.true196.if.end211_crit_edge:             ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end211

if.then200:                                       ; preds = %land.lhs.true196
  br i1 %connected, label %if.then202, label %if.else206

if.then202:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.42) #11
  %or203 = or i32 %bios_0_scratch.10, 1048576
  %or204 = or i32 %bios_3_scratch.10, 64
  %or205 = or i32 %bios_6_scratch.10, 4194304
  br label %if.end211

if.else206:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.43) #11
  %and207 = and i32 %bios_0_scratch.10, -1048577
  %and208 = and i32 %bios_3_scratch.10, -65
  %and209 = and i32 %bios_6_scratch.10, -4194305
  br label %if.end211

if.end211:                                        ; preds = %if.else206, %if.then202, %land.lhs.true196.if.end211_crit_edge, %if.end192.if.end211_crit_edge
  %bios_0_scratch.11 = phi i32 [ %or203, %if.then202 ], [ %and207, %if.else206 ], [ %bios_0_scratch.10, %land.lhs.true196.if.end211_crit_edge ], [ %bios_0_scratch.10, %if.end192.if.end211_crit_edge ]
  %bios_3_scratch.11 = phi i32 [ %or204, %if.then202 ], [ %and208, %if.else206 ], [ %bios_3_scratch.10, %land.lhs.true196.if.end211_crit_edge ], [ %bios_3_scratch.10, %if.end192.if.end211_crit_edge ]
  %bios_6_scratch.11 = phi i32 [ %or205, %if.then202 ], [ %and209, %if.else206 ], [ %bios_6_scratch.10, %land.lhs.true196.if.end211_crit_edge ], [ %bios_6_scratch.10, %if.end192.if.end211_crit_edge ]
  %72 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %73)
  %cmp213 = icmp ugt i32 %73, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %74 = tail call i32 @llvm.bswap.i32(i32 %bios_0_scratch.11) #11
  %rmmio.i350 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %75 = ptrtoint ptr %rmmio.i350 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i350, align 4
  br i1 %cmp213, label %if.then214, label %if.else215

if.then214:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i351 = getelementptr i8, ptr %76, i32 5924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i351, i32 %74) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %77 = tail call i32 @llvm.bswap.i32(i32 %bios_3_scratch.11) #11
  %78 = ptrtoint ptr %rmmio.i350 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i350, align 4
  %add.ptr.i355 = getelementptr i8, ptr %79, i32 5936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i355, i32 %77) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %80 = tail call i32 @llvm.bswap.i32(i32 %bios_6_scratch.11) #11
  %81 = ptrtoint ptr %rmmio.i350 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i350, align 4
  %add.ptr.i359 = getelementptr i8, ptr %82, i32 5948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i359, i32 %80) #11, !srcloc !216
  br label %if.end216

if.else215:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i363 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i363, i32 %74) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %83 = tail call i32 @llvm.bswap.i32(i32 %bios_3_scratch.11) #11
  %84 = ptrtoint ptr %rmmio.i350 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i350, align 4
  %add.ptr.i367 = getelementptr i8, ptr %85, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i367, i32 %83) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %86 = tail call i32 @llvm.bswap.i32(i32 %bios_6_scratch.11) #11
  %87 = ptrtoint ptr %rmmio.i350 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i350, align 4
  %add.ptr.i371 = getelementptr i8, ptr %88, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i371, i32 %86) #11, !srcloc !216
  br label %if.end216

if.end216:                                        ; preds = %if.else215, %if.then214
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_encoder_crtc_scratch_regs(ptr nocapture noundef readonly %encoder, i32 noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %5)
  %cmp = icmp ugt i32 %5, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp3 = icmp ugt i32 %5, 26
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 5936
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !214
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i115 = getelementptr i8, ptr %7, i32 28
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #11, !srcloc !214
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %bios_3_scratch.0 = phi i32 [ %9, %if.then4 ], [ %11, %if.else ]
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %12 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devices, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %bios_3_scratch.0, -262145
  %shl = shl i32 %crtc, 18
  %or = or i32 %and8, %shl
  %bios_3_scratch.1 = select i1 %tobool.not, i32 %bios_3_scratch.0, i32 %or
  %and11 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %and14 = and i32 %bios_3_scratch.1, -16777217
  %shl15 = shl i32 %crtc, 24
  %or16 = or i32 %and14, %shl15
  %bios_3_scratch.2 = select i1 %tobool12.not, i32 %bios_3_scratch.1, i32 %or16
  %and19 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %and22 = and i32 %bios_3_scratch.2, -65537
  %shl23 = shl i32 %crtc, 16
  %or24 = or i32 %and22, %shl23
  %bios_3_scratch.3 = select i1 %tobool20.not, i32 %bios_3_scratch.2, i32 %or24
  %and27 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %and30 = and i32 %bios_3_scratch.3, -1048577
  %shl31 = shl i32 %crtc, 20
  %or32 = or i32 %and30, %shl31
  %bios_3_scratch.4 = select i1 %tobool28.not, i32 %bios_3_scratch.3, i32 %or32
  %and35 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %and38 = and i32 %bios_3_scratch.4, -131073
  %shl39 = shl i32 %crtc, 17
  %or40 = or i32 %and38, %shl39
  %bios_3_scratch.5 = select i1 %tobool36.not, i32 %bios_3_scratch.4, i32 %or40
  %and43 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %and46 = and i32 %bios_3_scratch.5, -524289
  %shl47 = shl i32 %crtc, 19
  %or48 = or i32 %and46, %shl47
  %bios_3_scratch.6 = select i1 %tobool44.not, i32 %bios_3_scratch.5, i32 %or48
  %and51 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %and54 = and i32 %bios_3_scratch.6, -8388609
  %shl55 = shl i32 %crtc, 23
  %or56 = or i32 %and54, %shl55
  %bios_3_scratch.7 = select i1 %tobool52.not, i32 %bios_3_scratch.6, i32 %or56
  %and59 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %and62 = and i32 %bios_3_scratch.7, -33554433
  %shl63 = shl i32 %crtc, 25
  %or64 = or i32 %and62, %shl63
  %bios_3_scratch.8 = select i1 %tobool60.not, i32 %bios_3_scratch.7, i32 %or64
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %15)
  %cmp67 = icmp ugt i32 %15, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %bios_3_scratch.8) #11
  %rmmio.i118 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i118 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i118, align 4
  br i1 %cmp67, label %if.then68, label %if.else69

if.then68:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i119 = getelementptr i8, ptr %18, i32 5936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %16) #11, !srcloc !216
  br label %cleanup

if.else69:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i123 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %16) #11, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %if.else69, %if.then68, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_atombios_encoder_dpms_scratch_regs(ptr nocapture noundef readonly %encoder, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %5)
  %cmp = icmp ugt i32 %5, 38
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %5)
  %cmp3 = icmp ugt i32 %5, 26
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %7, i32 5932
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !214
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i170 = getelementptr i8, ptr %7, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #11, !srcloc !214
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %bios_2_scratch.0 = phi i32 [ %9, %if.then4 ], [ %11, %if.else ]
  %devices = getelementptr inbounds %struct.radeon_encoder, ptr %encoder, i32 0, i32 3
  %12 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devices, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13, label %if.then7

if.then7:                                         ; preds = %if.end6
  br i1 %on, label %if.end13.thread185, label %if.end13.thread

if.end13:                                         ; preds = %if.end6
  %and15 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end24_crit_edge, label %if.then17

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end13.thread185:                               ; preds = %if.then7
  %and10 = and i32 %bios_2_scratch.0, -262145
  %and15187 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15187)
  %tobool16.not188 = icmp eq i32 %and15187, 0
  br i1 %tobool16.not188, label %if.end13.thread185.if.end24_crit_edge, label %if.end13.thread185.if.then19_crit_edge

if.end13.thread185.if.then19_crit_edge:           ; preds = %if.end13.thread185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end13.thread185.if.end24_crit_edge:            ; preds = %if.end13.thread185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end13.thread:                                  ; preds = %if.then7
  %or = or i32 %bios_2_scratch.0, 262144
  %and15180 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15180)
  %tobool16.not181 = icmp eq i32 %and15180, 0
  br i1 %tobool16.not181, label %if.end13.thread.if.end24_crit_edge, label %if.end13.thread.if.else21_crit_edge

if.end13.thread.if.else21_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.end13.thread.if.end24_crit_edge:               ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then17:                                        ; preds = %if.end13
  br i1 %on, label %if.then17.if.then19_crit_edge, label %if.then17.if.else21_crit_edge

if.then17.if.else21_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.then17.if.then19_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %if.then17.if.then19_crit_edge, %if.end13.thread185.if.then19_crit_edge
  %bios_2_scratch.1182191 = phi i32 [ %bios_2_scratch.0, %if.then17.if.then19_crit_edge ], [ %and10, %if.end13.thread185.if.then19_crit_edge ]
  %and20 = and i32 %bios_2_scratch.1182191, -16777217
  br label %if.end24

if.else21:                                        ; preds = %if.then17.if.else21_crit_edge, %if.end13.thread.if.else21_crit_edge
  %bios_2_scratch.1182184 = phi i32 [ %bios_2_scratch.0, %if.then17.if.else21_crit_edge ], [ %or, %if.end13.thread.if.else21_crit_edge ]
  %or22 = or i32 %bios_2_scratch.1182184, 16777216
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then19, %if.end13.thread.if.end24_crit_edge, %if.end13.thread185.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %bios_2_scratch.2 = phi i32 [ %and20, %if.then19 ], [ %or22, %if.else21 ], [ %bios_2_scratch.0, %if.end13.if.end24_crit_edge ], [ %or, %if.end13.thread.if.end24_crit_edge ], [ %and10, %if.end13.thread185.if.end24_crit_edge ]
  %and26 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end35, label %if.then28

if.then28:                                        ; preds = %if.end24
  br i1 %on, label %if.end35.thread198, label %if.end35.thread

if.end35:                                         ; preds = %if.end24
  %and37 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end46_crit_edge, label %if.then39

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end35.thread198:                               ; preds = %if.then28
  %and31 = and i32 %bios_2_scratch.2, -65537
  %and37200 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37200)
  %tobool38.not201 = icmp eq i32 %and37200, 0
  br i1 %tobool38.not201, label %if.end35.thread198.if.end46_crit_edge, label %if.end35.thread198.if.then41_crit_edge

if.end35.thread198.if.then41_crit_edge:           ; preds = %if.end35.thread198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.end35.thread198.if.end46_crit_edge:            ; preds = %if.end35.thread198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end35.thread:                                  ; preds = %if.then28
  %or33 = or i32 %bios_2_scratch.2, 65536
  %and37193 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37193)
  %tobool38.not194 = icmp eq i32 %and37193, 0
  br i1 %tobool38.not194, label %if.end35.thread.if.end46_crit_edge, label %if.end35.thread.if.else43_crit_edge

if.end35.thread.if.else43_crit_edge:              ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else43

if.end35.thread.if.end46_crit_edge:               ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then39:                                        ; preds = %if.end35
  br i1 %on, label %if.then39.if.then41_crit_edge, label %if.then39.if.else43_crit_edge

if.then39.if.else43_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else43

if.then39.if.then41_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then41

if.then41:                                        ; preds = %if.then39.if.then41_crit_edge, %if.end35.thread198.if.then41_crit_edge
  %bios_2_scratch.3195204 = phi i32 [ %bios_2_scratch.2, %if.then39.if.then41_crit_edge ], [ %and31, %if.end35.thread198.if.then41_crit_edge ]
  %and42 = and i32 %bios_2_scratch.3195204, -1048577
  br label %if.end46

if.else43:                                        ; preds = %if.then39.if.else43_crit_edge, %if.end35.thread.if.else43_crit_edge
  %bios_2_scratch.3195197 = phi i32 [ %bios_2_scratch.2, %if.then39.if.else43_crit_edge ], [ %or33, %if.end35.thread.if.else43_crit_edge ]
  %or44 = or i32 %bios_2_scratch.3195197, 1048576
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then41, %if.end35.thread.if.end46_crit_edge, %if.end35.thread198.if.end46_crit_edge, %if.end35.if.end46_crit_edge
  %bios_2_scratch.4 = phi i32 [ %and42, %if.then41 ], [ %or44, %if.else43 ], [ %bios_2_scratch.2, %if.end35.if.end46_crit_edge ], [ %or33, %if.end35.thread.if.end46_crit_edge ], [ %and31, %if.end35.thread198.if.end46_crit_edge ]
  %and48 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end57, label %if.then50

if.then50:                                        ; preds = %if.end46
  br i1 %on, label %if.end57.thread211, label %if.end57.thread

if.end57:                                         ; preds = %if.end46
  %and59 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end68_crit_edge, label %if.then61

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end57.thread211:                               ; preds = %if.then50
  %and53 = and i32 %bios_2_scratch.4, -131073
  %and59213 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59213)
  %tobool60.not214 = icmp eq i32 %and59213, 0
  br i1 %tobool60.not214, label %if.end57.thread211.if.end68_crit_edge, label %if.end57.thread211.if.then63_crit_edge

if.end57.thread211.if.then63_crit_edge:           ; preds = %if.end57.thread211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

if.end57.thread211.if.end68_crit_edge:            ; preds = %if.end57.thread211
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end57.thread:                                  ; preds = %if.then50
  %or55 = or i32 %bios_2_scratch.4, 131072
  %and59206 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59206)
  %tobool60.not207 = icmp eq i32 %and59206, 0
  br i1 %tobool60.not207, label %if.end57.thread.if.end68_crit_edge, label %if.end57.thread.if.else65_crit_edge

if.end57.thread.if.else65_crit_edge:              ; preds = %if.end57.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else65

if.end57.thread.if.end68_crit_edge:               ; preds = %if.end57.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then61:                                        ; preds = %if.end57
  br i1 %on, label %if.then61.if.then63_crit_edge, label %if.then61.if.else65_crit_edge

if.then61.if.else65_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else65

if.then61.if.then63_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63

if.then63:                                        ; preds = %if.then61.if.then63_crit_edge, %if.end57.thread211.if.then63_crit_edge
  %bios_2_scratch.5208217 = phi i32 [ %bios_2_scratch.4, %if.then61.if.then63_crit_edge ], [ %and53, %if.end57.thread211.if.then63_crit_edge ]
  %and64 = and i32 %bios_2_scratch.5208217, -524289
  br label %if.end68

if.else65:                                        ; preds = %if.then61.if.else65_crit_edge, %if.end57.thread.if.else65_crit_edge
  %bios_2_scratch.5208210 = phi i32 [ %bios_2_scratch.4, %if.then61.if.else65_crit_edge ], [ %or55, %if.end57.thread.if.else65_crit_edge ]
  %or66 = or i32 %bios_2_scratch.5208210, 524288
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then63, %if.end57.thread.if.end68_crit_edge, %if.end57.thread211.if.end68_crit_edge, %if.end57.if.end68_crit_edge
  %bios_2_scratch.6 = phi i32 [ %and64, %if.then63 ], [ %or66, %if.else65 ], [ %bios_2_scratch.4, %if.end57.if.end68_crit_edge ], [ %or55, %if.end57.thread.if.end68_crit_edge ], [ %and53, %if.end57.thread211.if.end68_crit_edge ]
  %and70 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end79, label %if.then72

if.then72:                                        ; preds = %if.end68
  br i1 %on, label %if.end79.thread224, label %if.end79.thread

if.end79:                                         ; preds = %if.end68
  %and81 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end79.if.end90_crit_edge, label %if.then83

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.end79.thread224:                               ; preds = %if.then72
  %and75 = and i32 %bios_2_scratch.6, -8388609
  %and81226 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81226)
  %tobool82.not227 = icmp eq i32 %and81226, 0
  br i1 %tobool82.not227, label %if.end79.thread224.if.end90_crit_edge, label %if.end79.thread224.if.then85_crit_edge

if.end79.thread224.if.then85_crit_edge:           ; preds = %if.end79.thread224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then85

if.end79.thread224.if.end90_crit_edge:            ; preds = %if.end79.thread224
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.end79.thread:                                  ; preds = %if.then72
  %or77 = or i32 %bios_2_scratch.6, 8388608
  %and81219 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81219)
  %tobool82.not220 = icmp eq i32 %and81219, 0
  br i1 %tobool82.not220, label %if.end79.thread.if.end90_crit_edge, label %if.end79.thread.if.else87_crit_edge

if.end79.thread.if.else87_crit_edge:              ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.end79.thread.if.end90_crit_edge:               ; preds = %if.end79.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then83:                                        ; preds = %if.end79
  br i1 %on, label %if.then83.if.then85_crit_edge, label %if.then83.if.else87_crit_edge

if.then83.if.else87_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else87

if.then83.if.then85_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then85

if.then85:                                        ; preds = %if.then83.if.then85_crit_edge, %if.end79.thread224.if.then85_crit_edge
  %bios_2_scratch.7221230 = phi i32 [ %bios_2_scratch.6, %if.then83.if.then85_crit_edge ], [ %and75, %if.end79.thread224.if.then85_crit_edge ]
  %and86 = and i32 %bios_2_scratch.7221230, -33554433
  br label %if.end90

if.else87:                                        ; preds = %if.then83.if.else87_crit_edge, %if.end79.thread.if.else87_crit_edge
  %bios_2_scratch.7221223 = phi i32 [ %bios_2_scratch.6, %if.then83.if.else87_crit_edge ], [ %or77, %if.end79.thread.if.else87_crit_edge ]
  %or88 = or i32 %bios_2_scratch.7221223, 33554432
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.then85, %if.end79.thread.if.end90_crit_edge, %if.end79.thread224.if.end90_crit_edge, %if.end79.if.end90_crit_edge
  %bios_2_scratch.8 = phi i32 [ %and86, %if.then85 ], [ %or88, %if.else87 ], [ %bios_2_scratch.6, %if.end79.if.end90_crit_edge ], [ %or77, %if.end79.thread.if.end90_crit_edge ], [ %and75, %if.end79.thread224.if.end90_crit_edge ]
  %and92 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end101, label %if.then94

if.then94:                                        ; preds = %if.end90
  br i1 %on, label %if.end101.thread237, label %if.end101.thread

if.end101:                                        ; preds = %if.end90
  %and103 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end101.if.end112_crit_edge, label %if.then105

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end101.thread237:                              ; preds = %if.then94
  %and97 = and i32 %bios_2_scratch.8, -67108865
  %and103239 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103239)
  %tobool104.not240 = icmp eq i32 %and103239, 0
  br i1 %tobool104.not240, label %if.end101.thread237.if.end112_crit_edge, label %if.end101.thread237.if.then107_crit_edge

if.end101.thread237.if.then107_crit_edge:         ; preds = %if.end101.thread237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107

if.end101.thread237.if.end112_crit_edge:          ; preds = %if.end101.thread237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.end101.thread:                                 ; preds = %if.then94
  %or99 = or i32 %bios_2_scratch.8, 67108864
  %and103232 = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103232)
  %tobool104.not233 = icmp eq i32 %and103232, 0
  br i1 %tobool104.not233, label %if.end101.thread.if.end112_crit_edge, label %if.end101.thread.if.else109_crit_edge

if.end101.thread.if.else109_crit_edge:            ; preds = %if.end101.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

if.end101.thread.if.end112_crit_edge:             ; preds = %if.end101.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

if.then105:                                       ; preds = %if.end101
  br i1 %on, label %if.then105.if.then107_crit_edge, label %if.then105.if.else109_crit_edge

if.then105.if.else109_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

if.then105.if.then107_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107

if.then107:                                       ; preds = %if.then105.if.then107_crit_edge, %if.end101.thread237.if.then107_crit_edge
  %bios_2_scratch.9234243 = phi i32 [ %bios_2_scratch.8, %if.then105.if.then107_crit_edge ], [ %and97, %if.end101.thread237.if.then107_crit_edge ]
  %and108 = and i32 %bios_2_scratch.9234243, -134217729
  br label %if.end112

if.else109:                                       ; preds = %if.then105.if.else109_crit_edge, %if.end101.thread.if.else109_crit_edge
  %bios_2_scratch.9234236 = phi i32 [ %bios_2_scratch.8, %if.then105.if.else109_crit_edge ], [ %or99, %if.end101.thread.if.else109_crit_edge ]
  %or110 = or i32 %bios_2_scratch.9234236, 134217728
  br label %if.end112

if.end112:                                        ; preds = %if.else109, %if.then107, %if.end101.thread.if.end112_crit_edge, %if.end101.thread237.if.end112_crit_edge, %if.end101.if.end112_crit_edge
  %bios_2_scratch.10 = phi i32 [ %and108, %if.then107 ], [ %or110, %if.else109 ], [ %bios_2_scratch.8, %if.end101.if.end112_crit_edge ], [ %or99, %if.end101.thread.if.end112_crit_edge ], [ %and97, %if.end101.thread237.if.end112_crit_edge ]
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %15)
  %cmp114 = icmp ugt i32 %15, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %bios_2_scratch.10) #11
  %rmmio.i173 = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i173 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i173, align 4
  br i1 %cmp114, label %if.then115, label %if.else116

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i174 = getelementptr i8, ptr %18, i32 5932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 %16) #11, !srcloc !216
  br label %cleanup

if.else116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i178 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %16) #11, !srcloc !216
  br label %cleanup

cleanup:                                          ; preds = %if.else116, %if.then115, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_i2c_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @radeon_atombios_parse_misc_flags_1_3(ptr nocapture noundef %rdev, i32 noundef %state_index, i32 noundef %misc, i32 noundef %misc2) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %0 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power_state, align 4
  %misc1 = getelementptr %struct.radeon_power_state, ptr %1, i32 %state_index, i32 5
  %2 = ptrtoint ptr %misc1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %misc, ptr %misc1, align 4
  %3 = load ptr, ptr %power_state, align 4
  %misc25 = getelementptr %struct.radeon_power_state, ptr %3, i32 %state_index, i32 6
  %4 = ptrtoint ptr %misc25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %misc2, ptr %misc25, align 4
  %and = and i32 %misc, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %power_state, align 4
  %arrayidx8 = getelementptr %struct.radeon_power_state, ptr %6, i32 %state_index
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %misc, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end16_crit_edge, label %if.then11

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_state, align 4
  %arrayidx14 = getelementptr %struct.radeon_power_state, ptr %9, i32 %state_index
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %arrayidx14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end.if.end16_crit_edge
  %and17 = and i32 %misc, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %if.then19

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %power_state, align 4
  %arrayidx22 = getelementptr %struct.radeon_power_state, ptr %12, i32 %state_index
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %arrayidx22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end16.if.end24_crit_edge
  %and25 = and i32 %misc, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %if.then27

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %power_state, align 4
  %arrayidx30 = getelementptr %struct.radeon_power_state, ptr %15, i32 %state_index
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %arrayidx30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end24.if.end32_crit_edge
  %and33 = and i32 %misc, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end44_crit_edge, label %if.then35

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %power_state, align 4
  %arrayidx38 = getelementptr %struct.radeon_power_state, ptr %18, i32 %state_index
  %19 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %arrayidx38, align 4
  %20 = load ptr, ptr %power_state, align 4
  %flags = getelementptr %struct.radeon_power_state, ptr %20, i32 %state_index, i32 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and43 = and i32 %22, -2
  store i32 %and43, ptr %flags, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %if.end32.if.end44_crit_edge
  %and45 = and i32 %misc2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %if.then47

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %power_state, align 4
  %arrayidx50 = getelementptr %struct.radeon_power_state, ptr %24, i32 %state_index
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %arrayidx50, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end44.if.end52_crit_edge
  %and53 = and i32 %misc, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %power_state, align 4
  %arrayidx58 = getelementptr %struct.radeon_power_state, ptr %27, i32 %state_index
  %28 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx58, align 4
  %default_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %29 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %state_index, ptr %default_power_state_index, align 4
  %30 = load ptr, ptr %power_state, align 4
  %clock_info = getelementptr %struct.radeon_power_state, ptr %30, i32 %state_index, i32 1
  %31 = ptrtoint ptr %clock_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clock_info, align 4
  %default_clock_mode = getelementptr %struct.radeon_power_state, ptr %30, i32 %state_index, i32 3
  %33 = ptrtoint ptr %default_clock_mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %default_clock_mode, align 4
  br label %if.end76

if.else:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_index)
  %cmp = icmp eq i32 %state_index, 0
  br i1 %cmp, label %if.then68, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %power_state, align 4
  %clock_info72 = getelementptr inbounds %struct.radeon_power_state, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %clock_info72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clock_info72, align 4
  %flags74 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags74, align 4
  %or = or i32 %39, 1
  store i32 %or, ptr %flags74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then68, %if.else.if.end76_crit_edge, %if.then55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_atombios_add_pplib_thermal_controller(ptr noundef %rdev, ptr nocapture noundef readonly %controller) unnamed_addr #0 align 64 {
entry:
  %i2c_bus = alloca %struct.radeon_i2c_bus_rec, align 4
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %i2c_bus) #11
  %0 = call ptr @memset(ptr %i2c_bus, i32 255, i32 76)
  %1 = ptrtoint ptr %controller to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %controller, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %entry.if.end273_crit_edge, label %if.then

entry.if.end273_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273

if.then:                                          ; preds = %entry
  %ucFanParameters = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %controller, i32 0, i32 3
  %3 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool.not = icmp sgt i8 %4, -1
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %no_fan = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 46
  %5 = ptrtoint ptr %no_fan to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %no_fan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ucFanParameters, align 1
  %8 = and i8 %7, 15
  %fan_pulses_per_revolution = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 47
  %9 = ptrtoint ptr %fan_pulses_per_revolution to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %fan_pulses_per_revolution, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ucFanMinRPM = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %controller, i32 0, i32 4
  %10 = ptrtoint ptr %ucFanMinRPM to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucFanMinRPM, align 1
  %fan_min_rpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 48
  %12 = ptrtoint ptr %fan_min_rpm to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %fan_min_rpm, align 2
  %ucFanMaxRPM = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %controller, i32 0, i32 5
  %13 = ptrtoint ptr %ucFanMaxRPM to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ucFanMaxRPM, align 1
  %fan_max_rpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 49
  %15 = ptrtoint ptr %fan_max_rpm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %fan_max_rpm, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %16 = ptrtoint ptr %controller to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %controller, align 1
  %conv17 = zext i8 %17 to i32
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %17, label %if.else205 [
    i8 7, label %do.end
    i8 8, label %do.end33
    i8 12, label %do.end51
    i8 14, label %do.end69
    i8 15, label %do.end87
    i8 16, label %do.end105
    i8 18, label %do.end123
    i8 19, label %do.end141
    i8 11, label %do.end159
    i8 -119, label %do.end177
    i8 -115, label %do.end195
  ]

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool24.not = icmp sgt i8 %20, -1
  %cond = select i1 %tobool24.not, ptr @.str.56, ptr @.str.55
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond) #15
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %21 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %int_thermal_type, align 4
  br label %if.end273

do.end33:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool38.not = icmp sgt i8 %23, -1
  %cond39 = select i1 %tobool38.not, ptr @.str.56, ptr @.str.55
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond39) #15
  %int_thermal_type42 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %24 = ptrtoint ptr %int_thermal_type42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %int_thermal_type42, align 4
  br label %if.end273

do.end51:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool56.not = icmp sgt i8 %26, -1
  %cond57 = select i1 %tobool56.not, ptr @.str.56, ptr @.str.55
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond57) #15
  %int_thermal_type60 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %27 = ptrtoint ptr %int_thermal_type60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %int_thermal_type60, align 4
  br label %if.end273

do.end69:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool74.not = icmp sgt i8 %29, -1
  %cond75 = select i1 %tobool74.not, ptr @.str.56, ptr @.str.55
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond75) #15
  %int_thermal_type78 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %30 = ptrtoint ptr %int_thermal_type78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %int_thermal_type78, align 4
  br label %if.end273

do.end87:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool92.not = icmp sgt i8 %32, -1
  %cond93 = select i1 %tobool92.not, ptr @.str.56, ptr @.str.55
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond93) #15
  %int_thermal_type96 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %33 = ptrtoint ptr %int_thermal_type96 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %int_thermal_type96, align 4
  br label %if.end273

do.end105:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool110.not = icmp sgt i8 %35, -1
  %cond111 = select i1 %tobool110.not, ptr @.str.56, ptr @.str.55
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond111) #15
  %int_thermal_type114 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %36 = ptrtoint ptr %int_thermal_type114 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 9, ptr %int_thermal_type114, align 4
  br label %if.end273

do.end123:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool128.not = icmp sgt i8 %38, -1
  %cond129 = select i1 %tobool128.not, ptr @.str.56, ptr @.str.55
  %call130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond129) #15
  %int_thermal_type132 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %39 = ptrtoint ptr %int_thermal_type132 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 11, ptr %int_thermal_type132, align 4
  br label %if.end273

do.end141:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool146.not = icmp sgt i8 %41, -1
  %cond147 = select i1 %tobool146.not, ptr @.str.56, ptr @.str.55
  %call148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull %cond147) #15
  %int_thermal_type150 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %42 = ptrtoint ptr %int_thermal_type150 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 12, ptr %int_thermal_type150, align 4
  br label %if.end273

do.end159:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %44)
  %tobool164.not = icmp sgt i8 %44, -1
  %cond165 = select i1 %tobool164.not, ptr @.str.56, ptr @.str.55
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull %cond165) #15
  %int_thermal_type168 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %45 = ptrtoint ptr %int_thermal_type168 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %int_thermal_type168, align 4
  br label %if.end273

do.end177:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %tobool182.not = icmp sgt i8 %47, -1
  %cond183 = select i1 %tobool182.not, ptr @.str.56, ptr @.str.55
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull %cond183) #15
  %int_thermal_type186 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %48 = ptrtoint ptr %int_thermal_type186 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %int_thermal_type186, align 4
  br label %if.end273

do.end195:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %50)
  %tobool200.not = icmp sgt i8 %50, -1
  %cond201 = select i1 %tobool200.not, ptr @.str.56, ptr @.str.55
  %call202 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %cond201) #15
  %int_thermal_type204 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %51 = ptrtoint ptr %int_thermal_type204 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 10, ptr %int_thermal_type204, align 4
  br label %if.end273

if.else205:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %17)
  %cmp208 = icmp ult i8 %17, 19
  br i1 %cmp208, label %do.end213, label %do.end248

do.end213:                                        ; preds = %if.else205
  %arrayidx = getelementptr [19 x ptr], ptr @pp_lib_thermal_controller_names, i32 0, i32 %conv17
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %ucI2cAddress = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %controller, i32 0, i32 2
  %54 = ptrtoint ptr %ucI2cAddress to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucI2cAddress, align 1
  %56 = lshr i8 %55, 1
  %57 = zext i8 %56 to i32
  %58 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %59)
  %tobool220.not = icmp sgt i8 %59, -1
  %cond221 = select i1 %tobool220.not, ptr @.str.56, ptr @.str.55
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %53, i32 noundef %57, ptr noundef nonnull %cond221) #15
  %int_thermal_type224 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %60 = ptrtoint ptr %int_thermal_type224 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %int_thermal_type224, align 4
  %ucI2cLine = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %controller, i32 0, i32 1
  %61 = ptrtoint ptr %ucI2cLine to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ucI2cLine, align 1
  call fastcc void @radeon_lookup_i2c_gpio(ptr nonnull sret(%struct.radeon_i2c_bus_rec) align 4 %i2c_bus, ptr noundef %rdev, i8 noundef zeroext %62)
  %call226 = call ptr @radeon_i2c_lookup(ptr noundef %rdev, ptr noundef nonnull %i2c_bus) #11
  %i2c_bus228 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 33
  %63 = ptrtoint ptr %i2c_bus228 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call226, ptr %i2c_bus228, align 8
  %tobool231.not = icmp eq ptr %call226, null
  br i1 %tobool231.not, label %do.end213.if.end273_crit_edge, label %if.then232

do.end213.if.end273_crit_edge:                    ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end273

if.then232:                                       ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #11
  %64 = call ptr @memset(ptr %info, i32 0, i32 56)
  %65 = ptrtoint ptr %controller to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %controller, align 1
  %idxprom234 = zext i8 %66 to i32
  %arrayidx235 = getelementptr [19 x ptr], ptr @pp_lib_thermal_controller_names, i32 0, i32 %idxprom234
  %67 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx235, align 4
  %69 = ptrtoint ptr %ucI2cAddress to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ucI2cAddress, align 1
  %71 = lshr i8 %70, 1
  %conv239 = zext i8 %71 to i16
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %72 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv239, ptr %addr, align 2
  %call240 = call i32 @strlcpy(ptr noundef nonnull %info, ptr noundef %68, i32 noundef 20) #11
  %73 = ptrtoint ptr %i2c_bus228 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i2c_bus228, align 8
  %call243 = call ptr @i2c_new_client_device(ptr noundef %74, ptr noundef nonnull %info) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #11
  br label %if.end273

do.end248:                                        ; preds = %if.else205
  call void @__sanitizer_cov_trace_pc() #13
  %ucI2cAddress252 = getelementptr inbounds %struct._ATOM_PPLIB_THERMALCONTROLLER, ptr %controller, i32 0, i32 2
  %75 = ptrtoint ptr %ucI2cAddress252 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ucI2cAddress252, align 1
  %77 = lshr i8 %76, 1
  %78 = zext i8 %77 to i32
  %79 = ptrtoint ptr %ucFanParameters to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ucFanParameters, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %tobool258.not = icmp sgt i8 %80, -1
  %cond259 = select i1 %tobool258.not, ptr @.str.56, ptr @.str.55
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv17, i32 noundef %78, ptr noundef nonnull %cond259) #15
  br label %if.end273

if.end273:                                        ; preds = %do.end248, %if.then232, %do.end213.if.end273_crit_edge, %do.end195, %do.end177, %do.end159, %do.end141, %do.end123, %do.end105, %do.end87, %do.end69, %do.end51, %do.end33, %do.end, %entry.if.end273_crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %i2c_bus) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @radeon_atombios_parse_pplib_clock_info(ptr nocapture noundef readonly %rdev, i32 noundef %state_index, i32 noundef %mode_index, ptr noundef readonly %clock_info) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %union.set_voltage, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %family17 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %2 = ptrtoint ptr %family17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %family17, align 4
  br i1 %tobool.not, label %if.else16, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %3)
  %cmp = icmp ugt i32 %3, 43
  %4 = ptrtoint ptr %clock_info to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %clock_info, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %ucEngineClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %clock_info, i32 0, i32 1
  %7 = ptrtoint ptr %ucEngineClockHigh to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucEngineClockHigh, align 1
  %conv2 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl, %conv
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %9 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %power_state, align 4
  %clock_info3 = getelementptr %struct.radeon_power_state, ptr %10, i32 %state_index, i32 1
  %11 = ptrtoint ptr %clock_info3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clock_info3, align 4
  %sclk5 = getelementptr %struct.radeon_pm_clock_info, ptr %12, i32 %mode_index, i32 1
  %13 = ptrtoint ptr %sclk5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %sclk5, align 4
  br label %if.end192

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %ucLowEngineClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_RS780_CLOCK_INFO, ptr %clock_info, i32 0, i32 1
  %14 = ptrtoint ptr %ucLowEngineClockHigh to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ucLowEngineClockHigh, align 1
  %conv7 = zext i8 %15 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %shl8, %conv
  %power_state11 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %16 = ptrtoint ptr %power_state11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %power_state11, align 4
  %clock_info13 = getelementptr %struct.radeon_power_state, ptr %17, i32 %state_index, i32 1
  %18 = ptrtoint ptr %clock_info13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clock_info13, align 4
  %sclk15 = getelementptr %struct.radeon_pm_clock_info, ptr %19, i32 %mode_index, i32 1
  %20 = ptrtoint ptr %sclk15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or9, ptr %sclk15, align 4
  br label %if.end192

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cmp18 = icmp ugt i32 %3, 56
  br i1 %cmp18, label %if.then20, label %if.else48

if.then20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %clock_info to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %clock_info, align 1
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %conv22 = zext i16 %23 to i32
  %ucEngineClockHigh23 = getelementptr inbounds %struct._ATOM_PPLIB_CI_CLOCK_INFO, ptr %clock_info, i32 0, i32 1
  %24 = ptrtoint ptr %ucEngineClockHigh23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucEngineClockHigh23, align 1
  %conv24 = zext i8 %25 to i32
  %shl25 = shl nuw nsw i32 %conv24, 16
  %or26 = or i32 %shl25, %conv22
  %usMemoryClockLow = getelementptr inbounds %struct._ATOM_PPLIB_CI_CLOCK_INFO, ptr %clock_info, i32 0, i32 2
  %26 = ptrtoint ptr %usMemoryClockLow to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usMemoryClockLow, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  %conv27 = zext i16 %28 to i32
  %ucMemoryClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_CI_CLOCK_INFO, ptr %clock_info, i32 0, i32 3
  %29 = ptrtoint ptr %ucMemoryClockHigh to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ucMemoryClockHigh, align 1
  %conv28 = zext i8 %30 to i32
  %shl29 = shl nuw nsw i32 %conv28, 16
  %or30 = or i32 %shl29, %conv27
  %power_state32 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %31 = ptrtoint ptr %power_state32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %power_state32, align 4
  %clock_info34 = getelementptr %struct.radeon_power_state, ptr %32, i32 %state_index, i32 1
  %33 = ptrtoint ptr %clock_info34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clock_info34, align 4
  %arrayidx35 = getelementptr %struct.radeon_pm_clock_info, ptr %34, i32 %mode_index
  %35 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or30, ptr %arrayidx35, align 4
  %36 = load ptr, ptr %power_state32, align 4
  %clock_info40 = getelementptr %struct.radeon_power_state, ptr %36, i32 %state_index, i32 1
  %37 = ptrtoint ptr %clock_info40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clock_info40, align 4
  %sclk42 = getelementptr %struct.radeon_pm_clock_info, ptr %38, i32 %mode_index, i32 1
  %39 = ptrtoint ptr %sclk42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or26, ptr %sclk42, align 4
  %40 = load ptr, ptr %power_state32, align 4
  %clock_info46 = getelementptr %struct.radeon_power_state, ptr %40, i32 %state_index, i32 1
  %41 = ptrtoint ptr %clock_info46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clock_info46, align 4
  %voltage = getelementptr %struct.radeon_pm_clock_info, ptr %42, i32 %mode_index, i32 2
  %43 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %voltage, align 4
  br label %if.end192

if.else48:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %3)
  %cmp50 = icmp ugt i32 %3, 51
  br i1 %cmp50, label %if.then52, label %if.else97

if.then52:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %clock_info to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %clock_info, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv54 = zext i16 %46 to i32
  %ucEngineClockHigh55 = getelementptr inbounds %struct._ATOM_PPLIB_SI_CLOCK_INFO, ptr %clock_info, i32 0, i32 1
  %47 = ptrtoint ptr %ucEngineClockHigh55 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ucEngineClockHigh55, align 1
  %conv56 = zext i8 %48 to i32
  %shl57 = shl nuw nsw i32 %conv56, 16
  %or58 = or i32 %shl57, %conv54
  %usMemoryClockLow59 = getelementptr inbounds %struct._ATOM_PPLIB_SI_CLOCK_INFO, ptr %clock_info, i32 0, i32 2
  %49 = ptrtoint ptr %usMemoryClockLow59 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %usMemoryClockLow59, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv60 = zext i16 %51 to i32
  %ucMemoryClockHigh61 = getelementptr inbounds %struct._ATOM_PPLIB_SI_CLOCK_INFO, ptr %clock_info, i32 0, i32 3
  %52 = ptrtoint ptr %ucMemoryClockHigh61 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ucMemoryClockHigh61, align 1
  %conv62 = zext i8 %53 to i32
  %shl63 = shl nuw nsw i32 %conv62, 16
  %or64 = or i32 %shl63, %conv60
  %power_state66 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %54 = ptrtoint ptr %power_state66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %power_state66, align 4
  %clock_info68 = getelementptr %struct.radeon_power_state, ptr %55, i32 %state_index, i32 1
  %56 = ptrtoint ptr %clock_info68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clock_info68, align 4
  %arrayidx69 = getelementptr %struct.radeon_pm_clock_info, ptr %57, i32 %mode_index
  %58 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or64, ptr %arrayidx69, align 4
  %59 = load ptr, ptr %power_state66, align 4
  %clock_info74 = getelementptr %struct.radeon_power_state, ptr %59, i32 %state_index, i32 1
  %60 = ptrtoint ptr %clock_info74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clock_info74, align 4
  %sclk76 = getelementptr %struct.radeon_pm_clock_info, ptr %61, i32 %mode_index, i32 1
  %62 = ptrtoint ptr %sclk76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or58, ptr %sclk76, align 4
  %63 = load ptr, ptr %power_state66, align 4
  %clock_info80 = getelementptr %struct.radeon_power_state, ptr %63, i32 %state_index, i32 1
  %64 = ptrtoint ptr %clock_info80 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clock_info80, align 4
  %voltage82 = getelementptr %struct.radeon_pm_clock_info, ptr %65, i32 %mode_index, i32 2
  %66 = ptrtoint ptr %voltage82 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %voltage82, align 4
  %usVDDC = getelementptr inbounds %struct._ATOM_PPLIB_SI_CLOCK_INFO, ptr %clock_info, i32 0, i32 4
  %67 = ptrtoint ptr %usVDDC to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %usVDDC, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %70 = ptrtoint ptr %power_state66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %power_state66, align 4
  %clock_info87 = getelementptr %struct.radeon_power_state, ptr %71, i32 %state_index, i32 1
  %72 = ptrtoint ptr %clock_info87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clock_info87, align 4
  %voltage90 = getelementptr %struct.radeon_pm_clock_info, ptr %73, i32 %mode_index, i32 2, i32 7
  %74 = ptrtoint ptr %voltage90 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %69, ptr %voltage90, align 4
  %usVDDCI = getelementptr inbounds %struct._ATOM_PPLIB_SI_CLOCK_INFO, ptr %clock_info, i32 0, i32 5
  %75 = ptrtoint ptr %usVDDCI to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usVDDCI, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %76)
  %78 = ptrtoint ptr %power_state66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %power_state66, align 4
  %clock_info94 = getelementptr %struct.radeon_power_state, ptr %79, i32 %state_index, i32 1
  %80 = ptrtoint ptr %clock_info94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clock_info94, align 4
  %vddci = getelementptr %struct.radeon_pm_clock_info, ptr %81, i32 %mode_index, i32 2, i32 8
  %82 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %77, ptr %vddci, align 2
  br label %if.end192

if.else97:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %3)
  %cmp99 = icmp ugt i32 %3, 38
  %83 = ptrtoint ptr %clock_info to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %clock_info, align 1
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  %conv103 = zext i16 %85 to i32
  br i1 %cmp99, label %if.then101, label %if.else149

if.then101:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #13
  %ucEngineClockHigh104 = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %clock_info, i32 0, i32 1
  %86 = ptrtoint ptr %ucEngineClockHigh104 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ucEngineClockHigh104, align 1
  %conv105 = zext i8 %87 to i32
  %shl106 = shl nuw nsw i32 %conv105, 16
  %or107 = or i32 %shl106, %conv103
  %usMemoryClockLow108 = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %clock_info, i32 0, i32 2
  %88 = ptrtoint ptr %usMemoryClockLow108 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %usMemoryClockLow108, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89)
  %conv109 = zext i16 %90 to i32
  %ucMemoryClockHigh110 = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %clock_info, i32 0, i32 3
  %91 = ptrtoint ptr %ucMemoryClockHigh110 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ucMemoryClockHigh110, align 1
  %conv111 = zext i8 %92 to i32
  %shl112 = shl nuw nsw i32 %conv111, 16
  %or113 = or i32 %shl112, %conv109
  %power_state115 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %93 = ptrtoint ptr %power_state115 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %power_state115, align 4
  %clock_info117 = getelementptr %struct.radeon_power_state, ptr %94, i32 %state_index, i32 1
  %95 = ptrtoint ptr %clock_info117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %clock_info117, align 4
  %arrayidx118 = getelementptr %struct.radeon_pm_clock_info, ptr %96, i32 %mode_index
  %97 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or113, ptr %arrayidx118, align 4
  %98 = load ptr, ptr %power_state115, align 4
  %clock_info123 = getelementptr %struct.radeon_power_state, ptr %98, i32 %state_index, i32 1
  %99 = ptrtoint ptr %clock_info123 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %clock_info123, align 4
  %sclk125 = getelementptr %struct.radeon_pm_clock_info, ptr %100, i32 %mode_index, i32 1
  %101 = ptrtoint ptr %sclk125 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %or107, ptr %sclk125, align 4
  %102 = load ptr, ptr %power_state115, align 4
  %clock_info129 = getelementptr %struct.radeon_power_state, ptr %102, i32 %state_index, i32 1
  %103 = ptrtoint ptr %clock_info129 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clock_info129, align 4
  %voltage131 = getelementptr %struct.radeon_pm_clock_info, ptr %104, i32 %mode_index, i32 2
  %105 = ptrtoint ptr %voltage131 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %voltage131, align 4
  %usVDDC133 = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %clock_info, i32 0, i32 4
  %106 = ptrtoint ptr %usVDDC133 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %usVDDC133, align 1
  %108 = tail call i16 @llvm.bswap.i16(i16 %107)
  %109 = ptrtoint ptr %power_state115 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %power_state115, align 4
  %clock_info137 = getelementptr %struct.radeon_power_state, ptr %110, i32 %state_index, i32 1
  %111 = ptrtoint ptr %clock_info137 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %clock_info137, align 4
  %voltage140 = getelementptr %struct.radeon_pm_clock_info, ptr %112, i32 %mode_index, i32 2, i32 7
  %113 = ptrtoint ptr %voltage140 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %108, ptr %voltage140, align 4
  %usVDDCI141 = getelementptr inbounds %struct._ATOM_PPLIB_EVERGREEN_CLOCK_INFO, ptr %clock_info, i32 0, i32 5
  %114 = ptrtoint ptr %usVDDCI141 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %usVDDCI141, align 1
  %116 = tail call i16 @llvm.bswap.i16(i16 %115)
  %117 = ptrtoint ptr %power_state115 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %power_state115, align 4
  %clock_info145 = getelementptr %struct.radeon_power_state, ptr %118, i32 %state_index, i32 1
  %119 = ptrtoint ptr %clock_info145 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clock_info145, align 4
  %vddci148 = getelementptr %struct.radeon_pm_clock_info, ptr %120, i32 %mode_index, i32 2, i32 8
  %121 = ptrtoint ptr %vddci148 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %116, ptr %vddci148, align 2
  br label %if.end192

if.else149:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #13
  %ucEngineClockHigh152 = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %clock_info, i32 0, i32 1
  %122 = ptrtoint ptr %ucEngineClockHigh152 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ucEngineClockHigh152, align 1
  %conv153 = zext i8 %123 to i32
  %shl154 = shl nuw nsw i32 %conv153, 16
  %or155 = or i32 %shl154, %conv103
  %usMemoryClockLow156 = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %clock_info, i32 0, i32 2
  %124 = ptrtoint ptr %usMemoryClockLow156 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %usMemoryClockLow156, align 1
  %126 = tail call i16 @llvm.bswap.i16(i16 %125)
  %conv157 = zext i16 %126 to i32
  %ucMemoryClockHigh158 = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %clock_info, i32 0, i32 3
  %127 = ptrtoint ptr %ucMemoryClockHigh158 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %ucMemoryClockHigh158, align 1
  %conv159 = zext i8 %128 to i32
  %shl160 = shl nuw nsw i32 %conv159, 16
  %or161 = or i32 %shl160, %conv157
  %power_state163 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %129 = ptrtoint ptr %power_state163 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %power_state163, align 4
  %clock_info165 = getelementptr %struct.radeon_power_state, ptr %130, i32 %state_index, i32 1
  %131 = ptrtoint ptr %clock_info165 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clock_info165, align 4
  %arrayidx166 = getelementptr %struct.radeon_pm_clock_info, ptr %132, i32 %mode_index
  %133 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or161, ptr %arrayidx166, align 4
  %134 = load ptr, ptr %power_state163, align 4
  %clock_info171 = getelementptr %struct.radeon_power_state, ptr %134, i32 %state_index, i32 1
  %135 = ptrtoint ptr %clock_info171 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clock_info171, align 4
  %sclk173 = getelementptr %struct.radeon_pm_clock_info, ptr %136, i32 %mode_index, i32 1
  %137 = ptrtoint ptr %sclk173 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or155, ptr %sclk173, align 4
  %138 = load ptr, ptr %power_state163, align 4
  %clock_info177 = getelementptr %struct.radeon_power_state, ptr %138, i32 %state_index, i32 1
  %139 = ptrtoint ptr %clock_info177 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %clock_info177, align 4
  %voltage179 = getelementptr %struct.radeon_pm_clock_info, ptr %140, i32 %mode_index, i32 2
  %141 = ptrtoint ptr %voltage179 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 3, ptr %voltage179, align 4
  %usVDDC181 = getelementptr inbounds %struct._ATOM_PPLIB_R600_CLOCK_INFO, ptr %clock_info, i32 0, i32 4
  %142 = ptrtoint ptr %usVDDC181 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 2)
  %143 = load i16, ptr %usVDDC181, align 1
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %145 = ptrtoint ptr %power_state163 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %power_state163, align 4
  %clock_info185 = getelementptr %struct.radeon_power_state, ptr %146, i32 %state_index, i32 1
  %147 = ptrtoint ptr %clock_info185 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %clock_info185, align 4
  %voltage188 = getelementptr %struct.radeon_pm_clock_info, ptr %148, i32 %mode_index, i32 2, i32 7
  %149 = ptrtoint ptr %voltage188 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %144, ptr %voltage188, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.else149, %if.then101, %if.then52, %if.then20, %if.else, %if.then1
  %power_state194 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %150 = ptrtoint ptr %power_state194 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %power_state194, align 4
  %clock_info196 = getelementptr %struct.radeon_power_state, ptr %151, i32 %state_index, i32 1
  %152 = ptrtoint ptr %clock_info196 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %clock_info196, align 4
  %voltage199 = getelementptr %struct.radeon_pm_clock_info, ptr %153, i32 %mode_index, i32 2, i32 7
  %154 = ptrtoint ptr %voltage199 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %voltage199, align 4
  %.off = add i16 %155, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %.off)
  %switch = icmp ult i16 %.off, 8
  br i1 %switch, label %sw.bb, label %if.end192.sw.epilog_crit_edge

if.end192.sw.epilog_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end192
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %args.i) #11
  %156 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args.i, i32 0, i32 1
  %157 = getelementptr inbounds %struct._SET_VOLTAGE_PARAMETERS, ptr %args.i, i32 0, i32 2
  %158 = call ptr @memset(ptr %args.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %159 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %160 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  %mode_info.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %161 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mode_info.i, align 4
  %call.i = call zeroext i1 @atom_parse_cmd_header(ptr noundef %162, i32 noundef 67, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i) #11
  br i1 %call.i, label %if.end.i, label %sw.bb.radeon_atom_get_max_vddc.exit.thread_crit_edge

sw.bb.radeon_atom_get_max_vddc.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atom_get_max_vddc.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %163 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %crev.i, align 1
  %165 = zext i8 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %164, label %sw.default.i [
    i8 1, label %if.end.i.radeon_atom_get_max_vddc.exit.thread_crit_edge
    i8 2, label %sw.bb1.i
    i8 3, label %sw.bb6.i
  ]

if.end.i.radeon_atom_get_max_vddc.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atom_get_max_vddc.exit.thread

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %166 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 6, ptr %args.i, align 1
  %167 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %156, align 1
  br label %if.then210

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 1, ptr %args.i, align 1
  %169 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 6, ptr %156, align 1
  %170 = call i16 @llvm.bswap.i16(i16 %155) #11
  br label %if.then210

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %164 to i32
  %171 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %frev.i, align 1
  %conv14.i = zext i8 %172 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %conv14.i, i32 noundef %conv.i) #11
  br label %radeon_atom_get_max_vddc.exit.thread

radeon_atom_get_max_vddc.exit.thread:             ; preds = %sw.default.i, %if.end.i.radeon_atom_get_max_vddc.exit.thread_crit_edge, %sw.bb.radeon_atom_get_max_vddc.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #11
  br label %sw.epilog

if.then210:                                       ; preds = %sw.bb6.i, %sw.bb1.i
  %.sink.i = phi i16 [ %170, %sw.bb6.i ], [ 0, %sw.bb1.i ]
  %173 = ptrtoint ptr %157 to i32
  call void @__asan_storeN_noabort(i32 %173, i32 2)
  store i16 %.sink.i, ptr %157, align 1
  %174 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mode_info.i, align 4
  %call12.i = call i32 @atom_execute_table(ptr noundef %175, i32 noundef 67, ptr noundef nonnull %args.i) #11
  %176 = ptrtoint ptr %157 to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %157, align 1
  %178 = call i16 @llvm.bswap.i16(i16 %177) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %args.i) #11
  %179 = ptrtoint ptr %power_state194 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %power_state194, align 4
  %clock_info214 = getelementptr %struct.radeon_power_state, ptr %180, i32 %state_index, i32 1
  %181 = ptrtoint ptr %clock_info214 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %clock_info214, align 4
  %voltage217 = getelementptr %struct.radeon_pm_clock_info, ptr %182, i32 %mode_index, i32 2, i32 7
  %183 = ptrtoint ptr %voltage217 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %178, ptr %voltage217, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then210, %radeon_atom_get_max_vddc.exit.thread, %if.end192.sw.epilog_crit_edge
  %184 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %flags, align 8
  %and220 = and i32 %185, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  %186 = ptrtoint ptr %power_state194 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %power_state194, align 4
  %clock_info237 = getelementptr %struct.radeon_power_state, ptr %187, i32 %state_index, i32 1
  %188 = ptrtoint ptr %clock_info237 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %clock_info237, align 4
  br i1 %tobool221.not, label %if.else233, label %if.then222

if.then222:                                       ; preds = %sw.epilog
  %sclk228 = getelementptr %struct.radeon_pm_clock_info, ptr %189, i32 %mode_index, i32 1
  %190 = ptrtoint ptr %sclk228 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %sclk228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp229 = icmp eq i32 %191, 0
  br i1 %cmp229, label %if.then222.cleanup_crit_edge, label %if.then222.if.end252_crit_edge

if.then222.if.end252_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

if.then222.cleanup_crit_edge:                     ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else233:                                       ; preds = %sw.epilog
  %arrayidx238 = getelementptr %struct.radeon_pm_clock_info, ptr %189, i32 %mode_index
  %192 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp240 = icmp eq i32 %193, 0
  br i1 %cmp240, label %if.else233.cleanup_crit_edge, label %lor.lhs.false

if.else233.cleanup_crit_edge:                     ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else233
  %sclk247 = getelementptr %struct.radeon_pm_clock_info, ptr %189, i32 %mode_index, i32 1
  %194 = ptrtoint ptr %sclk247 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %sclk247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp248 = icmp eq i32 %195, 0
  br i1 %cmp248, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end252_crit_edge

lor.lhs.false.if.end252_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end252

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end252:                                        ; preds = %lor.lhs.false.if.end252_crit_edge, %if.then222.if.end252_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end252, %lor.lhs.false.cleanup_crit_edge, %if.else233.cleanup_crit_edge, %if.then222.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end252 ], [ false, %if.then222.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.else233.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_atombios_parse_pplib_non_clock_info(ptr nocapture noundef %rdev, i32 noundef %state_index, i32 noundef %mode_index, ptr nocapture noundef readonly %non_clock_info) unnamed_addr #0 align 64 {
entry:
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset.i = alloca i16, align 2
  %max_vddci = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ulCapsAndSettings = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %non_clock_info, i32 0, i32 3
  %0 = ptrtoint ptr %ulCapsAndSettings to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %ulCapsAndSettings, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %non_clock_info to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %non_clock_info, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %mode_info1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #11
  %6 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #11
  %7 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev.i, align 1, !annotation !196
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #11
  %8 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !196
  %9 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %10, i32 noundef 4, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #11
  br i1 %call.i, label %if.then.i, label %entry.radeon_atombios_get_default_voltages.exit_crit_edge

entry.radeon_atombios_get_default_voltages.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %radeon_atombios_get_default_voltages.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios.i, align 4
  %15 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv.i
  %usBootUpVDDCVoltage.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %add.ptr.i, i32 0, i32 13
  %17 = ptrtoint ptr %usBootUpVDDCVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %usBootUpVDDCVoltage.i, align 1
  %19 = call i16 @llvm.bswap.i16(i16 %18) #11
  br label %radeon_atombios_get_default_voltages.exit

radeon_atombios_get_default_voltages.exit:        ; preds = %if.then.i, %entry.radeon_atombios_get_default_voltages.exit_crit_edge
  %vddc.0 = phi i16 [ 0, %entry.radeon_atombios_get_default_voltages.exit_crit_edge ], [ %19, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #11
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %20 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %power_state, align 4
  %misc1 = getelementptr %struct.radeon_power_state, ptr %21, i32 %state_index, i32 5
  %22 = ptrtoint ptr %misc1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %2, ptr %misc1, align 4
  %23 = load ptr, ptr %power_state, align 4
  %misc25 = getelementptr %struct.radeon_power_state, ptr %23, i32 %state_index, i32 6
  %24 = ptrtoint ptr %misc25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %misc25, align 4
  %and = lshr i32 %2, 3
  %shr = and i32 %and, 31
  %add = add nuw nsw i32 %shr, 1
  %25 = load ptr, ptr %power_state, align 4
  %pcie_lanes = getelementptr %struct.radeon_power_state, ptr %25, i32 %state_index, i32 7
  %26 = ptrtoint ptr %pcie_lanes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %pcie_lanes, align 4
  %and9 = and i32 %conv, 7
  %27 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %and9, label %radeon_atombios_get_default_voltages.exit.sw.epilog_crit_edge [
    i32 1, label %radeon_atombios_get_default_voltages.exit.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb13
    i32 5, label %sw.bb18
    i32 0, label %sw.bb23
  ]

radeon_atombios_get_default_voltages.exit.sw.epilog.sink.split_crit_edge: ; preds = %radeon_atombios_get_default_voltages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

radeon_atombios_get_default_voltages.exit.sw.epilog_crit_edge: ; preds = %radeon_atombios_get_default_voltages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb13:                                          ; preds = %radeon_atombios_get_default_voltages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %radeon_atombios_get_default_voltages.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %radeon_atombios_get_default_voltages.exit
  %and24 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %sw.bb23.sw.epilog_crit_edge, label %sw.bb23.sw.epilog.sink.split_crit_edge

sw.bb23.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb23.sw.epilog.sink.split_crit_edge, %sw.bb18, %sw.bb13, %radeon_atombios_get_default_voltages.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 4, %sw.bb18 ], [ 3, %sw.bb13 ], [ 2, %radeon_atombios_get_default_voltages.exit.sw.epilog.sink.split_crit_edge ], [ 4, %sw.bb23.sw.epilog.sink.split_crit_edge ]
  %28 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %power_state, align 4
  %arrayidx27 = getelementptr %struct.radeon_power_state, ptr %29, i32 %state_index
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %arrayidx27, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb23.sw.epilog_crit_edge, %radeon_atombios_get_default_voltages.exit.sw.epilog_crit_edge
  %31 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %power_state, align 4
  %flags = getelementptr %struct.radeon_power_state, ptr %32, i32 %state_index, i32 4
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %flags, align 4
  %and32 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.epilog.if.end39_crit_edge, label %if.then34

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %power_state, align 4
  %flags38 = getelementptr %struct.radeon_power_state, ptr %35, i32 %state_index, i32 4
  %36 = ptrtoint ptr %flags38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags38, align 4
  %or = or i32 %37, 1
  store i32 %or, ptr %flags38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %sw.epilog.if.end39_crit_edge
  %and40 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end130_crit_edge, label %if.then42

if.end39.if.end130_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then42:                                        ; preds = %if.end39
  %38 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %power_state, align 4
  %arrayidx45 = getelementptr %struct.radeon_power_state, ptr %39, i32 %state_index
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx45, align 4
  %default_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 24
  %41 = ptrtoint ptr %default_power_state_index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %state_index, ptr %default_power_state_index, align 4
  %42 = load ptr, ptr %power_state, align 4
  %clock_info = getelementptr %struct.radeon_power_state, ptr %42, i32 %state_index, i32 1
  %43 = ptrtoint ptr %clock_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clock_info, align 4
  %sub = add i32 %mode_index, -1
  %arrayidx51 = getelementptr %struct.radeon_pm_clock_info, ptr %44, i32 %sub
  %default_clock_mode = getelementptr %struct.radeon_power_state, ptr %42, i32 %state_index, i32 3
  %45 = ptrtoint ptr %default_clock_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx51, ptr %default_clock_mode, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %46 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %47)
  %cmp = icmp ugt i32 %47, 46
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then42
  %flags56 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %48 = ptrtoint ptr %flags56 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags56, align 8
  %and57 = and i32 %49, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then59, label %if.else.thread

if.else.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_vddci) #11
  %50 = ptrtoint ptr %max_vddci to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %max_vddci, align 2
  br label %if.then90

if.then59:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %power_state, align 4
  %clock_info63 = getelementptr %struct.radeon_power_state, ptr %52, i32 %state_index, i32 1
  %53 = ptrtoint ptr %clock_info63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clock_info63, align 4
  %sclk = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sclk, align 4
  %default_sclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 29
  %57 = ptrtoint ptr %default_sclk to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %default_sclk, align 4
  %58 = load ptr, ptr %clock_info63, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %default_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 30
  %61 = ptrtoint ptr %default_mclk to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %default_mclk, align 8
  %62 = load ptr, ptr %clock_info63, align 4
  %voltage77 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %62, i32 0, i32 2, i32 7
  %63 = ptrtoint ptr %voltage77 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %voltage77, align 4
  %default_vddc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 31
  %65 = ptrtoint ptr %default_vddc to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %default_vddc, align 4
  %66 = load ptr, ptr %clock_info63, align 4
  %vddci85 = getelementptr inbounds %struct.radeon_pm_clock_info, ptr %66, i32 0, i32 2, i32 8
  %67 = ptrtoint ptr %vddci85 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vddci85, align 2
  %default_vddci = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 32
  %69 = ptrtoint ptr %default_vddci to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %default_vddci, align 2
  br label %if.end130

if.else:                                          ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_vddci) #11
  %70 = ptrtoint ptr %max_vddci to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %max_vddci, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %47)
  %cmp88 = icmp ugt i32 %47, 38
  br i1 %cmp88, label %if.else.if.then90_crit_edge, label %if.else.if.end91_crit_edge

if.else.if.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.else.if.then90_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then90

if.then90:                                        ; preds = %if.else.if.then90_crit_edge, %if.else.thread
  %call = call i32 @radeon_atom_get_max_voltage(ptr noundef %rdev, i8 noundef zeroext 4, ptr noundef nonnull %max_vddci)
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.else.if.end91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode_index)
  %cmp92196 = icmp sgt i32 %mode_index, 0
  br i1 %cmp92196, label %for.body.lr.ph, label %if.end91.for.end_crit_edge

if.end91.for.end_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end91
  %default_mclk94 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %default_sclk102 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vddc.0)
  %tobool109.not = icmp eq i16 %vddc.0, 0
  %71 = ptrtoint ptr %max_vddci to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %max_vddci, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool119.not = icmp eq i16 %72, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0197 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %73 = ptrtoint ptr %default_mclk94 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %default_mclk94, align 4
  %75 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %power_state, align 4
  %clock_info98 = getelementptr %struct.radeon_power_state, ptr %76, i32 %state_index, i32 1
  %77 = ptrtoint ptr %clock_info98 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clock_info98, align 4
  %arrayidx99 = getelementptr %struct.radeon_pm_clock_info, ptr %78, i32 %j.0197
  %79 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %74, ptr %arrayidx99, align 4
  %80 = ptrtoint ptr %default_sclk102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %default_sclk102, align 4
  %82 = load ptr, ptr %power_state, align 4
  %clock_info106 = getelementptr %struct.radeon_power_state, ptr %82, i32 %state_index, i32 1
  %83 = ptrtoint ptr %clock_info106 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clock_info106, align 4
  %sclk108 = getelementptr %struct.radeon_pm_clock_info, ptr %84, i32 %j.0197, i32 1
  %85 = ptrtoint ptr %sclk108 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %81, ptr %sclk108, align 4
  br i1 %tobool109.not, label %for.body.if.end118_crit_edge, label %if.then110

for.body.if.end118_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then110:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %power_state, align 4
  %clock_info114 = getelementptr %struct.radeon_power_state, ptr %87, i32 %state_index, i32 1
  %88 = ptrtoint ptr %clock_info114 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clock_info114, align 4
  %voltage117 = getelementptr %struct.radeon_pm_clock_info, ptr %89, i32 %j.0197, i32 2, i32 7
  %90 = ptrtoint ptr %voltage117 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %vddc.0, ptr %voltage117, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %for.body.if.end118_crit_edge
  br i1 %tobool119.not, label %if.end118.for.inc_crit_edge, label %if.then120

if.end118.for.inc_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then120:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %power_state, align 4
  %clock_info124 = getelementptr %struct.radeon_power_state, ptr %92, i32 %state_index, i32 1
  %93 = ptrtoint ptr %clock_info124 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clock_info124, align 4
  %vddci127 = getelementptr %struct.radeon_pm_clock_info, ptr %94, i32 %j.0197, i32 2, i32 8
  %95 = ptrtoint ptr %vddci127 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %72, ptr %vddci127, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then120, %if.end118.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0197, 1
  %exitcond.not = icmp eq i32 %inc, %mode_index
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end91.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_vddci) #11
  br label %if.end130

if.end130:                                        ; preds = %for.end, %if.then59, %if.end39.if.end130_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 188, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 937, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1255, i32 5}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @radeon_atom_get_clock_info._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @radeon_atom_get_clock_info._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1318, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1360, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1600, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1742, i32 6}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1901, i32 4}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1905, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1909, i32 4}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1913, i32 4}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1917, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1921, i32 4}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1925, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1929, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1933, i32 4}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 3131, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 3471, i32 5}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 3737, i32 5}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 3960, i32 4}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4182, i32 4}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4186, i32 4}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4195, i32 4}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4199, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4208, i32 4}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4213, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4222, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4227, i32 4}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4236, i32 4}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4241, i32 4}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4250, i32 4}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4255, i32 4}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4264, i32 4}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4269, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4278, i32 4}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4283, i32 4}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4292, i32 4}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4297, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4306, i32 4}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4311, i32 4}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4320, i32 4}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 4325, i32 4}
!88 = !{ptr @object_connector_convert, !89, !"object_connector_convert", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 491, i32 18}
!90 = !{ptr @supported_devices_connector_convert, !91, !"supported_devices_connector_convert", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 455, i32 18}
!92 = !{ptr @supported_devices_connector_object_id_convert, !93, !"supported_devices_connector_object_id_convert", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 474, i32 23}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2097, i32 3}
!96 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @radeon_atombios_parse_power_table_1_3._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @radeon_atombios_parse_power_table_1_3._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1982, i32 2}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1983, i32 2}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1984, i32 2}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1985, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1986, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1988, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1989, i32 2}
!113 = !{ptr @thermal_controller_names, !114, !"thermal_controller_names", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1981, i32 20}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2287, i32 4}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.57, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2292, i32 4}
!124 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.58, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.59, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2297, i32 4}
!127 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.61, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2302, i32 4}
!130 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.62, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.63, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2307, i32 4}
!133 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.64, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.65, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2312, i32 4}
!136 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.67, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2317, i32 4}
!139 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.68, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.69, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2322, i32 4}
!142 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.70, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2328, i32 4}
!145 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.71, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.73, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2334, i32 4}
!149 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.74, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2340, i32 4}
!153 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.77, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.79, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2345, i32 4}
!157 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.80, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.82, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2361, i32 4}
!161 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry.83, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @radeon_atombios_add_pplib_thermal_controller._entry_ptr.85, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2000, i32 2}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2001, i32 2}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2002, i32 2}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2004, i32 2}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2005, i32 2}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2006, i32 2}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2007, i32 2}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2008, i32 2}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2009, i32 2}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2010, i32 2}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 2011, i32 2}
!185 = !{ptr @pp_lib_thermal_controller_names, !186, !"pp_lib_thermal_controller_names", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/radeon/radeon_atombios.c", i32 1992, i32 20}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"auto-init"}
!197 = !{i8 0, i8 2}
!198 = !{!199}
!199 = distinct !{!199, !200, !"radeon_atombios_lookup_gpio: %agg.result"}
!200 = distinct !{!200, !"radeon_atombios_lookup_gpio"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"radeon_atom_get_hpd_info_from_gpio: %agg.result"}
!203 = distinct !{!203, !"radeon_atom_get_hpd_info_from_gpio"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"radeon_atombios_lookup_gpio: %agg.result"}
!206 = distinct !{!206, !"radeon_atombios_lookup_gpio"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"radeon_atombios_lookup_gpio: %agg.result"}
!209 = distinct !{!209, !"radeon_atombios_lookup_gpio"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"radeon_atombios_lookup_gpio: %agg.result"}
!212 = distinct !{!212, !"radeon_atombios_lookup_gpio"}
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !{i64 5124607}
!215 = !{i64 2157961156}
!216 = !{i64 5124189}
!217 = !{i64 2157961563}
