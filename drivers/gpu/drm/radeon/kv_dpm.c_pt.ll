; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/kv_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/kv_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kv_pt_config_reg = type { i32, i32, i32, i32, i32 }
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
%struct.kv_power_info = type { [5 x i32], i32, %struct.kv_sys_info, %struct.kv_pl, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, i16, [8 x %struct.SMU7_Fusion_GraphicsLevel], %struct.SMU7_Fusion_ACPILevel, [8 x %struct.SMU7_Fusion_UvdLevel], [8 x %struct.SMU7_Fusion_ExtClkLevel], [8 x %struct.SMU7_Fusion_ExtClkLevel], [8 x %struct.SMU7_Fusion_ExtClkLevel], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.radeon_ps, %struct.kv_ps, %struct.radeon_ps, %struct.kv_ps }
%struct.kv_sys_info = type { i32, i32, i32, i32, [4 x i32], [4 x i32], i16, i8, i8, %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_vid_mapping_table, i32 }
%struct.sumo_sclk_voltage_mapping_table = type { i32, [5 x %struct.sumo_sclk_voltage_mapping_entry] }
%struct.sumo_sclk_voltage_mapping_entry = type { i32, i16, i16 }
%struct.sumo_vid_mapping_table = type { i32, [4 x %struct.sumo_vid_mapping_entry] }
%struct.sumo_vid_mapping_entry = type { i16, i16 }
%struct.kv_pl = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.SMU7_Fusion_GraphicsLevel = type { i32, i32, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.SMU7_Fusion_ACPILevel = type { i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8] }
%struct.SMU7_Fusion_UvdLevel = type { i32, i32, i16, i8, i8, i8, i8, [2 x i8] }
%struct.SMU7_Fusion_ExtClkLevel = type { i32, i16, i8, i8, i32 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.kv_ps = type { [5 x %struct.kv_pl], i32, i8, i8, i8, i8, i8 }
%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }
%struct.radeon_clock_voltage_dependency_entry = type { i32, i16 }
%struct.radeon_uvd_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct.radeon_vce_clock_voltage_dependency_entry = type { i32, i32, i16 }
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
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [3 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i16, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%union._ATOM_TDP_CONFIG = type { %struct._ATOM_TDP_CONFIG_BITS }
%struct._ATOM_TDP_CONFIG_BITS = type { i32 }
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.111, i8, i16, i16 }
%union.anon.111 = type { i8 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._StateArray = type { i8, [1 x %struct._ATOM_PPLIB_STATE_V2] }
%struct._ATOM_PPLIB_STATE_V2 = type { i8, i8, [1 x i8] }
%struct._NonClockInfoArray = type { i8, i8, [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO] }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ClockInfoArray = type { i8, i8, [1 x i8] }
%struct.radeon_power_state = type { i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct._ATOM_PPLIB_SUMO_CLOCK_INFO = type { i16, i8, i8, i16, i16, [2 x i32] }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kv_smc_bapm_enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"kv_process_firmware_header failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kv_program_bootup_state failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kv_upload_dpm_settings failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_populate_uvd_table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_populate_vce_table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kv_populate_samu_table failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_populate_acp_table failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"kv_enable_auto_thermal_throttling failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kv_enable_dpm_voltage_scaling failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kv_set_dpm_interval failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kv_set_dpm_boot_state failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kv_enable_ulv failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kv_enable_smc_cac failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kv_calculate_ds_divider failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kv_update_vce_dpm failed\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_bapm = external dso_local local_unnamed_addr global i32, align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uvd    %sabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vce    %sabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"power level %d    sclk: %u vddc: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@kv_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.26, i32 2653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"kv_dpm_print_power_state\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/radeon/kv_dpm.c\00", [32 x i8] zeroinitializer }, align 32
@kv_dpm_print_power_state._entry_ptr = internal global ptr @kv_dpm_print_power_state._entry, section ".printk_index", align 4
@kv_dpm_print_power_state._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.26, i32 2658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09\09power level %d    sclk: %u vddc: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@kv_dpm_print_power_state._entry_ptr.29 = internal global ptr @kv_dpm_print_power_state._entry.27, section ".printk_index", align 4
@didt_config_kv = internal constant { [73 x %struct.kv_pt_config_reg], [364 x i8] } { [73 x %struct.kv_pt_config_reg] [%struct.kv_pt_config_reg { i32 16, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 16, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 16, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 16, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 17, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 18, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 2, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 2, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 2, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 1, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 1, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 0, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 48, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 49, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 50, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 34, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 34, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 34, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 33, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 33, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 32, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 80, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 81, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 82, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 66, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 66, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 66, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 65, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 65, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 64, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 112, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 113, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 255, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 65280, i32 8, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 16711680, i32 16, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 114, i32 -16777216, i32 24, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 98, i32 16383, i32 0, i32 4, i32 2 }, %struct.kv_pt_config_reg { i32 98, i32 67043328, i32 16, i32 128, i32 2 }, %struct.kv_pt_config_reg { i32 98, i32 2013265920, i32 27, i32 3, i32 2 }, %struct.kv_pt_config_reg { i32 97, i32 65535, i32 0, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 97, i32 -65536, i32 16, i32 16383, i32 2 }, %struct.kv_pt_config_reg { i32 96, i32 1, i32 0, i32 0, i32 2 }, %struct.kv_pt_config_reg { i32 -1, i32 0, i32 0, i32 0, i32 0 }], [364 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported IGP table: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 59, i64 61]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1011, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1035, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1042, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1048, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1053, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1058, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1063, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1068, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1077, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1083, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1088, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1093, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1098, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1109, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1694, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 1710, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2609, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2615, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2615, i32 59 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2615, i32 67 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2616, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2617, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2653, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2656, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"didt_config_kv\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 67, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2302, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [35 x i8] c"../drivers/gpu/drm/radeon/kv_dpm.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 2318, i32 4 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @kv_dpm_print_power_state._entry, ptr @kv_dpm_print_power_state._entry.27, ptr @kv_dpm_print_power_state._entry_ptr, ptr @kv_dpm_print_power_state._entry_ptr.29, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @didt_config_kv, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kv_dpm_print_power_state._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @didt_config_kv to i32), i32 1460, i32 1824, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_enable_bapm(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bapm_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bapm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bapm_enable, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @kv_smc_bapm_enable(ptr noundef %rdev, i1 noundef zeroext %enable) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_smc_bapm_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %dividers.i = alloca %struct.atom_clock_dividers, align 4
  %dividers.i134.i = alloca %struct.atom_clock_dividers, align 4
  %dividers.i.i = alloca %struct.atom_clock_dividers, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp.i, align 4, !annotation !76
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sram_end.i, align 4
  %call1.i = call i32 @kv_read_smc_sram_dword(ptr noundef %rdev, i32 noundef 131124, ptr noundef nonnull %tmp.i, i32 noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i, align 4
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dpm_table_start.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sram_end.i, align 4
  %call3.i = call i32 @kv_read_smc_sram_dword(ptr noundef %rdev, i32 noundef 131120, ptr noundef nonnull %tmp.i, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end, label %if.then

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp.i, align 4
  %soft_regs_start.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %soft_regs_start.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %soft_regs_start.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %caps_fps.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 60
  %15 = ptrtoint ptr %caps_fps.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %caps_fps.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.kv_init_fps_limits.exit_crit_edge, label %if.then.i120

if.end.kv_init_fps_limits.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_fps_limits.exit

if.then.i120:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %fps_high_t.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 21
  %17 = ptrtoint ptr %fps_high_t.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 45, ptr %fps_high_t.i, align 2
  %dpm_table_start.i118 = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 14
  %18 = ptrtoint ptr %dpm_table_start.i118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpm_table_start.i118, align 4
  %add.i = add i32 %19, 82
  %sram_end.i119 = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 13
  %20 = ptrtoint ptr %sram_end.i119 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sram_end.i119, align 4
  %call2.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i, ptr noundef %fps_high_t.i, i32 noundef 2, i32 noundef %21) #12
  %fps_low_t.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 42
  %22 = ptrtoint ptr %fps_low_t.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 30, ptr %fps_low_t.i, align 2
  %23 = ptrtoint ptr %dpm_table_start.i118 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpm_table_start.i118, align 4
  %add4.i = add i32 %24, 758
  %25 = ptrtoint ptr %sram_end.i119 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sram_end.i119, align 4
  %call7.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add4.i, ptr noundef %fps_low_t.i, i32 noundef 2, i32 noundef %26) #12
  br label %kv_init_fps_limits.exit

kv_init_fps_limits.exit:                          ; preds = %if.then.i120, %if.end.kv_init_fps_limits.exit_crit_edge
  %27 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i, align 4
  %dyn_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %29 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i123

if.then.i123:                                     ; preds = %kv_init_fps_limits.exit
  %graphics_dpm_level_count.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 16
  %31 = ptrtoint ptr %graphics_dpm_level_count.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %graphics_dpm_level_count.i, align 4
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %32 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp192.not.i = icmp eq i32 %33, 0
  br i1 %cmp192.not.i, label %if.then.i123.kv_init_graphics_levels.exit_crit_edge, label %for.body.lr.ph.i

if.then.i123.kv_init_graphics_levels.exit_crit_edge: ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_graphics_levels.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i123
  %high_voltage_t.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 10
  %vid_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %kv_set_vid.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0193.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc24.i, %kv_set_vid.exit.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %high_voltage_t.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %high_voltage_t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool3.not.i = icmp eq i16 %35, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end.i124_crit_edge, label %land.lhs.true4.i

for.body.i.if.end.i124_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i124

land.lhs.true4.i:                                 ; preds = %for.body.i
  %36 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %entries.i, align 4
  %v.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %37, i32 %i.0193.i, i32 1
  %38 = ptrtoint ptr %v.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %v.i, align 4
  %mul.neg.i.i = mul i16 %39, -25
  %sub.i.i = add i16 %mul.neg.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %sub.i.i)
  %cmp9.i = icmp ult i16 %35, %sub.i.i
  br i1 %cmp9.i, label %land.lhs.true4.i.kv_init_graphics_levels.exit_crit_edge, label %land.lhs.true4.i.if.end.i124_crit_edge

land.lhs.true4.i.if.end.i124_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i124

land.lhs.true4.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_graphics_levels.exit

if.end.i124:                                      ; preds = %land.lhs.true4.i.if.end.i124_crit_edge, %for.body.i.if.end.i124_crit_edge
  %40 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entries.i, align 4
  %arrayidx13.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %41, i32 %i.0193.i
  %42 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx13.i, align 4
  %44 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i.i) #12
  %46 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 32)
  %call1.i.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %43, i1 noundef zeroext false, ptr noundef nonnull %dividers.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i124.kv_set_divider_value.exit.i_crit_edge

if.end.i124.kv_set_divider_value.exit.i_crit_edge: ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_divider_value.exit.i

if.end.i.i:                                       ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dividers.i.i, align 4
  %conv.i.i = trunc i32 %48 to i8
  %SclkDid.i.i = getelementptr %struct.kv_power_info, ptr %45, i32 0, i32 22, i32 %i.0193.i, i32 8
  %49 = ptrtoint ptr %SclkDid.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i.i, ptr %SclkDid.i.i, align 1
  %SclkFrequency.i.i = getelementptr %struct.kv_power_info, ptr %45, i32 0, i32 22, i32 %i.0193.i, i32 1
  %50 = ptrtoint ptr %SclkFrequency.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %43, ptr %SclkFrequency.i.i, align 4
  br label %kv_set_divider_value.exit.i

kv_set_divider_value.exit.i:                      ; preds = %if.end.i.i, %if.end.i124.kv_set_divider_value.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i.i) #12
  %51 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %entries.i, align 4
  %v17.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %52, i32 %i.0193.i, i32 1
  %53 = ptrtoint ptr %v17.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %v17.i, align 4
  %55 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool1.not.i.i = icmp eq i32 %56, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %kv_set_divider_value.exit.i.for.body.i.i_crit_edge

kv_set_divider_value.exit.i.for.body.i.i_crit_edge: ; preds = %kv_set_divider_value.exit.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %kv_set_divider_value.exit.i.for.body.i.i_crit_edge
  %i.053.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %kv_set_divider_value.exit.i.for.body.i.i_crit_edge ]
  %v.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %52, i32 %i.053.i.i, i32 1
  %57 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %v.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %54)
  %cmp3.i.i = icmp eq i16 %58, %54
  br i1 %cmp3.i.i, label %for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_convert_vid7_to_vid2.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.053.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %56
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i127.i = add i32 %56, -1
  br label %kv_convert_vid7_to_vid2.exit.i

if.else.i.i:                                      ; preds = %kv_set_divider_value.exit.i
  %59 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp854.not.i.i = icmp eq i32 %60, 0
  br i1 %cmp854.not.i.i, label %if.else.i.i.for.end24.i.i_crit_edge, label %if.else.i.i.for.body10.i.i_crit_edge

if.else.i.i.for.body10.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body10.i.i

if.else.i.i.for.end24.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i.i

for.body10.i.i:                                   ; preds = %for.inc22.i.i.for.body10.i.i_crit_edge, %if.else.i.i.for.body10.i.i_crit_edge
  %i.155.i.i = phi i32 [ %inc23.i.i, %for.inc22.i.i.for.body10.i.i_crit_edge ], [ 0, %if.else.i.i.for.body10.i.i_crit_edge ]
  %vid_7bit13.i.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10, i32 1, i32 %i.155.i.i, i32 1
  %61 = ptrtoint ptr %vid_7bit13.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vid_7bit13.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %62, i16 %54)
  %cmp15.i.i = icmp eq i16 %62, %54
  br i1 %cmp15.i.i, label %if.then17.i.i, label %for.inc22.i.i

if.then17.i.i:                                    ; preds = %for.body10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx12.i.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10, i32 1, i32 %i.155.i.i
  %63 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx12.i.i, align 4
  %conv20.i.i = zext i16 %64 to i32
  br label %kv_convert_vid7_to_vid2.exit.i

for.inc22.i.i:                                    ; preds = %for.body10.i.i
  %inc23.i.i = add nuw i32 %i.155.i.i, 1
  %exitcond58.not.i.i = icmp eq i32 %inc23.i.i, %60
  br i1 %exitcond58.not.i.i, label %for.inc22.i.i.for.end24.i.i_crit_edge, label %for.inc22.i.i.for.body10.i.i_crit_edge

for.inc22.i.i.for.body10.i.i_crit_edge:           ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10.i.i

for.inc22.i.i.for.end24.i.i_crit_edge:            ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i.i

for.end24.i.i:                                    ; preds = %for.inc22.i.i.for.end24.i.i_crit_edge, %if.else.i.i.for.end24.i.i_crit_edge
  %sub27.i.i = add i32 %60, -1
  %arrayidx28.i.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 10, i32 1, i32 %sub27.i.i
  %65 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx28.i.i, align 4
  %conv30.i.i = zext i16 %66 to i32
  br label %kv_convert_vid7_to_vid2.exit.i

kv_convert_vid7_to_vid2.exit.i:                   ; preds = %for.end24.i.i, %if.then17.i.i, %for.end.i.i, %for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i127.i, %for.end.i.i ], [ %conv20.i.i, %if.then17.i.i ], [ %conv30.i.i, %for.end24.i.i ], [ %i.053.i.i, %for.body.i.i.kv_convert_vid7_to_vid2.exit.i_crit_edge ]
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 4
  %voltage_drop_t.i.i = getelementptr inbounds %struct.kv_power_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %voltage_drop_t.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %voltage_drop_t.i.i, align 4
  %conv.i129.i = trunc i32 %70 to i8
  %VoltageDownH.i.i = getelementptr %struct.kv_power_info, ptr %68, i32 0, i32 22, i32 %i.0193.i, i32 14
  %71 = ptrtoint ptr %VoltageDownH.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv.i129.i, ptr %VoltageDownH.i.i, align 1
  %72 = load ptr, ptr %priv.i, align 4
  %73 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool1.not.i.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else9.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %kv_convert_vid7_to_vid2.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %retval.0.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %74, %retval.0.i.i
  %75 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %entries.i, align 4
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %v.i.i.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %76, i32 %retval.0.i.i, i32 1
  br label %kv_set_vid.exit.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add i32 %74, -1
  %v7.i.i.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %76, i32 %sub.i.i.i.i, i32 1
  br label %kv_set_vid.exit.i

if.else9.i.i.i.i:                                 ; preds = %kv_convert_vid7_to_vid2.exit.i
  %vid_mapping_table.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10
  %77 = ptrtoint ptr %vid_mapping_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vid_mapping_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp1046.not.i.i.i.i = icmp eq i32 %78, 0
  br i1 %cmp1046.not.i.i.i.i, label %if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge, label %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge

if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.else9.i.i.i.i
  br label %for.body.i.i.i.i

if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %if.else9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.047.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx13.i.i.i.i = getelementptr %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i
  %79 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx13.i.i.i.i, align 4
  %conv15.i.i.i.i = zext i16 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv15.i.i.i.i)
  %cmp16.i.i.i.i = icmp eq i32 %retval.0.i.i, %conv15.i.i.i.i
  br i1 %cmp16.i.i.i.i, label %if.then18.i.i.i.i, label %for.inc.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid_7bit.i.i.i.i = getelementptr %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i, i32 1
  br label %kv_set_vid.exit.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.047.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %78
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge
  %sub24.i.i.i.i = add i32 %78, -1
  %vid_7bit26.i.i.i.i = getelementptr %struct.kv_power_info, ptr %72, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i.i, i32 1
  br label %kv_set_vid.exit.i

kv_set_vid.exit.i:                                ; preds = %for.end.i.i.i.i, %if.then18.i.i.i.i, %if.else.i.i.i.i, %if.then3.i.i.i.i
  %retval.0.in.in.i.i.i.i = phi ptr [ %v.i.i.i.i, %if.then3.i.i.i.i ], [ %v7.i.i.i.i, %if.else.i.i.i.i ], [ %vid_7bit.i.i.i.i, %if.then18.i.i.i.i ], [ %vid_7bit26.i.i.i.i, %for.end.i.i.i.i ]
  %arrayidx.i.i = getelementptr %struct.kv_power_info, ptr %68, i32 0, i32 22, i32 %i.0193.i
  %81 = ptrtoint ptr %retval.0.in.in.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %retval.0.in.i.i.i.i = load i16, ptr %retval.0.in.in.i.i.i.i, align 2
  %mul.neg.i.i.i.i = mul i16 %retval.0.in.i.i.i.i, -25
  %sub.i5.i.i.i = add i16 %mul.neg.i.i.i.i, 6200
  %conv2.i.i = zext i16 %sub.i5.i.i.i to i32
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv2.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx21.i = getelementptr [5 x i32], ptr %28, i32 0, i32 %i.0193.i
  %83 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx21.i, align 4
  %85 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv.i, align 4
  %conv.i131.i = trunc i32 %84 to i16
  %AT.i.i = getelementptr %struct.kv_power_info, ptr %86, i32 0, i32 22, i32 %i.0193.i, i32 4
  %87 = ptrtoint ptr %AT.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i131.i, ptr %AT.i.i, align 2
  %88 = load ptr, ptr %priv.i, align 4
  %EnabledForThrottle.i.i = getelementptr %struct.kv_power_info, ptr %88, i32 0, i32 22, i32 %i.0193.i, i32 11
  %89 = ptrtoint ptr %EnabledForThrottle.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %EnabledForThrottle.i.i, align 2
  %90 = ptrtoint ptr %graphics_dpm_level_count.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %graphics_dpm_level_count.i, align 4
  %inc.i = add i8 %91, 1
  store i8 %inc.i, ptr %graphics_dpm_level_count.i, align 4
  %inc24.i = add nuw i32 %i.0193.i, 1
  %92 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dyn_state.i, align 4
  %cmp.i125 = icmp ult i32 %inc24.i, %93
  br i1 %cmp.i125, label %kv_set_vid.exit.i.for.body.i_crit_edge, label %kv_set_vid.exit.i.kv_init_graphics_levels.exit_crit_edge

kv_set_vid.exit.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %kv_set_vid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_graphics_levels.exit

kv_set_vid.exit.i.for.body.i_crit_edge:           ; preds = %kv_set_vid.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else.i:                                        ; preds = %kv_init_fps_limits.exit
  %sclk_voltage_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9
  %graphics_dpm_level_count27.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 16
  %94 = ptrtoint ptr %graphics_dpm_level_count27.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %graphics_dpm_level_count27.i, align 4
  %95 = ptrtoint ptr %sclk_voltage_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sclk_voltage_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp29194.not.i = icmp eq i32 %96, 0
  br i1 %cmp29194.not.i, label %if.else.i.kv_init_graphics_levels.exit_crit_edge, label %for.body31.lr.ph.i

if.else.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_graphics_levels.exit

for.body31.lr.ph.i:                               ; preds = %if.else.i
  %high_voltage_t32.i = getelementptr inbounds %struct.kv_power_info, ptr %28, i32 0, i32 10
  %entries.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  br label %for.body31.i

for.body31.i:                                     ; preds = %kv_set_vid.exit179.i.for.body31.i_crit_edge, %for.body31.lr.ph.i
  %i.1195.i = phi i32 [ 0, %for.body31.lr.ph.i ], [ %inc62.i, %kv_set_vid.exit179.i.for.body31.i_crit_edge ]
  %97 = ptrtoint ptr %high_voltage_t32.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %high_voltage_t32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool34.not.i = icmp eq i16 %98, 0
  br i1 %tobool34.not.i, label %for.body31.i.if.end47.i_crit_edge, label %land.lhs.true35.i

for.body31.i.if.end47.i_crit_edge:                ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

land.lhs.true35.i:                                ; preds = %for.body31.i
  %vid_2bit40.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9, i32 1, i32 %i.1195.i, i32 1
  %99 = ptrtoint ptr %vid_2bit40.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vid_2bit40.i, align 4
  %conv41.i = zext i16 %100 to i32
  %101 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv.i, align 4
  %103 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool1.not.i.i.i = icmp eq i32 %104, 0
  br i1 %tobool1.not.i.i.i, label %if.else9.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %conv41.i)
  %cmp.i.i.i = icmp ugt i32 %104, %conv41.i
  %105 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %entries.i.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %if.else.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %v.i.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %106, i32 %conv41.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %104, -1
  %v7.i.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %106, i32 %sub.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

if.else9.i.i.i:                                   ; preds = %land.lhs.true35.i
  %vid_mapping_table.i.i = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10
  %107 = ptrtoint ptr %vid_mapping_table.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vid_mapping_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp1046.not.i.i.i = icmp eq i32 %108, 0
  br i1 %cmp1046.not.i.i.i, label %if.else9.i.i.i.for.end.i.i.i_crit_edge, label %if.else9.i.i.i.for.body.i.i.i_crit_edge

if.else9.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.else9.i.i.i
  br label %for.body.i.i.i

if.else9.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.else9.i.i.i.for.body.i.i.i_crit_edge
  %i.047.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.else9.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx13.i.i.i = getelementptr %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i
  %109 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx13.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %110, i16 %100)
  %cmp16.i.i.i = icmp eq i16 %110, %100
  br i1 %cmp16.i.i.i, label %if.then18.i.i.i, label %for.inc.i.i.i

if.then18.i.i.i:                                  ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid_7bit.i.i.i = getelementptr %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.047.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %108
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.else9.i.i.i.for.end.i.i.i_crit_edge
  %sub24.i.i.i = add i32 %108, -1
  %vid_7bit26.i.i.i = getelementptr %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i

kv_convert_2bit_index_to_voltage.exit.i:          ; preds = %for.end.i.i.i, %if.then18.i.i.i, %if.else.i.i.i, %if.then3.i.i.i
  %retval.0.in.in.i.i.i = phi ptr [ %v.i.i.i, %if.then3.i.i.i ], [ %v7.i.i.i, %if.else.i.i.i ], [ %vid_7bit.i.i.i, %if.then18.i.i.i ], [ %vid_7bit26.i.i.i, %for.end.i.i.i ]
  %111 = ptrtoint ptr %retval.0.in.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %retval.0.in.i.i.i = load i16, ptr %retval.0.in.in.i.i.i, align 2
  %mul.neg.i.i.i = mul i16 %retval.0.in.i.i.i, -25
  %sub.i5.i.i = add i16 %mul.neg.i.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %98, i16 %sub.i5.i.i)
  %cmp44.i = icmp ult i16 %98, %sub.i5.i.i
  br i1 %cmp44.i, label %kv_convert_2bit_index_to_voltage.exit.i.kv_init_graphics_levels.exit_crit_edge, label %kv_convert_2bit_index_to_voltage.exit.i.if.end47.i_crit_edge

kv_convert_2bit_index_to_voltage.exit.i.if.end47.i_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

kv_convert_2bit_index_to_voltage.exit.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_graphics_levels.exit

if.end47.i:                                       ; preds = %kv_convert_2bit_index_to_voltage.exit.i.if.end47.i_crit_edge, %for.body31.i.if.end47.i_crit_edge
  %arrayidx49.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9, i32 1, i32 %i.1195.i
  %112 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx49.i, align 4
  %114 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i134.i) #12
  %116 = call ptr @memset(ptr %dividers.i134.i, i32 255, i32 32)
  %call1.i136.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %113, i1 noundef zeroext false, ptr noundef nonnull %dividers.i134.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136.i)
  %tobool.not.i137.i = icmp eq i32 %call1.i136.i, 0
  br i1 %tobool.not.i137.i, label %if.end.i141.i, label %if.end47.i.kv_set_divider_value.exit142.i_crit_edge

if.end47.i.kv_set_divider_value.exit142.i_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_divider_value.exit142.i

if.end.i141.i:                                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %dividers.i134.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dividers.i134.i, align 4
  %conv.i138.i = trunc i32 %118 to i8
  %SclkDid.i139.i = getelementptr %struct.kv_power_info, ptr %115, i32 0, i32 22, i32 %i.1195.i, i32 8
  %119 = ptrtoint ptr %SclkDid.i139.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv.i138.i, ptr %SclkDid.i139.i, align 1
  %SclkFrequency.i140.i = getelementptr %struct.kv_power_info, ptr %115, i32 0, i32 22, i32 %i.1195.i, i32 1
  %120 = ptrtoint ptr %SclkFrequency.i140.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %113, ptr %SclkFrequency.i140.i, align 4
  br label %kv_set_divider_value.exit142.i

kv_set_divider_value.exit142.i:                   ; preds = %if.end.i141.i, %if.end47.i.kv_set_divider_value.exit142.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i134.i) #12
  %vid_2bit53.i = getelementptr %struct.kv_power_info, ptr %28, i32 0, i32 2, i32 9, i32 1, i32 %i.1195.i, i32 1
  %121 = ptrtoint ptr %vid_2bit53.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %vid_2bit53.i, align 4
  %conv54.i = zext i16 %122 to i32
  %123 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %priv.i, align 4
  %voltage_drop_t.i144.i = getelementptr inbounds %struct.kv_power_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %voltage_drop_t.i144.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %voltage_drop_t.i144.i, align 4
  %conv.i145.i = trunc i32 %126 to i8
  %VoltageDownH.i146.i = getelementptr %struct.kv_power_info, ptr %124, i32 0, i32 22, i32 %i.1195.i, i32 14
  %127 = ptrtoint ptr %VoltageDownH.i146.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv.i145.i, ptr %VoltageDownH.i146.i, align 1
  %128 = load ptr, ptr %priv.i, align 4
  %129 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool1.not.i.i.i148.i = icmp eq i32 %130, 0
  br i1 %tobool1.not.i.i.i148.i, label %if.else9.i.i.i159.i, label %if.then.i.i.i151.i

if.then.i.i.i151.i:                               ; preds = %kv_set_divider_value.exit142.i
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %conv54.i)
  %cmp.i.i.i149.i = icmp ugt i32 %130, %conv54.i
  %131 = ptrtoint ptr %entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %entries.i.i.i, align 4
  br i1 %cmp.i.i.i149.i, label %if.then3.i.i.i153.i, label %if.else.i.i.i156.i

if.then3.i.i.i153.i:                              ; preds = %if.then.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #14
  %v.i.i.i152.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %132, i32 %conv54.i, i32 1
  br label %kv_set_vid.exit179.i

if.else.i.i.i156.i:                               ; preds = %if.then.i.i.i151.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i154.i = add i32 %130, -1
  %v7.i.i.i155.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %132, i32 %sub.i.i.i154.i, i32 1
  br label %kv_set_vid.exit179.i

if.else9.i.i.i159.i:                              ; preds = %kv_set_divider_value.exit142.i
  %vid_mapping_table.i.i157.i = getelementptr inbounds %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10
  %133 = ptrtoint ptr %vid_mapping_table.i.i157.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vid_mapping_table.i.i157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp1046.not.i.i.i158.i = icmp eq i32 %134, 0
  br i1 %cmp1046.not.i.i.i158.i, label %if.else9.i.i.i159.i.for.end.i.i.i172.i_crit_edge, label %if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge

if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge: ; preds = %if.else9.i.i.i159.i
  br label %for.body.i.i.i164.i

if.else9.i.i.i159.i.for.end.i.i.i172.i_crit_edge: ; preds = %if.else9.i.i.i159.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i172.i

for.body.i.i.i164.i:                              ; preds = %for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge, %if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge
  %i.047.i.i.i160.i = phi i32 [ %inc.i.i.i167.i, %for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge ], [ 0, %if.else9.i.i.i159.i.for.body.i.i.i164.i_crit_edge ]
  %arrayidx13.i.i.i161.i = getelementptr %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i160.i
  %135 = ptrtoint ptr %arrayidx13.i.i.i161.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %arrayidx13.i.i.i161.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %136, i16 %122)
  %cmp16.i.i.i163.i = icmp eq i16 %136, %122
  br i1 %cmp16.i.i.i163.i, label %if.then18.i.i.i166.i, label %for.inc.i.i.i169.i

if.then18.i.i.i166.i:                             ; preds = %for.body.i.i.i164.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid_7bit.i.i.i165.i = getelementptr %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i160.i, i32 1
  br label %kv_set_vid.exit179.i

for.inc.i.i.i169.i:                               ; preds = %for.body.i.i.i164.i
  %inc.i.i.i167.i = add nuw i32 %i.047.i.i.i160.i, 1
  %exitcond.not.i.i.i168.i = icmp eq i32 %inc.i.i.i167.i, %134
  br i1 %exitcond.not.i.i.i168.i, label %for.inc.i.i.i169.i.for.end.i.i.i172.i_crit_edge, label %for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge

for.inc.i.i.i169.i.for.body.i.i.i164.i_crit_edge: ; preds = %for.inc.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i164.i

for.inc.i.i.i169.i.for.end.i.i.i172.i_crit_edge:  ; preds = %for.inc.i.i.i169.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i172.i

for.end.i.i.i172.i:                               ; preds = %for.inc.i.i.i169.i.for.end.i.i.i172.i_crit_edge, %if.else9.i.i.i159.i.for.end.i.i.i172.i_crit_edge
  %sub24.i.i.i170.i = add i32 %134, -1
  %vid_7bit26.i.i.i171.i = getelementptr %struct.kv_power_info, ptr %128, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i170.i, i32 1
  br label %kv_set_vid.exit179.i

kv_set_vid.exit179.i:                             ; preds = %for.end.i.i.i172.i, %if.then18.i.i.i166.i, %if.else.i.i.i156.i, %if.then3.i.i.i153.i
  %retval.0.in.in.i.i.i173.i = phi ptr [ %v.i.i.i152.i, %if.then3.i.i.i153.i ], [ %v7.i.i.i155.i, %if.else.i.i.i156.i ], [ %vid_7bit.i.i.i165.i, %if.then18.i.i.i166.i ], [ %vid_7bit26.i.i.i171.i, %for.end.i.i.i172.i ]
  %arrayidx.i174.i = getelementptr %struct.kv_power_info, ptr %124, i32 0, i32 22, i32 %i.1195.i
  %137 = ptrtoint ptr %retval.0.in.in.i.i.i173.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %retval.0.in.i.i.i175.i = load i16, ptr %retval.0.in.in.i.i.i173.i, align 2
  %mul.neg.i.i.i176.i = mul i16 %retval.0.in.i.i.i175.i, -25
  %sub.i5.i.i177.i = add i16 %mul.neg.i.i.i176.i, 6200
  %conv2.i178.i = zext i16 %sub.i5.i.i177.i to i32
  %138 = ptrtoint ptr %arrayidx.i174.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv2.i178.i, ptr %arrayidx.i174.i, align 4
  %arrayidx57.i = getelementptr [5 x i32], ptr %28, i32 0, i32 %i.1195.i
  %139 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx57.i, align 4
  %141 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %priv.i, align 4
  %conv.i181.i = trunc i32 %140 to i16
  %AT.i182.i = getelementptr %struct.kv_power_info, ptr %142, i32 0, i32 22, i32 %i.1195.i, i32 4
  %143 = ptrtoint ptr %AT.i182.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.i181.i, ptr %AT.i182.i, align 2
  %144 = load ptr, ptr %priv.i, align 4
  %EnabledForThrottle.i184.i = getelementptr %struct.kv_power_info, ptr %144, i32 0, i32 22, i32 %i.1195.i, i32 11
  %145 = ptrtoint ptr %EnabledForThrottle.i184.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %EnabledForThrottle.i184.i, align 2
  %146 = ptrtoint ptr %graphics_dpm_level_count27.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %graphics_dpm_level_count27.i, align 4
  %inc60.i = add i8 %147, 1
  store i8 %inc60.i, ptr %graphics_dpm_level_count27.i, align 4
  %inc62.i = add nuw i32 %i.1195.i, 1
  %148 = ptrtoint ptr %sclk_voltage_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sclk_voltage_mapping_table.i, align 4
  %cmp29.i = icmp ult i32 %inc62.i, %149
  br i1 %cmp29.i, label %kv_set_vid.exit179.i.for.body31.i_crit_edge, label %kv_set_vid.exit179.i.kv_init_graphics_levels.exit_crit_edge

kv_set_vid.exit179.i.kv_init_graphics_levels.exit_crit_edge: ; preds = %kv_set_vid.exit179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_init_graphics_levels.exit

kv_set_vid.exit179.i.for.body31.i_crit_edge:      ; preds = %kv_set_vid.exit179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31.i

kv_init_graphics_levels.exit:                     ; preds = %kv_set_vid.exit179.i.kv_init_graphics_levels.exit_crit_edge, %kv_convert_2bit_index_to_voltage.exit.i.kv_init_graphics_levels.exit_crit_edge, %if.else.i.kv_init_graphics_levels.exit_crit_edge, %kv_set_vid.exit.i.kv_init_graphics_levels.exit_crit_edge, %land.lhs.true4.i.kv_init_graphics_levels.exit_crit_edge, %if.then.i123.kv_init_graphics_levels.exit_crit_edge
  %150 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.i = getelementptr %struct.kv_power_info, ptr %151, i32 0, i32 22, i32 0, i32 10
  %152 = ptrtoint ptr %EnabledForActivity.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %EnabledForActivity.i.i, align 1
  %153 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.1.i = getelementptr %struct.kv_power_info, ptr %153, i32 0, i32 22, i32 1, i32 10
  %154 = ptrtoint ptr %EnabledForActivity.i.1.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %EnabledForActivity.i.1.i, align 1
  %155 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.2.i = getelementptr %struct.kv_power_info, ptr %155, i32 0, i32 22, i32 2, i32 10
  %156 = ptrtoint ptr %EnabledForActivity.i.2.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %EnabledForActivity.i.2.i, align 1
  %157 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.3.i = getelementptr %struct.kv_power_info, ptr %157, i32 0, i32 22, i32 3, i32 10
  %158 = ptrtoint ptr %EnabledForActivity.i.3.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %EnabledForActivity.i.3.i, align 1
  %159 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.4.i = getelementptr %struct.kv_power_info, ptr %159, i32 0, i32 22, i32 4, i32 10
  %160 = ptrtoint ptr %EnabledForActivity.i.4.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %EnabledForActivity.i.4.i, align 1
  %161 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.5.i = getelementptr %struct.kv_power_info, ptr %161, i32 0, i32 22, i32 5, i32 10
  %162 = ptrtoint ptr %EnabledForActivity.i.5.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %EnabledForActivity.i.5.i, align 1
  %163 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.6.i = getelementptr %struct.kv_power_info, ptr %163, i32 0, i32 22, i32 6, i32 10
  %164 = ptrtoint ptr %EnabledForActivity.i.6.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %EnabledForActivity.i.6.i, align 1
  %165 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.7.i = getelementptr %struct.kv_power_info, ptr %165, i32 0, i32 22, i32 7, i32 10
  %166 = ptrtoint ptr %EnabledForActivity.i.7.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 0, ptr %EnabledForActivity.i.7.i, align 1
  %167 = load ptr, ptr %priv.i, align 4
  %168 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool1.not.i128 = icmp eq i32 %169, 0
  br i1 %tobool1.not.i128, label %if.else.i134, label %if.then.i131

if.then.i131:                                     ; preds = %kv_init_graphics_levels.exit
  %graphics_dpm_level_count.i129 = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 16
  %170 = ptrtoint ptr %graphics_dpm_level_count.i129 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %graphics_dpm_level_count.i129, align 4
  %conv.i = zext i8 %171 to i32
  %entries.i130 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %boot_pl.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i132.for.cond.i_crit_edge, %if.then.i131
  %i.0.in.i = phi i32 [ %conv.i, %if.then.i131 ], [ %i.0.i, %for.body.i132.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp.not.i, label %for.cond.i.if.end6_crit_edge, label %for.body.i132

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.body.i132:                                    ; preds = %for.cond.i
  %172 = ptrtoint ptr %entries.i130 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %entries.i130, align 4
  %arrayidx.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %173, i32 %i.0.i
  %174 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i, align 4
  %176 = ptrtoint ptr %boot_pl.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %boot_pl.i, align 4
  %cmp3.i = icmp eq i32 %175, %177
  br i1 %cmp3.i, label %for.body.i132.if.end6_crit_edge, label %for.body.i132.for.cond.i_crit_edge

for.body.i132.for.cond.i_crit_edge:               ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i132.if.end6_crit_edge:                  ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.else.i134:                                     ; preds = %kv_init_graphics_levels.exit
  %sclk_voltage_mapping_table.i133 = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 2, i32 9
  %178 = ptrtoint ptr %sclk_voltage_mapping_table.i133 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %sclk_voltage_mapping_table.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp8.i = icmp eq i32 %179, 0
  br i1 %cmp8.i, label %if.then5, label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i134
  %graphics_dpm_level_count12.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 16
  %180 = ptrtoint ptr %graphics_dpm_level_count12.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %graphics_dpm_level_count12.i, align 4
  %conv13.i = zext i8 %181 to i32
  %boot_pl21.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 3
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.body18.i.for.cond15.i_crit_edge, %if.end11.i
  %i.1.in.i = phi i32 [ %conv13.i, %if.end11.i ], [ %i.1.i, %for.body18.i.for.cond15.i_crit_edge ]
  %i.1.i = add i32 %i.1.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %cmp16.not.i = icmp eq i32 %i.1.i, 0
  br i1 %cmp16.not.i, label %for.cond15.i.if.end6_crit_edge, label %for.body18.i

for.cond15.i.if.end6_crit_edge:                   ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

for.body18.i:                                     ; preds = %for.cond15.i
  %arrayidx20.i = getelementptr %struct.kv_power_info, ptr %167, i32 0, i32 2, i32 9, i32 1, i32 %i.1.i
  %182 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx20.i, align 4
  %184 = ptrtoint ptr %boot_pl21.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %boot_pl21.i, align 4
  %cmp23.i = icmp eq i32 %183, %185
  br i1 %cmp23.i, label %for.body18.i.if.end6_crit_edge, label %for.body18.i.for.cond15.i_crit_edge

for.body18.i.for.cond15.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond15.i

for.body18.i.if.end6_crit_edge:                   ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.else.i134
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end6:                                          ; preds = %for.body18.i.if.end6_crit_edge, %for.cond15.i.if.end6_crit_edge, %for.body.i132.if.end6_crit_edge, %for.cond.i.if.end6_crit_edge
  %i.0.lcssa.sink59.i = phi i32 [ 0, %for.cond15.i.if.end6_crit_edge ], [ %i.1.i, %for.body18.i.if.end6_crit_edge ], [ 0, %for.cond.i.if.end6_crit_edge ], [ %i.0.i, %for.body.i132.if.end6_crit_edge ]
  %conv6.i = trunc i32 %i.0.lcssa.sink59.i to i8
  %graphics_boot_level.i = getelementptr inbounds %struct.kv_power_info, ptr %167, i32 0, i32 36
  %186 = ptrtoint ptr %graphics_boot_level.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv6.i, ptr %graphics_boot_level.i, align 4
  %187 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.i135 = getelementptr %struct.kv_power_info, ptr %188, i32 0, i32 22, i32 %i.0.lcssa.sink59.i, i32 10
  %189 = ptrtoint ptr %EnabledForActivity.i.i135 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %EnabledForActivity.i.i135, align 1
  %190 = load ptr, ptr %priv.i, align 4
  %191 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool1.not.i138 = icmp eq i32 %192, 0
  %graphics_dpm_level_count69.i = getelementptr inbounds %struct.kv_power_info, ptr %190, i32 0, i32 16
  %193 = ptrtoint ptr %graphics_dpm_level_count69.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %graphics_dpm_level_count69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %cmp71246.not.i = icmp eq i8 %194, 0
  br i1 %tobool1.not.i138, label %if.else66.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6
  br i1 %cmp71246.not.i, label %for.cond.preheader.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, label %for.body.lr.ph.i141

for.cond.preheader.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dfs_bypass_settings.exit

for.body.lr.ph.i141:                              ; preds = %for.cond.preheader.i
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %190, i32 0, i32 67
  %entries.i140 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  br label %for.body.i143

for.body.i143:                                    ; preds = %for.inc.i.for.body.i143_crit_edge, %for.body.lr.ph.i141
  %i.0243.i = phi i32 [ 0, %for.body.lr.ph.i141 ], [ %inc.i147, %for.inc.i.for.body.i143_crit_edge ]
  %195 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool3.not.i142 = icmp eq i8 %196, 0
  br i1 %tobool3.not.i142, label %if.else61.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i143
  %197 = ptrtoint ptr %entries.i140 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %entries.i140, align 4
  %arrayidx.i144 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %198, i32 %i.0243.i
  %199 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %200)
  %cmp.not.i.i = icmp ult i32 %200, 40000
  %sub.i.i145 = add i32 %200, -40000
  %sub1.i.i = sub i32 40000, %200
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub1.i.i, i32 %sub.i.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i)
  %cmp6.i = icmp ult i32 %cond.i.i, 200
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i146

if.then8.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %201 = ptrtoint ptr %ClkBypassCntl.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 3, ptr %ClkBypassCntl.i, align 1
  br label %for.inc.i

if.else.i146:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %200)
  %cmp.not.i204.i = icmp ult i32 %200, 30000
  %sub.i205.i = add i32 %200, -30000
  %sub1.i206.i = sub i32 30000, %200
  %cond.i207.i = select i1 %cmp.not.i204.i, i32 %sub1.i206.i, i32 %sub.i205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i207.i)
  %cmp14.i = icmp ult i32 %cond.i207.i, 200
  br i1 %cmp14.i, label %if.then16.i, label %if.else20.i

if.then16.i:                                      ; preds = %if.else.i146
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl19.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %202 = ptrtoint ptr %ClkBypassCntl19.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 2, ptr %ClkBypassCntl19.i, align 1
  br label %for.inc.i

if.else20.i:                                      ; preds = %if.else.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 26600, i32 %200)
  %cmp.not.i208.i = icmp ult i32 %200, 26600
  %sub.i209.i = add i32 %200, -26600
  %sub1.i210.i = sub i32 26600, %200
  %cond.i211.i = select i1 %cmp.not.i208.i, i32 %sub1.i210.i, i32 %sub.i209.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i211.i)
  %cmp25.i = icmp ult i32 %cond.i211.i, 200
  br i1 %cmp25.i, label %if.then27.i, label %if.else31.i

if.then27.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl30.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %203 = ptrtoint ptr %ClkBypassCntl30.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 7, ptr %ClkBypassCntl30.i, align 1
  br label %for.inc.i

if.else31.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %200)
  %cmp.not.i212.i = icmp ult i32 %200, 20000
  %sub.i213.i = add i32 %200, -20000
  %sub1.i214.i = sub i32 20000, %200
  %cond.i215.i = select i1 %cmp.not.i212.i, i32 %sub1.i214.i, i32 %sub.i213.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i215.i)
  %cmp36.i = icmp ult i32 %cond.i215.i, 200
  br i1 %cmp36.i, label %if.then38.i, label %if.else42.i

if.then38.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl41.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %204 = ptrtoint ptr %ClkBypassCntl41.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 6, ptr %ClkBypassCntl41.i, align 1
  br label %for.inc.i

if.else42.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %200)
  %cmp.not.i216.i = icmp ult i32 %200, 10000
  %sub.i217.i = add i32 %200, -10000
  %sub1.i218.i = sub i32 10000, %200
  %cond.i219.i = select i1 %cmp.not.i216.i, i32 %sub1.i218.i, i32 %sub.i217.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i219.i)
  %cmp47.i = icmp ult i32 %cond.i219.i, 200
  %ClkBypassCntl52.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  br i1 %cmp47.i, label %if.then49.i, label %if.else53.i

if.then49.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #14
  %205 = ptrtoint ptr %ClkBypassCntl52.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 8, ptr %ClkBypassCntl52.i, align 1
  br label %for.inc.i

if.else53.i:                                      ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #14
  %206 = ptrtoint ptr %ClkBypassCntl52.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %ClkBypassCntl52.i, align 1
  br label %for.inc.i

if.else61.i:                                      ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl64.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.0243.i, i32 16
  %207 = ptrtoint ptr %ClkBypassCntl64.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %ClkBypassCntl64.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else61.i, %if.else53.i, %if.then49.i, %if.then38.i, %if.then27.i, %if.then16.i, %if.then8.i
  %inc.i147 = add nuw nsw i32 %i.0243.i, 1
  %208 = ptrtoint ptr %graphics_dpm_level_count69.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %graphics_dpm_level_count69.i, align 4
  %conv.i148 = zext i8 %209 to i32
  %cmp.i149 = icmp ult i32 %inc.i147, %conv.i148
  br i1 %cmp.i149, label %for.inc.i.for.body.i143_crit_edge, label %for.inc.i.kv_calculate_dfs_bypass_settings.exit_crit_edge

for.inc.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dfs_bypass_settings.exit

for.inc.i.for.body.i143_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i143

if.else66.i:                                      ; preds = %if.end6
  br i1 %cmp71246.not.i, label %if.else66.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, label %for.body73.lr.ph.i

if.else66.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dfs_bypass_settings.exit

for.body73.lr.ph.i:                               ; preds = %if.else66.i
  %caps_enable_dfs_bypass74.i = getelementptr inbounds %struct.kv_power_info, ptr %190, i32 0, i32 67
  br label %for.body73.i

for.body73.i:                                     ; preds = %for.inc144.i.for.body73.i_crit_edge, %for.body73.lr.ph.i
  %i.1247.i = phi i32 [ 0, %for.body73.lr.ph.i ], [ %inc145.i, %for.inc144.i.for.body73.i_crit_edge ]
  %210 = ptrtoint ptr %caps_enable_dfs_bypass74.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %caps_enable_dfs_bypass74.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool75.not.i = icmp eq i8 %211, 0
  br i1 %tobool75.not.i, label %if.else139.i, label %if.then76.i

if.then76.i:                                      ; preds = %for.body73.i
  %arrayidx78.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 2, i32 9, i32 1, i32 %i.1247.i
  %212 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %213)
  %cmp.not.i220.i = icmp ult i32 %213, 40000
  %sub.i221.i = add i32 %213, -40000
  %sub1.i222.i = sub i32 40000, %213
  %cond.i223.i = select i1 %cmp.not.i220.i, i32 %sub1.i222.i, i32 %sub.i221.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i223.i)
  %cmp80.i = icmp ult i32 %cond.i223.i, 200
  br i1 %cmp80.i, label %if.then82.i, label %if.else86.i

if.then82.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl85.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %214 = ptrtoint ptr %ClkBypassCntl85.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 3, ptr %ClkBypassCntl85.i, align 1
  br label %for.inc144.i

if.else86.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %213)
  %cmp.not.i224.i = icmp ult i32 %213, 30000
  %sub.i225.i = add i32 %213, -30000
  %sub1.i226.i = sub i32 30000, %213
  %cond.i227.i = select i1 %cmp.not.i224.i, i32 %sub1.i226.i, i32 %sub.i225.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i227.i)
  %cmp91.i = icmp ult i32 %cond.i227.i, 200
  br i1 %cmp91.i, label %if.then93.i, label %if.else97.i

if.then93.i:                                      ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl96.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %215 = ptrtoint ptr %ClkBypassCntl96.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 2, ptr %ClkBypassCntl96.i, align 1
  br label %for.inc144.i

if.else97.i:                                      ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26600, i32 %213)
  %cmp.not.i228.i = icmp ult i32 %213, 26600
  %sub.i229.i = add i32 %213, -26600
  %sub1.i230.i = sub i32 26600, %213
  %cond.i231.i = select i1 %cmp.not.i228.i, i32 %sub1.i230.i, i32 %sub.i229.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i231.i)
  %cmp102.i = icmp ult i32 %cond.i231.i, 200
  br i1 %cmp102.i, label %if.then104.i, label %if.else108.i

if.then104.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl107.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %216 = ptrtoint ptr %ClkBypassCntl107.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 7, ptr %ClkBypassCntl107.i, align 1
  br label %for.inc144.i

if.else108.i:                                     ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %213)
  %cmp.not.i232.i = icmp ult i32 %213, 20000
  %sub.i233.i = add i32 %213, -20000
  %sub1.i234.i = sub i32 20000, %213
  %cond.i235.i = select i1 %cmp.not.i232.i, i32 %sub1.i234.i, i32 %sub.i233.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i235.i)
  %cmp113.i = icmp ult i32 %cond.i235.i, 200
  br i1 %cmp113.i, label %if.then115.i, label %if.else119.i

if.then115.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl118.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %217 = ptrtoint ptr %ClkBypassCntl118.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 6, ptr %ClkBypassCntl118.i, align 1
  br label %for.inc144.i

if.else119.i:                                     ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %213)
  %cmp.not.i236.i = icmp ult i32 %213, 10000
  %sub.i237.i = add i32 %213, -10000
  %sub1.i238.i = sub i32 10000, %213
  %cond.i239.i = select i1 %cmp.not.i236.i, i32 %sub1.i238.i, i32 %sub.i237.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i239.i)
  %cmp124.i = icmp ult i32 %cond.i239.i, 200
  %ClkBypassCntl129.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  br i1 %cmp124.i, label %if.then126.i, label %if.else130.i

if.then126.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #14
  %218 = ptrtoint ptr %ClkBypassCntl129.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 8, ptr %ClkBypassCntl129.i, align 1
  br label %for.inc144.i

if.else130.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #14
  %219 = ptrtoint ptr %ClkBypassCntl129.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %ClkBypassCntl129.i, align 1
  br label %for.inc144.i

if.else139.i:                                     ; preds = %for.body73.i
  call void @__sanitizer_cov_trace_pc() #14
  %ClkBypassCntl142.i = getelementptr %struct.kv_power_info, ptr %190, i32 0, i32 22, i32 %i.1247.i, i32 16
  %220 = ptrtoint ptr %ClkBypassCntl142.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %ClkBypassCntl142.i, align 1
  br label %for.inc144.i

for.inc144.i:                                     ; preds = %if.else139.i, %if.else130.i, %if.then126.i, %if.then115.i, %if.then104.i, %if.then93.i, %if.then82.i
  %inc145.i = add nuw nsw i32 %i.1247.i, 1
  %221 = ptrtoint ptr %graphics_dpm_level_count69.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %graphics_dpm_level_count69.i, align 4
  %conv70.i = zext i8 %222 to i32
  %cmp71.i = icmp ult i32 %inc145.i, %conv70.i
  br i1 %cmp71.i, label %for.inc144.i.for.body73.i_crit_edge, label %for.inc144.i.kv_calculate_dfs_bypass_settings.exit_crit_edge

for.inc144.i.kv_calculate_dfs_bypass_settings.exit_crit_edge: ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dfs_bypass_settings.exit

for.inc144.i.for.body73.i_crit_edge:              ; preds = %for.inc144.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body73.i

kv_calculate_dfs_bypass_settings.exit:            ; preds = %for.inc144.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, %if.else66.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, %for.inc.i.kv_calculate_dfs_bypass_settings.exit_crit_edge, %for.cond.preheader.i.kv_calculate_dfs_bypass_settings.exit_crit_edge
  %223 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i151 = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 14
  %225 = ptrtoint ptr %dpm_table_start.i151 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %dpm_table_start.i151, align 4
  %add.i152 = add i32 %226, 84
  %graphics_level.i = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 22
  %sram_end.i153 = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 13
  %227 = ptrtoint ptr %sram_end.i153 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %sram_end.i153, align 4
  %call1.i154 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i152, ptr noundef %graphics_level.i, i32 noundef 224, i32 noundef %228) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool.not.i155 = icmp eq i32 %call1.i154, 0
  br i1 %tobool.not.i155, label %kv_upload_dpm_settings.exit, label %kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge

kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge: ; preds = %kv_calculate_dfs_bypass_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

kv_upload_dpm_settings.exit:                      ; preds = %kv_calculate_dfs_bypass_settings.exit
  %229 = ptrtoint ptr %dpm_table_start.i151 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %dpm_table_start.i151, align 4
  %add3.i = add i32 %230, 76
  %graphics_dpm_level_count.i156 = getelementptr inbounds %struct.kv_power_info, ptr %224, i32 0, i32 16
  %231 = ptrtoint ptr %sram_end.i153 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %sram_end.i153, align 4
  %call5.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add3.i, ptr noundef %graphics_dpm_level_count.i156, i32 noundef 1, i32 noundef %232) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %if.end10, label %kv_upload_dpm_settings.exit.if.then9_crit_edge

kv_upload_dpm_settings.exit.if.then9_crit_edge:   ; preds = %kv_upload_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %kv_upload_dpm_settings.exit.if.then9_crit_edge, %kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge
  %retval.0.i193 = phi i32 [ %call5.i, %kv_upload_dpm_settings.exit.if.then9_crit_edge ], [ %call1.i154, %kv_calculate_dfs_bypass_settings.exit.if.then9_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end10:                                         ; preds = %kv_upload_dpm_settings.exit
  %233 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %priv.i, align 4
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i) #12
  %235 = call ptr @memset(ptr %dividers.i, i32 255, i32 32)
  %236 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %cmp1.i = icmp eq i8 %237, 0
  br i1 %cmp1.i, label %kv_populate_uvd_table.exit.thread197, label %if.end.i159

kv_populate_uvd_table.exit.thread197:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #12
  br label %if.end14

if.end.i159:                                      ; preds = %if.end10
  %uvd_level_count.i = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 17
  %238 = ptrtoint ptr %uvd_level_count.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %uvd_level_count.i, align 1
  %239 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %cmp5185.not.i = icmp eq i8 %240, 0
  br i1 %cmp5185.not.i, label %if.end.i159.for.end.i_crit_edge, label %for.body.lr.ph.i162

if.end.i159.for.end.i_crit_edge:                  ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.lr.ph.i162:                              ; preds = %if.end.i159
  %high_voltage_t.i160 = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 10
  %entries.i161 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5, i32 1
  br label %for.body.i164

for.body.i164:                                    ; preds = %if.end57.i.for.body.i164_crit_edge, %for.body.lr.ph.i162
  %i.0186.i = phi i32 [ 0, %for.body.lr.ph.i162 ], [ %inc63.i, %if.end57.i.for.body.i164_crit_edge ]
  %241 = ptrtoint ptr %high_voltage_t.i160 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %high_voltage_t.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %242)
  %tobool.not.i163 = icmp eq i16 %242, 0
  br i1 %tobool.not.i163, label %for.body.i164.if.end14.i_crit_edge, label %land.lhs.true.i

for.body.i164.if.end14.i_crit_edge:               ; preds = %for.body.i164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %for.body.i164
  %243 = ptrtoint ptr %entries.i161 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %entries.i161, align 4
  %v.i165 = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %244, i32 %i.0186.i, i32 2
  %245 = ptrtoint ptr %v.i165 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %v.i165, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %242, i16 %246)
  %cmp11.i = icmp ult i16 %242, %246
  br i1 %cmp11.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.if.end14.i_crit_edge

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %for.body.i164.if.end14.i_crit_edge
  %247 = ptrtoint ptr %entries.i161 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %entries.i161, align 4
  %arrayidx16.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %248, i32 %i.0186.i
  %249 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx16.i, align 4
  %arrayidx17.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i
  %251 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %arrayidx17.i, align 4
  %252 = load ptr, ptr %entries.i161, align 4
  %dclk.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %252, i32 %i.0186.i, i32 1
  %253 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %dclk.i, align 4
  %DclkFrequency.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 1
  %255 = ptrtoint ptr %DclkFrequency.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %DclkFrequency.i, align 4
  %256 = load ptr, ptr %entries.i161, align 4
  %v24.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %256, i32 %i.0186.i, i32 2
  %257 = ptrtoint ptr %v24.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %v24.i, align 4
  %MinVddNb.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 2
  %259 = ptrtoint ptr %MinVddNb.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %MinVddNb.i, align 4
  %260 = load ptr, ptr %entries.i161, align 4
  %arrayidx28.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %260, i32 %i.0186.i
  %261 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx28.i, align 4
  %263 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i.i = getelementptr inbounds %struct.kv_power_info, ptr %264, i32 0, i32 67
  %265 = ptrtoint ptr %caps_enable_dfs_bypass.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %caps_enable_dfs_bypass.i.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool.not.i.i166 = icmp eq i8 %266, 0
  br i1 %tobool.not.i.i166, label %if.end14.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.then.i.i

if.end14.i.kv_get_clk_bypass.exit.i_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %262)
  %cmp.not.i.i.i = icmp ult i32 %262, 40000
  %sub.i.i.i167 = add i32 %262, -40000
  %sub1.i.i.i = sub i32 40000, %262
  %cond.i.i.i = select i1 %cmp.not.i.i.i, i32 %sub1.i.i.i, i32 %sub.i.i.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i.i)
  %cmp.i.i = icmp ult i32 %cond.i.i.i, 200
  br i1 %cmp.i.i, label %if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.else.i.i168

if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit.i

if.else.i.i168:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %262)
  %cmp.not.i29.i.i = icmp ult i32 %262, 30000
  %sub.i30.i.i = add i32 %262, -30000
  %sub1.i31.i.i = sub i32 30000, %262
  %cond.i32.i.i = select i1 %cmp.not.i29.i.i, i32 %sub1.i31.i.i, i32 %sub.i30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i.i)
  %cmp4.i.i = icmp ult i32 %cond.i32.i.i, 200
  br i1 %cmp4.i.i, label %if.else.i.i168.kv_get_clk_bypass.exit.i_crit_edge, label %if.else6.i.i

if.else.i.i168.kv_get_clk_bypass.exit.i_crit_edge: ; preds = %if.else.i.i168
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit.i

if.else6.i.i:                                     ; preds = %if.else.i.i168
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %262)
  %cmp.not.i33.i.i = icmp ult i32 %262, 20000
  %sub.i34.i.i = add i32 %262, -20000
  %sub1.i35.i.i = sub i32 20000, %262
  %cond.i36.i.i = select i1 %cmp.not.i33.i.i, i32 %sub1.i35.i.i, i32 %sub.i34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i.i)
  %cmp8.i.i = icmp ult i32 %cond.i36.i.i, 200
  br i1 %cmp8.i.i, label %if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.else10.i.i

if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge:  ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit.i

if.else10.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %262)
  %cmp.not.i37.i.i = icmp ult i32 %262, 15000
  %sub.i38.i.i = add i32 %262, -15000
  %sub1.i39.i.i = sub i32 15000, %262
  %cond.i40.i.i = select i1 %cmp.not.i37.i.i, i32 %sub1.i39.i.i, i32 %sub.i38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i.i)
  %cmp12.i.i = icmp ult i32 %cond.i40.i.i, 200
  br i1 %cmp12.i.i, label %if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge, label %if.else14.i.i

if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge: ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit.i

if.else14.i.i:                                    ; preds = %if.else10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %262)
  %cmp.not.i41.i.i = icmp ult i32 %262, 10000
  %sub.i42.i.i = add i32 %262, -10000
  %sub1.i43.i.i = sub i32 10000, %262
  %cond.i44.i.i = select i1 %cmp.not.i41.i.i, i32 %sub1.i43.i.i, i32 %sub.i42.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i.i)
  %cmp16.i.i = icmp ult i32 %cond.i44.i.i, 200
  %..i.i = select i1 %cmp16.i.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit.i

kv_get_clk_bypass.exit.i:                         ; preds = %if.else14.i.i, %if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge, %if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge, %if.else.i.i168.kv_get_clk_bypass.exit.i_crit_edge, %if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge, %if.end14.i.kv_get_clk_bypass.exit.i_crit_edge
  %value.0.i.i = phi i8 [ 3, %if.then.i.i.kv_get_clk_bypass.exit.i_crit_edge ], [ 2, %if.else.i.i168.kv_get_clk_bypass.exit.i_crit_edge ], [ 7, %if.else6.i.i.kv_get_clk_bypass.exit.i_crit_edge ], [ 6, %if.else10.i.i.kv_get_clk_bypass.exit.i_crit_edge ], [ %..i.i, %if.else14.i.i ], [ 0, %if.end14.i.kv_get_clk_bypass.exit.i_crit_edge ]
  %VClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 5
  %267 = ptrtoint ptr %VClkBypassCntl.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %value.0.i.i, ptr %VClkBypassCntl.i, align 4
  %268 = ptrtoint ptr %entries.i161 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %entries.i161, align 4
  %dclk36.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %269, i32 %i.0186.i, i32 1
  %270 = ptrtoint ptr %dclk36.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %dclk36.i, align 4
  %272 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i149.i = getelementptr inbounds %struct.kv_power_info, ptr %273, i32 0, i32 67
  %274 = ptrtoint ptr %caps_enable_dfs_bypass.i149.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %caps_enable_dfs_bypass.i149.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool.not.i150.i = icmp eq i8 %275, 0
  br i1 %tobool.not.i150.i, label %kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.then.i156.i

kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %kv_get_clk_bypass.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit183.i

if.then.i156.i:                                   ; preds = %kv_get_clk_bypass.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %271)
  %cmp.not.i.i151.i = icmp ult i32 %271, 40000
  %sub.i.i152.i = add i32 %271, -40000
  %sub1.i.i153.i = sub i32 40000, %271
  %cond.i.i154.i = select i1 %cmp.not.i.i151.i, i32 %sub1.i.i153.i, i32 %sub.i.i152.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i154.i)
  %cmp.i155.i = icmp ult i32 %cond.i.i154.i, 200
  br i1 %cmp.i155.i, label %if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else.i162.i

if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.then.i156.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit183.i

if.else.i162.i:                                   ; preds = %if.then.i156.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %271)
  %cmp.not.i29.i157.i = icmp ult i32 %271, 30000
  %sub.i30.i158.i = add i32 %271, -30000
  %sub1.i31.i159.i = sub i32 30000, %271
  %cond.i32.i160.i = select i1 %cmp.not.i29.i157.i, i32 %sub1.i31.i159.i, i32 %sub.i30.i158.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i160.i)
  %cmp4.i161.i = icmp ult i32 %cond.i32.i160.i, 200
  br i1 %cmp4.i161.i, label %if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else6.i168.i

if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.else.i162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit183.i

if.else6.i168.i:                                  ; preds = %if.else.i162.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %271)
  %cmp.not.i33.i163.i = icmp ult i32 %271, 20000
  %sub.i34.i164.i = add i32 %271, -20000
  %sub1.i35.i165.i = sub i32 20000, %271
  %cond.i36.i166.i = select i1 %cmp.not.i33.i163.i, i32 %sub1.i35.i165.i, i32 %sub.i34.i164.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i166.i)
  %cmp8.i167.i = icmp ult i32 %cond.i36.i166.i, 200
  br i1 %cmp8.i167.i, label %if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else10.i174.i

if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.else6.i168.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit183.i

if.else10.i174.i:                                 ; preds = %if.else6.i168.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %271)
  %cmp.not.i37.i169.i = icmp ult i32 %271, 15000
  %sub.i38.i170.i = add i32 %271, -15000
  %sub1.i39.i171.i = sub i32 15000, %271
  %cond.i40.i172.i = select i1 %cmp.not.i37.i169.i, i32 %sub1.i39.i171.i, i32 %sub.i38.i170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i172.i)
  %cmp12.i173.i = icmp ult i32 %cond.i40.i172.i, 200
  br i1 %cmp12.i173.i, label %if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge, label %if.else14.i181.i

if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge: ; preds = %if.else10.i174.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit183.i

if.else14.i181.i:                                 ; preds = %if.else10.i174.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %271)
  %cmp.not.i41.i175.i = icmp ult i32 %271, 10000
  %sub.i42.i176.i = add i32 %271, -10000
  %sub1.i43.i177.i = sub i32 10000, %271
  %cond.i44.i178.i = select i1 %cmp.not.i41.i175.i, i32 %sub1.i43.i177.i, i32 %sub.i42.i176.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i178.i)
  %cmp16.i179.i = icmp ult i32 %cond.i44.i178.i, 200
  %..i180.i = select i1 %cmp16.i179.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit183.i

kv_get_clk_bypass.exit183.i:                      ; preds = %if.else14.i181.i, %if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge, %if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge, %if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge, %if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge, %kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge
  %value.0.i182.i = phi i8 [ 3, %if.then.i156.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ 2, %if.else.i162.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ 7, %if.else6.i168.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ 6, %if.else10.i174.i.kv_get_clk_bypass.exit183.i_crit_edge ], [ %..i180.i, %if.else14.i181.i ], [ 0, %kv_get_clk_bypass.exit.i.kv_get_clk_bypass.exit183.i_crit_edge ]
  %DClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 6
  %276 = ptrtoint ptr %DClkBypassCntl.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 %value.0.i182.i, ptr %DClkBypassCntl.i, align 1
  %277 = ptrtoint ptr %entries.i161 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %entries.i161, align 4
  %arrayidx42.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %278, i32 %i.0186.i
  %279 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %arrayidx42.i, align 4
  %call44.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %280, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i169, label %kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge

kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %kv_get_clk_bypass.exit183.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_populate_uvd_table.exit.thread

if.end47.i169:                                    ; preds = %kv_get_clk_bypass.exit183.i
  %281 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %dividers.i, align 4
  %conv48.i = trunc i32 %282 to i8
  %VclkDivider.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 3
  %283 = ptrtoint ptr %VclkDivider.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv48.i, ptr %VclkDivider.i, align 2
  %284 = ptrtoint ptr %entries.i161 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %entries.i161, align 4
  %dclk53.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %285, i32 %i.0186.i, i32 1
  %286 = ptrtoint ptr %dclk53.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %dclk53.i, align 4
  %call54.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %287, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end47.i169.kv_populate_uvd_table.exit.thread_crit_edge

if.end47.i169.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %if.end47.i169
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_populate_uvd_table.exit.thread

if.end57.i:                                       ; preds = %if.end47.i169
  %288 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %dividers.i, align 4
  %conv59.i = trunc i32 %289 to i8
  %DclkDivider.i = getelementptr %struct.kv_power_info, ptr %234, i32 0, i32 24, i32 %i.0186.i, i32 4
  %290 = ptrtoint ptr %DclkDivider.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv59.i, ptr %DclkDivider.i, align 1
  %291 = ptrtoint ptr %uvd_level_count.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %uvd_level_count.i, align 1
  %inc.i170 = add i8 %292, 1
  store i8 %inc.i170, ptr %uvd_level_count.i, align 1
  %inc63.i = add nuw nsw i32 %i.0186.i, 1
  %293 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  %conv4.i = zext i8 %294 to i32
  %cmp5.i = icmp ult i32 %inc63.i, %conv4.i
  br i1 %cmp5.i, label %if.end57.i.for.body.i164_crit_edge, label %if.end57.i.for.end.i_crit_edge

if.end57.i.for.end.i_crit_edge:                   ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end57.i.for.body.i164_crit_edge:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i164

for.end.i:                                        ; preds = %if.end57.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge, %if.end.i159.for.end.i_crit_edge
  %dpm_table_start.i171 = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 14
  %295 = ptrtoint ptr %dpm_table_start.i171 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %dpm_table_start.i171, align 4
  %add.i172 = add i32 %296, 78
  %sram_end.i173 = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 13
  %297 = ptrtoint ptr %sram_end.i173 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %sram_end.i173, align 4
  %call65.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i172, ptr noundef %uvd_level_count.i, i32 noundef 1, i32 noundef %298) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end68.i, label %for.end.i.kv_populate_uvd_table.exit.thread_crit_edge

for.end.i.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_populate_uvd_table.exit.thread

if.end68.i:                                       ; preds = %for.end.i
  %uvd_interval.i = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 32
  %299 = ptrtoint ptr %uvd_interval.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %uvd_interval.i, align 4
  %300 = ptrtoint ptr %dpm_table_start.i171 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %dpm_table_start.i171, align 4
  %add70.i = add i32 %301, 748
  %302 = ptrtoint ptr %sram_end.i173 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %sram_end.i173, align 4
  %call73.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add70.i, ptr noundef %uvd_interval.i, i32 noundef 1, i32 noundef %303) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %kv_populate_uvd_table.exit, label %if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge

if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_populate_uvd_table.exit.thread

kv_populate_uvd_table.exit.thread:                ; preds = %if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge, %for.end.i.kv_populate_uvd_table.exit.thread_crit_edge, %if.end47.i169.kv_populate_uvd_table.exit.thread_crit_edge, %kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge
  %retval.0.i174.ph = phi i32 [ %call73.i, %if.end68.i.kv_populate_uvd_table.exit.thread_crit_edge ], [ %call65.i, %for.end.i.kv_populate_uvd_table.exit.thread_crit_edge ], [ %call54.i, %if.end47.i169.kv_populate_uvd_table.exit.thread_crit_edge ], [ %call44.i, %kv_get_clk_bypass.exit183.i.kv_populate_uvd_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #12
  br label %if.then13

kv_populate_uvd_table.exit:                       ; preds = %if.end68.i
  %304 = ptrtoint ptr %dpm_table_start.i171 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %dpm_table_start.i171, align 4
  %add78.i = add i32 %305, 328
  %uvd_level79.i = getelementptr inbounds %struct.kv_power_info, ptr %234, i32 0, i32 24
  %306 = ptrtoint ptr %sram_end.i173 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %sram_end.i173, align 4
  %call81.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add78.i, ptr noundef %uvd_level79.i, i32 noundef 128, i32 noundef %307) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool12.not = icmp eq i32 %call81.i, 0
  br i1 %tobool12.not, label %kv_populate_uvd_table.exit.if.end14_crit_edge, label %kv_populate_uvd_table.exit.if.then13_crit_edge

kv_populate_uvd_table.exit.if.then13_crit_edge:   ; preds = %kv_populate_uvd_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

kv_populate_uvd_table.exit.if.end14_crit_edge:    ; preds = %kv_populate_uvd_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %kv_populate_uvd_table.exit.if.then13_crit_edge, %kv_populate_uvd_table.exit.thread
  %retval.0.i174196 = phi i32 [ %retval.0.i174.ph, %kv_populate_uvd_table.exit.thread ], [ %call81.i, %kv_populate_uvd_table.exit.if.then13_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #12
  br label %cleanup

if.end14:                                         ; preds = %kv_populate_uvd_table.exit.if.end14_crit_edge, %kv_populate_uvd_table.exit.thread197
  %call15 = call fastcc i32 @kv_populate_vce_table(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = call fastcc i32 @kv_populate_samu_table(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @kv_populate_acp_table(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1071644248, i32 noundef 1073725696) #12
  call fastcc void @kv_start_am(ptr noundef %rdev)
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 51
  %308 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %enable_auto_thermal_throttling, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %309)
  %tobool27.not = icmp eq i8 %309, 0
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  %call29 = call fastcc i32 @kv_enable_auto_thermal_throttling(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then31

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %call34 = call fastcc i32 @kv_enable_dpm_voltage_scaling(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc i32 @kv_set_dpm_interval(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %310 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i176 = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 14
  %312 = ptrtoint ptr %dpm_table_start.i176 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %dpm_table_start.i176, align 4
  %add.i177 = add i32 %313, 752
  %graphics_boot_level.i178 = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 36
  %sram_end.i179 = getelementptr inbounds %struct.kv_power_info, ptr %311, i32 0, i32 13
  %314 = ptrtoint ptr %sram_end.i179 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %sram_end.i179, align 4
  %call1.i180 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i177, ptr noundef %graphics_boot_level.i178, i32 noundef 1, i32 noundef %315) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool43.not = icmp eq i32 %call1.i180, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %call.i = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 98) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #12
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call fastcc void @kv_start_dpm(ptr noundef %rdev)
  call fastcc void @kv_enable_didt(ptr noundef %rdev, i1 noundef zeroext true)
  %316 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %priv.i, align 4
  %caps_cac.i = getelementptr inbounds %struct.kv_power_info, ptr %317, i32 0, i32 53
  %318 = ptrtoint ptr %caps_cac.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %caps_cac.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool.not.i182 = icmp eq i8 %319, 0
  br i1 %tobool.not.i182, label %if.end49.if.end57_crit_edge, label %if.then.i183

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then.i183:                                     ; preds = %if.end49
  %call3.i184 = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 83) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i184)
  %tobool4.not.i = icmp eq i32 %call3.i184, 0
  %cac_enabled6.i = getelementptr inbounds %struct.kv_power_info, ptr %317, i32 0, i32 11
  br i1 %tobool4.not.i, label %if.else.i186, label %if.then56

if.else.i186:                                     ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #14
  %320 = ptrtoint ptr %cac_enabled6.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 1, ptr %cac_enabled6.i, align 2
  br label %if.end57

if.then56:                                        ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #14
  %321 = ptrtoint ptr %cac_enabled6.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %cac_enabled6.i, align 2
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end57:                                         ; preds = %if.else.i186, %if.end49.if.end57_crit_edge
  %322 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %priv.i, align 4
  %acp_boot_level.i = getelementptr inbounds %struct.kv_power_info, ptr %323, i32 0, i32 30
  %324 = ptrtoint ptr %acp_boot_level.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 -1, ptr %acp_boot_level.i, align 2
  %call58 = call i32 @kv_smc_bapm_enable(ptr noundef %rdev, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %325 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %326, i32 0, i32 9
  %327 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ps_priv.i.i, align 4
  %329 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %priv.i, align 4
  %current_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %330, i32 0, i32 69
  %331 = call ptr @memcpy(ptr %current_rps.i, ptr %326, i32 40)
  %current_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %330, i32 0, i32 70
  %332 = call ptr @memcpy(ptr %current_ps.i, ptr %328, i32 72)
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %330, i32 0, i32 69, i32 9
  %333 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then60, %if.then56, %if.then48, %if.then44, %if.then40, %if.then36, %if.then31, %if.then25, %if.then21, %if.then17, %if.then13, %if.then9, %if.then5, %if.then
  %retval.0 = phi i32 [ %call3.i, %if.then ], [ -22, %if.then5 ], [ %retval.0.i193, %if.then9 ], [ %retval.0.i174196, %if.then13 ], [ %call15, %if.then17 ], [ %call19, %if.then21 ], [ %call23, %if.then25 ], [ %call29, %if.then31 ], [ %call34, %if.then36 ], [ %call38, %if.then40 ], [ %call1.i180, %if.then44 ], [ %call.i, %if.then48 ], [ %call3.i184, %if.then56 ], [ %call58, %if.then60 ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_populate_vce_table(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #12
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %cmp = icmp eq ptr %vce_clock_voltage_dependency_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vce_level_count = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %vce_level_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vce_level_count, align 2
  %6 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5111.not = icmp eq i8 %7, 0
  br i1 %cmp5111.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %high_voltage_t = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %if.end36.for.body_crit_edge ]
  %8 = ptrtoint ptr %high_voltage_t to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %high_voltage_t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %land.lhs.true

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %11, i32 %i.0112, i32 2
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp11 = icmp ult i16 %9, %13
  br i1 %cmp11, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries, align 4
  %evclk = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %15, i32 %i.0112, i32 1
  %16 = ptrtoint ptr %evclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %evclk, align 4
  %arrayidx17 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx17, align 4
  %19 = load ptr, ptr %entries, align 4
  %v20 = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %19, i32 %i.0112, i32 2
  %20 = ptrtoint ptr %v20 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %v20, align 4
  %MinVoltage = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112, i32 1
  %22 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %MinVoltage, align 4
  %23 = load ptr, ptr %entries, align 4
  %evclk25 = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %23, i32 %i.0112, i32 1
  %24 = ptrtoint ptr %evclk25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %evclk25, align 4
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %27, i32 0, i32 67
  %28 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end14.kv_get_clk_bypass.exit_crit_edge, label %if.then.i

if.end14.kv_get_clk_bypass.exit_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %25)
  %cmp.not.i.i = icmp ult i32 %25, 40000
  %sub.i.i = add i32 %25, -40000
  %sub1.i.i = sub i32 40000, %25
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub1.i.i, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i)
  %cmp.i = icmp ult i32 %cond.i.i, 200
  br i1 %cmp.i, label %if.then.i.kv_get_clk_bypass.exit_crit_edge, label %if.else.i

if.then.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %25)
  %cmp.not.i29.i = icmp ult i32 %25, 30000
  %sub.i30.i = add i32 %25, -30000
  %sub1.i31.i = sub i32 30000, %25
  %cond.i32.i = select i1 %cmp.not.i29.i, i32 %sub1.i31.i, i32 %sub.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i)
  %cmp4.i = icmp ult i32 %cond.i32.i, 200
  br i1 %cmp4.i, label %if.else.i.kv_get_clk_bypass.exit_crit_edge, label %if.else6.i

if.else.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %25)
  %cmp.not.i33.i = icmp ult i32 %25, 20000
  %sub.i34.i = add i32 %25, -20000
  %sub1.i35.i = sub i32 20000, %25
  %cond.i36.i = select i1 %cmp.not.i33.i, i32 %sub1.i35.i, i32 %sub.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i)
  %cmp8.i = icmp ult i32 %cond.i36.i, 200
  br i1 %cmp8.i, label %if.else6.i.kv_get_clk_bypass.exit_crit_edge, label %if.else10.i

if.else6.i.kv_get_clk_bypass.exit_crit_edge:      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %25)
  %cmp.not.i37.i = icmp ult i32 %25, 15000
  %sub.i38.i = add i32 %25, -15000
  %sub1.i39.i = sub i32 15000, %25
  %cond.i40.i = select i1 %cmp.not.i37.i, i32 %sub1.i39.i, i32 %sub.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i)
  %cmp12.i = icmp ult i32 %cond.i40.i, 200
  br i1 %cmp12.i, label %if.else10.i.kv_get_clk_bypass.exit_crit_edge, label %if.else14.i

if.else10.i.kv_get_clk_bypass.exit_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else14.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %25)
  %cmp.not.i41.i = icmp ult i32 %25, 10000
  %sub.i42.i = add i32 %25, -10000
  %sub1.i43.i = sub i32 10000, %25
  %cond.i44.i = select i1 %cmp.not.i41.i, i32 %sub1.i43.i, i32 %sub.i42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i)
  %cmp16.i = icmp ult i32 %cond.i44.i, 200
  %..i = select i1 %cmp16.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit

kv_get_clk_bypass.exit:                           ; preds = %if.else14.i, %if.else10.i.kv_get_clk_bypass.exit_crit_edge, %if.else6.i.kv_get_clk_bypass.exit_crit_edge, %if.else.i.kv_get_clk_bypass.exit_crit_edge, %if.then.i.kv_get_clk_bypass.exit_crit_edge, %if.end14.kv_get_clk_bypass.exit_crit_edge
  %value.0.i = phi i8 [ 3, %if.then.i.kv_get_clk_bypass.exit_crit_edge ], [ 2, %if.else.i.kv_get_clk_bypass.exit_crit_edge ], [ 7, %if.else6.i.kv_get_clk_bypass.exit_crit_edge ], [ 6, %if.else10.i.kv_get_clk_bypass.exit_crit_edge ], [ %..i, %if.else14.i ], [ 0, %if.end14.kv_get_clk_bypass.exit_crit_edge ]
  %ClkBypassCntl = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112, i32 3
  %30 = ptrtoint ptr %ClkBypassCntl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %value.0.i, ptr %ClkBypassCntl, align 1
  %31 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries, align 4
  %evclk32 = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %32, i32 %i.0112, i32 1
  %33 = ptrtoint ptr %evclk32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %evclk32, align 4
  %call33 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %34, i1 noundef zeroext false, ptr noundef nonnull %dividers) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %kv_get_clk_bypass.exit.cleanup_crit_edge

kv_get_clk_bypass.exit.cleanup_crit_edge:         ; preds = %kv_get_clk_bypass.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %kv_get_clk_bypass.exit
  %35 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dividers, align 4
  %conv37 = trunc i32 %36 to i8
  %Divider = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 25, i32 %i.0112, i32 2
  %37 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv37, ptr %Divider, align 2
  %38 = ptrtoint ptr %vce_level_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %vce_level_count, align 2
  %inc = add i8 %39, 1
  store i8 %inc, ptr %vce_level_count, align 2
  %inc41 = add nuw nsw i32 %i.0112, 1
  %40 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  %conv4 = zext i8 %41 to i32
  %cmp5 = icmp ult i32 %inc41, %conv4
  br i1 %cmp5, label %if.end36.for.body_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %43, 79
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sram_end, align 4
  %call43 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %vce_level_count, i32 noundef 1, i32 noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %for.end
  %vce_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 33
  %46 = ptrtoint ptr %vce_interval to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %vce_interval, align 1
  %47 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dpm_table_start, align 4
  %add48 = add i32 %48, 749
  %49 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sram_end, align 4
  %call51 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add48, ptr noundef %vce_interval, i32 noundef 1, i32 noundef %50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dpm_table_start, align 4
  %add56 = add i32 %52, 456
  %vce_level57 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 25
  %53 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sram_end, align 4
  %call59 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add56, ptr noundef %vce_level57, i32 noundef 96, i32 noundef %54) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end46.cleanup_crit_edge, %for.end.cleanup_crit_edge, %kv_get_clk_bypass.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call59, %if.end54 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call43, %for.end.cleanup_crit_edge ], [ %call51, %if.end46.cleanup_crit_edge ], [ %call33, %kv_get_clk_bypass.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_populate_samu_table(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %samu_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #12
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %cmp = icmp eq ptr %samu_clock_voltage_dependency_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %samu_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %samu_level_count = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %samu_level_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %samu_level_count, align 4
  %6 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %samu_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3111.not = icmp eq i32 %7, 0
  br i1 %cmp3111.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %high_voltage_t = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %for.body.lr.ph
  %i.0112 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %if.end32.for.body_crit_edge ]
  %8 = ptrtoint ptr %high_voltage_t to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %high_voltage_t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %for.body.if.end10_crit_edge, label %land.lhs.true

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %11, i32 %i.0112, i32 1
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %v, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %13)
  %cmp7 = icmp ult i16 %9, %13
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %14 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entries, align 4
  %arrayidx12 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %15, i32 %i.0112
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx13, align 4
  %19 = load ptr, ptr %entries, align 4
  %v16 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %19, i32 %i.0112, i32 1
  %20 = ptrtoint ptr %v16 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %v16, align 4
  %MinVoltage = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112, i32 1
  %22 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %MinVoltage, align 4
  %23 = load ptr, ptr %entries, align 4
  %arrayidx20 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %23, i32 %i.0112
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 4
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %27, i32 0, i32 67
  %28 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.end10.kv_get_clk_bypass.exit_crit_edge, label %if.then.i

if.end10.kv_get_clk_bypass.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %25)
  %cmp.not.i.i = icmp ult i32 %25, 40000
  %sub.i.i = add i32 %25, -40000
  %sub1.i.i = sub i32 40000, %25
  %cond.i.i = select i1 %cmp.not.i.i, i32 %sub1.i.i, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i.i)
  %cmp.i = icmp ult i32 %cond.i.i, 200
  br i1 %cmp.i, label %if.then.i.kv_get_clk_bypass.exit_crit_edge, label %if.else.i

if.then.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %25)
  %cmp.not.i29.i = icmp ult i32 %25, 30000
  %sub.i30.i = add i32 %25, -30000
  %sub1.i31.i = sub i32 30000, %25
  %cond.i32.i = select i1 %cmp.not.i29.i, i32 %sub1.i31.i, i32 %sub.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i32.i)
  %cmp4.i = icmp ult i32 %cond.i32.i, 200
  br i1 %cmp4.i, label %if.else.i.kv_get_clk_bypass.exit_crit_edge, label %if.else6.i

if.else.i.kv_get_clk_bypass.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %25)
  %cmp.not.i33.i = icmp ult i32 %25, 20000
  %sub.i34.i = add i32 %25, -20000
  %sub1.i35.i = sub i32 20000, %25
  %cond.i36.i = select i1 %cmp.not.i33.i, i32 %sub1.i35.i, i32 %sub.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i36.i)
  %cmp8.i = icmp ult i32 %cond.i36.i, 200
  br i1 %cmp8.i, label %if.else6.i.kv_get_clk_bypass.exit_crit_edge, label %if.else10.i

if.else6.i.kv_get_clk_bypass.exit_crit_edge:      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %25)
  %cmp.not.i37.i = icmp ult i32 %25, 15000
  %sub.i38.i = add i32 %25, -15000
  %sub1.i39.i = sub i32 15000, %25
  %cond.i40.i = select i1 %cmp.not.i37.i, i32 %sub1.i39.i, i32 %sub.i38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i40.i)
  %cmp12.i = icmp ult i32 %cond.i40.i, 200
  br i1 %cmp12.i, label %if.else10.i.kv_get_clk_bypass.exit_crit_edge, label %if.else14.i

if.else10.i.kv_get_clk_bypass.exit_crit_edge:     ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_clk_bypass.exit

if.else14.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %25)
  %cmp.not.i41.i = icmp ult i32 %25, 10000
  %sub.i42.i = add i32 %25, -10000
  %sub1.i43.i = sub i32 10000, %25
  %cond.i44.i = select i1 %cmp.not.i41.i, i32 %sub1.i43.i, i32 %sub.i42.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %cond.i44.i)
  %cmp16.i = icmp ult i32 %cond.i44.i, 200
  %..i = select i1 %cmp16.i, i8 8, i8 0
  br label %kv_get_clk_bypass.exit

kv_get_clk_bypass.exit:                           ; preds = %if.else14.i, %if.else10.i.kv_get_clk_bypass.exit_crit_edge, %if.else6.i.kv_get_clk_bypass.exit_crit_edge, %if.else.i.kv_get_clk_bypass.exit_crit_edge, %if.then.i.kv_get_clk_bypass.exit_crit_edge, %if.end10.kv_get_clk_bypass.exit_crit_edge
  %value.0.i = phi i8 [ 3, %if.then.i.kv_get_clk_bypass.exit_crit_edge ], [ 2, %if.else.i.kv_get_clk_bypass.exit_crit_edge ], [ 7, %if.else6.i.kv_get_clk_bypass.exit_crit_edge ], [ 6, %if.else10.i.kv_get_clk_bypass.exit_crit_edge ], [ %..i, %if.else14.i ], [ 0, %if.end10.kv_get_clk_bypass.exit_crit_edge ]
  %ClkBypassCntl = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112, i32 3
  %30 = ptrtoint ptr %ClkBypassCntl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %value.0.i, ptr %ClkBypassCntl, align 1
  %31 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries, align 4
  %arrayidx27 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %32, i32 %i.0112
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx27, align 4
  %call29 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %34, i1 noundef zeroext false, ptr noundef nonnull %dividers) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %kv_get_clk_bypass.exit.cleanup_crit_edge

kv_get_clk_bypass.exit.cleanup_crit_edge:         ; preds = %kv_get_clk_bypass.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %kv_get_clk_bypass.exit
  %35 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dividers, align 4
  %conv33 = trunc i32 %36 to i8
  %Divider = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 27, i32 %i.0112, i32 2
  %37 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv33, ptr %Divider, align 2
  %38 = ptrtoint ptr %samu_level_count to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %samu_level_count, align 4
  %inc = add i8 %39, 1
  store i8 %inc, ptr %samu_level_count, align 4
  %inc37 = add nuw i32 %i.0112, 1
  %40 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %samu_clock_voltage_dependency_table, align 4
  %cmp3 = icmp ult i32 %inc37, %41
  br i1 %cmp3, label %if.end32.for.body_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %43, 81
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %44 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sram_end, align 4
  %call39 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %samu_level_count, i32 noundef 1, i32 noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %for.end
  %samu_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 35
  %46 = ptrtoint ptr %samu_interval to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %samu_interval, align 1
  %47 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dpm_table_start, align 4
  %add44 = add i32 %48, 751
  %49 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sram_end, align 4
  %call47 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add44, ptr noundef %samu_interval, i32 noundef 1, i32 noundef %50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dpm_table_start, align 4
  %add52 = add i32 %52, 648
  %samu_level53 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 27
  %53 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sram_end, align 4
  %call55 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add52, ptr noundef %samu_level53, i32 noundef 96, i32 noundef %54) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end42.cleanup_crit_edge, %for.end.cleanup_crit_edge, %kv_get_clk_bypass.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call39, %for.end.cleanup_crit_edge ], [ %call47, %if.end42.cleanup_crit_edge ], [ %call55, %if.end50 ], [ %call29, %kv_get_clk_bypass.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_populate_acp_table(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %acp_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #12
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %cmp = icmp eq ptr %acp_clock_voltage_dependency_table, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %acp_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %acp_level_count = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %acp_level_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %acp_level_count, align 1
  %6 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %acp_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp383.not = icmp eq i32 %7, 0
  br i1 %cmp383.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %if.end14.for.body_crit_edge ]
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %9, i32 %i.084
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 26, i32 %i.084
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %13, i32 %i.084, i32 1
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %v, align 4
  %MinVoltage = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 26, i32 %i.084, i32 1
  %16 = ptrtoint ptr %MinVoltage to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %MinVoltage, align 4
  %17 = load ptr, ptr %entries, align 4
  %arrayidx10 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %17, i32 %i.084
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %call12 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %19, i1 noundef zeroext false, ptr noundef nonnull %dividers) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %20 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dividers, align 4
  %conv = trunc i32 %21 to i8
  %Divider = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 26, i32 %i.084, i32 2
  %22 = ptrtoint ptr %Divider to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %Divider, align 2
  %23 = ptrtoint ptr %acp_level_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %acp_level_count, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %acp_level_count, align 1
  %inc18 = add nuw i32 %i.084, 1
  %25 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %acp_clock_voltage_dependency_table, align 4
  %cmp3 = icmp ult i32 %inc18, %26
  br i1 %cmp3, label %if.end14.for.body_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.end.for.end_crit_edge
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %28, 80
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sram_end, align 4
  %call20 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %acp_level_count, i32 noundef 1, i32 noundef %30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %for.end
  %acp_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 34
  %31 = ptrtoint ptr %acp_interval to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %acp_interval, align 2
  %32 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dpm_table_start, align 4
  %add25 = add i32 %33, 750
  %34 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sram_end, align 4
  %call28 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add25, ptr noundef %acp_interval, i32 noundef 1, i32 noundef %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dpm_table_start, align 4
  %add33 = add i32 %37, 552
  %acp_level34 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 26
  %38 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sram_end, align 4
  %call36 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add33, ptr noundef %acp_level34, i32 noundef 96, i32 noundef %39) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end23.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call20, %for.end.cleanup_crit_edge ], [ %call28, %if.end23.cleanup_crit_edge ], [ %call36, %if.end31 ], [ %call12, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_start_am(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1071644664) #12
  %and = and i32 %call, -2097201
  %or = or i32 %and, 2097152
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1071644664, i32 noundef %or) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_enable_auto_thermal_throttling(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %graphics_therm_throttle_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %graphics_therm_throttle_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %graphics_therm_throttle_enable, align 2
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %4, 754
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_end, align 4
  %call2 = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %graphics_therm_throttle_enable, i32 noundef 1, i32 noundef %6) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_enable_dpm_voltage_scaling(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %graphics_voltage_change_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %graphics_voltage_change_enable to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %graphics_voltage_change_enable, align 1
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %4, 755
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_end, align 4
  %call2 = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %graphics_voltage_change_enable, i32 noundef 1, i32 noundef %6) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_set_dpm_interval(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %graphics_interval = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %graphics_interval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %graphics_interval, align 1
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %4, 753
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sram_end, align 4
  %call2 = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %graphics_interval, i32 noundef 1, i32 noundef %6) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_start_dpm(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1071644672) #12
  %or = or i32 %call, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1071644672, i32 noundef %or) #12
  %call1 = tail call i32 @kv_smc_dpm_enable(ptr noundef %rdev, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_enable_didt(ptr noundef %rdev, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %caps_sq_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %caps_sq_ramping to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %caps_sq_ramping, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %caps_db_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 56
  %4 = ptrtoint ptr %caps_db_ramping to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %caps_db_ramping, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %caps_td_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 57
  %6 = ptrtoint ptr %caps_td_ramping to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %caps_td_ramping, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false2.if.then_crit_edge

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %caps_tcp_ramping = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 58
  %8 = ptrtoint ptr %caps_tcp_ramping to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %caps_tcp_ramping, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false4.if.then_crit_edge

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @cik_enter_rlc_safe_mode(ptr noundef %rdev) #12
  br i1 %enable, label %if.then7, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.then
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %while.body.i

while.body.i:                                     ; preds = %if.end30.i.while.body.i_crit_edge, %if.then7
  %10 = phi i32 [ 16, %if.then7 ], [ %47, %if.end30.i.while.body.i_crit_edge ]
  %cache.010.i = phi i32 [ 0, %if.then7 ], [ %cache.1.i, %if.end30.i.while.body.i_crit_edge ]
  %config_regs.08.i = phi ptr [ @didt_config_kv, %if.then7 ], [ %incdec.ptr.i, %if.end30.i.while.body.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.default.i [
    i32 3, label %if.then3.i
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

if.then3.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %value.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 3
  %14 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value.i, align 4
  %shift.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 2
  %16 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %15, %17
  %mask.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 1
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shl.i, %19
  %or.i = or i32 %and.i, %cache.010.i
  br label %if.end30.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %10) #12
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i = tail call i32 @cik_didt_rreg(ptr noundef %rdev, i32 noundef %10) #12
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %while.body.i
  %shl10.i = shl i32 %10, 2
  %20 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shl10.i)
  %cmp.i.i = icmp ugt i32 %21, %shl10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl10.i)
  %cmp1.i.i = icmp ult i32 %shl10.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %shl10.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !77
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !78
  br label %sw.epilog.i

if.else.i.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %shl10.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.else.i.i, %if.then.i.i, %sw.bb6.i, %sw.bb.i
  %data.0.i = phi i32 [ %call8.i, %sw.bb6.i ], [ %call.i, %sw.bb.i ], [ %call3.i.i, %if.else.i.i ], [ %25, %if.then.i.i ]
  %mask12.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 1
  %26 = ptrtoint ptr %mask12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask12.i, align 4
  %neg.i = xor i32 %27, -1
  %and13.i = and i32 %data.0.i, %neg.i
  %value14.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 3
  %28 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value14.i, align 4
  %shift15.i = getelementptr inbounds %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 0, i32 2
  %30 = ptrtoint ptr %shift15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shift15.i, align 4
  %shl16.i = shl i32 %29, %31
  %and18.i = and i32 %shl16.i, %27
  %or19.i = or i32 %and13.i, %cache.010.i
  %or20.i = or i32 %or19.i, %and18.i
  %32 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %33, label %sw.default26.i [
    i32 1, label %sw.bb22.i
    i32 2, label %sw.bb24.i
  ]

sw.bb22.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %config_regs.08.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_regs.08.i, align 4
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %36, i32 noundef %or20.i) #12
  br label %if.end30.i

sw.bb24.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %config_regs.08.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %config_regs.08.i, align 4
  tail call void @cik_didt_wreg(ptr noundef %rdev, i32 noundef %38, i32 noundef %or20.i) #12
  br label %if.end30.i

sw.default26.i:                                   ; preds = %sw.epilog.i
  %39 = ptrtoint ptr %config_regs.08.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %config_regs.08.i, align 4
  %shl28.i = shl i32 %40, 2
  %41 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %shl28.i)
  %cmp.i2.i = icmp ugt i32 %42, %shl28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %shl28.i)
  %cmp1.i3.i = icmp ult i32 %shl28.i, 65536
  %or.cond.i4.i = or i1 %cmp1.i3.i, %cmp.i2.i
  br i1 %or.cond.i4.i, label %do.body.i.i, label %if.else.i7.i

do.body.i.i:                                      ; preds = %sw.default26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !79
  tail call void @arm_heavy_mb() #12
  %43 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #12
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %45, i32 %shl28.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %43) #12, !srcloc !80
  br label %if.end30.i

if.else.i7.i:                                     ; preds = %sw.default26.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %shl28.i, i32 noundef %or20.i) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i7.i, %do.body.i.i, %sw.bb24.i, %sw.bb22.i, %if.then3.i
  %cache.1.i = phi i32 [ %or.i, %if.then3.i ], [ 0, %sw.bb24.i ], [ 0, %sw.bb22.i ], [ 0, %do.body.i.i ], [ 0, %if.else.i7.i ]
  %incdec.ptr.i = getelementptr %struct.kv_pt_config_reg, ptr %config_regs.08.i, i32 1
  %46 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %incdec.ptr.i, align 4
  %cmp1.not.i = icmp eq i32 %47, -1
  br i1 %cmp1.not.i, label %if.end30.i.if.end11_crit_edge, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end30.i.if.end11_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end11:                                         ; preds = %if.end30.i.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %48 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i, align 4
  %caps_sq_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %49, i32 0, i32 55
  %50 = ptrtoint ptr %caps_sq_ramping.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %caps_sq_ramping.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %if.end11.if.end4.i_crit_edge, label %if.then.i

if.end11.if.end4.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @cik_didt_rreg(ptr noundef %rdev, i32 noundef 0) #12
  %and.i1 = and i32 %call1.i, -2
  %masksel.i = zext i1 %enable to i32
  %data.0.i2 = or i32 %and.i1, %masksel.i
  tail call void @cik_didt_wreg(ptr noundef %rdev, i32 noundef 0, i32 noundef %data.0.i2) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %if.end11.if.end4.i_crit_edge
  %caps_db_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %49, i32 0, i32 56
  %52 = ptrtoint ptr %caps_db_ramping.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %caps_db_ramping.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool5.not.i = icmp eq i8 %53, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.end14.i_crit_edge, label %if.then6.i

if.end4.i.if.end14.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %call7.i = tail call i32 @cik_didt_rreg(ptr noundef %rdev, i32 noundef 32) #12
  %and12.i = and i32 %call7.i, -2
  %masksel60.i = zext i1 %enable to i32
  %data.1.i = or i32 %and12.i, %masksel60.i
  tail call void @cik_didt_wreg(ptr noundef %rdev, i32 noundef 32, i32 noundef %data.1.i) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end14.i_crit_edge
  %caps_td_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %49, i32 0, i32 57
  %54 = ptrtoint ptr %caps_td_ramping.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %caps_td_ramping.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool15.not.i = icmp eq i8 %55, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end24.i_crit_edge, label %if.then16.i

if.end14.i.if.end24.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call i32 @cik_didt_rreg(ptr noundef %rdev, i32 noundef 64) #12
  %and22.i = and i32 %call17.i, -2
  %masksel61.i = zext i1 %enable to i32
  %data.2.i = or i32 %and22.i, %masksel61.i
  tail call void @cik_didt_wreg(ptr noundef %rdev, i32 noundef 64, i32 noundef %data.2.i) #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end24.i_crit_edge
  %caps_tcp_ramping.i = getelementptr inbounds %struct.kv_power_info, ptr %49, i32 0, i32 58
  %56 = ptrtoint ptr %caps_tcp_ramping.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %caps_tcp_ramping.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool25.not.i = icmp eq i8 %57, 0
  br i1 %tobool25.not.i, label %if.end24.i.kv_do_enable_didt.exit_crit_edge, label %if.then26.i

if.end24.i.kv_do_enable_didt.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_do_enable_didt.exit

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %call27.i = tail call i32 @cik_didt_rreg(ptr noundef %rdev, i32 noundef 96) #12
  %and32.i = and i32 %call27.i, -2
  %masksel62.i = zext i1 %enable to i32
  %data.3.i = or i32 %and32.i, %masksel62.i
  tail call void @cik_didt_wreg(ptr noundef %rdev, i32 noundef 96, i32 noundef %data.3.i) #12
  br label %kv_do_enable_didt.exit

kv_do_enable_didt.exit:                           ; preds = %if.then26.i, %if.end24.i.kv_do_enable_didt.exit_crit_edge
  tail call void @cik_exit_rlc_safe_mode(ptr noundef %rdev) #12
  br label %cleanup

cleanup:                                          ; preds = %kv_do_enable_didt.exit, %lor.lhs.false4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_late_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %2 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_thermal_type, align 4
  %call = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %3) #12
  br i1 %call, label %if.then, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1039138776) #12
  %and.i = and i32 %call.i, -65536
  %or10.i = or i32 %and.i, 35753
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1039138776, i32 noundef %or10.i) #12
  %min_temp11.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 1
  %4 = ptrtoint ptr %min_temp11.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 90000, ptr %min_temp11.i, align 4
  %max_temp15.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 2
  %5 = ptrtoint ptr %max_temp15.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 120000, ptr %max_temp15.i, align 4
  %call.i14 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1039138776) #12
  %thermal_int.0.i = or i32 %call.i14, 50331648
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1039138776, i32 noundef %thermal_int.0.i) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  %acp_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %7, i32 0, i32 46
  %8 = ptrtoint ptr %acp_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %acp_power_gated.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp eq i8 %9, 1
  br i1 %cmp.i, label %if.end4.kv_dpm_powergate_acp.exit_crit_edge, label %if.end.i

if.end4.kv_dpm_powergate_acp.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end.i:                                         ; preds = %if.end4
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %10 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %family.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %11, label %if.end10.i [
    i32 59, label %if.end.i.kv_dpm_powergate_acp.exit_crit_edge
    i32 61, label %if.end.i.kv_dpm_powergate_acp.exit_crit_edge31
  ]

if.end.i.kv_dpm_powergate_acp.exit_crit_edge31:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end.i.kv_dpm_powergate_acp.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end10.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %acp_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %acp_power_gated.i, align 2
  %call.i.i.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 345) #12
  %caps_acp_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %7, i32 0, i32 65
  %14 = ptrtoint ptr %caps_acp_pg.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %caps_acp_pg.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not.i = icmp eq i8 %15, 0
  br i1 %tobool17.not.i, label %if.end10.i.kv_dpm_powergate_acp.exit_crit_edge, label %cleanup.sink.split.i

if.end10.i.kv_dpm_powergate_acp.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

cleanup.sink.split.i:                             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i39.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 311) #12
  br label %kv_dpm_powergate_acp.exit

kv_dpm_powergate_acp.exit:                        ; preds = %cleanup.sink.split.i, %if.end10.i.kv_dpm_powergate_acp.exit_crit_edge, %if.end.i.kv_dpm_powergate_acp.exit_crit_edge, %if.end.i.kv_dpm_powergate_acp.exit_crit_edge31, %if.end4.kv_dpm_powergate_acp.exit_crit_edge
  %16 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i.i, align 4
  %samu_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %samu_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %samu_power_gated.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp.i17 = icmp eq i8 %19, 1
  br i1 %cmp.i17, label %kv_dpm_powergate_acp.exit.kv_dpm_powergate_samu.exit_crit_edge, label %if.end.i18

kv_dpm_powergate_acp.exit.kv_dpm_powergate_samu.exit_crit_edge: ; preds = %kv_dpm_powergate_acp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_samu.exit

if.end.i18:                                       ; preds = %kv_dpm_powergate_acp.exit
  %20 = ptrtoint ptr %samu_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %samu_power_gated.i, align 1
  %call.i.i.i19 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 343) #12
  %caps_samu_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %17, i32 0, i32 64
  %21 = ptrtoint ptr %caps_samu_pg.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %caps_samu_pg.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not.i = icmp eq i8 %22, 0
  br i1 %tobool10.not.i, label %if.end.i18.kv_dpm_powergate_samu.exit_crit_edge, label %cleanup.sink.split.i20

if.end.i18.kv_dpm_powergate_samu.exit_crit_edge:  ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_samu.exit

cleanup.sink.split.i20:                           ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i32.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 313) #12
  br label %kv_dpm_powergate_samu.exit

kv_dpm_powergate_samu.exit:                       ; preds = %cleanup.sink.split.i20, %if.end.i18.kv_dpm_powergate_samu.exit_crit_edge, %kv_dpm_powergate_acp.exit.kv_dpm_powergate_samu.exit_crit_edge
  %23 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv.i.i, align 4
  %vce_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %24, i32 0, i32 45
  %25 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vce_power_gated.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i22 = icmp eq i8 %26, 1
  br i1 %cmp.i22, label %kv_dpm_powergate_samu.exit.kv_dpm_powergate_vce.exit_crit_edge, label %if.end.i23

kv_dpm_powergate_samu.exit.kv_dpm_powergate_vce.exit_crit_edge: ; preds = %kv_dpm_powergate_samu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_vce.exit

if.end.i23:                                       ; preds = %kv_dpm_powergate_samu.exit
  %27 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %vce_power_gated.i, align 1
  %caps_vce_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %24, i32 0, i32 63
  %28 = ptrtoint ptr %caps_vce_pg.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %caps_vce_pg.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool9.not.i = icmp eq i8 %29, 0
  br i1 %tobool9.not.i, label %if.end.i23.kv_dpm_powergate_vce.exit_crit_edge, label %if.then10.i

if.end.i23.kv_dpm_powergate_vce.exit_crit_edge:   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_vce.exit

if.then10.i:                                      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 270) #12
  br label %kv_dpm_powergate_vce.exit

kv_dpm_powergate_vce.exit:                        ; preds = %if.then10.i, %if.end.i23.kv_dpm_powergate_vce.exit_crit_edge, %kv_dpm_powergate_samu.exit.kv_dpm_powergate_vce.exit_crit_edge
  %30 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i.i, align 4
  %uvd_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %uvd_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uvd_power_gated.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp.i25 = icmp eq i8 %33, 1
  br i1 %cmp.i25, label %kv_dpm_powergate_vce.exit.kv_dpm_powergate_uvd.exit_crit_edge, label %if.end.i27

kv_dpm_powergate_vce.exit.kv_dpm_powergate_uvd.exit_crit_edge: ; preds = %kv_dpm_powergate_vce.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_uvd.exit

if.end.i27:                                       ; preds = %kv_dpm_powergate_vce.exit
  %34 = ptrtoint ptr %uvd_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %uvd_power_gated.i, align 4
  %caps_uvd_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %31, i32 0, i32 62
  %35 = ptrtoint ptr %caps_uvd_pg.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %caps_uvd_pg.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not.i26 = icmp eq i8 %36, 0
  br i1 %tobool9.not.i26, label %if.end.i27.if.end11.i_crit_edge, label %if.then10.i28

if.end.i27.if.end11.i_crit_edge:                  ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then10.i28:                                    ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uvd_v1_0_stop(ptr noundef %rdev) #12
  tail call void @cik_update_cg(ptr noundef %rdev, i32 noundef 8, i1 noundef zeroext false) #12
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i28, %if.end.i27.if.end11.i_crit_edge
  %call.i.i.i29 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 341) #12
  %37 = ptrtoint ptr %caps_uvd_pg.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %caps_uvd_pg.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool15.not.i = icmp eq i8 %38, 0
  br i1 %tobool15.not.i, label %if.end11.i.kv_dpm_powergate_uvd.exit_crit_edge, label %cleanup.sink.split.i30

if.end11.i.kv_dpm_powergate_uvd.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_uvd.exit

cleanup.sink.split.i30:                           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i47.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 96) #12
  br label %kv_dpm_powergate_uvd.exit

kv_dpm_powergate_uvd.exit:                        ; preds = %cleanup.sink.split.i30, %if.end11.i.kv_dpm_powergate_uvd.exit_crit_edge, %kv_dpm_powergate_vce.exit.kv_dpm_powergate_uvd.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_powergate_uvd(ptr noundef %rdev, i1 noundef zeroext %gate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %uvd_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uvd_power_gated, align 4, !range !75
  %4 = zext i1 %gate to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %uvd_power_gated, align 4
  %caps_uvd_pg = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 62
  %6 = ptrtoint ptr %caps_uvd_pg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %caps_uvd_pg, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %gate, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  br i1 %tobool9.not, label %if.then8.if.end11_crit_edge, label %if.then10

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @uvd_v1_0_stop(ptr noundef %rdev) #12
  tail call void @cik_update_cg(ptr noundef %rdev, i32 noundef 8, i1 noundef zeroext false) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then8.if.end11_crit_edge
  %call.i.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 341) #12
  %8 = ptrtoint ptr %caps_uvd_pg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %caps_uvd_pg, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool9.not, label %if.else.if.end25_crit_edge, label %if.then21

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 97) #12
  %call23 = tail call i32 @uvd_v4_2_resume(ptr noundef %rdev) #12
  %call24 = tail call i32 @uvd_v1_0_start(ptr noundef %rdev) #12
  tail call void @cik_update_cg(ptr noundef %rdev, i32 noundef 8, i1 noundef zeroext true) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.else.if.end25_crit_edge
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5
  %12 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  %sub.i = add i8 %13, -1
  %spec.select.i = select i1 %tobool1.not.i, i8 0, i8 %sub.i
  %14 = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 28
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select.i, ptr %14, align 4
  %caps_uvd_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 61
  %16 = ptrtoint ptr %caps_uvd_dpm.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %caps_uvd_dpm.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not.i = icmp eq i8 %17, 0
  br i1 %tobool6.not.i, label %if.end25.if.then9.i_crit_edge, label %lor.lhs.false.i

if.end25.if.then9.i_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.end25
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 66
  %18 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %caps_stable_p_state.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not.i = icmp eq i8 %19, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.end13.i_crit_edge, label %lor.lhs.false.i.if.then9.i_crit_edge

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9.i

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %if.end25.if.then9.i_crit_edge
  %conv11.i = zext i8 %spec.select.i to i32
  %shl.i = shl nuw i32 1, %conv11.i
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %lor.lhs.false.i.if.end13.i_crit_edge
  %mask.0.i = phi i32 [ %shl.i, %if.then9.i ], [ 31, %lor.lhs.false.i.if.end13.i_crit_edge ]
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 14
  %20 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dpm_table_start.i, align 4
  %add.i = add i32 %21, 744
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 13
  %22 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sram_end.i, align 4
  %call15.i = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i, ptr noundef %14, i32 noundef 1, i32 noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call19.i = tail call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 301, i32 noundef %mask.0.i) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end18.i, %if.end11.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 340, %if.end18.i ], [ 96, %if.end11.cleanup.sink.split_crit_edge ]
  %call.i.i47 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end13.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kv_smc_bapm_enable(ptr noundef %rdev, i1 noundef zeroext false) #12
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %1)
  %cmp = icmp eq i32 %1, 61
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %enable_nb_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %enable_nb_dpm.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_nb_dpm.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %land.lhs.true10.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true10.i:                                ; preds = %if.then
  %nb_dpm_enabled11.i = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 48
  %6 = ptrtoint ptr %nb_dpm_enabled11.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nb_dpm_enabled11.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not.i = icmp eq i8 %7, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end_crit_edge, label %if.then13.i

land.lhs.true10.i.if.end_crit_edge:               ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then13.i:                                      ; preds = %land.lhs.true10.i
  %call14.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 321) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp eq i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.then13.i.if.end_crit_edge

if.then13.i.if.end_crit_edge:                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then16.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %nb_dpm_enabled11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %nb_dpm_enabled11.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16.i, %if.then13.i.if.end_crit_edge, %land.lhs.true10.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %priv.i.i20 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %9 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i20, align 4
  %acp_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %acp_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %acp_power_gated.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp.i = icmp eq i8 %12, 0
  br i1 %cmp.i, label %if.end.kv_dpm_powergate_acp.exit_crit_edge, label %if.end.i

if.end.kv_dpm_powergate_acp.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %14, label %if.end10.i [
    i32 59, label %if.end.i.kv_dpm_powergate_acp.exit_crit_edge
    i32 61, label %if.end.i.kv_dpm_powergate_acp.exit_crit_edge44
  ]

if.end.i.kv_dpm_powergate_acp.exit_crit_edge44:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end.i.kv_dpm_powergate_acp.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end10.i:                                       ; preds = %if.end.i
  %16 = ptrtoint ptr %acp_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %acp_power_gated.i, align 2
  %caps_acp_pg21.i = getelementptr inbounds %struct.kv_power_info, ptr %10, i32 0, i32 65
  %17 = ptrtoint ptr %caps_acp_pg21.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %caps_acp_pg21.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not.i = icmp eq i8 %18, 0
  br i1 %tobool22.not.i, label %if.end10.i.if.end25.i_crit_edge, label %if.then23.i

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call24.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 312) #12
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end10.i.if.end25.i_crit_edge
  %acp_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8
  %19 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.i20, align 4
  %caps_stable_p_state.i.i = getelementptr inbounds %struct.kv_power_info, ptr %20, i32 0, i32 66
  %21 = ptrtoint ptr %caps_stable_p_state.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %caps_stable_p_state.i.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool1.not.i.i = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %acp_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %acp_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.i.i.i = icmp eq i32 %24, 0
  %i.1.i.i.i = sext i1 %cmp6.i.i.i to i8
  %25 = trunc i32 %24 to i8
  %conv.i.i = add i8 %25, -1
  %conv.sink.i.i = select i1 %tobool1.not.i.i, i8 %i.1.i.i.i, i8 %conv.i.i
  %26 = getelementptr inbounds %struct.kv_power_info, ptr %20, i32 0, i32 30
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.sink.i.i, ptr %26, align 2
  %dpm_table_start.i.i = getelementptr inbounds %struct.kv_power_info, ptr %20, i32 0, i32 14
  %28 = ptrtoint ptr %dpm_table_start.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dpm_table_start.i.i, align 4
  %add.i.i = add i32 %29, 746
  %sram_end.i.i = getelementptr inbounds %struct.kv_power_info, ptr %20, i32 0, i32 13
  %30 = ptrtoint ptr %sram_end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sram_end.i.i, align 4
  %call6.i.i = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i.i, ptr noundef %26, i32 noundef 1, i32 noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end25.i.kv_dpm_powergate_acp.exit_crit_edge

if.end25.i.kv_dpm_powergate_acp.exit_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_acp.exit

if.end9.i.i:                                      ; preds = %if.end25.i
  %32 = ptrtoint ptr %caps_stable_p_state.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %caps_stable_p_state.i.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool11.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool11.not.i.i, label %if.end9.i.i.cleanup.sink.split.i_crit_edge, label %if.then12.i.i

if.end9.i.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %26, align 2
  %conv14.i.i = zext i8 %35 to i32
  %shl.i.i = shl nuw i32 1, %conv14.i.i
  %call15.i.i = tail call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 303, i32 noundef %shl.i.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then12.i.i, %if.end9.i.i.cleanup.sink.split.i_crit_edge
  %call.i.i39.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 344) #12
  br label %kv_dpm_powergate_acp.exit

kv_dpm_powergate_acp.exit:                        ; preds = %cleanup.sink.split.i, %if.end25.i.kv_dpm_powergate_acp.exit_crit_edge, %if.end.i.kv_dpm_powergate_acp.exit_crit_edge, %if.end.i.kv_dpm_powergate_acp.exit_crit_edge44, %if.end.kv_dpm_powergate_acp.exit_crit_edge
  %36 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i.i20, align 4
  %samu_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %37, i32 0, i32 47
  %38 = ptrtoint ptr %samu_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %samu_power_gated.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp.i22 = icmp eq i8 %39, 0
  br i1 %cmp.i22, label %kv_dpm_powergate_acp.exit.kv_dpm_powergate_samu.exit_crit_edge, label %if.end.i23

kv_dpm_powergate_acp.exit.kv_dpm_powergate_samu.exit_crit_edge: ; preds = %kv_dpm_powergate_acp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_samu.exit

if.end.i23:                                       ; preds = %kv_dpm_powergate_acp.exit
  %40 = ptrtoint ptr %samu_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %samu_power_gated.i, align 1
  %caps_samu_pg14.i = getelementptr inbounds %struct.kv_power_info, ptr %37, i32 0, i32 64
  %41 = ptrtoint ptr %caps_samu_pg14.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %caps_samu_pg14.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool15.not.i = icmp eq i8 %42, 0
  br i1 %tobool15.not.i, label %if.end.i23.if.end18.i_crit_edge, label %if.then16.i24

if.end.i23.if.end18.i_crit_edge:                  ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.then16.i24:                                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 314) #12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i24, %if.end.i23.if.end18.i_crit_edge
  %43 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i.i20, align 4
  %caps_stable_p_state.i.i25 = getelementptr inbounds %struct.kv_power_info, ptr %44, i32 0, i32 66
  %45 = ptrtoint ptr %caps_stable_p_state.i.i25 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %caps_stable_p_state.i.i25, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool1.not.i.i26 = icmp eq i8 %46, 0
  br i1 %tobool1.not.i.i26, label %if.end18.i.if.end.i.i_crit_edge, label %if.then2.i.i

if.end18.i.if.end.i.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then2.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %samu_clock_voltage_dependency_table.i31.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7
  %47 = ptrtoint ptr %samu_clock_voltage_dependency_table.i31.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %samu_clock_voltage_dependency_table.i31.i, align 4
  %49 = trunc i32 %48 to i8
  %conv.i.i27 = add i8 %49, -1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then2.i.i, %if.end18.i.if.end.i.i_crit_edge
  %conv.sink.i.i28 = phi i8 [ %conv.i.i27, %if.then2.i.i ], [ 0, %if.end18.i.if.end.i.i_crit_edge ]
  %50 = getelementptr inbounds %struct.kv_power_info, ptr %44, i32 0, i32 31
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.sink.i.i28, ptr %50, align 1
  %dpm_table_start.i.i29 = getelementptr inbounds %struct.kv_power_info, ptr %44, i32 0, i32 14
  %52 = ptrtoint ptr %dpm_table_start.i.i29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dpm_table_start.i.i29, align 4
  %add.i.i30 = add i32 %53, 747
  %sram_end.i.i31 = getelementptr inbounds %struct.kv_power_info, ptr %44, i32 0, i32 13
  %54 = ptrtoint ptr %sram_end.i.i31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sram_end.i.i31, align 4
  %call5.i.i = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i.i30, ptr noundef %50, i32 noundef 1, i32 noundef %55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i.i.kv_dpm_powergate_samu.exit_crit_edge

if.end.i.i.kv_dpm_powergate_samu.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_samu.exit

if.end8.i.i:                                      ; preds = %if.end.i.i
  %56 = ptrtoint ptr %caps_stable_p_state.i.i25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %caps_stable_p_state.i.i25, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool10.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.cleanup.sink.split.i33_crit_edge, label %if.then11.i.i

if.end8.i.i.cleanup.sink.split.i33_crit_edge:     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i33

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %50, align 1
  %conv13.i.i = zext i8 %59 to i32
  %shl.i.i32 = shl nuw i32 1, %conv13.i.i
  %call14.i.i = tail call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 304, i32 noundef %shl.i.i32) #12
  br label %cleanup.sink.split.i33

cleanup.sink.split.i33:                           ; preds = %if.then11.i.i, %if.end8.i.i.cleanup.sink.split.i33_crit_edge
  %call.i.i32.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 342) #12
  br label %kv_dpm_powergate_samu.exit

kv_dpm_powergate_samu.exit:                       ; preds = %cleanup.sink.split.i33, %if.end.i.i.kv_dpm_powergate_samu.exit_crit_edge, %kv_dpm_powergate_acp.exit.kv_dpm_powergate_samu.exit_crit_edge
  %60 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv.i.i20, align 4
  %vce_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %61, i32 0, i32 45
  %62 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vce_power_gated.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp.i35 = icmp eq i8 %63, 0
  br i1 %cmp.i35, label %kv_dpm_powergate_samu.exit.kv_dpm_powergate_vce.exit_crit_edge, label %if.end.i36

kv_dpm_powergate_samu.exit.kv_dpm_powergate_vce.exit_crit_edge: ; preds = %kv_dpm_powergate_samu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_vce.exit

if.end.i36:                                       ; preds = %kv_dpm_powergate_samu.exit
  %64 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %vce_power_gated.i, align 1
  %caps_vce_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %61, i32 0, i32 63
  %65 = ptrtoint ptr %caps_vce_pg.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %caps_vce_pg.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool9.not.i = icmp eq i8 %66, 0
  br i1 %tobool9.not.i, label %if.end.i36.kv_dpm_powergate_vce.exit_crit_edge, label %if.then15.i

if.end.i36.kv_dpm_powergate_vce.exit_crit_edge:   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_vce.exit

if.then15.i:                                      ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 271) #12
  %call17.i37 = tail call i32 @vce_v2_0_resume(ptr noundef %rdev) #12
  %call18.i = tail call i32 @vce_v1_0_start(ptr noundef %rdev) #12
  br label %kv_dpm_powergate_vce.exit

kv_dpm_powergate_vce.exit:                        ; preds = %if.then15.i, %if.end.i36.kv_dpm_powergate_vce.exit_crit_edge, %kv_dpm_powergate_samu.exit.kv_dpm_powergate_vce.exit_crit_edge
  tail call void @kv_dpm_powergate_uvd(ptr noundef %rdev, i1 noundef zeroext false)
  %67 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i.i20, align 4
  %caps_cac.i = getelementptr inbounds %struct.kv_power_info, ptr %68, i32 0, i32 53
  %69 = ptrtoint ptr %caps_cac.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %caps_cac.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i, label %kv_dpm_powergate_vce.exit.kv_enable_smc_cac.exit_crit_edge, label %if.then.i

kv_dpm_powergate_vce.exit.kv_enable_smc_cac.exit_crit_edge: ; preds = %kv_dpm_powergate_vce.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_smc_cac.exit

if.then.i:                                        ; preds = %kv_dpm_powergate_vce.exit
  %cac_enabled8.i = getelementptr inbounds %struct.kv_power_info, ptr %68, i32 0, i32 11
  %71 = ptrtoint ptr %cac_enabled8.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cac_enabled8.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool9.not.i39 = icmp eq i8 %72, 0
  br i1 %tobool9.not.i39, label %if.then.i.kv_enable_smc_cac.exit_crit_edge, label %if.then10.i

if.then.i.kv_enable_smc_cac.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_smc_cac.exit

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 84) #12
  %73 = ptrtoint ptr %cac_enabled8.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %cac_enabled8.i, align 2
  br label %kv_enable_smc_cac.exit

kv_enable_smc_cac.exit:                           ; preds = %if.then10.i, %if.then.i.kv_enable_smc_cac.exit_crit_edge, %kv_dpm_powergate_vce.exit.kv_enable_smc_cac.exit_crit_edge
  tail call fastcc void @kv_enable_didt(ptr noundef %rdev, i1 noundef zeroext false)
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1071644248, i32 noundef 0) #12
  %call.i = tail call i32 @kv_smc_dpm_enable(ptr noundef %rdev, i1 noundef zeroext false) #12
  %call.i40 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 99) #12
  %call.i41 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1071644664) #12
  %or.i = or i32 %call.i41, 48
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1071644664, i32 noundef %or.i) #12
  %call.i42 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1039138776) #12
  %and.i = and i32 %call.i42, -50331649
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -1039138776, i32 noundef %and.i) #12
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %74 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ps_priv.i.i, align 4
  %78 = ptrtoint ptr %priv.i.i20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %priv.i.i20, align 4
  %current_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %79, i32 0, i32 69
  %80 = call ptr @memcpy(ptr %current_rps.i, ptr %75, i32 40)
  %current_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %79, i32 0, i32 70
  %81 = call ptr @memcpy(ptr %current_ps.i, ptr %77, i32 72)
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %79, i32 0, i32 69, i32 9
  %82 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v1_0_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_update_cg(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_notify_message_to_smu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v4_2_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  %enable_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %level, label %entry.if.end17_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then3
    i32 0, label %if.then10
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_mask.i) #12
  %1 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %enable_mask.i, align 4, !annotation !76
  %call.i = call i32 @kv_dpm_get_enable_mask(ptr noundef %rdev, ptr noundef nonnull %enable_mask.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %kv_force_dpm_highest.exit.thread

kv_force_dpm_highest.exit.thread:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_mask.i) #12
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  %2 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_mask.i, align 4
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.inc.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %for.cond.preheader.i
  %and.1.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool1.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool1.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %and.2.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool1.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool1.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %and.3.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool1.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool1.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.end.i_crit_edge

for.inc.2.i.for.end.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %and.4.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool1.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool1.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.end.i_crit_edge

for.inc.3.i.for.end.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %and.5.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool1.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool1.not.5.i, label %for.inc.5.i, label %for.inc.4.i.for.end.i_crit_edge

for.inc.4.i.for.end.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.6.i = lshr i32 %3, 1
  %and.6.lobit.i = and i32 %and.6.i, 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.5.i, %for.inc.4.i.for.end.i_crit_edge, %for.inc.3.i.for.end.i_crit_edge, %for.inc.2.i.for.end.i_crit_edge, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 7, %for.cond.preheader.i.for.end.i_crit_edge ], [ 6, %for.inc.i.for.end.i_crit_edge ], [ 5, %for.inc.1.i.for.end.i_crit_edge ], [ 4, %for.inc.2.i.for.end.i_crit_edge ], [ 3, %for.inc.3.i.for.end.i_crit_edge ], [ 2, %for.inc.4.i.for.end.i_crit_edge ], [ %and.6.lobit.i, %for.inc.5.i ]
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %4 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %5, label %if.else.i [
    i32 59, label %for.end.i.if.then7.i_crit_edge
    i32 61, label %for.end.i.if.then7.i_crit_edge36
  ]

for.end.i.if.then7.i_crit_edge36:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

for.end.i.if.then7.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %for.end.i.if.then7.i_crit_edge, %for.end.i.if.then7.i_crit_edge36
  %call8.i = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 260, i32 noundef %i.0.lcssa.i) #12
  br label %kv_force_dpm_highest.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i.i = shl nuw nsw i32 1, %i.0.lcssa.i
  %call.i.i = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %shl.i.i) #12
  br label %kv_force_dpm_highest.exit

kv_force_dpm_highest.exit:                        ; preds = %if.else.i, %if.then7.i
  %retval.0.i = phi i32 [ %call8.i, %if.then7.i ], [ %call.i.i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_mask.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %kv_force_dpm_highest.exit.if.end17_crit_edge, label %kv_force_dpm_highest.exit.cleanup_crit_edge

kv_force_dpm_highest.exit.cleanup_crit_edge:      ; preds = %kv_force_dpm_highest.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

kv_force_dpm_highest.exit.if.end17_crit_edge:     ; preds = %kv_force_dpm_highest.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then3:                                         ; preds = %entry
  %call4 = tail call fastcc i32 @kv_force_dpm_lowest(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end17_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then10:                                        ; preds = %entry
  %family.i29 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family.i29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family.i29, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %8, label %if.else.i31 [
    i32 59, label %if.then10.if.then.i_crit_edge
    i32 61, label %if.then10.if.then.i_crit_edge37
  ]

if.then10.if.then.i_crit_edge37:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then10.if.then.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then10.if.then.i_crit_edge, %if.then10.if.then.i_crit_edge37
  %call.i30 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 65) #12
  br label %kv_unforce_levels.exit

if.else.i31:                                      ; preds = %if.then10
  %priv.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i.i.i, align 4
  %lowest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %lowest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lowest_valid.i.i, align 4
  %highest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %highest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %highest_valid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not7.i.i = icmp ugt i32 %13, %15
  br i1 %cmp.not7.i.i, label %if.else.i31.kv_set_enabled_levels.exit.i_crit_edge, label %if.else.i31.for.body.i.i_crit_edge

if.else.i31.for.body.i.i_crit_edge:               ; preds = %if.else.i31
  br label %for.body.i.i

if.else.i31.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %if.else.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i31.for.body.i.i_crit_edge
  %new_mask.09.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i31.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %13, %if.else.i31.for.body.i.i_crit_edge ]
  %shl.i.i32 = shl nuw i32 1, %i.08.i.i
  %or.i.i = or i32 %shl.i.i32, %new_mask.09.i.i
  %inc.i.i = add i32 %i.08.i.i, 1
  %cmp.not.i.i = icmp ugt i32 %inc.i.i, %15
  br i1 %cmp.not.i.i, label %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit.i

kv_set_enabled_levels.exit.i:                     ; preds = %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, %if.else.i31.kv_set_enabled_levels.exit.i_crit_edge
  %new_mask.0.lcssa.i.i = phi i32 [ 0, %if.else.i31.kv_set_enabled_levels.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i.i) #12
  br label %kv_unforce_levels.exit

kv_unforce_levels.exit:                           ; preds = %kv_set_enabled_levels.exit.i, %if.then.i
  %retval.0.i33 = phi i32 [ %call.i30, %if.then.i ], [ %call1.i.i, %kv_set_enabled_levels.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i33)
  %tobool12.not = icmp eq i32 %retval.0.i33, 0
  br i1 %tobool12.not, label %kv_unforce_levels.exit.if.end17_crit_edge, label %kv_unforce_levels.exit.cleanup_crit_edge

kv_unforce_levels.exit.cleanup_crit_edge:         ; preds = %kv_unforce_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

kv_unforce_levels.exit.if.end17_crit_edge:        ; preds = %kv_unforce_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %kv_unforce_levels.exit.if.end17_crit_edge, %if.then3.if.end17_crit_edge, %kv_force_dpm_highest.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %16 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %level, ptr %forced_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %kv_unforce_levels.exit.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %kv_force_dpm_highest.exit.cleanup_crit_edge, %kv_force_dpm_highest.exit.thread
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %retval.0.i, %kv_force_dpm_highest.exit.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ %retval.0.i33, %kv_unforce_levels.exit.cleanup_crit_edge ], [ %call.i, %kv_force_dpm_highest.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_force_dpm_lowest(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %enable_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable_mask) #12
  %0 = ptrtoint ptr %enable_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %enable_mask, align 4, !annotation !76
  %call = call i32 @kv_dpm_get_enable_mask(ptr noundef %rdev, ptr noundef nonnull %enable_mask) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %1 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enable_mask, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.inc, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %and.1 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool1.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool1.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool1.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool1.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool1.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool1.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool1.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool1.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool1.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool1.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool1.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool1.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %and.7 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool1.not.7 = icmp eq i32 %and.7, 0
  %spec.select = select i1 %tobool1.not.7, i32 8, i32 7
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ 6, %for.inc.5.for.end_crit_edge ], [ %spec.select, %for.inc.6 ]
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %family, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %4, label %if.else [
    i32 59, label %for.end.if.then7_crit_edge
    i32 61, label %for.end.if.then7_crit_edge22
  ]

for.end.if.then7_crit_edge22:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

for.end.if.then7_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %for.end.if.then7_crit_edge, %for.end.if.then7_crit_edge22
  %call8 = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 260, i32 noundef %i.0.lcssa) #12
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl nuw nsw i32 1, %i.0.lcssa
  %call.i = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %shl.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %call.i, %if.else ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable_mask) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_pre_set_power_state(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  %limit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %2 = ptrtoint ptr %requested_ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requested_ps1, align 4
  %requested_ps.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 36
  %4 = ptrtoint ptr %requested_ps.sroa.5.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %requested_ps.sroa.5.0.copyload = load ptr, ptr %requested_ps.sroa.5.0..sroa_idx, align 4
  %requested_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71
  %5 = call ptr @memmove(ptr %requested_rps.i, ptr %3, i32 36)
  %requested_ps.sroa.5.0.requested_rps.i.sroa_idx = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %6 = ptrtoint ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %requested_ps.sroa.5.0.copyload, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %requested_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72
  %7 = call ptr @memcpy(ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.copyload, i32 72)
  store ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %8 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i) #12
  %9 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %limit.i, align 4, !annotation !76
  %dyn_state.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %vce_active.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 7
  %10 = ptrtoint ptr %vce_active.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %vce_active.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %vce_level.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 7
  %12 = ptrtoint ptr %vce_level.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vce_level.i, align 4
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %evclk9.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 5
  %16 = ptrtoint ptr %evclk9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %evclk9.i, align 4
  %17 = load i32, ptr %vce_level.i, align 4
  %ecclk.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 %17, i32 1
  %18 = ptrtoint ptr %ecclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ecclk.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %evclk18.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 5
  %20 = ptrtoint ptr %evclk18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %evclk18.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %19, %if.then.i ]
  %21 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %21, align 4
  %mclk20.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 1
  %23 = ptrtoint ptr %mclk20.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mclk20.i, align 4
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 66
  %25 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %caps_stable_p_state.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21.not.i = icmp eq i8 %26, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end37.i_crit_edge, label %if.then22.i

if.end.i.if.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then22.i:                                      ; preds = %if.end.i
  %27 = ptrtoint ptr %max_clock_voltage_on_ac.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_clock_voltage_on_ac.i, align 4
  %mul.i = mul i32 %28, 75
  %div.i = udiv i32 %mul.i, 100
  %29 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dyn_state.i, align 4
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then22.i
  %i.0.in.i = phi i32 [ %30, %if.then22.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.if.end37.i_crit_edge

for.cond.i.if.end37.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

for.body.i:                                       ; preds = %for.cond.i
  %31 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %entries.i, align 4
  %arrayidx24.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %32, i32 %i.0.i
  %33 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx24.i, align 4
  %cmp25.not.i = icmp ult i32 %div.i, %34
  br i1 %cmp25.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp31.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp31.not.i, label %for.end.i.if.end37.i_crit_edge, label %if.then32.i

for.end.i.if.end37.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i

if.then32.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then32.i, %for.end.i.if.end37.i_crit_edge, %for.cond.i.if.end37.i_crit_edge, %if.end.i.if.end37.i_crit_edge
  %sclk.0.i = phi i32 [ 10000, %if.end.i.if.end37.i_crit_edge ], [ %36, %if.then32.i ], [ %34, %for.end.i.if.end37.i_crit_edge ], [ %div.i, %for.cond.i.if.end37.i_crit_edge ]
  %stable_p_state_sclk.2.i = phi i32 [ 0, %if.end.i.if.end37.i_crit_edge ], [ %36, %if.then32.i ], [ %34, %for.end.i.if.end37.i_crit_edge ], [ %div.i, %for.cond.i.if.end37.i_crit_edge ]
  br i1 %tobool.not.i, label %if.end37.i.if.end60.i_crit_edge, label %if.then40.i

if.end37.i.if.end60.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #14
  %vce_level46.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 7
  %37 = ptrtoint ptr %vce_level46.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %vce_level46.i, align 4
  %sclk48.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 %38, i32 2
  %39 = ptrtoint ptr %sclk48.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sclk48.i, align 4
  %41 = tail call i32 @llvm.umax.i32(i32 %sclk.0.i, i32 %40) #12
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then40.i, %if.end37.i.if.end60.i_crit_edge
  %sclk.1.i = phi i32 [ %sclk.0.i, %if.end37.i.if.end60.i_crit_edge ], [ %41, %if.then40.i ]
  %need_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 2
  %42 = ptrtoint ptr %need_dfs_bypass.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %need_dfs_bypass.i, align 4
  %num_levels.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 1
  %43 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp627.not.i = icmp eq i32 %44, 0
  br i1 %cmp627.not.i, label %if.end60.i.for.end73.i_crit_edge, label %if.end60.i.for.body63.i_crit_edge

if.end60.i.for.body63.i_crit_edge:                ; preds = %if.end60.i
  br label %for.body63.i

if.end60.i.for.end73.i_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73.i

for.body63.i:                                     ; preds = %for.inc72.i.for.body63.i_crit_edge, %if.end60.i.for.body63.i_crit_edge
  %i.18.i = phi i32 [ %inc.i, %for.inc72.i.for.body63.i_crit_edge ], [ 0, %if.end60.i.for.body63.i_crit_edge ]
  %arrayidx64.i = getelementptr [5 x %struct.kv_pl], ptr %requested_ps.i, i32 0, i32 %i.18.i
  %45 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx64.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %sclk.1.i)
  %cmp66.i = icmp ult i32 %46, %sclk.1.i
  br i1 %cmp66.i, label %if.then67.i, label %for.body63.i.for.inc72.i_crit_edge

for.body63.i.for.inc72.i_crit_edge:               ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc72.i

if.then67.i:                                      ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sclk.1.i, ptr %arrayidx64.i, align 4
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %if.then67.i, %for.body63.i.for.inc72.i_crit_edge
  %inc.i = add nuw i32 %i.18.i, 1
  %48 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_levels.i, align 4
  %cmp62.i = icmp ult i32 %inc.i, %49
  br i1 %cmp62.i, label %for.inc72.i.for.body63.i_crit_edge, label %for.inc72.i.for.end73.i_crit_edge

for.inc72.i.for.end73.i_crit_edge:                ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73.i

for.inc72.i.for.body63.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63.i

for.end73.i:                                      ; preds = %for.inc72.i.for.end73.i_crit_edge, %if.end60.i.for.end73.i_crit_edge
  %50 = ptrtoint ptr %dyn_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dyn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool76.not.i = icmp eq i32 %51, 0
  %52 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp10912.not.i = icmp eq i32 %53, 0
  br i1 %tobool76.not.i, label %if.else105.i, label %for.cond78.preheader.i

for.cond78.preheader.i:                           ; preds = %for.end73.i
  br i1 %cmp10912.not.i, label %for.cond78.preheader.i.if.end137.i_crit_edge, label %for.body81.lr.ph.i

for.cond78.preheader.i.if.end137.i_crit_edge:     ; preds = %for.cond78.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137.i

for.body81.lr.ph.i:                               ; preds = %for.cond78.preheader.i
  %high_voltage_t.i = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 10
  %entries95.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  br label %for.body81.i

for.body81.i:                                     ; preds = %for.inc102.i.for.body81.i_crit_edge, %for.body81.lr.ph.i
  %i.210.i = phi i32 [ 0, %for.body81.lr.ph.i ], [ %inc103.i, %for.inc102.i.for.body81.i_crit_edge ]
  %54 = ptrtoint ptr %high_voltage_t.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %high_voltage_t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool82.not.i = icmp eq i16 %55, 0
  br i1 %tobool82.not.i, label %for.body81.i.for.inc102.i_crit_edge, label %land.lhs.true83.i

for.body81.i.for.inc102.i_crit_edge:              ; preds = %for.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc102.i

land.lhs.true83.i:                                ; preds = %for.body81.i
  %vddc_index.i = getelementptr [5 x %struct.kv_pl], ptr %requested_ps.i, i32 0, i32 %i.210.i, i32 1
  %56 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %vddc_index.i, align 4
  %conv88.i = zext i8 %57 to i16
  %mul.neg.i.i = mul nsw i16 %conv88.i, -25
  %sub.i.i = add nsw i16 %mul.neg.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %55, i16 %sub.i.i)
  %cmp91.i = icmp ult i16 %55, %sub.i.i
  br i1 %cmp91.i, label %if.then93.i, label %land.lhs.true83.i.for.inc102.i_crit_edge

land.lhs.true83.i.for.inc102.i_crit_edge:         ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc102.i

if.then93.i:                                      ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx87.i = getelementptr [5 x %struct.kv_pl], ptr %requested_ps.i, i32 0, i32 %i.210.i
  call fastcc void @kv_get_high_voltage_limit(ptr noundef %rdev, ptr noundef nonnull %limit.i) #12
  %58 = ptrtoint ptr %entries95.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %entries95.i, align 4
  %60 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %limit.i, align 4
  %arrayidx96.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %59, i32 %61
  %62 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx96.i, align 4
  %64 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx87.i, align 4
  br label %for.inc102.i

for.inc102.i:                                     ; preds = %if.then93.i, %land.lhs.true83.i.for.inc102.i_crit_edge, %for.body81.i.for.inc102.i_crit_edge
  %inc103.i = add nuw i32 %i.210.i, 1
  %65 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_levels.i, align 4
  %cmp80.i = icmp ult i32 %inc103.i, %66
  br i1 %cmp80.i, label %for.inc102.i.for.body81.i_crit_edge, label %for.inc102.i.if.end137.i_crit_edge

for.inc102.i.if.end137.i_crit_edge:               ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137.i

for.inc102.i.for.body81.i_crit_edge:              ; preds = %for.inc102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body81.i

if.else105.i:                                     ; preds = %for.end73.i
  br i1 %cmp10912.not.i, label %if.else105.i.if.end137.i_crit_edge, label %for.body111.lr.ph.i

if.else105.i.if.end137.i_crit_edge:               ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137.i

for.body111.lr.ph.i:                              ; preds = %if.else105.i
  %high_voltage_t112.i = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 10
  br label %for.body111.i

for.body111.i:                                    ; preds = %for.inc134.i.for.body111.i_crit_edge, %for.body111.lr.ph.i
  %i.313.i = phi i32 [ 0, %for.body111.lr.ph.i ], [ %inc135.i, %for.inc134.i.for.body111.i_crit_edge ]
  %67 = ptrtoint ptr %high_voltage_t112.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %high_voltage_t112.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool114.not.i = icmp eq i16 %68, 0
  br i1 %tobool114.not.i, label %for.body111.i.for.inc134.i_crit_edge, label %land.lhs.true115.i

for.body111.i.for.inc134.i_crit_edge:             ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc134.i

land.lhs.true115.i:                               ; preds = %for.body111.i
  %vddc_index120.i = getelementptr [5 x %struct.kv_pl], ptr %requested_ps.i, i32 0, i32 %i.313.i, i32 1
  %69 = ptrtoint ptr %vddc_index120.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vddc_index120.i, align 4
  %conv121.i = zext i8 %70 to i16
  %mul.neg.i1.i = mul nsw i16 %conv121.i, -25
  %sub.i2.i = add nsw i16 %mul.neg.i1.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %68, i16 %sub.i2.i)
  %cmp124.i = icmp ult i16 %68, %sub.i2.i
  br i1 %cmp124.i, label %if.then126.i, label %land.lhs.true115.i.for.inc134.i_crit_edge

land.lhs.true115.i.for.inc134.i_crit_edge:        ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc134.i

if.then126.i:                                     ; preds = %land.lhs.true115.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx119.i = getelementptr [5 x %struct.kv_pl], ptr %requested_ps.i, i32 0, i32 %i.313.i
  call fastcc void @kv_get_high_voltage_limit(ptr noundef %rdev, ptr noundef nonnull %limit.i) #12
  %71 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %limit.i, align 4
  %arrayidx129.i = getelementptr %struct.kv_power_info, ptr %8, i32 0, i32 2, i32 9, i32 1, i32 %72
  %73 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx129.i, align 4
  %75 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx119.i, align 4
  br label %for.inc134.i

for.inc134.i:                                     ; preds = %if.then126.i, %land.lhs.true115.i.for.inc134.i_crit_edge, %for.body111.i.for.inc134.i_crit_edge
  %inc135.i = add nuw i32 %i.313.i, 1
  %76 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_levels.i, align 4
  %cmp109.i = icmp ult i32 %inc135.i, %77
  br i1 %cmp109.i, label %for.inc134.i.for.body111.i_crit_edge, label %for.inc134.i.if.end137.i_crit_edge

for.inc134.i.if.end137.i_crit_edge:               ; preds = %for.inc134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end137.i

for.inc134.i.for.body111.i_crit_edge:             ; preds = %for.inc134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body111.i

if.end137.i:                                      ; preds = %for.inc134.i.if.end137.i_crit_edge, %if.else105.i.if.end137.i_crit_edge, %for.inc102.i.if.end137.i_crit_edge, %for.cond78.preheader.i.if.end137.i_crit_edge
  %78 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %caps_stable_p_state.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool139.not.i = icmp eq i8 %79, 0
  br i1 %tobool139.not.i, label %if.end137.i.if.end152.i_crit_edge, label %for.cond141.preheader.i

if.end137.i.if.end152.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.cond141.preheader.i:                          ; preds = %if.end137.i
  %80 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp14315.not.i = icmp eq i32 %81, 0
  br i1 %cmp14315.not.i, label %for.cond141.preheader.i.if.end152.i_crit_edge, label %for.cond141.preheader.i.for.body145.i_crit_edge

for.cond141.preheader.i.for.body145.i_crit_edge:  ; preds = %for.cond141.preheader.i
  br label %for.body145.i

for.cond141.preheader.i.if.end152.i_crit_edge:    ; preds = %for.cond141.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body145.i:                                    ; preds = %for.body145.i.for.body145.i_crit_edge, %for.cond141.preheader.i.for.body145.i_crit_edge
  %i.416.i = phi i32 [ %inc150.i, %for.body145.i.for.body145.i_crit_edge ], [ 0, %for.cond141.preheader.i.for.body145.i_crit_edge ]
  %arrayidx147.i = getelementptr [5 x %struct.kv_pl], ptr %requested_ps.i, i32 0, i32 %i.416.i
  %82 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %stable_p_state_sclk.2.i, ptr %arrayidx147.i, align 4
  %inc150.i = add nuw i32 %i.416.i, 1
  %83 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_levels.i, align 4
  %cmp143.i = icmp ult i32 %inc150.i, %84
  br i1 %cmp143.i, label %for.body145.i.for.body145.i_crit_edge, label %for.body145.i.if.end152.i_crit_edge

for.body145.i.if.end152.i_crit_edge:              ; preds = %for.body145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body145.i.for.body145.i_crit_edge:            ; preds = %for.body145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body145.i

if.end152.i:                                      ; preds = %for.body145.i.if.end152.i_crit_edge, %for.cond141.preheader.i.if.end152.i_crit_edge, %if.end137.i.if.end152.i_crit_edge
  %dclk.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 4
  %85 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool153.not.i = icmp eq i32 %86, 0
  br i1 %tobool153.not.i, label %lor.lhs.false.i, label %if.end152.i.lor.end.i_crit_edge

if.end152.i.lor.end.i_crit_edge:                  ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.lhs.false.i:                                  ; preds = %if.end152.i
  %vclk.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 3
  %87 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool154.not.i = icmp eq i32 %88, 0
  br i1 %tobool154.not.i, label %lor.lhs.false155.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.lhs.false155.i:                               ; preds = %lor.lhs.false.i
  %evclk156.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 5
  %89 = ptrtoint ptr %evclk156.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %evclk156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool157.not.i = icmp eq i32 %90, 0
  br i1 %tobool157.not.i, label %lor.rhs.i, label %lor.lhs.false155.i.lor.end.i_crit_edge

lor.lhs.false155.i.lor.end.i_crit_edge:           ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool159.i = icmp ne i32 %92, 0
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %lor.lhs.false155.i.lor.end.i_crit_edge, %lor.lhs.false.i.lor.end.i_crit_edge, %if.end152.i.lor.end.i_crit_edge
  %93 = phi i1 [ true, %lor.lhs.false155.i.lor.end.i_crit_edge ], [ true, %lor.lhs.false.i.lor.end.i_crit_edge ], [ true, %if.end152.i.lor.end.i_crit_edge ], [ %tobool159.i, %lor.rhs.i ]
  %video_start.i = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 6
  %frombool.i = zext i1 %93 to i8
  %94 = ptrtoint ptr %video_start.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool.i, ptr %video_start.i, align 2
  %class.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 1
  %95 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %class.i, align 4
  %and.i = and i32 %96, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp160.i = icmp eq i32 %and.i, 1
  %spec.select.i = zext i1 %cmp160.i to i8
  %97 = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 7
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %spec.select.i, ptr %97, align 1
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %99 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %family.i, align 4
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %100, label %if.else173.i [
    i32 59, label %lor.end.i.if.then172.i_crit_edge
    i32 61, label %lor.end.i.if.then172.i_crit_edge26
  ]

lor.end.i.if.then172.i_crit_edge26:               ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then172.i

lor.end.i.if.then172.i_crit_edge:                 ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then172.i

if.then172.i:                                     ; preds = %lor.end.i.if.then172.i_crit_edge, %lor.end.i.if.then172.i_crit_edge26
  %dpm0_pg_nb_ps_lo.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 3
  %102 = ptrtoint ptr %dpm0_pg_nb_ps_lo.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %dpm0_pg_nb_ps_lo.i, align 1
  %dpm0_pg_nb_ps_hi.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 4
  %103 = ptrtoint ptr %dpm0_pg_nb_ps_hi.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %dpm0_pg_nb_ps_hi.i, align 2
  %dpmx_nb_ps_lo.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 5
  %104 = ptrtoint ptr %dpmx_nb_ps_lo.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %dpmx_nb_ps_lo.i, align 1
  %dpmx_nb_ps_hi.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 6
  %105 = ptrtoint ptr %dpmx_nb_ps_hi.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %dpmx_nb_ps_hi.i, align 4
  br label %kv_apply_state_adjust_rules.exit

if.else173.i:                                     ; preds = %lor.end.i
  %dpm0_pg_nb_ps_lo174.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 3
  %106 = ptrtoint ptr %dpm0_pg_nb_ps_lo174.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %dpm0_pg_nb_ps_lo174.i, align 1
  %dpm0_pg_nb_ps_hi175.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 4
  %107 = ptrtoint ptr %dpm0_pg_nb_ps_hi175.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %dpm0_pg_nb_ps_hi175.i, align 2
  %dpmx_nb_ps_lo176.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 5
  %108 = ptrtoint ptr %dpmx_nb_ps_lo176.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 3, ptr %dpmx_nb_ps_lo176.i, align 1
  %dpmx_nb_ps_hi177.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 72, i32 6
  %109 = ptrtoint ptr %dpmx_nb_ps_hi177.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %dpmx_nb_ps_hi177.i, align 4
  %nb_dpm_enable.i = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 2, i32 3
  %110 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nb_dpm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool179.not.i = icmp eq i32 %111, 0
  br i1 %tobool179.not.i, label %if.else173.i.kv_apply_state_adjust_rules.exit_crit_edge, label %if.then180.i

if.else173.i.kv_apply_state_adjust_rules.exit_crit_edge: ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_apply_state_adjust_rules.exit

if.then180.i:                                     ; preds = %if.else173.i
  %arrayidx182.i = getelementptr %struct.kv_power_info, ptr %8, i32 0, i32 2, i32 4, i32 3
  %112 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx182.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %113)
  %cmp183.not.i = icmp ult i32 %24, %113
  br i1 %cmp183.not.i, label %lor.lhs.false185.i, label %if.then180.i.lor.end197.i_crit_edge

if.then180.i.lor.end197.i_crit_edge:              ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end197.i

lor.lhs.false185.i:                               ; preds = %if.then180.i
  %114 = ptrtoint ptr %video_start.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %video_start.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool187.not.i = icmp eq i8 %115, 0
  br i1 %tobool187.not.i, label %lor.lhs.false189.i, label %lor.lhs.false185.i.lor.end197.i_crit_edge

lor.lhs.false185.i.lor.end197.i_crit_edge:        ; preds = %lor.lhs.false185.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end197.i

lor.lhs.false189.i:                               ; preds = %lor.lhs.false185.i
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %116 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %new_active_crtc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp192.i = icmp sgt i32 %117, 2
  br i1 %cmp192.i, label %lor.lhs.false189.i.lor.end197.i_crit_edge, label %lor.rhs194.i

lor.lhs.false189.i.lor.end197.i_crit_edge:        ; preds = %lor.lhs.false189.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end197.i

lor.rhs194.i:                                     ; preds = %lor.lhs.false189.i
  call void @__sanitizer_cov_trace_pc() #14
  %disable_nb_ps3_in_battery.i = getelementptr inbounds %struct.kv_power_info, ptr %8, i32 0, i32 5
  %118 = ptrtoint ptr %disable_nb_ps3_in_battery.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %disable_nb_ps3_in_battery.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool195.not.i = icmp eq i8 %119, 0
  %phi.cast.i = select i1 %tobool195.not.i, i8 3, i8 2
  br label %lor.end197.i

lor.end197.i:                                     ; preds = %lor.rhs194.i, %lor.lhs.false189.i.lor.end197.i_crit_edge, %lor.lhs.false185.i.lor.end197.i_crit_edge, %if.then180.i.lor.end197.i_crit_edge
  %120 = phi i8 [ 2, %lor.lhs.false189.i.lor.end197.i_crit_edge ], [ 2, %lor.lhs.false185.i.lor.end197.i_crit_edge ], [ 2, %if.then180.i.lor.end197.i_crit_edge ], [ %phi.cast.i, %lor.rhs194.i ]
  %121 = ptrtoint ptr %dpm0_pg_nb_ps_lo174.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %dpm0_pg_nb_ps_lo174.i, align 1
  %122 = ptrtoint ptr %dpm0_pg_nb_ps_hi175.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 2, ptr %dpm0_pg_nb_ps_hi175.i, align 2
  %123 = ptrtoint ptr %dpmx_nb_ps_lo176.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %120, ptr %dpmx_nb_ps_lo176.i, align 1
  %124 = ptrtoint ptr %dpmx_nb_ps_hi177.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %dpmx_nb_ps_hi177.i, align 4
  br label %kv_apply_state_adjust_rules.exit

kv_apply_state_adjust_rules.exit:                 ; preds = %lor.end197.i, %if.else173.i.kv_apply_state_adjust_rules.exit_crit_edge, %if.then172.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %low_sclk_interrupt_t.i271 = alloca i32, align 4
  %clk_bypass_cntl.i174 = alloca i8, align 1
  %low_sclk_interrupt_t.i = alloca i32, align 4
  %clk_bypass_cntl.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71
  %current_rps = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 69
  %bapm_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %bapm_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bapm_enable, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %ac_power = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 31
  %4 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ac_power, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1 = icmp ne i8 %5, 0
  %call2 = tail call i32 @kv_smc_bapm_enable(ptr noundef %rdev, i1 noundef zeroext %tobool1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %family, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %if.else [
    i32 59, label %if.end5.if.then8_crit_edge
    i32 61, label %if.end5.if.then8_crit_edge297
  ]

if.end5.if.then8_crit_edge297:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %if.end5.if.then8_crit_edge, %if.end5.if.then8_crit_edge297
  %enable_dpm = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 50
  %9 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_dpm, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not = icmp eq i8 %10, 0
  br i1 %tobool9.not, label %if.then8.cleanup_crit_edge, label %if.then10

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  tail call fastcc void @kv_set_valid_clock_range(ptr noundef %rdev, ptr noundef %requested_rps)
  %ps_priv.i.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %11 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps_priv.i.i, align 4
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clk_bypass_cntl.i) #12
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 67
  %15 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %caps_enable_dfs_bypass.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.then10.kv_update_dfs_bypass_settings.exit_crit_edge, label %if.then.i

if.then10.kv_update_dfs_bypass_settings.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_update_dfs_bypass_settings.exit

if.then.i:                                        ; preds = %if.then10
  %need_dfs_bypass.i = getelementptr inbounds %struct.kv_ps, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %need_dfs_bypass.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_dfs_bypass.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool2.not.i = icmp eq i8 %18, 0
  br i1 %tobool2.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %graphics_boot_level.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 36
  %19 = ptrtoint ptr %graphics_boot_level.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %graphics_boot_level.i, align 4
  %idxprom.i = zext i8 %20 to i32
  %ClkBypassCntl.i = getelementptr %struct.kv_power_info, ptr %14, i32 0, i32 22, i32 %idxprom.i, i32 16
  %21 = ptrtoint ptr %ClkBypassCntl.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ClkBypassCntl.i, align 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ %22, %cond.true.i ], [ 0, %if.then.i.cond.end.i_crit_edge ]
  %23 = ptrtoint ptr %clk_bypass_cntl.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond.i, ptr %clk_bypass_cntl.i, align 1
  %dpm_table_start.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 14
  %24 = ptrtoint ptr %dpm_table_start.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dpm_table_start.i, align 4
  %graphics_boot_level4.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 36
  %26 = ptrtoint ptr %graphics_boot_level4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %graphics_boot_level4.i, align 4
  %conv5.i = zext i8 %27 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, 28
  %add6.i = add i32 %25, 107
  %add7.i = add i32 %add6.i, %mul.i
  %sram_end.i = getelementptr inbounds %struct.kv_power_info, ptr %14, i32 0, i32 13
  %28 = ptrtoint ptr %sram_end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sram_end.i, align 4
  %call8.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add7.i, ptr noundef nonnull %clk_bypass_cntl.i, i32 noundef 1, i32 noundef %29) #12
  br label %kv_update_dfs_bypass_settings.exit

kv_update_dfs_bypass_settings.exit:               ; preds = %cond.end.i, %if.then10.kv_update_dfs_bypass_settings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clk_bypass_cntl.i) #12
  %call12 = call fastcc i32 @kv_calculate_ds_divider(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %kv_update_dfs_bypass_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end15:                                         ; preds = %kv_update_dfs_bypass_settings.exit
  call fastcc void @kv_calculate_nbps_level_settings(ptr noundef %rdev)
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i = getelementptr inbounds %struct.kv_power_info, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %lowest_valid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lowest_valid.i, align 4
  %highest_valid.i = getelementptr inbounds %struct.kv_power_info, ptr %31, i32 0, i32 9
  %34 = ptrtoint ptr %highest_valid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %highest_valid.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp.i = icmp ugt i32 %33, %35
  br i1 %cmp.i, label %if.end15.kv_calculate_dpm_settings.exit_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.kv_calculate_dpm_settings.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dpm_settings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %36 = phi i32 [ %39, %for.body.i.for.body.i_crit_edge ], [ %35, %if.end15.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %33, %if.end15.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i, i32 %36)
  %cmp5.i = icmp eq i32 %i.02.i, %36
  %conv.i = zext i1 %cmp5.i to i8
  %DisplayWatermark.i = getelementptr %struct.kv_power_info, ptr %31, i32 0, i32 22, i32 %i.02.i, i32 9
  %37 = ptrtoint ptr %DisplayWatermark.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %DisplayWatermark.i, align 4
  %inc.i = add i32 %i.02.i, 1
  %38 = ptrtoint ptr %highest_valid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %highest_valid.i, align 4
  %cmp3.not.i = icmp ugt i32 %inc.i, %39
  br i1 %cmp3.not.i, label %for.body.i.kv_calculate_dpm_settings.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.kv_calculate_dpm_settings.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dpm_settings.exit

kv_calculate_dpm_settings.exit:                   ; preds = %for.body.i.kv_calculate_dpm_settings.exit_crit_edge, %if.end15.kv_calculate_dpm_settings.exit_crit_edge
  %call.i = call fastcc i32 @kv_force_dpm_lowest(ptr noundef %rdev) #12
  %40 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i118 = getelementptr inbounds %struct.kv_power_info, ptr %41, i32 0, i32 8
  %highest_valid.i119 = getelementptr inbounds %struct.kv_power_info, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lowest_valid.i118, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %43, label %kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge [
    i32 0, label %for.inc.i.thread
    i32 1, label %kv_calculate_dpm_settings.exit.land.lhs.true.1.i_crit_edge
  ]

kv_calculate_dpm_settings.exit.land.lhs.true.1.i_crit_edge: ; preds = %kv_calculate_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.1.i

kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge: ; preds = %kv_calculate_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

for.inc.i.thread:                                 ; preds = %kv_calculate_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  %EnabledForActivity.i.i = getelementptr %struct.kv_power_info, ptr %41, i32 0, i32 22, i32 0, i32 10
  %45 = ptrtoint ptr %EnabledForActivity.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %EnabledForActivity.i.i, align 1
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i.thread, %kv_calculate_dpm_settings.exit.land.lhs.true.1.i_crit_edge
  %46 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp2.not.1.i = icmp eq i32 %47, 0
  br i1 %cmp2.not.1.i, label %land.lhs.true.1.i.for.inc.1.ithread-pre-split_crit_edge, label %if.then.1.i

land.lhs.true.1.i.for.inc.1.ithread-pre-split_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.ithread-pre-split

if.then.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.1.i = getelementptr %struct.kv_power_info, ptr %49, i32 0, i32 22, i32 1, i32 10
  %50 = ptrtoint ptr %EnabledForActivity.i.1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %EnabledForActivity.i.1.i, align 1
  br label %for.inc.1.ithread-pre-split

for.inc.1.ithread-pre-split:                      ; preds = %if.then.1.i, %land.lhs.true.1.i.for.inc.1.ithread-pre-split_crit_edge
  %51 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load i32, ptr %lowest_valid.i118, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.ithread-pre-split, %kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge
  %52 = phi i32 [ %.pr, %for.inc.1.ithread-pre-split ], [ %43, %kv_calculate_dpm_settings.exit.for.inc.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp1.not.2.i = icmp ugt i32 %52, 2
  br i1 %cmp1.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %53 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp2.not.2.i = icmp ult i32 %54, 2
  br i1 %cmp2.not.2.i, label %land.lhs.true.2.i.kv_enable_new_levels.exit_crit_edge, label %if.then.2.i

land.lhs.true.2.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_new_levels.exit

if.then.2.i:                                      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.2.i = getelementptr %struct.kv_power_info, ptr %56, i32 0, i32 22, i32 2, i32 10
  %57 = ptrtoint ptr %EnabledForActivity.i.2.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %EnabledForActivity.i.2.i, align 1
  %58 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr11.i = load i32, ptr %lowest_valid.i118, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %59 = phi i32 [ %.pr11.i, %if.then.2.i ], [ %52, %for.inc.1.i.for.inc.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp1.not.3.i = icmp ugt i32 %59, 3
  br i1 %cmp1.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %60 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pr13.i = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr13.i)
  %cmp2.not.3.i = icmp ult i32 %.pr13.i, 3
  br i1 %cmp2.not.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge, label %if.then.3.i

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.3.i = getelementptr %struct.kv_power_info, ptr %62, i32 0, i32 22, i32 3, i32 10
  %63 = ptrtoint ptr %EnabledForActivity.i.3.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %EnabledForActivity.i.3.i, align 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %64 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr23.i = load i32, ptr %lowest_valid.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr23.i)
  %cmp1.not.4.i = icmp ugt i32 %.pr23.i, 4
  br i1 %cmp1.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %65 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr25.i = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr25.i)
  %cmp2.not.4.i = icmp ult i32 %.pr25.i, 4
  br i1 %cmp2.not.4.i, label %land.lhs.true.4.i.kv_enable_new_levels.exit_crit_edge, label %if.then.4.i

land.lhs.true.4.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_new_levels.exit

if.then.4.i:                                      ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.4.i = getelementptr %struct.kv_power_info, ptr %67, i32 0, i32 22, i32 4, i32 10
  %68 = ptrtoint ptr %EnabledForActivity.i.4.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %EnabledForActivity.i.4.i, align 1
  %69 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr15.i = load i32, ptr %lowest_valid.i118, align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %70 = phi i32 [ %.pr15.i, %if.then.4.i ], [ %.pr23.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %70)
  %cmp1.not.5.i = icmp ugt i32 %70, 5
  br i1 %cmp1.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %71 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr17.i = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr17.i)
  %cmp2.not.5.i = icmp ult i32 %.pr17.i, 5
  br i1 %cmp2.not.5.i, label %land.lhs.true.5.i.for.inc.5.i_crit_edge, label %if.then.5.i

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.5.i = getelementptr %struct.kv_power_info, ptr %73, i32 0, i32 22, i32 5, i32 10
  %74 = ptrtoint ptr %EnabledForActivity.i.5.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %EnabledForActivity.i.5.i, align 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %75 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr27.pr.i = load i32, ptr %lowest_valid.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr27.pr.i)
  %cmp1.not.6.i = icmp ugt i32 %.pr27.pr.i, 6
  br i1 %cmp1.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %76 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr29.pr.i = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.pr29.pr.i)
  %cmp2.not.6.i = icmp ult i32 %.pr29.pr.i, 6
  br i1 %cmp2.not.6.i, label %land.lhs.true.6.i.kv_enable_new_levels.exit_crit_edge, label %if.then.6.i

land.lhs.true.6.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_new_levels.exit

if.then.6.i:                                      ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.6.i = getelementptr %struct.kv_power_info, ptr %78, i32 0, i32 22, i32 6, i32 10
  %79 = ptrtoint ptr %EnabledForActivity.i.6.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %EnabledForActivity.i.6.i, align 1
  %80 = ptrtoint ptr %lowest_valid.i118 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr19.i = load i32, ptr %lowest_valid.i118, align 4
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %81 = phi i32 [ %.pr19.i, %if.then.6.i ], [ %.pr27.pr.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %81)
  %cmp1.not.7.i = icmp ugt i32 %81, 7
  br i1 %cmp1.not.7.i, label %for.inc.6.i.kv_enable_new_levels.exit_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.kv_enable_new_levels.exit_crit_edge:  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_new_levels.exit

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %82 = ptrtoint ptr %highest_valid.i119 to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr21.i = load i32, ptr %highest_valid.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.pr21.i)
  %cmp2.not.7.i = icmp ult i32 %.pr21.i, 7
  br i1 %cmp2.not.7.i, label %land.lhs.true.7.i.kv_enable_new_levels.exit_crit_edge, label %if.then.7.i

land.lhs.true.7.i.kv_enable_new_levels.exit_crit_edge: ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_enable_new_levels.exit

if.then.7.i:                                      ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %priv.i, align 4
  %EnabledForActivity.i.7.i = getelementptr %struct.kv_power_info, ptr %84, i32 0, i32 22, i32 7, i32 10
  %85 = ptrtoint ptr %EnabledForActivity.i.7.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %EnabledForActivity.i.7.i, align 1
  br label %kv_enable_new_levels.exit

kv_enable_new_levels.exit:                        ; preds = %if.then.7.i, %land.lhs.true.7.i.kv_enable_new_levels.exit_crit_edge, %for.inc.6.i.kv_enable_new_levels.exit_crit_edge, %land.lhs.true.6.i.kv_enable_new_levels.exit_crit_edge, %land.lhs.true.4.i.kv_enable_new_levels.exit_crit_edge, %land.lhs.true.2.i.kv_enable_new_levels.exit_crit_edge
  %86 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i122 = getelementptr inbounds %struct.kv_power_info, ptr %87, i32 0, i32 14
  %88 = ptrtoint ptr %dpm_table_start.i122 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dpm_table_start.i122, align 4
  %add.i = add i32 %89, 84
  %graphics_level.i = getelementptr inbounds %struct.kv_power_info, ptr %87, i32 0, i32 22
  %sram_end.i123 = getelementptr inbounds %struct.kv_power_info, ptr %87, i32 0, i32 13
  %90 = ptrtoint ptr %sram_end.i123 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sram_end.i123, align 4
  %call1.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i, ptr noundef %graphics_level.i, i32 noundef 224, i32 noundef %91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i124 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i124, label %if.end.i, label %kv_enable_new_levels.exit.kv_upload_dpm_settings.exit_crit_edge

kv_enable_new_levels.exit.kv_upload_dpm_settings.exit_crit_edge: ; preds = %kv_enable_new_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_upload_dpm_settings.exit

if.end.i:                                         ; preds = %kv_enable_new_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %dpm_table_start.i122 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dpm_table_start.i122, align 4
  %add3.i = add i32 %93, 76
  %graphics_dpm_level_count.i = getelementptr inbounds %struct.kv_power_info, ptr %87, i32 0, i32 16
  %94 = ptrtoint ptr %sram_end.i123 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sram_end.i123, align 4
  %call5.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add3.i, ptr noundef %graphics_dpm_level_count.i, i32 noundef 1, i32 noundef %95) #12
  br label %kv_upload_dpm_settings.exit

kv_upload_dpm_settings.exit:                      ; preds = %if.end.i, %kv_enable_new_levels.exit.kv_upload_dpm_settings.exit_crit_edge
  %96 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ps_priv.i.i, align 4
  %98 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %family, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %99, label %if.end.i128 [
    i32 59, label %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge
    i32 61, label %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge298
  ]

kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge298: ; preds = %kv_upload_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_program_nbps_index_settings.exit

kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge: ; preds = %kv_upload_dpm_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_program_nbps_index_settings.exit

if.end.i128:                                      ; preds = %kv_upload_dpm_settings.exit
  %101 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv.i, align 4
  %nb_dpm_enable.i = getelementptr inbounds %struct.kv_power_info, ptr %102, i32 0, i32 2, i32 3
  %103 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nb_dpm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i127 = icmp eq i32 %104, 0
  br i1 %tobool.not.i127, label %if.end.i128.kv_program_nbps_index_settings.exitthread-pre-split_crit_edge, label %if.then4.i

if.end.i128.kv_program_nbps_index_settings.exitthread-pre-split_crit_edge: ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_program_nbps_index_settings.exitthread-pre-split

if.then4.i:                                       ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i129 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 260584) #12
  %dpm0_pg_nb_ps_lo.i = getelementptr inbounds %struct.kv_ps, ptr %97, i32 0, i32 3
  %105 = ptrtoint ptr %dpm0_pg_nb_ps_lo.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dpm0_pg_nb_ps_lo.i, align 1
  %conv.i130 = zext i8 %106 to i32
  %dpm0_pg_nb_ps_hi.i = getelementptr inbounds %struct.kv_ps, ptr %97, i32 0, i32 4
  %107 = ptrtoint ptr %dpm0_pg_nb_ps_hi.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %dpm0_pg_nb_ps_hi.i, align 2
  %conv6.i = zext i8 %108 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or.i = or i32 %shl7.i, %conv.i130
  %dpmx_nb_ps_lo.i = getelementptr inbounds %struct.kv_ps, ptr %97, i32 0, i32 5
  %109 = ptrtoint ptr %dpmx_nb_ps_lo.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %dpmx_nb_ps_lo.i, align 1
  %conv8.i = zext i8 %110 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 16
  %or10.i = or i32 %or.i, %shl9.i
  %dpmx_nb_ps_hi.i = getelementptr inbounds %struct.kv_ps, ptr %97, i32 0, i32 6
  %111 = ptrtoint ptr %dpmx_nb_ps_hi.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %dpmx_nb_ps_hi.i, align 4
  %conv11.i = zext i8 %112 to i32
  %shl12.i = shl nuw i32 %conv11.i, 24
  %or13.i = or i32 %or10.i, %shl12.i
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 260584, i32 noundef %or13.i) #12
  br label %kv_program_nbps_index_settings.exitthread-pre-split

kv_program_nbps_index_settings.exitthread-pre-split: ; preds = %if.then4.i, %if.end.i128.kv_program_nbps_index_settings.exitthread-pre-split_crit_edge
  %113 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr296 = load i32, ptr %family, align 4
  br label %kv_program_nbps_index_settings.exit

kv_program_nbps_index_settings.exit:              ; preds = %kv_program_nbps_index_settings.exitthread-pre-split, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge298
  %114 = phi i32 [ %.pr296, %kv_program_nbps_index_settings.exitthread-pre-split ], [ %99, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge ], [ %99, %kv_upload_dpm_settings.exit.kv_program_nbps_index_settings.exit_crit_edge298 ]
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %114, label %if.else.i [
    i32 59, label %kv_program_nbps_index_settings.exit.if.then.i133_crit_edge
    i32 61, label %kv_program_nbps_index_settings.exit.if.then.i133_crit_edge299
  ]

kv_program_nbps_index_settings.exit.if.then.i133_crit_edge299: ; preds = %kv_program_nbps_index_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i133

kv_program_nbps_index_settings.exit.if.then.i133_crit_edge: ; preds = %kv_program_nbps_index_settings.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i133

if.then.i133:                                     ; preds = %kv_program_nbps_index_settings.exit.if.then.i133_crit_edge, %kv_program_nbps_index_settings.exit.if.then.i133_crit_edge299
  %call.i132 = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 65) #12
  br label %kv_unforce_levels.exit

if.else.i:                                        ; preds = %kv_program_nbps_index_settings.exit
  %116 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %lowest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %lowest_valid.i.i, align 4
  %highest_valid.i.i = getelementptr inbounds %struct.kv_power_info, ptr %117, i32 0, i32 9
  %120 = ptrtoint ptr %highest_valid.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %highest_valid.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp.not7.i.i = icmp ugt i32 %119, %121
  br i1 %cmp.not7.i.i, label %if.else.i.kv_set_enabled_levels.exit.i_crit_edge, label %if.else.i.for.body.i.i_crit_edge

if.else.i.for.body.i.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body.i.i

if.else.i.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.else.i.for.body.i.i_crit_edge
  %new_mask.09.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.else.i.for.body.i.i_crit_edge ]
  %i.08.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %119, %if.else.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.08.i.i
  %or.i.i = or i32 %shl.i.i, %new_mask.09.i.i
  %inc.i.i = add i32 %i.08.i.i, 1
  %cmp.not.i.i = icmp ugt i32 %inc.i.i, %121
  br i1 %cmp.not.i.i, label %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit.i

kv_set_enabled_levels.exit.i:                     ; preds = %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge, %if.else.i.kv_set_enabled_levels.exit.i_crit_edge
  %new_mask.0.lcssa.i.i = phi i32 [ 0, %if.else.i.kv_set_enabled_levels.exit.i_crit_edge ], [ %or.i.i, %for.body.i.i.kv_set_enabled_levels.exit.i_crit_edge ]
  %call1.i.i = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i.i) #12
  br label %kv_unforce_levels.exit

kv_unforce_levels.exit:                           ; preds = %kv_set_enabled_levels.exit.i, %if.then.i133
  %122 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i136 = getelementptr inbounds %struct.kv_power_info, ptr %123, i32 0, i32 8
  %124 = ptrtoint ptr %lowest_valid.i136 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %lowest_valid.i136, align 4
  %highest_valid.i137 = getelementptr inbounds %struct.kv_power_info, ptr %123, i32 0, i32 9
  %126 = ptrtoint ptr %highest_valid.i137 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %highest_valid.i137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp.not7.i = icmp ugt i32 %125, %127
  br i1 %cmp.not7.i, label %kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge, label %kv_unforce_levels.exit.for.body.i140_crit_edge

kv_unforce_levels.exit.for.body.i140_crit_edge:   ; preds = %kv_unforce_levels.exit
  br label %for.body.i140

kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge: ; preds = %kv_unforce_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit

for.body.i140:                                    ; preds = %for.body.i140.for.body.i140_crit_edge, %kv_unforce_levels.exit.for.body.i140_crit_edge
  %new_mask.09.i = phi i32 [ %or.i138, %for.body.i140.for.body.i140_crit_edge ], [ 0, %kv_unforce_levels.exit.for.body.i140_crit_edge ]
  %i.08.i = phi i32 [ %inc.i139, %for.body.i140.for.body.i140_crit_edge ], [ %125, %kv_unforce_levels.exit.for.body.i140_crit_edge ]
  %shl.i = shl nuw i32 1, %i.08.i
  %or.i138 = or i32 %shl.i, %new_mask.09.i
  %inc.i139 = add i32 %i.08.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i139, %127
  br i1 %cmp.not.i, label %for.body.i140.kv_set_enabled_levels.exit_crit_edge, label %for.body.i140.for.body.i140_crit_edge

for.body.i140.for.body.i140_crit_edge:            ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i140

for.body.i140.kv_set_enabled_levels.exit_crit_edge: ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit

kv_set_enabled_levels.exit:                       ; preds = %for.body.i140.kv_set_enabled_levels.exit_crit_edge, %kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge
  %new_mask.0.lcssa.i = phi i32 [ 0, %kv_unforce_levels.exit.kv_set_enabled_levels.exit_crit_edge ], [ %or.i138, %for.body.i140.kv_set_enabled_levels.exit_crit_edge ]
  %call1.i141 = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i) #12
  %call.i142 = call fastcc i32 @kv_force_dpm_lowest(ptr noundef %rdev) #12
  %128 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %family, align 4
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %129, label %if.else.i150 [
    i32 59, label %kv_set_enabled_levels.exit.if.then.i145_crit_edge
    i32 61, label %kv_set_enabled_levels.exit.if.then.i145_crit_edge300
  ]

kv_set_enabled_levels.exit.if.then.i145_crit_edge300: ; preds = %kv_set_enabled_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i145

kv_set_enabled_levels.exit.if.then.i145_crit_edge: ; preds = %kv_set_enabled_levels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i145

if.then.i145:                                     ; preds = %kv_set_enabled_levels.exit.if.then.i145_crit_edge, %kv_set_enabled_levels.exit.if.then.i145_crit_edge300
  %call.i144 = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 65) #12
  br label %kv_unforce_levels.exit162

if.else.i150:                                     ; preds = %kv_set_enabled_levels.exit
  %131 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i.i147 = getelementptr inbounds %struct.kv_power_info, ptr %132, i32 0, i32 8
  %133 = ptrtoint ptr %lowest_valid.i.i147 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %lowest_valid.i.i147, align 4
  %highest_valid.i.i148 = getelementptr inbounds %struct.kv_power_info, ptr %132, i32 0, i32 9
  %135 = ptrtoint ptr %highest_valid.i.i148 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %highest_valid.i.i148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp.not7.i.i149 = icmp ugt i32 %134, %136
  br i1 %cmp.not7.i.i149, label %if.else.i150.kv_set_enabled_levels.exit.i160_crit_edge, label %if.else.i150.for.body.i.i157_crit_edge

if.else.i150.for.body.i.i157_crit_edge:           ; preds = %if.else.i150
  br label %for.body.i.i157

if.else.i150.kv_set_enabled_levels.exit.i160_crit_edge: ; preds = %if.else.i150
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit.i160

for.body.i.i157:                                  ; preds = %for.body.i.i157.for.body.i.i157_crit_edge, %if.else.i150.for.body.i.i157_crit_edge
  %new_mask.09.i.i151 = phi i32 [ %or.i.i154, %for.body.i.i157.for.body.i.i157_crit_edge ], [ 0, %if.else.i150.for.body.i.i157_crit_edge ]
  %i.08.i.i152 = phi i32 [ %inc.i.i155, %for.body.i.i157.for.body.i.i157_crit_edge ], [ %134, %if.else.i150.for.body.i.i157_crit_edge ]
  %shl.i.i153 = shl nuw i32 1, %i.08.i.i152
  %or.i.i154 = or i32 %shl.i.i153, %new_mask.09.i.i151
  %inc.i.i155 = add i32 %i.08.i.i152, 1
  %cmp.not.i.i156 = icmp ugt i32 %inc.i.i155, %136
  br i1 %cmp.not.i.i156, label %for.body.i.i157.kv_set_enabled_levels.exit.i160_crit_edge, label %for.body.i.i157.for.body.i.i157_crit_edge

for.body.i.i157.for.body.i.i157_crit_edge:        ; preds = %for.body.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i157

for.body.i.i157.kv_set_enabled_levels.exit.i160_crit_edge: ; preds = %for.body.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit.i160

kv_set_enabled_levels.exit.i160:                  ; preds = %for.body.i.i157.kv_set_enabled_levels.exit.i160_crit_edge, %if.else.i150.kv_set_enabled_levels.exit.i160_crit_edge
  %new_mask.0.lcssa.i.i158 = phi i32 [ 0, %if.else.i150.kv_set_enabled_levels.exit.i160_crit_edge ], [ %or.i.i154, %for.body.i.i157.kv_set_enabled_levels.exit.i160_crit_edge ]
  %call1.i.i159 = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i.i158) #12
  br label %kv_unforce_levels.exit162

kv_unforce_levels.exit162:                        ; preds = %kv_set_enabled_levels.exit.i160, %if.then.i145
  %call24 = call fastcc i32 @kv_update_vce_dpm(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %kv_unforce_levels.exit162
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end27:                                         ; preds = %kv_unforce_levels.exit162
  %137 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i) #12
  %caps_sclk_throttle_low_notification.i = getelementptr inbounds %struct.kv_power_info, ptr %138, i32 0, i32 59
  %139 = ptrtoint ptr %caps_sclk_throttle_low_notification.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %caps_sclk_throttle_low_notification.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i164 = icmp eq i8 %140, 0
  br i1 %tobool.not.i164, label %if.end27.kv_update_sclk_t.exit_crit_edge, label %if.then.i168

if.end27.kv_update_sclk_t.exit_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_update_sclk_t.exit

if.then.i168:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %low_sclk_interrupt_t1.i = getelementptr inbounds %struct.kv_power_info, ptr %138, i32 0, i32 43
  %141 = ptrtoint ptr %low_sclk_interrupt_t1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %low_sclk_interrupt_t1.i, align 4
  %143 = ptrtoint ptr %low_sclk_interrupt_t.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %low_sclk_interrupt_t.i, align 4
  %dpm_table_start.i165 = getelementptr inbounds %struct.kv_power_info, ptr %138, i32 0, i32 14
  %144 = ptrtoint ptr %dpm_table_start.i165 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %dpm_table_start.i165, align 4
  %add.i166 = add i32 %145, 764
  %sram_end.i167 = getelementptr inbounds %struct.kv_power_info, ptr %138, i32 0, i32 13
  %146 = ptrtoint ptr %sram_end.i167 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sram_end.i167, align 4
  %call2.i = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i166, ptr noundef nonnull %low_sclk_interrupt_t.i, i32 noundef 4, i32 noundef %147) #12
  br label %kv_update_sclk_t.exit

kv_update_sclk_t.exit:                            ; preds = %if.then.i168, %if.end27.kv_update_sclk_t.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i) #12
  %148 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %149)
  %cmp30 = icmp eq i32 %149, 61
  br i1 %cmp30, label %if.then31, label %kv_update_sclk_t.exit.cleanup_crit_edge

kv_update_sclk_t.exit.cleanup_crit_edge:          ; preds = %kv_update_sclk_t.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31:                                        ; preds = %kv_update_sclk_t.exit
  %150 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv.i, align 4
  %enable_nb_dpm.i = getelementptr inbounds %struct.kv_power_info, ptr %151, i32 0, i32 52
  %152 = ptrtoint ptr %enable_nb_dpm.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %enable_nb_dpm.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool1.not.i = icmp eq i8 %153, 0
  br i1 %tobool1.not.i, label %if.then31.cleanup_crit_edge, label %land.lhs.true.i

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then31
  %nb_dpm_enabled.i = getelementptr inbounds %struct.kv_power_info, ptr %151, i32 0, i32 48
  %154 = ptrtoint ptr %nb_dpm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %nb_dpm_enabled.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool2.not.i172 = icmp eq i8 %155, 0
  br i1 %tobool2.not.i172, label %if.then3.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  %call4.i = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 320) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i173 = icmp eq i32 %call4.i, 0
  br i1 %cmp.i173, label %if.then5.i, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %nb_dpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %nb_dpm_enabled.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end5
  %enable_dpm35 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 50
  %157 = ptrtoint ptr %enable_dpm35 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %enable_dpm35, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool36.not = icmp eq i8 %158, 0
  br i1 %tobool36.not, label %if.else.cleanup_crit_edge, label %if.then37

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then37:                                        ; preds = %if.else
  tail call fastcc void @kv_set_valid_clock_range(ptr noundef %rdev, ptr noundef %requested_rps)
  %ps_priv.i.i175 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %159 = ptrtoint ptr %ps_priv.i.i175 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ps_priv.i.i175, align 4
  %161 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clk_bypass_cntl.i174) #12
  %caps_enable_dfs_bypass.i177 = getelementptr inbounds %struct.kv_power_info, ptr %162, i32 0, i32 67
  %163 = ptrtoint ptr %caps_enable_dfs_bypass.i177 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %caps_enable_dfs_bypass.i177, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i178 = icmp eq i8 %164, 0
  br i1 %tobool.not.i178, label %if.then37.kv_update_dfs_bypass_settings.exit197_crit_edge, label %if.then.i181

if.then37.kv_update_dfs_bypass_settings.exit197_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_update_dfs_bypass_settings.exit197

if.then.i181:                                     ; preds = %if.then37
  %need_dfs_bypass.i179 = getelementptr inbounds %struct.kv_ps, ptr %160, i32 0, i32 2
  %165 = ptrtoint ptr %need_dfs_bypass.i179 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %need_dfs_bypass.i179, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool2.not.i180 = icmp eq i8 %166, 0
  br i1 %tobool2.not.i180, label %if.then.i181.cond.end.i195_crit_edge, label %cond.true.i185

if.then.i181.cond.end.i195_crit_edge:             ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i195

cond.true.i185:                                   ; preds = %if.then.i181
  call void @__sanitizer_cov_trace_pc() #14
  %graphics_boot_level.i182 = getelementptr inbounds %struct.kv_power_info, ptr %162, i32 0, i32 36
  %167 = ptrtoint ptr %graphics_boot_level.i182 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %graphics_boot_level.i182, align 4
  %idxprom.i183 = zext i8 %168 to i32
  %ClkBypassCntl.i184 = getelementptr %struct.kv_power_info, ptr %162, i32 0, i32 22, i32 %idxprom.i183, i32 16
  %169 = ptrtoint ptr %ClkBypassCntl.i184 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ClkBypassCntl.i184, align 1
  br label %cond.end.i195

cond.end.i195:                                    ; preds = %cond.true.i185, %if.then.i181.cond.end.i195_crit_edge
  %cond.i186 = phi i8 [ %170, %cond.true.i185 ], [ 0, %if.then.i181.cond.end.i195_crit_edge ]
  %171 = ptrtoint ptr %clk_bypass_cntl.i174 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %cond.i186, ptr %clk_bypass_cntl.i174, align 1
  %dpm_table_start.i187 = getelementptr inbounds %struct.kv_power_info, ptr %162, i32 0, i32 14
  %172 = ptrtoint ptr %dpm_table_start.i187 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %dpm_table_start.i187, align 4
  %graphics_boot_level4.i188 = getelementptr inbounds %struct.kv_power_info, ptr %162, i32 0, i32 36
  %174 = ptrtoint ptr %graphics_boot_level4.i188 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %graphics_boot_level4.i188, align 4
  %conv5.i189 = zext i8 %175 to i32
  %mul.i190 = mul nuw nsw i32 %conv5.i189, 28
  %add6.i191 = add i32 %173, 107
  %add7.i192 = add i32 %add6.i191, %mul.i190
  %sram_end.i193 = getelementptr inbounds %struct.kv_power_info, ptr %162, i32 0, i32 13
  %176 = ptrtoint ptr %sram_end.i193 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sram_end.i193, align 4
  %call8.i194 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add7.i192, ptr noundef nonnull %clk_bypass_cntl.i174, i32 noundef 1, i32 noundef %177) #12
  br label %kv_update_dfs_bypass_settings.exit197

kv_update_dfs_bypass_settings.exit197:            ; preds = %cond.end.i195, %if.then37.kv_update_dfs_bypass_settings.exit197_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clk_bypass_cntl.i174) #12
  %call39 = call fastcc i32 @kv_calculate_ds_divider(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %kv_update_dfs_bypass_settings.exit197
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end42:                                         ; preds = %kv_update_dfs_bypass_settings.exit197
  call fastcc void @kv_calculate_nbps_level_settings(ptr noundef %rdev)
  %178 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i199 = getelementptr inbounds %struct.kv_power_info, ptr %179, i32 0, i32 8
  %180 = ptrtoint ptr %lowest_valid.i199 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %lowest_valid.i199, align 4
  %highest_valid.i200 = getelementptr inbounds %struct.kv_power_info, ptr %179, i32 0, i32 9
  %182 = ptrtoint ptr %highest_valid.i200 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %highest_valid.i200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %183)
  %cmp.i201 = icmp ugt i32 %181, %183
  br i1 %cmp.i201, label %if.end42.kv_calculate_dpm_settings.exit211_crit_edge, label %if.end42.for.body.i210_crit_edge

if.end42.for.body.i210_crit_edge:                 ; preds = %if.end42
  br label %for.body.i210

if.end42.kv_calculate_dpm_settings.exit211_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dpm_settings.exit211

for.body.i210:                                    ; preds = %for.body.i210.for.body.i210_crit_edge, %if.end42.for.body.i210_crit_edge
  %184 = phi i32 [ %187, %for.body.i210.for.body.i210_crit_edge ], [ %183, %if.end42.for.body.i210_crit_edge ]
  %i.02.i204 = phi i32 [ %inc.i208, %for.body.i210.for.body.i210_crit_edge ], [ %181, %if.end42.for.body.i210_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.02.i204, i32 %184)
  %cmp5.i205 = icmp eq i32 %i.02.i204, %184
  %conv.i206 = zext i1 %cmp5.i205 to i8
  %DisplayWatermark.i207 = getelementptr %struct.kv_power_info, ptr %179, i32 0, i32 22, i32 %i.02.i204, i32 9
  %185 = ptrtoint ptr %DisplayWatermark.i207 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv.i206, ptr %DisplayWatermark.i207, align 4
  %inc.i208 = add i32 %i.02.i204, 1
  %186 = ptrtoint ptr %highest_valid.i200 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %highest_valid.i200, align 4
  %cmp3.not.i209 = icmp ugt i32 %inc.i208, %187
  br i1 %cmp3.not.i209, label %for.body.i210.kv_calculate_dpm_settings.exit211_crit_edge, label %for.body.i210.for.body.i210_crit_edge

for.body.i210.for.body.i210_crit_edge:            ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i210

for.body.i210.kv_calculate_dpm_settings.exit211_crit_edge: ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_calculate_dpm_settings.exit211

kv_calculate_dpm_settings.exit211:                ; preds = %for.body.i210.kv_calculate_dpm_settings.exit211_crit_edge, %if.end42.kv_calculate_dpm_settings.exit211_crit_edge
  %call.i212 = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 393) #12
  %188 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv.i, align 4
  %dpm_table_start.i214 = getelementptr inbounds %struct.kv_power_info, ptr %189, i32 0, i32 14
  %190 = ptrtoint ptr %dpm_table_start.i214 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %dpm_table_start.i214, align 4
  %add.i215 = add i32 %191, 84
  %graphics_level.i216 = getelementptr inbounds %struct.kv_power_info, ptr %189, i32 0, i32 22
  %sram_end.i217 = getelementptr inbounds %struct.kv_power_info, ptr %189, i32 0, i32 13
  %192 = ptrtoint ptr %sram_end.i217 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %sram_end.i217, align 4
  %call1.i218 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i215, ptr noundef %graphics_level.i216, i32 noundef 224, i32 noundef %193) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i218)
  %tobool.not.i219 = icmp eq i32 %call1.i218, 0
  br i1 %tobool.not.i219, label %if.end.i223, label %kv_calculate_dpm_settings.exit211.kv_upload_dpm_settings.exit225_crit_edge

kv_calculate_dpm_settings.exit211.kv_upload_dpm_settings.exit225_crit_edge: ; preds = %kv_calculate_dpm_settings.exit211
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_upload_dpm_settings.exit225

if.end.i223:                                      ; preds = %kv_calculate_dpm_settings.exit211
  call void @__sanitizer_cov_trace_pc() #14
  %194 = ptrtoint ptr %dpm_table_start.i214 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dpm_table_start.i214, align 4
  %add3.i220 = add i32 %195, 76
  %graphics_dpm_level_count.i221 = getelementptr inbounds %struct.kv_power_info, ptr %189, i32 0, i32 16
  %196 = ptrtoint ptr %sram_end.i217 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %sram_end.i217, align 4
  %call5.i222 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add3.i220, ptr noundef %graphics_dpm_level_count.i221, i32 noundef 1, i32 noundef %197) #12
  br label %kv_upload_dpm_settings.exit225

kv_upload_dpm_settings.exit225:                   ; preds = %if.end.i223, %kv_calculate_dpm_settings.exit211.kv_upload_dpm_settings.exit225_crit_edge
  %198 = ptrtoint ptr %ps_priv.i.i175 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ps_priv.i.i175, align 4
  %200 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %family, align 4
  %202 = zext i32 %201 to i64
  call void @__sanitizer_cov_trace_switch(i64 %202, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %201, label %if.end.i231 [
    i32 59, label %kv_upload_dpm_settings.exit225.kv_program_nbps_index_settings.exit248_crit_edge
    i32 61, label %kv_upload_dpm_settings.exit225.kv_program_nbps_index_settings.exit248_crit_edge301
  ]

kv_upload_dpm_settings.exit225.kv_program_nbps_index_settings.exit248_crit_edge301: ; preds = %kv_upload_dpm_settings.exit225
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_program_nbps_index_settings.exit248

kv_upload_dpm_settings.exit225.kv_program_nbps_index_settings.exit248_crit_edge: ; preds = %kv_upload_dpm_settings.exit225
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_program_nbps_index_settings.exit248

if.end.i231:                                      ; preds = %kv_upload_dpm_settings.exit225
  %203 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %priv.i, align 4
  %nb_dpm_enable.i229 = getelementptr inbounds %struct.kv_power_info, ptr %204, i32 0, i32 2, i32 3
  %205 = ptrtoint ptr %nb_dpm_enable.i229 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nb_dpm_enable.i229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool.not.i230 = icmp eq i32 %206, 0
  br i1 %tobool.not.i230, label %if.end.i231.kv_program_nbps_index_settings.exit248_crit_edge, label %if.then4.i247

if.end.i231.kv_program_nbps_index_settings.exit248_crit_edge: ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_program_nbps_index_settings.exit248

if.then4.i247:                                    ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i232 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 260584) #12
  %dpm0_pg_nb_ps_lo.i233 = getelementptr inbounds %struct.kv_ps, ptr %199, i32 0, i32 3
  %207 = ptrtoint ptr %dpm0_pg_nb_ps_lo.i233 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %dpm0_pg_nb_ps_lo.i233, align 1
  %conv.i234 = zext i8 %208 to i32
  %dpm0_pg_nb_ps_hi.i235 = getelementptr inbounds %struct.kv_ps, ptr %199, i32 0, i32 4
  %209 = ptrtoint ptr %dpm0_pg_nb_ps_hi.i235 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %dpm0_pg_nb_ps_hi.i235, align 2
  %conv6.i236 = zext i8 %210 to i32
  %shl7.i237 = shl nuw nsw i32 %conv6.i236, 8
  %or.i238 = or i32 %shl7.i237, %conv.i234
  %dpmx_nb_ps_lo.i239 = getelementptr inbounds %struct.kv_ps, ptr %199, i32 0, i32 5
  %211 = ptrtoint ptr %dpmx_nb_ps_lo.i239 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %dpmx_nb_ps_lo.i239, align 1
  %conv8.i240 = zext i8 %212 to i32
  %shl9.i241 = shl nuw nsw i32 %conv8.i240, 16
  %or10.i242 = or i32 %or.i238, %shl9.i241
  %dpmx_nb_ps_hi.i243 = getelementptr inbounds %struct.kv_ps, ptr %199, i32 0, i32 6
  %213 = ptrtoint ptr %dpmx_nb_ps_hi.i243 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %dpmx_nb_ps_hi.i243, align 4
  %conv11.i244 = zext i8 %214 to i32
  %shl12.i245 = shl nuw i32 %conv11.i244, 24
  %or13.i246 = or i32 %or10.i242, %shl12.i245
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 260584, i32 noundef %or13.i246) #12
  br label %kv_program_nbps_index_settings.exit248

kv_program_nbps_index_settings.exit248:           ; preds = %if.then4.i247, %if.end.i231.kv_program_nbps_index_settings.exit248_crit_edge, %kv_upload_dpm_settings.exit225.kv_program_nbps_index_settings.exit248_crit_edge, %kv_upload_dpm_settings.exit225.kv_program_nbps_index_settings.exit248_crit_edge301
  %call.i249 = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 394) #12
  %215 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %priv.i, align 4
  %lowest_valid.i251 = getelementptr inbounds %struct.kv_power_info, ptr %216, i32 0, i32 8
  %217 = ptrtoint ptr %lowest_valid.i251 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %lowest_valid.i251, align 4
  %highest_valid.i252 = getelementptr inbounds %struct.kv_power_info, ptr %216, i32 0, i32 9
  %219 = ptrtoint ptr %highest_valid.i252 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %highest_valid.i252, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %218, i32 %220)
  %cmp.not7.i253 = icmp ugt i32 %218, %220
  br i1 %cmp.not7.i253, label %kv_program_nbps_index_settings.exit248.kv_set_enabled_levels.exit263_crit_edge, label %kv_program_nbps_index_settings.exit248.for.body.i260_crit_edge

kv_program_nbps_index_settings.exit248.for.body.i260_crit_edge: ; preds = %kv_program_nbps_index_settings.exit248
  br label %for.body.i260

kv_program_nbps_index_settings.exit248.kv_set_enabled_levels.exit263_crit_edge: ; preds = %kv_program_nbps_index_settings.exit248
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit263

for.body.i260:                                    ; preds = %for.body.i260.for.body.i260_crit_edge, %kv_program_nbps_index_settings.exit248.for.body.i260_crit_edge
  %new_mask.09.i254 = phi i32 [ %or.i257, %for.body.i260.for.body.i260_crit_edge ], [ 0, %kv_program_nbps_index_settings.exit248.for.body.i260_crit_edge ]
  %i.08.i255 = phi i32 [ %inc.i258, %for.body.i260.for.body.i260_crit_edge ], [ %218, %kv_program_nbps_index_settings.exit248.for.body.i260_crit_edge ]
  %shl.i256 = shl nuw i32 1, %i.08.i255
  %or.i257 = or i32 %shl.i256, %new_mask.09.i254
  %inc.i258 = add i32 %i.08.i255, 1
  %cmp.not.i259 = icmp ugt i32 %inc.i258, %220
  br i1 %cmp.not.i259, label %for.body.i260.kv_set_enabled_levels.exit263_crit_edge, label %for.body.i260.for.body.i260_crit_edge

for.body.i260.for.body.i260_crit_edge:            ; preds = %for.body.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i260

for.body.i260.kv_set_enabled_levels.exit263_crit_edge: ; preds = %for.body.i260
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_set_enabled_levels.exit263

kv_set_enabled_levels.exit263:                    ; preds = %for.body.i260.kv_set_enabled_levels.exit263_crit_edge, %kv_program_nbps_index_settings.exit248.kv_set_enabled_levels.exit263_crit_edge
  %new_mask.0.lcssa.i261 = phi i32 [ 0, %kv_program_nbps_index_settings.exit248.kv_set_enabled_levels.exit263_crit_edge ], [ %or.i257, %for.body.i260.kv_set_enabled_levels.exit263_crit_edge ]
  %call1.i262 = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 325, i32 noundef %new_mask.0.lcssa.i261) #12
  %call49 = call fastcc i32 @kv_update_vce_dpm(ptr noundef %rdev, ptr noundef %requested_rps, ptr noundef %current_rps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %kv_set_enabled_levels.exit263
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end52:                                         ; preds = %kv_set_enabled_levels.exit263
  %221 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %priv.i, align 4
  %caps_stable_p_state.i = getelementptr inbounds %struct.kv_power_info, ptr %222, i32 0, i32 66
  %223 = ptrtoint ptr %caps_stable_p_state.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %caps_stable_p_state.i, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i265 = icmp eq i8 %224, 0
  br i1 %tobool.not.i265, label %if.then.i267, label %if.end52.kv_update_acp_boot_level.exit_crit_edge

if.end52.kv_update_acp_boot_level.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_update_acp_boot_level.exit

if.then.i267:                                     ; preds = %if.end52
  %acp_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8
  %225 = ptrtoint ptr %acp_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %acp_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %cmp6.i.i = icmp eq i32 %226, 0
  %i.1.i.i = sext i1 %cmp6.i.i to i8
  %acp_boot_level2.i = getelementptr inbounds %struct.kv_power_info, ptr %222, i32 0, i32 30
  %227 = ptrtoint ptr %acp_boot_level2.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %acp_boot_level2.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %228, i8 %i.1.i.i)
  %cmp.not.i266 = icmp eq i8 %228, %i.1.i.i
  br i1 %cmp.not.i266, label %if.then.i267.kv_update_acp_boot_level.exit_crit_edge, label %if.then5.i270

if.then.i267.kv_update_acp_boot_level.exit_crit_edge: ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_update_acp_boot_level.exit

if.then5.i270:                                    ; preds = %if.then.i267
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i268 = zext i8 %i.1.i.i to i32
  %229 = ptrtoint ptr %acp_boot_level2.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %i.1.i.i, ptr %acp_boot_level2.i, align 2
  %shl.i269 = shl nuw i32 1, %conv.i268
  %call9.i = call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 303, i32 noundef %shl.i269) #12
  br label %kv_update_acp_boot_level.exit

kv_update_acp_boot_level.exit:                    ; preds = %if.then5.i270, %if.then.i267.kv_update_acp_boot_level.exit_crit_edge, %if.end52.kv_update_acp_boot_level.exit_crit_edge
  %230 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i271) #12
  %caps_sclk_throttle_low_notification.i273 = getelementptr inbounds %struct.kv_power_info, ptr %231, i32 0, i32 59
  %232 = ptrtoint ptr %caps_sclk_throttle_low_notification.i273 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %caps_sclk_throttle_low_notification.i273, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool.not.i274 = icmp eq i8 %233, 0
  br i1 %tobool.not.i274, label %kv_update_acp_boot_level.exit.kv_update_sclk_t.exit282_crit_edge, label %if.then.i280

kv_update_acp_boot_level.exit.kv_update_sclk_t.exit282_crit_edge: ; preds = %kv_update_acp_boot_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_update_sclk_t.exit282

if.then.i280:                                     ; preds = %kv_update_acp_boot_level.exit
  call void @__sanitizer_cov_trace_pc() #14
  %low_sclk_interrupt_t1.i275 = getelementptr inbounds %struct.kv_power_info, ptr %231, i32 0, i32 43
  %234 = ptrtoint ptr %low_sclk_interrupt_t1.i275 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %low_sclk_interrupt_t1.i275, align 4
  %236 = ptrtoint ptr %low_sclk_interrupt_t.i271 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %low_sclk_interrupt_t.i271, align 4
  %dpm_table_start.i276 = getelementptr inbounds %struct.kv_power_info, ptr %231, i32 0, i32 14
  %237 = ptrtoint ptr %dpm_table_start.i276 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %dpm_table_start.i276, align 4
  %add.i277 = add i32 %238, 764
  %sram_end.i278 = getelementptr inbounds %struct.kv_power_info, ptr %231, i32 0, i32 13
  %239 = ptrtoint ptr %sram_end.i278 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %sram_end.i278, align 4
  %call2.i279 = call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add.i277, ptr noundef nonnull %low_sclk_interrupt_t.i271, i32 noundef 4, i32 noundef %240) #12
  br label %kv_update_sclk_t.exit282

kv_update_sclk_t.exit282:                         ; preds = %if.then.i280, %kv_update_acp_boot_level.exit.kv_update_sclk_t.exit282_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %low_sclk_interrupt_t.i271) #12
  %241 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %priv.i, align 4
  %enable_nb_dpm.i284 = getelementptr inbounds %struct.kv_power_info, ptr %242, i32 0, i32 52
  %243 = ptrtoint ptr %enable_nb_dpm.i284 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %enable_nb_dpm.i284, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool1.not.i285 = icmp eq i8 %244, 0
  br i1 %tobool1.not.i285, label %kv_update_sclk_t.exit282.cleanup_crit_edge, label %land.lhs.true.i289

kv_update_sclk_t.exit282.cleanup_crit_edge:       ; preds = %kv_update_sclk_t.exit282
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i289:                               ; preds = %kv_update_sclk_t.exit282
  %nb_dpm_enabled.i287 = getelementptr inbounds %struct.kv_power_info, ptr %242, i32 0, i32 48
  %245 = ptrtoint ptr %nb_dpm_enabled.i287 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %nb_dpm_enabled.i287, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool2.not.i288 = icmp eq i8 %246, 0
  br i1 %tobool2.not.i288, label %if.then3.i292, label %land.lhs.true.i289.cleanup_crit_edge

land.lhs.true.i289.cleanup_crit_edge:             ; preds = %land.lhs.true.i289
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i292:                                    ; preds = %land.lhs.true.i289
  %call4.i290 = call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 320) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i290)
  %cmp.i291 = icmp eq i32 %call4.i290, 0
  br i1 %cmp.i291, label %if.then5.i293, label %if.then3.i292.cleanup_crit_edge

if.then3.i292.cleanup_crit_edge:                  ; preds = %if.then3.i292
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.i293:                                    ; preds = %if.then3.i292
  call void @__sanitizer_cov_trace_pc() #14
  %247 = ptrtoint ptr %nb_dpm_enabled.i287 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 1, ptr %nb_dpm_enabled.i287, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5.i293, %if.then3.i292.cleanup_crit_edge, %land.lhs.true.i289.cleanup_crit_edge, %kv_update_sclk_t.exit282.cleanup_crit_edge, %if.then51, %if.then41, %if.else.cleanup_crit_edge, %if.then5.i, %if.then3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %kv_update_sclk_t.exit.cleanup_crit_edge, %if.then26, %if.then14, %if.then8.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ %call12, %if.then14 ], [ %call24, %if.then26 ], [ %call39, %if.then41 ], [ %call49, %if.then51 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ], [ 0, %kv_update_sclk_t.exit.cleanup_crit_edge ], [ 0, %if.then31.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then3.i.cleanup_crit_edge ], [ 0, %if.then5.i ], [ 0, %kv_update_sclk_t.exit282.cleanup_crit_edge ], [ 0, %land.lhs.true.i289.cleanup_crit_edge ], [ 0, %if.then3.i292.cleanup_crit_edge ], [ 0, %if.then5.i293 ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_set_valid_clock_range(ptr noundef readonly %rdev, ptr nocapture noundef readonly %new_rps) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_rps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %dyn_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %tobool.not = icmp eq ptr %dyn_state, null
  br i1 %tobool.not, label %entry.if.else64_crit_edge, label %land.lhs.true

entry.if.else64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else64

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dyn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else64_crit_edge, label %for.cond.preheader

land.lhs.true.if.else64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else64

for.cond.preheader:                               ; preds = %land.lhs.true
  %graphics_dpm_level_count = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %graphics_dpm_level_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %graphics_dpm_level_count, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp220.not = icmp eq i8 %7, 0
  br i1 %cmp220.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %8 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %9, i32 %i.0221
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp5.not = icmp uge i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0221, i32 %sub)
  %cmp9 = icmp eq i32 %i.0221, %sub
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %lowest_valid = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0221, ptr %lowest_valid, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0221, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then11, %for.cond.preheader.for.end_crit_edge
  %15 = ptrtoint ptr %graphics_dpm_level_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %graphics_dpm_level_count, align 4
  %conv13 = zext i8 %16 to i32
  %entries19 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  br label %for.cond15

for.cond15:                                       ; preds = %for.body18.for.cond15_crit_edge, %for.end
  %i.1.in = phi i32 [ %conv13, %for.end ], [ %i.1, %for.body18.for.cond15_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp16.not = icmp eq i32 %i.1, 0
  br i1 %cmp16.not, label %for.cond15.for.end31_crit_edge, label %for.body18

for.cond15.for.end31_crit_edge:                   ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

for.body18:                                       ; preds = %for.cond15
  %17 = ptrtoint ptr %entries19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries19, align 4
  %arrayidx20 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %18, i32 %i.1
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx20, align 4
  %21 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_levels, align 4
  %sub23 = add i32 %22, -1
  %arrayidx24 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub23
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  %cmp26.not = icmp ugt i32 %20, %24
  br i1 %cmp26.not, label %for.body18.for.cond15_crit_edge, label %for.body18.for.end31_crit_edge

for.body18.for.end31_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end31

for.body18.for.cond15_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond15

for.end31:                                        ; preds = %for.body18.for.end31_crit_edge, %for.cond15.for.end31_crit_edge
  %highest_valid = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %highest_valid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.1, ptr %highest_valid, align 4
  %lowest_valid32 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %lowest_valid32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lowest_valid32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %i.1)
  %cmp34 = icmp ugt i32 %27, %i.1
  br i1 %cmp34, label %if.then36, label %for.end31.if.end147_crit_edge

for.end31.if.end147_crit_edge:                    ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then36:                                        ; preds = %for.end31
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = ptrtoint ptr %entries19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entries19, align 4
  %arrayidx42 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %31, i32 %i.1
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx42, align 4
  %sub44 = sub i32 %29, %33
  %arrayidx47 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %31, i32 %27
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx47, align 4
  %36 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_levels, align 4
  %sub51 = add i32 %37, -1
  %arrayidx52 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub51
  %38 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx52, align 4
  %sub54 = sub i32 %35, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44, i32 %sub54)
  %cmp55 = icmp ugt i32 %sub44, %sub54
  br i1 %cmp55, label %if.then57, label %if.else

if.then57:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %highest_valid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %27, ptr %highest_valid, align 4
  br label %if.end147

if.else:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %lowest_valid32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.1, ptr %lowest_valid32, align 4
  br label %if.end147

if.else64:                                        ; preds = %land.lhs.true.if.else64_crit_edge, %entry.if.else64_crit_edge
  %graphics_dpm_level_count67 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 16
  %42 = ptrtoint ptr %graphics_dpm_level_count67 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %graphics_dpm_level_count67, align 4
  %conv68 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp69223.not = icmp eq i8 %43, 0
  br i1 %cmp69223.not, label %if.else64.for.end90_crit_edge, label %for.body71.lr.ph

if.else64.for.end90_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

for.body71.lr.ph:                                 ; preds = %if.else64
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %sub82 = add nsw i32 %conv68, -1
  br label %for.body71

for.body71:                                       ; preds = %for.inc88.for.body71_crit_edge, %for.body71.lr.ph
  %i.2224 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc89, %for.inc88.for.body71_crit_edge ]
  %arrayidx73 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %i.2224
  %46 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp77.not = icmp uge i32 %47, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2224, i32 %sub82)
  %cmp83 = icmp eq i32 %i.2224, %sub82
  %or.cond212 = select i1 %cmp77.not, i1 true, i1 %cmp83
  br i1 %or.cond212, label %if.then85, label %for.inc88

if.then85:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  %lowest_valid86 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %48 = ptrtoint ptr %lowest_valid86 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.2224, ptr %lowest_valid86, align 4
  br label %for.end90

for.inc88:                                        ; preds = %for.body71
  %inc89 = add nuw nsw i32 %i.2224, 1
  %exitcond227.not = icmp eq i32 %inc89, %conv68
  br i1 %exitcond227.not, label %for.inc88.for.end90_crit_edge, label %for.inc88.for.body71_crit_edge

for.inc88.for.body71_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end90

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %if.then85, %if.else64.for.end90_crit_edge
  %49 = ptrtoint ptr %graphics_dpm_level_count67 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %graphics_dpm_level_count67, align 4
  %conv92 = zext i8 %50 to i32
  %num_levels102 = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  br label %for.cond94

for.cond94:                                       ; preds = %for.body97.for.cond94_crit_edge, %for.end90
  %i.3.in = phi i32 [ %conv92, %for.end90 ], [ %i.3, %for.body97.for.cond94_crit_edge ]
  %i.3 = add i32 %i.3.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3)
  %cmp95.not = icmp eq i32 %i.3, 0
  br i1 %cmp95.not, label %for.cond94.for.end112_crit_edge, label %for.body97

for.cond94.for.end112_crit_edge:                  ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end112

for.body97:                                       ; preds = %for.cond94
  %arrayidx99 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %i.3
  %51 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx99, align 4
  %53 = ptrtoint ptr %num_levels102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_levels102, align 4
  %sub103 = add i32 %54, -1
  %arrayidx104 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub103
  %55 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx104, align 4
  %cmp106.not = icmp ugt i32 %52, %56
  br i1 %cmp106.not, label %for.body97.for.cond94_crit_edge, label %for.body97.for.end112_crit_edge

for.body97.for.end112_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end112

for.body97.for.cond94_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond94

for.end112:                                       ; preds = %for.body97.for.end112_crit_edge, %for.cond94.for.end112_crit_edge
  %highest_valid113 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 9
  %57 = ptrtoint ptr %highest_valid113 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.3, ptr %highest_valid113, align 4
  %lowest_valid114 = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 8
  %58 = ptrtoint ptr %lowest_valid114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lowest_valid114, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %i.3)
  %cmp116 = icmp ugt i32 %59, %i.3
  br i1 %cmp116, label %if.then118, label %for.end112.if.end147_crit_edge

for.end112.if.end147_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then118:                                       ; preds = %for.end112
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %1, align 4
  %arrayidx124 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %i.3
  %62 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx124, align 4
  %sub126 = sub i32 %61, %63
  %arrayidx129 = getelementptr %struct.kv_power_info, ptr %3, i32 0, i32 2, i32 9, i32 1, i32 %59
  %64 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx129, align 4
  %66 = ptrtoint ptr %num_levels102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_levels102, align 4
  %sub133 = add i32 %67, -1
  %arrayidx134 = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %sub133
  %68 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx134, align 4
  %sub136 = sub i32 %65, %69
  call void @__sanitizer_cov_trace_cmp4(i32 %sub126, i32 %sub136)
  %cmp137 = icmp ugt i32 %sub126, %sub136
  br i1 %cmp137, label %if.then139, label %if.else142

if.then139:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %highest_valid113 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %59, ptr %highest_valid113, align 4
  br label %if.end147

if.else142:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %lowest_valid114 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %i.3, ptr %lowest_valid114, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else142, %if.then139, %for.end112.if.end147_crit_edge, %if.else, %if.then57, %for.end31.if.end147_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_calculate_ds_divider(ptr nocapture noundef readonly %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %lowest_valid = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lowest_valid, align 4
  %highest_valid = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %7)
  %cmp3.not18 = icmp ugt i32 %3, %7
  br i1 %cmp3.not18, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body:                                         ; preds = %kv_get_sleep_divider_id_from_clock.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %kv_get_sleep_divider_id_from_clock.exit.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %SclkFrequency = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.019, i32 1
  %8 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SclkFrequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %9)
  %cmp1.i = icmp ult i32 %9, 10000
  br i1 %cmp1.i, label %for.body.kv_get_sleep_divider_id_from_clock.exit_crit_edge, label %if.end.i

for.body.kv_get_sleep_divider_id_from_clock.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_sleep_divider_id_from_clock.exit

if.end.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %caps_sclk_ds.i = getelementptr inbounds %struct.kv_power_info, ptr %11, i32 0, i32 68
  %12 = ptrtoint ptr %caps_sclk_ds.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %caps_sclk_ds.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, label %for.body.preheader.i

if.end.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_sleep_divider_id_from_clock.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %call5.i = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 5) #12
  %div.i = udiv i32 %9, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %div.i)
  %cmp6.i = icmp ugt i32 %div.i, 9999
  br i1 %cmp6.i, label %for.body.preheader.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, label %for.inc.i

for.body.preheader.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_sleep_divider_id_from_clock.exit

for.inc.i:                                        ; preds = %for.body.preheader.i
  %call5.1.i = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 4) #12
  %div.1.i = udiv i32 %9, %call5.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %div.1.i)
  %cmp6.1.i = icmp ugt i32 %div.1.i, 9999
  br i1 %cmp6.1.i, label %for.inc.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, label %for.inc.1.i

for.inc.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_sleep_divider_id_from_clock.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %call5.2.i = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 3) #12
  %div.2.i = udiv i32 %9, %call5.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %div.2.i)
  %cmp6.2.i = icmp ugt i32 %div.2.i, 9999
  br i1 %cmp6.2.i, label %for.inc.1.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_sleep_divider_id_from_clock.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call5.3.i = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 2) #12
  %div.3.i = udiv i32 %9, %call5.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %div.3.i)
  %cmp6.3.i = icmp ugt i32 %div.3.i, 9999
  br i1 %cmp6.3.i, label %for.inc.2.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_get_sleep_divider_id_from_clock.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %call5.4.i = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 1) #12
  %div.4.i = udiv i32 %9, %call5.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %div.4.i)
  %cmp6.4.i = icmp ugt i32 %div.4.i, 9999
  %spec.select.i = zext i1 %cmp6.4.i to i8
  br label %kv_get_sleep_divider_id_from_clock.exit

kv_get_sleep_divider_id_from_clock.exit:          ; preds = %for.inc.3.i, %for.inc.2.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, %for.inc.1.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, %for.inc.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, %for.body.preheader.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, %if.end.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge, %for.body.kv_get_sleep_divider_id_from_clock.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %for.body.kv_get_sleep_divider_id_from_clock.exit_crit_edge ], [ 0, %if.end.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge ], [ 5, %for.body.preheader.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge ], [ 4, %for.inc.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge ], [ 3, %for.inc.1.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge ], [ 2, %for.inc.2.i.kv_get_sleep_divider_id_from_clock.exit_crit_edge ], [ %spec.select.i, %for.inc.3.i ]
  %DeepSleepDivId = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.019, i32 15
  %14 = ptrtoint ptr %DeepSleepDivId to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %retval.0.i, ptr %DeepSleepDivId, align 2
  %inc = add i32 %i.019, 1
  %15 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highest_valid, align 4
  %cmp3.not = icmp ugt i32 %inc, %16
  br i1 %cmp3.not, label %kv_get_sleep_divider_id_from_clock.exit.cleanup_crit_edge, label %kv_get_sleep_divider_id_from_clock.exit.for.body_crit_edge

kv_get_sleep_divider_id_from_clock.exit.for.body_crit_edge: ; preds = %kv_get_sleep_divider_id_from_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

kv_get_sleep_divider_id_from_clock.exit.cleanup_crit_edge: ; preds = %kv_get_sleep_divider_id_from_clock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %kv_get_sleep_divider_id_from_clock.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %kv_get_sleep_divider_id_from_clock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_calculate_nbps_level_settings(ptr nocapture noundef readonly %rdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mclk1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 1
  %2 = ptrtoint ptr %mclk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mclk1, align 4
  %lowest_valid = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lowest_valid, align 4
  %highest_valid = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %family, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %9, label %for.cond57.preheader [
    i32 59, label %if.end.if.then5_crit_edge
    i32 61, label %if.end.if.then5_crit_edge8
  ]

if.end.if.then5_crit_edge8:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then5

for.cond57.preheader:                             ; preds = %if.end
  %11 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %12)
  %cmp59.not6 = icmp ugt i32 %5, %12
  br i1 %cmp59.not6, label %for.cond57.preheader.for.end72_crit_edge, label %for.cond57.preheader.for.body60_crit_edge

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.cond57.preheader.for.end72_crit_edge:         ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end72

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge8
  %13 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp8.not2 = icmp ugt i32 %5, %14
  br i1 %cmp8.not2, label %if.then5.for.end_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then5.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %5, %if.then5.for.body_crit_edge ]
  %GnbSlow = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.03, i32 6
  %15 = ptrtoint ptr %GnbSlow to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %GnbSlow, align 1
  %ForceNbPs1 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.03, i32 7
  %16 = ptrtoint ptr %ForceNbPs1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ForceNbPs1, align 2
  %UpH = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.03, i32 12
  %17 = ptrtoint ptr %UpH to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %UpH, align 1
  %inc = add i32 %i.03, 1
  %18 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %highest_valid, align 4
  %cmp8.not = icmp ugt i32 %inc, %19
  br i1 %cmp8.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then5.for.end_crit_edge
  %nb_dpm_enable = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %nb_dpm_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_dpm_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %for.end
  %arrayidx16 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %23)
  %cmp17.not = icmp ult i32 %3, %23
  br i1 %cmp17.not, label %lor.lhs.false18, label %if.end14.if.then24_crit_edge

if.end14.if.then24_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

lor.lhs.false18:                                  ; preds = %if.end14
  %new_active_crtc_count = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %24 = ptrtoint ptr %new_active_crtc_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %new_active_crtc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp21 = icmp sgt i32 %25, 2
  br i1 %cmp21, label %lor.lhs.false18.if.then24_crit_edge, label %lor.rhs

lor.lhs.false18.if.then24_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

lor.rhs:                                          ; preds = %lor.lhs.false18
  %video_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %video_start to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %video_start, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool22.not = icmp eq i8 %27, 0
  br i1 %tobool22.not, label %if.else, label %lor.rhs.if.then24_crit_edge

lor.rhs.if.then24_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then24:                                        ; preds = %lor.rhs.if.then24_crit_edge, %lor.lhs.false18.if.then24_crit_edge, %if.end14.if.then24_crit_edge
  %28 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lowest_valid, align 4
  %30 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp28.not4 = icmp ugt i32 %29, %31
  br i1 %cmp28.not4, label %if.then24.cleanup_crit_edge, label %if.then24.for.body29_crit_edge

if.then24.for.body29_crit_edge:                   ; preds = %if.then24
  br label %for.body29

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %if.then24.for.body29_crit_edge
  %i.15 = phi i32 [ %inc34, %for.body29.for.body29_crit_edge ], [ %29, %if.then24.for.body29_crit_edge ]
  %GnbSlow32 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.15, i32 6
  %32 = ptrtoint ptr %GnbSlow32 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %GnbSlow32, align 1
  %inc34 = add i32 %i.15, 1
  %33 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %highest_valid, align 4
  %cmp28.not = icmp ugt i32 %inc34, %34
  br i1 %cmp28.not, label %for.body29.cleanup_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body29

for.body29.cleanup_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %lor.rhs
  %battery_state = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %battery_state to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %battery_state, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool36.not = icmp eq i8 %36, 0
  br i1 %tobool36.not, label %if.else.if.end41_crit_edge, label %if.then37

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %ForceNbPs140 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 0, i32 7
  %37 = ptrtoint ptr %ForceNbPs140 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %ForceNbPs140, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.else.if.end41_crit_edge
  %GnbSlow44 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 1, i32 6
  %38 = ptrtoint ptr %GnbSlow44 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %GnbSlow44, align 1
  %GnbSlow47 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 2, i32 6
  %39 = ptrtoint ptr %GnbSlow47 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %GnbSlow47, align 1
  %GnbSlow50 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 3, i32 6
  %40 = ptrtoint ptr %GnbSlow50 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %GnbSlow50, align 1
  %GnbSlow53 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 4, i32 6
  %41 = ptrtoint ptr %GnbSlow53 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %GnbSlow53, align 1
  br label %cleanup

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.27 = phi i32 [ %inc71, %for.body60.for.body60_crit_edge ], [ %5, %for.cond57.preheader.for.body60_crit_edge ]
  %GnbSlow63 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.27, i32 6
  %42 = ptrtoint ptr %GnbSlow63 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %GnbSlow63, align 1
  %ForceNbPs166 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.27, i32 7
  %43 = ptrtoint ptr %ForceNbPs166 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %ForceNbPs166, align 2
  %UpH69 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %i.27, i32 12
  %44 = ptrtoint ptr %UpH69 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %UpH69, align 1
  %inc71 = add i32 %i.27, 1
  %45 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %highest_valid, align 4
  %cmp59.not = icmp ugt i32 %inc71, %46
  br i1 %cmp59.not, label %for.body60.for.end72_crit_edge, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body60

for.body60.for.end72_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end72

for.end72:                                        ; preds = %for.body60.for.end72_crit_edge, %for.cond57.preheader.for.end72_crit_edge
  %nb_dpm_enable74 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %nb_dpm_enable74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nb_dpm_enable74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool75.not = icmp eq i32 %48, 0
  br i1 %tobool75.not, label %for.end72.cleanup_crit_edge, label %land.lhs.true

for.end72.cleanup_crit_edge:                      ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %for.end72
  %battery_state76 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %battery_state76 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %battery_state76, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool77.not = icmp eq i8 %50, 0
  br i1 %tobool77.not, label %land.lhs.true.cleanup_crit_edge, label %if.then78

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then78:                                        ; preds = %land.lhs.true
  %51 = ptrtoint ptr %lowest_valid to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lowest_valid, align 4
  %UpH82 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %52, i32 12
  %53 = ptrtoint ptr %UpH82 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 40, ptr %UpH82, align 1
  %54 = load i32, ptr %lowest_valid, align 4
  %GnbSlow86 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %54, i32 6
  %55 = ptrtoint ptr %GnbSlow86 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %GnbSlow86, align 1
  %56 = load i32, ptr %lowest_valid, align 4
  %57 = ptrtoint ptr %highest_valid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %highest_valid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp89.not = icmp eq i32 %56, %58
  br i1 %cmp89.not, label %if.then78.cleanup_crit_edge, label %if.then90

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then90:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  %ForceNbPs194 = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %56, i32 7
  %59 = ptrtoint ptr %ForceNbPs194 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %ForceNbPs194, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.then78.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end72.cleanup_crit_edge, %if.end41, %for.body29.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kv_update_vce_dpm(ptr noundef %rdev, ptr nocapture noundef readonly %radeon_new_state, ptr nocapture noundef readonly %radeon_current_state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6
  %evclk = getelementptr inbounds %struct.radeon_ps, ptr %radeon_new_state, i32 0, i32 5
  %2 = ptrtoint ptr %evclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %evclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %evclk26 = getelementptr inbounds %struct.radeon_ps, ptr %radeon_current_state, i32 0, i32 5
  %4 = ptrtoint ptr %evclk26 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %evclk26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp27.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %land.lhs.true25, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp27.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %vce_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vce_power_gated.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  br i1 %cmp.i, label %if.then.kv_dpm_powergate_vce.exit_crit_edge, label %if.end.i

if.then.kv_dpm_powergate_vce.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_vce.exit

if.end.i:                                         ; preds = %if.then
  %8 = ptrtoint ptr %vce_power_gated.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %vce_power_gated.i, align 1
  %caps_vce_pg.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 63
  %9 = ptrtoint ptr %caps_vce_pg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %caps_vce_pg.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not.i = icmp eq i8 %10, 0
  br i1 %tobool9.not.i, label %if.end.i.kv_dpm_powergate_vce.exit_crit_edge, label %if.then15.i

if.end.i.kv_dpm_powergate_vce.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_dpm_powergate_vce.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call16.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 271) #12
  %call17.i = tail call i32 @vce_v2_0_resume(ptr noundef %rdev) #12
  %call18.i = tail call i32 @vce_v1_0_start(ptr noundef %rdev) #12
  br label %kv_dpm_powergate_vce.exit

kv_dpm_powergate_vce.exit:                        ; preds = %if.then15.i, %if.end.i.kv_dpm_powergate_vce.exit_crit_edge, %if.then.kv_dpm_powergate_vce.exit_crit_edge
  tail call void @cik_update_cg(ptr noundef %rdev, i32 noundef 16, i1 noundef zeroext false) #12
  %caps_stable_p_state = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 66
  %11 = ptrtoint ptr %caps_stable_p_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %caps_stable_p_state, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %kv_dpm_powergate_vce.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  %sub = add i8 %14, -1
  br label %if.end

if.else:                                          ; preds = %kv_dpm_powergate_vce.exit
  %15 = ptrtoint ptr %evclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %evclk, align 4
  %17 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vce_clock_voltage_dependency_table, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp10.not.i = icmp eq i8 %18, 0
  br i1 %cmp10.not.i, label %if.else.if.end_crit_edge, label %for.body.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6, i32 1
  %19 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %entries.i, align 4
  %wide.trip.count.i = zext i8 %18 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  %evclk3.i = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %20, i32 %indvars.iv.i, i32 1
  %21 = ptrtoint ptr %evclk3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %evclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp4.not.i = icmp ult i32 %22, %16
  br i1 %cmp4.not.i, label %for.inc.i, label %for.end.loopexit.split.loop.exit.i

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.end.loopexit.split.loop.exit.i:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = trunc i32 %indvars.iv.i to i8
  br label %if.end

if.end:                                           ; preds = %for.end.loopexit.split.loop.exit.i, %for.inc.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then3
  %i.0.lcssa.i.sink = phi i8 [ %sub, %if.then3 ], [ 0, %if.else.if.end_crit_edge ], [ %23, %for.end.loopexit.split.loop.exit.i ], [ %18, %for.inc.i.if.end_crit_edge ]
  %vce_boot_level7 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 29
  %24 = ptrtoint ptr %vce_boot_level7 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %i.0.lcssa.i.sink, ptr %vce_boot_level7, align 1
  %dpm_table_start = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 14
  %25 = ptrtoint ptr %dpm_table_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dpm_table_start, align 4
  %add = add i32 %26, 745
  %vce_boot_level8 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 29
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %sram_end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sram_end, align 4
  %call9 = tail call i32 @kv_copy_bytes_to_smc(ptr noundef %rdev, i32 noundef %add, ptr noundef %vce_boot_level8, i32 noundef 1, i32 noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %29 = ptrtoint ptr %caps_stable_p_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %caps_stable_p_state, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool14.not = icmp eq i8 %30, 0
  br i1 %tobool14.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.then15

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %vce_boot_level8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vce_boot_level8, align 1
  %conv17 = zext i8 %32 to i32
  %shl = shl nuw i32 1, %conv17
  %call18 = tail call i32 @kv_send_msg_to_smc_with_parameter(ptr noundef %rdev, i16 noundef zeroext 302, i32 noundef %shl) #12
  br label %cleanup.sink.split

land.lhs.true25:                                  ; preds = %entry
  br i1 %cmp27.not, label %land.lhs.true25.cleanup_crit_edge, label %if.then29

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true25
  %call.i56 = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef 347) #12
  tail call void @cik_update_cg(ptr noundef %rdev, i32 noundef 16, i1 noundef zeroext true) #12
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 4
  %vce_power_gated.i58 = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 45
  %35 = ptrtoint ptr %vce_power_gated.i58 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vce_power_gated.i58, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i59 = icmp eq i8 %36, 1
  br i1 %cmp.i59, label %if.then29.cleanup_crit_edge, label %if.end.i62

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i62:                                       ; preds = %if.then29
  %37 = ptrtoint ptr %vce_power_gated.i58 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %vce_power_gated.i58, align 1
  %caps_vce_pg.i60 = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 63
  %38 = ptrtoint ptr %caps_vce_pg.i60 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %caps_vce_pg.i60, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool9.not.i61 = icmp eq i8 %39, 0
  br i1 %tobool9.not.i61, label %if.end.i62.cleanup_crit_edge, label %if.end.i62.cleanup.sink.split_crit_edge

if.end.i62.cleanup.sink.split_crit_edge:          ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.i62.cleanup_crit_edge:                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i62.cleanup.sink.split_crit_edge, %if.then15, %if.end12.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 346, %if.then15 ], [ 346, %if.end12.cleanup.sink.split_crit_edge ], [ 270, %if.end.i62.cleanup.sink.split_crit_edge ]
  %call11.i = tail call i32 @kv_notify_message_to_smu(ptr noundef %rdev, i32 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i62.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then29.cleanup_crit_edge ], [ 0, %if.end.i62.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @kv_dpm_post_set_power_state(ptr nocapture noundef readonly %rdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71
  %ps_priv.i.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %2 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 69
  %4 = call ptr @memcpy(ptr %current_rps.i, ptr %requested_rps, i32 40)
  %current_ps.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 70
  %5 = call ptr @memcpy(ptr %current_ps.i, ptr %3, i32 72)
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 69, i32 9
  %6 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sumo_take_smu_control(ptr noundef %rdev, i1 noundef zeroext true) #12
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %uvd_power_gated.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %uvd_power_gated.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %uvd_power_gated.i, align 4
  %3 = load ptr, ptr %priv.i.i, align 4
  %low_sclk_interrupt_t.i = getelementptr inbounds %struct.kv_power_info, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %low_sclk_interrupt_t.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %low_sclk_interrupt_t.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_take_smu_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i106 = alloca i16, align 2
  %frev.i107 = alloca i8, align 1
  %crev.i108 = alloca i8, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1124) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %priv, align 4
  %call1 = tail call i32 @r600_get_platform_caps(ptr noundef %rdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @r600_parse_extended_power_table(ptr noundef %rdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.body.preheader, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end3
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 30, ptr %call7.i.i, align 8
  %arrayidx.1 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 30, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 30, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr [5 x i32], ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 30, ptr %arrayidx.4, align 8
  %sram_end = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %sram_end to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 262144, ptr %sram_end, align 4
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6217, i16 %11)
  %cmp9 = icmp ne i16 %11, 6217
  %spec.select = zext i1 %cmp9 to i8
  %12 = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 52
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %12, align 8
  %caps_power_containment = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 54
  %14 = ptrtoint ptr %caps_power_containment to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %caps_power_containment, align 2
  %caps_cac = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 53
  %15 = ptrtoint ptr %caps_cac to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %caps_cac, align 1
  %enable_didt = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 49
  %16 = ptrtoint ptr %enable_didt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enable_didt, align 1
  %caps_sclk_ds = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 68
  %17 = ptrtoint ptr %caps_sclk_ds to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %caps_sclk_ds, align 8
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 51
  %18 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %enable_auto_thermal_throttling, align 1
  %disable_nb_ps3_in_battery = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %disable_nb_ps3_in_battery to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %disable_nb_ps3_in_battery, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_bapm to i32))
  %20 = load i32, ptr @radeon_bapm, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %20, label %if.else35 [
    i32 -1, label %if.then20
    i32 0, label %for.body.preheader.if.end38_crit_edge
  ]

for.body.preheader.if.end38_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then20:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %family, align 4
  %24 = add i32 %23, -59
  %switch.and = and i32 %24, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %25 = zext i1 %switch.selectcmp to i8
  br label %if.end38

if.else35:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then20, %for.body.preheader.if.end38_crit_edge
  %.sink = phi i8 [ 1, %if.else35 ], [ %25, %if.then20 ], [ 0, %for.body.preheader.if.end38_crit_edge ]
  %bapm_enable34 = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %bapm_enable34 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %bapm_enable34, align 1
  %voltage_drop_t = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %voltage_drop_t to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %voltage_drop_t, align 4
  %caps_sclk_throttle_low_notification = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 59
  %28 = ptrtoint ptr %caps_sclk_throttle_low_notification to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %caps_sclk_throttle_low_notification, align 1
  %caps_fps = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 60
  %29 = ptrtoint ptr %caps_fps to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %caps_fps, align 8
  %caps_uvd_pg = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 62
  %30 = ptrtoint ptr %caps_uvd_pg to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %caps_uvd_pg, align 2
  %caps_uvd_dpm = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 61
  %31 = ptrtoint ptr %caps_uvd_dpm to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %caps_uvd_dpm, align 1
  %caps_vce_pg = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 63
  %32 = ptrtoint ptr %caps_vce_pg to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %caps_vce_pg, align 1
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %mode_info1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #12
  %35 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %frev.i, align 1, !annotation !76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #12
  %36 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %crev.i, align 1, !annotation !76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #12
  %37 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !76
  %38 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mode_info1.i, align 4
  %call2.i = call zeroext i1 @atom_parse_data_header(ptr noundef %39, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #12
  br i1 %call2.i, label %if.then.i, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then.i:                                        ; preds = %if.end38
  %40 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bios.i, align 4
  %44 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %45 to i32
  %add.ptr.i = getelementptr i8, ptr %43, i32 %conv.i
  %46 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %47)
  %cmp.not.i = icmp eq i8 %47, 8
  br i1 %cmp.not.i, label %if.end.i, label %kv_parse_sys_info_table.exit

if.end.i:                                         ; preds = %if.then.i
  %ulBootUpEngineClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 1
  %48 = ptrtoint ptr %ulBootUpEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %ulBootUpEngineClock.i, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #12
  %sys_info.i = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2
  %bootup_sclk.i = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %bootup_sclk.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %bootup_sclk.i, align 4
  %ulBootUpUMAClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 3
  %52 = ptrtoint ptr %ulBootUpUMAClock.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %ulBootUpUMAClock.i, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #12
  %55 = ptrtoint ptr %sys_info.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sys_info.i, align 4
  %usBootUpNBVoltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 57
  %56 = ptrtoint ptr %usBootUpNBVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %usBootUpNBVoltage.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #12
  %bootup_nb_voltage_index.i = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 6
  %59 = ptrtoint ptr %bootup_nb_voltage_index.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %bootup_nb_voltage_index.i, align 4
  %ucHtcTmpLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 10
  %60 = ptrtoint ptr %ucHtcTmpLmt.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ucHtcTmpLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp12.i = icmp eq i8 %61, 0
  %spec.select.i = select i1 %cmp12.i, i8 -53, i8 %61
  %62 = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 7
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.select.i, ptr %62, align 2
  %ucHtcHystLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 11
  %64 = ptrtoint ptr %ucHtcHystLmt.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ucHtcHystLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp21.i = icmp eq i8 %65, 0
  %.sink110.i = select i1 %cmp21.i, i8 5, i8 %65
  %66 = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink110.i, ptr %66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %.sink110.i)
  %cmp36.not.i = icmp ugt i8 %spec.select.i, %.sink110.i
  br i1 %cmp36.not.i, label %if.end.i.if.end39.i_crit_edge, label %if.then38.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then38.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #12
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then38.i, %if.end.i.if.end39.i_crit_edge
  %ulSystemConfig.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 13
  %68 = ptrtoint ptr %ulSystemConfig.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %ulSystemConfig.i, align 1
  %70 = lshr i32 %69, 27
  %.lobit.i = and i32 %70, 1
  %71 = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 3
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.lobit.i, ptr %71, align 4
  %ulNbpStateMemclkFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 53
  %ulNbpStateNClkFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 55
  %73 = ptrtoint ptr %ulNbpStateMemclkFreq.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %ulNbpStateMemclkFreq.i, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74) #12
  %arrayidx49.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 4, i32 0
  %76 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx49.i, align 4
  %77 = ptrtoint ptr %ulNbpStateNClkFreq.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %ulNbpStateNClkFreq.i, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #12
  %arrayidx52.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 5, i32 0
  %80 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx52.i, align 4
  %arrayidx.1.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %arrayidx.1.i, align 1
  %83 = call i32 @llvm.bswap.i32(i32 %82) #12
  %arrayidx49.1.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 4, i32 1
  %84 = ptrtoint ptr %arrayidx49.1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx49.1.i, align 4
  %arrayidx50.1.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %arrayidx50.1.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #12
  %arrayidx52.1.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 5, i32 1
  %88 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx52.1.i, align 4
  %arrayidx.2.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %arrayidx.2.i, align 1
  %91 = call i32 @llvm.bswap.i32(i32 %90) #12
  %arrayidx49.2.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 4, i32 2
  %92 = ptrtoint ptr %arrayidx49.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx49.2.i, align 4
  %arrayidx50.2.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i, i32 0, i32 2
  %93 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %arrayidx50.2.i, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #12
  %arrayidx52.2.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 5, i32 2
  %96 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx52.2.i, align 4
  %arrayidx.3.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i, i32 0, i32 3
  %97 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx.3.i, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98) #12
  %arrayidx49.3.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 4, i32 3
  %100 = ptrtoint ptr %arrayidx49.3.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx49.3.i, align 4
  %arrayidx50.3.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %arrayidx50.3.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #12
  %arrayidx52.3.i = getelementptr %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 5, i32 3
  %104 = ptrtoint ptr %arrayidx52.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx52.3.i, align 4
  %ulGPUCapInfo.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 7
  %105 = ptrtoint ptr %ulGPUCapInfo.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %ulGPUCapInfo.i, align 1
  %107 = and i32 %106, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool54.not.i = icmp eq i32 %107, 0
  br i1 %tobool54.not.i, label %if.end39.i.if.end56.i_crit_edge, label %if.then55.i

if.end39.i.if.end56.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  %caps_enable_dfs_bypass.i = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 67
  %108 = ptrtoint ptr %caps_enable_dfs_bypass.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %caps_enable_dfs_bypass.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.end39.i.if.end56.i_crit_edge
  %sclk_voltage_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 9
  %sAvail_SCLK.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %add.ptr.i, i32 0, i32 24
  call void @sumo_construct_sclk_voltage_mapping_table(ptr noundef %rdev, ptr noundef %sclk_voltage_mapping_table.i, ptr noundef %sAvail_SCLK.i) #12
  %vid_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %34, i32 0, i32 2, i32 10
  call void @sumo_construct_vid_mapping_table(ptr noundef %rdev, ptr noundef %vid_mapping_table.i, ptr noundef %sAvail_SCLK.i) #12
  %109 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %priv, align 4
  %sclk_voltage_mapping_table.i.i = getelementptr inbounds %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 9
  %111 = ptrtoint ptr %sclk_voltage_mapping_table.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sclk_voltage_mapping_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp.not.i.i = icmp eq i32 %112, 0
  br i1 %cmp.not.i.i, label %if.end56.i.kv_construct_max_power_limits_table.exit.i_crit_edge, label %if.then.i.i

if.end56.i.kv_construct_max_power_limits_table.exit.i_crit_edge: ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_construct_max_power_limits_table.exit.i

if.then.i.i:                                      ; preds = %if.end56.i
  %max_clock_voltage_on_ac.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12
  %sub.i.i = add i32 %112, -1
  %arrayidx.i.i = getelementptr %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 9, i32 1, i32 %sub.i.i
  %113 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.i, align 4
  %115 = ptrtoint ptr %max_clock_voltage_on_ac.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %max_clock_voltage_on_ac.i, align 4
  %vid_2bit.i.i = getelementptr %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 9, i32 1, i32 %sub.i.i, i32 1
  %116 = ptrtoint ptr %vid_2bit.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vid_2bit.i.i, align 4
  %conv.i.i = zext i16 %117 to i32
  %dyn_state.i.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %118 = ptrtoint ptr %dyn_state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dyn_state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool1.not.i.i.i.i = icmp eq i32 %119, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else9.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %conv.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %119, %conv.i.i
  %entries.i.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %120 = ptrtoint ptr %entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %entries.i.i.i.i, align 4
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.else.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %v.i.i.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %121, i32 %conv.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add i32 %119, -1
  %v7.i.i.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %121, i32 %sub.i.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i

if.else9.i.i.i.i:                                 ; preds = %if.then.i.i
  %vid_mapping_table.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 10
  %122 = ptrtoint ptr %vid_mapping_table.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vid_mapping_table.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp1046.not.i.i.i.i = icmp eq i32 %123, 0
  br i1 %cmp1046.not.i.i.i.i, label %if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge, label %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge

if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %if.else9.i.i.i.i
  br label %for.body.i.i.i.i

if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %if.else9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.047.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.else9.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx13.i.i.i.i = getelementptr %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i
  %124 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %125, i16 %117)
  %cmp16.i.i.i.i = icmp eq i16 %125, %117
  br i1 %cmp16.i.i.i.i, label %if.then18.i.i.i.i, label %for.inc.i.i.i.i

if.then18.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid_7bit.i.i.i.i = getelementptr %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw i32 %i.047.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %123
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.else9.i.i.i.i.for.end.i.i.i.i_crit_edge
  %sub24.i.i.i.i = add i32 %123, -1
  %vid_7bit26.i.i.i.i = getelementptr %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit.i.i

kv_convert_2bit_index_to_voltage.exit.i.i:        ; preds = %for.end.i.i.i.i, %if.then18.i.i.i.i, %if.else.i.i.i.i, %if.then3.i.i.i.i
  %retval.0.in.in.i.i.i.i = phi ptr [ %v.i.i.i.i, %if.then3.i.i.i.i ], [ %v7.i.i.i.i, %if.else.i.i.i.i ], [ %vid_7bit.i.i.i.i, %if.then18.i.i.i.i ], [ %vid_7bit26.i.i.i.i, %for.end.i.i.i.i ]
  %126 = ptrtoint ptr %retval.0.in.in.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %retval.0.in.i.i.i.i = load i16, ptr %retval.0.in.in.i.i.i.i, align 2
  %mul.neg.i.i.i.i = mul i16 %retval.0.in.i.i.i.i, -25
  %sub.i5.i.i.i = add i16 %mul.neg.i.i.i.i, 6200
  %vddc.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 2
  %127 = ptrtoint ptr %vddc.i.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %sub.i5.i.i.i, ptr %vddc.i.i, align 4
  br label %kv_construct_max_power_limits_table.exit.i

kv_construct_max_power_limits_table.exit.i:       ; preds = %kv_convert_2bit_index_to_voltage.exit.i.i, %if.end56.i.kv_construct_max_power_limits_table.exit.i_crit_edge
  %nbp_memory_clock.i.i = getelementptr inbounds %struct.kv_power_info, ptr %110, i32 0, i32 2, i32 4
  %128 = ptrtoint ptr %nbp_memory_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nbp_memory_clock.i.i, align 4
  %mclk.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 12, i32 1
  %130 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %mclk.i.i, align 4
  br label %if.end42

kv_parse_sys_info_table.exit:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv4.i = zext i8 %47 to i32
  %131 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %frev.i, align 1
  %conv7.i = zext i8 %132 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %conv7.i, i32 noundef %conv4.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #12
  br label %cleanup

if.end42:                                         ; preds = %kv_construct_max_power_limits_table.exit.i, %if.end38.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #12
  %uvd_clock_voltage_dependency_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5
  %vce_clock_voltage_dependency_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6
  %samu_clock_voltage_dependency_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7
  %acp_clock_voltage_dependency_table.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8
  %133 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i, label %if.end42.if.end.i100_crit_edge, label %for.body.lr.ph.i

if.end42.if.end.i100_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i100

for.body.lr.ph.i:                                 ; preds = %if.end42
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0115.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %135 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %entries.i, align 4
  %v.i = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %136, i32 %i.0115.i, i32 2
  %137 = ptrtoint ptr %v.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %v.i, align 4
  %mul.neg.i.i = mul i16 %138, -25
  %sub.i.i98 = add i16 %mul.neg.i.i, 6200
  store i16 %sub.i.i98, ptr %v.i, align 4
  %inc.i = add nuw nsw i32 %i.0115.i, 1
  %139 = ptrtoint ptr %uvd_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %uvd_clock_voltage_dependency_table.i, align 4
  %conv.i99 = zext i8 %140 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i99
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end.i100_crit_edge

for.body.i.if.end.i100_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i100

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i100:                                      ; preds = %for.body.i.if.end.i100_crit_edge, %if.end42.if.end.i100_crit_edge
  %141 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %vce_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool16.not.i = icmp eq i8 %142, 0
  br i1 %tobool16.not.i, label %if.end.i100.if.end34.i_crit_edge, label %for.body23.lr.ph.i

if.end.i100.if.end34.i_crit_edge:                 ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

for.body23.lr.ph.i:                               ; preds = %if.end.i100
  %entries24.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6, i32 1
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.body23.lr.ph.i
  %i.1118.i = phi i32 [ 0, %for.body23.lr.ph.i ], [ %inc32.i, %for.body23.i.for.body23.i_crit_edge ]
  %143 = ptrtoint ptr %entries24.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %entries24.i, align 4
  %v26.i = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %144, i32 %i.1118.i, i32 2
  %145 = ptrtoint ptr %v26.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %v26.i, align 4
  %mul.neg.i107.i = mul i16 %146, -25
  %sub.i108.i = add i16 %mul.neg.i107.i, 6200
  store i16 %sub.i108.i, ptr %v26.i, align 4
  %inc32.i = add nuw nsw i32 %i.1118.i, 1
  %147 = ptrtoint ptr %vce_clock_voltage_dependency_table.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %vce_clock_voltage_dependency_table.i, align 4
  %conv20.i = zext i8 %148 to i32
  %cmp21.i101 = icmp ult i32 %inc32.i, %conv20.i
  br i1 %cmp21.i101, label %for.body23.i.for.body23.i_crit_edge, label %for.body23.i.if.end34.i_crit_edge

for.body23.i.if.end34.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body23.i

if.end34.i:                                       ; preds = %for.body23.i.if.end34.i_crit_edge, %if.end.i100.if.end34.i_crit_edge
  %149 = ptrtoint ptr %samu_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %samu_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool36.not.i = icmp eq i32 %150, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end53.i_crit_edge, label %for.body42.lr.ph.i

if.end34.i.if.end53.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

for.body42.lr.ph.i:                               ; preds = %if.end34.i
  %entries43.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7, i32 1
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %i.2120.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc51.i, %for.body42.i.for.body42.i_crit_edge ]
  %151 = ptrtoint ptr %entries43.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %entries43.i, align 4
  %v45.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %152, i32 %i.2120.i, i32 1
  %153 = ptrtoint ptr %v45.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %v45.i, align 4
  %mul.neg.i109.i = mul i16 %154, -25
  %sub.i110.i = add i16 %mul.neg.i109.i, 6200
  store i16 %sub.i110.i, ptr %v45.i, align 4
  %inc51.i = add nuw i32 %i.2120.i, 1
  %155 = ptrtoint ptr %samu_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %samu_clock_voltage_dependency_table.i, align 4
  %cmp40.i = icmp ult i32 %inc51.i, %156
  br i1 %cmp40.i, label %for.body42.i.for.body42.i_crit_edge, label %for.body42.i.if.end53.i_crit_edge

for.body42.i.if.end53.i_crit_edge:                ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53.i

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body42.i

if.end53.i:                                       ; preds = %for.body42.i.if.end53.i_crit_edge, %if.end34.i.if.end53.i_crit_edge
  %157 = ptrtoint ptr %acp_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %acp_clock_voltage_dependency_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool55.not.i = icmp eq i32 %158, 0
  br i1 %tobool55.not.i, label %if.end53.i.kv_patch_voltage_values.exit_crit_edge, label %for.body61.lr.ph.i

if.end53.i.kv_patch_voltage_values.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_patch_voltage_values.exit

for.body61.lr.ph.i:                               ; preds = %if.end53.i
  %entries62.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8, i32 1
  br label %for.body61.i

for.body61.i:                                     ; preds = %for.body61.i.for.body61.i_crit_edge, %for.body61.lr.ph.i
  %i.3122.i = phi i32 [ 0, %for.body61.lr.ph.i ], [ %inc70.i, %for.body61.i.for.body61.i_crit_edge ]
  %159 = ptrtoint ptr %entries62.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %entries62.i, align 4
  %v64.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %160, i32 %i.3122.i, i32 1
  %161 = ptrtoint ptr %v64.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %v64.i, align 4
  %mul.neg.i111.i = mul i16 %162, -25
  %sub.i112.i = add i16 %mul.neg.i111.i, 6200
  store i16 %sub.i112.i, ptr %v64.i, align 4
  %inc70.i = add nuw i32 %i.3122.i, 1
  %163 = ptrtoint ptr %acp_clock_voltage_dependency_table.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %acp_clock_voltage_dependency_table.i, align 4
  %cmp59.i = icmp ult i32 %inc70.i, %164
  br i1 %cmp59.i, label %for.body61.i.for.body61.i_crit_edge, label %for.body61.i.kv_patch_voltage_values.exit_crit_edge

for.body61.i.kv_patch_voltage_values.exit_crit_edge: ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_patch_voltage_values.exit

for.body61.i.for.body61.i_crit_edge:              ; preds = %for.body61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body61.i

kv_patch_voltage_values.exit:                     ; preds = %for.body61.i.kv_patch_voltage_values.exit_crit_edge, %if.end53.i.kv_patch_voltage_values.exit_crit_edge
  %165 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv, align 4
  %bootup_sclk.i103 = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 2, i32 1
  %167 = ptrtoint ptr %bootup_sclk.i103 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %bootup_sclk.i103, align 4
  %boot_pl.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3
  %169 = ptrtoint ptr %boot_pl.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %boot_pl.i, align 4
  %bootup_nb_voltage_index.i104 = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 2, i32 6
  %170 = ptrtoint ptr %bootup_nb_voltage_index.i104 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %bootup_nb_voltage_index.i104, align 4
  %conv.i105 = trunc i16 %171 to i8
  %vddc_index.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 1
  %172 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %conv.i105, ptr %vddc_index.i, align 4
  %ds_divider_index.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 2
  %173 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %ds_divider_index.i, align 1
  %ss_divider_index.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 3
  %174 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %ss_divider_index.i, align 2
  %allow_gnb_slow.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 4
  %175 = ptrtoint ptr %allow_gnb_slow.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 1, ptr %allow_gnb_slow.i, align 1
  %force_nbp_state.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 5
  %176 = ptrtoint ptr %force_nbp_state.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %force_nbp_state.i, align 4
  %display_wm.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 6
  %177 = ptrtoint ptr %display_wm.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %display_wm.i, align 1
  %vce_wm.i = getelementptr inbounds %struct.kv_power_info, ptr %166, i32 0, i32 3, i32 7
  %178 = ptrtoint ptr %vce_wm.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %vce_wm.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i106) #12
  %179 = ptrtoint ptr %data_offset.i106 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %data_offset.i106, align 2, !annotation !76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i107) #12
  %180 = ptrtoint ptr %frev.i107 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -1, ptr %frev.i107, align 1, !annotation !76
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i108) #12
  %181 = ptrtoint ptr %crev.i108 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 -1, ptr %crev.i108, align 1, !annotation !76
  %182 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %183, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i107, ptr noundef nonnull %crev.i108, ptr noundef nonnull %data_offset.i106) #12
  br i1 %call.i, label %if.end.i114, label %kv_patch_voltage_values.exit.kv_parse_power_table.exit.thread_crit_edge

kv_patch_voltage_values.exit.kv_parse_power_table.exit.thread_crit_edge: ; preds = %kv_patch_voltage_values.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_parse_power_table.exit.thread

if.end.i114:                                      ; preds = %kv_patch_voltage_values.exit
  %184 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mode_info1.i, align 4
  %bios.i110 = getelementptr inbounds %struct.atom_context, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %bios.i110 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %bios.i110, align 4
  %188 = ptrtoint ptr %data_offset.i106 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %data_offset.i106, align 2
  %conv.i111 = zext i16 %189 to i32
  %add.ptr.i112 = getelementptr i8, ptr %187, i32 %conv.i111
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i112, i32 0, i32 6
  %190 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %190, i32 2)
  %191 = load i16, ptr %usStateArrayOffset.i, align 1
  %192 = call i16 @llvm.bswap.i16(i16 %191) #12
  %conv7.i113 = zext i16 %192 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i112, i32 %conv7.i113
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i112, i32 0, i32 7
  %193 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %195 = call i16 @llvm.bswap.i16(i16 %194) #12
  %conv13.i = zext i16 %195 to i32
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i112, i32 %conv13.i
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i112, i32 0, i32 8
  %196 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %196, i32 2)
  %197 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %198 = call i16 @llvm.bswap.i16(i16 %197) #12
  %conv19.i = zext i16 %198 to i32
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i112, i32 %conv19.i
  %199 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %add.ptr8.i, align 1
  %conv21.i = zext i8 %200 to i32
  %201 = mul nuw nsw i32 %conv21.i, 40
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %201, i32 noundef 3520) #16
  %dpm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %202 = ptrtoint ptr %dpm.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call8.i.i.i, ptr %dpm.i, align 4
  %tobool.not.i117 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i117, label %if.end.i114.kv_parse_power_table.exit.thread_crit_edge, label %if.end28.i

if.end.i114.kv_parse_power_table.exit.thread_crit_edge: ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_parse_power_table.exit.thread

if.end28.i:                                       ; preds = %if.end.i114
  %203 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %cmp215.not.i = icmp eq i8 %204, 0
  br i1 %cmp215.not.i, label %if.end28.i.if.end46_crit_edge, label %for.body.lr.ph.i118

if.end28.i.if.end46_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

for.body.lr.ph.i118:                              ; preds = %if.end28.i
  %states.i = getelementptr inbounds %struct._StateArray, ptr %add.ptr8.i, i32 0, i32 1
  %nonClockInfo.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 2
  %power_state34.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %clockInfo.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 2
  %ucEntrySize.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 1
  %ucEntrySize82.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 1
  %boot_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  br label %for.body.i119

for.body.i119:                                    ; preds = %for.inc86.i.for.body.i119_crit_edge, %for.body.lr.ph.i118
  %power_state_offset.0219.i = phi ptr [ %states.i, %for.body.lr.ph.i118 ], [ %add.ptr85.i, %for.inc86.i.for.body.i119_crit_edge ]
  %i.0216.i = phi i32 [ 0, %for.body.lr.ph.i118 ], [ %inc87.i, %for.inc86.i.for.body.i119_crit_edge ]
  %nonClockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0219.i, i32 0, i32 1
  %205 = ptrtoint ptr %nonClockInfoIndex.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %nonClockInfoIndex.i, align 1
  %conv32.i = zext i8 %206 to i32
  %arrayidx.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i
  %207 = ptrtoint ptr %power_state34.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %power_state34.i, align 4
  %clock_info36.i = getelementptr %struct.radeon_power_state, ptr %208, i32 %i.0216.i, i32 1
  %209 = ptrtoint ptr %clock_info36.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %clock_info36.i, align 4
  %tobool37.not.i = icmp eq ptr %210, null
  br i1 %tobool37.not.i, label %for.body.i119.kv_parse_power_table.exit.thread_crit_edge, label %if.end39.i120

for.body.i119.kv_parse_power_table.exit.thread_crit_edge: ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %kv_parse_power_table.exit.thread

if.end39.i120:                                    ; preds = %for.body.i119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %211 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %211, i32 noundef 3520, i32 noundef 72) #15
  %cmp41.i = icmp eq ptr %call7.i.i.i, null
  %212 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dpm.i, align 4
  br i1 %cmp41.i, label %if.then43.i, label %if.end47.i

if.then43.i:                                      ; preds = %if.end39.i120
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %213) #12
  br label %kv_parse_power_table.exit.thread

if.end47.i:                                       ; preds = %if.end39.i120
  %ps_priv.i = getelementptr %struct.radeon_ps, ptr %213, i32 %i.0216.i, i32 9
  %214 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call7.i.i.i, ptr %ps_priv.i, align 4
  %clockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0219.i, i32 0, i32 2
  %215 = ptrtoint ptr %power_state_offset.0219.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %power_state_offset.0219.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %cmp55211.not.i = icmp eq i8 %216, 0
  br i1 %cmp55211.not.i, label %if.end47.i.for.end.i_crit_edge, label %if.end47.i.for.body57.i_crit_edge

if.end47.i.for.body57.i_crit_edge:                ; preds = %if.end47.i
  br label %for.body57.i

if.end47.i.for.end.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body57.i:                                     ; preds = %for.inc.i.for.body57.i_crit_edge, %if.end47.i.for.body57.i_crit_edge
  %k.0213.i = phi i32 [ %k.1.i, %for.inc.i.for.body57.i_crit_edge ], [ 0, %if.end47.i.for.body57.i_crit_edge ]
  %j.0212.i = phi i32 [ %inc77.i, %for.inc.i.for.body57.i_crit_edge ], [ 0, %if.end47.i.for.body57.i_crit_edge ]
  %arrayidx58.i = getelementptr i8, ptr %clockInfoIndex.i, i32 %j.0212.i
  %217 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %218 to i32
  %219 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %add.ptr14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %218, i8 %220)
  %cmp62.not.i = icmp ult i8 %218, %220
  br i1 %cmp62.not.i, label %if.end65.i, label %for.body57.i.for.inc.i_crit_edge

for.body57.i.for.inc.i_crit_edge:                 ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end65.i:                                       ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %k.0213.i)
  %cmp66.i = icmp sgt i32 %k.0213.i, 4
  br i1 %cmp66.i, label %if.end65.i.for.end.i_crit_edge, label %if.end69.i

if.end65.i.for.end.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end69.i:                                       ; preds = %if.end65.i
  %221 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %ucEntrySize.i, align 1
  %conv71.i = zext i8 %222 to i32
  %mul.i = mul nuw nsw i32 %conv71.i, %conv59.i
  %add.ptr72.i = getelementptr i8, ptr %clockInfo.i, i32 %mul.i
  %223 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dpm.i, align 4
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i = getelementptr %struct.radeon_ps, ptr %224, i32 %i.0216.i, i32 9
  %227 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ps_priv.i.i.i, align 4
  %arrayidx.i.i121 = getelementptr [5 x %struct.kv_pl], ptr %228, i32 0, i32 %k.0213.i
  %229 = ptrtoint ptr %add.ptr72.i to i32
  call void @__asan_loadN_noabort(i32 %229, i32 2)
  %230 = load i16, ptr %add.ptr72.i, align 1
  %231 = call i16 @llvm.bswap.i16(i16 %230) #12
  %conv.i.i122 = zext i16 %231 to i32
  %ucEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr72.i, i32 0, i32 1
  %232 = ptrtoint ptr %ucEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %ucEngineClockHigh.i.i, align 1
  %conv2.i.i = zext i8 %233 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i122
  %234 = ptrtoint ptr %arrayidx.i.i121 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %or.i.i, ptr %arrayidx.i.i121, align 4
  %vddcIndex.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr72.i, i32 0, i32 2
  %235 = ptrtoint ptr %vddcIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %vddcIndex.i.i, align 1
  %vddc_index.i.i = getelementptr [5 x %struct.kv_pl], ptr %228, i32 0, i32 %k.0213.i, i32 1
  %237 = ptrtoint ptr %vddc_index.i.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %vddc_index.i.i, align 4
  %add.i.i = add nsw i32 %k.0213.i, 1
  %num_levels.i.i = getelementptr inbounds %struct.kv_ps, ptr %228, i32 0, i32 1
  %238 = ptrtoint ptr %num_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %add.i.i, ptr %num_levels.i.i, align 4
  %caps_sclk_ds.i.i = getelementptr inbounds %struct.kv_power_info, ptr %226, i32 0, i32 68
  %239 = ptrtoint ptr %caps_sclk_ds.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %caps_sclk_ds.i.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i.i = icmp eq i8 %240, 0
  br i1 %tobool.not.i.i, label %if.end69.i.for.inc.i_crit_edge, label %if.then.i.i123

if.end69.i.for.inc.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i.i123:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #14
  %ds_divider_index.i.i = getelementptr [5 x %struct.kv_pl], ptr %228, i32 0, i32 %k.0213.i, i32 2
  %241 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 5, ptr %ds_divider_index.i.i, align 1
  %ss_divider_index.i.i = getelementptr [5 x %struct.kv_pl], ptr %228, i32 0, i32 %k.0213.i, i32 3
  %242 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 5, ptr %ss_divider_index.i.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i123, %if.end69.i.for.inc.i_crit_edge, %for.body57.i.for.inc.i_crit_edge
  %k.1.i = phi i32 [ %k.0213.i, %for.body57.i.for.inc.i_crit_edge ], [ %add.i.i, %if.end69.i.for.inc.i_crit_edge ], [ %add.i.i, %if.then.i.i123 ]
  %inc77.i = add nuw nsw i32 %j.0212.i, 1
  %243 = ptrtoint ptr %power_state_offset.0219.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %power_state_offset.0219.i, align 1
  %conv54.i = zext i8 %244 to i32
  %cmp55.i = icmp ult i32 %inc77.i, %conv54.i
  br i1 %cmp55.i, label %for.inc.i.for.body57.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body57.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body57.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end65.i.for.end.i_crit_edge, %if.end47.i.for.end.i_crit_edge
  %245 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dpm.i, align 4
  %arrayidx81.i = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i
  %247 = ptrtoint ptr %ucEntrySize82.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %ucEntrySize82.i, align 1
  %ps_priv.i.i192.i = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i, i32 9
  %249 = ptrtoint ptr %ps_priv.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ps_priv.i.i192.i, align 4
  %ulCapsAndSettings.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 3
  %251 = ptrtoint ptr %ulCapsAndSettings.i.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 4)
  %252 = load i32, ptr %ulCapsAndSettings.i.i, align 1
  %253 = call i32 @llvm.bswap.i32(i32 %252) #12
  %254 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %253, ptr %arrayidx81.i, align 4
  %255 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %255, i32 2)
  %256 = load i16, ptr %arrayidx.i, align 1
  %257 = call i16 @llvm.bswap.i16(i16 %256) #12
  %conv.i193.i = zext i16 %257 to i32
  %class.i.i = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i, i32 1
  %258 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %conv.i193.i, ptr %class.i.i, align 4
  %usClassification2.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 5
  %259 = ptrtoint ptr %usClassification2.i.i to i32
  call void @__asan_loadN_noabort(i32 %259, i32 2)
  %260 = load i16, ptr %usClassification2.i.i, align 1
  %261 = call i16 @llvm.bswap.i16(i16 %260) #12
  %conv1.i.i = zext i16 %261 to i32
  %class2.i.i = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i, i32 2
  %262 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %conv1.i.i, ptr %class2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %248)
  %cmp.i.i = icmp ugt i8 %248, 12
  br i1 %cmp.i.i, label %if.then.i194.i, label %if.else.i.i

if.then.i194.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %ulVCLK.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 6
  %263 = ptrtoint ptr %ulVCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %263, i32 4)
  %264 = load i32, ptr %ulVCLK.i.i, align 1
  %265 = call i32 @llvm.bswap.i32(i32 %264) #12
  %vclk.i.i = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i, i32 3
  %266 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %265, ptr %vclk.i.i, align 4
  %ulDCLK.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 7
  %267 = ptrtoint ptr %ulDCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %267, i32 4)
  %268 = load i32, ptr %ulDCLK.i.i, align 1
  %269 = call i32 @llvm.bswap.i32(i32 %268) #12
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %vclk4.i.i = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i, i32 3
  %270 = ptrtoint ptr %vclk4.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %vclk4.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i194.i
  %.sink.i.i = phi i32 [ %269, %if.then.i194.i ], [ 0, %if.else.i.i ]
  %271 = getelementptr %struct.radeon_ps, ptr %246, i32 %i.0216.i, i32 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %.sink.i.i, ptr %271, align 4
  %and.i.i = and i32 %conv.i193.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i195.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i195.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %273 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %arrayidx81.i, ptr %boot_ps.i.i, align 4
  %274 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %priv, align 4
  %num_levels.i.i.i = getelementptr inbounds %struct.kv_ps, ptr %250, i32 0, i32 1
  %276 = ptrtoint ptr %num_levels.i.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 1, ptr %num_levels.i.i.i, align 4
  %boot_pl.i.i.i = getelementptr inbounds %struct.kv_power_info, ptr %275, i32 0, i32 3
  %277 = call ptr @memcpy(ptr %250, ptr %boot_pl.i.i.i, i32 12)
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %278 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %class.i.i, align 4
  %and10.i.i = and i32 %279, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end8.i.i.for.inc86.i_crit_edge, label %if.then12.i.i

if.end8.i.i.for.inc86.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc86.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %280 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %arrayidx81.i, ptr %uvd_ps.i.i, align 4
  br label %for.inc86.i

for.inc86.i:                                      ; preds = %if.then12.i.i, %if.end8.i.i.for.inc86.i_crit_edge
  %281 = ptrtoint ptr %power_state_offset.0219.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %power_state_offset.0219.i, align 1
  %conv84.i = zext i8 %282 to i32
  %add.i = add nuw nsw i32 %conv84.i, 2
  %add.ptr85.i = getelementptr i8, ptr %power_state_offset.0219.i, i32 %add.i
  %inc87.i = add nuw nsw i32 %i.0216.i, 1
  %283 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %add.ptr8.i, align 1
  %conv30.i = zext i8 %284 to i32
  %cmp.i124 = icmp ult i32 %inc87.i, %conv30.i
  br i1 %cmp.i124, label %for.inc86.i.for.body.i119_crit_edge, label %if.end46.loopexit

for.inc86.i.for.body.i119_crit_edge:              ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i119

kv_parse_power_table.exit.thread:                 ; preds = %if.then43.i, %for.body.i119.kv_parse_power_table.exit.thread_crit_edge, %if.end.i114.kv_parse_power_table.exit.thread_crit_edge, %kv_patch_voltage_values.exit.kv_parse_power_table.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ -12, %if.then43.i ], [ -12, %if.end.i114.kv_parse_power_table.exit.thread_crit_edge ], [ -22, %kv_patch_voltage_values.exit.kv_parse_power_table.exit.thread_crit_edge ], [ -22, %for.body.i119.kv_parse_power_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i108) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i107) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i106) #12
  br label %cleanup

if.end46.loopexit:                                ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv30.i.le = zext i8 %284 to i32
  br label %if.end46

if.end46:                                         ; preds = %if.end46.loopexit, %if.end28.i.if.end46_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end28.i.if.end46_crit_edge ], [ %conv30.i.le, %if.end46.loopexit ]
  %num_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %285 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %.lcssa.i, ptr %num_ps.i, align 4
  %clockInfo101.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 2
  %ucEntrySize102.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 1
  %clk_idx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 4
  %286 = ptrtoint ptr %clk_idx.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %clk_idx.i, align 4
  %conv100.i = zext i8 %287 to i32
  %288 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.i = zext i8 %289 to i32
  %mul104.i = mul nuw nsw i32 %conv103.i, %conv100.i
  %arrayidx105.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.i
  %290 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_loadN_noabort(i32 %290, i32 2)
  %291 = load i16, ptr %arrayidx105.i, align 1
  %292 = call i16 @llvm.bswap.i16(i16 %291) #12
  %conv106.i = zext i16 %292 to i32
  %ucEngineClockHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.i, i32 0, i32 1
  %293 = ptrtoint ptr %ucEngineClockHigh.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %ucEngineClockHigh.i, align 1
  %conv107.i = zext i8 %294 to i32
  %shl.i = shl nuw nsw i32 %conv107.i, 16
  %or.i = or i32 %shl.i, %conv106.i
  %sclk112.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 2
  %295 = ptrtoint ptr %sclk112.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %or.i, ptr %sclk112.i, align 4
  %mclk.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 3
  %296 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 0, ptr %mclk.i, align 4
  %clk_idx.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 4
  %297 = ptrtoint ptr %clk_idx.1.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %clk_idx.1.i, align 4
  %conv100.1.i = zext i8 %298 to i32
  %299 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.1.i = zext i8 %300 to i32
  %mul104.1.i = mul nuw nsw i32 %conv103.1.i, %conv100.1.i
  %arrayidx105.1.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.1.i
  %301 = ptrtoint ptr %arrayidx105.1.i to i32
  call void @__asan_loadN_noabort(i32 %301, i32 2)
  %302 = load i16, ptr %arrayidx105.1.i, align 1
  %303 = call i16 @llvm.bswap.i16(i16 %302) #12
  %conv106.1.i = zext i16 %303 to i32
  %ucEngineClockHigh.1.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.1.i, i32 0, i32 1
  %304 = ptrtoint ptr %ucEngineClockHigh.1.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %ucEngineClockHigh.1.i, align 1
  %conv107.1.i = zext i8 %305 to i32
  %shl.1.i = shl nuw nsw i32 %conv107.1.i, 16
  %or.1.i = or i32 %shl.1.i, %conv106.1.i
  %sclk112.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 2
  %306 = ptrtoint ptr %sclk112.1.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %or.1.i, ptr %sclk112.1.i, align 4
  %mclk.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 3
  %307 = ptrtoint ptr %mclk.1.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 0, ptr %mclk.1.i, align 4
  %clk_idx.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 4
  %308 = ptrtoint ptr %clk_idx.2.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %clk_idx.2.i, align 4
  %conv100.2.i = zext i8 %309 to i32
  %310 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.2.i = zext i8 %311 to i32
  %mul104.2.i = mul nuw nsw i32 %conv103.2.i, %conv100.2.i
  %arrayidx105.2.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.2.i
  %312 = ptrtoint ptr %arrayidx105.2.i to i32
  call void @__asan_loadN_noabort(i32 %312, i32 2)
  %313 = load i16, ptr %arrayidx105.2.i, align 1
  %314 = call i16 @llvm.bswap.i16(i16 %313) #12
  %conv106.2.i = zext i16 %314 to i32
  %ucEngineClockHigh.2.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.2.i, i32 0, i32 1
  %315 = ptrtoint ptr %ucEngineClockHigh.2.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %ucEngineClockHigh.2.i, align 1
  %conv107.2.i = zext i8 %316 to i32
  %shl.2.i = shl nuw nsw i32 %conv107.2.i, 16
  %or.2.i = or i32 %shl.2.i, %conv106.2.i
  %sclk112.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 2
  %317 = ptrtoint ptr %sclk112.2.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %or.2.i, ptr %sclk112.2.i, align 4
  %mclk.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 3
  %318 = ptrtoint ptr %mclk.2.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %mclk.2.i, align 4
  %clk_idx.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 4
  %319 = ptrtoint ptr %clk_idx.3.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %clk_idx.3.i, align 4
  %conv100.3.i = zext i8 %320 to i32
  %321 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.3.i = zext i8 %322 to i32
  %mul104.3.i = mul nuw nsw i32 %conv103.3.i, %conv100.3.i
  %arrayidx105.3.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.3.i
  %323 = ptrtoint ptr %arrayidx105.3.i to i32
  call void @__asan_loadN_noabort(i32 %323, i32 2)
  %324 = load i16, ptr %arrayidx105.3.i, align 1
  %325 = call i16 @llvm.bswap.i16(i16 %324) #12
  %conv106.3.i = zext i16 %325 to i32
  %ucEngineClockHigh.3.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.3.i, i32 0, i32 1
  %326 = ptrtoint ptr %ucEngineClockHigh.3.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %ucEngineClockHigh.3.i, align 1
  %conv107.3.i = zext i8 %327 to i32
  %shl.3.i = shl nuw nsw i32 %conv107.3.i, 16
  %or.3.i = or i32 %shl.3.i, %conv106.3.i
  %sclk112.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 2
  %328 = ptrtoint ptr %sclk112.3.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %or.3.i, ptr %sclk112.3.i, align 4
  %mclk.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 3
  %329 = ptrtoint ptr %mclk.3.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %mclk.3.i, align 4
  %clk_idx.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 4
  %330 = ptrtoint ptr %clk_idx.4.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %clk_idx.4.i, align 4
  %conv100.4.i = zext i8 %331 to i32
  %332 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.4.i = zext i8 %333 to i32
  %mul104.4.i = mul nuw nsw i32 %conv103.4.i, %conv100.4.i
  %arrayidx105.4.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.4.i
  %334 = ptrtoint ptr %arrayidx105.4.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 2)
  %335 = load i16, ptr %arrayidx105.4.i, align 1
  %336 = call i16 @llvm.bswap.i16(i16 %335) #12
  %conv106.4.i = zext i16 %336 to i32
  %ucEngineClockHigh.4.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.4.i, i32 0, i32 1
  %337 = ptrtoint ptr %ucEngineClockHigh.4.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %ucEngineClockHigh.4.i, align 1
  %conv107.4.i = zext i8 %338 to i32
  %shl.4.i = shl nuw nsw i32 %conv107.4.i, 16
  %or.4.i = or i32 %shl.4.i, %conv106.4.i
  %sclk112.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 2
  %339 = ptrtoint ptr %sclk112.4.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %or.4.i, ptr %sclk112.4.i, align 4
  %mclk.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 3
  %340 = ptrtoint ptr %mclk.4.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 0, ptr %mclk.4.i, align 4
  %clk_idx.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 4
  %341 = ptrtoint ptr %clk_idx.5.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %clk_idx.5.i, align 4
  %conv100.5.i = zext i8 %342 to i32
  %343 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.5.i = zext i8 %344 to i32
  %mul104.5.i = mul nuw nsw i32 %conv103.5.i, %conv100.5.i
  %arrayidx105.5.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.5.i
  %345 = ptrtoint ptr %arrayidx105.5.i to i32
  call void @__asan_loadN_noabort(i32 %345, i32 2)
  %346 = load i16, ptr %arrayidx105.5.i, align 1
  %347 = call i16 @llvm.bswap.i16(i16 %346) #12
  %conv106.5.i = zext i16 %347 to i32
  %ucEngineClockHigh.5.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.5.i, i32 0, i32 1
  %348 = ptrtoint ptr %ucEngineClockHigh.5.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %ucEngineClockHigh.5.i, align 1
  %conv107.5.i = zext i8 %349 to i32
  %shl.5.i = shl nuw nsw i32 %conv107.5.i, 16
  %or.5.i = or i32 %shl.5.i, %conv106.5.i
  %sclk112.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 2
  %350 = ptrtoint ptr %sclk112.5.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %or.5.i, ptr %sclk112.5.i, align 4
  %mclk.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 3
  %351 = ptrtoint ptr %mclk.5.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 0, ptr %mclk.5.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i108) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i107) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i106) #12
  %enable_dpm = getelementptr inbounds %struct.kv_power_info, ptr %call7.i.i, i32 0, i32 50
  %352 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 1, ptr %enable_dpm, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %kv_parse_power_table.exit.thread, %kv_parse_sys_info_table.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -22, %kv_parse_sys_info_table.exit ], [ %retval.2.i.ph, %kv_parse_power_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_parse_extended_power_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_debugfs_print_current_performance_level(ptr noundef %rdev, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %call1 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1071644652) #12
  %and = lshr i32 %call1, 16
  %shr = and i32 %and, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp ugt i32 %shr, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %shr) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %SclkFrequency = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %shr, i32 1
  %2 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SclkFrequency, align 4
  %call2 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1071644524) #12
  %4 = lshr i32 %call2, 1
  %conv = and i32 %4, 255
  %mul.neg.i = mul nuw nsw i32 %conv, 65511
  %sub.i = add nuw nsw i32 %mul.neg.i, 6200
  %uvd_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %uvd_power_gated to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %uvd_power_gated, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #12
  %vce_power_gated = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 45
  %7 = ptrtoint ptr %vce_power_gated to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vce_power_gated, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  %cond9 = select i1 %tobool7.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond9) #12
  %conv10 = and i32 %sub.i, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %shr, i32 noundef %3, i32 noundef %conv10) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tn_smc_rreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kv_dpm_get_current_sclk(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %call1 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -1071644652) #12
  %and = lshr i32 %call1, 16
  %shr = and i32 %and, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp ugt i32 %shr, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %SclkFrequency = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 22, i32 %shr, i32 1
  %2 = ptrtoint ptr %SclkFrequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SclkFrequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kv_dpm_get_current_mclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %sys_info = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_info, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  tail call void @r600_dpm_print_class_info(i32 noundef %3, i32 noundef %5) #12
  %6 = ptrtoint ptr %rps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rps, align 4
  tail call void @r600_dpm_print_cap_info(i32 noundef %7) #12
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %9, i32 noundef %11) #17
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21.not = icmp eq i32 %13, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.022
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %vddc_index = getelementptr [5 x %struct.kv_pl], ptr %1, i32 0, i32 %i.022, i32 1
  %16 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vddc_index, align 4
  %conv = zext i8 %17 to i32
  %mul.neg.i = mul nuw nsw i32 %conv, 65511
  %sub.i = add nuw nsw i32 %mul.neg.i, 6200
  %conv7 = and i32 %sub.i, 65535
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %i.022, i32 noundef %15, i32 noundef %conv7) #17
  %inc = add nuw i32 %i.022, 1
  %18 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_levels, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kv_dpm_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %num_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %0 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14 = icmp sgt i32 %1, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %ps_priv = getelementptr %struct.radeon_ps, ptr %3, i32 %i.015, i32 9
  %4 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv, align 4
  tail call void @kfree(ptr noundef %5) #12
  %inc = add nuw nsw i32 %i.015, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #12
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #12
  tail call void @r600_free_extended_power_table(ptr noundef %rdev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_free_extended_power_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @kv_dpm_display_configuration_changed(ptr nocapture noundef %rdev) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kv_dpm_get_sclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 71, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  br i1 %low, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %num_levels = getelementptr inbounds %struct.kv_ps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_levels, align 4
  %sub = add i32 %5, -1
  %arrayidx3 = getelementptr [5 x %struct.kv_pl], ptr %3, i32 0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0.in = phi ptr [ %arrayidx3, %if.else ], [ %3, %entry.cleanup_crit_edge ]
  %6 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kv_dpm_get_mclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %sys_info = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_info, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_read_smc_sram_dword(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_copy_bytes_to_smc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tn_smc_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_smc_dpm_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_enter_rlc_safe_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_exit_rlc_safe_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cik_didt_rreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cik_didt_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_send_msg_to_smc_with_parameter(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v2_0_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vce_v1_0_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kv_dpm_get_enable_mask(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kv_get_high_voltage_limit(ptr noundef readonly %rdev, ptr nocapture noundef writeonly %limit) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %dyn_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %tobool.not = icmp eq ptr %dyn_state, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dyn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %for.cond.preheader

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.cond.preheader:                               ; preds = %land.lhs.true
  %i.05 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.05)
  %cmp6 = icmp sgt i32 %i.05, -1
  br i1 %cmp6, label %for.body.lr.ph, label %for.cond.preheader.cleanup37_crit_edge

for.cond.preheader.cleanup37_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %high_voltage_t = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %high_voltage_t to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %high_voltage_t, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ %i.05, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true4:                                   ; preds = %for.body
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %v = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %7, i32 %i.07, i32 1
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %v, align 4
  %mul.neg.i = mul i16 %9, -25
  %sub.i = add i16 %mul.neg.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %5)
  %cmp9.not = icmp ugt i16 %sub.i, %5
  br i1 %cmp9.not, label %land.lhs.true4.for.inc_crit_edge, label %land.lhs.true4.cleanup37_crit_edge

land.lhs.true4.cleanup37_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

land.lhs.true4.for.inc_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.07, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup37_crit_edge

for.inc.cleanup37_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %sclk_voltage_mapping_table = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 9
  %10 = ptrtoint ptr %sclk_voltage_mapping_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sclk_voltage_mapping_table, align 4
  %i.19 = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.19)
  %cmp1510 = icmp sgt i32 %i.19, -1
  br i1 %cmp1510, label %for.body17.lr.ph, label %if.else.cleanup37_crit_edge

if.else.cleanup37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

for.body17.lr.ph:                                 ; preds = %if.else
  %high_voltage_t18 = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %high_voltage_t18 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %high_voltage_t18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool20.not = icmp eq i16 %13, 0
  %entries.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %vid_mapping_table.i = getelementptr inbounds %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10
  br label %for.body17

for.body17:                                       ; preds = %for.inc33.for.body17_crit_edge, %for.body17.lr.ph
  %i.111 = phi i32 [ %i.19, %for.body17.lr.ph ], [ %i.1, %for.inc33.for.body17_crit_edge ]
  br i1 %tobool20.not, label %for.body17.for.inc33_crit_edge, label %land.lhs.true21

for.body17.for.inc33_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc33

land.lhs.true21:                                  ; preds = %for.body17
  %vid_2bit = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 9, i32 1, i32 %i.111, i32 1
  %14 = ptrtoint ptr %vid_2bit to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid_2bit, align 4
  %conv24 = zext i16 %15 to i32
  %16 = ptrtoint ptr %dyn_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dyn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool1.not.i.i, label %if.else9.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv24)
  %cmp.i.i = icmp ugt i32 %17, %conv24
  %18 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries.i.i, align 4
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %v.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %19, i32 %conv24, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %17, -1
  %v7.i.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %19, i32 %sub.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

if.else9.i.i:                                     ; preds = %land.lhs.true21
  %20 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1046.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp1046.not.i.i, label %if.else9.i.i.for.end.i.i_crit_edge, label %if.else9.i.i.for.body.i.i_crit_edge

if.else9.i.i.for.body.i.i_crit_edge:              ; preds = %if.else9.i.i
  br label %for.body.i.i

if.else9.i.i.for.end.i.i_crit_edge:               ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else9.i.i.for.body.i.i_crit_edge
  %i.047.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else9.i.i.for.body.i.i_crit_edge ]
  %arrayidx13.i.i = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i
  %22 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx13.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %15)
  %cmp16.i.i = icmp eq i16 %23, %15
  br i1 %cmp16.i.i, label %if.then18.i.i, label %for.inc.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %vid_7bit.i.i = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10, i32 1, i32 %i.047.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.else9.i.i.for.end.i.i_crit_edge
  %sub24.i.i = add i32 %21, -1
  %vid_7bit26.i.i = getelementptr %struct.kv_power_info, ptr %1, i32 0, i32 2, i32 10, i32 1, i32 %sub24.i.i, i32 1
  br label %kv_convert_2bit_index_to_voltage.exit

kv_convert_2bit_index_to_voltage.exit:            ; preds = %for.end.i.i, %if.then18.i.i, %if.else.i.i, %if.then3.i.i
  %retval.0.in.in.i.i = phi ptr [ %v.i.i, %if.then3.i.i ], [ %v7.i.i, %if.else.i.i ], [ %vid_7bit.i.i, %if.then18.i.i ], [ %vid_7bit26.i.i, %for.end.i.i ]
  %24 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %retval.0.in.i.i = load i16, ptr %retval.0.in.in.i.i, align 2
  %mul.neg.i.i = mul i16 %retval.0.in.i.i, -25
  %sub.i5.i = add i16 %mul.neg.i.i, 6200
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i5.i, i16 %13)
  %cmp29.not = icmp ugt i16 %sub.i5.i, %13
  br i1 %cmp29.not, label %kv_convert_2bit_index_to_voltage.exit.for.inc33_crit_edge, label %kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge

kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

kv_convert_2bit_index_to_voltage.exit.for.inc33_crit_edge: ; preds = %kv_convert_2bit_index_to_voltage.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc33

for.inc33:                                        ; preds = %kv_convert_2bit_index_to_voltage.exit.for.inc33_crit_edge, %for.body17.for.inc33_crit_edge
  %i.1 = add i32 %i.111, -1
  %cmp15 = icmp sgt i32 %i.1, -1
  br i1 %cmp15, label %for.inc33.for.body17_crit_edge, label %for.inc33.cleanup37_crit_edge

for.inc33.cleanup37_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup37

for.inc33.for.body17_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body17

cleanup37:                                        ; preds = %for.inc33.cleanup37_crit_edge, %kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge, %if.else.cleanup37_crit_edge, %for.inc.cleanup37_crit_edge, %land.lhs.true4.cleanup37_crit_edge, %for.cond.preheader.cleanup37_crit_edge
  %i.111.lcssa.sink = phi i32 [ 0, %for.cond.preheader.cleanup37_crit_edge ], [ 0, %if.else.cleanup37_crit_edge ], [ %i.111, %kv_convert_2bit_index_to_voltage.exit.cleanup37_crit_edge ], [ 0, %for.inc33.cleanup37_crit_edge ], [ %i.07, %land.lhs.true4.cleanup37_crit_edge ], [ 0, %for.inc.cleanup37_crit_edge ]
  %25 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.111.lcssa.sink, ptr %limit, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_get_sleep_divider_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_construct_sclk_voltage_mapping_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_construct_vid_mapping_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1011, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1035, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1042, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1048, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1053, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1058, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1063, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1068, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1077, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1083, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1088, i32 3}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1093, i32 3}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1098, i32 3}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1104, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1109, i32 3}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1134, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1694, i32 5}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 1710, i32 5}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2609, i32 17}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2615, i32 17}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2615, i32 59}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2615, i32 67}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2616, i32 17}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2617, i32 17}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2653, i32 2}
!50 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @kv_dpm_print_power_state._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @kv_dpm_print_power_state._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2656, i32 3}
!56 = !{ptr @kv_dpm_print_power_state._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @kv_dpm_print_power_state._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @didt_config_kv, !59, !"didt_config_kv", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 67, i32 38}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2261, i32 3}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2302, i32 4}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/radeon/kv_dpm.c", i32 2318, i32 4}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = !{!"auto-init"}
!77 = !{i64 5053145}
!78 = !{i64 2158456326}
!79 = !{i64 2158456733}
!80 = !{i64 5052727}
