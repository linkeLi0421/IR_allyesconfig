; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/trinity_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/trinity_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.trinity_power_info = type { [5 x i32], i32, i32, %struct.trinity_sys_info, %struct.trinity_pl, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.radeon_ps, %struct.trinity_ps, %struct.radeon_ps, %struct.trinity_ps }
%struct.trinity_sys_info = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i16], i16, i8, i8, %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_vid_mapping_table, i32, [4 x %struct.trinity_uvd_clock_table_entry] }
%struct.sumo_sclk_voltage_mapping_table = type { i32, [5 x %struct.sumo_sclk_voltage_mapping_entry] }
%struct.sumo_sclk_voltage_mapping_entry = type { i32, i16, i16 }
%struct.sumo_vid_mapping_table = type { i32, [4 x %struct.sumo_vid_mapping_entry] }
%struct.sumo_vid_mapping_entry = type { i16, i16 }
%struct.trinity_uvd_clock_table_entry = type { i32, i32, i8, i8, [2 x i8] }
%struct.trinity_pl = type { i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.trinity_ps = type { i32, [5 x %struct.trinity_pl], i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
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
%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }
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
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i16, i16, [4 x i32], i8, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
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

@radeon_bapm = external dso_local local_unnamed_addr global i32, align 4
@trinity_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"trinity_dpm_print_power_state\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/radeon/trinity_dpm.c\00", [59 x i8] zeroinitializer }, align 32
@trinity_dpm_print_power_state._entry_ptr = internal global ptr @trinity_dpm_print_power_state._entry, section ".printk_index", align 4
@trinity_dpm_print_power_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1980, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09\09power level %d    sclk: %u vddc: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@trinity_dpm_print_power_state._entry_ptr.5 = internal global ptr @trinity_dpm_print_power_state._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"power level %d    sclk: %u vddc: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@trinity_mgcg_shls_default = internal constant { [222 x i32], [200 x i8] } { [222 x i32] [i32 32812, i32 -1073741824, i32 -1, i32 16324, i32 -1073741824, i32 -1, i32 21576, i32 256, i32 -1, i32 21988, i32 256, i32 -1, i32 5644, i32 256, i32 -1, i32 35204, i32 100663552, i32 -1, i32 49508, i32 256, i32 -1, i32 35352, i32 256, i32 -1, i32 35196, i32 100663552, i32 -1, i32 35624, i32 256, i32 -1, i32 37188, i32 8389120, i32 -1, i32 39520, i32 256, i32 -1, i32 39016, i32 256, i32 -1, i32 36184, i32 256, i32 -1, i32 38160, i32 256, i32 -1, i32 38044, i32 256, i32 -1, i32 38484, i32 256, i32 -1, i32 36912, i32 256, i32 -1, i32 36916, i32 256, i32 -1, i32 36920, i32 256, i32 -1, i32 36924, i32 256, i32 -1, i32 36928, i32 256, i32 -1, i32 41472, i32 256, i32 -1, i32 41476, i32 256, i32 -1, i32 41480, i32 256, i32 -1, i32 41484, i32 256, i32 -1, i32 38724, i32 256, i32 -1, i32 16256, i32 256, i32 -1, i32 41488, i32 256, i32 -1, i32 41492, i32 256, i32 -1, i32 1240, i32 256, i32 -1, i32 38500, i32 256, i32 -1, i32 38552, i32 256, i32 -1, i32 1236, i32 512, i32 -1, i32 1232, i32 0, i32 -1, i32 12492, i32 260, i32 -1, i32 53440, i32 256, i32 -1, i32 55488, i32 256, i32 -1, i32 38172, i32 65536, i32 -1, i32 37216, i32 196610, i32 -1, i32 37220, i32 327684, i32 -1, i32 37224, i32 458758, i32 -1, i32 37240, i32 458752, i32 -1, i32 37244, i32 196610, i32 -1, i32 37248, i32 327684, i32 -1, i32 37260, i32 65542, i32 -1, i32 37264, i32 589832, i32 -1, i32 37268, i32 458752, i32 -1, i32 37272, i32 196610, i32 -1, i32 37276, i32 327684, i32 -1, i32 37288, i32 65542, i32 -1, i32 37292, i32 589832, i32 -1, i32 37296, i32 458752, i32 -1, i32 37300, i32 196610, i32 -1, i32 37304, i32 327684, i32 -1, i32 37316, i32 65542, i32 -1, i32 37320, i32 589832, i32 -1, i32 37324, i32 458752, i32 -1, i32 37328, i32 196610, i32 -1, i32 37332, i32 327684, i32 -1, i32 37344, i32 65542, i32 -1, i32 37348, i32 589832, i32 -1, i32 37352, i32 0, i32 -1, i32 37356, i32 458752, i32 -1, i32 37360, i32 196610, i32 -1, i32 37364, i32 327684, i32 -1, i32 37376, i32 65542, i32 -1, i32 37380, i32 589832, i32 -1, i32 37384, i32 458752, i32 -1, i32 37388, i32 196610, i32 -1, i32 37392, i32 327684, i32 -1, i32 37404, i32 65542, i32 -1, i32 37408, i32 589832, i32 -1, i32 37524, i32 0, i32 -1], [200 x i8] zeroinitializer }, align 32
@trinity_override_mgpg_sequences = internal constant { [240 x i32], [224 x i8] } { [240 x i32] [i32 512, i32 -533724372, i32 516, i32 4095, i32 512, i32 -533725096, i32 516, i32 197377, i32 512, i32 -533725100, i32 516, i32 1342181631, i32 512, i32 -533725068, i32 516, i32 197377, i32 512, i32 -533725072, i32 516, i32 1342181631, i32 512, i32 -533725040, i32 516, i32 197377, i32 512, i32 -533725044, i32 516, i32 1342181631, i32 512, i32 -533725012, i32 516, i32 197377, i32 512, i32 -533725016, i32 516, i32 1342181631, i32 512, i32 -533724984, i32 516, i32 197377, i32 512, i32 -533724988, i32 516, i32 1342181631, i32 512, i32 -533724956, i32 516, i32 197377, i32 512, i32 -533724960, i32 516, i32 1342181631, i32 512, i32 -533724928, i32 516, i32 197377, i32 512, i32 -533724932, i32 516, i32 1342181631, i32 512, i32 -533725096, i32 516, i32 197379, i32 512, i32 -533725100, i32 516, i32 1610617087, i32 512, i32 -533725068, i32 516, i32 197379, i32 512, i32 -533725072, i32 516, i32 1610617087, i32 512, i32 -533725040, i32 516, i32 197379, i32 512, i32 -533725044, i32 516, i32 1610617087, i32 512, i32 -533725012, i32 516, i32 197379, i32 512, i32 -533725016, i32 516, i32 1610617087, i32 512, i32 -533724984, i32 516, i32 197379, i32 512, i32 -533724988, i32 516, i32 1610617087, i32 512, i32 -533724956, i32 516, i32 197379, i32 512, i32 -533724960, i32 516, i32 1610617087, i32 512, i32 -533724928, i32 516, i32 197379, i32 512, i32 -533724932, i32 516, i32 1610617087, i32 512, i32 -533725096, i32 516, i32 197379, i32 512, i32 -533725100, i32 516, i32 1879052543, i32 512, i32 -533725068, i32 516, i32 197379, i32 512, i32 -533725072, i32 516, i32 1879052543, i32 512, i32 -533725040, i32 516, i32 197379, i32 512, i32 -533725044, i32 516, i32 1879052543, i32 512, i32 -533725012, i32 516, i32 197379, i32 512, i32 -533725016, i32 516, i32 1879052543, i32 512, i32 -533724984, i32 516, i32 197379, i32 512, i32 -533724988, i32 516, i32 1879052543, i32 512, i32 -533724956, i32 516, i32 197379, i32 512, i32 -533724960, i32 516, i32 1879052543, i32 512, i32 -533724928, i32 516, i32 197379, i32 512, i32 -533724932, i32 516, i32 1879052543, i32 512, i32 -533725096, i32 516, i32 66307, i32 512, i32 -533725100, i32 516, i32 -2147479297, i32 512, i32 -533725068, i32 516, i32 66307, i32 512, i32 -533725072, i32 516, i32 -2147479297, i32 512, i32 -533725040, i32 516, i32 66307, i32 512, i32 -533725044, i32 516, i32 -2147479297, i32 512, i32 -533725012, i32 516, i32 66307, i32 512, i32 -533725016, i32 516, i32 -2147479297, i32 512, i32 -533724988, i32 516, i32 -2147479297, i32 512, i32 -533724984, i32 516, i32 66307, i32 512, i32 -533724956, i32 516, i32 66307, i32 512, i32 -533724960, i32 516, i32 -2147479297, i32 512, i32 -533724928, i32 516, i32 66307, i32 512, i32 -533724932, i32 516, i32 -2147479297, i32 512, i32 127384, i32 516, i32 262143, i32 512, i32 127388, i32 516, i32 1073741823, i32 512, i32 -533724372, i32 516, i32 0], [224 x i8] zeroinitializer }, align 32
@trinity_sysls_enable = internal constant { [51 x i32], [52 x i8] } { [51 x i32] [i32 21992, i32 1, i32 -1, i32 53436, i32 256, i32 -1, i32 55484, i32 256, i32 -1, i32 5568, i32 791553, i32 -1, i32 9804, i32 787456, i32 -1, i32 9800, i32 787456, i32 -1, i32 9808, i32 787456, i32 -1, i32 8376, i32 787456, i32 -1, i32 8380, i32 787456, i32 -1, i32 8384, i32 789632, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6819839, i32 -1, i32 12112, i32 2307, i32 -1, i32 1224, i32 0, i32 -1, i32 25628, i32 0, i32 -1, i32 3196, i32 0, i32 -1, i32 28156, i32 0, i32 -1], [52 x i8] zeroinitializer }, align 32
@trinity_sysls_disable = internal constant { [57 x i32], [60 x i8] } { [57 x i32] [i32 53440, i32 0, i32 -1, i32 55488, i32 0, i32 -1, i32 21992, i32 0, i32 -1, i32 53436, i32 0, i32 -1, i32 55484, i32 0, i32 -1, i32 5568, i32 267265, i32 -1, i32 9804, i32 263168, i32 -1, i32 9800, i32 263168, i32 -1, i32 9808, i32 263168, i32 -1, i32 8376, i32 263168, i32 -1, i32 8380, i32 263168, i32 -1, i32 8384, i32 265344, i32 -1, i32 62624, i32 192, i32 -1, i32 62628, i32 6815744, i32 -1, i32 12112, i32 1028, i32 -1, i32 1224, i32 1, i32 -1, i32 25628, i32 32765, i32 -1, i32 3196, i32 65280, i32 -1, i32 28156, i32 127, i32 -1], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"UVD clock index not found!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"engine clock out of range!\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported IGP table: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1975, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1978, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1997, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2000, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2001, i32 17 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"trinity_mgcg_shls_default\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 42, i32 18 }
@___asan_gen_.45 = private unnamed_addr constant [32 x i8] c"trinity_override_mgpg_sequences\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 172, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"trinity_sysls_enable\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 149, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"trinity_sysls_disable\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 125, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1420, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1349, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1818, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [40 x i8] c"../drivers/gpu/drm/radeon/trinity_dpm.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 1836, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @trinity_dpm_print_power_state._entry, ptr @trinity_dpm_print_power_state._entry.3, ptr @trinity_dpm_print_power_state._entry_ptr, ptr @trinity_dpm_print_power_state._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @trinity_mgcg_shls_default, ptr @trinity_override_mgpg_sequences, ptr @trinity_sysls_enable, ptr @trinity_sysls_disable, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_dpm_print_power_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_mgcg_shls_default to i32), i32 888, i32 1088, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_override_mgpg_sequences to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_sysls_enable to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trinity_sysls_disable to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_enable_bapm(ptr noundef %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_bapm = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %enable_bapm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_bapm, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trinity_acquire_mutex(ptr noundef %rdev) #9
  %call2 = tail call i32 @trinity_dpm_bapm_enable(ptr noundef %rdev, i1 noundef zeroext %enable) #9
  tail call void @trinity_release_mutex(ptr noundef %rdev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_acquire_mutex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_bapm_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trinity_release_mutex(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %p.i = alloca i32, align 4
  %u.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void @trinity_acquire_mutex(ptr noundef %rdev) #9
  %call.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127232) #9
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trinity_release_mutex(ptr noundef %rdev) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %boot_pl.i = getelementptr inbounds %struct.trinity_power_info, ptr %3, i32 0, i32 4
  tail call fastcc void @trinity_program_power_level(ptr noundef %rdev, ptr noundef %boot_pl.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 126976) #9
  %and.i.i = and i32 %call.i.i, -256
  %spec.select.i.i = or i32 %and.i.i, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 126976, i32 noundef %spec.select.i.i) #9
  %call.i6.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127008) #9
  %and.i7.i = and i32 %call.i6.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127008, i32 noundef %and.i7.i) #9
  %call.i6.1.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127040) #9
  %and.i7.1.i = and i32 %call.i6.1.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127040, i32 noundef %and.i7.1.i) #9
  %call.i6.2.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127072) #9
  %and.i7.2.i = and i32 %call.i6.2.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127072, i32 noundef %and.i7.2.i) #9
  %call.i6.3.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127104) #9
  %and.i7.3.i = and i32 %call.i6.3.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127104, i32 noundef %and.i7.3.i) #9
  %call.i6.4.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127136) #9
  %and.i7.4.i = and i32 %call.i6.4.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127136, i32 noundef %and.i7.4.i) #9
  %call.i6.5.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127168) #9
  %and.i7.5.i = and i32 %call.i6.5.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127168, i32 noundef %and.i7.5.i) #9
  %call.i6.6.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127200) #9
  %and.i7.6.i = and i32 %call.i6.6.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127200, i32 noundef %and.i7.6.i) #9
  tail call void @sumo_program_vc(ptr noundef %rdev, i32 noundef 12582963) #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1656
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %7 = and i32 %6, -805306369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %7) #9, !srcloc !47
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_auto_thermal_throttling, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %call1.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127244) #9
  %thermal_auto_throttling.i = getelementptr inbounds %struct.trinity_power_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %thermal_auto_throttling.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %thermal_auto_throttling.i, align 4
  %add.i = add i32 %15, 49
  %mul.i = shl i32 %add.i, 19
  %htc_hyst_lmt.i = getelementptr inbounds %struct.trinity_power_info, ptr %13, i32 0, i32 3, i32 10
  %16 = ptrtoint ptr %htc_hyst_lmt.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %htc_hyst_lmt.i, align 1
  %conv.i = zext i8 %17 to i32
  %sub.i = sub i32 %add.i, %conv.i
  %mul4.i = shl i32 %sub.i, 3
  %or6.i = or i32 %mul4.i, %mul.i
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127244, i32 noundef %or6.i) #9
  %call.i21 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127240) #9
  %and.i22 = and i32 %call.i21, -256
  %or.i = or i32 %and.i22, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127240, i32 noundef %or.i) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #9
  %18 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %p.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i) #9
  %19 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %u.i, align 4, !annotation !48
  %call.i23 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128104) #9
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %20 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %asic.i, align 8
  %get_xclk.i = getelementptr inbounds %struct.radeon_asic, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_xclk.i, align 4
  %call1.i24 = tail call i32 %23(ptr noundef %rdev) #9
  call void @r600_calculate_u_and_p(i32 noundef 400, i32 noundef %call1.i24, i32 noundef 16, ptr noundef nonnull %p.i, ptr noundef nonnull %u.i) #9
  %24 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p.i, align 4
  %add.i25 = add i32 %call.i23, -1
  %sub.i26 = add i32 %add.i25, %25
  %div.i = udiv i32 %sub.i26, %call.i23
  %call2.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128100) #9
  %and.i27 = and i32 %call2.i, -256
  %or.i28 = or i32 %and.i27, %div.i
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 128100, i32 noundef %or.i28) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #9
  %call.i29 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127232) #9
  %and.i30 = and i32 %call.i29, 65280
  %or.i31 = or i32 %and.i30, 16777217
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127232, i32 noundef %or.i31) #9
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %27, i32 1648
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %29 = or i32 %28, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %31, i32 1648
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %29) #9, !srcloc !47
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %33, i32 1904
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %35 = and i32 %34, -131073
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %37, i32 1904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %35) #9, !srcloc !47
  %call11.i = call i32 @trinity_dpm_config(ptr noundef %rdev, i1 noundef zeroext true) #9
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %38 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp43.i = icmp sgt i32 %39, 0
  br i1 %cmp43.i, label %if.end3.for.body.i_crit_edge, label %if.end3.trinity_wait_for_dpm_enabled.exit_crit_edge

if.end3.trinity_wait_for_dpm_enabled.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_dpm_enabled.exit

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %41, i32 1656
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i36 = icmp eq i32 %43, 0
  br i1 %tobool.not.i36, label %if.end.i, label %for.endthread-pre-split.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %45 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %46
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i = load i32, ptr %usec_timeout.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i.for.end.i_crit_edge
  %48 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %46, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp345.i = icmp sgt i32 %48, 0
  br i1 %cmp345.i, label %for.end.i.for.body4.i_crit_edge, label %for.end.i.for.end12thread-pre-split.i_crit_edge

for.end.i.for.end12thread-pre-split.i_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12thread-pre-split.i

for.end.i.for.body4.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end9.i.for.body4.i_crit_edge, %for.end.i.for.body4.i_crit_edge
  %i.146.i = phi i32 [ %inc11.i, %if.end9.i.for.body4.i_crit_edge ], [ 0, %for.end.i.for.body4.i_crit_edge ]
  %49 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %50, i32 1668
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %52 = and i32 %51, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp7.i = icmp eq i32 %52, 0
  br i1 %cmp7.i, label %for.body4.i.for.end12thread-pre-split.i_crit_edge, label %if.end9.i

for.body4.i.for.end12thread-pre-split.i_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12thread-pre-split.i

if.end9.i:                                        ; preds = %for.body4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748) #9
  %inc11.i = add nuw nsw i32 %i.146.i, 1
  %54 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usec_timeout.i, align 4
  %cmp3.i = icmp slt i32 %inc11.i, %55
  br i1 %cmp3.i, label %if.end9.i.for.body4.i_crit_edge, label %if.end9.i.for.end12.i_crit_edge

if.end9.i.for.end12.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12.i

if.end9.i.for.body4.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

for.end12thread-pre-split.i:                      ; preds = %for.body4.i.for.end12thread-pre-split.i_crit_edge, %for.end.i.for.end12thread-pre-split.i_crit_edge
  %56 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr50.i = load i32, ptr %usec_timeout.i, align 4
  br label %for.end12.i

for.end12.i:                                      ; preds = %for.end12thread-pre-split.i, %if.end9.i.for.end12.i_crit_edge
  %57 = phi i32 [ %.pr50.i, %for.end12thread-pre-split.i ], [ %55, %if.end9.i.for.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1547.i = icmp sgt i32 %57, 0
  br i1 %cmp1547.i, label %for.end12.i.for.body16.i_crit_edge, label %for.end12.i.trinity_wait_for_dpm_enabled.exit_crit_edge

for.end12.i.trinity_wait_for_dpm_enabled.exit_crit_edge: ; preds = %for.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_dpm_enabled.exit

for.end12.i.for.body16.i_crit_edge:               ; preds = %for.end12.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %if.end21.i.for.body16.i_crit_edge, %for.end12.i.for.body16.i_crit_edge
  %i.248.i = phi i32 [ %inc23.i, %if.end21.i.for.body16.i_crit_edge ], [ 0, %for.end12.i.for.body16.i_crit_edge ]
  %58 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %59, i32 1668
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %60)
  %cmp19.i = icmp ult i32 %60, 268435456
  br i1 %cmp19.i, label %for.body16.i.trinity_wait_for_dpm_enabled.exit_crit_edge, label %if.end21.i

for.body16.i.trinity_wait_for_dpm_enabled.exit_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_dpm_enabled.exit

if.end21.i:                                       ; preds = %for.body16.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %61(i32 noundef 214748) #9
  %inc23.i = add nuw nsw i32 %i.248.i, 1
  %62 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usec_timeout.i, align 4
  %cmp15.i = icmp slt i32 %inc23.i, %63
  br i1 %cmp15.i, label %if.end21.i.for.body16.i_crit_edge, label %if.end21.i.trinity_wait_for_dpm_enabled.exit_crit_edge

if.end21.i.trinity_wait_for_dpm_enabled.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_dpm_enabled.exit

if.end21.i.for.body16.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.i

trinity_wait_for_dpm_enabled.exit:                ; preds = %if.end21.i.trinity_wait_for_dpm_enabled.exit_crit_edge, %for.body16.i.trinity_wait_for_dpm_enabled.exit_crit_edge, %for.end12.i.trinity_wait_for_dpm_enabled.exit_crit_edge, %if.end3.trinity_wait_for_dpm_enabled.exit_crit_edge
  %call4 = call i32 @trinity_dpm_bapm_enable(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @trinity_release_mutex(ptr noundef %rdev) #9
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %64 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ps_priv.i.i, align 4
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i, align 4
  %current_rps.i = getelementptr inbounds %struct.trinity_power_info, ptr %69, i32 0, i32 18
  %70 = call ptr @memcpy(ptr %current_rps.i, ptr %65, i32 40)
  %current_ps.i = getelementptr inbounds %struct.trinity_power_info, ptr %69, i32 0, i32 19
  %71 = call ptr @memcpy(ptr %current_ps.i, ptr %67, i32 92)
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %69, i32 0, i32 18, i32 9
  %72 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %trinity_wait_for_dpm_enabled.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %trinity_wait_for_dpm_enabled.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_program_vc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_late_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %p.i.i = alloca i32, align 4
  %u.i.i = alloca i32, align 4
  %dividers.i.i = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @trinity_acquire_mutex(ptr noundef %rdev) #9
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %enable_gfx_clock_gating.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enable_gfx_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_gfx_clock_gating.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sumo_gfx_clockgating_initialize(ptr noundef %rdev) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %enable_mg_clock_gating.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %enable_mg_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_mg_clock_gating.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @trinity_program_clk_gating_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @trinity_mgcg_shls_default, i32 noundef 74) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %enable_gfx_power_gating.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %enable_gfx_power_gating.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_gfx_power_gating.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not.i = icmp eq i8 %7, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end6.i_crit_edge, label %if.then5.i

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  %8 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i) #9
  %10 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %p.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i.i) #9
  %11 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %u.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i.i) #9
  %12 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 32)
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %13 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic.i.i, align 8
  %get_xclk.i.i = getelementptr inbounds %struct.radeon_asic, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %get_xclk.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_xclk.i.i, align 4
  %call1.i.i = tail call i32 %16(ptr noundef %rdev) #9
  %rmmio_size.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 21860
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %call3.i.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef 25000, i1 noundef zeroext false, ptr noundef nonnull %dividers.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then5.i.trinity_gfx_powergating_initialize.exit.i_crit_edge

if.then5.i.trinity_gfx_powergating_initialize.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_gfx_powergating_initialize.exit.i

if.end.i.i:                                       ; preds = %if.then5.i
  %call4.i.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127884) #9
  %and5.i.i = and i32 %call4.i.i, -65536
  %20 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dividers.i.i, align 4
  %or.i.i = or i32 %21, %and5.i.i
  %or9.i.i = or i32 %or.i.i, 256
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127884, i32 noundef %or9.i.i) #9
  call void @r600_calculate_u_and_p(i32 noundef 500, i32 noundef %call1.i.i, i32 noundef 16, ptr noundef nonnull %p.i.i, ptr noundef nonnull %u.i.i) #9
  %22 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.i.i, align 4
  %24 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %u.i.i, align 4
  %shl11.i.i = shl i32 %25, 16
  %or12.i.i = or i32 %shl11.i.i, %23
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %26 = call i32 @llvm.bswap.i32(i32 %or12.i.i) #9
  %27 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %28, i32 1760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 %26) #9, !srcloc !47
  %29 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %30, i32 1752
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %32 = and i32 %31, -65536
  %33 = call i32 @llvm.bswap.i32(i32 %32) #9
  %34 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p.i.i, align 4
  %shl15.i.i = shl i32 %35, 16
  %or17.i.i = or i32 %shl15.i.i, %33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %36 = call i32 @llvm.bswap.i32(i32 %or17.i.i) #9
  %37 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %38, i32 1752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 %36) #9, !srcloc !47
  %override_dynamic_mgpg.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %9, i32 0, i32 8
  %39 = ptrtoint ptr %override_dynamic_mgpg.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %override_dynamic_mgpg.i.i, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool18.not.i.i = icmp ne i8 %40, 0
  %41 = and i32 %19, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 0
  %or.cond.i.i = select i1 %tobool18.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.i.i.i.i_crit_edge, label %if.end.i.i.trinity_gfx_powergating_initialize.exit.i_crit_edge

if.end.i.i.trinity_gfx_powergating_initialize.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_gfx_powergating_initialize.exit.i

if.end.i.i.for.body.i.i.i.i_crit_edge:            ; preds = %if.end.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %r100_mm_wreg.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i.i_crit_edge
  %i.01.i.i.i.i = phi i32 [ %add2.i.i.i.i, %r100_mm_wreg.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i32, ptr @trinity_override_mgpg_sequences, i32 %i.01.i.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = or i32 %i.01.i.i.i.i, 1
  %arrayidx1.i.i.i.i = getelementptr i32, ptr @trinity_override_mgpg_sequences, i32 %add.i.i.i.i
  %44 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx1.i.i.i.i, align 4
  %46 = ptrtoint ptr %rmmio_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rmmio_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp.i.i.i.i.i = icmp ugt i32 %47, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %43)
  %cmp1.i.i.i.i.i = icmp ult i32 %43, 65536
  %or.cond.i.i.i.i.i = or i1 %cmp1.i.i.i.i.i, %cmp.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %do.body.i.i.i.i.i, label %if.else.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %48 = call i32 @llvm.bswap.i32(i32 %45) #9
  %49 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %50, i32 %43
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i.i, i32 %48) #9, !srcloc !47
  br label %r100_mm_wreg.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %43, i32 noundef %45) #9
  br label %r100_mm_wreg.exit.i.i.i.i

r100_mm_wreg.exit.i.i.i.i:                        ; preds = %if.else.i.i.i.i.i, %do.body.i.i.i.i.i
  %add2.i.i.i.i = add nuw nsw i32 %i.01.i.i.i.i, 2
  %cmp.i.i.i.i = icmp ult i32 %i.01.i.i.i.i, 238
  br i1 %cmp.i.i.i.i, label %r100_mm_wreg.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, label %r100_mm_wreg.exit.i.i.i.i.trinity_gfx_powergating_initialize.exit.i_crit_edge

r100_mm_wreg.exit.i.i.i.i.trinity_gfx_powergating_initialize.exit.i_crit_edge: ; preds = %r100_mm_wreg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_gfx_powergating_initialize.exit.i

r100_mm_wreg.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %r100_mm_wreg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

trinity_gfx_powergating_initialize.exit.i:        ; preds = %r100_mm_wreg.exit.i.i.i.i.trinity_gfx_powergating_initialize.exit.i_crit_edge, %if.end.i.i.trinity_gfx_powergating_initialize.exit.i_crit_edge, %if.then5.i.trinity_gfx_powergating_initialize.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %trinity_gfx_powergating_initialize.exit.i, %if.end3.i.if.end6.i_crit_edge
  %51 = ptrtoint ptr %enable_mg_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %enable_mg_clock_gating.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool8.not.i = icmp eq i8 %52, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @trinity_program_clk_gating_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @trinity_sysls_enable, i32 noundef 17) #9
  %call.i.i = call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 0) #9
  %call1.i36.i = call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 1) #9
  %and.i.i = and i32 %call.i.i, 52224
  %or.i37.i = or i32 %and.i.i, 3670016
  call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 0, i32 noundef %or.i37.i) #9
  %and2.i.i = and i32 %call1.i36.i, 323585
  %or3.i.i = or i32 %and2.i.i, 234881024
  call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 1, i32 noundef %or3.i.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %rmmio.i.i38.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %53 = ptrtoint ptr %rmmio.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i.i38.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %54, i32 37200
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 4363414) #9, !srcloc !47
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %55 = ptrtoint ptr %enable_gfx_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %enable_gfx_clock_gating.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool12.not.i = icmp eq i8 %56, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end14.i_crit_edge, label %if.then13.i

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i41.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %57 = ptrtoint ptr %rmmio.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i.i41.i, align 4
  %add.ptr.i.i42.i = getelementptr i8, ptr %58, i32 1656
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %60 = or i32 %59, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %rmmio.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i41.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %62, i32 1656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 %60) #9, !srcloc !47
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %enable_gfx_dynamic_mgpg.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 12
  %63 = ptrtoint ptr %enable_gfx_dynamic_mgpg.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enable_gfx_dynamic_mgpg.i, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool15.not.i = icmp eq i8 %64, 0
  br i1 %tobool15.not.i, label %if.end14.i.if.end17.i_crit_edge, label %if.then16.i

if.end14.i.if.end17.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i44.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128100) #9
  %and.i45.i = and i32 %call.i44.i, -16711681
  %or.i46.i = or i32 %and.i45.i, 65536
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 128100, i32 noundef %or.i46.i) #9
  %call1.i47.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127256) #9
  %and2.i48.i = and i32 %call1.i47.i, -16711681
  %or3.i49.i = or i32 %and2.i48.i, 65536
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127256, i32 noundef %or3.i49.i) #9
  %call8.i.i = call i32 @trinity_gfx_dynamic_mgpg_config(ptr noundef %rdev) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end17.i_crit_edge
  %65 = ptrtoint ptr %enable_gfx_power_gating.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %enable_gfx_power_gating.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool19.not.i = icmp eq i8 %66, 0
  br i1 %tobool19.not.i, label %if.end17.i.trinity_enable_clock_power_gating.exit_crit_edge, label %if.then20.i

if.end17.i.trinity_enable_clock_power_gating.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_enable_clock_power_gating.exit

if.then20.i:                                      ; preds = %if.end17.i
  %call.i51.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -536866788) #9
  %and.i52.i = and i32 %call.i51.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52.i)
  %tobool1.not.i.i = icmp eq i32 %and.i52.i, 0
  br i1 %tobool1.not.i.i, label %if.then20.i.trinity_gfx_powergating_enable.exit.i_crit_edge, label %if.then2.i.i

if.then20.i.trinity_gfx_powergating_enable.exit.i_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_gfx_powergating_enable.exit.i

if.then2.i.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i53.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -536858588) #9
  %or.i54.i = or i32 %call3.i53.i, 1
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -536858588, i32 noundef %or.i54.i) #9
  br label %trinity_gfx_powergating_enable.exit.i

trinity_gfx_powergating_enable.exit.i:            ; preds = %if.then2.i.i, %if.then20.i.trinity_gfx_powergating_enable.exit.i_crit_edge
  %rmmio.i.i55.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %67 = ptrtoint ptr %rmmio.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i55.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %68, i32 1656
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %70 = or i32 %69, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %rmmio.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i55.i, align 4
  %add.ptr.i29.i.i = getelementptr i8, ptr %72, i32 1656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i, i32 %70) #9, !srcloc !47
  br label %trinity_enable_clock_power_gating.exit

trinity_enable_clock_power_gating.exit:           ; preds = %trinity_gfx_powergating_enable.exit.i, %if.end17.i.trinity_enable_clock_power_gating.exit_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %73 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %irq, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not = icmp eq i8 %74, 0
  br i1 %tobool.not, label %trinity_enable_clock_power_gating.exit.if.end7_crit_edge, label %land.lhs.true

trinity_enable_clock_power_gating.exit.if.end7_crit_edge: ; preds = %trinity_enable_clock_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %trinity_enable_clock_power_gating.exit
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %75 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %int_thermal_type, align 4
  %call = call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %76) #9
  br i1 %call, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %77 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 1848
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %80 = and i32 %79, 16777215
  %81 = or i32 %80, -1459617792
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %82 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %83, i32 1848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %81) #9, !srcloc !47
  %84 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %85, i32 1848
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %87 = and i32 %86, -16711681
  %88 = or i32 %87, 9109504
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %90, i32 1848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %88) #9, !srcloc !47
  %min_temp19.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 1
  %91 = ptrtoint ptr %min_temp19.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 90000, ptr %min_temp19.i, align 4
  %max_temp23.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 2
  %92 = ptrtoint ptr %max_temp23.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 120000, ptr %max_temp23.i, align 4
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %93 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %94 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %asic, align 8
  %irq5 = getelementptr inbounds %struct.radeon_asic, ptr %95, i32 0, i32 15
  %96 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %irq5, align 4
  %call6 = call i32 %97(ptr noundef %rdev) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then, %land.lhs.true.if.end7_crit_edge, %trinity_enable_clock_power_gating.exit.if.end7_crit_edge
  call void @trinity_release_mutex(ptr noundef %rdev) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @trinity_acquire_mutex(ptr noundef %rdev) #9
  %call.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127232) #9
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trinity_release_mutex(ptr noundef %rdev) #9
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @trinity_dpm_bapm_enable(ptr noundef %rdev, i1 noundef zeroext false) #9
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %enable_gfx_power_gating.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %enable_gfx_power_gating.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_gfx_power_gating.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i25 = icmp eq i8 %3, 0
  br i1 %tobool.not.i25, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i32.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i32.i.i, align 4
  %add.ptr.i33.i.i = getelementptr i8, ptr %5, i32 1656
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %7 = and i32 %6, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %rmmio.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i32.i.i, align 4
  %add.ptr.i37.i.i = getelementptr i8, ptr %9, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i.i, i32 %7) #9, !srcloc !47
  %10 = ptrtoint ptr %rmmio.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i32.i.i, align 4
  %add.ptr.i41.i.i = getelementptr i8, ptr %11, i32 39160
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %enable_gfx_dynamic_mgpg.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %enable_gfx_dynamic_mgpg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_gfx_dynamic_mgpg.i, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127256) #9
  %and5.i.i = and i32 %call4.i.i, -16711681
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127256, i32 noundef %and5.i.i) #9
  %call6.i.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128100) #9
  %and7.i.i = and i32 %call6.i.i, -16711681
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 128100, i32 noundef %and7.i.i) #9
  %call8.i.i = tail call i32 @trinity_gfx_dynamic_mgpg_config(ptr noundef %rdev) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %enable_gfx_clock_gating.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %enable_gfx_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_gfx_clock_gating.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end6.i_crit_edge, label %if.then5.i

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 1656
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %20 = and i32 %19, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %22, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 %20) #9, !srcloc !47
  %23 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %24, i32 1656
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %26 = or i32 %25, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %28, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 %26) #9, !srcloc !47
  %29 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %30, i32 1656
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %32 = and i32 %31, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %34, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i.i, i32 %32) #9, !srcloc !47
  %35 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %36, i32 39160
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %enable_mg_clock_gating.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 11
  %38 = ptrtoint ptr %enable_mg_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable_mg_clock_gating.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool7.not.i = icmp eq i8 %39, 0
  br i1 %tobool7.not.i, label %if.end6.i.trinity_disable_clock_power_gating.exit_crit_edge, label %if.then8.i

if.end6.i.trinity_disable_clock_power_gating.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_disable_clock_power_gating.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %rmmio.i23.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i23.i.i, align 4
  %add.ptr.i24.i.i = getelementptr i8, ptr %41, i32 37200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i.i, i32 24576) #9, !srcloc !47
  %call4.i18.i = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 0) #9
  %call5.i.i = tail call i32 @eg_cg_rreg(ptr noundef %rdev, i32 noundef 1) #9
  %or7.i.i = or i32 %call4.i18.i, -52225
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 0, i32 noundef %or7.i.i) #9
  %or9.i.i = or i32 %call5.i.i, -323586
  tail call void @eg_cg_wreg(ptr noundef %rdev, i32 noundef 1, i32 noundef %or9.i.i) #9
  tail call fastcc void @trinity_program_clk_gating_hw_sequence(ptr noundef %rdev, ptr noundef nonnull @trinity_sysls_disable, i32 noundef 19) #9
  br label %trinity_disable_clock_power_gating.exit

trinity_disable_clock_power_gating.exit:          ; preds = %if.then8.i, %if.end6.i.trinity_disable_clock_power_gating.exit_crit_edge
  tail call void @sumo_clear_vc(ptr noundef %rdev) #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %42 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp4.i = icmp sgt i32 %43, 0
  br i1 %cmp4.i, label %trinity_disable_clock_power_gating.exit.for.body.i_crit_edge, label %trinity_disable_clock_power_gating.exit.trinity_wait_for_level_0.exit_crit_edge

trinity_disable_clock_power_gating.exit.trinity_wait_for_level_0.exit_crit_edge: ; preds = %trinity_disable_clock_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_level_0.exit

trinity_disable_clock_power_gating.exit.for.body.i_crit_edge: ; preds = %trinity_disable_clock_power_gating.exit
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i26.for.body.i_crit_edge, %trinity_disable_clock_power_gating.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i26.for.body.i_crit_edge ], [ 0, %trinity_disable_clock_power_gating.exit.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 1668
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %46)
  %cmp1.i = icmp ult i32 %46, 268435456
  br i1 %cmp1.i, label %for.body.i.trinity_wait_for_level_0.exit_crit_edge, label %if.end.i26

for.body.i.trinity_wait_for_level_0.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_level_0.exit

if.end.i26:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %48 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %49
  br i1 %cmp.i, label %if.end.i26.for.body.i_crit_edge, label %if.end.i26.trinity_wait_for_level_0.exit_crit_edge

if.end.i26.trinity_wait_for_level_0.exit_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_level_0.exit

if.end.i26.for.body.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

trinity_wait_for_level_0.exit:                    ; preds = %if.end.i26.trinity_wait_for_level_0.exit_crit_edge, %for.body.i.trinity_wait_for_level_0.exit_crit_edge, %trinity_disable_clock_power_gating.exit.trinity_wait_for_level_0.exit_crit_edge
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %51, i32 1904
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %53 = or i32 %52, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %55, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %53) #9, !srcloc !47
  %call1.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 127232) #9
  %and2.i = and i32 %call1.i, 16776960
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127232, i32 noundef %and2.i) #9
  %call3.i = tail call i32 @trinity_dpm_config(ptr noundef %rdev, i1 noundef zeroext false) #9
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %57, i32 1656
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %59 = or i32 %58, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %61, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %59) #9, !srcloc !47
  tail call void @trinity_release_mutex(ptr noundef %rdev) #9
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %irq, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not = icmp eq i8 %63, 0
  br i1 %tobool.not, label %trinity_wait_for_level_0.exit.if.end7_crit_edge, label %land.lhs.true

trinity_wait_for_level_0.exit.if.end7_crit_edge:  ; preds = %trinity_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %trinity_wait_for_level_0.exit
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %64 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %int_thermal_type, align 4
  %call2 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %65) #9
  br i1 %call2, label %if.then3, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %66 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %67 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %asic, align 8
  %irq5 = getelementptr inbounds %struct.radeon_asic, ptr %68, i32 0, i32 15
  %69 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq5, align 4
  %call6 = tail call i32 %70(ptr noundef %rdev) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %land.lhs.true.if.end7_crit_edge, %trinity_wait_for_level_0.exit.if.end7_crit_edge
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %71 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ps_priv.i.i, align 4
  %75 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.trinity_power_info, ptr %76, i32 0, i32 18
  %77 = call ptr @memcpy(ptr %current_rps.i, ptr %72, i32 40)
  %current_ps.i = getelementptr inbounds %struct.trinity_power_info, ptr %76, i32 0, i32 19
  %78 = call ptr @memcpy(ptr %current_ps.i, ptr %74, i32 92)
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %76, i32 0, i32 18, i32 9
  %79 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_clear_vc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %for.cond.preheader [
    i32 2, label %if.end.cleanup_crit_edge
    i32 1, label %if.then5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1234.not = icmp eq i32 %8, 0
  br i1 %cmp1234.not, label %for.cond.preheader.if.end18_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end18_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then5:                                         ; preds = %if.end
  %sub = add i32 %5, -1
  %call7 = tail call i32 @trinity_dpm_n_levels_disabled(ptr noundef %rdev, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then5.if.end18_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.035, 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %cmp12 = icmp ult i32 %inc, %10
  br i1 %cmp12, label %for.cond.for.body_crit_edge, label %for.cond.if.end18_crit_edge

for.cond.if.end18_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call13 = tail call i32 @trinity_dpm_n_levels_disabled(ptr noundef %rdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %for.cond.if.end18_crit_edge, %if.then5.if.end18_crit_edge, %for.cond.preheader.if.end18_crit_edge
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %11 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %level, ptr %forced_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.body.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call7, %if.then5.cleanup_crit_edge ], [ %call13, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_n_levels_disabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_pre_set_power_state(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %requested_rps.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20
  %5 = call ptr @memmove(ptr %requested_rps.i, ptr %3, i32 36)
  %requested_ps.sroa.5.0.requested_rps.i.sroa_idx = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 9
  %6 = ptrtoint ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %requested_ps.sroa.5.0.copyload, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %requested_ps.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21
  %7 = call ptr @memcpy(ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.copyload, i32 92)
  store ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %8 = load ptr, ptr %priv.i, align 4
  %min_sclk3.i = getelementptr inbounds %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %min_sclk3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_sclk3.i, align 4
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %11 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_active_crtc_count.i, align 4
  %class.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 1
  %13 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class.i, align 4
  %and.i = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %ps_priv.i266.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 9
  %15 = ptrtoint ptr %ps_priv.i266.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps_priv.i266.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %levels.i.i = getelementptr inbounds %struct.trinity_ps, ptr %16, i32 0, i32 1
  %vddc_index.i.i = getelementptr inbounds %struct.trinity_ps, ptr %16, i32 0, i32 1, i32 0, i32 1
  %boot_pl.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %8, i32 0, i32 4
  %vddc_index3.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %8, i32 0, i32 4, i32 1
  %current_vddc.0.in.in.i.i = select i1 %tobool.not.i.i, ptr %vddc_index3.i.i, ptr %vddc_index.i.i
  %current_sclk.0.in.i.i = select i1 %tobool.not.i.i, ptr %boot_pl.i.i, ptr %levels.i.i
  %17 = ptrtoint ptr %current_sclk.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %current_sclk.0.i.i = load i32, ptr %current_sclk.0.in.i.i, align 4
  %18 = ptrtoint ptr %current_vddc.0.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %current_vddc.0.in62.i.i = load i8, ptr %current_vddc.0.in.in.i.i, align 4
  %levels8.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1
  %vddc_index10.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %vddc_index10.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %current_vddc.0.in62.i.i, ptr %vddc_index10.i.i, align 4
  %20 = ptrtoint ptr %levels8.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %levels8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %current_sclk.0.i.i)
  %cmp.i.i = icmp ugt i32 %21, %current_sclk.0.i.i
  br i1 %cmp.i.i, label %if.then15.i.i, label %if.then.i.if.end19.i.i_crit_edge

if.then.i.if.end19.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.then15.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %levels8.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %current_sclk.0.i.i, ptr %levels8.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then15.i.i, %if.then.i.if.end19.i.i_crit_edge
  %23 = ptrtoint ptr %levels8.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %levels8.i.i, align 4
  %25 = tail call i32 @llvm.umax.i32(i32 %10, i32 800) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %24)
  %cmp1.i.i.i = icmp ugt i32 %25, %24
  br i1 %cmp1.i.i.i, label %if.end19.i.i.trinity_patch_thermal_state.exit.i_crit_edge, label %if.end.i.i.i

if.end19.i.i.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

if.end.i.i.i:                                     ; preds = %if.end19.i.i
  %26 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %enable_sclk_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_sclk_ds.i.i.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge, label %for.cond.i.i.i

if.end.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

for.cond.i.i.i:                                   ; preds = %if.end.i.i.i
  %call4.i.i.i = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 5) #9
  %div.i.i.i = udiv i32 %24, %call4.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i, i32 %25)
  %cmp5.not.i.i.i.not = icmp ult i32 %div.i.i.i, %25
  br i1 %cmp5.not.i.i.i.not, label %for.cond.i.i.i.1, label %for.cond.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge

for.cond.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

for.cond.i.i.i.1:                                 ; preds = %for.cond.i.i.i
  %call4.i.i.i.1 = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 4) #9
  %div.i.i.i.1 = udiv i32 %24, %call4.i.i.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i.1, i32 %25)
  %cmp5.not.i.i.i.1.not = icmp ult i32 %div.i.i.i.1, %25
  br i1 %cmp5.not.i.i.i.1.not, label %for.cond.i.i.i.2, label %for.cond.i.i.i.1.trinity_patch_thermal_state.exit.i_crit_edge

for.cond.i.i.i.1.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %for.cond.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

for.cond.i.i.i.2:                                 ; preds = %for.cond.i.i.i.1
  %call4.i.i.i.2 = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 3) #9
  %div.i.i.i.2 = udiv i32 %24, %call4.i.i.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i.2, i32 %25)
  %cmp5.not.i.i.i.2.not = icmp ult i32 %div.i.i.i.2, %25
  br i1 %cmp5.not.i.i.i.2.not, label %for.cond.i.i.i.3, label %for.cond.i.i.i.2.trinity_patch_thermal_state.exit.i_crit_edge

for.cond.i.i.i.2.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %for.cond.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

for.cond.i.i.i.3:                                 ; preds = %for.cond.i.i.i.2
  %call4.i.i.i.3 = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 2) #9
  %div.i.i.i.3 = udiv i32 %24, %call4.i.i.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i.3, i32 %25)
  %cmp5.not.i.i.i.3.not = icmp ult i32 %div.i.i.i.3, %25
  br i1 %cmp5.not.i.i.i.3.not, label %for.cond.i.i.i.4, label %for.cond.i.i.i.3.trinity_patch_thermal_state.exit.i_crit_edge

for.cond.i.i.i.3.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %for.cond.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

for.cond.i.i.i.4:                                 ; preds = %for.cond.i.i.i.3
  %call4.i.i.i.4 = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 1) #9
  %div.i.i.i.4 = udiv i32 %24, %call4.i.i.i.4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i.4, i32 %25)
  %cmp5.not.i.i.i.4.not = icmp ult i32 %div.i.i.i.4, %25
  br i1 %cmp5.not.i.i.i.4.not, label %for.cond.i.i.i.5, label %for.cond.i.i.i.4.trinity_patch_thermal_state.exit.i_crit_edge

for.cond.i.i.i.4.trinity_patch_thermal_state.exit.i_crit_edge: ; preds = %for.cond.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_patch_thermal_state.exit.i

for.cond.i.i.i.5:                                 ; preds = %for.cond.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i.i.i.5 = tail call i32 @sumo_get_sleep_divider_from_id(i32 noundef 0) #9
  br label %trinity_patch_thermal_state.exit.i

trinity_patch_thermal_state.exit.i:               ; preds = %for.cond.i.i.i.5, %for.cond.i.i.i.4.trinity_patch_thermal_state.exit.i_crit_edge, %for.cond.i.i.i.3.trinity_patch_thermal_state.exit.i_crit_edge, %for.cond.i.i.i.2.trinity_patch_thermal_state.exit.i_crit_edge, %for.cond.i.i.i.1.trinity_patch_thermal_state.exit.i_crit_edge, %for.cond.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge, %if.end.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge, %if.end19.i.i.trinity_patch_thermal_state.exit.i_crit_edge
  %retval.0.i.i.i = phi i8 [ 0, %if.end19.i.i.trinity_patch_thermal_state.exit.i_crit_edge ], [ 0, %if.end.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge ], [ 5, %for.cond.i.i.i.trinity_patch_thermal_state.exit.i_crit_edge ], [ 4, %for.cond.i.i.i.1.trinity_patch_thermal_state.exit.i_crit_edge ], [ 3, %for.cond.i.i.i.2.trinity_patch_thermal_state.exit.i_crit_edge ], [ 2, %for.cond.i.i.i.3.trinity_patch_thermal_state.exit.i_crit_edge ], [ 1, %for.cond.i.i.i.4.trinity_patch_thermal_state.exit.i_crit_edge ], [ 0, %for.cond.i.i.i.5 ]
  %ds_divider_index.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %retval.0.i.i.i, ptr %ds_divider_index.i.i, align 1
  %ss_divider_index.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.i.i.i, ptr %ss_divider_index.i.i, align 2
  %allow_gnb_slow.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %allow_gnb_slow.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %allow_gnb_slow.i.i, align 1
  %force_nbp_state.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %force_nbp_state.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %force_nbp_state.i.i, align 4
  %display_wm.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %display_wm.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %display_wm.i.i, align 1
  %35 = ptrtoint ptr %levels8.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %levels8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %36)
  %cmp.i.i.i = icmp ult i32 %36, 20000
  %..i.i.i = zext i1 %cmp.i.i.i to i8
  %vce_wm.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 0, i32 7
  %37 = ptrtoint ptr %vce_wm.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %..i.i.i, ptr %vce_wm.i.i, align 2
  br label %trinity_apply_state_adjust_rules.exit

if.end.i:                                         ; preds = %entry
  %uvd_dpm.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %8, i32 0, i32 17
  %38 = ptrtoint ptr %uvd_dpm.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %uvd_dpm.i.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i268.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i268.i, label %if.end.i.trinity_adjust_uvd_state.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.trinity_adjust_uvd_state.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_adjust_uvd_state.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %class2.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 2
  %40 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %class2.i.i, align 4
  %call2.i.i = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %14, i32 noundef %41) #9
  br i1 %call2.i.i, label %if.then.i.i, label %land.lhs.true.i.i.trinity_adjust_uvd_state.exit.i_crit_edge

land.lhs.true.i.i.trinity_adjust_uvd_state.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_adjust_uvd_state.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %42 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv.i, align 4
  %vclk.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 3
  %44 = ptrtoint ptr %vclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vclk.i.i.i, align 4
  %dclk.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 4
  %arrayidx.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 0
  %46 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp2.i.i.i = icmp eq i32 %45, %47
  br i1 %cmp2.i.i.i, label %land.lhs.true.i.i.i, label %if.then.i.i.for.inc.i.i.i_crit_edge

if.then.i.i.for.inc.i.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i
  %48 = ptrtoint ptr %dclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dclk.i.i.i, align 4
  %dclk6.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 0, i32 1
  %50 = ptrtoint ptr %dclk6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dclk6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp7.i.i.i = icmp eq i32 %49, %51
  br i1 %cmp7.i.i.i, label %land.lhs.true.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_get_uvd_clock_index.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i.i.for.inc.i.i.i_crit_edge
  %arrayidx.1.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 1
  %52 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %53)
  %cmp2.1.i.i.i = icmp eq i32 %45, %53
  br i1 %cmp2.1.i.i.i, label %land.lhs.true.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i.i

land.lhs.true.1.i.i.i:                            ; preds = %for.inc.i.i.i
  %54 = ptrtoint ptr %dclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dclk.i.i.i, align 4
  %dclk6.1.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 1, i32 1
  %56 = ptrtoint ptr %dclk6.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dclk6.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp7.1.i.i.i = icmp eq i32 %55, %57
  br i1 %cmp7.1.i.i.i, label %land.lhs.true.1.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, label %land.lhs.true.1.i.i.i.for.inc.1.i.i.i_crit_edge

land.lhs.true.1.i.i.i.for.inc.1.i.i.i_crit_edge:  ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i.i

land.lhs.true.1.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge: ; preds = %land.lhs.true.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_get_uvd_clock_index.exit.i.i

for.inc.1.i.i.i:                                  ; preds = %land.lhs.true.1.i.i.i.for.inc.1.i.i.i_crit_edge, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %arrayidx.2.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 2
  %58 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %59)
  %cmp2.2.i.i.i = icmp eq i32 %45, %59
  br i1 %cmp2.2.i.i.i, label %land.lhs.true.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i.i

land.lhs.true.2.i.i.i:                            ; preds = %for.inc.1.i.i.i
  %60 = ptrtoint ptr %dclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dclk.i.i.i, align 4
  %dclk6.2.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 2, i32 1
  %62 = ptrtoint ptr %dclk6.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dclk6.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp7.2.i.i.i = icmp eq i32 %61, %63
  br i1 %cmp7.2.i.i.i, label %land.lhs.true.2.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, label %land.lhs.true.2.i.i.i.for.inc.2.i.i.i_crit_edge

land.lhs.true.2.i.i.i.for.inc.2.i.i.i_crit_edge:  ; preds = %land.lhs.true.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i.i

land.lhs.true.2.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge: ; preds = %land.lhs.true.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_get_uvd_clock_index.exit.i.i

for.inc.2.i.i.i:                                  ; preds = %land.lhs.true.2.i.i.i.for.inc.2.i.i.i_crit_edge, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %arrayidx.3.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 3
  %64 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %65)
  %cmp2.3.i.i.i = icmp eq i32 %45, %65
  br i1 %cmp2.3.i.i.i, label %land.lhs.true.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i.i

land.lhs.true.3.i.i.i:                            ; preds = %for.inc.2.i.i.i
  %66 = ptrtoint ptr %dclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dclk.i.i.i, align 4
  %dclk6.3.i.i.i = getelementptr %struct.trinity_power_info, ptr %43, i32 0, i32 3, i32 14, i32 3, i32 1
  %68 = ptrtoint ptr %dclk6.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dclk6.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp7.3.i.i.i = icmp eq i32 %67, %69
  br i1 %cmp7.3.i.i.i, label %land.lhs.true.3.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, label %land.lhs.true.3.i.i.i.for.inc.3.i.i.i_crit_edge

land.lhs.true.3.i.i.i.for.inc.3.i.i.i_crit_edge:  ; preds = %land.lhs.true.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i.i

land.lhs.true.3.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge: ; preds = %land.lhs.true.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_get_uvd_clock_index.exit.i.i

for.inc.3.i.i.i:                                  ; preds = %land.lhs.true.3.i.i.i.for.inc.3.i.i.i_crit_edge, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #9
  br label %trinity_get_uvd_clock_index.exit.i.i

trinity_get_uvd_clock_index.exit.i.i:             ; preds = %for.inc.3.i.i.i, %land.lhs.true.3.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, %land.lhs.true.2.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, %land.lhs.true.1.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge, %land.lhs.true.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ 3, %for.inc.3.i.i.i ], [ 0, %land.lhs.true.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge ], [ 3, %land.lhs.true.3.i.i.i.trinity_get_uvd_clock_index.exit.i.i_crit_edge ]
  %.lobit.i.i = lshr i32 %i.1.i.i.i, 1
  %vclk_did.i.i = getelementptr %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 14, i32 %i.1.i.i.i, i32 2
  %70 = ptrtoint ptr %vclk_did.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %vclk_did.i.i, align 4
  %conv.i.i = zext i8 %71 to i32
  %vclk_low_divider.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 8
  %72 = ptrtoint ptr %vclk_low_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv.i.i, ptr %vclk_low_divider.i.i, align 4
  %dclk_did.i.i = getelementptr %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 14, i32 %i.1.i.i.i, i32 3
  %73 = ptrtoint ptr %dclk_did.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dclk_did.i.i, align 1
  %conv8.i.i = zext i8 %74 to i32
  %dclk_low_divider.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 10
  %75 = ptrtoint ptr %dclk_low_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv8.i.i, ptr %dclk_low_divider.i.i, align 4
  %vclk_did12.i.i = getelementptr %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 14, i32 %.lobit.i.i, i32 2
  %76 = ptrtoint ptr %vclk_did12.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %vclk_did12.i.i, align 4
  %conv13.i.i = zext i8 %77 to i32
  %vclk_high_divider.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 9
  %78 = ptrtoint ptr %vclk_high_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv13.i.i, ptr %vclk_high_divider.i.i, align 4
  %dclk_did17.i.i = getelementptr %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 14, i32 %.lobit.i.i, i32 3
  %79 = ptrtoint ptr %dclk_did17.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %dclk_did17.i.i, align 1
  %conv18.i.i = zext i8 %80 to i32
  %dclk_high_divider.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 11
  %81 = ptrtoint ptr %dclk_high_divider.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv18.i.i, ptr %dclk_high_divider.i.i, align 4
  br label %trinity_adjust_uvd_state.exit.i

trinity_adjust_uvd_state.exit.i:                  ; preds = %trinity_get_uvd_clock_index.exit.i.i, %land.lhs.true.i.i.trinity_adjust_uvd_state.exit.i_crit_edge, %if.end.i.trinity_adjust_uvd_state.exit.i_crit_edge
  %vce_active.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 7
  %82 = ptrtoint ptr %vce_active.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %vce_active.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool6.not.i = icmp eq i8 %83, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %trinity_adjust_uvd_state.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %vce_level.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 7
  %84 = ptrtoint ptr %vce_level.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vce_level.i, align 4
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 %85
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %evclk12.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 5
  %88 = ptrtoint ptr %evclk12.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %evclk12.i, align 4
  %89 = load i32, ptr %vce_level.i, align 4
  %ecclk.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 %89, i32 1
  %90 = ptrtoint ptr %ecclk.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ecclk.i, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %trinity_adjust_uvd_state.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %evclk21.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 5
  %92 = ptrtoint ptr %evclk21.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %evclk21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then7.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %91, %if.then7.i ]
  %93 = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 6
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %.sink.i, ptr %93, align 4
  %95 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %requested_ps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp286.not.i = icmp eq i32 %96, 0
  br i1 %cmp286.not.i, label %if.end23.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end23.i
  %levels.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1
  %vce_level54.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 7
  %evclk72.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 5
  %vce_clock_voltage_dependency_table.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6
  %entries.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6, i32 1
  %cmp.i275.i = icmp eq ptr %requested_ps.i, null
  br label %for.body.i

for.body.i:                                       ; preds = %trinity_calculate_display_wm.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0287.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %trinity_calculate_display_wm.exit.i.for.body.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i
  %vddc_index.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 1
  %97 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %10)
  %cmp35.i = icmp ult i32 %98, %10
  br i1 %cmp35.i, label %if.then37.i, label %for.body.i.if.end42.i_crit_edge

for.body.i.if.end42.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then37.i:                                      ; preds = %for.body.i
  %99 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv.i, align 4
  %sclk_voltage_mapping_table.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %100, i32 0, i32 3, i32 11
  %101 = ptrtoint ptr %sclk_voltage_mapping_table.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %sclk_voltage_mapping_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp27.not.i.i = icmp eq i32 %102, 0
  br i1 %cmp27.not.i.i, label %if.then37.i.if.then13.i.i_crit_edge, label %if.then37.i.for.body.i.i_crit_edge

if.then37.i.for.body.i.i_crit_edge:               ; preds = %if.then37.i
  br label %for.body.i.i

if.then37.i.if.then13.i.i_crit_edge:              ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then37.i.for.body.i.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then37.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.trinity_power_info, ptr %100, i32 0, i32 3, i32 11, i32 1, i32 %i.028.i.i
  %103 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %10)
  %cmp3.not.i.i = icmp ult i32 %104, %10
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.trinity_get_valid_engine_clock.exit.i_crit_edge

for.body.i.i.trinity_get_valid_engine_clock.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_get_valid_engine_clock.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %102
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then13.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.then13.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %for.inc.i.i.if.then13.i.i_crit_edge, %if.then37.i.if.then13.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #9
  br label %trinity_get_valid_engine_clock.exit.i

trinity_get_valid_engine_clock.exit.i:            ; preds = %if.then13.i.i, %for.body.i.i.trinity_get_valid_engine_clock.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.then13.i.i ], [ %104, %for.body.i.i.trinity_get_valid_engine_clock.exit.i_crit_edge ]
  %105 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i.i, ptr %arrayidx24.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %trinity_get_valid_engine_clock.exit.i, %for.body.i.if.end42.i_crit_edge
  %106 = ptrtoint ptr %vce_active.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %vce_active.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool44.not.i = icmp eq i8 %107, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end88.i_crit_edge, label %if.then45.i

if.end42.i.if.end88.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then45.i:                                      ; preds = %if.end42.i
  %108 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx24.i, align 4
  %110 = ptrtoint ptr %vce_level54.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vce_level54.i, align 4
  %sclk56.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 %111, i32 2
  %112 = ptrtoint ptr %sclk56.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sclk56.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %113)
  %cmp57.i = icmp ult i32 %109, %113
  br i1 %cmp57.i, label %if.then59.i, label %if.then45.i.if.end71.i_crit_edge

if.then45.i.if.end71.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i

if.then59.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx24.i, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then59.i, %if.then45.i.if.end71.i_crit_edge
  %115 = ptrtoint ptr %evclk72.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %evclk72.i, align 4
  %117 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %93, align 4
  %119 = or i32 %118, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %if.end71.i.if.end88.i_crit_edge, label %lor.lhs.false.i.i

if.end71.i.if.end88.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

lor.lhs.false.i.i:                                ; preds = %if.end71.i
  %121 = ptrtoint ptr %vce_clock_voltage_dependency_table.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %vce_clock_voltage_dependency_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp3.i.i = icmp eq i8 %122, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.end88.i_crit_edge, label %if.end.thread.i.i

lor.lhs.false.i.i.if.end88.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.end.thread.i.i:                                ; preds = %lor.lhs.false.i.i
  %conv610.i.i = zext i8 %122 to i32
  %123 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %entries.i.i, align 4
  br label %for.body.i270.i

for.body.i270.i:                                  ; preds = %for.inc.i274.i.for.body.i270.i_crit_edge, %if.end.thread.i.i
  %i.05.i.i = phi i32 [ 0, %if.end.thread.i.i ], [ %inc.i272.i, %for.inc.i274.i.for.body.i270.i_crit_edge ]
  %evclk9.i.i = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %124, i32 %i.05.i.i, i32 1
  %125 = ptrtoint ptr %evclk9.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %evclk9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %116)
  %cmp10.not.i.i = icmp ult i32 %126, %116
  br i1 %cmp10.not.i.i, label %for.body.i270.i.for.inc.i274.i_crit_edge, label %land.lhs.true12.i.i

for.body.i270.i.for.inc.i274.i_crit_edge:         ; preds = %for.body.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i274.i

land.lhs.true12.i.i:                              ; preds = %for.body.i270.i
  %arrayidx.i271.i = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %124, i32 %i.05.i.i
  %127 = ptrtoint ptr %arrayidx.i271.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i271.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %118)
  %cmp16.not.i.i = icmp ult i32 %128, %118
  br i1 %cmp16.not.i.i, label %land.lhs.true12.i.i.for.inc.i274.i_crit_edge, label %land.lhs.true12.i.i.trinity_get_vce_clock_voltage.exit.i_crit_edge

land.lhs.true12.i.i.trinity_get_vce_clock_voltage.exit.i_crit_edge: ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_get_vce_clock_voltage.exit.i

land.lhs.true12.i.i.for.inc.i274.i_crit_edge:     ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i274.i

for.inc.i274.i:                                   ; preds = %land.lhs.true12.i.i.for.inc.i274.i_crit_edge, %for.body.i270.i.for.inc.i274.i_crit_edge
  %inc.i272.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i273.i = icmp eq i32 %inc.i272.i, %conv610.i.i
  br i1 %exitcond.not.i273.i, label %if.then23.critedge.i.i, label %for.inc.i274.i.for.body.i270.i_crit_edge

for.inc.i274.i.for.body.i270.i_crit_edge:         ; preds = %for.inc.i274.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i270.i

if.then23.critedge.i.i:                           ; preds = %for.inc.i274.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add nsw i32 %conv610.i.i, -1
  br label %trinity_get_vce_clock_voltage.exit.i

trinity_get_vce_clock_voltage.exit.i:             ; preds = %if.then23.critedge.i.i, %land.lhs.true12.i.i.trinity_get_vce_clock_voltage.exit.i_crit_edge
  %sub.i.pn.i = phi i32 [ %sub.i.i, %if.then23.critedge.i.i ], [ %i.05.i.i, %land.lhs.true12.i.i.trinity_get_vce_clock_voltage.exit.i_crit_edge ]
  %v28.sink.i.i = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %124, i32 %sub.i.pn.i, i32 2
  %129 = ptrtoint ptr %v28.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %v28.sink.i.i, align 4
  %131 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %vddc_index.i, align 4
  %133 = zext i8 %132 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %130, i16 %133)
  %cmp80.i = icmp ugt i16 %130, %133
  br i1 %cmp80.i, label %if.then82.i, label %trinity_get_vce_clock_voltage.exit.i.if.end88.i_crit_edge

trinity_get_vce_clock_voltage.exit.i.if.end88.i_crit_edge: ; preds = %trinity_get_vce_clock_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then82.i:                                      ; preds = %trinity_get_vce_clock_voltage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv83.i = trunc i16 %130 to i8
  %134 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv83.i, ptr %vddc_index.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then82.i, %trinity_get_vce_clock_voltage.exit.i.if.end88.i_crit_edge, %lor.lhs.false.i.i.if.end88.i_crit_edge, %if.end71.i.if.end88.i_crit_edge, %if.end42.i.if.end88.i_crit_edge
  %135 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx24.i, align 4
  %call92.i = tail call i32 @sumo_get_sleep_divider_id_from_clock(ptr noundef %rdev, i32 noundef %136, i32 noundef %10) #9
  %conv93.i = trunc i32 %call92.i to i8
  %ds_divider_index.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 2
  %137 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv93.i, ptr %ds_divider_index.i, align 1
  %ss_divider_index.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 3
  %138 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv93.i, ptr %ss_divider_index.i, align 2
  %allow_gnb_slow.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 4
  %139 = ptrtoint ptr %allow_gnb_slow.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %allow_gnb_slow.i, align 1
  %force_nbp_state.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 5
  %140 = ptrtoint ptr %force_nbp_state.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %force_nbp_state.i, align 4
  br i1 %cmp.i275.i, label %if.end88.i.trinity_calculate_display_wm.exit.i_crit_edge, label %lor.lhs.false.i276.i

if.end88.i.trinity_calculate_display_wm.exit.i_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_calculate_display_wm.exit.i

lor.lhs.false.i276.i:                             ; preds = %if.end88.i
  %141 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %requested_ps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp1.i.i = icmp ult i32 %142, 2
  br i1 %cmp1.i.i, label %lor.lhs.false.i276.i.trinity_calculate_display_wm.exit.i_crit_edge, label %if.else.i.i

lor.lhs.false.i276.i.trinity_calculate_display_wm.exit.i_crit_edge: ; preds = %lor.lhs.false.i276.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_calculate_display_wm.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i276.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %142)
  %cmp3.i277.i = icmp eq i32 %142, 2
  br i1 %cmp3.i277.i, label %if.then4.i.i, label %if.else8.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0287.i)
  %cmp5.i.i = icmp ne i32 %i.0287.i, 0
  br label %trinity_calculate_display_wm.exit.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0287.i)
  %cmp9.i.i = icmp eq i32 %i.0287.i, 0
  br i1 %cmp9.i.i, label %if.else8.i.i.trinity_calculate_display_wm.exit.i_crit_edge, label %if.else11.i.i

if.else8.i.i.trinity_calculate_display_wm.exit.i_crit_edge: ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_calculate_display_wm.exit.i

if.else11.i.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999, i32 %144)
  %cmp12.i.i = icmp ugt i32 %144, 29999
  br label %trinity_calculate_display_wm.exit.i

trinity_calculate_display_wm.exit.i:              ; preds = %if.else11.i.i, %if.else8.i.i.trinity_calculate_display_wm.exit.i_crit_edge, %if.then4.i.i, %lor.lhs.false.i276.i.trinity_calculate_display_wm.exit.i_crit_edge, %if.end88.i.trinity_calculate_display_wm.exit.i_crit_edge
  %retval.0.shrunk.i.i = phi i1 [ false, %lor.lhs.false.i276.i.trinity_calculate_display_wm.exit.i_crit_edge ], [ false, %if.end88.i.trinity_calculate_display_wm.exit.i_crit_edge ], [ %cmp5.i.i, %if.then4.i.i ], [ false, %if.else8.i.i.trinity_calculate_display_wm.exit.i_crit_edge ], [ %cmp12.i.i, %if.else11.i.i ]
  %retval.0.i279.i = zext i1 %retval.0.shrunk.i.i to i8
  %display_wm.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 6
  %145 = ptrtoint ptr %display_wm.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %retval.0.i279.i, ptr %display_wm.i, align 1
  %146 = ptrtoint ptr %levels.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %147)
  %cmp.i280.i = icmp ult i32 %147, 20000
  %..i.i = zext i1 %cmp.i280.i to i8
  %vce_wm.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %i.0287.i, i32 7
  %148 = ptrtoint ptr %vce_wm.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %..i.i, ptr %vce_wm.i, align 2
  %inc.i = add nuw i32 %i.0287.i, 1
  %149 = ptrtoint ptr %requested_ps.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %requested_ps.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %150
  br i1 %cmp.i, label %trinity_calculate_display_wm.exit.i.for.body.i_crit_edge, label %for.end.loopexit.i

trinity_calculate_display_wm.exit.i.for.body.i_crit_edge: ; preds = %trinity_calculate_display_wm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %trinity_calculate_display_wm.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = add i32 %150, -1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end23.i.for.end.i_crit_edge
  %.lcssa285.i = phi i32 [ -1, %if.end23.i.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %151 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %class.i, align 4
  %and115.i = and i32 %152, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i)
  %tobool116.not.i = icmp ne i32 %and115.i, 0
  %and118.i = and i32 %152, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and118.i)
  %cmp119.i = icmp eq i32 %and118.i, 1
  %or.cond.i = or i1 %tobool116.not.i, %cmp119.i
  br i1 %or.cond.i, label %if.then121.i, label %for.end.i.if.end122.i_crit_edge

for.end.i.if.end122.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122.i

if.then121.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %bapm_flags.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 3
  %153 = ptrtoint ptr %bapm_flags.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %bapm_flags.i, align 4
  %or.i = or i32 %154, 1
  store i32 %or.i, ptr %bapm_flags.i, align 4
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then121.i, %for.end.i.if.end122.i_crit_edge
  %nb_dpm_enable.i = getelementptr inbounds %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 4
  %155 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nb_dpm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool124.not.i = icmp eq i32 %156, 0
  br i1 %tobool124.not.i, label %if.end122.i.trinity_apply_state_adjust_rules.exit_crit_edge, label %if.then125.i

if.end122.i.trinity_apply_state_adjust_rules.exit_crit_edge: ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_apply_state_adjust_rules.exit

if.then125.i:                                     ; preds = %if.end122.i
  %Dpm0PgNbPsLo.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 4
  %157 = ptrtoint ptr %Dpm0PgNbPsLo.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %Dpm0PgNbPsLo.i, align 4
  %Dpm0PgNbPsHi.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 5
  %158 = ptrtoint ptr %Dpm0PgNbPsHi.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %Dpm0PgNbPsHi.i, align 1
  %DpmXNbPsLo.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 6
  %159 = ptrtoint ptr %DpmXNbPsLo.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 2, ptr %DpmXNbPsLo.i, align 2
  %DpmXNbPsHi.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 7
  %160 = ptrtoint ptr %DpmXNbPsHi.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %DpmXNbPsHi.i, align 1
  %161 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %class.i, align 4
  %and127.i = and i32 %162, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp ne i32 %and127.i, 0
  %and131.i = and i32 %162, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and131.i)
  %cmp132.i = icmp eq i32 %and131.i, 1
  %or.cond265.i = or i1 %tobool128.not.i, %cmp132.i
  br i1 %or.cond265.i, label %if.then134.i, label %if.then125.i.trinity_apply_state_adjust_rules.exit_crit_edge

if.then125.i.trinity_apply_state_adjust_rules.exit_crit_edge: ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_apply_state_adjust_rules.exit

if.then134.i:                                     ; preds = %if.then125.i
  %and136.i = and i32 %162, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %lor.rhs.i, label %if.then134.i.lor.end.i_crit_edge

if.then134.i.lor.end.i_crit_edge:                 ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.then134.i
  %and139.i = and i32 %162, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i)
  %tobool140.not.i = icmp eq i32 %and139.i, 0
  br i1 %tobool140.not.i, label %lor.rhs.i.lor.end.i_crit_edge, label %land.rhs.i

lor.rhs.i.lor.end.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %uma_channel_number.i = getelementptr inbounds %struct.trinity_power_info, ptr %8, i32 0, i32 3, i32 13
  %163 = ptrtoint ptr %uma_channel_number.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %uma_channel_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp142.i = icmp eq i32 %164, 1
  br label %lor.end.i

lor.end.i:                                        ; preds = %land.rhs.i, %lor.rhs.i.lor.end.i_crit_edge, %if.then134.i.lor.end.i_crit_edge
  %165 = phi i1 [ true, %if.then134.i.lor.end.i_crit_edge ], [ false, %lor.rhs.i.lor.end.i_crit_edge ], [ %cmp142.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp144.i = icmp ugt i32 %12, 2
  %spec.select.i = select i1 %cmp144.i, i1 true, i1 %165
  %conv153.i = select i1 %spec.select.i, i8 2, i8 3
  %166 = ptrtoint ptr %Dpm0PgNbPsLo.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv153.i, ptr %Dpm0PgNbPsLo.i, align 4
  %167 = ptrtoint ptr %Dpm0PgNbPsHi.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 1, ptr %Dpm0PgNbPsHi.i, align 1
  %168 = ptrtoint ptr %DpmXNbPsLo.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv153.i, ptr %DpmXNbPsLo.i, align 2
  %169 = ptrtoint ptr %DpmXNbPsHi.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 2, ptr %DpmXNbPsHi.i, align 1
  %allow_gnb_slow165.i = getelementptr %struct.trinity_power_info, ptr %1, i32 0, i32 21, i32 1, i32 %.lcssa285.i, i32 4
  %170 = ptrtoint ptr %allow_gnb_slow165.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %allow_gnb_slow165.i, align 1
  br label %trinity_apply_state_adjust_rules.exit

trinity_apply_state_adjust_rules.exit:            ; preds = %lor.end.i, %if.then125.i.trinity_apply_state_adjust_rules.exit_crit_edge, %if.end122.i.trinity_apply_state_adjust_rules.exit_crit_edge, %trinity_patch_thermal_state.exit.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %p.i87.i.i = alloca i32, align 4
  %u.i88.i.i = alloca i32, align 4
  %p.i.i.i = alloca i32, align 4
  %u.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void @trinity_acquire_mutex(ptr noundef %rdev) #9
  %enable_dpm = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_dpm, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %enable_bapm = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %enable_bapm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_bapm, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %ac_power = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 31
  %6 = ptrtoint ptr %ac_power to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ac_power, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3 = icmp ne i8 %7, 0
  %call4 = tail call i32 @trinity_dpm_bapm_enable(ptr noundef %rdev, i1 noundef zeroext %tobool3) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %call.i.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 126976) #9
  %and.i.i = and i32 %call.i.i, -256
  %spec.select.i.i = or i32 %and.i.i, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 126976, i32 noundef %spec.select.i.i) #9
  %call.i = tail call i32 @trinity_dpm_force_state(ptr noundef %rdev, i32 noundef 0) #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %8 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.i = icmp sgt i32 %9, 0
  br i1 %cmp4.i, label %if.end.for.body.i_crit_edge, label %if.end.trinity_wait_for_level_0.exit_crit_edge

if.end.trinity_wait_for_level_0.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_level_0.exit

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1668
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %12)
  %cmp1.i = icmp ult i32 %12, 268435456
  br i1 %cmp1.i, label %for.body.i.trinity_wait_for_level_0.exit_crit_edge, label %if.end.i

for.body.i.trinity_wait_for_level_0.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_level_0.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %14 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.trinity_wait_for_level_0.exit_crit_edge

if.end.i.trinity_wait_for_level_0.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_wait_for_level_0.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

trinity_wait_for_level_0.exit:                    ; preds = %if.end.i.trinity_wait_for_level_0.exit_crit_edge, %for.body.i.trinity_wait_for_level_0.exit_crit_edge, %if.end.trinity_wait_for_level_0.exit_crit_edge
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 4
  %nb_dpm_enable.i = getelementptr inbounds %struct.trinity_power_info, ptr %17, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %nb_dpm_enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nb_dpm_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %trinity_wait_for_level_0.exit.trinity_setup_nbp_sim.exit_crit_edge, label %if.then.i

trinity_wait_for_level_0.exit.trinity_setup_nbp_sim.exit_crit_edge: ; preds = %trinity_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_setup_nbp_sim.exit

if.then.i:                                        ; preds = %trinity_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ps_priv.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 9
  %20 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ps_priv.i.i, align 4
  %call2.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128504) #9
  %and.i = and i32 %call2.i, -256
  %Dpm0PgNbPsLo.i = getelementptr inbounds %struct.trinity_ps, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %Dpm0PgNbPsLo.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %Dpm0PgNbPsLo.i, align 4
  %conv.i = zext i8 %23 to i32
  %Dpm0PgNbPsHi.i = getelementptr inbounds %struct.trinity_ps, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %Dpm0PgNbPsHi.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %Dpm0PgNbPsHi.i, align 1
  %conv3.i = zext i8 %25 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 2
  %DpmXNbPsLo.i = getelementptr inbounds %struct.trinity_ps, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %DpmXNbPsLo.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %DpmXNbPsLo.i, align 2
  %conv5.i = zext i8 %27 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 4
  %DpmXNbPsHi.i = getelementptr inbounds %struct.trinity_ps, ptr %21, i32 0, i32 7
  %28 = ptrtoint ptr %DpmXNbPsHi.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DpmXNbPsHi.i, align 1
  %conv8.i = zext i8 %29 to i32
  %shl9.i = shl nuw nsw i32 %conv8.i, 6
  %or.i = or i32 %and.i, %conv.i
  %or7.i = or i32 %or.i, %shl4.i
  %or10.i = or i32 %or7.i, %shl6.i
  %or11.i = or i32 %or10.i, %shl9.i
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 128504, i32 noundef %or11.i) #9
  br label %trinity_setup_nbp_sim.exit

trinity_setup_nbp_sim.exit:                       ; preds = %if.then.i, %trinity_wait_for_level_0.exit.trinity_setup_nbp_sim.exit_crit_edge
  %ps_priv.i.i31 = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 9
  %30 = ptrtoint ptr %ps_priv.i.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ps_priv.i.i31, align 4
  %ps_priv.i23.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 9
  %32 = ptrtoint ptr %ps_priv.i23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ps_priv.i23.i, align 4
  %cmp.i32 = icmp eq ptr %33, null
  br i1 %cmp.i32, label %trinity_setup_nbp_sim.exit.cond.end.i_crit_edge, label %cond.false.i

trinity_setup_nbp_sim.exit.cond.end.i_crit_edge:  ; preds = %trinity_setup_nbp_sim.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %trinity_setup_nbp_sim.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %trinity_setup_nbp_sim.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %35, %cond.false.i ], [ 1, %trinity_setup_nbp_sim.exit.cond.end.i_crit_edge ]
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp328.not.i = icmp eq i32 %37, 0
  br i1 %cmp328.not.i, label %cond.end.i.for.cond5.preheader.i_crit_edge, label %cond.end.i.for.body.i37_crit_edge

cond.end.i.for.body.i37_crit_edge:                ; preds = %cond.end.i
  br label %for.body.i37

cond.end.i.for.cond5.preheader.i_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.body.i37.for.cond5.preheader.i_crit_edge, %cond.end.i.for.cond5.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %cond.end.i.for.cond5.preheader.i_crit_edge ], [ %39, %for.body.i37.for.cond5.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %cond.i)
  %cmp630.i = icmp ult i32 %.lcssa.i, %cond.i
  br i1 %cmp630.i, label %for.cond5.preheader.i.for.body7.i_crit_edge, label %for.cond5.preheader.i.trinity_program_power_levels_0_to_n.exit_crit_edge

for.cond5.preheader.i.trinity_program_power_levels_0_to_n.exit_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_program_power_levels_0_to_n.exit

for.cond5.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %for.body7.i

for.body.i37:                                     ; preds = %for.body.i37.for.body.i37_crit_edge, %cond.end.i.for.body.i37_crit_edge
  %i.029.i = phi i32 [ %inc.i36, %for.body.i37.for.body.i37_crit_edge ], [ 0, %cond.end.i.for.body.i37_crit_edge ]
  %arrayidx.i = getelementptr %struct.trinity_ps, ptr %31, i32 0, i32 1, i32 %i.029.i
  tail call fastcc void @trinity_program_power_level(ptr noundef %rdev, ptr noundef %arrayidx.i, i32 noundef %i.029.i) #9
  %mul.i.i = shl i32 %i.029.i, 5
  %add.i.i = add i32 %mul.i.i, 126976
  %call.i.i33 = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i.i) #9
  %and.i.i34 = and i32 %call.i.i33, -256
  %spec.select.i.i35 = or i32 %and.i.i34, 1
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i.i, i32 noundef %spec.select.i.i35) #9
  %inc.i36 = add nuw i32 %i.029.i, 1
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %31, align 4
  %cmp3.i = icmp ult i32 %inc.i36, %39
  br i1 %cmp3.i, label %for.body.i37.for.body.i37_crit_edge, label %for.body.i37.for.cond5.preheader.i_crit_edge

for.body.i37.for.cond5.preheader.i_crit_edge:     ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i

for.body.i37.for.body.i37_crit_edge:              ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i37

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond5.preheader.i.for.body7.i_crit_edge
  %i.131.i = phi i32 [ %inc9.i, %for.body7.i.for.body7.i_crit_edge ], [ %.lcssa.i, %for.cond5.preheader.i.for.body7.i_crit_edge ]
  %mul.i24.i = shl i32 %i.131.i, 5
  %add.i25.i = add i32 %mul.i24.i, 126976
  %call.i26.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i25.i) #9
  %and.i27.i = and i32 %call.i26.i, -256
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i25.i, i32 noundef %and.i27.i) #9
  %inc9.i = add i32 %i.131.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, %cond.i
  br i1 %exitcond.not.i, label %for.body7.i.trinity_program_power_levels_0_to_n.exit_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7.i

for.body7.i.trinity_program_power_levels_0_to_n.exit_crit_edge: ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_program_power_levels_0_to_n.exit

trinity_program_power_levels_0_to_n.exit:         ; preds = %for.body7.i.trinity_program_power_levels_0_to_n.exit_crit_edge, %for.cond5.preheader.i.trinity_program_power_levels_0_to_n.exit_crit_edge
  %call.i38 = tail call i32 @trinity_dpm_force_state(ptr noundef %rdev, i32 noundef 0) #9
  %call.i39 = tail call i32 @trinity_dpm_no_forced_level(ptr noundef %rdev) #9
  %40 = ptrtoint ptr %ps_priv.i.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ps_priv.i.i31, align 4
  %42 = ptrtoint ptr %ps_priv.i23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ps_priv.i23.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  %sub.i = add i32 %45, -1
  %arrayidx.i41 = getelementptr %struct.trinity_ps, ptr %41, i32 0, i32 1, i32 %sub.i
  %46 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i41, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %43, align 4
  %sub4.i = add i32 %49, -1
  %arrayidx5.i = getelementptr %struct.trinity_ps, ptr %43, i32 0, i32 1, i32 %sub4.i
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %51)
  %cmp.i42 = icmp ult i32 %47, %51
  br i1 %cmp.i42, label %trinity_program_power_levels_0_to_n.exit.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, label %if.end.i43

trinity_program_power_levels_0_to_n.exit.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge: ; preds = %trinity_program_power_levels_0_to_n.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_set_uvd_clock_after_set_eng_clock.exit

if.end.i43:                                       ; preds = %trinity_program_power_levels_0_to_n.exit
  %52 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv.i, align 4
  %enable_gfx_power_gating.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %53, i32 0, i32 10
  %54 = ptrtoint ptr %enable_gfx_power_gating.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enable_gfx_power_gating.i.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i.i, label %if.end.i43.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i43.if.end.i.i_crit_edge:                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i33.i.i.i = getelementptr i8, ptr %57, i32 1656
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33.i.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %59 = and i32 %58, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i37.i.i.i = getelementptr i8, ptr %61, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i.i.i, i32 %59) #9, !srcloc !47
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i41.i.i.i = getelementptr i8, ptr %63, i32 39160
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i43.if.end.i.i_crit_edge
  %uvd_dpm.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %53, i32 0, i32 17
  %65 = ptrtoint ptr %uvd_dpm.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %uvd_dpm.i.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool1.not.i.i = icmp eq i8 %66, 0
  %vclk.i96.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 3
  %67 = ptrtoint ptr %vclk.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vclk.i96.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i97.i.i = icmp eq i32 %68, 0
  br i1 %tobool1.not.i.i, label %if.else16.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  br i1 %cmp.i97.i.i, label %land.lhs.true.i.i.i, label %if.then2.i.i.if.then7.i.i_crit_edge

if.then2.i.i.if.then7.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then2.i.i
  %dclk.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 4
  %69 = ptrtoint ptr %dclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dclk.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp1.i.i.i = icmp eq i32 %70, 0
  br i1 %cmp1.i.i.i, label %land.lhs.true.i.i, label %land.lhs.true.i.i.i.if.then7.i.i_crit_edge

land.lhs.true.i.i.i.if.then7.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i.i.i
  %vclk.i57.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 3
  %71 = ptrtoint ptr %vclk.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vclk.i57.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i58.i.i = icmp eq i32 %72, 0
  br i1 %cmp.i58.i.i, label %land.lhs.true.i61.i.i, label %land.lhs.true.i.i.if.then5.i.i_crit_edge

land.lhs.true.i.i.if.then5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

land.lhs.true.i61.i.i:                            ; preds = %land.lhs.true.i.i
  %dclk.i59.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 4
  %73 = ptrtoint ptr %dclk.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dclk.i59.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp1.i60.i.i = icmp eq i32 %74, 0
  br i1 %cmp1.i60.i.i, label %land.lhs.true.i61.i.i.if.end14.i.i_crit_edge, label %land.lhs.true.i61.i.i.if.then5.i.i_crit_edge

land.lhs.true.i61.i.i.if.then5.i.i_crit_edge:     ; preds = %land.lhs.true.i61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5.i.i

land.lhs.true.i61.i.i.if.end14.i.i_crit_edge:     ; preds = %land.lhs.true.i61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i61.i.i.if.then5.i.i_crit_edge, %land.lhs.true.i.i.if.then5.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i.i) #9
  %75 = ptrtoint ptr %p.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %p.i.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i.i.i) #9
  %76 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %u.i.i.i, align 4, !annotation !48
  %call.i.i.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128104) #9
  %asic.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %77 = ptrtoint ptr %asic.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %asic.i.i.i, align 8
  %get_xclk.i.i.i = getelementptr inbounds %struct.radeon_asic, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %get_xclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %get_xclk.i.i.i, align 4
  %call1.i.i.i = tail call i32 %80(ptr noundef %rdev) #9
  call void @r600_calculate_u_and_p(i32 noundef 0, i32 noundef %call1.i.i.i, i32 noundef 16, ptr noundef nonnull %p.i.i.i, ptr noundef nonnull %u.i.i.i) #9
  %81 = ptrtoint ptr %p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %p.i.i.i, align 4
  %add.i.i.i = add i32 %call.i.i.i, -1
  %sub.i.i.i = add i32 %add.i.i.i, %82
  %div.i.i.i = udiv i32 %sub.i.i.i, %call.i.i.i
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127396, i32 noundef %div.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i.i) #9
  br label %if.end14.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.then7.i.i_crit_edge, %if.then2.i.i.if.then7.i.i_crit_edge
  %83 = ptrtoint ptr %ps_priv.i.i31 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ps_priv.i.i31, align 4
  %vclk_low_divider.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %84, i32 0, i32 8
  %85 = ptrtoint ptr %vclk_low_divider.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %vclk_low_divider.i.i.i, align 4
  %vclk_high_divider.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %84, i32 0, i32 9
  %87 = ptrtoint ptr %vclk_high_divider.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %vclk_high_divider.i.i.i, align 4
  %shl.i.i.i = shl i32 %88, 8
  %or.i.i.i = or i32 %shl.i.i.i, %86
  %dclk_low_divider.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %84, i32 0, i32 10
  %89 = ptrtoint ptr %dclk_low_divider.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dclk_low_divider.i.i.i, align 4
  %shl1.i.i.i = shl i32 %90, 16
  %or2.i.i.i = or i32 %or.i.i.i, %shl1.i.i.i
  %dclk_high_divider.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %84, i32 0, i32 11
  %91 = ptrtoint ptr %dclk_high_divider.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dclk_high_divider.i.i.i, align 4
  %shl3.i.i.i = shl i32 %92, 24
  %or4.i.i.i = or i32 %or2.i.i.i, %shl3.i.i.i
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127392, i32 noundef %or4.i.i.i) #9
  %vclk.i73.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 3
  %93 = ptrtoint ptr %vclk.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vclk.i73.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i74.i.i = icmp eq i32 %94, 0
  br i1 %cmp.i74.i.i, label %land.lhs.true.i77.i.i, label %if.then7.i.i.if.end14.i.i_crit_edge

if.then7.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

land.lhs.true.i77.i.i:                            ; preds = %if.then7.i.i
  %dclk.i75.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 4
  %95 = ptrtoint ptr %dclk.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dclk.i75.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp1.i76.i.i = icmp eq i32 %96, 0
  br i1 %cmp1.i76.i.i, label %if.then9.i.i, label %land.lhs.true.i77.i.i.if.end14.i.i_crit_edge

land.lhs.true.i77.i.i.if.end14.i.i_crit_edge:     ; preds = %land.lhs.true.i77.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.then9.i.i:                                     ; preds = %land.lhs.true.i77.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %98, i32 1800
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %100 = and i32 %99, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %101 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i86.i.i = getelementptr i8, ptr %102, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86.i.i, i32 %100) #9, !srcloc !47
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %103 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %asic.i.i, align 8
  %set_uvd_clocks.i.i = getelementptr inbounds %struct.radeon_asic, ptr %104, i32 0, i32 20, i32 12
  %105 = ptrtoint ptr %set_uvd_clocks.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %set_uvd_clocks.i.i, align 4
  %107 = ptrtoint ptr %vclk.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %vclk.i96.i.i, align 4
  %dclk.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 4
  %109 = ptrtoint ptr %dclk.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dclk.i.i, align 4
  %call11.i.i = tail call i32 %106(ptr noundef %rdev, i32 noundef %108, i32 noundef %110) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i87.i.i) #9
  %111 = ptrtoint ptr %p.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %p.i87.i.i, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i88.i.i) #9
  %112 = ptrtoint ptr %u.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %u.i88.i.i, align 4, !annotation !48
  %call.i89.i.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128104) #9
  %113 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %asic.i.i, align 8
  %get_xclk.i91.i.i = getelementptr inbounds %struct.radeon_asic, ptr %114, i32 0, i32 9
  %115 = ptrtoint ptr %get_xclk.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %get_xclk.i91.i.i, align 4
  %call1.i92.i.i = tail call i32 %116(ptr noundef %rdev) #9
  call void @r600_calculate_u_and_p(i32 noundef 3000, i32 noundef %call1.i92.i.i, i32 noundef 16, ptr noundef nonnull %p.i87.i.i, ptr noundef nonnull %u.i88.i.i) #9
  %117 = ptrtoint ptr %p.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %p.i87.i.i, align 4
  %add.i93.i.i = add i32 %call.i89.i.i, -1
  %sub.i94.i.i = add i32 %add.i93.i.i, %118
  %div.i95.i.i = udiv i32 %sub.i94.i.i, %call.i89.i.i
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 127396, i32 noundef %div.i95.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i88.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i87.i.i) #9
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then9.i.i, %land.lhs.true.i77.i.i.if.end14.i.i_crit_edge, %if.then7.i.i.if.end14.i.i_crit_edge, %if.then5.i.i, %land.lhs.true.i61.i.i.if.end14.i.i_crit_edge
  %call15.i.i = call i32 @trinity_uvd_dpm_config(ptr noundef %rdev) #9
  br label %if.end27.i.i

if.else16.i.i:                                    ; preds = %if.end.i.i
  br i1 %cmp.i97.i.i, label %land.lhs.true.i100.i.i, label %if.else16.i.i.lor.lhs.false.i.i_crit_edge

if.else16.i.i.lor.lhs.false.i.i_crit_edge:        ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true.i100.i.i:                           ; preds = %if.else16.i.i
  %dclk.i98.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 4
  %119 = ptrtoint ptr %dclk.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dclk.i98.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp1.i99.i.i = icmp eq i32 %120, 0
  br i1 %cmp1.i99.i.i, label %land.lhs.true.i100.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, label %land.lhs.true.i100.i.i.lor.lhs.false.i.i_crit_edge

land.lhs.true.i100.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %land.lhs.true.i100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i.i

land.lhs.true.i100.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge: ; preds = %land.lhs.true.i100.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_set_uvd_clock_after_set_eng_clock.exit

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i100.i.i.lor.lhs.false.i.i_crit_edge, %if.else16.i.i.lor.lhs.false.i.i_crit_edge
  %121 = ptrtoint ptr %ps_priv.i.i31 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ps_priv.i.i31, align 4
  %123 = ptrtoint ptr %ps_priv.i23.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ps_priv.i23.i, align 4
  %vclk2.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 3
  %125 = ptrtoint ptr %vclk2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %vclk2.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %126)
  %cmp.i106.i.i = icmp eq i32 %68, %126
  br i1 %cmp.i106.i.i, label %land.lhs.true.i108.i.i, label %lor.lhs.false.i.i.if.end20.i.i_crit_edge

lor.lhs.false.i.i.if.end20.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true.i108.i.i:                           ; preds = %lor.lhs.false.i.i
  %dclk.i107.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 4
  %127 = ptrtoint ptr %dclk.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dclk.i107.i.i, align 4
  %dclk3.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 4
  %129 = ptrtoint ptr %dclk3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dclk3.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp4.i.i.i = icmp eq i32 %128, %130
  br i1 %cmp4.i.i.i, label %land.lhs.true5.i.i.i, label %land.lhs.true.i108.i.i.if.end20.i.i_crit_edge

land.lhs.true.i108.i.i.if.end20.i.i_crit_edge:    ; preds = %land.lhs.true.i108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i108.i.i
  %vclk_low_divider.i109.i.i = getelementptr inbounds %struct.trinity_ps, ptr %122, i32 0, i32 8
  %131 = ptrtoint ptr %vclk_low_divider.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vclk_low_divider.i109.i.i, align 4
  %vclk_low_divider6.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %124, i32 0, i32 8
  %133 = ptrtoint ptr %vclk_low_divider6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %vclk_low_divider6.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp7.i.i.i = icmp eq i32 %132, %134
  br i1 %cmp7.i.i.i, label %land.lhs.true8.i.i.i, label %land.lhs.true5.i.i.i.if.end20.i.i_crit_edge

land.lhs.true5.i.i.i.if.end20.i.i_crit_edge:      ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true8.i.i.i:                             ; preds = %land.lhs.true5.i.i.i
  %vclk_high_divider.i110.i.i = getelementptr inbounds %struct.trinity_ps, ptr %122, i32 0, i32 9
  %135 = ptrtoint ptr %vclk_high_divider.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %vclk_high_divider.i110.i.i, align 4
  %vclk_high_divider9.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %124, i32 0, i32 9
  %137 = ptrtoint ptr %vclk_high_divider9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %vclk_high_divider9.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %138)
  %cmp10.i.i.i = icmp eq i32 %136, %138
  br i1 %cmp10.i.i.i, label %land.lhs.true11.i.i.i, label %land.lhs.true8.i.i.i.if.end20.i.i_crit_edge

land.lhs.true8.i.i.i.if.end20.i.i_crit_edge:      ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true11.i.i.i:                            ; preds = %land.lhs.true8.i.i.i
  %dclk_low_divider.i111.i.i = getelementptr inbounds %struct.trinity_ps, ptr %122, i32 0, i32 10
  %139 = ptrtoint ptr %dclk_low_divider.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dclk_low_divider.i111.i.i, align 4
  %dclk_low_divider12.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %124, i32 0, i32 10
  %141 = ptrtoint ptr %dclk_low_divider12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dclk_low_divider12.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %142)
  %cmp13.i.i.i = icmp eq i32 %140, %142
  br i1 %cmp13.i.i.i, label %land.lhs.true14.i.i.i, label %land.lhs.true11.i.i.i.if.end20.i.i_crit_edge

land.lhs.true11.i.i.i.if.end20.i.i_crit_edge:     ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true14.i.i.i:                            ; preds = %land.lhs.true11.i.i.i
  %dclk_high_divider.i112.i.i = getelementptr inbounds %struct.trinity_ps, ptr %122, i32 0, i32 11
  %143 = ptrtoint ptr %dclk_high_divider.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dclk_high_divider.i112.i.i, align 4
  %dclk_high_divider15.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %124, i32 0, i32 11
  %145 = ptrtoint ptr %dclk_high_divider15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dclk_high_divider15.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %146)
  %cmp16.i.i.i = icmp eq i32 %144, %146
  br i1 %cmp16.i.i.i, label %land.lhs.true14.i.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, label %land.lhs.true14.i.i.i.if.end20.i.i_crit_edge

land.lhs.true14.i.i.i.if.end20.i.i_crit_edge:     ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

land.lhs.true14.i.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge: ; preds = %land.lhs.true14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_set_uvd_clock_after_set_eng_clock.exit

if.end20.i.i:                                     ; preds = %land.lhs.true14.i.i.i.if.end20.i.i_crit_edge, %land.lhs.true11.i.i.i.if.end20.i.i_crit_edge, %land.lhs.true8.i.i.i.if.end20.i.i_crit_edge, %land.lhs.true5.i.i.i.if.end20.i.i_crit_edge, %land.lhs.true.i108.i.i.if.end20.i.i_crit_edge, %lor.lhs.false.i.i.if.end20.i.i_crit_edge
  %asic21.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %147 = ptrtoint ptr %asic21.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %asic21.i.i, align 8
  %set_uvd_clocks23.i.i = getelementptr inbounds %struct.radeon_asic, ptr %148, i32 0, i32 20, i32 12
  %149 = ptrtoint ptr %set_uvd_clocks23.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set_uvd_clocks23.i.i, align 4
  %dclk25.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 4
  %151 = ptrtoint ptr %dclk25.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dclk25.i.i, align 4
  %call26.i.i = tail call i32 %150(ptr noundef %rdev, i32 noundef %68, i32 noundef %152) #9
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end20.i.i, %if.end14.i.i
  %153 = ptrtoint ptr %enable_gfx_power_gating.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %enable_gfx_power_gating.i.i, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool29.not.i.i = icmp eq i8 %154, 0
  br i1 %tobool29.not.i.i, label %if.end27.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, label %if.then30.i.i

if.end27.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge: ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_set_uvd_clock_after_set_eng_clock.exit

if.then30.i.i:                                    ; preds = %if.end27.i.i
  %call.i115.i.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -536866788) #9
  %and.i.i.i = and i32 %call.i115.i.i, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then30.i.i.trinity_gfx_powergating_enable.exit.i.i_crit_edge, label %if.then2.i.i.i

if.then30.i.i.trinity_gfx_powergating_enable.exit.i.i_crit_edge: ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_gfx_powergating_enable.exit.i.i

if.then2.i.i.i:                                   ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i.i.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -536858588) #9
  %or.i116.i.i = or i32 %call3.i.i.i, 1
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef -536858588, i32 noundef %or.i116.i.i) #9
  br label %trinity_gfx_powergating_enable.exit.i.i

trinity_gfx_powergating_enable.exit.i.i:          ; preds = %if.then2.i.i.i, %if.then30.i.i.trinity_gfx_powergating_enable.exit.i.i_crit_edge
  %155 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %156, i32 1656
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #9, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %158 = or i32 %157, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  call void @arm_heavy_mb() #9
  %159 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %160, i32 1656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 %158) #9, !srcloc !47
  br label %trinity_set_uvd_clock_after_set_eng_clock.exit

trinity_set_uvd_clock_after_set_eng_clock.exit:   ; preds = %trinity_gfx_powergating_enable.exit.i.i, %if.end27.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, %land.lhs.true14.i.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, %land.lhs.true.i100.i.i.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge, %trinity_program_power_levels_0_to_n.exit.trinity_set_uvd_clock_after_set_eng_clock.exit_crit_edge
  %evclk.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 5
  %161 = ptrtoint ptr %evclk.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %evclk.i, align 4
  %evclk1.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 5
  %163 = ptrtoint ptr %evclk1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %evclk1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %164)
  %cmp.not.i = icmp eq i32 %162, %164
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %trinity_set_uvd_clock_after_set_eng_clock.exit.if.then.i45_crit_edge

trinity_set_uvd_clock_after_set_eng_clock.exit.if.then.i45_crit_edge: ; preds = %trinity_set_uvd_clock_after_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i45

lor.lhs.false.i:                                  ; preds = %trinity_set_uvd_clock_after_set_eng_clock.exit
  %ecclk.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 6
  %165 = ptrtoint ptr %ecclk.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ecclk.i, align 4
  %ecclk2.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 6
  %167 = ptrtoint ptr %ecclk2.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ecclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %166, i32 %168)
  %cmp3.not.i = icmp eq i32 %166, %168
  br i1 %cmp3.not.i, label %lor.lhs.false.i.if.end5_crit_edge, label %lor.lhs.false.i.if.then.i45_crit_edge

lor.lhs.false.i.if.then.i45_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i45

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.i45:                                      ; preds = %lor.lhs.false.i.if.then.i45_crit_edge, %trinity_set_uvd_clock_after_set_eng_clock.exit.if.then.i45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i44 = icmp eq i32 %164, 0
  br i1 %tobool.not.i44, label %lor.lhs.false5.i, label %if.then.i45.if.end.i47_crit_edge

if.then.i45.if.end.i47_crit_edge:                 ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i47

lor.lhs.false5.i:                                 ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #11
  %ecclk6.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 6
  %169 = ptrtoint ptr %ecclk6.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ecclk6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool7.not.i = icmp eq i32 %170, 0
  br label %if.end.i47

if.end.i47:                                       ; preds = %lor.lhs.false5.i, %if.then.i45.if.end.i47_crit_edge
  %.sink.i = phi i1 [ false, %if.then.i45.if.end.i47_crit_edge ], [ %tobool7.not.i, %lor.lhs.false5.i ]
  call void @vce_v1_0_enable_mgcg(ptr noundef %rdev, i1 noundef zeroext %.sink.i) #9
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %171 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %asic.i, align 8
  %set_vce_clocks.i = getelementptr inbounds %struct.radeon_asic, ptr %172, i32 0, i32 20, i32 13
  %173 = ptrtoint ptr %set_vce_clocks.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %set_vce_clocks.i, align 4
  %175 = ptrtoint ptr %evclk1.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %evclk1.i, align 4
  %ecclk10.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 6
  %177 = ptrtoint ptr %ecclk10.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ecclk10.i, align 4
  %call.i46 = call i32 %174(ptr noundef %rdev, i32 noundef %176, i32 noundef %178) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end.i47, %lor.lhs.false.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  call void @trinity_release_mutex(ptr noundef %rdev) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @trinity_dpm_post_set_power_state(ptr nocapture noundef readonly %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20
  %ps_priv.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 9
  %2 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18
  %4 = call ptr @memcpy(ptr %current_rps.i, ptr %requested_rps, i32 40)
  %current_ps.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 19
  %5 = call ptr @memcpy(ptr %current_ps.i, ptr %3, i32 92)
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 9
  %6 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @trinity_acquire_mutex(ptr noundef %rdev) #9
  tail call void @sumo_program_sstp(ptr noundef %rdev) #9
  tail call void @sumo_take_smu_control(ptr noundef %rdev, i1 noundef zeroext true) #9
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %call1.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef -536866812) #9
  %and.i = lshr i32 %call1.i, 2
  %shr.i = and i32 %and.i, 127
  %min_sclk_did.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %min_sclk_did.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shr.i, ptr %min_sclk_did.i, align 4
  tail call void @trinity_release_mutex(ptr noundef %rdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_program_sstp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_take_smu_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_display_configuration_changed(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %voltage_drop_in_dce = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %voltage_drop_in_dce to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %voltage_drop_in_dce, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @trinity_dce_enable_voltage_adjustment(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %new_active_crtc_count.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 15
  %4 = ptrtoint ptr %new_active_crtc_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_active_crtc_count.i, align 4
  %default_dispclk.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 7
  %6 = ptrtoint ptr %default_dispclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_dispclk.i, align 4
  %div.i = udiv i32 %7, 100
  %conv.i = zext i32 %div.i to i64
  %call.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 129312) #9
  %and.i = and i32 %call.i, 255
  %conv2.i = zext i32 %5 to i64
  %mul.i = mul nuw nsw i64 %conv2.i, 14213
  %mul1.i = mul i64 %mul.i, %conv.i
  %mul3.i = mul i64 %mul1.i, %conv.i
  %sub.i = sub nsw i32 32, %and.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shr4.i = lshr i64 %mul3.i, %sh_prom.i
  %conv5.i = trunc i64 %shr4.i to i32
  tail call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef 129288, i32 noundef %conv5.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dce_enable_voltage_adjustment(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i74 = alloca i16, align 2
  %frev.i75 = alloca i8, align 1
  %crev.i76 = alloca i8, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 500) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %priv, align 4
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_bapm to i32))
  %7 = load i32, ptr @radeon_bapm, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %7, label %if.else14 [
    i32 -1, label %if.then3
    i32 0, label %if.then12
  ]

if.then3:                                         ; preds = %if.end
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5218, i16 %12)
  %cmp4 = icmp eq i16 %12, 5218
  %enable_bapm = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 16
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %enable_bapm to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %enable_bapm, align 2
  br label %if.end17

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %enable_bapm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enable_bapm, align 2
  br label %if.end17

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %enable_bapm13 = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %enable_bapm13 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %enable_bapm13, align 2
  br label %if.end17

if.else14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %enable_bapm15 = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %enable_bapm15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %enable_bapm15, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then12, %if.else, %if.then6
  %enable_nbps_policy = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %enable_nbps_policy to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enable_nbps_policy, align 8
  %enable_sclk_ds = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %enable_sclk_ds to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %enable_sclk_ds, align 1
  %enable_gfx_power_gating = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %enable_gfx_power_gating to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enable_gfx_power_gating, align 4
  %enable_gfx_clock_gating = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %enable_gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %enable_gfx_clock_gating, align 1
  %enable_mg_clock_gating = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %enable_mg_clock_gating to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %enable_mg_clock_gating, align 1
  %enable_gfx_dynamic_mgpg = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %enable_gfx_dynamic_mgpg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %enable_gfx_dynamic_mgpg, align 2
  %override_dynamic_mgpg = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %override_dynamic_mgpg to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %override_dynamic_mgpg, align 2
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 13
  %24 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %enable_auto_thermal_throttling, align 1
  %voltage_drop_in_dce = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %voltage_drop_in_dce to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %voltage_drop_in_dce, align 1
  %uvd_dpm = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 17
  %26 = ptrtoint ptr %uvd_dpm to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %uvd_dpm, align 1
  %mode_info1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #9
  %27 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %frev.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #9
  %28 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %crev.i, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #9
  %29 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !48
  %30 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mode_info1.i, align 4
  %call2.i = call zeroext i1 @atom_parse_data_header(ptr noundef %31, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #9
  br i1 %call2.i, label %if.then.i, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then.i:                                        ; preds = %if.end17
  %32 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bios.i, align 4
  %36 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %37 to i32
  %add.ptr.i = getelementptr i8, ptr %35, i32 %conv.i
  %38 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %39)
  %cmp.not.i = icmp eq i8 %39, 7
  br i1 %cmp.not.i, label %if.end.i, label %trinity_parse_sys_info_table.exit

if.end.i:                                         ; preds = %if.then.i
  %ulBootUpEngineClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 1
  %40 = ptrtoint ptr %ulBootUpEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %ulBootUpEngineClock.i, align 1
  %42 = call i32 @llvm.bswap.i32(i32 %41) #9
  %sys_info.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3
  %bootup_sclk.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %bootup_sclk.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bootup_sclk.i, align 8
  %ulMinEngineClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 12
  %44 = ptrtoint ptr %ulMinEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %ulMinEngineClock.i, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45) #9
  %min_sclk.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 2
  %47 = ptrtoint ptr %min_sclk.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %min_sclk.i, align 4
  %ulBootUpUMAClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 3
  %48 = ptrtoint ptr %ulBootUpUMAClock.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %ulBootUpUMAClock.i, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #9
  %51 = ptrtoint ptr %sys_info.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %sys_info.i, align 4
  %ulDentistVCOFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 2
  %52 = ptrtoint ptr %ulDentistVCOFreq.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %ulDentistVCOFreq.i, align 1
  %54 = call i32 @llvm.bswap.i32(i32 %53) #9
  %dentist_vco_freq.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %dentist_vco_freq.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %dentist_vco_freq.i, align 8
  %usBootUpNBVoltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 17
  %56 = ptrtoint ptr %usBootUpNBVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %usBootUpNBVoltage.i, align 1
  %58 = call i16 @llvm.bswap.i16(i16 %57) #9
  %bootup_nb_voltage_index.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %bootup_nb_voltage_index.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %bootup_nb_voltage_index.i, align 8
  %ucHtcTmpLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 10
  %60 = ptrtoint ptr %ucHtcTmpLmt.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %ucHtcTmpLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp14.i = icmp eq i8 %61, 0
  %spec.select.i = select i1 %cmp14.i, i8 -53, i8 %61
  %62 = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %spec.select.i, ptr %62, align 2
  %ucHtcHystLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 11
  %64 = ptrtoint ptr %ucHtcHystLmt.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ucHtcHystLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp23.i = icmp eq i8 %65, 0
  %.sink276.i = select i1 %cmp23.i, i8 5, i8 %65
  %66 = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 10
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %.sink276.i, ptr %66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %.sink276.i)
  %cmp38.not.i = icmp ugt i8 %spec.select.i, %.sink276.i
  br i1 %cmp38.not.i, label %if.end.i.if.end41.i_crit_edge, label %if.then40.i

if.end.i.if.end41.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then40.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #9
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then40.i, %if.end.i.if.end41.i_crit_edge
  %68 = ptrtoint ptr %enable_nbps_policy to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enable_nbps_policy, align 8, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i, label %if.end41.i.if.end48.i_crit_edge, label %if.then42.i

if.end41.i.if.end48.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then42.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %ucNBDPMEnable.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 63
  %70 = ptrtoint ptr %ucNBDPMEnable.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ucNBDPMEnable.i, align 1
  %conv43.i = zext i8 %71 to i32
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then42.i, %if.end41.i.if.end48.i_crit_edge
  %conv43.sink.i = phi i32 [ %conv43.i, %if.then42.i ], [ 0, %if.end41.i.if.end48.i_crit_edge ]
  %72 = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv43.sink.i, ptr %72, align 4
  %ulNbpStateMemclkFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 59
  %ulNbpStateNClkFreq.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 62
  %74 = ptrtoint ptr %ulNbpStateMemclkFreq.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %ulNbpStateMemclkFreq.i, align 1
  %76 = call i32 @llvm.bswap.i32(i32 %75) #9
  %arrayidx52.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 0
  %77 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx52.i, align 8
  %78 = ptrtoint ptr %ulNbpStateNClkFreq.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load i32, ptr %ulNbpStateNClkFreq.i, align 1
  %80 = call i32 @llvm.bswap.i32(i32 %79) #9
  %arrayidx55.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 6, i32 0
  %81 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx55.i, align 8
  %arrayidx.1.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i, i32 0, i32 1
  %82 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %arrayidx.1.i, align 1
  %84 = call i32 @llvm.bswap.i32(i32 %83) #9
  %arrayidx52.1.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 1
  %85 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx52.1.i, align 4
  %arrayidx53.1.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i, i32 0, i32 1
  %86 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %87 = load i32, ptr %arrayidx53.1.i, align 1
  %88 = call i32 @llvm.bswap.i32(i32 %87) #9
  %arrayidx55.1.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 6, i32 1
  %89 = ptrtoint ptr %arrayidx55.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx55.1.i, align 4
  %arrayidx.2.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i, i32 0, i32 2
  %90 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %arrayidx.2.i, align 1
  %92 = call i32 @llvm.bswap.i32(i32 %91) #9
  %arrayidx52.2.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 2
  %93 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx52.2.i, align 8
  %arrayidx53.2.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i, i32 0, i32 2
  %94 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 4)
  %95 = load i32, ptr %arrayidx53.2.i, align 1
  %96 = call i32 @llvm.bswap.i32(i32 %95) #9
  %arrayidx55.2.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 6, i32 2
  %97 = ptrtoint ptr %arrayidx55.2.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx55.2.i, align 8
  %arrayidx.3.i = getelementptr [4 x i32], ptr %ulNbpStateMemclkFreq.i, i32 0, i32 3
  %98 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %arrayidx.3.i, align 1
  %100 = call i32 @llvm.bswap.i32(i32 %99) #9
  %arrayidx52.3.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 5, i32 3
  %101 = ptrtoint ptr %arrayidx52.3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx52.3.i, align 4
  %arrayidx53.3.i = getelementptr [4 x i32], ptr %ulNbpStateNClkFreq.i, i32 0, i32 3
  %102 = ptrtoint ptr %arrayidx53.3.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %arrayidx53.3.i, align 1
  %104 = call i32 @llvm.bswap.i32(i32 %103) #9
  %arrayidx55.3.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 6, i32 3
  %105 = ptrtoint ptr %arrayidx55.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx55.3.i, align 4
  %usNBP0Voltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 15
  %106 = ptrtoint ptr %usNBP0Voltage.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %usNBP0Voltage.i, align 1
  %108 = call i16 @llvm.bswap.i16(i16 %107) #9
  %nbp_voltage_index.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 7
  %109 = ptrtoint ptr %nbp_voltage_index.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %108, ptr %nbp_voltage_index.i, align 8
  %usNBP1Voltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 16
  %110 = ptrtoint ptr %usNBP1Voltage.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %usNBP1Voltage.i, align 1
  %112 = call i16 @llvm.bswap.i16(i16 %111) #9
  %arrayidx60.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 7, i32 1
  %113 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %arrayidx60.i, align 2
  %usNBP2Voltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 60
  %114 = ptrtoint ptr %usNBP2Voltage.i to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %usNBP2Voltage.i, align 1
  %116 = call i16 @llvm.bswap.i16(i16 %115) #9
  %arrayidx63.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 7, i32 2
  %117 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %arrayidx63.i, align 4
  %usNBP3Voltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 61
  %118 = ptrtoint ptr %usNBP3Voltage.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 2)
  %119 = load i16, ptr %usNBP3Voltage.i, align 1
  %120 = call i16 @llvm.bswap.i16(i16 %119) #9
  %arrayidx66.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 7, i32 3
  %121 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %arrayidx66.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv43.sink.i)
  %tobool69.not.i = icmp eq i32 %conv43.sink.i, 0
  br i1 %tobool69.not.i, label %for.cond71.preheader.i, label %if.end48.i.if.end96.i_crit_edge

if.end48.i.if.end96.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96.i

for.cond71.preheader.i:                           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %76, ptr %arrayidx52.1.i, align 4
  %123 = ptrtoint ptr %arrayidx55.1.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %80, ptr %arrayidx55.1.i, align 4
  %124 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %108, ptr %arrayidx60.i, align 2
  %125 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %76, ptr %arrayidx52.2.i, align 8
  %126 = ptrtoint ptr %arrayidx55.2.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %80, ptr %arrayidx55.2.i, align 8
  %127 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %108, ptr %arrayidx63.i, align 4
  %128 = ptrtoint ptr %arrayidx52.3.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %76, ptr %arrayidx52.3.i, align 4
  %129 = ptrtoint ptr %arrayidx55.3.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %80, ptr %arrayidx55.3.i, align 4
  %130 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %108, ptr %arrayidx66.i, align 2
  br label %if.end96.i

if.end96.i:                                       ; preds = %for.cond71.preheader.i, %if.end48.i.if.end96.i_crit_edge
  %ucUMAChannelNumber.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 21
  %131 = ptrtoint ptr %ucUMAChannelNumber.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %ucUMAChannelNumber.i, align 1
  %conv97.i = zext i8 %132 to i32
  %uma_channel_number.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 13
  %133 = ptrtoint ptr %uma_channel_number.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv97.i, ptr %uma_channel_number.i, align 4
  %sclk_voltage_mapping_table.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 11
  %sAvail_SCLK.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 25
  call void @sumo_construct_sclk_voltage_mapping_table(ptr noundef %rdev, ptr noundef %sclk_voltage_mapping_table.i, ptr noundef %sAvail_SCLK.i) #9
  %vid_mapping_table.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 12
  call void @sumo_construct_vid_mapping_table(ptr noundef %rdev, ptr noundef %vid_mapping_table.i, ptr noundef %sAvail_SCLK.i) #9
  %ucDPMState0VclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 65
  %134 = ptrtoint ptr %ucDPMState0VclkFid.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %ucDPMState0VclkFid.i, align 1
  %vclk_did.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 0, i32 2
  %136 = ptrtoint ptr %vclk_did.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %vclk_did.i, align 8
  %ucDPMState1VclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 67
  %137 = ptrtoint ptr %ucDPMState1VclkFid.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %ucDPMState1VclkFid.i, align 1
  %vclk_did108.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 1, i32 2
  %139 = ptrtoint ptr %vclk_did108.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %vclk_did108.i, align 4
  %ucDPMState2VclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 69
  %140 = ptrtoint ptr %ucDPMState2VclkFid.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ucDPMState2VclkFid.i, align 1
  %vclk_did112.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 2, i32 2
  %142 = ptrtoint ptr %vclk_did112.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %vclk_did112.i, align 8
  %ucDPMState3VclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 71
  %143 = ptrtoint ptr %ucDPMState3VclkFid.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ucDPMState3VclkFid.i, align 1
  %vclk_did116.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 3, i32 2
  %145 = ptrtoint ptr %vclk_did116.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %vclk_did116.i, align 4
  %ucDPMState0DclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 66
  %146 = ptrtoint ptr %ucDPMState0DclkFid.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %ucDPMState0DclkFid.i, align 1
  %dclk_did.i = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 0, i32 3
  %148 = ptrtoint ptr %dclk_did.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %dclk_did.i, align 1
  %ucDPMState1DclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 68
  %149 = ptrtoint ptr %ucDPMState1DclkFid.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %ucDPMState1DclkFid.i, align 1
  %dclk_did123.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 1, i32 3
  %151 = ptrtoint ptr %dclk_did123.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %dclk_did123.i, align 1
  %ucDPMState2DclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 70
  %152 = ptrtoint ptr %ucDPMState2DclkFid.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %ucDPMState2DclkFid.i, align 1
  %dclk_did127.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 2, i32 3
  %154 = ptrtoint ptr %dclk_did127.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %153, ptr %dclk_did127.i, align 1
  %ucDPMState3DclkFid.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_7, ptr %add.ptr.i, i32 0, i32 72
  %155 = ptrtoint ptr %ucDPMState3DclkFid.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ucDPMState3DclkFid.i, align 1
  %dclk_did131.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 3, i32 3
  %157 = ptrtoint ptr %dclk_did131.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %dclk_did131.i, align 1
  %158 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %priv, align 4
  %dentist_vco_freq.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %159, i32 0, i32 3, i32 3
  br label %for.body135.i

for.body135.i:                                    ; preds = %trinity_convert_did_to_freq.exit272.i.for.body135.i_crit_edge, %if.end96.i
  %i.2275.i = phi i32 [ 0, %if.end96.i ], [ %inc153.i, %trinity_convert_did_to_freq.exit272.i.for.body135.i_crit_edge ]
  %arrayidx138.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 %i.2275.i
  %vclk_did139.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 %i.2275.i, i32 2
  %160 = ptrtoint ptr %vclk_did139.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %vclk_did139.i, align 4
  %conv.i.i = zext i8 %161 to i32
  %162 = add i8 %161, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %162)
  %163 = icmp ult i8 %162, 56
  br i1 %163, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body135.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 25
  br label %if.end37.i.i

if.else.i.i:                                      ; preds = %for.body135.i
  %164 = and i8 %161, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %164)
  %165 = icmp eq i8 %164, 64
  br i1 %165, label %if.then13.i.i, label %if.else16.i.i

if.then13.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %166 = mul nuw nsw i32 %conv.i.i, 50
  %add.i.i = add nsw i32 %166, -1600
  br label %if.end37.i.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  %167 = add i8 %161, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %167)
  %168 = icmp ult i8 %167, 31
  br i1 %168, label %if.then24.i.i, label %if.else29.i.i

if.then24.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %169 = mul nuw nsw i32 %conv.i.i, 100
  %add28.i.i = add nsw i32 %169, -6400
  br label %if.end37.i.i

if.else29.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %161)
  %cmp31.i.i = icmp eq i8 %161, 127
  br i1 %cmp31.i.i, label %if.else29.i.i.if.end37.i.i_crit_edge, label %if.else29.i.i.trinity_convert_did_to_freq.exit.i_crit_edge

if.else29.i.i.trinity_convert_did_to_freq.exit.i_crit_edge: ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_convert_did_to_freq.exit.i

if.else29.i.i.if.end37.i.i_crit_edge:             ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else29.i.i.if.end37.i.i_crit_edge, %if.then24.i.i, %if.then13.i.i, %if.then.i.i
  %divider.0.i.i = phi i32 [ %mul.i.i, %if.then.i.i ], [ %add.i.i, %if.then13.i.i ], [ %add28.i.i, %if.then24.i.i ], [ 12800, %if.else29.i.i.if.end37.i.i_crit_edge ]
  %170 = ptrtoint ptr %dentist_vco_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dentist_vco_freq.i.i, align 4
  %mul38.i.i = mul i32 %171, 100
  %sub39.i.i = add nsw i32 %divider.0.i.i, -1
  %add40.i.i = add i32 %sub39.i.i, %mul38.i.i
  %div.i.i = udiv i32 %add40.i.i, %divider.0.i.i
  br label %trinity_convert_did_to_freq.exit.i

trinity_convert_did_to_freq.exit.i:               ; preds = %if.end37.i.i, %if.else29.i.i.trinity_convert_did_to_freq.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %div.i.i, %if.end37.i.i ], [ 10000, %if.else29.i.i.trinity_convert_did_to_freq.exit.i_crit_edge ]
  %172 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %retval.0.i.i, ptr %arrayidx138.i, align 4
  %dclk_did147.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 %i.2275.i, i32 3
  %173 = ptrtoint ptr %dclk_did147.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %dclk_did147.i, align 1
  %conv.i253.i = zext i8 %174 to i32
  %175 = add i8 %174, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %175)
  %176 = icmp ult i8 %175, 56
  br i1 %176, label %if.then.i255.i, label %if.else.i256.i

if.then.i255.i:                                   ; preds = %trinity_convert_did_to_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i254.i = mul nuw nsw i32 %conv.i253.i, 25
  br label %if.end37.i270.i

if.else.i256.i:                                   ; preds = %trinity_convert_did_to_freq.exit.i
  %177 = and i8 %174, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %177)
  %178 = icmp eq i8 %177, 64
  br i1 %178, label %if.then13.i258.i, label %if.else16.i259.i

if.then13.i258.i:                                 ; preds = %if.else.i256.i
  call void @__sanitizer_cov_trace_pc() #11
  %179 = mul nuw nsw i32 %conv.i253.i, 50
  %add.i257.i = add nsw i32 %179, -1600
  br label %if.end37.i270.i

if.else16.i259.i:                                 ; preds = %if.else.i256.i
  %180 = add i8 %174, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %180)
  %181 = icmp ult i8 %180, 31
  br i1 %181, label %if.then24.i261.i, label %if.else29.i263.i

if.then24.i261.i:                                 ; preds = %if.else16.i259.i
  call void @__sanitizer_cov_trace_pc() #11
  %182 = mul nuw nsw i32 %conv.i253.i, 100
  %add28.i260.i = add nsw i32 %182, -6400
  br label %if.end37.i270.i

if.else29.i263.i:                                 ; preds = %if.else16.i259.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %174)
  %cmp31.i262.i = icmp eq i8 %174, 127
  br i1 %cmp31.i262.i, label %if.else29.i263.i.if.end37.i270.i_crit_edge, label %if.else29.i263.i.trinity_convert_did_to_freq.exit272.i_crit_edge

if.else29.i263.i.trinity_convert_did_to_freq.exit272.i_crit_edge: ; preds = %if.else29.i263.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_convert_did_to_freq.exit272.i

if.else29.i263.i.if.end37.i270.i_crit_edge:       ; preds = %if.else29.i263.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i270.i

if.end37.i270.i:                                  ; preds = %if.else29.i263.i.if.end37.i270.i_crit_edge, %if.then24.i261.i, %if.then13.i258.i, %if.then.i255.i
  %divider.0.i264.i = phi i32 [ %mul.i254.i, %if.then.i255.i ], [ %add.i257.i, %if.then13.i258.i ], [ %add28.i260.i, %if.then24.i261.i ], [ 12800, %if.else29.i263.i.if.end37.i270.i_crit_edge ]
  %183 = ptrtoint ptr %dentist_vco_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %dentist_vco_freq.i.i, align 4
  %mul38.i266.i = mul i32 %184, 100
  %sub39.i267.i = add nsw i32 %divider.0.i264.i, -1
  %add40.i268.i = add i32 %sub39.i267.i, %mul38.i266.i
  %div.i269.i = udiv i32 %add40.i268.i, %divider.0.i264.i
  br label %trinity_convert_did_to_freq.exit272.i

trinity_convert_did_to_freq.exit272.i:            ; preds = %if.end37.i270.i, %if.else29.i263.i.trinity_convert_did_to_freq.exit272.i_crit_edge
  %retval.0.i271.i = phi i32 [ %div.i269.i, %if.end37.i270.i ], [ 10000, %if.else29.i263.i.trinity_convert_did_to_freq.exit272.i_crit_edge ]
  %dclk.i = getelementptr %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 14, i32 %i.2275.i, i32 1
  %185 = ptrtoint ptr %dclk.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %retval.0.i271.i, ptr %dclk.i, align 4
  %inc153.i = add nuw nsw i32 %i.2275.i, 1
  %exitcond.not.i = icmp eq i32 %inc153.i, 4
  br i1 %exitcond.not.i, label %trinity_convert_did_to_freq.exit272.i.if.end20_crit_edge, label %trinity_convert_did_to_freq.exit272.i.for.body135.i_crit_edge

trinity_convert_did_to_freq.exit272.i.for.body135.i_crit_edge: ; preds = %trinity_convert_did_to_freq.exit272.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body135.i

trinity_convert_did_to_freq.exit272.i.if.end20_crit_edge: ; preds = %trinity_convert_did_to_freq.exit272.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

trinity_parse_sys_info_table.exit:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i = zext i8 %39 to i32
  %186 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %frev.i, align 1
  %conv7.i = zext i8 %187 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %conv7.i, i32 noundef %conv4.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  br label %cleanup

if.end20:                                         ; preds = %trinity_convert_did_to_freq.exit272.i.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  %188 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %priv, align 4
  %bootup_sclk.i71 = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 3, i32 1
  %190 = ptrtoint ptr %bootup_sclk.i71 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %bootup_sclk.i71, align 4
  %boot_pl.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4
  %192 = ptrtoint ptr %boot_pl.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %boot_pl.i, align 4
  %bootup_nb_voltage_index.i72 = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 3, i32 8
  %193 = ptrtoint ptr %bootup_nb_voltage_index.i72 to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %bootup_nb_voltage_index.i72, align 4
  %conv.i73 = trunc i16 %194 to i8
  %vddc_index.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 1
  %195 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv.i73, ptr %vddc_index.i, align 4
  %ds_divider_index.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 2
  %196 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %ds_divider_index.i, align 1
  %ss_divider_index.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 3
  %197 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %ss_divider_index.i, align 2
  %allow_gnb_slow.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 4
  %198 = ptrtoint ptr %allow_gnb_slow.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 1, ptr %allow_gnb_slow.i, align 1
  %force_nbp_state.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 5
  %199 = ptrtoint ptr %force_nbp_state.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %force_nbp_state.i, align 4
  %display_wm.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 6
  %200 = ptrtoint ptr %display_wm.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %display_wm.i, align 1
  %vce_wm.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 4, i32 7
  %201 = ptrtoint ptr %vce_wm.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %vce_wm.i, align 2
  %current_ps.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 19
  %202 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %current_ps.i, align 4
  %levels.i = getelementptr inbounds %struct.trinity_power_info, ptr %189, i32 0, i32 19, i32 1
  %203 = call ptr @memcpy(ptr %levels.i, ptr %boot_pl.i, i32 12)
  %call21 = call i32 @r600_get_platform_caps(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @r600_parse_extended_power_table(ptr noundef %rdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i74) #9
  %204 = ptrtoint ptr %data_offset.i74 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 -1, ptr %data_offset.i74, align 2, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i75) #9
  %205 = ptrtoint ptr %frev.i75 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 -1, ptr %frev.i75, align 1, !annotation !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i76) #9
  %206 = ptrtoint ptr %crev.i76 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 -1, ptr %crev.i76, align 1, !annotation !48
  %207 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %208, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i75, ptr noundef nonnull %crev.i76, ptr noundef nonnull %data_offset.i74) #9
  br i1 %call.i, label %if.end.i82, label %if.end28.trinity_parse_power_table.exit.thread_crit_edge

if.end28.trinity_parse_power_table.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_parse_power_table.exit.thread

if.end.i82:                                       ; preds = %if.end28
  %209 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mode_info1.i, align 4
  %bios.i78 = getelementptr inbounds %struct.atom_context, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %bios.i78 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %bios.i78, align 4
  %213 = ptrtoint ptr %data_offset.i74 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %data_offset.i74, align 2
  %conv.i79 = zext i16 %214 to i32
  %add.ptr.i80 = getelementptr i8, ptr %212, i32 %conv.i79
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i80, i32 0, i32 6
  %215 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %215, i32 2)
  %216 = load i16, ptr %usStateArrayOffset.i, align 1
  %217 = call i16 @llvm.bswap.i16(i16 %216) #9
  %conv7.i81 = zext i16 %217 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i80, i32 %conv7.i81
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i80, i32 0, i32 7
  %218 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %218, i32 2)
  %219 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %220 = call i16 @llvm.bswap.i16(i16 %219) #9
  %conv13.i = zext i16 %220 to i32
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i80, i32 %conv13.i
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i80, i32 0, i32 8
  %221 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %221, i32 2)
  %222 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %223 = call i16 @llvm.bswap.i16(i16 %222) #9
  %conv19.i = zext i16 %223 to i32
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i80, i32 %conv19.i
  %224 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %add.ptr8.i, align 1
  %conv21.i = zext i8 %225 to i32
  %226 = mul nuw nsw i32 %conv21.i, 40
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %226, i32 noundef 3520) #13
  %dpm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %227 = ptrtoint ptr %dpm.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %call8.i.i.i, ptr %dpm.i, align 4
  %tobool.not.i83 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i83, label %if.end.i82.trinity_parse_power_table.exit.thread_crit_edge, label %if.end28.i

if.end.i82.trinity_parse_power_table.exit.thread_crit_edge: ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_parse_power_table.exit.thread

if.end28.i:                                       ; preds = %if.end.i82
  %228 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %cmp215.not.i = icmp eq i8 %229, 0
  br i1 %cmp215.not.i, label %if.end28.i.if.end32_crit_edge, label %for.body.lr.ph.i

if.end28.i.if.end32_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

for.body.lr.ph.i:                                 ; preds = %if.end28.i
  %states.i = getelementptr inbounds %struct._StateArray, ptr %add.ptr8.i, i32 0, i32 1
  %nonClockInfo.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 2
  %power_state34.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %clockInfo.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 2
  %ucEntrySize.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 1
  %ucEntrySize82.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 1
  %boot_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc86.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %power_state_offset.0219.i = phi ptr [ %states.i, %for.body.lr.ph.i ], [ %add.ptr85.i, %for.inc86.i.for.body.i_crit_edge ]
  %i.0216.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc87.i, %for.inc86.i.for.body.i_crit_edge ]
  %nonClockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0219.i, i32 0, i32 1
  %230 = ptrtoint ptr %nonClockInfoIndex.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %nonClockInfoIndex.i, align 1
  %conv32.i = zext i8 %231 to i32
  %arrayidx.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i
  %232 = ptrtoint ptr %power_state34.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %power_state34.i, align 4
  %clock_info36.i = getelementptr %struct.radeon_power_state, ptr %233, i32 %i.0216.i, i32 1
  %234 = ptrtoint ptr %clock_info36.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %clock_info36.i, align 4
  %tobool37.not.i = icmp eq ptr %235, null
  br i1 %tobool37.not.i, label %for.body.i.trinity_parse_power_table.exit.thread_crit_edge, label %if.end39.i

for.body.i.trinity_parse_power_table.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_parse_power_table.exit.thread

if.end39.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %236 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %236, i32 noundef 3520, i32 noundef 128) #12
  %cmp41.i = icmp eq ptr %call7.i.i.i, null
  %237 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dpm.i, align 4
  br i1 %cmp41.i, label %if.then43.i, label %if.end47.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %238) #9
  br label %trinity_parse_power_table.exit.thread

if.end47.i:                                       ; preds = %if.end39.i
  %ps_priv.i = getelementptr %struct.radeon_ps, ptr %238, i32 %i.0216.i, i32 9
  %239 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %call7.i.i.i, ptr %ps_priv.i, align 4
  %clockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0219.i, i32 0, i32 2
  %240 = ptrtoint ptr %power_state_offset.0219.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %power_state_offset.0219.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %cmp55211.not.i = icmp eq i8 %241, 0
  br i1 %cmp55211.not.i, label %if.end47.i.for.end.i_crit_edge, label %if.end47.i.for.body57.i_crit_edge

if.end47.i.for.body57.i_crit_edge:                ; preds = %if.end47.i
  br label %for.body57.i

if.end47.i.for.end.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body57.i:                                     ; preds = %for.inc.i.for.body57.i_crit_edge, %if.end47.i.for.body57.i_crit_edge
  %k.0213.i = phi i32 [ %k.1.i, %for.inc.i.for.body57.i_crit_edge ], [ 0, %if.end47.i.for.body57.i_crit_edge ]
  %j.0212.i = phi i32 [ %inc77.i, %for.inc.i.for.body57.i_crit_edge ], [ 0, %if.end47.i.for.body57.i_crit_edge ]
  %arrayidx58.i = getelementptr i8, ptr %clockInfoIndex.i, i32 %j.0212.i
  %242 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %243 to i32
  %244 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %add.ptr14.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %243, i8 %245)
  %cmp62.not.i = icmp ult i8 %243, %245
  br i1 %cmp62.not.i, label %if.end65.i, label %for.body57.i.for.inc.i_crit_edge

for.body57.i.for.inc.i_crit_edge:                 ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end65.i:                                       ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %k.0213.i)
  %cmp66.i = icmp sgt i32 %k.0213.i, 4
  br i1 %cmp66.i, label %if.end65.i.for.end.i_crit_edge, label %if.end69.i

if.end65.i.for.end.i_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end69.i:                                       ; preds = %if.end65.i
  %246 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %ucEntrySize.i, align 1
  %conv71.i = zext i8 %247 to i32
  %mul.i = mul nuw nsw i32 %conv71.i, %conv59.i
  %add.ptr72.i = getelementptr i8, ptr %clockInfo.i, i32 %mul.i
  %248 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %dpm.i, align 4
  %250 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i = getelementptr %struct.radeon_ps, ptr %249, i32 %i.0216.i, i32 9
  %252 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %ps_priv.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.trinity_ps, ptr %253, i32 0, i32 1, i32 %k.0213.i
  %254 = ptrtoint ptr %add.ptr72.i to i32
  call void @__asan_loadN_noabort(i32 %254, i32 2)
  %255 = load i16, ptr %add.ptr72.i, align 1
  %256 = call i16 @llvm.bswap.i16(i16 %255) #9
  %conv.i.i84 = zext i16 %256 to i32
  %ucEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr72.i, i32 0, i32 1
  %257 = ptrtoint ptr %ucEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %ucEngineClockHigh.i.i, align 1
  %conv2.i.i = zext i8 %258 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i84
  %259 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %vddcIndex.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr72.i, i32 0, i32 2
  %260 = ptrtoint ptr %vddcIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %vddcIndex.i.i, align 1
  %vddc_index.i.i = getelementptr %struct.trinity_ps, ptr %253, i32 0, i32 1, i32 %k.0213.i, i32 1
  %262 = ptrtoint ptr %vddc_index.i.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %261, ptr %vddc_index.i.i, align 4
  %add.i.i85 = add nsw i32 %k.0213.i, 1
  %263 = ptrtoint ptr %253 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %add.i.i85, ptr %253, align 4
  %enable_sclk_ds.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %251, i32 0, i32 15
  %264 = ptrtoint ptr %enable_sclk_ds.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %enable_sclk_ds.i.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %265)
  %tobool.not.i.i = icmp eq i8 %265, 0
  br i1 %tobool.not.i.i, label %if.end69.i.for.inc.i_crit_edge, label %if.then.i.i86

if.end69.i.for.inc.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.i86:                                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %ds_divider_index.i.i = getelementptr %struct.trinity_ps, ptr %253, i32 0, i32 1, i32 %k.0213.i, i32 2
  %266 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 5, ptr %ds_divider_index.i.i, align 1
  %ss_divider_index.i.i = getelementptr %struct.trinity_ps, ptr %253, i32 0, i32 1, i32 %k.0213.i, i32 3
  %267 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 5, ptr %ss_divider_index.i.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i86, %if.end69.i.for.inc.i_crit_edge, %for.body57.i.for.inc.i_crit_edge
  %k.1.i = phi i32 [ %k.0213.i, %for.body57.i.for.inc.i_crit_edge ], [ %add.i.i85, %if.end69.i.for.inc.i_crit_edge ], [ %add.i.i85, %if.then.i.i86 ]
  %inc77.i = add nuw nsw i32 %j.0212.i, 1
  %268 = ptrtoint ptr %power_state_offset.0219.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %power_state_offset.0219.i, align 1
  %conv54.i = zext i8 %269 to i32
  %cmp55.i = icmp ult i32 %inc77.i, %conv54.i
  br i1 %cmp55.i, label %for.inc.i.for.body57.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body57.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end65.i.for.end.i_crit_edge, %if.end47.i.for.end.i_crit_edge
  %270 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dpm.i, align 4
  %arrayidx81.i = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i
  %272 = ptrtoint ptr %ucEntrySize82.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %ucEntrySize82.i, align 1
  %ps_priv.i.i192.i = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i, i32 9
  %274 = ptrtoint ptr %ps_priv.i.i192.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %ps_priv.i.i192.i, align 4
  %ulCapsAndSettings.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 3
  %276 = ptrtoint ptr %ulCapsAndSettings.i.i to i32
  call void @__asan_loadN_noabort(i32 %276, i32 4)
  %277 = load i32, ptr %ulCapsAndSettings.i.i, align 1
  %278 = call i32 @llvm.bswap.i32(i32 %277) #9
  %279 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %278, ptr %arrayidx81.i, align 4
  %280 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %280, i32 2)
  %281 = load i16, ptr %arrayidx.i, align 1
  %282 = call i16 @llvm.bswap.i16(i16 %281) #9
  %conv.i193.i = zext i16 %282 to i32
  %class.i.i = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i, i32 1
  %283 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %conv.i193.i, ptr %class.i.i, align 4
  %usClassification2.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 5
  %284 = ptrtoint ptr %usClassification2.i.i to i32
  call void @__asan_loadN_noabort(i32 %284, i32 2)
  %285 = load i16, ptr %usClassification2.i.i, align 1
  %286 = call i16 @llvm.bswap.i16(i16 %285) #9
  %conv1.i.i = zext i16 %286 to i32
  %class2.i.i = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i, i32 2
  %287 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %conv1.i.i, ptr %class2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %273)
  %cmp.i.i = icmp ugt i8 %273, 12
  br i1 %cmp.i.i, label %if.then.i194.i, label %if.else.i.i87

if.then.i194.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ulVCLK.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 6
  %288 = ptrtoint ptr %ulVCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %289 = load i32, ptr %ulVCLK.i.i, align 1
  %290 = call i32 @llvm.bswap.i32(i32 %289) #9
  %vclk.i.i = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i, i32 3
  %291 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %vclk.i.i, align 4
  %ulDCLK.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 7
  %292 = ptrtoint ptr %ulDCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %292, i32 4)
  %293 = load i32, ptr %ulDCLK.i.i, align 1
  %294 = call i32 @llvm.bswap.i32(i32 %293) #9
  br label %if.end.i.i

if.else.i.i87:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %vclk4.i.i = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i, i32 3
  %295 = ptrtoint ptr %vclk4.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %vclk4.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i87, %if.then.i194.i
  %.sink.i.i = phi i32 [ %294, %if.then.i194.i ], [ 0, %if.else.i.i87 ]
  %296 = getelementptr %struct.radeon_ps, ptr %271, i32 %i.0216.i, i32 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 %.sink.i.i, ptr %296, align 4
  %and.i.i = and i32 %conv.i193.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i195.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i195.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then7.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %298 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %arrayidx81.i, ptr %boot_ps.i.i, align 4
  %299 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %priv, align 4
  %301 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 1, ptr %275, align 4
  %nbps_flags.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %275, i32 0, i32 2
  %302 = ptrtoint ptr %nbps_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 0, ptr %nbps_flags.i.i.i, align 4
  %bapm_flags.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %275, i32 0, i32 3
  %303 = ptrtoint ptr %bapm_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 0, ptr %bapm_flags.i.i.i, align 4
  %levels.i.i.i = getelementptr inbounds %struct.trinity_ps, ptr %275, i32 0, i32 1
  %boot_pl.i.i.i = getelementptr inbounds %struct.trinity_power_info, ptr %300, i32 0, i32 4
  %304 = call ptr @memcpy(ptr %levels.i.i.i, ptr %boot_pl.i.i.i, i32 12)
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %305 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %class.i.i, align 4
  %and10.i.i = and i32 %306, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end8.i.i.for.inc86.i_crit_edge, label %if.then12.i.i

if.end8.i.i.for.inc86.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc86.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %307 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %arrayidx81.i, ptr %uvd_ps.i.i, align 4
  br label %for.inc86.i

for.inc86.i:                                      ; preds = %if.then12.i.i, %if.end8.i.i.for.inc86.i_crit_edge
  %308 = ptrtoint ptr %power_state_offset.0219.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %power_state_offset.0219.i, align 1
  %conv84.i = zext i8 %309 to i32
  %add.i = add nuw nsw i32 %conv84.i, 2
  %add.ptr85.i = getelementptr i8, ptr %power_state_offset.0219.i, i32 %add.i
  %inc87.i = add nuw nsw i32 %i.0216.i, 1
  %310 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %add.ptr8.i, align 1
  %conv30.i = zext i8 %311 to i32
  %cmp.i = icmp ult i32 %inc87.i, %conv30.i
  br i1 %cmp.i, label %for.inc86.i.for.body.i_crit_edge, label %if.end32.loopexit

for.inc86.i.for.body.i_crit_edge:                 ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

trinity_parse_power_table.exit.thread:            ; preds = %if.then43.i, %for.body.i.trinity_parse_power_table.exit.thread_crit_edge, %if.end.i82.trinity_parse_power_table.exit.thread_crit_edge, %if.end28.trinity_parse_power_table.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ -12, %if.then43.i ], [ -12, %if.end.i82.trinity_parse_power_table.exit.thread_crit_edge ], [ -22, %if.end28.trinity_parse_power_table.exit.thread_crit_edge ], [ -22, %for.body.i.trinity_parse_power_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i76) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i75) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i74) #9
  br label %cleanup

if.end32.loopexit:                                ; preds = %for.inc86.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv30.i.le = zext i8 %311 to i32
  br label %if.end32

if.end32:                                         ; preds = %if.end32.loopexit, %if.end28.i.if.end32_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end28.i.if.end32_crit_edge ], [ %conv30.i.le, %if.end32.loopexit ]
  %num_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %312 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %.lcssa.i, ptr %num_ps.i, align 4
  %clockInfo101.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 2
  %ucEntrySize102.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 1
  %clk_idx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 4
  %313 = ptrtoint ptr %clk_idx.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %clk_idx.i, align 4
  %conv100.i = zext i8 %314 to i32
  %315 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.i = zext i8 %316 to i32
  %mul104.i = mul nuw nsw i32 %conv103.i, %conv100.i
  %arrayidx105.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.i
  %317 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_loadN_noabort(i32 %317, i32 2)
  %318 = load i16, ptr %arrayidx105.i, align 1
  %319 = call i16 @llvm.bswap.i16(i16 %318) #9
  %conv106.i = zext i16 %319 to i32
  %ucEngineClockHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.i, i32 0, i32 1
  %320 = ptrtoint ptr %ucEngineClockHigh.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %ucEngineClockHigh.i, align 1
  %conv107.i = zext i8 %321 to i32
  %shl.i = shl nuw nsw i32 %conv107.i, 16
  %or.i = or i32 %shl.i, %conv106.i
  %sclk112.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 2
  %322 = ptrtoint ptr %sclk112.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %or.i, ptr %sclk112.i, align 4
  %mclk.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 3
  %323 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 0, ptr %mclk.i, align 4
  %clk_idx.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 4
  %324 = ptrtoint ptr %clk_idx.1.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %clk_idx.1.i, align 4
  %conv100.1.i = zext i8 %325 to i32
  %326 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.1.i = zext i8 %327 to i32
  %mul104.1.i = mul nuw nsw i32 %conv103.1.i, %conv100.1.i
  %arrayidx105.1.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.1.i
  %328 = ptrtoint ptr %arrayidx105.1.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 2)
  %329 = load i16, ptr %arrayidx105.1.i, align 1
  %330 = call i16 @llvm.bswap.i16(i16 %329) #9
  %conv106.1.i = zext i16 %330 to i32
  %ucEngineClockHigh.1.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.1.i, i32 0, i32 1
  %331 = ptrtoint ptr %ucEngineClockHigh.1.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %ucEngineClockHigh.1.i, align 1
  %conv107.1.i = zext i8 %332 to i32
  %shl.1.i = shl nuw nsw i32 %conv107.1.i, 16
  %or.1.i = or i32 %shl.1.i, %conv106.1.i
  %sclk112.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 2
  %333 = ptrtoint ptr %sclk112.1.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %or.1.i, ptr %sclk112.1.i, align 4
  %mclk.1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 3
  %334 = ptrtoint ptr %mclk.1.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 0, ptr %mclk.1.i, align 4
  %clk_idx.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 4
  %335 = ptrtoint ptr %clk_idx.2.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %clk_idx.2.i, align 4
  %conv100.2.i = zext i8 %336 to i32
  %337 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.2.i = zext i8 %338 to i32
  %mul104.2.i = mul nuw nsw i32 %conv103.2.i, %conv100.2.i
  %arrayidx105.2.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.2.i
  %339 = ptrtoint ptr %arrayidx105.2.i to i32
  call void @__asan_loadN_noabort(i32 %339, i32 2)
  %340 = load i16, ptr %arrayidx105.2.i, align 1
  %341 = call i16 @llvm.bswap.i16(i16 %340) #9
  %conv106.2.i = zext i16 %341 to i32
  %ucEngineClockHigh.2.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.2.i, i32 0, i32 1
  %342 = ptrtoint ptr %ucEngineClockHigh.2.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %ucEngineClockHigh.2.i, align 1
  %conv107.2.i = zext i8 %343 to i32
  %shl.2.i = shl nuw nsw i32 %conv107.2.i, 16
  %or.2.i = or i32 %shl.2.i, %conv106.2.i
  %sclk112.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 2
  %344 = ptrtoint ptr %sclk112.2.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %or.2.i, ptr %sclk112.2.i, align 4
  %mclk.2.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 3
  %345 = ptrtoint ptr %mclk.2.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %mclk.2.i, align 4
  %clk_idx.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 4
  %346 = ptrtoint ptr %clk_idx.3.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %clk_idx.3.i, align 4
  %conv100.3.i = zext i8 %347 to i32
  %348 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.3.i = zext i8 %349 to i32
  %mul104.3.i = mul nuw nsw i32 %conv103.3.i, %conv100.3.i
  %arrayidx105.3.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.3.i
  %350 = ptrtoint ptr %arrayidx105.3.i to i32
  call void @__asan_loadN_noabort(i32 %350, i32 2)
  %351 = load i16, ptr %arrayidx105.3.i, align 1
  %352 = call i16 @llvm.bswap.i16(i16 %351) #9
  %conv106.3.i = zext i16 %352 to i32
  %ucEngineClockHigh.3.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.3.i, i32 0, i32 1
  %353 = ptrtoint ptr %ucEngineClockHigh.3.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %ucEngineClockHigh.3.i, align 1
  %conv107.3.i = zext i8 %354 to i32
  %shl.3.i = shl nuw nsw i32 %conv107.3.i, 16
  %or.3.i = or i32 %shl.3.i, %conv106.3.i
  %sclk112.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 2
  %355 = ptrtoint ptr %sclk112.3.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %or.3.i, ptr %sclk112.3.i, align 4
  %mclk.3.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 3
  %356 = ptrtoint ptr %mclk.3.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %mclk.3.i, align 4
  %clk_idx.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 4
  %357 = ptrtoint ptr %clk_idx.4.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %clk_idx.4.i, align 4
  %conv100.4.i = zext i8 %358 to i32
  %359 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.4.i = zext i8 %360 to i32
  %mul104.4.i = mul nuw nsw i32 %conv103.4.i, %conv100.4.i
  %arrayidx105.4.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.4.i
  %361 = ptrtoint ptr %arrayidx105.4.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 2)
  %362 = load i16, ptr %arrayidx105.4.i, align 1
  %363 = call i16 @llvm.bswap.i16(i16 %362) #9
  %conv106.4.i = zext i16 %363 to i32
  %ucEngineClockHigh.4.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.4.i, i32 0, i32 1
  %364 = ptrtoint ptr %ucEngineClockHigh.4.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %ucEngineClockHigh.4.i, align 1
  %conv107.4.i = zext i8 %365 to i32
  %shl.4.i = shl nuw nsw i32 %conv107.4.i, 16
  %or.4.i = or i32 %shl.4.i, %conv106.4.i
  %sclk112.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 2
  %366 = ptrtoint ptr %sclk112.4.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %or.4.i, ptr %sclk112.4.i, align 4
  %mclk.4.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 3
  %367 = ptrtoint ptr %mclk.4.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 0, ptr %mclk.4.i, align 4
  %clk_idx.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 4
  %368 = ptrtoint ptr %clk_idx.5.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %clk_idx.5.i, align 4
  %conv100.5.i = zext i8 %369 to i32
  %370 = ptrtoint ptr %ucEntrySize102.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %ucEntrySize102.i, align 1
  %conv103.5.i = zext i8 %371 to i32
  %mul104.5.i = mul nuw nsw i32 %conv103.5.i, %conv100.5.i
  %arrayidx105.5.i = getelementptr [1 x i8], ptr %clockInfo101.i, i32 0, i32 %mul104.5.i
  %372 = ptrtoint ptr %arrayidx105.5.i to i32
  call void @__asan_loadN_noabort(i32 %372, i32 2)
  %373 = load i16, ptr %arrayidx105.5.i, align 1
  %374 = call i16 @llvm.bswap.i16(i16 %373) #9
  %conv106.5.i = zext i16 %374 to i32
  %ucEngineClockHigh.5.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %arrayidx105.5.i, i32 0, i32 1
  %375 = ptrtoint ptr %ucEngineClockHigh.5.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %ucEngineClockHigh.5.i, align 1
  %conv107.5.i = zext i8 %376 to i32
  %shl.5.i = shl nuw nsw i32 %conv107.5.i, 16
  %or.5.i = or i32 %shl.5.i, %conv106.5.i
  %sclk112.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 2
  %377 = ptrtoint ptr %sclk112.5.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %or.5.i, ptr %sclk112.5.i, align 4
  %mclk.5.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 3
  %378 = ptrtoint ptr %mclk.5.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 0, ptr %mclk.5.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i76) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i75) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i74) #9
  %htc_tmp_lmt = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 3, i32 9
  %379 = ptrtoint ptr %htc_tmp_lmt to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %htc_tmp_lmt, align 2
  %conv33 = zext i8 %380 to i32
  %thermal_auto_throttling = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 2
  %381 = ptrtoint ptr %thermal_auto_throttling to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %conv33, ptr %thermal_auto_throttling, align 8
  %enable_dpm = getelementptr inbounds %struct.trinity_power_info, ptr %call7.i.i, i32 0, i32 14
  %382 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 1, ptr %enable_dpm, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %trinity_parse_power_table.exit.thread, %if.end24.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %trinity_parse_sys_info_table.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %trinity_parse_sys_info_table.exit ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %retval.2.i.ph, %trinity_parse_power_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_parse_extended_power_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #0 align 64 {
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %11) #14
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21.not = icmp eq i32 %13, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.trinity_ps, ptr %1, i32 0, i32 1, i32 %i.022
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %vddc_index = getelementptr %struct.trinity_ps, ptr %1, i32 0, i32 1, i32 %i.022, i32 1
  %16 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vddc_index, align 4
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.trinity_power_info, ptr %19, i32 0, i32 3, i32 12
  %call1.i = tail call i32 @sumo_convert_vid2_to_vid7(ptr noundef %rdev, ptr noundef %vid_mapping_table.i, i32 noundef %conv) #9
  %call2.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128040) #9
  %20 = and i32 %call2.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %cond3.i = select i1 %cmp.i, i32 1250, i32 625
  %mul.i = mul i32 %cond3.i, %call1.i
  %21 = add i32 %mul.i, -154951
  call void @__sanitizer_cov_trace_const_cmp4(i32 -155001, i32 %21)
  %cmp4.i = icmp ult i32 %21, -155001
  %sub.i = sub i32 154950, %mul.i
  %div.i = udiv i32 %sub.i, 100
  %22 = and i32 %div.i, 65535
  %conv7 = select i1 %cmp4.i, i32 0, i32 %22
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %i.022, i32 noundef %15, i32 noundef %conv7) #14
  %inc = add nuw i32 %i.022, 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_debugfs_print_current_performance_level(ptr noundef %rdev, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1668
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !44
  %7 = lshr i32 %6, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %7) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.trinity_ps, ptr %3, i32 0, i32 1, i32 %7
  %vclk = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 3
  %10 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 4
  %12 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %13) #9
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %vddc_index = getelementptr %struct.trinity_ps, ptr %3, i32 0, i32 1, i32 %7, i32 1
  %16 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %vddc_index, align 4
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.trinity_power_info, ptr %19, i32 0, i32 3, i32 12
  %call1.i = tail call i32 @sumo_convert_vid2_to_vid7(ptr noundef %rdev, ptr noundef %vid_mapping_table.i, i32 noundef %conv) #9
  %call2.i = tail call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef 128040) #9
  %20 = and i32 %call2.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i16 = icmp eq i32 %20, 0
  %cond3.i = select i1 %cmp.i16, i32 1250, i32 625
  %mul.i = mul i32 %cond3.i, %call1.i
  %21 = add i32 %mul.i, -154951
  call void @__sanitizer_cov_trace_const_cmp4(i32 -155001, i32 %21)
  %cmp4.i = icmp ult i32 %21, -155001
  %sub.i = sub i32 154950, %mul.i
  %div.i = udiv i32 %sub.i, 100
  %22 = and i32 %div.i, 65535
  %conv4 = select i1 %cmp4.i, i32 0, i32 %22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %7, i32 noundef %15, i32 noundef %conv4) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trinity_dpm_get_current_sclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 18, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1668
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !44
  %7 = lshr i32 %6, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ult i32 %7, %9
  br i1 %cmp.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.trinity_ps, ptr %3, i32 0, i32 1, i32 %7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @trinity_dpm_get_current_mclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %sys_info = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_info, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trinity_dpm_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sumo_take_smu_control(ptr noundef %rdev, i1 noundef zeroext false) #9
  %dpm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %num_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %0 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpm, align 4
  %ps_priv = getelementptr %struct.radeon_ps, ptr %3, i32 %i.016, i32 9
  %4 = ptrtoint ptr %ps_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv, align 4
  tail call void @kfree(ptr noundef %5) #9
  %inc = add nuw nsw i32 %i.016, 1
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
  tail call void @r600_free_extended_power_table(ptr noundef %rdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_free_extended_power_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @trinity_dpm_get_sclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 20, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  br i1 %low, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %levels = getelementptr inbounds %struct.trinity_ps, ptr %3, i32 0, i32 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub = add i32 %5, -1
  %arrayidx3 = getelementptr %struct.trinity_ps, ptr %3, i32 0, i32 1, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0.in = phi ptr [ %levels, %if.then ], [ %arrayidx3, %if.else ]
  %6 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @trinity_dpm_get_mclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %sys_info = getelementptr inbounds %struct.trinity_power_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sys_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sys_info, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tn_smc_rreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trinity_program_power_level(ptr noundef %rdev, ptr nocapture noundef readonly %pl, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %dividers.i = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %index)
  %cmp = icmp ugt i32 %index, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pl, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i) #9
  %4 = call ptr @memset(ptr %dividers.i, i32 255, i32 32)
  %mul.i = shl nuw nsw i32 %index, 5
  %call.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %3, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %add.i = add nuw nsw i32 %mul.i, 126976
  br i1 %tobool.not.i, label %if.end.i, label %if.end.trinity_set_divider_value.exit_crit_edge

if.end.trinity_set_divider_value.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_set_divider_value.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i) #9
  %and.i = and i32 %call1.i, -65281
  %5 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dividers.i, align 4
  %shl.i = shl i32 %6, 8
  %or.i = or i32 %shl.i, %and.i
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i) #9
  %div32.i = lshr i32 %3, 1
  %call3.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %div32.i, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.trinity_set_divider_value.exit_crit_edge

if.end.i.trinity_set_divider_value.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trinity_set_divider_value.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add7.i = add nuw nsw i32 %mul.i, 126996
  %call8.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add7.i) #9
  %and9.i = and i32 %call8.i, -16711681
  %7 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dividers.i, align 4
  %shl11.i = shl i32 %8, 16
  %or12.i = or i32 %shl11.i, %and9.i
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add7.i, i32 noundef %or12.i) #9
  br label %trinity_set_divider_value.exit

trinity_set_divider_value.exit:                   ; preds = %if.end6.i, %if.end.i.trinity_set_divider_value.exit_crit_edge, %if.end.trinity_set_divider_value.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #9
  %vddc_index = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 1
  %9 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vddc_index, align 4
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.trinity_power_info, ptr %12, i32 0, i32 3, i32 12
  %call1.i33 = call i32 @sumo_convert_vid2_to_vid7(ptr noundef %rdev, ptr noundef %vid_mapping_table.i, i32 noundef %conv) #9
  %call2.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i) #9
  %and.i36 = and i32 %call2.i, -16711681
  %shl.i37 = shl i32 %call1.i33, 16
  %or.i38 = or i32 %and.i36, %shl.i37
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i38) #9
  %call5.i = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i) #9
  %and6.i = and i32 %call5.i, 16777215
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %and6.i) #9
  %ss_divider_index = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 3
  %13 = ptrtoint ptr %ss_divider_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ss_divider_index, align 2
  %conv1 = zext i8 %14 to i32
  %add.i40 = add nuw nsw i32 %mul.i, 126980
  %call.i41 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i40) #9
  %and.i42 = and i32 %call.i41, -65281
  %shl.i43 = shl nuw nsw i32 %conv1, 8
  %or.i44 = or i32 %and.i42, %shl.i43
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i40, i32 noundef %or.i44) #9
  %ds_divider_index = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 2
  %15 = ptrtoint ptr %ds_divider_index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ds_divider_index, align 1
  %conv2 = zext i8 %16 to i32
  %call.i47 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i40) #9
  %and.i48 = and i32 %call.i47, -256
  %or.i49 = or i32 %and.i48, %conv2
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i40, i32 noundef %or.i49) #9
  %allow_gnb_slow = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 4
  %17 = ptrtoint ptr %allow_gnb_slow to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %allow_gnb_slow, align 1
  %conv3 = zext i8 %18 to i32
  %add.i51 = add nuw nsw i32 %mul.i, 126988
  %call.i52 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i51) #9
  %and.i53 = and i32 %call.i52, -256
  %or.i54 = or i32 %and.i53, %conv3
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i51, i32 noundef %or.i54) #9
  %force_nbp_state = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 5
  %19 = ptrtoint ptr %force_nbp_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %force_nbp_state, align 4
  %conv4 = zext i8 %20 to i32
  %call.i57 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i51) #9
  %and.i58 = and i32 %call.i57, -65281
  %shl.i59 = shl nuw nsw i32 %conv4, 8
  %or.i60 = or i32 %and.i58, %shl.i59
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i51, i32 noundef %or.i60) #9
  %display_wm = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 6
  %21 = ptrtoint ptr %display_wm to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %display_wm, align 1
  %conv5 = zext i8 %22 to i32
  %call.i63 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i40) #9
  %and.i64 = and i32 %call.i63, -16711681
  %shl.i65 = shl nuw nsw i32 %conv5, 16
  %or.i66 = or i32 %and.i64, %shl.i65
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i40, i32 noundef %or.i66) #9
  %vce_wm = getelementptr inbounds %struct.trinity_pl, ptr %pl, i32 0, i32 7
  %23 = ptrtoint ptr %vce_wm to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vce_wm, align 2
  %conv6 = zext i8 %24 to i32
  %call.i69 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i40) #9
  %and.i70 = and i32 %call.i69, 16777215
  %shl.i71 = shl nuw i32 %conv6, 24
  %or.i72 = or i32 %and.i70, %shl.i71
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i40, i32 noundef %or.i72) #9
  %arrayidx = getelementptr [5 x i32], ptr %1, i32 0, i32 %index
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add.i74 = add nuw nsw i32 %mul.i, 126992
  %call.i75 = call i32 @tn_smc_rreg(ptr noundef %rdev, i32 noundef %add.i74) #9
  %and.i76 = and i32 %call.i75, -256
  %or.i77 = or i32 %and.i76, %26
  call void @tn_smc_wreg(ptr noundef %rdev, i32 noundef %add.i74, i32 noundef %or.i77) #9
  br label %cleanup

cleanup:                                          ; preds = %trinity_set_divider_value.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tn_smc_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_convert_vid2_to_vid7(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_calculate_u_and_p(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_config(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_gfx_clockgating_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trinity_program_clk_gating_hw_sequence(ptr noundef %rdev, ptr nocapture noundef readonly %seq, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp31.not = icmp eq i32 %mul, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %do.body

do.body:                                          ; preds = %r100_mm_wreg.exit.do.body_crit_edge, %do.body.lr.ph
  %i.032 = phi i32 [ 0, %do.body.lr.ph ], [ %add10, %r100_mm_wreg.exit.do.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %seq, i32 %i.032
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

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !44
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !45
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %1) #9
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ]
  %add = add i32 %i.032, 2
  %arrayidx1 = getelementptr i32, ptr %seq, i32 %add
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %retval.0.i, %neg
  %add2 = add nuw i32 %i.032, 1
  %arrayidx3 = getelementptr i32, ptr %seq, i32 %add2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3, align 4
  %and8 = and i32 %11, %9
  %or = or i32 %and8, %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i25 = icmp ugt i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %cmp1.i26 = icmp ult i32 %13, 65536
  %or.cond.i27 = or i1 %cmp1.i26, %cmp.i25
  br i1 %or.cond.i27, label %do.body.i, label %if.else.i30

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !46
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %18, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %16) #9, !srcloc !47
  br label %r100_mm_wreg.exit

if.else.i30:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %13, i32 noundef %or) #9
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i30, %do.body.i
  %add10 = add i32 %i.032, 3
  %cmp = icmp ult i32 %add10, %mul
  br i1 %cmp, label %r100_mm_wreg.exit.do.body_crit_edge, label %r100_mm_wreg.exit.for.end_crit_edge

r100_mm_wreg.exit.for.end_crit_edge:              ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

r100_mm_wreg.exit.do.body_crit_edge:              ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %r100_mm_wreg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eg_cg_rreg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @eg_cg_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_gfx_dynamic_mgpg_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_uvd_dpm_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_force_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trinity_dpm_no_forced_level(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vce_v1_0_enable_mgcg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_get_sleep_divider_id_from_clock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_get_sleep_divider_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_construct_sclk_voltage_mapping_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_construct_vid_mapping_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1975, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @trinity_dpm_print_power_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @trinity_dpm_print_power_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1978, i32 3}
!8 = !{ptr @trinity_dpm_print_power_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @trinity_dpm_print_power_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1997, i32 17}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 2000, i32 17}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 2001, i32 17}
!16 = !{ptr @trinity_mgcg_shls_default, !17, !"trinity_mgcg_shls_default", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 42, i32 18}
!18 = !{ptr @trinity_override_mgpg_sequences, !19, !"trinity_override_mgpg_sequences", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 172, i32 18}
!20 = !{ptr @trinity_sysls_enable, !21, !"trinity_sysls_enable", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 149, i32 18}
!22 = !{ptr @trinity_sysls_disable, !23, !"trinity_sysls_disable", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 125, i32 18}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1010, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1420, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1349, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1818, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/trinity_dpm.c", i32 1836, i32 4}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
!44 = !{i64 5037825}
!45 = !{i64 2157847396}
!46 = !{i64 2157847803}
!47 = !{i64 5037407}
!48 = !{!"auto-init"}
