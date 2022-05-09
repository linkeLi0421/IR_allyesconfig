; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/sumo_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/sumo_dpm.c"
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
%struct.atom_clock_dividers = type { i32, %union.anon.108, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { i32 }
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V6 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, [10 x i32], [10 x i32], [10 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i8, i8, i16, i16, i8, i8, [15 x i32], %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.110, i8, i16, i16 }
%union.anon.110 = type { i8 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._StateArray = type { i8, [1 x %struct._ATOM_PPLIB_STATE_V2] }
%struct._ATOM_PPLIB_STATE_V2 = type { i8, i8, [1 x i8] }
%struct._NonClockInfoArray = type { i8, i8, [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO] }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ClockInfoArray = type { i8, i8, [1 x i8] }
%struct.radeon_power_state = type { i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct._ATOM_PPLIB_SUMO_CLOCK_INFO = type { i16, i8, i8, i16, i16, [2 x i32] }

@sumo_dpm_setup_asic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] Found smc ucode version: 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sumo_dpm_setup_asic\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/sumo_dpm.c\00", [62 x i8] zeroinitializer }, align 32
@sumo_dpm_setup_asic._entry_ptr = internal global ptr @sumo_dpm_setup_asic._entry, section ".printk_index", align 4
@sumo_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sumo_dpm_print_power_state\00", [37 x i8] zeroinitializer }, align 32
@sumo_dpm_print_power_state._entry_ptr = internal global ptr @sumo_dpm_print_power_state._entry, section ".printk_index", align 4
@sumo_dpm_print_power_state._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\09\09power level %d    sclk: %u vddc: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@sumo_dpm_print_power_state._entry_ptr.7 = internal global ptr @sumo_dpm_print_power_state._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"power level %d    sclk: %u vddc: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid dpm profile %d\0A\00", [40 x i8] zeroinitializer }, align 32
@sumo_utc = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 72, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68], [36 x i8] zeroinitializer }, align 32
@sumo_dtc = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 72, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68, i32 68], [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported IGP table: %d %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"The htcTmpLmt should be larger than htcHystLmt.\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1360, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1802, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1805, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1825, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1826, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1830, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"sumo_utc\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 36, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"sumo_dtc\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 55, i32 18 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1671, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/sumo_dpm.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 1688, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @sumo_dpm_print_power_state._entry, ptr @sumo_dpm_print_power_state._entry.5, ptr @sumo_dpm_print_power_state._entry_ptr, ptr @sumo_dpm_print_power_state._entry_ptr.7, ptr @sumo_dpm_setup_asic._entry, ptr @sumo_dpm_setup_asic._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @sumo_utc, ptr @sumo_dtc, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sumo_dpm_setup_asic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sumo_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sumo_dpm_print_power_state._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sumo_utc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sumo_dtc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sumo_get_pi(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_gfx_clockgating_initialize(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %p.i2 = alloca i32, align 4
  %u.i3 = alloca i32, align 4
  %p.i = alloca i32, align 4
  %u.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #15
  %0 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %p.i, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i) #15
  %1 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %u.i, align 4, !annotation !40
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic.i, align 8
  %get_xclk.i = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_xclk.i, align 4
  %call.i = tail call i32 %5(ptr noundef %rdev) #15
  call void @r600_calculate_u_and_p(i32 noundef 19, i32 noundef %call.i, i32 noundef 16, ptr noundef nonnull %p.i, ptr noundef nonnull %u.i) #15
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 1752
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %9 = and i32 %8, 65535
  %10 = call i32 @llvm.bswap.i32(i32 %9) #15
  %11 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p.i, align 4
  %and2.i = and i32 %12, 65535
  %or.i = or i32 %and2.i, %10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %13 = call i32 @llvm.bswap.i32(i32 %or.i) #15
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %15, i32 1752
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %13) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i2) #15
  %16 = ptrtoint ptr %p.i2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %p.i2, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i3) #15
  %17 = ptrtoint ptr %u.i3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %u.i3, align 4, !annotation !40
  %18 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic.i, align 8
  %get_xclk.i5 = getelementptr inbounds %struct.radeon_asic, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %get_xclk.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_xclk.i5, align 4
  %call.i6 = call i32 %21(ptr noundef %rdev) #15
  call void @r600_calculate_u_and_p(i32 noundef 1, i32 noundef %call.i6, i32 noundef 14, ptr noundef nonnull %p.i2, ptr noundef nonnull %u.i3) #15
  %22 = ptrtoint ptr %p.i2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.i2, align 4
  %shl1.i = shl i32 %23, 9
  %24 = ptrtoint ptr %u.i3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %u.i3, align 4
  %shl2.i = shl i32 %25, 23
  %or.i7 = or i32 %shl1.i, %shl2.i
  %or3.i = or i32 %or.i7, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %26 = call i32 @llvm.bswap.i32(i32 %or3.i) #15
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %28, i32 1676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %26) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_program_vc(ptr nocapture noundef readonly %rdev, i32 noundef %vrc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %0 = tail call i32 @llvm.bswap.i32(i32 %vrc) #15
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #15, !srcloc !44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_clear_vc(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_program_sstp(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %p = alloca i32, align 4
  %u = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #15
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %p, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u) #15
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %u, align 4, !annotation !40
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %get_xclk = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_xclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_xclk, align 4
  %call = tail call i32 %5(ptr noundef %rdev) #15
  call void @r600_calculate_u_and_p(i32 noundef 8, i32 noundef %call, i32 noundef 16, ptr noundef nonnull %p, ptr noundef nonnull %u) #15
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 4
  %shl = shl i32 %7, 16
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 4
  %or = or i32 %shl, %9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %10 = call i32 @llvm.bswap.i32(i32 %or) #15
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 1768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_calculate_u_and_p(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sumo_take_smu_control(ptr nocapture %rdev, i1 zeroext %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sumo_get_sleep_divider_from_id(i32 noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %id
  ret i32 %shl
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_get_sleep_divider_id_from_clock(ptr nocapture noundef readonly %rdev, i32 noundef %sclk, i32 noundef %min_sclk_in_sr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %min_sclk_in_sr, i32 800)
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %sclk)
  %cmp1 = icmp ugt i32 %0, %sclk
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds = getelementptr inbounds %struct.sumo_power_info, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %enable_sclk_ds to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enable_sclk_ds, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %div18 = lshr i32 %sclk, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div18, i32 %0)
  %cmp5.not.not = icmp ult i32 %div18, %0
  br i1 %cmp5.not.not, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %div18.1 = lshr i32 %sclk, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.1, i32 %0)
  %cmp5.not.1.not = icmp ult i32 %div18.1, %0
  br i1 %cmp5.not.1.not, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %div18.2 = lshr i32 %sclk, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.2, i32 %0)
  %cmp5.not.2.not = icmp ult i32 %div18.2, %0
  br i1 %cmp5.not.2.not, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %div18.3 = lshr i32 %sclk, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.3, i32 %0)
  %cmp5.not.3.not = icmp ult i32 %div18.3, %0
  br i1 %cmp5.not.3.not, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  %div18.4 = lshr i32 %sclk, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.4, i32 %0)
  %cmp5.not.4.not = icmp ult i32 %div18.4, %0
  %spec.select = select i1 %cmp5.not.4.not, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 5, %for.cond.cleanup_crit_edge ], [ 4, %for.cond.1.cleanup_crit_edge ], [ 3, %for.cond.2.cleanup_crit_edge ], [ 2, %for.cond.3.cleanup_crit_edge ], [ %spec.select, %for.cond.4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_enable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %p.i73 = alloca i32, align 4
  %u.i74 = alloca i32, align 4
  %p.i57 = alloca i32, align 4
  %u.i58 = alloca i32, align 4
  %p.i = alloca i32, align 4
  %u.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1760
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %5 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.not = icmp eq i32 %5, 0
  br i1 %tobool.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %9, i32 1820
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %boot_pl.i = getelementptr inbounds %struct.sumo_power_info, ptr %7, i32 0, i32 13
  tail call fastcc void @sumo_program_power_level(ptr noundef %rdev, ptr noundef %boot_pl.i, i32 noundef 0) #15
  %11 = and i32 %10, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %13, i32 1820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %11) #15, !srcloc !44
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i99.i118 = getelementptr i8, ptr %15, i32 1668
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i118) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %17 = and i32 %16, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i110.i122 = getelementptr i8, ptr %19, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i122, i32 %17) #15, !srcloc !44
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i119.i110 = getelementptr i8, ptr %21, i32 1668
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i110) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %23 = and i32 %22, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i130.i114 = getelementptr i8, ptr %25, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i114, i32 %23) #15, !srcloc !44
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i139.i102 = getelementptr i8, ptr %27, i32 1668
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139.i102) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %29 = and i32 %28, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i150.i106 = getelementptr i8, ptr %31, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i106, i32 %29) #15, !srcloc !44
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %33, i32 1672
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %35 = and i32 %34, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %36 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %37, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %35) #15, !srcloc !44
  %38 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %39, i32 1672
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %41 = and i32 %40, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i110.i = getelementptr i8, ptr %43, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %41) #15, !srcloc !44
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %45, i32 1672
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %47 = and i32 %46, -32769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %49, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 %47) #15, !srcloc !44
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %51, i32 1672
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %53 = and i32 %52, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i150.i = getelementptr i8, ptr %55, i32 1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 %53) #15, !srcloc !44
  %56 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv.i, align 4
  %psp.i = getelementptr inbounds %struct.sumo_power_info, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %psp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %psp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #15
  %61 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %62, i32 1872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 %60) #15, !srcloc !44
  %63 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %64, i32 1604
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %66 = or i32 %65, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %68, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %66) #15, !srcloc !44
  br label %r100_mm_wreg.exit111.i

r100_mm_wreg.exit111.i:                           ; preds = %r100_mm_wreg.exit111.i.r100_mm_wreg.exit111.i_crit_edge, %if.end
  %i.0123.i = phi i32 [ 0, %if.end ], [ %inc.i, %r100_mm_wreg.exit111.i.r100_mm_wreg.exit111.i_crit_edge ]
  %mul.i = shl i32 %i.0123.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1684
  %69 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i41 = getelementptr i8, ptr %70, i32 %add.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %arrayidx.i = getelementptr [15 x i32], ptr @sumo_utc, i32 0, i32 %i.0123.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %73, 1023
  %74 = and i32 %71, 16580607
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  %or.i = or i32 %and1.i, %75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %77 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %78, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90.i, i32 %76) #15, !srcloc !44
  %79 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %80, i32 %add.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %arrayidx10.i = getelementptr [15 x i32], ptr @sumo_dtc, i32 0, i32 %i.0123.i
  %82 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx10.i, align 4
  %shl11.i = shl i32 %83, 10
  %and12.i = and i32 %shl11.i, 1047552
  %84 = and i32 %81, -16518913
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #15
  %or13.i = or i32 %and12.i, %85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %86 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #15
  %87 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %88, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %86) #15, !srcloc !44
  %inc.i = add nuw nsw i32 %i.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %sumo_program_tp.exit, label %r100_mm_wreg.exit111.i.r100_mm_wreg.exit111.i_crit_edge

r100_mm_wreg.exit111.i.r100_mm_wreg.exit111.i_crit_edge: ; preds = %r100_mm_wreg.exit111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %r100_mm_wreg.exit111.i

sumo_program_tp.exit:                             ; preds = %r100_mm_wreg.exit111.i
  %89 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %90, i32 1604
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %92 = and i32 %91, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %94, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %92) #15, !srcloc !44
  %95 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %96, i32 1832
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %98 = or i32 %97, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %99 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %100, i32 1832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %98) #15, !srcloc !44
  %101 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %102, i32 1832
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %104 = and i32 %103, -65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %105 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %106, i32 1832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %104) #15, !srcloc !44
  %107 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %108, i32 1604
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %110 = and i32 %109, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %111 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i46 = getelementptr i8, ptr %112, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i46, i32 %110) #15, !srcloc !44
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 23
  %113 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %enable_auto_thermal_throttling, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not = icmp eq i8 %114, 0
  br i1 %tobool.not, label %sumo_program_tp.exit.if.end3_crit_edge, label %if.then2

sumo_program_tp.exit.if.end3_crit_edge:           ; preds = %sumo_program_tp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %sumo_program_tp.exit
  call void @__sanitizer_cov_trace_pc() #17
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %115 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %asic.i, align 8
  %get_xclk.i = getelementptr inbounds %struct.radeon_asic, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %get_xclk.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %get_xclk.i, align 4
  %call.i = tail call i32 %118(ptr noundef %rdev) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i) #15
  %119 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %p.i, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i) #15
  %120 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %u.i, align 4, !annotation !40
  %121 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %122, i32 1824
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  call void @r600_calculate_u_and_p(i32 noundef 1000, i32 noundef %call.i, i32 noundef 16, ptr noundef nonnull %p.i, ptr noundef nonnull %u.i) #15
  %124 = and i32 %123, 117440760
  %125 = call i32 @llvm.bswap.i32(i32 %124) #15
  %126 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %p.i, align 4
  %shl.i = shl i32 %127, 3
  %128 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %u.i, align 4
  %shl2.i = shl i32 %129, 19
  %or.i49 = or i32 %shl.i, %125
  %or3.i = or i32 %or.i49, %shl2.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %130 = call i32 @llvm.bswap.i32(i32 %or3.i) #15
  %131 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i50 = getelementptr i8, ptr %132, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i50, i32 %130) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i) #15
  %133 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %134, i32 1760
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %136 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv.i, align 4
  %138 = and i32 %135, -16711937
  %139 = call i32 @llvm.bswap.i32(i32 %138) #15
  %thermal_auto_throttling.i = getelementptr inbounds %struct.sumo_power_info, ptr %137, i32 0, i32 8
  %140 = ptrtoint ptr %thermal_auto_throttling.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %thermal_auto_throttling.i, align 4
  %add.i54 = shl i32 %141, 8
  %shl.i55 = add i32 %add.i54, 12544
  %or.i56 = or i32 %shl.i55, %139
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %142 = call i32 @llvm.bswap.i32(i32 %or.i56) #15
  %143 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %144, i32 1760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %142) #15, !srcloc !44
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %sumo_program_tp.exit.if.end3_crit_edge
  %145 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %146, i32 1820
  %147 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i57) #15
  %148 = ptrtoint ptr %p.i57 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1, ptr %p.i57, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i58) #15
  %149 = ptrtoint ptr %u.i58 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %u.i58, align 4, !annotation !40
  %asic.i61 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %150 = ptrtoint ptr %asic.i61 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %asic.i61, align 8
  %get_xclk.i62 = getelementptr inbounds %struct.radeon_asic, ptr %151, i32 0, i32 9
  %152 = ptrtoint ptr %get_xclk.i62 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %get_xclk.i62, align 4
  %call1.i = call i32 %153(ptr noundef %rdev) #15
  call void @r600_calculate_u_and_p(i32 noundef 100000, i32 noundef %call1.i, i32 noundef 14, ptr noundef nonnull %p.i57, ptr noundef nonnull %u.i58) #15
  %154 = and i32 %147, -12648448
  %155 = call i32 @llvm.bswap.i32(i32 %154) #15
  %156 = ptrtoint ptr %p.i57 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %p.i57, align 4
  %shl.i63 = shl i32 %157, 14
  %158 = ptrtoint ptr %u.i58 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %u.i58, align 4
  %shl2.i64 = shl i32 %159, 28
  %or.i65 = or i32 %shl.i63, %155
  %or3.i66 = or i32 %or.i65, %shl2.i64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %160 = call i32 @llvm.bswap.i32(i32 %or3.i66) #15
  %161 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i67 = getelementptr i8, ptr %162, i32 1820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i67, i32 %160) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i58) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i57) #15
  %163 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i69 = getelementptr i8, ptr %164, i32 1824
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %166 = and i32 %165, -117440513
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %167 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i70 = getelementptr i8, ptr %168, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i70, i32 %166) #15, !srcloc !44
  %169 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %170, i32 1928
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %172 = or i32 %171, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %173 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %174, i32 1928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 %172) #15, !srcloc !44
  %175 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %176, i32 1904
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %178 = and i32 %177, -134217729
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %179 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %180, i32 1904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %178) #15, !srcloc !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i73) #15
  %181 = ptrtoint ptr %p.i73 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -1, ptr %p.i73, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i74) #15
  %182 = ptrtoint ptr %u.i74 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 -1, ptr %u.i74, align 4, !annotation !40
  %183 = ptrtoint ptr %asic.i61 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %asic.i61, align 8
  %get_xclk.i76 = getelementptr inbounds %struct.radeon_asic, ptr %184, i32 0, i32 9
  %185 = ptrtoint ptr %get_xclk.i76 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %get_xclk.i76, align 4
  %call.i77 = call i32 %186(ptr noundef %rdev) #15
  call void @r600_calculate_u_and_p(i32 noundef 8, i32 noundef %call.i77, i32 noundef 16, ptr noundef nonnull %p.i73, ptr noundef nonnull %u.i74) #15
  %187 = ptrtoint ptr %u.i74 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %u.i74, align 4
  %shl.i78 = shl i32 %188, 16
  %189 = ptrtoint ptr %p.i73 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %p.i73, align 4
  %or.i79 = or i32 %shl.i78, %190
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %191 = call i32 @llvm.bswap.i32(i32 %or.i79) #15
  %192 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i81 = getelementptr i8, ptr %193, i32 1768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i81, i32 %191) #15, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i74) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i73) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %194 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i83 = getelementptr i8, ptr %195, i32 1680
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i83, i32 855638784) #15, !srcloc !44
  %196 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %197, i32 1760
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %199 = or i32 %198, 512
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %200 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i86 = getelementptr i8, ptr %201, i32 1760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i86, i32 %199) #15, !srcloc !44
  %202 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i88 = getelementptr i8, ptr %203, i32 1760
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i88) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %205 = or i32 %204, 1024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %206 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i89 = getelementptr i8, ptr %207, i32 1760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i89, i32 %205) #15, !srcloc !44
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %208 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp24.i = icmp sgt i32 %209, 0
  br i1 %cmp24.i, label %if.end3.for.body.i_crit_edge, label %if.end3.sumo_wait_for_level_0.exit_crit_edge

if.end3.sumo_wait_for_level_0.exit_crit_edge:     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i92, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %210 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i91 = getelementptr i8, ptr %211, i32 1644
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i91) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %213 = and i32 %212, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp1.i = icmp eq i32 %213, 0
  br i1 %cmp1.i, label %for.endthread-pre-split.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %214(i32 noundef 214748) #15
  %inc.i92 = add nuw nsw i32 %i.025.i, 1
  %215 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i92, %216
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %217 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %.pr.i = load i32, ptr %usec_timeout.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i.for.end.i_crit_edge
  %218 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %216, %if.end.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp426.i = icmp sgt i32 %218, 0
  br i1 %cmp426.i, label %for.end.i.for.body5.i_crit_edge, label %for.end.i.sumo_wait_for_level_0.exit_crit_edge

for.end.i.sumo_wait_for_level_0.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end10.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.127.i = phi i32 [ %inc12.i, %if.end10.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %219 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %220, i32 1644
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %222 = and i32 %221, 8389376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %cmp8.i = icmp eq i32 %222, 0
  br i1 %cmp8.i, label %for.body5.i.sumo_wait_for_level_0.exit_crit_edge, label %if.end10.i

for.body5.i.sumo_wait_for_level_0.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end10.i:                                       ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %223(i32 noundef 214748) #15
  %inc12.i = add nuw nsw i32 %i.127.i, 1
  %224 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %usec_timeout.i, align 4
  %cmp4.i = icmp slt i32 %inc12.i, %225
  br i1 %cmp4.i, label %if.end10.i.for.body5.i_crit_edge, label %if.end10.i.sumo_wait_for_level_0.exit_crit_edge

if.end10.i.sumo_wait_for_level_0.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end10.i.for.body5.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

sumo_wait_for_level_0.exit:                       ; preds = %if.end10.i.sumo_wait_for_level_0.exit_crit_edge, %for.body5.i.sumo_wait_for_level_0.exit_crit_edge, %for.end.i.sumo_wait_for_level_0.exit_crit_edge, %if.end3.sumo_wait_for_level_0.exit_crit_edge
  %enable_sclk_ds = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 22
  %226 = ptrtoint ptr %enable_sclk_ds to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %enable_sclk_ds, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool4.not = icmp eq i8 %227, 0
  br i1 %tobool4.not, label %sumo_wait_for_level_0.exit.if.end6_crit_edge, label %if.then5

sumo_wait_for_level_0.exit.if.end6_crit_edge:     ; preds = %sumo_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %sumo_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #17
  %228 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %229, i32 2072
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i94) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %231 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %232, i32 2076
  %233 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #15, !srcloc !41
  %234 = lshr i32 %233, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %235 = and i32 %230, 117506047
  %236 = or i32 %235, 268435456
  %and4.i = and i32 %234, 3840
  %or5.i = or i32 %and4.i, 240
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %237 = call i32 @llvm.bswap.i32(i32 %or5.i) #15
  %238 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %239, i32 2076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %237) #15, !srcloc !44
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %240 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %241, i32 2072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %236) #15, !srcloc !44
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sumo_wait_for_level_0.exit.if.end6_crit_edge
  %enable_boost = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 26
  %242 = ptrtoint ptr %enable_boost to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %enable_boost, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool7.not = icmp eq i8 %243, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  call void @sumo_enable_boost_timer(ptr noundef %rdev) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %244 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %245, i32 0, i32 9
  %246 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ps_priv.i.i, align 4
  %248 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %priv.i, align 4
  %current_rps.i = getelementptr inbounds %struct.sumo_power_info, ptr %249, i32 0, i32 27
  %250 = call ptr @memcpy(ptr %current_rps.i, ptr %245, i32 40)
  %current_ps.i = getelementptr inbounds %struct.sumo_power_info, ptr %249, i32 0, i32 28
  %251 = call ptr @memcpy(ptr %current_ps.i, ptr %247, i32 128)
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %249, i32 0, i32 27, i32 9
  %252 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_enable_boost_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_late_enable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %p.i.i = alloca i32, align 4
  %u.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %enable_gfx_clock_gating.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %enable_gfx_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_gfx_clock_gating.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_gfx_clockgating_initialize(ptr noundef %rdev) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %enable_gfx_power_gating.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %enable_gfx_power_gating.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_gfx_power_gating.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p.i.i) #15
  %6 = ptrtoint ptr %p.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %p.i.i, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i.i) #15
  %7 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %u.i.i, align 4, !annotation !40
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %8 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic.i.i, align 8
  %get_xclk.i.i = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %get_xclk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_xclk.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %rdev) #15
  %family.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %12 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 44
  %..i.i = select i1 %cmp.i.i, i32 3277047, i32 3276913
  %.184.i.i = select i1 %cmp.i.i, i32 32, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %14 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 386577921) #15, !srcloc !44
  call void @r600_calculate_u_and_p(i32 noundef 100, i32 noundef %call.i.i, i32 noundef 16, ptr noundef nonnull %p.i.i, ptr noundef nonnull %u.i.i) #15
  %16 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i188.i.i = getelementptr i8, ptr %17, i32 1964
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188.i.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %19 = and i32 %18, -16776976
  %20 = call i32 @llvm.bswap.i32(i32 %19) #15
  %21 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p.i.i, align 4
  %shl.i.i = shl i32 %22, 8
  %23 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %u.i.i, align 4
  %shl2.i.i = shl i32 %24, 24
  %or.i.i = or i32 %shl2.i.i, %shl.i.i
  %and3.i.i = and i32 %or.i.i, 268435200
  %or4.i.i = or i32 %and3.i.i, %20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %25 = call i32 @llvm.bswap.i32(i32 %or4.i.i) #15
  %26 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i192.i.i = getelementptr i8, ptr %27, i32 1964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192.i.i, i32 %25) #15, !srcloc !44
  call void @r600_calculate_u_and_p(i32 noundef 1, i32 noundef %call.i.i, i32 noundef 16, ptr noundef nonnull %p.i.i, ptr noundef nonnull %u.i.i) #15
  %28 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i196.i.i = getelementptr i8, ptr %29, i32 1904
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196.i.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %31 = and i32 %30, -16776976
  %32 = call i32 @llvm.bswap.i32(i32 %31) #15
  %33 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %p.i.i, align 4
  %shl9.i.i = shl i32 %34, 8
  %35 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %u.i.i, align 4
  %shl10.i.i = shl i32 %36, 24
  %or11.i.i = or i32 %shl10.i.i, %shl9.i.i
  %and12.i.i = and i32 %or11.i.i, 268435200
  %or13.i.i = or i32 %and12.i.i, %32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %37 = call i32 @llvm.bswap.i32(i32 %or13.i.i) #15
  %38 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i200.i.i = getelementptr i8, ptr %39, i32 1904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i.i, i32 %37) #15, !srcloc !44
  %40 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %41)
  %cmp17.i.i = icmp eq i32 %41, 44
  %.202.i.i = select i1 %cmp17.i.i, i32 269496848, i32 1985229328
  %.203.i.i = select i1 %cmp17.i.i, i32 269488144, i32 -19088744
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1032, i32 noundef %.202.i.i) #15
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1036, i32 noundef %.203.i.i) #15
  %call21.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1040) #15
  %and22.i.i = and i32 %call21.i.i, 268435200
  %or25.i.i = or i32 %.184.i.i, %and22.i.i
  %or26.i.i = or i32 %or25.i.i, 268435457
  %42 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %43)
  %cmp28.i.i = icmp eq i32 %43, 44
  %and30.i.i = and i32 %or26.i.i, 536838305
  %or31.i.i = or i32 %and30.i.i, 30464
  %rcu_pwr_gating_cntl.0.i.i = select i1 %cmp28.i.i, i32 %or31.i.i, i32 %or26.i.i
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1040, i32 noundef %rcu_pwr_gating_cntl.0.i.i) #15
  %call33.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1184) #15
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1184, i32 noundef %..i.i) #15
  %call38.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1188) #15
  %or41.i.i = select i1 %cmp.i.i, i32 3276810, i32 3276850
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1188, i32 noundef %or41.i.i) #15
  %call43.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1192) #15
  %or47.i.i = select i1 %cmp.i.i, i32 262154, i32 3276850
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1192, i32 noundef %or47.i.i) #15
  %44 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %45)
  %cmp50.i.i = icmp eq i32 %45, 44
  br i1 %cmp50.i.i, label %if.then51.i.i, label %if.then2.i.if.end52.i.i_crit_edge

if.then2.i.if.end52.i.i_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52.i.i

if.then51.i.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1284, i32 noundef 2562) #15
  br label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.then51.i.i, %if.then2.i.if.end52.i.i_crit_edge
  call void @sumo_smu_pg_init(ptr noundef %rdev) #15
  %call53.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1040) #15
  %and54.i.i = and i32 %call53.i.i, 268435200
  %or57.i.i = or i32 %.184.i.i, %and54.i.i
  %or58.i.i = or i32 %or57.i.i, 1073741825
  %46 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %47)
  %cmp60.i.i = icmp eq i32 %47, 44
  %and62.i.i = and i32 %or58.i.i, 1342144673
  %or63.i.i = or i32 %and62.i.i, 30464
  %rcu_pwr_gating_cntl.1.i.i = select i1 %cmp60.i.i, i32 %or63.i.i, i32 %or58.i.i
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1040, i32 noundef %rcu_pwr_gating_cntl.1.i.i) #15
  %48 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %49)
  %cmp66.i.i = icmp eq i32 %49, 44
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end52.i.i.if.end74.i.i_crit_edge

if.end52.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i.i

if.then67.i.i:                                    ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call68.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1184) #15
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1184, i32 noundef 3276913) #15
  %call71.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1188) #15
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1188, i32 noundef 3276816) #15
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then67.i.i, %if.end52.i.i.if.end74.i.i_crit_edge
  call void @sumo_smu_pg_init(ptr noundef %rdev) #15
  %call75.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1040) #15
  %50 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %51)
  %cmp79.i.i = icmp eq i32 %51, 44
  %or81.i.i = and i32 %call75.i.i, 268402688
  %or83.i.i = or i32 %or81.i.i, 1342207777
  %and76.i.i = and i32 %call75.i.i, 268435200
  %or85.i.i = or i32 %and76.i.i, 1342177369
  %rcu_pwr_gating_cntl.2.i.i = select i1 %cmp79.i.i, i32 %or83.i.i, i32 %or85.i.i
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1040, i32 noundef %rcu_pwr_gating_cntl.2.i.i) #15
  %52 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %53)
  %cmp88.i.i = icmp eq i32 %53, 44
  br i1 %cmp88.i.i, label %if.then89.i.i, label %if.end74.i.i.sumo_gfx_powergating_initialize.exit.i_crit_edge

if.end74.i.i.sumo_gfx_powergating_initialize.exit.i_crit_edge: ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_gfx_powergating_initialize.exit.i

if.then89.i.i:                                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call90.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1184) #15
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1184, i32 noundef 3276913) #15
  %call93.i.i = call i32 @r600_rcu_rreg(ptr noundef %rdev, i32 noundef 1188) #15
  call void @r600_rcu_wreg(ptr noundef %rdev, i32 noundef 1188, i32 noundef 3276822) #15
  br label %sumo_gfx_powergating_initialize.exit.i

sumo_gfx_powergating_initialize.exit.i:           ; preds = %if.then89.i.i, %if.end74.i.i.sumo_gfx_powergating_initialize.exit.i_crit_edge
  call void @sumo_smu_pg_init(ptr noundef %rdev) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p.i.i) #15
  br label %if.end3.i

if.end3.i:                                        ; preds = %sumo_gfx_powergating_initialize.exit.i, %if.end.i.if.end3.i_crit_edge
  %enable_mg_clock_gating.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 21
  %54 = ptrtoint ptr %enable_mg_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enable_mg_clock_gating.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool4.not.i = icmp eq i8 %55, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end6.i_crit_edge, label %if.then5.i

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i.i1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i1.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %57, i32 2000
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %59 = ptrtoint ptr %rmmio.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i1.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %60, i32 2004
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %62 = and i32 %58, 16410
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %63 = ptrtoint ptr %rmmio.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i1.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %64, i32 2000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i.i, i32 %62) #15, !srcloc !44
  %65 = and i32 %61, 16252944
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %66 = ptrtoint ptr %rmmio.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i.i1.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %67, i32 2004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 %65) #15, !srcloc !44
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %68 = ptrtoint ptr %enable_gfx_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %enable_gfx_clock_gating.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool8.not.i = icmp eq i8 %69, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i.i3.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %70 = ptrtoint ptr %rmmio.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %71, i32 1604
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %73 = or i32 %72, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %74 = ptrtoint ptr %rmmio.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i.i3.i, align 4
  %add.ptr.i39.i.i = getelementptr i8, ptr %75, i32 1604
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i.i, i32 %73) #15, !srcloc !44
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %76 = ptrtoint ptr %enable_gfx_power_gating.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %enable_gfx_power_gating.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool12.not.i = icmp eq i8 %77, 0
  br i1 %tobool12.not.i, label %if.end10.i.sumo_enable_clock_power_gating.exit_crit_edge, label %if.then13.i

if.end10.i.sumo_enable_clock_power_gating.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_enable_clock_power_gating.exit

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i.i5.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %78 = ptrtoint ptr %rmmio.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio.i.i5.i, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %79, i32 1964
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %81 = or i32 %80, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %82 = ptrtoint ptr %rmmio.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i5.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %83, i32 1964
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 %81) #15, !srcloc !44
  br label %sumo_enable_clock_power_gating.exit

sumo_enable_clock_power_gating.exit:              ; preds = %if.then13.i, %if.end10.i.sumo_enable_clock_power_gating.exit_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %irq, align 8, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool1.not = icmp eq i8 %85, 0
  br i1 %tobool1.not, label %sumo_enable_clock_power_gating.exit.cleanup_crit_edge, label %land.lhs.true

sumo_enable_clock_power_gating.exit.cleanup_crit_edge: ; preds = %sumo_enable_clock_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %sumo_enable_clock_power_gating.exit
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %86 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %int_thermal_type, align 4
  %call2 = call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %87) #15
  br i1 %call2, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %88 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 1844
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %91 = and i32 %90, -16711681
  %92 = or i32 %91, 11075584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %94, i32 1844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %92) #15, !srcloc !44
  %95 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %96, i32 1844
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %98 = and i32 %97, -65281
  %99 = or i32 %98, 35584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %100 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %101, i32 1844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %99) #15, !srcloc !44
  %min_temp19.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 1
  %102 = ptrtoint ptr %min_temp19.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 90000, ptr %min_temp19.i, align 4
  %max_temp23.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 2
  %103 = ptrtoint ptr %max_temp23.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 120000, ptr %max_temp23.i, align 4
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %104 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %105 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %asic, align 8
  %irq9 = getelementptr inbounds %struct.radeon_asic, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %irq9, align 4
  %call10 = call i32 %108(ptr noundef %rdev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %land.lhs.true.cleanup_crit_edge, %sumo_enable_clock_power_gating.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_dpm_disable(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1760
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %5 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.not = icmp eq i32 %5, 0
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 4
  %enable_gfx_clock_gating.i = getelementptr inbounds %struct.sumo_power_info, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %enable_gfx_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable_gfx_clock_gating.i, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i26 = icmp eq i8 %9, 0
  br i1 %tobool.not.i26, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 1604
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %13 = and i32 %12, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %14 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %15, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 %13) #15, !srcloc !44
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i51.i.i = getelementptr i8, ptr %17, i32 1604
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %19 = or i32 %18, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %21, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i.i, i32 %19) #15, !srcloc !44
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %23, i32 1604
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %25 = and i32 %24, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %27, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i.i, i32 %25) #15, !srcloc !44
  %28 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %29, i32 39160
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %enable_gfx_power_gating.i = getelementptr inbounds %struct.sumo_power_info, ptr %7, i32 0, i32 20
  %31 = ptrtoint ptr %enable_gfx_power_gating.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_gfx_power_gating.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i = icmp eq i8 %32, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %34, i32 1964
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %36 = and i32 %35, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i27.i.i = getelementptr i8, ptr %38, i32 1964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i.i, i32 %36) #15, !srcloc !44
  %39 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %40, i32 39160
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %enable_mg_clock_gating.i = getelementptr inbounds %struct.sumo_power_info, ptr %7, i32 0, i32 21
  %42 = ptrtoint ptr %enable_mg_clock_gating.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enable_mg_clock_gating.i, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool4.not.i = icmp eq i8 %43, 0
  br i1 %tobool4.not.i, label %if.end3.i.sumo_disable_clock_power_gating.exit_crit_edge, label %if.then5.i

if.end3.i.sumo_disable_clock_power_gating.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_disable_clock_power_gating.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %45, i32 2000
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %47 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %48, i32 2004
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %50 = or i32 %46, -16411
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %51 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i30.i.i = getelementptr i8, ptr %52, i32 2000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i.i, i32 %50) #15, !srcloc !44
  %53 = or i32 %49, -16252945
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i34.i.i = getelementptr i8, ptr %55, i32 2004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %53) #15, !srcloc !44
  br label %sumo_disable_clock_power_gating.exit

sumo_disable_clock_power_gating.exit:             ; preds = %if.then5.i, %if.end3.i.sumo_disable_clock_power_gating.exit_crit_edge
  %enable_sclk_ds = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 22
  %56 = ptrtoint ptr %enable_sclk_ds to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %enable_sclk_ds, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not = icmp eq i8 %57, 0
  br i1 %tobool.not, label %sumo_disable_clock_power_gating.exit.if.end3_crit_edge, label %if.then2

sumo_disable_clock_power_gating.exit.if.end3_crit_edge: ; preds = %sumo_disable_clock_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %sumo_disable_clock_power_gating.exit
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %59, i32 2072
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %61 = and i32 %60, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %62 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %63, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 %61) #15, !srcloc !44
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %sumo_disable_clock_power_gating.exit.if.end3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %65, i32 1680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i31, i32 0) #15, !srcloc !44
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %66 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp24.i = icmp sgt i32 %67, 0
  br i1 %cmp24.i, label %if.end3.for.body.i_crit_edge, label %if.end3.sumo_wait_for_level_0.exit_crit_edge

if.end3.sumo_wait_for_level_0.exit_crit_edge:     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i34.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %i.025.i = phi i32 [ %inc.i, %if.end.i34.for.body.i_crit_edge ], [ 0, %if.end3.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %69, i32 1644
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %71 = and i32 %70, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp1.i = icmp eq i32 %71, 0
  br i1 %cmp1.i, label %for.endthread-pre-split.i, label %if.end.i34

if.end.i34:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748) #15
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %73 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %74
  br i1 %cmp.i, label %if.end.i34.for.body.i_crit_edge, label %if.end.i34.for.end.i_crit_edge

if.end.i34.for.end.i_crit_edge:                   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end.i34.for.body.i_crit_edge:                  ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr.i = load i32, ptr %usec_timeout.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i34.for.end.i_crit_edge
  %76 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %74, %if.end.i34.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp426.i = icmp sgt i32 %76, 0
  br i1 %cmp426.i, label %for.end.i.for.body5.i_crit_edge, label %for.end.i.sumo_wait_for_level_0.exit_crit_edge

for.end.i.sumo_wait_for_level_0.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end10.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.127.i = phi i32 [ %inc12.i, %if.end10.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %77 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %78, i32 1644
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %80 = and i32 %79, 8389376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp8.i = icmp eq i32 %80, 0
  br i1 %cmp8.i, label %for.body5.i.sumo_wait_for_level_0.exit_crit_edge, label %if.end10.i

for.body5.i.sumo_wait_for_level_0.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end10.i:                                       ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748) #15
  %inc12.i = add nuw nsw i32 %i.127.i, 1
  %82 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %usec_timeout.i, align 4
  %cmp4.i = icmp slt i32 %inc12.i, %83
  br i1 %cmp4.i, label %if.end10.i.for.body5.i_crit_edge, label %if.end10.i.sumo_wait_for_level_0.exit_crit_edge

if.end10.i.sumo_wait_for_level_0.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end10.i.for.body5.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

sumo_wait_for_level_0.exit:                       ; preds = %if.end10.i.sumo_wait_for_level_0.exit_crit_edge, %for.body5.i.sumo_wait_for_level_0.exit_crit_edge, %for.end.i.sumo_wait_for_level_0.exit_crit_edge, %if.end3.sumo_wait_for_level_0.exit_crit_edge
  %84 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %85, i32 1760
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %87 = and i32 %86, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %88 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %89, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %87) #15, !srcloc !44
  %90 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %91, i32 1904
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %93 = or i32 %92, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %94 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %95, i32 1904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %93) #15, !srcloc !44
  %96 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %97, i32 1928
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %99 = and i32 %98, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %100 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %101, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %99) #15, !srcloc !44
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %102 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %irq, align 8, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool4.not = icmp eq i8 %103, 0
  br i1 %tobool4.not, label %sumo_wait_for_level_0.exit.if.end10_crit_edge, label %land.lhs.true

sumo_wait_for_level_0.exit.if.end10_crit_edge:    ; preds = %sumo_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %sumo_wait_for_level_0.exit
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %104 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %int_thermal_type, align 4
  %call5 = tail call zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %105) #15
  br i1 %call5, label %if.then6, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %106 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %107 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %asic, align 8
  %irq8 = getelementptr inbounds %struct.radeon_asic, ptr %108, i32 0, i32 15
  %109 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %irq8, align 4
  %call9 = tail call i32 %110(ptr noundef %rdev) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %land.lhs.true.if.end10_crit_edge, %sumo_wait_for_level_0.exit.if.end10_crit_edge
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %111 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %boot_ps, align 4
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ps_priv.i.i, align 4
  %115 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv.i, align 4
  %current_rps.i = getelementptr inbounds %struct.sumo_power_info, ptr %116, i32 0, i32 27
  %117 = call ptr @memcpy(ptr %current_rps.i, ptr %112, i32 40)
  %current_ps.i = getelementptr inbounds %struct.sumo_power_info, ptr %116, i32 0, i32 28
  %118 = call ptr @memcpy(ptr %current_ps.i, ptr %114, i32 128)
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %116, i32 0, i32 27, i32 9
  %119 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_pre_set_power_state(ptr nocapture noundef readonly %rdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  %requested_rps.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29
  %5 = call ptr @memmove(ptr %requested_rps.i, ptr %3, i32 36)
  %requested_ps.sroa.5.0.requested_rps.i.sroa_idx = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %6 = ptrtoint ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %requested_ps.sroa.5.0.copyload, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %requested_ps.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 30
  %7 = call ptr @memcpy(ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.copyload, i32 128)
  store ptr %requested_ps.i, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %enable_dynamic_patch_ps = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %enable_dynamic_patch_ps to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable_dynamic_patch_ps, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %requested_ps.sroa.5.0.requested_rps.i.sroa_idx, align 4
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %min_sclk3.i = getelementptr inbounds %struct.sumo_power_info, ptr %13, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %min_sclk3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %min_sclk3.i, align 4
  %class.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 1
  %16 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %class.i, align 4
  %and.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %ps_priv.i223.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %18 = ptrtoint ptr %ps_priv.i223.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps_priv.i223.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  %vddc_index.i.i = getelementptr inbounds %struct.sumo_pl, ptr %19, i32 0, i32 1
  %boot_pl.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %13, i32 0, i32 13
  %vddc_index3.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %13, i32 0, i32 13, i32 1
  %current_vddc.0.in.i.i = select i1 %tobool.not.i.i, ptr %vddc_index3.i.i, ptr %vddc_index.i.i
  %current_sclk.0.in.i.i = select i1 %tobool.not.i.i, ptr %boot_pl.i.i, ptr %19
  %20 = ptrtoint ptr %current_sclk.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %current_sclk.0.i.i = load i32, ptr %current_sclk.0.in.i.i, align 4
  %21 = ptrtoint ptr %current_vddc.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %current_vddc.0.i.i = load i32, ptr %current_vddc.0.in.i.i, align 4
  %vddc_index8.i.i = getelementptr inbounds %struct.sumo_pl, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %vddc_index8.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %current_vddc.0.i.i, ptr %vddc_index8.i.i, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %current_sclk.0.i.i)
  %cmp.i.i = icmp ugt i32 %24, %current_sclk.0.i.i
  br i1 %cmp.i.i, label %if.then12.i.i, label %if.then.i.if.end16.i.i_crit_edge

if.then.i.if.end16.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i

if.then12.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %current_sclk.0.i.i, ptr %11, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then12.i.i, %if.then.i.if.end16.i.i_crit_edge
  %26 = phi i32 [ %current_sclk.0.i.i, %if.then12.i.i ], [ %24, %if.then.i.if.end16.i.i_crit_edge ]
  %27 = tail call i32 @llvm.umax.i32(i32 %15, i32 800) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %26)
  %cmp1.i.i.i = icmp ugt i32 %27, %26
  br i1 %cmp1.i.i.i, label %if.end16.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, label %if.end.i.i.i

if.end16.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end16.i.i
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %enable_sclk_ds.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable_sclk_ds.i.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, label %for.cond.i.i.i

if.end.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

for.cond.i.i.i:                                   ; preds = %if.end.i.i.i
  %div18.i.i.i = lshr i32 %26, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.i, i32 %27)
  %cmp5.not.i.i.i.not = icmp ult i32 %div18.i.i.i, %27
  br i1 %cmp5.not.i.i.i.not, label %for.cond.i.i.i.1, label %for.cond.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge

for.cond.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

for.cond.i.i.i.1:                                 ; preds = %for.cond.i.i.i
  %div18.i.i.i.1 = lshr i32 %26, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.i.1, i32 %27)
  %cmp5.not.i.i.i.1.not = icmp ult i32 %div18.i.i.i.1, %27
  br i1 %cmp5.not.i.i.i.1.not, label %for.cond.i.i.i.2, label %for.cond.i.i.i.1.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge

for.cond.i.i.i.1.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

for.cond.i.i.i.2:                                 ; preds = %for.cond.i.i.i.1
  %div18.i.i.i.2 = lshr i32 %26, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.i.2, i32 %27)
  %cmp5.not.i.i.i.2.not = icmp ult i32 %div18.i.i.i.2, %27
  br i1 %cmp5.not.i.i.i.2.not, label %for.cond.i.i.i.3, label %for.cond.i.i.i.2.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge

for.cond.i.i.i.2.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

for.cond.i.i.i.3:                                 ; preds = %for.cond.i.i.i.2
  %div18.i.i.i.3 = lshr i32 %26, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.i.3, i32 %27)
  %cmp5.not.i.i.i.3.not = icmp ult i32 %div18.i.i.i.3, %27
  br i1 %cmp5.not.i.i.i.3.not, label %for.cond.i.i.i.4, label %for.cond.i.i.i.3.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge

for.cond.i.i.i.3.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge: ; preds = %for.cond.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

for.cond.i.i.i.4:                                 ; preds = %for.cond.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  %div18.i.i.i.4 = lshr i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.i.4, i32 %27)
  %cmp5.not.i.i.i.4.not = icmp ult i32 %div18.i.i.i.4, %27
  %spec.select = select i1 %cmp5.not.i.i.i.4.not, i32 0, i32 1
  br label %sumo_get_sleep_divider_id_from_clock.exit.i.i

sumo_get_sleep_divider_id_from_clock.exit.i.i:    ; preds = %for.cond.i.i.i.4, %for.cond.i.i.i.3.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, %for.cond.i.i.i.2.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, %for.cond.i.i.i.1.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, %for.cond.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, %if.end.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge, %if.end16.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end16.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge ], [ 5, %for.cond.i.i.i.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge ], [ 4, %for.cond.i.i.i.1.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge ], [ 3, %for.cond.i.i.i.2.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge ], [ 2, %for.cond.i.i.i.3.sumo_get_sleep_divider_id_from_clock.exit.i.i_crit_edge ], [ %spec.select, %for.cond.i.i.i.4 ]
  %ss_divider_index.i.i = getelementptr inbounds %struct.sumo_pl, ptr %11, i32 0, i32 3
  %32 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %retval.0.i.i.i, ptr %ss_divider_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %26)
  %cmp1.i111.i.i = icmp ult i32 %26, 800
  br i1 %cmp1.i111.i.i, label %sumo_get_sleep_divider_id_from_clock.exit.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, label %if.end.i115.i.i

sumo_get_sleep_divider_id_from_clock.exit.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge: ; preds = %sumo_get_sleep_divider_id_from_clock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

if.end.i115.i.i:                                  ; preds = %sumo_get_sleep_divider_id_from_clock.exit.i.i
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i113.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %enable_sclk_ds.i113.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable_sclk_ds.i113.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i114.i.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i114.i.i, label %if.end.i115.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, label %for.cond.i122.i.i

if.end.i115.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge: ; preds = %if.end.i115.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

for.cond.i122.i.i:                                ; preds = %if.end.i115.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25599, i32 %26)
  %cmp5.not.i118.i.i = icmp ugt i32 %26, 25599
  br i1 %cmp5.not.i118.i.i, label %for.cond.i122.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, label %for.cond.i122.i.i.1

for.cond.i122.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge: ; preds = %for.cond.i122.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

for.cond.i122.i.i.1:                              ; preds = %for.cond.i122.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %26)
  %cmp5.not.i118.i.i.1 = icmp ugt i32 %26, 12799
  br i1 %cmp5.not.i118.i.i.1, label %for.cond.i122.i.i.1.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, label %for.cond.i122.i.i.2

for.cond.i122.i.i.1.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge: ; preds = %for.cond.i122.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

for.cond.i122.i.i.2:                              ; preds = %for.cond.i122.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %26)
  %cmp5.not.i118.i.i.2 = icmp ugt i32 %26, 6399
  br i1 %cmp5.not.i118.i.i.2, label %for.cond.i122.i.i.2.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, label %for.cond.i122.i.i.3

for.cond.i122.i.i.2.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge: ; preds = %for.cond.i122.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

for.cond.i122.i.i.3:                              ; preds = %for.cond.i122.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3199, i32 %26)
  %cmp5.not.i118.i.i.3 = icmp ugt i32 %26, 3199
  br i1 %cmp5.not.i118.i.i.3, label %for.cond.i122.i.i.3.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, label %for.cond.i122.i.i.4

for.cond.i122.i.i.3.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge: ; preds = %for.cond.i122.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

for.cond.i122.i.i.4:                              ; preds = %for.cond.i122.i.i.3
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1599, i32 %26)
  %cmp5.not.i118.i.i.4 = icmp ugt i32 %26, 1599
  %spec.select16 = select i1 %cmp5.not.i118.i.i.4, i32 1, i32 0
  br label %sumo_get_sleep_divider_id_from_clock.exit124.i.i

sumo_get_sleep_divider_id_from_clock.exit124.i.i: ; preds = %for.cond.i122.i.i.4, %for.cond.i122.i.i.3.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, %for.cond.i122.i.i.2.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, %for.cond.i122.i.i.1.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, %for.cond.i122.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, %if.end.i115.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge, %sumo_get_sleep_divider_id_from_clock.exit.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge
  %retval.0.i123.i.i = phi i32 [ 0, %sumo_get_sleep_divider_id_from_clock.exit.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge ], [ 0, %if.end.i115.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge ], [ 5, %for.cond.i122.i.i.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge ], [ 4, %for.cond.i122.i.i.1.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge ], [ 3, %for.cond.i122.i.i.2.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge ], [ 2, %for.cond.i122.i.i.3.sumo_get_sleep_divider_id_from_clock.exit124.i.i_crit_edge ], [ %spec.select16, %for.cond.i122.i.i.4 ]
  %ds_divider_index.i.i = getelementptr inbounds %struct.sumo_pl, ptr %11, i32 0, i32 2
  %add.i.i = add nsw i32 %retval.0.i.i.i, 1
  %37 = tail call i32 @llvm.umin.i32(i32 %retval.0.i123.i.i, i32 %add.i.i) #15
  %38 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ds_divider_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %37)
  %cmp51.i.i = icmp eq i32 %retval.0.i.i.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i.i)
  %cmp56.i.i = icmp ugt i32 %retval.0.i.i.i, 1
  %or.cond.i.i = and i1 %cmp56.i.i, %cmp51.i.i
  br i1 %or.cond.i.i, label %if.end65.thread.i.i, label %if.end65.i.i

if.end65.thread.i.i:                              ; preds = %sumo_get_sleep_divider_id_from_clock.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %39 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i.i, ptr %ss_divider_index.i.i, align 4
  br label %if.end74.i.i

if.end65.i.i:                                     ; preds = %sumo_get_sleep_divider_id_from_clock.exit124.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp69.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %cmp69.i.i, label %if.end74.thread.i.i, label %if.end65.i.i.if.end74.i.i_crit_edge

if.end65.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i.i

if.end74.thread.i.i:                              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ds_divider_index.i.i, align 4
  br label %if.then79.i.i

if.end74.i.i:                                     ; preds = %if.end65.i.i.if.end74.i.i_crit_edge, %if.end65.thread.i.i
  %41 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr126.i.i = load i32, ptr %ds_divider_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr126.i.i)
  %cmp78.i.i = icmp eq i32 %.pr126.i.i, 0
  br i1 %cmp78.i.i, label %if.end74.i.i.if.then79.i.i_crit_edge, label %if.end74.i.i.if.end_crit_edge

if.end74.i.i.if.end_crit_edge:                    ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end74.i.i.if.then79.i.i_crit_edge:             ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then79.i.i

if.then79.i.i:                                    ; preds = %if.end74.i.i.if.then79.i.i_crit_edge, %if.end74.thread.i.i
  %42 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ss_divider_index.i.i, align 4
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %enable_boost.i = getelementptr inbounds %struct.sumo_power_info, ptr %13, i32 0, i32 26
  %43 = ptrtoint ptr %enable_boost.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enable_boost.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool6.not.i = icmp eq i8 %44, 0
  %and9.i = and i32 %17, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool10.not.i
  br i1 %or.cond.i, label %if.end.i.if.end13.i_crit_edge, label %if.then11.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.sumo_ps, ptr %11, i32 0, i32 2
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %46, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end.i.if.end13.i_crit_edge
  %47 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %class.i, align 4
  %49 = and i32 %48, 49153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %if.end13.i.if.end27.i_crit_edge, label %if.then24.i

if.end13.i.if.end27.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %flags25.i = getelementptr inbounds %struct.sumo_ps, ptr %11, i32 0, i32 2
  %51 = ptrtoint ptr %flags25.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags25.i, align 4
  %or26.i = or i32 %52, 1
  store i32 %or26.i, ptr %flags25.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end13.i.if.end27.i_crit_edge
  %num_levels.i = getelementptr inbounds %struct.sumo_ps, ptr %11, i32 0, i32 1
  %53 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp249.not.i = icmp eq i32 %54, 0
  br i1 %cmp249.not.i, label %if.end27.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end27.i.if.end_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end27.i
  %55 = tail call i32 @llvm.umax.i32(i32 %15, i32 800) #15
  %flags110.i = getelementptr inbounds %struct.sumo_ps, ptr %11, i32 0, i32 2
  %class2.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0250.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [5 x %struct.sumo_pl], ptr %11, i32 0, i32 %i.0250.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %15)
  %cmp36.i = icmp ult i32 %57, %15
  br i1 %cmp36.i, label %if.then37.i, label %for.body.i.if.end42.i_crit_edge

for.body.i.if.end42.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.then37.i:                                      ; preds = %for.body.i
  %58 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv.i, align 4
  %sclk_voltage_mapping_table.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %59, i32 0, i32 11, i32 6
  %60 = ptrtoint ptr %sclk_voltage_mapping_table.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sclk_voltage_mapping_table.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp28.not.i.i = icmp eq i32 %61, 0
  br i1 %cmp28.not.i.i, label %if.then37.i.for.end.i.i_crit_edge, label %if.then37.i.for.body.i.i_crit_edge

if.then37.i.for.body.i.i_crit_edge:               ; preds = %if.then37.i
  br label %for.body.i.i

if.then37.i.for.end.i.i_crit_edge:                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %61
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.then37.i.for.body.i.i_crit_edge
  %i.029.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.then37.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sumo_power_info, ptr %59, i32 0, i32 11, i32 6, i32 1, i32 %i.029.i.i
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %15)
  %cmp3.not.i.i = icmp ult i32 %63, %15
  br i1 %cmp3.not.i.i, label %for.cond.i.i, label %for.body.i.i.sumo_get_valid_engine_clock.exit.i_crit_edge

for.body.i.i.sumo_get_valid_engine_clock.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_valid_engine_clock.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %if.then37.i.for.end.i.i_crit_edge
  %sub.i225.i = add i32 %61, -1
  %arrayidx15.i.i = getelementptr %struct.sumo_power_info, ptr %59, i32 0, i32 11, i32 6, i32 1, i32 %sub.i225.i
  %64 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx15.i.i, align 4
  br label %sumo_get_valid_engine_clock.exit.i

sumo_get_valid_engine_clock.exit.i:               ; preds = %for.end.i.i, %for.body.i.i.sumo_get_valid_engine_clock.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %65, %for.end.i.i ], [ %63, %for.body.i.i.sumo_get_valid_engine_clock.exit.i_crit_edge ]
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i, ptr %arrayidx.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %sumo_get_valid_engine_clock.exit.i, %for.body.i.if.end42.i_crit_edge
  %67 = phi i32 [ %retval.0.i.i, %sumo_get_valid_engine_clock.exit.i ], [ %57, %for.body.i.if.end42.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %67)
  %cmp1.i.i = icmp ugt i32 %55, %67
  br i1 %cmp1.i.i, label %if.end42.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %if.end.i.i

if.end42.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

if.end.i.i:                                       ; preds = %if.end42.i
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %69, i32 0, i32 22
  %70 = ptrtoint ptr %enable_sclk_ds.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %enable_sclk_ds.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i227.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i227.i, label %if.end.i.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, label %for.cond.i229.i

if.end.i.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

for.cond.i229.i:                                  ; preds = %if.end.i.i
  %div18.i.i = lshr i32 %67, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i, i32 %55)
  %cmp5.not.i.i.not = icmp ult i32 %div18.i.i, %55
  br i1 %cmp5.not.i.i.not, label %for.cond.i229.i.1, label %for.cond.i229.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge

for.cond.i229.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i229.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

for.cond.i229.i.1:                                ; preds = %for.cond.i229.i
  %div18.i.i.1 = lshr i32 %67, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.1, i32 %55)
  %cmp5.not.i.i.1.not = icmp ult i32 %div18.i.i.1, %55
  br i1 %cmp5.not.i.i.1.not, label %for.cond.i229.i.2, label %for.cond.i229.i.1.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge

for.cond.i229.i.1.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i229.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

for.cond.i229.i.2:                                ; preds = %for.cond.i229.i.1
  %div18.i.i.2 = lshr i32 %67, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.2, i32 %55)
  %cmp5.not.i.i.2.not = icmp ult i32 %div18.i.i.2, %55
  br i1 %cmp5.not.i.i.2.not, label %for.cond.i229.i.3, label %for.cond.i229.i.2.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge

for.cond.i229.i.2.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i229.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

for.cond.i229.i.3:                                ; preds = %for.cond.i229.i.2
  %div18.i.i.3 = lshr i32 %67, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.3, i32 %55)
  %cmp5.not.i.i.3.not = icmp ult i32 %div18.i.i.3, %55
  br i1 %cmp5.not.i.i.3.not, label %for.cond.i229.i.4, label %for.cond.i229.i.3.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge

for.cond.i229.i.3.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge: ; preds = %for.cond.i229.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

for.cond.i229.i.4:                                ; preds = %for.cond.i229.i.3
  call void @__sanitizer_cov_trace_pc() #17
  %div18.i.i.4 = lshr i32 %67, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div18.i.i.4, i32 %55)
  %cmp5.not.i.i.4.not = icmp ult i32 %div18.i.i.4, %55
  %spec.select17 = select i1 %cmp5.not.i.i.4.not, i32 0, i32 1
  br label %sumo_get_sleep_divider_id_from_clock.exit.i

sumo_get_sleep_divider_id_from_clock.exit.i:      ; preds = %for.cond.i229.i.4, %for.cond.i229.i.3.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i229.i.2.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i229.i.1.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, %for.cond.i229.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, %if.end.i.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge, %if.end42.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge
  %retval.0.i230.i = phi i32 [ 0, %if.end42.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 0, %if.end.i.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 5, %for.cond.i229.i.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 4, %for.cond.i229.i.1.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 3, %for.cond.i229.i.2.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ 2, %for.cond.i229.i.3.sumo_get_sleep_divider_id_from_clock.exit.i_crit_edge ], [ %spec.select17, %for.cond.i229.i.4 ]
  %ss_divider_index.i = getelementptr [5 x %struct.sumo_pl], ptr %11, i32 0, i32 %i.0250.i, i32 3
  %72 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i230.i, ptr %ss_divider_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %67)
  %cmp1.i231.i = icmp ult i32 %67, 800
  br i1 %cmp1.i231.i, label %sumo_get_sleep_divider_id_from_clock.exit.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, label %if.end.i235.i

sumo_get_sleep_divider_id_from_clock.exit.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge: ; preds = %sumo_get_sleep_divider_id_from_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

if.end.i235.i:                                    ; preds = %sumo_get_sleep_divider_id_from_clock.exit.i
  %73 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i233.i = getelementptr inbounds %struct.sumo_power_info, ptr %74, i32 0, i32 22
  %75 = ptrtoint ptr %enable_sclk_ds.i233.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enable_sclk_ds.i233.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i234.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i234.i, label %if.end.i235.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, label %for.cond.i242.i

if.end.i235.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge: ; preds = %if.end.i235.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

for.cond.i242.i:                                  ; preds = %if.end.i235.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25599, i32 %67)
  %cmp5.not.i238.i = icmp ugt i32 %67, 25599
  br i1 %cmp5.not.i238.i, label %for.cond.i242.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, label %for.cond.i242.i.1

for.cond.i242.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge: ; preds = %for.cond.i242.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

for.cond.i242.i.1:                                ; preds = %for.cond.i242.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12799, i32 %67)
  %cmp5.not.i238.i.1 = icmp ugt i32 %67, 12799
  br i1 %cmp5.not.i238.i.1, label %for.cond.i242.i.1.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, label %for.cond.i242.i.2

for.cond.i242.i.1.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge: ; preds = %for.cond.i242.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

for.cond.i242.i.2:                                ; preds = %for.cond.i242.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6399, i32 %67)
  %cmp5.not.i238.i.2 = icmp ugt i32 %67, 6399
  br i1 %cmp5.not.i238.i.2, label %for.cond.i242.i.2.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, label %for.cond.i242.i.3

for.cond.i242.i.2.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge: ; preds = %for.cond.i242.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

for.cond.i242.i.3:                                ; preds = %for.cond.i242.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3199, i32 %67)
  %cmp5.not.i238.i.3 = icmp ugt i32 %67, 3199
  br i1 %cmp5.not.i238.i.3, label %for.cond.i242.i.3.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, label %for.cond.i242.i.4

for.cond.i242.i.3.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge: ; preds = %for.cond.i242.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

for.cond.i242.i.4:                                ; preds = %for.cond.i242.i.3
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1599, i32 %67)
  %cmp5.not.i238.i.4 = icmp ugt i32 %67, 1599
  %spec.select18 = select i1 %cmp5.not.i238.i.4, i32 1, i32 0
  br label %sumo_get_sleep_divider_id_from_clock.exit244.i

sumo_get_sleep_divider_id_from_clock.exit244.i:   ; preds = %for.cond.i242.i.4, %for.cond.i242.i.3.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, %for.cond.i242.i.2.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, %for.cond.i242.i.1.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, %for.cond.i242.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, %if.end.i235.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge, %sumo_get_sleep_divider_id_from_clock.exit.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge
  %retval.0.i243.i = phi i32 [ 0, %sumo_get_sleep_divider_id_from_clock.exit.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge ], [ 0, %if.end.i235.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge ], [ 5, %for.cond.i242.i.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge ], [ 4, %for.cond.i242.i.1.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge ], [ 3, %for.cond.i242.i.2.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge ], [ 2, %for.cond.i242.i.3.sumo_get_sleep_divider_id_from_clock.exit244.i_crit_edge ], [ %spec.select18, %for.cond.i242.i.4 ]
  %ds_divider_index.i = getelementptr [5 x %struct.sumo_pl], ptr %11, i32 0, i32 %i.0250.i, i32 2
  %add.i = add nsw i32 %retval.0.i230.i, 1
  %77 = tail call i32 @llvm.umin.i32(i32 %retval.0.i243.i, i32 %add.i) #15
  %78 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %ds_divider_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i230.i, i32 %77)
  %cmp77.i = icmp eq i32 %retval.0.i230.i, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i230.i)
  %cmp82.i = icmp ugt i32 %retval.0.i230.i, 1
  %or.cond222.i = and i1 %cmp82.i, %cmp77.i
  br i1 %or.cond222.i, label %if.end91.thread.i, label %if.end91.i

if.end91.thread.i:                                ; preds = %sumo_get_sleep_divider_id_from_clock.exit244.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add nsw i32 %retval.0.i230.i, -1
  %79 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub.i, ptr %ss_divider_index.i, align 4
  br label %if.end100.i

if.end91.i:                                       ; preds = %sumo_get_sleep_divider_id_from_clock.exit244.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i230.i)
  %cmp95.i = icmp eq i32 %retval.0.i230.i, 0
  br i1 %cmp95.i, label %if.end100.thread.i, label %if.end91.i.if.end100.i_crit_edge

if.end91.i.if.end100.i_crit_edge:                 ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100.i

if.end100.thread.i:                               ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %ds_divider_index.i, align 4
  br label %if.then105.i

if.end100.i:                                      ; preds = %if.end91.i.if.end100.i_crit_edge, %if.end91.thread.i
  %81 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr246.i = load i32, ptr %ds_divider_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr246.i)
  %cmp104.i = icmp eq i32 %.pr246.i, 0
  br i1 %cmp104.i, label %if.end100.i.if.then105.i_crit_edge, label %if.end100.i.if.end109.i_crit_edge

if.end100.i.if.end109.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109.i

if.end100.i.if.then105.i_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then105.i

if.then105.i:                                     ; preds = %if.end100.i.if.then105.i_crit_edge, %if.end100.thread.i
  %82 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %ss_divider_index.i, align 4
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then105.i, %if.end100.i.if.end109.i_crit_edge
  %83 = ptrtoint ptr %flags110.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags110.i, align 4
  %and111.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.else.i, label %if.then113.i

if.then113.i:                                     ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #17
  %allow_gnb_slow.i = getelementptr [5 x %struct.sumo_pl], ptr %11, i32 0, i32 %i.0250.i, i32 4
  %85 = ptrtoint ptr %allow_gnb_slow.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %allow_gnb_slow.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end109.i
  %86 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %class.i, align 4
  %and117.i = and i32 %87, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %lor.lhs.false119.i, label %if.else.i.if.then122.i_crit_edge

if.else.i.if.then122.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then122.i

lor.lhs.false119.i:                               ; preds = %if.else.i
  %88 = ptrtoint ptr %class2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %class2.i, align 4
  %and120.i = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %if.else126.i, label %lor.lhs.false119.i.if.then122.i_crit_edge

lor.lhs.false119.i.if.then122.i_crit_edge:        ; preds = %lor.lhs.false119.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then122.i

if.then122.i:                                     ; preds = %lor.lhs.false119.i.if.then122.i_crit_edge, %if.else.i.if.then122.i_crit_edge
  %allow_gnb_slow125.i = getelementptr [5 x %struct.sumo_pl], ptr %11, i32 0, i32 %i.0250.i, i32 4
  %90 = ptrtoint ptr %allow_gnb_slow125.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %allow_gnb_slow125.i, align 4
  br label %for.inc.i

if.else126.i:                                     ; preds = %lor.lhs.false119.i
  %91 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_levels.i, align 4
  %sub128.i = add i32 %92, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0250.i, i32 %sub128.i)
  %cmp129.i = icmp eq i32 %i.0250.i, %sub128.i
  %allow_gnb_slow133.i = getelementptr [5 x %struct.sumo_pl], ptr %11, i32 0, i32 %i.0250.i, i32 4
  br i1 %cmp129.i, label %if.then130.i, label %if.else134.i

if.then130.i:                                     ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %allow_gnb_slow133.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %allow_gnb_slow133.i, align 4
  br label %for.inc.i

if.else134.i:                                     ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %allow_gnb_slow133.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %allow_gnb_slow133.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else134.i, %if.then130.i, %if.then122.i, %if.then113.i
  %inc.i = add nuw i32 %i.0250.i, 1
  %95 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_levels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %96
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.end27.i.if.end_crit_edge, %if.then79.i.i, %if.end74.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %r.i = alloca [5 x i32], align 4
  %l.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29
  %enable_dpm = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_dpm, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %ps_priv.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %4 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv.i.i, align 4
  %ps_priv.i22.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %6 = ptrtoint ptr %ps_priv.i22.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps_priv.i22.i, align 4
  %vclk.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 3
  %8 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk.i, align 4
  %vclk2.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 3
  %10 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.i = icmp eq i32 %9, %11
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %dclk.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 4
  %12 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dclk.i, align 4
  %dclk3.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 4
  %14 = ptrtoint ptr %dclk3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp4.i = icmp eq i32 %13, %15
  br i1 %cmp4.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %num_levels.i = getelementptr inbounds %struct.sumo_ps, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_levels.i, align 4
  %sub.i = add i32 %17, -1
  %arrayidx.i = getelementptr [5 x %struct.sumo_pl], ptr %5, i32 0, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %num_levels6.i = getelementptr inbounds %struct.sumo_ps, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %num_levels6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_levels6.i, align 4
  %sub7.i = add i32 %21, -1
  %arrayidx8.i = getelementptr [5 x %struct.sumo_pl], ptr %7, i32 0, i32 %sub7.i
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp10.not.i = icmp ult i32 %19, %23
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @sumo_setup_uvd_clocks(ptr noundef %rdev, ptr noundef %requested_rps) #15
  br label %if.end

if.end:                                           ; preds = %if.end12.i, %if.end.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %enable_boost = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 26
  %24 = ptrtoint ptr %enable_boost to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_boost, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool1.not = icmp eq i8 %25, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void @sumo_boost_state_enable(ptr noundef %rdev, i1 noundef zeroext false) #15
  %ps_priv.i.i56 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %26 = ptrtoint ptr %ps_priv.i.i56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps_priv.i.i56, align 4
  %flags.i = getelementptr inbounds %struct.sumo_ps, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then2.if.end3_crit_edge, label %if.then.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i, align 4
  %boost_pl.i = getelementptr inbounds %struct.sumo_power_info, ptr %31, i32 0, i32 14
  %num_levels.i57 = getelementptr inbounds %struct.sumo_ps, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %num_levels.i57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_levels.i57, align 4
  %sub.i58 = add i32 %33, -1
  %arrayidx.i59 = getelementptr [5 x %struct.sumo_pl], ptr %27, i32 0, i32 %sub.i58
  %34 = call ptr @memcpy(ptr %boost_pl.i, ptr %arrayidx.i59, i32 20)
  %boost_sclk.i = getelementptr inbounds %struct.sumo_power_info, ptr %31, i32 0, i32 11, i32 17
  %35 = ptrtoint ptr %boost_sclk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %boost_sclk.i, align 4
  %37 = ptrtoint ptr %boost_pl.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %boost_pl.i, align 4
  %boost_vid_2bit.i = getelementptr inbounds %struct.sumo_power_info, ptr %31, i32 0, i32 11, i32 18
  %38 = ptrtoint ptr %boost_vid_2bit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %boost_vid_2bit.i, align 4
  %vddc_index.i = getelementptr inbounds %struct.sumo_power_info, ptr %31, i32 0, i32 14, i32 1
  %40 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %vddc_index.i, align 4
  %sclk_dpm_tdp_limit_boost.i = getelementptr inbounds %struct.sumo_power_info, ptr %31, i32 0, i32 11, i32 16
  %41 = ptrtoint ptr %sclk_dpm_tdp_limit_boost.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sclk_dpm_tdp_limit_boost.i, align 4
  %sclk_dpm_tdp_limit.i = getelementptr inbounds %struct.sumo_power_info, ptr %31, i32 0, i32 14, i32 5
  %43 = ptrtoint ptr %sclk_dpm_tdp_limit.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %sclk_dpm_tdp_limit.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then.i, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %44 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enable_dpm, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool5.not = icmp eq i8 %45, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  %ps_priv.i.i61 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %46 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ps_priv.i.i61, align 4
  %ps_priv.i11.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %48 = ptrtoint ptr %ps_priv.i11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ps_priv.i11.i, align 4
  %cmp.not.i = icmp eq ptr %49, null
  br i1 %cmp.not.i, label %if.then6.sumo_pre_notify_alt_vddnb_change.exit_crit_edge, label %if.then.i65

if.then6.sumo_pre_notify_alt_vddnb_change.exit_crit_edge: ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_pre_notify_alt_vddnb_change.exit

if.then.i65:                                      ; preds = %if.then6
  %flags.i62 = getelementptr inbounds %struct.sumo_ps, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %flags.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i62, align 4
  %and.i63 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i64 = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i64, label %if.then.i65.sumo_pre_notify_alt_vddnb_change.exit_crit_edge, label %land.lhs.true.i66

if.then.i65.sumo_pre_notify_alt_vddnb_change.exit_crit_edge: ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_pre_notify_alt_vddnb_change.exit

land.lhs.true.i66:                                ; preds = %if.then.i65
  %flags2.i = getelementptr inbounds %struct.sumo_ps, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags2.i, align 4
  %and3.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp7.i = icmp eq i32 %and3.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %land.lhs.true.i66.sumo_pre_notify_alt_vddnb_change.exit_crit_edge

land.lhs.true.i66.sumo_pre_notify_alt_vddnb_change.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_pre_notify_alt_vddnb_change.exit

if.then8.i:                                       ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_smu_notify_alt_vddnb_change(ptr noundef %rdev, i1 noundef zeroext false, i1 noundef zeroext false) #15
  br label %sumo_pre_notify_alt_vddnb_change.exit

sumo_pre_notify_alt_vddnb_change.exit:            ; preds = %if.then8.i, %land.lhs.true.i66.sumo_pre_notify_alt_vddnb_change.exit_crit_edge, %if.then.i65.sumo_pre_notify_alt_vddnb_change.exit_crit_edge, %if.then6.sumo_pre_notify_alt_vddnb_change.exit_crit_edge
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %54 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 1668
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %57 = or i32 %56, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %58 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i92.i.i = getelementptr i8, ptr %59, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i.i, i32 %57) #15, !srcloc !44
  %60 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i68 = getelementptr i8, ptr %61, i32 1760
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i68) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %63 = and i32 %62, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %64 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %65, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %63) #15, !srcloc !44
  %66 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i70 = getelementptr i8, ptr %67, i32 1760
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i70) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %69 = or i32 %68, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %70 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %71, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %69) #15, !srcloc !44
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %72 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp4.i71 = icmp sgt i32 %73, 0
  br i1 %cmp4.i71, label %sumo_pre_notify_alt_vddnb_change.exit.for.body.i_crit_edge, label %sumo_pre_notify_alt_vddnb_change.exit.sumo_wait_for_level_0.exit_crit_edge

sumo_pre_notify_alt_vddnb_change.exit.sumo_wait_for_level_0.exit_crit_edge: ; preds = %sumo_pre_notify_alt_vddnb_change.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

sumo_pre_notify_alt_vddnb_change.exit.for.body.i_crit_edge: ; preds = %sumo_pre_notify_alt_vddnb_change.exit
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i74.for.body.i_crit_edge, %sumo_pre_notify_alt_vddnb_change.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i74.for.body.i_crit_edge ], [ 0, %sumo_pre_notify_alt_vddnb_change.exit.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 1540
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %77 = and i32 %76, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i72 = icmp eq i32 %77, 0
  br i1 %tobool.not.i72, label %if.end.i74, label %sumo_set_forced_mode_enabled.exitthread-pre-split

if.end.i74:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #15
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %79 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i73 = icmp slt i32 %inc.i, %80
  br i1 %cmp.i73, label %if.end.i74.for.body.i_crit_edge, label %if.end.i74.sumo_set_forced_mode_enabled.exit_crit_edge

if.end.i74.sumo_set_forced_mode_enabled.exit_crit_edge: ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit

if.end.i74.for.body.i_crit_edge:                  ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

sumo_set_forced_mode_enabled.exitthread-pre-split: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %81 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr = load i32, ptr %usec_timeout.i, align 4
  br label %sumo_set_forced_mode_enabled.exit

sumo_set_forced_mode_enabled.exit:                ; preds = %sumo_set_forced_mode_enabled.exitthread-pre-split, %if.end.i74.sumo_set_forced_mode_enabled.exit_crit_edge
  %82 = phi i32 [ %.pr, %sumo_set_forced_mode_enabled.exitthread-pre-split ], [ %80, %if.end.i74.sumo_set_forced_mode_enabled.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp24.i = icmp sgt i32 %82, 0
  br i1 %cmp24.i, label %sumo_set_forced_mode_enabled.exit.for.body.i77_crit_edge, label %sumo_set_forced_mode_enabled.exit.sumo_wait_for_level_0.exit_crit_edge

sumo_set_forced_mode_enabled.exit.sumo_wait_for_level_0.exit_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

sumo_set_forced_mode_enabled.exit.for.body.i77_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit
  br label %for.body.i77

for.body.i77:                                     ; preds = %if.end.i80.for.body.i77_crit_edge, %sumo_set_forced_mode_enabled.exit.for.body.i77_crit_edge
  %i.025.i = phi i32 [ %inc.i78, %if.end.i80.for.body.i77_crit_edge ], [ 0, %sumo_set_forced_mode_enabled.exit.for.body.i77_crit_edge ]
  %83 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %84, i32 1644
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %86 = and i32 %85, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp1.i = icmp eq i32 %86, 0
  br i1 %cmp1.i, label %for.endthread-pre-split.i, label %if.end.i80

if.end.i80:                                       ; preds = %for.body.i77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #15
  %inc.i78 = add nuw nsw i32 %i.025.i, 1
  %88 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i79 = icmp slt i32 %inc.i78, %89
  br i1 %cmp.i79, label %if.end.i80.for.body.i77_crit_edge, label %if.end.i80.for.end.i_crit_edge

if.end.i80.for.end.i_crit_edge:                   ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end.i80.for.body.i77_crit_edge:                ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i77

for.endthread-pre-split.i:                        ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr.i = load i32, ptr %usec_timeout.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.end.i80.for.end.i_crit_edge
  %91 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %89, %if.end.i80.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp426.i = icmp sgt i32 %91, 0
  br i1 %cmp426.i, label %for.end.i.for.body5.i_crit_edge, label %for.end.i.sumo_wait_for_level_0.exit_crit_edge

for.end.i.sumo_wait_for_level_0.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

for.end.i.for.body5.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %if.end10.i.for.body5.i_crit_edge, %for.end.i.for.body5.i_crit_edge
  %i.127.i = phi i32 [ %inc12.i, %if.end10.i.for.body5.i_crit_edge ], [ 0, %for.end.i.for.body5.i_crit_edge ]
  %92 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %93, i32 1644
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %95 = and i32 %94, 8389376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp8.i = icmp eq i32 %95, 0
  br i1 %cmp8.i, label %for.body5.i.sumo_wait_for_level_0.exit_crit_edge, label %if.end10.i

for.body5.i.sumo_wait_for_level_0.exit_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end10.i:                                       ; preds = %for.body5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748) #15
  %inc12.i = add nuw nsw i32 %i.127.i, 1
  %97 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %usec_timeout.i, align 4
  %cmp4.i81 = icmp slt i32 %inc12.i, %98
  br i1 %cmp4.i81, label %if.end10.i.for.body5.i_crit_edge, label %if.end10.i.sumo_wait_for_level_0.exit_crit_edge

if.end10.i.sumo_wait_for_level_0.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_wait_for_level_0.exit

if.end10.i.for.body5.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

sumo_wait_for_level_0.exit:                       ; preds = %if.end10.i.sumo_wait_for_level_0.exit_crit_edge, %for.body5.i.sumo_wait_for_level_0.exit_crit_edge, %for.end.i.sumo_wait_for_level_0.exit_crit_edge, %sumo_set_forced_mode_enabled.exit.sumo_wait_for_level_0.exit_crit_edge, %sumo_pre_notify_alt_vddnb_change.exit.sumo_wait_for_level_0.exit_crit_edge
  %99 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv.i, align 4
  %101 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ps_priv.i.i61, align 4
  %103 = ptrtoint ptr %ps_priv.i11.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ps_priv.i11.i, align 4
  %cmp.i84 = icmp eq ptr %104, null
  br i1 %cmp.i84, label %sumo_wait_for_level_0.exit.cond.end.i_crit_edge, label %cond.false.i

sumo_wait_for_level_0.exit.cond.end.i_crit_edge:  ; preds = %sumo_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.false.i:                                     ; preds = %sumo_wait_for_level_0.exit
  call void @__sanitizer_cov_trace_pc() #17
  %num_levels.i85 = getelementptr inbounds %struct.sumo_ps, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %num_levels.i85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_levels.i85, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %sumo_wait_for_level_0.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %106, %cond.false.i ], [ 1, %sumo_wait_for_level_0.exit.cond.end.i_crit_edge ]
  %num_levels3.i = getelementptr inbounds %struct.sumo_ps, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %num_levels3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_levels3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp428.not.i = icmp eq i32 %108, 0
  br i1 %cmp428.not.i, label %cond.end.i.for.cond6.preheader.i_crit_edge, label %cond.end.i.for.body.i89_crit_edge

cond.end.i.for.body.i89_crit_edge:                ; preds = %cond.end.i
  br label %for.body.i89

cond.end.i.for.cond6.preheader.i_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.preheader.i

for.cond6.preheader.i:                            ; preds = %for.body.i89.for.cond6.preheader.i_crit_edge, %cond.end.i.for.cond6.preheader.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %cond.end.i.for.cond6.preheader.i_crit_edge ], [ %110, %for.body.i89.for.cond6.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %cond.i)
  %cmp730.i = icmp ult i32 %.lcssa.i, %cond.i
  br i1 %cmp730.i, label %for.cond6.preheader.i.for.body8.i_crit_edge, label %for.cond6.preheader.i.for.end11.i_crit_edge

for.cond6.preheader.i.for.end11.i_crit_edge:      ; preds = %for.cond6.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end11.i

for.cond6.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond6.preheader.i
  br label %for.body8.i

for.body.i89:                                     ; preds = %for.body.i89.for.body.i89_crit_edge, %cond.end.i.for.body.i89_crit_edge
  %i.029.i = phi i32 [ %inc.i87, %for.body.i89.for.body.i89_crit_edge ], [ 0, %cond.end.i.for.body.i89_crit_edge ]
  %arrayidx.i86 = getelementptr [5 x %struct.sumo_pl], ptr %102, i32 0, i32 %i.029.i
  tail call fastcc void @sumo_program_power_level(ptr noundef %rdev, ptr noundef %arrayidx.i86, i32 noundef %i.029.i) #15
  tail call fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %i.029.i, i1 noundef zeroext true) #15
  %inc.i87 = add nuw i32 %i.029.i, 1
  %109 = ptrtoint ptr %num_levels3.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %num_levels3.i, align 4
  %cmp4.i88 = icmp ult i32 %inc.i87, %110
  br i1 %cmp4.i88, label %for.body.i89.for.body.i89_crit_edge, label %for.body.i89.for.cond6.preheader.i_crit_edge

for.body.i89.for.cond6.preheader.i_crit_edge:     ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond6.preheader.i

for.body.i89.for.body.i89_crit_edge:              ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i89

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.cond6.preheader.i.for.body8.i_crit_edge
  %i.131.i = phi i32 [ %inc10.i, %for.body8.i.for.body8.i_crit_edge ], [ %.lcssa.i, %for.cond6.preheader.i.for.body8.i_crit_edge ]
  tail call fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %i.131.i, i1 noundef zeroext false) #15
  %inc10.i = add i32 %i.131.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, %cond.i
  br i1 %exitcond.not.i, label %for.body8.i.for.end11.i_crit_edge, label %for.body8.i.for.body8.i_crit_edge

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body8.i

for.body8.i.for.end11.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end11.i

for.end11.i:                                      ; preds = %for.body8.i.for.end11.i_crit_edge, %for.cond6.preheader.i.for.end11.i_crit_edge
  %flags.i90 = getelementptr inbounds %struct.sumo_ps, ptr %102, i32 0, i32 2
  %111 = ptrtoint ptr %flags.i90 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i90, align 4
  %and.i91 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %for.end11.i.sumo_program_power_levels_0_to_n.exit_crit_edge, label %if.then.i94

for.end11.i.sumo_program_power_levels_0_to_n.exit_crit_edge: ; preds = %for.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_program_power_levels_0_to_n.exit

if.then.i94:                                      ; preds = %for.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %boost_pl.i93 = getelementptr inbounds %struct.sumo_power_info, ptr %100, i32 0, i32 14
  tail call fastcc void @sumo_program_power_level(ptr noundef %rdev, ptr noundef %boost_pl.i93, i32 noundef 7) #15
  br label %sumo_program_power_levels_0_to_n.exit

sumo_program_power_levels_0_to_n.exit:            ; preds = %if.then.i94, %for.end11.i.sumo_program_power_levels_0_to_n.exit_crit_edge
  %113 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ps_priv.i.i61, align 4
  %115 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %116, i32 1820
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %118 = and i32 %117, 16777215
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #15
  %num_levels.i99 = getelementptr inbounds %struct.sumo_ps, ptr %114, i32 0, i32 1
  %120 = ptrtoint ptr %num_levels.i99 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_levels.i99, align 4
  %sub.i100 = add i32 %121, -1
  %shl.i = shl nuw i32 1, %sub.i100
  %or.i = or i32 %shl.i, %119
  %flags.i101 = getelementptr inbounds %struct.sumo_ps, ptr %114, i32 0, i32 2
  %122 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i101, align 4
  %and2.i = shl i32 %123, 6
  %124 = and i32 %and2.i, 128
  %125 = or i32 %or.i, %124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #15
  %127 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %128, i32 1820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %126) #15, !srcloc !44
  %129 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %priv.i, align 4
  %131 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ps_priv.i.i61, align 4
  %num_levels.i104 = getelementptr inbounds %struct.sumo_ps, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %num_levels.i104 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_levels.i104, align 4
  %sub.i105 = add i32 %134, -1
  %arrayidx.i106 = getelementptr [5 x %struct.sumo_pl], ptr %132, i32 0, i32 %sub.i105
  %flags.i107 = getelementptr inbounds %struct.sumo_ps, ptr %132, i32 0, i32 2
  %135 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags.i107, align 4
  %and.i108 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i108)
  %tobool.not.i109 = icmp eq i32 %and.i108, 0
  %boost_pl.i110 = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 14
  %spec.select.i = select i1 %tobool.not.i109, ptr %arrayidx.i106, ptr %boost_pl.i110
  %137 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %highest_engine_clock.0.i = load i32, ptr %spec.select.i, align 4
  %asic.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %138 = ptrtoint ptr %asic.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %asic.i.i, align 8
  %get_xclk.i.i = getelementptr inbounds %struct.radeon_asic, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %get_xclk.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %get_xclk.i.i, align 4
  %call1.i.i = tail call i32 %141(ptr noundef %rdev) #15
  %div.i.i = udiv i32 6553500, %highest_engine_clock.0.i
  %pasi.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 1
  %142 = ptrtoint ptr %pasi.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %div.i.i, ptr %pasi.i.i, align 4
  %143 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %div.i.i, ptr %130, align 4
  %bsp.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 2
  %bsu.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 3
  tail call void @r600_calculate_u_and_p(i32 noundef %div.i.i, i32 noundef %call1.i.i, i32 noundef 16, ptr noundef %bsp.i.i, ptr noundef %bsu.i.i) #15
  %144 = ptrtoint ptr %pasi.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %pasi.i.i, align 4
  %pbsp.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 4
  %pbsu.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 5
  tail call void @r600_calculate_u_and_p(i32 noundef %145, i32 noundef %call1.i.i, i32 noundef 16, ptr noundef %pbsp.i.i, ptr noundef %pbsu.i.i) #15
  %146 = ptrtoint ptr %bsp.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %bsp.i.i, align 4
  %148 = ptrtoint ptr %bsu.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bsu.i.i, align 4
  %shl7.i.i = shl i32 %149, 16
  %or.i.i = or i32 %shl7.i.i, %147
  %dsp.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 6
  %150 = ptrtoint ptr %dsp.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.i.i, ptr %dsp.i.i, align 4
  %151 = ptrtoint ptr %pbsp.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pbsp.i.i, align 4
  %153 = ptrtoint ptr %pbsu.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %pbsu.i.i, align 4
  %shl11.i.i = shl i32 %154, 16
  %or12.i.i = or i32 %shl11.i.i, %152
  %psp.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %130, i32 0, i32 7
  %155 = ptrtoint ptr %psp.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %or12.i.i, ptr %psp.i.i, align 4
  %156 = ptrtoint ptr %num_levels.i104 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %num_levels.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %157)
  %cmp42.not.i = icmp eq i32 %157, 1
  br i1 %cmp42.not.i, label %sumo_program_power_levels_0_to_n.exit.do.body.i33.i_crit_edge, label %for.body.lr.ph.i

sumo_program_power_levels_0_to_n.exit.do.body.i33.i_crit_edge: ; preds = %sumo_program_power_levels_0_to_n.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i33.i

for.body.lr.ph.i:                                 ; preds = %sumo_program_power_levels_0_to_n.exit
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  br label %for.body.i112

for.body.i112:                                    ; preds = %r100_mm_wreg.exit.i.for.body.i112_crit_edge, %for.body.lr.ph.i
  %i.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i114, %r100_mm_wreg.exit.i.for.body.i112_crit_edge ]
  %mul.i = shl i32 %i.043.i, 2
  %add.i = add i32 %mul.i, 1872
  %158 = ptrtoint ptr %dsp.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dsp.i.i, align 4
  %160 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %161, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %do.body.i.i, label %if.else.i.i

do.body.i.i:                                      ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %162 = tail call i32 @llvm.bswap.i32(i32 %159) #15
  %163 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %164, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113, i32 %162) #15, !srcloc !44
  br label %r100_mm_wreg.exit.i

if.else.i.i:                                      ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %159) #15
  br label %r100_mm_wreg.exit.i

r100_mm_wreg.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %inc.i114 = add nuw i32 %i.043.i, 1
  %165 = ptrtoint ptr %num_levels.i104 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_levels.i104, align 4
  %sub4.i = add i32 %166, -1
  %cmp.i115 = icmp ult i32 %inc.i114, %sub4.i
  br i1 %cmp.i115, label %r100_mm_wreg.exit.i.for.body.i112_crit_edge, label %for.end.i116

r100_mm_wreg.exit.i.for.body.i112_crit_edge:      ; preds = %r100_mm_wreg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i112

for.end.i116:                                     ; preds = %r100_mm_wreg.exit.i
  %phi.bo.i = shl i32 %inc.i114, 2
  %phi.bo44.i = add i32 %phi.bo.i, 1872
  %167 = ptrtoint ptr %psp.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %psp.i.i, align 4
  %169 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %phi.bo44.i)
  %cmp.i28.i = icmp ugt i32 %170, %phi.bo44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %phi.bo44.i)
  %cmp1.i29.i = icmp ult i32 %phi.bo44.i, 65536
  %or.cond.i30.i = or i1 %cmp1.i29.i, %cmp.i28.i
  br i1 %or.cond.i30.i, label %for.end.i116.do.body.i33.i_crit_edge, label %if.else.i34.i

for.end.i116.do.body.i33.i_crit_edge:             ; preds = %for.end.i116
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i33.i

do.body.i33.i:                                    ; preds = %for.end.i116.do.body.i33.i_crit_edge, %sumo_program_power_levels_0_to_n.exit.do.body.i33.i_crit_edge
  %171 = phi i32 [ %168, %for.end.i116.do.body.i33.i_crit_edge ], [ %or12.i.i, %sumo_program_power_levels_0_to_n.exit.do.body.i33.i_crit_edge ]
  %i.0.lcssa50.i = phi i32 [ %phi.bo44.i, %for.end.i116.do.body.i33.i_crit_edge ], [ 1872, %sumo_program_power_levels_0_to_n.exit.do.body.i33.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #15
  %173 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %174, i32 %i.0.lcssa50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %172) #15, !srcloc !44
  br label %r100_mm_wreg.exit35.i

if.else.i34.i:                                    ; preds = %for.end.i116
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %phi.bo44.i, i32 noundef %168) #15
  br label %r100_mm_wreg.exit35.i

r100_mm_wreg.exit35.i:                            ; preds = %if.else.i34.i, %do.body.i33.i
  %175 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %flags.i107, align 4
  %and8.i = and i32 %176, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %r100_mm_wreg.exit35.i.sumo_program_bsp.exit_crit_edge, label %if.then10.i

r100_mm_wreg.exit35.i.sumo_program_bsp.exit_crit_edge: ; preds = %r100_mm_wreg.exit35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_program_bsp.exit

if.then10.i:                                      ; preds = %r100_mm_wreg.exit35.i
  call void @__sanitizer_cov_trace_pc() #17
  %177 = ptrtoint ptr %psp.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %psp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #15
  %180 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %181, i32 1900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39.i, i32 %179) #15, !srcloc !44
  br label %sumo_program_bsp.exit

sumo_program_bsp.exit:                            ; preds = %if.then10.i, %r100_mm_wreg.exit35.i.sumo_program_bsp.exit_crit_edge
  %182 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %priv.i, align 4
  %184 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ps_priv.i.i61, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %r.i) #15
  %186 = getelementptr inbounds [5 x i32], ptr %r.i, i32 0, i32 1
  %187 = getelementptr inbounds [5 x i32], ptr %r.i, i32 0, i32 2
  %188 = getelementptr inbounds [5 x i32], ptr %r.i, i32 0, i32 3
  %189 = getelementptr inbounds [5 x i32], ptr %r.i, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %l.i) #15
  %190 = getelementptr inbounds [5 x i32], ptr %l.i, i32 0, i32 1
  %191 = getelementptr inbounds [5 x i32], ptr %l.i, i32 0, i32 2
  %192 = getelementptr inbounds [5 x i32], ptr %l.i, i32 0, i32 3
  %193 = getelementptr inbounds [5 x i32], ptr %l.i, i32 0, i32 4
  %194 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 70, ptr %r.i, align 4
  %195 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 70, ptr %186, align 4
  %196 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 70, ptr %187, align 4
  %197 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 70, ptr %188, align 4
  %198 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 100, ptr %189, align 4
  %199 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %l.i, align 4
  %200 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 20, ptr %190, align 4
  %201 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 20, ptr %191, align 4
  %202 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 20, ptr %192, align 4
  %203 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 20, ptr %193, align 4
  %num_levels.i120 = getelementptr inbounds %struct.sumo_ps, ptr %185, i32 0, i32 1
  %204 = ptrtoint ptr %num_levels.i120 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %num_levels.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp60.not.i = icmp eq i32 %205, 0
  br i1 %cmp60.not.i, label %sumo_program_bsp.exit.for.end.i134_crit_edge, label %for.body.lr.ph.i121

sumo_program_bsp.exit.for.end.i134_crit_edge:     ; preds = %sumo_program_bsp.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i134

for.body.lr.ph.i121:                              ; preds = %sumo_program_bsp.exit
  %pasi.i = getelementptr inbounds %struct.sumo_power_info, ptr %183, i32 0, i32 1
  br label %for.body.i128

for.body.i128:                                    ; preds = %sumo_write_at.exit.for.body.i128_crit_edge, %for.body.lr.ph.i121
  %206 = phi i32 [ %205, %for.body.lr.ph.i121 ], [ %240, %sumo_write_at.exit.for.body.i128_crit_edge ]
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i121 ], [ %inc.i126, %sumo_write_at.exit.for.body.i128_crit_edge ]
  %sub.i122 = add i32 %206, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.061.i, i32 %sub.i122)
  %cmp12.i = icmp eq i32 %i.061.i, %sub.i122
  %cond.in.i = select i1 %cmp12.i, ptr %pasi.i, ptr %183
  %207 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %cond.i123 = load i32, ptr %cond.in.i, align 4
  %arrayidx14.i = getelementptr [5 x %struct.sumo_pl], ptr %185, i32 0, i32 %i.061.i
  %208 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx14.i, align 4
  %mul.i124 = mul i32 %209, %cond.i123
  %div.i = udiv i32 %mul.i124, 100
  %arrayidx15.i = getelementptr [5 x i32], ptr %r.i, i32 0, i32 %i.061.i
  %210 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx15.i, align 4
  %mul16.i = mul i32 %div.i, %211
  %div17.i = udiv i32 %mul16.i, 100
  %arrayidx18.i = getelementptr [5 x i32], ptr %l.i, i32 0, i32 %i.061.i
  %212 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx18.i, align 4
  %mul19.i = mul i32 %div.i, %213
  %div20.i = udiv i32 %mul19.i, 100
  %shl21.i = shl i32 %div20.i, 16
  %or.i125 = or i32 %shl21.i, %div17.i
  %214 = zext i32 %i.061.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %214, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.061.i, label %for.body.i128.sumo_write_at.exit_crit_edge [
    i32 0, label %if.then.i196
    i32 1, label %if.then2.i
    i32 2, label %if.then5.i
    i32 3, label %if.then8.i197
    i32 4, label %if.then11.i
    i32 5, label %if.then14.i
    i32 6, label %if.then17.i
    i32 7, label %if.then20.i
  ]

for.body.i128.sumo_write_at.exit_crit_edge:       ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_write_at.exit

if.then.i196:                                     ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %215 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %216 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i195 = getelementptr i8, ptr %217, i32 1832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i195, i32 %215) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then2.i:                                       ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %218 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %219 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %220, i32 1836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.i, i32 %218) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then5.i:                                       ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %221 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %222 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i56.i = getelementptr i8, ptr %223, i32 1840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i, i32 %221) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then8.i197:                                    ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %224 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %225 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %226, i32 1848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %224) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then11.i:                                      ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %227 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %228 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %229, i32 1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 %227) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then14.i:                                      ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %230 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %231 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %232, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %230) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then17.i:                                      ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %233 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %234 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %235, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %233) #15, !srcloc !44
  br label %sumo_write_at.exit

if.then20.i:                                      ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %236 = tail call i32 @llvm.bswap.i32(i32 %or.i125) #15
  %237 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %238, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 %236) #15, !srcloc !44
  br label %sumo_write_at.exit

sumo_write_at.exit:                               ; preds = %if.then20.i, %if.then17.i, %if.then14.i, %if.then11.i, %if.then8.i197, %if.then5.i, %if.then2.i, %if.then.i196, %for.body.i128.sumo_write_at.exit_crit_edge
  %inc.i126 = add nuw i32 %i.061.i, 1
  %239 = ptrtoint ptr %num_levels.i120 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %num_levels.i120, align 4
  %cmp.i127 = icmp ult i32 %inc.i126, %240
  br i1 %cmp.i127, label %sumo_write_at.exit.for.body.i128_crit_edge, label %for.end.loopexit.i

sumo_write_at.exit.for.body.i128_crit_edge:       ; preds = %sumo_write_at.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i128

for.end.loopexit.i:                               ; preds = %sumo_write_at.exit
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo.i129 = add i32 %240, -1
  br label %for.end.i134

for.end.i134:                                     ; preds = %for.end.loopexit.i, %sumo_program_bsp.exit.for.end.i134_crit_edge
  %.lcssa.i130 = phi i32 [ -1, %sumo_program_bsp.exit.for.end.i134_crit_edge ], [ %phi.bo.i129, %for.end.loopexit.i ]
  %flags.i131 = getelementptr inbounds %struct.sumo_ps, ptr %185, i32 0, i32 2
  %241 = ptrtoint ptr %flags.i131 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %flags.i131, align 4
  %and.i132 = and i32 %242, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i132)
  %tobool.not.i133 = icmp eq i32 %and.i132, 0
  br i1 %tobool.not.i133, label %for.end.i134.sumo_program_at.exit_crit_edge, label %if.then.i136

for.end.i134.sumo_program_at.exit_crit_edge:      ; preds = %for.end.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_program_at.exit

if.then.i136:                                     ; preds = %for.end.i134
  call void @__sanitizer_cov_trace_pc() #17
  %pasi22.i = getelementptr inbounds %struct.sumo_power_info, ptr %183, i32 0, i32 1
  %243 = ptrtoint ptr %pasi22.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %pasi22.i, align 4
  %boost_pl.i135 = getelementptr inbounds %struct.sumo_power_info, ptr %183, i32 0, i32 14
  %245 = ptrtoint ptr %boost_pl.i135 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %boost_pl.i135, align 4
  %mul24.i = mul i32 %246, %244
  %div25.i = udiv i32 %mul24.i, 100
  %arrayidx28.i = getelementptr [5 x i32], ptr %r.i, i32 0, i32 %.lcssa.i130
  %247 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx28.i, align 4
  %mul29.i = mul i32 %div25.i, %248
  %div30.i = udiv i32 %mul29.i, 100
  %arrayidx34.i = getelementptr [5 x i32], ptr %l.i, i32 0, i32 %.lcssa.i130
  %249 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx34.i, align 4
  %mul35.i = mul i32 %div25.i, %250
  %div36.i = udiv i32 %mul35.i, 100
  %shl37.i = shl i32 %div36.i, 16
  %or38.i = or i32 %shl37.i, %div30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %251 = tail call i32 @llvm.bswap.i32(i32 %or38.i) #15
  %252 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i76.i.i = getelementptr i8, ptr %253, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i.i, i32 %251) #15, !srcloc !44
  br label %sumo_program_at.exit

sumo_program_at.exit:                             ; preds = %if.then.i136, %for.end.i134.sumo_program_at.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %l.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %r.i) #15
  %254 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %priv.i, align 4
  %driver_nbps_policy_disable.i = getelementptr inbounds %struct.sumo_power_info, ptr %255, i32 0, i32 16
  %256 = ptrtoint ptr %driver_nbps_policy_disable.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %driver_nbps_policy_disable.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool.not.i139 = icmp eq i8 %257, 0
  br i1 %tobool.not.i139, label %if.then.i143, label %sumo_program_at.exit.sumo_force_nbp_state.exit_crit_edge

sumo_program_at.exit.sumo_force_nbp_state.exit_crit_edge: ; preds = %sumo_program_at.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_force_nbp_state.exit

if.then.i143:                                     ; preds = %sumo_program_at.exit
  %258 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ps_priv.i.i61, align 4
  %flags.i141 = getelementptr inbounds %struct.sumo_ps, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %flags.i141 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %flags.i141, align 4
  %and.i142 = and i32 %261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool2.not.i = icmp eq i32 %and.i142, 0
  %262 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %263, i32 1760
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %tobool2.not.i, label %do.body6.i, label %do.body.i

do.body.i:                                        ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #17
  %265 = or i32 %264, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %266 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %267, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %265) #15, !srcloc !44
  br label %sumo_force_nbp_state.exit

do.body6.i:                                       ; preds = %if.then.i143
  call void @__sanitizer_cov_trace_pc() #17
  %268 = and i32 %264, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %269 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %270, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %268) #15, !srcloc !44
  br label %sumo_force_nbp_state.exit

sumo_force_nbp_state.exit:                        ; preds = %do.body6.i, %do.body.i, %sumo_program_at.exit.sumo_force_nbp_state.exit_crit_edge
  %271 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i145 = getelementptr i8, ptr %272, i32 1760
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i145) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %274 = and i32 %273, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %275 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %276, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %274) #15, !srcloc !44
  %277 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i147 = getelementptr i8, ptr %278, i32 1760
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i147) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %280 = or i32 %279, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %281 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i17.i.i148 = getelementptr i8, ptr %282, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i148, i32 %280) #15, !srcloc !44
  %283 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %cmp4.i150 = icmp sgt i32 %284, 0
  br i1 %cmp4.i150, label %sumo_force_nbp_state.exit.for.body.i154_crit_edge, label %sumo_force_nbp_state.exit.sumo_set_forced_mode_enabled.exit159_crit_edge

sumo_force_nbp_state.exit.sumo_set_forced_mode_enabled.exit159_crit_edge: ; preds = %sumo_force_nbp_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit159

sumo_force_nbp_state.exit.for.body.i154_crit_edge: ; preds = %sumo_force_nbp_state.exit
  br label %for.body.i154

for.body.i154:                                    ; preds = %if.end.i157.for.body.i154_crit_edge, %sumo_force_nbp_state.exit.for.body.i154_crit_edge
  %i.05.i151 = phi i32 [ %inc.i155, %if.end.i157.for.body.i154_crit_edge ], [ 0, %sumo_force_nbp_state.exit.for.body.i154_crit_edge ]
  %285 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i152 = getelementptr i8, ptr %286, i32 1540
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i152) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %288 = and i32 %287, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool.not.i153 = icmp eq i32 %288, 0
  br i1 %tobool.not.i153, label %if.end.i157, label %for.body.i154.sumo_set_forced_mode_enabled.exit159_crit_edge

for.body.i154.sumo_set_forced_mode_enabled.exit159_crit_edge: ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit159

if.end.i157:                                      ; preds = %for.body.i154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %289 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %289(i32 noundef 214748) #15
  %inc.i155 = add nuw nsw i32 %i.05.i151, 1
  %290 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i156 = icmp slt i32 %inc.i155, %291
  br i1 %cmp.i156, label %if.end.i157.for.body.i154_crit_edge, label %if.end.i157.sumo_set_forced_mode_enabled.exit159_crit_edge

if.end.i157.sumo_set_forced_mode_enabled.exit159_crit_edge: ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit159

if.end.i157.for.body.i154_crit_edge:              ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i154

sumo_set_forced_mode_enabled.exit159:             ; preds = %if.end.i157.sumo_set_forced_mode_enabled.exit159_crit_edge, %for.body.i154.sumo_set_forced_mode_enabled.exit159_crit_edge, %sumo_force_nbp_state.exit.sumo_set_forced_mode_enabled.exit159_crit_edge
  %292 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i161 = getelementptr i8, ptr %293, i32 1760
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i161) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %295 = and i32 %294, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %296 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i25.i.i162 = getelementptr i8, ptr %297, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i162, i32 %295) #15, !srcloc !44
  %298 = ptrtoint ptr %ps_priv.i.i61 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ps_priv.i.i61, align 4
  %300 = ptrtoint ptr %ps_priv.i11.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ps_priv.i11.i, align 4
  %cmp.not.i165 = icmp eq ptr %301, null
  br i1 %cmp.not.i165, label %sumo_set_forced_mode_enabled.exit159.land.lhs.true.i171_crit_edge, label %if.then.i168

sumo_set_forced_mode_enabled.exit159.land.lhs.true.i171_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit159
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i171

if.then.i168:                                     ; preds = %sumo_set_forced_mode_enabled.exit159
  %flags.i166 = getelementptr inbounds %struct.sumo_ps, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %flags.i166 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %flags.i166, align 4
  %and.i167 = and i32 %303, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.i = icmp eq i32 %and.i167, 0
  br i1 %tobool.i, label %if.then.i168.land.lhs.true.i171_crit_edge, label %if.then.i168.if.end7_crit_edge

if.then.i168.if.end7_crit_edge:                   ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then.i168.land.lhs.true.i171_crit_edge:        ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i171

land.lhs.true.i171:                               ; preds = %if.then.i168.land.lhs.true.i171_crit_edge, %sumo_set_forced_mode_enabled.exit159.land.lhs.true.i171_crit_edge
  %flags2.i169 = getelementptr inbounds %struct.sumo_ps, ptr %299, i32 0, i32 2
  %304 = ptrtoint ptr %flags2.i169 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %flags2.i169, align 4
  %and3.i170 = and i32 %305, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i170)
  %tobool4.not.i = icmp eq i32 %and3.i170, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i171.if.end7_crit_edge, label %if.then8.i172

land.lhs.true.i171.if.end7_crit_edge:             ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then8.i172:                                    ; preds = %land.lhs.true.i171
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_smu_notify_alt_vddnb_change(ptr noundef %rdev, i1 noundef zeroext true, i1 noundef zeroext true) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then8.i172, %land.lhs.true.i171.if.end7_crit_edge, %if.then.i168.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %306 = ptrtoint ptr %enable_boost to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %enable_boost, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool9.not = icmp eq i8 %307, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  %ps_priv.i.i173 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %308 = ptrtoint ptr %ps_priv.i.i173 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %ps_priv.i.i173, align 4
  %flags.i174 = getelementptr inbounds %struct.sumo_ps, ptr %309, i32 0, i32 2
  %310 = ptrtoint ptr %flags.i174 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %flags.i174, align 4
  %and.i175 = and i32 %311, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i175)
  %tobool1.not.i = icmp eq i32 %and.i175, 0
  br i1 %tobool1.not.i, label %if.then10.if.end11_crit_edge, label %if.end3.sink.split.i

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end3.sink.split.i:                             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_boost_state_enable(ptr noundef %rdev, i1 noundef zeroext true) #15
  br label %if.end11

if.end11:                                         ; preds = %if.end3.sink.split.i, %if.then10.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %312 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %enable_dpm, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool13.not = icmp eq i8 %313, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  %ps_priv.i.i177 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %314 = ptrtoint ptr %ps_priv.i.i177 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ps_priv.i.i177, align 4
  %ps_priv.i22.i178 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %316 = ptrtoint ptr %ps_priv.i22.i178 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %ps_priv.i22.i178, align 4
  %vclk.i179 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 3
  %318 = ptrtoint ptr %vclk.i179 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %vclk.i179, align 4
  %vclk2.i180 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 3
  %320 = ptrtoint ptr %vclk2.i180 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %vclk2.i180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %319, i32 %321)
  %cmp.i181 = icmp eq i32 %319, %321
  br i1 %cmp.i181, label %land.lhs.true.i185, label %if.then14.if.end.i192_crit_edge

if.then14.if.end.i192_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i192

land.lhs.true.i185:                               ; preds = %if.then14
  %dclk.i182 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 4
  %322 = ptrtoint ptr %dclk.i182 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %dclk.i182, align 4
  %dclk3.i183 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 4
  %324 = ptrtoint ptr %dclk3.i183 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %dclk3.i183, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %323, i32 %325)
  %cmp4.i184 = icmp eq i32 %323, %325
  br i1 %cmp4.i184, label %land.lhs.true.i185.if.end15_crit_edge, label %land.lhs.true.i185.if.end.i192_crit_edge

land.lhs.true.i185.if.end.i192_crit_edge:         ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i192

land.lhs.true.i185.if.end15_crit_edge:            ; preds = %land.lhs.true.i185
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end.i192:                                      ; preds = %land.lhs.true.i185.if.end.i192_crit_edge, %if.then14.if.end.i192_crit_edge
  %num_levels.i186 = getelementptr inbounds %struct.sumo_ps, ptr %315, i32 0, i32 1
  %326 = ptrtoint ptr %num_levels.i186 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %num_levels.i186, align 4
  %sub.i187 = add i32 %327, -1
  %arrayidx.i188 = getelementptr [5 x %struct.sumo_pl], ptr %315, i32 0, i32 %sub.i187
  %328 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx.i188, align 4
  %num_levels6.i189 = getelementptr inbounds %struct.sumo_ps, ptr %317, i32 0, i32 1
  %330 = ptrtoint ptr %num_levels6.i189 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %num_levels6.i189, align 4
  %sub7.i190 = add i32 %331, -1
  %arrayidx8.i191 = getelementptr [5 x %struct.sumo_pl], ptr %317, i32 0, i32 %sub7.i190
  %332 = ptrtoint ptr %arrayidx8.i191 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %arrayidx8.i191, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %329, i32 %333)
  %cmp10.i = icmp ult i32 %329, %333
  br i1 %cmp10.i, label %if.end.i192.if.end15_crit_edge, label %if.end12.i193

if.end.i192.if.end15_crit_edge:                   ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.end12.i193:                                    ; preds = %if.end.i192
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @sumo_setup_uvd_clocks(ptr noundef %rdev, ptr noundef %requested_rps) #15
  br label %if.end15

if.end15:                                         ; preds = %if.end12.i193, %if.end.i192.if.end15_crit_edge, %land.lhs.true.i185.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sumo_dpm_post_set_power_state(ptr nocapture noundef readonly %rdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %requested_rps = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29
  %ps_priv.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %2 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i.i, align 4
  %current_rps.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27
  %4 = call ptr @memcpy(ptr %current_rps.i, ptr %requested_rps, i32 40)
  %current_ps.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 28
  %5 = call ptr @memcpy(ptr %current_ps.i, ptr %3, i32 128)
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %6 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %current_ps.i, ptr %ps_priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_dpm_setup_asic(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %dividers.i = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void @sumo_initialize_m3_arb(ptr noundef %rdev) #15
  %call1 = tail call i32 @sumo_get_running_fw_version(ptr noundef %rdev) #15
  %fw_version = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %fw_version, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call1) #18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i) #15
  %5 = call ptr @memset(ptr %dividers.i, i32 255, i32 32)
  %acpi_pl.i = getelementptr inbounds %struct.sumo_power_info, ptr %4, i32 0, i32 12
  %6 = ptrtoint ptr %acpi_pl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %acpi_pl.i, align 4
  %call1.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %7, i1 noundef zeroext false, ptr noundef nonnull %dividers.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %entry.sumo_program_acpi_power_level.exit_crit_edge

entry.sumo_program_acpi_power_level.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_program_acpi_power_level.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 1804
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %11 = and i32 %10, -2130706433
  %12 = call i32 @llvm.bswap.i32(i32 %11) #15
  %13 = ptrtoint ptr %dividers.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dividers.i, align 4
  %and3.i = and i32 %14, 127
  %or.i = or i32 %and3.i, %12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %15 = call i32 @llvm.bswap.i32(i32 %or.i) #15
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %17, i32 1804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %15) #15, !srcloc !44
  %18 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %19, i32 1920
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %21 = and i32 %20, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %22 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %23, i32 1920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 %21) #15, !srcloc !44
  br label %sumo_program_acpi_power_level.exit

sumo_program_acpi_power_level.exit:               ; preds = %do.body.i, %entry.sumo_program_acpi_power_level.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i) #15
  %rmmio.i.i10 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i10, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %25, i32 1596
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i11) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %27 = or i32 %26, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %28 = ptrtoint ptr %rmmio.i.i10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i10, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %29, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %27) #15, !srcloc !44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_initialize_m3_arb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sumo_get_running_fw_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @sumo_dpm_display_configuration_changed(ptr nocapture noundef %rdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_convert_vid2_to_vid7(ptr nocapture readnone %rdev, ptr nocapture noundef readonly %vid_mapping_table, i32 noundef %vid_2bit) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vid_mapping_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vid_mapping_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %i.022
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %vid_2bit)
  %cmp2 = icmp eq i32 %conv, %vid_2bit
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %sub = add i32 %1, -1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %i.0.pn = phi i32 [ %sub, %for.end ], [ %i.022, %for.body.cleanup_crit_edge ]
  %retval.0.in.in = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %i.0.pn, i32 1
  %4 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %retval.0.in = load i16, ptr %retval.0.in.in, align 2
  %retval.0 = zext i16 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_construct_sclk_voltage_mapping_table(ptr nocapture readnone %rdev, ptr nocapture noundef writeonly %sclk_voltage_mapping_table, ptr nocapture noundef readonly %table) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %table, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx4, align 4
  %usVoltageIndex = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 0, i32 1
  %3 = ptrtoint ptr %usVoltageIndex to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %usVoltageIndex, align 1
  %vid_2bit = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %vid_2bit to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %vid_2bit, align 4
  %6 = ptrtoint ptr %table to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %table, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %n.1 = phi i32 [ 1, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %prev_sclk.1 = phi i32 [ %7, %if.then ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %prev_sclk.1)
  %cmp1.1 = icmp ugt i32 %9, %prev_sclk.1
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.1 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1
  %10 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx4.1, align 4
  %usVoltageIndex.1 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 1, i32 1
  %11 = ptrtoint ptr %usVoltageIndex.1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %usVoltageIndex.1, align 1
  %vid_2bit.1 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1, i32 1
  %13 = ptrtoint ptr %vid_2bit.1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %vid_2bit.1, align 4
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx.1, align 1
  %inc.1 = add nuw nsw i32 %n.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %n.1.1 = phi i32 [ %inc.1, %if.then.1 ], [ %n.1, %for.inc.for.inc.1_crit_edge ]
  %prev_sclk.1.1 = phi i32 [ %15, %if.then.1 ], [ %prev_sclk.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %prev_sclk.1.1)
  %cmp1.2 = icmp ugt i32 %17, %prev_sclk.1.1
  br i1 %cmp1.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.2 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1.1
  %18 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx4.2, align 4
  %usVoltageIndex.2 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 2, i32 1
  %19 = ptrtoint ptr %usVoltageIndex.2 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usVoltageIndex.2, align 1
  %vid_2bit.2 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1.1, i32 1
  %21 = ptrtoint ptr %vid_2bit.2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %vid_2bit.2, align 4
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %arrayidx.2, align 1
  %inc.2 = add nuw nsw i32 %n.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %n.1.2 = phi i32 [ %inc.2, %if.then.2 ], [ %n.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %prev_sclk.1.2 = phi i32 [ %23, %if.then.2 ], [ %prev_sclk.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 3
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %prev_sclk.1.2)
  %cmp1.3 = icmp ugt i32 %25, %prev_sclk.1.2
  br i1 %cmp1.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.3 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1.2
  %26 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx4.3, align 4
  %usVoltageIndex.3 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 3, i32 1
  %27 = ptrtoint ptr %usVoltageIndex.3 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %usVoltageIndex.3, align 1
  %vid_2bit.3 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1.2, i32 1
  %29 = ptrtoint ptr %vid_2bit.3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vid_2bit.3, align 4
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %arrayidx.3, align 1
  %inc.3 = add nuw nsw i32 %n.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %n.1.3 = phi i32 [ %inc.3, %if.then.3 ], [ %n.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %prev_sclk.1.3 = phi i32 [ %31, %if.then.3 ], [ %prev_sclk.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 4
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %prev_sclk.1.3)
  %cmp1.4 = icmp ugt i32 %33, %prev_sclk.1.3
  br i1 %cmp1.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.4 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1.3
  %34 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx4.4, align 4
  %usVoltageIndex.4 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 4, i32 1
  %35 = ptrtoint ptr %usVoltageIndex.4 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %usVoltageIndex.4, align 1
  %vid_2bit.4 = getelementptr %struct.sumo_sclk_voltage_mapping_table, ptr %sclk_voltage_mapping_table, i32 0, i32 1, i32 %n.1.3, i32 1
  %37 = ptrtoint ptr %vid_2bit.4 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vid_2bit.4, align 4
  %inc.4 = add nuw nsw i32 %n.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %n.1.4 = phi i32 [ %inc.4, %if.then.4 ], [ %n.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %38 = ptrtoint ptr %sclk_voltage_mapping_table to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %n.1.4, ptr %sclk_voltage_mapping_table, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_construct_vid_mapping_table(ptr nocapture readnone %rdev, ptr nocapture noundef %vid_mapping_table, ptr nocapture noundef readonly %table) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %table, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %usVoltageID = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %usVoltageID to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %usVoltageID, align 1
  %usVoltageIndex = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 0, i32 1
  %4 = ptrtoint ptr %usVoltageIndex to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %usVoltageIndex, align 1
  %idxprom = zext i16 %5 to i32
  %vid_7bit = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %vid_7bit to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %3, ptr %vid_7bit, align 2
  %7 = load i16, ptr %usVoltageIndex, align 1
  %idxprom10 = zext i16 %7 to i32
  %arrayidx11 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom10
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.not.1 = icmp eq i32 %10, 0
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %usVoltageID.1 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 1, i32 2
  %11 = ptrtoint ptr %usVoltageID.1 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %usVoltageID.1, align 1
  %usVoltageIndex.1 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 1, i32 1
  %13 = ptrtoint ptr %usVoltageIndex.1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %usVoltageIndex.1, align 1
  %idxprom.1 = zext i16 %14 to i32
  %vid_7bit.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom.1, i32 1
  %15 = ptrtoint ptr %vid_7bit.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %12, ptr %vid_7bit.1, align 2
  %16 = load i16, ptr %usVoltageIndex.1, align 1
  %idxprom10.1 = zext i16 %16 to i32
  %arrayidx11.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom10.1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %arrayidx11.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not.2 = icmp eq i32 %19, 0
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %usVoltageID.2 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 2, i32 2
  %20 = ptrtoint ptr %usVoltageID.2 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usVoltageID.2, align 1
  %usVoltageIndex.2 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 2, i32 1
  %22 = ptrtoint ptr %usVoltageIndex.2 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usVoltageIndex.2, align 1
  %idxprom.2 = zext i16 %23 to i32
  %vid_7bit.2 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom.2, i32 1
  %24 = ptrtoint ptr %vid_7bit.2 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %21, ptr %vid_7bit.2, align 2
  %25 = load i16, ptr %usVoltageIndex.2, align 1
  %idxprom10.2 = zext i16 %25 to i32
  %arrayidx11.2 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom10.2
  %26 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx11.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 3
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.not.3 = icmp eq i32 %28, 0
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %usVoltageID.3 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 3, i32 2
  %29 = ptrtoint ptr %usVoltageID.3 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %usVoltageID.3, align 1
  %usVoltageIndex.3 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 3, i32 1
  %31 = ptrtoint ptr %usVoltageIndex.3 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usVoltageIndex.3, align 1
  %idxprom.3 = zext i16 %32 to i32
  %vid_7bit.3 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom.3, i32 1
  %33 = ptrtoint ptr %vid_7bit.3 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %30, ptr %vid_7bit.3, align 2
  %34 = load i16, ptr %usVoltageIndex.3, align 1
  %idxprom10.3 = zext i16 %34 to i32
  %arrayidx11.3 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom10.3
  %35 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx11.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 4
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1.not.4 = icmp eq i32 %37, 0
  br i1 %cmp1.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  %usVoltageID.4 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 4, i32 2
  %38 = ptrtoint ptr %usVoltageID.4 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usVoltageID.4, align 1
  %usVoltageIndex.4 = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %table, i32 4, i32 1
  %40 = ptrtoint ptr %usVoltageIndex.4 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %usVoltageIndex.4, align 1
  %idxprom.4 = zext i16 %41 to i32
  %vid_7bit.4 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom.4, i32 1
  %42 = ptrtoint ptr %vid_7bit.4 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %39, ptr %vid_7bit.4, align 2
  %43 = load i16, ptr %usVoltageIndex.4, align 1
  %idxprom10.4 = zext i16 %43 to i32
  %arrayidx11.4 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %idxprom10.4
  %44 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx11.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx16 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 0
  %vid_7bit17 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %vid_7bit17 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vid_7bit17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp18 = icmp eq i16 %46, 0
  br i1 %cmp18, label %for.cond21.preheader, label %for.inc.4.for.inc48_crit_edge

for.inc.4.for.inc48_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc48

for.cond21.preheader:                             ; preds = %for.inc.4
  %vid_7bit27 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 1, i32 1
  %47 = ptrtoint ptr %vid_7bit27 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vid_7bit27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp29.not = icmp eq i16 %48, 0
  br i1 %cmp29.not, label %for.cond21.187, label %for.cond21.preheader.for.end42.thread_crit_edge

for.cond21.preheader.for.end42.thread_crit_edge:  ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end42.thread

for.cond21.187:                                   ; preds = %for.cond21.preheader
  %vid_7bit27.188 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 2, i32 1
  %49 = ptrtoint ptr %vid_7bit27.188 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vid_7bit27.188, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp29.not.189 = icmp eq i16 %50, 0
  br i1 %cmp29.not.189, label %for.cond21.291, label %for.cond21.187.for.end42.thread_crit_edge

for.cond21.187.for.end42.thread_crit_edge:        ; preds = %for.cond21.187
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end42.thread

for.cond21.291:                                   ; preds = %for.cond21.187
  %vid_7bit27.292 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 3, i32 1
  %51 = ptrtoint ptr %vid_7bit27.292 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vid_7bit27.292, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp29.not.293 = icmp eq i16 %52, 0
  br i1 %cmp29.not.293, label %for.cond21.291.for.end50_crit_edge, label %for.cond21.291.for.end42.thread_crit_edge

for.cond21.291.for.end42.thread_crit_edge:        ; preds = %for.cond21.291
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end42.thread

for.cond21.291.for.end50_crit_edge:               ; preds = %for.cond21.291
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end50

for.end42.thread:                                 ; preds = %for.cond21.291.for.end42.thread_crit_edge, %for.cond21.187.for.end42.thread_crit_edge, %for.cond21.preheader.for.end42.thread_crit_edge
  %vid_7bit27.lcssa = phi ptr [ %vid_7bit27, %for.cond21.preheader.for.end42.thread_crit_edge ], [ %vid_7bit27.188, %for.cond21.187.for.end42.thread_crit_edge ], [ %vid_7bit27.292, %for.cond21.291.for.end42.thread_crit_edge ]
  %j.0.lcssa85 = phi i32 [ 1, %for.cond21.preheader.for.end42.thread_crit_edge ], [ 2, %for.cond21.187.for.end42.thread_crit_edge ], [ 3, %for.cond21.291.for.end42.thread_crit_edge ]
  %arrayidx26 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %j.0.lcssa85
  %53 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx26, align 4
  %55 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx16, align 4
  %56 = ptrtoint ptr %vid_7bit27.lcssa to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %vid_7bit27.lcssa, align 2
  br label %for.inc48

for.inc48:                                        ; preds = %for.end42.thread, %for.inc.4.for.inc48_crit_edge
  %arrayidx16.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 1
  %vid_7bit17.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 1, i32 1
  %57 = ptrtoint ptr %vid_7bit17.1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vid_7bit17.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp18.1 = icmp eq i16 %58, 0
  br i1 %cmp18.1, label %for.cond21.preheader.1, label %for.inc48.for.inc48.1_crit_edge

for.inc48.for.inc48.1_crit_edge:                  ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc48.1

for.cond21.preheader.1:                           ; preds = %for.inc48
  %vid_7bit27.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 2, i32 1
  %59 = ptrtoint ptr %vid_7bit27.1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vid_7bit27.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp29.not.1 = icmp eq i16 %60, 0
  br i1 %cmp29.not.1, label %for.cond21.1.1, label %for.cond21.preheader.1.for.end42.thread.1_crit_edge

for.cond21.preheader.1.for.end42.thread.1_crit_edge: ; preds = %for.cond21.preheader.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end42.thread.1

for.cond21.1.1:                                   ; preds = %for.cond21.preheader.1
  %vid_7bit27.1.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 3, i32 1
  %61 = ptrtoint ptr %vid_7bit27.1.1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %vid_7bit27.1.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp29.not.1.1 = icmp eq i16 %62, 0
  br i1 %cmp29.not.1.1, label %for.cond21.1.1.for.end50_crit_edge, label %for.cond21.1.1.for.end42.thread.1_crit_edge

for.cond21.1.1.for.end42.thread.1_crit_edge:      ; preds = %for.cond21.1.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end42.thread.1

for.cond21.1.1.for.end50_crit_edge:               ; preds = %for.cond21.1.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end50

for.end42.thread.1:                               ; preds = %for.cond21.1.1.for.end42.thread.1_crit_edge, %for.cond21.preheader.1.for.end42.thread.1_crit_edge
  %vid_7bit27.lcssa.1 = phi ptr [ %vid_7bit27.1, %for.cond21.preheader.1.for.end42.thread.1_crit_edge ], [ %vid_7bit27.1.1, %for.cond21.1.1.for.end42.thread.1_crit_edge ]
  %j.0.lcssa85.1 = phi i32 [ 2, %for.cond21.preheader.1.for.end42.thread.1_crit_edge ], [ 3, %for.cond21.1.1.for.end42.thread.1_crit_edge ]
  %arrayidx26.1 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 %j.0.lcssa85.1
  %63 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx26.1, align 4
  %65 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx16.1, align 4
  %66 = ptrtoint ptr %vid_7bit27.lcssa.1 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %vid_7bit27.lcssa.1, align 2
  br label %for.inc48.1

for.inc48.1:                                      ; preds = %for.end42.thread.1, %for.inc48.for.inc48.1_crit_edge
  %arrayidx16.2 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 2
  %vid_7bit17.2 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 2, i32 1
  %67 = ptrtoint ptr %vid_7bit17.2 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vid_7bit17.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %cmp18.2 = icmp eq i16 %68, 0
  br i1 %cmp18.2, label %for.cond21.preheader.2, label %for.inc48.1.for.inc48.2_crit_edge

for.inc48.1.for.inc48.2_crit_edge:                ; preds = %for.inc48.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc48.2

for.cond21.preheader.2:                           ; preds = %for.inc48.1
  %vid_7bit27.2 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 3, i32 1
  %69 = ptrtoint ptr %vid_7bit27.2 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %vid_7bit27.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp29.not.2 = icmp eq i16 %70, 0
  br i1 %cmp29.not.2, label %for.cond21.preheader.2.for.end50_crit_edge, label %for.end42.thread.2

for.cond21.preheader.2.for.end50_crit_edge:       ; preds = %for.cond21.preheader.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end50

for.end42.thread.2:                               ; preds = %for.cond21.preheader.2
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx26.2 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx26.2, align 4
  %73 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx16.2, align 4
  %74 = ptrtoint ptr %vid_7bit27.2 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %vid_7bit27.2, align 2
  br label %for.inc48.2

for.inc48.2:                                      ; preds = %for.end42.thread.2, %for.inc48.1.for.inc48.2_crit_edge
  %vid_7bit17.3 = getelementptr %struct.sumo_vid_mapping_table, ptr %vid_mapping_table, i32 0, i32 1, i32 3, i32 1
  %75 = ptrtoint ptr %vid_7bit17.3 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vid_7bit17.3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp18.3 = icmp eq i16 %76, 0
  %spec.select = select i1 %cmp18.3, i32 3, i32 4
  br label %for.end50

for.end50:                                        ; preds = %for.inc48.2, %for.cond21.preheader.2.for.end50_crit_edge, %for.cond21.1.1.for.end50_crit_edge, %for.cond21.291.for.end50_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond21.291.for.end50_crit_edge ], [ 1, %for.cond21.1.1.for.end50_crit_edge ], [ 2, %for.cond21.preheader.2.for.end50_crit_edge ], [ %spec.select, %for.inc48.2 ]
  %77 = ptrtoint ptr %vid_mapping_table to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %i.1.lcssa, ptr %vid_mapping_table, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_init(ptr noundef %rdev) local_unnamed_addr #2 align 64 {
entry:
  %data_offset.i66 = alloca i16, align 2
  %frev.i67 = alloca i8, align 1
  %crev.i68 = alloca i8, align 1
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 21860
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 716) #19
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = shl i32 %2, 24
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %priv, align 4
  %driver_nbps_policy_disable = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %driver_nbps_policy_disable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %driver_nbps_policy_disable, align 1
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %8)
  %cmp2 = icmp eq i32 %8, 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %4)
  %cmp3 = icmp ult i32 %4, 805306368
  %or.cond = select i1 %cmp2, i1 %cmp3, i1 false
  %spec.select = zext i1 %or.cond to i8
  %9 = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 15
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %9, align 8
  %enable_alt_vddnb = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 17
  %11 = ptrtoint ptr %enable_alt_vddnb to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %enable_alt_vddnb, align 2
  %enable_sclk_ds = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 22
  %12 = ptrtoint ptr %enable_sclk_ds to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %enable_sclk_ds, align 1
  %enable_dynamic_m3_arbiter = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %enable_dynamic_m3_arbiter to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %enable_dynamic_m3_arbiter, align 1
  %enable_dynamic_patch_ps = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 24
  %14 = ptrtoint ptr %enable_dynamic_patch_ps to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %enable_dynamic_patch_ps, align 1
  %not.cmp2 = xor i1 %cmp2, true
  %.sink88 = zext i1 %not.cmp2 to i8
  %15 = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 20
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink88, ptr %15, align 1
  %enable_gfx_clock_gating = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %enable_gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %enable_gfx_clock_gating, align 4
  %enable_mg_clock_gating = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 21
  %18 = ptrtoint ptr %enable_mg_clock_gating to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %enable_mg_clock_gating, align 2
  %enable_auto_thermal_throttling = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 23
  %19 = ptrtoint ptr %enable_auto_thermal_throttling to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %enable_auto_thermal_throttling, align 8
  %mode_info1.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #15
  %20 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %frev.i, align 1, !annotation !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #15
  %21 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %crev.i, align 1, !annotation !40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i) #15
  %22 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !40
  %23 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mode_info1.i, align 4
  %call2.i = call zeroext i1 @atom_parse_data_header(ptr noundef %24, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #15
  br i1 %call2.i, label %if.then.i, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then.i:                                        ; preds = %if.end
  %25 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bios.i, align 4
  %29 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %30 to i32
  %add.ptr.i61 = getelementptr i8, ptr %28, i32 %conv.i
  %31 = ptrtoint ptr %crev.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %crev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %32)
  %cmp.not.i = icmp eq i8 %32, 6
  br i1 %cmp.not.i, label %if.end.i, label %sumo_parse_sys_info_table.exit

if.end.i:                                         ; preds = %if.then.i
  %ulBootUpEngineClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 1
  %33 = ptrtoint ptr %ulBootUpEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %ulBootUpEngineClock.i, align 1
  %35 = call i32 @llvm.bswap.i32(i32 %34) #15
  %sys_info.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %sys_info.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sys_info.i, align 4
  %ulMinEngineClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 12
  %37 = ptrtoint ptr %ulMinEngineClock.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %ulMinEngineClock.i, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38) #15
  %min_sclk.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 1
  %40 = ptrtoint ptr %min_sclk.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %min_sclk.i, align 8
  %ulBootUpUMAClock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 3
  %41 = ptrtoint ptr %ulBootUpUMAClock.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %ulBootUpUMAClock.i, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #15
  %bootup_uma_clk.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 2
  %44 = ptrtoint ptr %bootup_uma_clk.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bootup_uma_clk.i, align 4
  %usBootUpNBVoltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 17
  %45 = ptrtoint ptr %usBootUpNBVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %usBootUpNBVoltage.i, align 1
  %47 = call i16 @llvm.bswap.i16(i16 %46) #15
  %bootup_nb_voltage_index.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 3
  %48 = ptrtoint ptr %bootup_nb_voltage_index.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %bootup_nb_voltage_index.i, align 8
  %ucHtcTmpLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 10
  %49 = ptrtoint ptr %ucHtcTmpLmt.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ucHtcTmpLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp13.i = icmp eq i8 %50, 0
  %spec.select.i = select i1 %cmp13.i, i8 -53, i8 %50
  %51 = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %spec.select.i, ptr %51, align 2
  %ucHtcHystLmt.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 11
  %53 = ptrtoint ptr %ucHtcHystLmt.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ucHtcHystLmt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp22.i = icmp eq i8 %54, 0
  %.sink147.i = select i1 %cmp22.i, i8 5, i8 %54
  %55 = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %.sink147.i, ptr %55, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %spec.select.i, i8 %.sink147.i)
  %cmp37.not.i = icmp ugt i8 %spec.select.i, %.sink147.i
  br i1 %cmp37.not.i, label %if.end.i.if.end40.i_crit_edge, label %if.then39.i

if.end.i.if.end40.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #15
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.end.i.if.end40.i_crit_edge
  %ulCSR_M3_ARB_CNTL_DEFAULT.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 22
  %ulCSR_M3_ARB_CNTL_UVD.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 23
  %ulCSR_M3_ARB_CNTL_FS3D.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 24
  %57 = ptrtoint ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58) #15
  %arrayidx44.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 0
  %60 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx44.i, align 8
  %61 = ptrtoint ptr %ulCSR_M3_ARB_CNTL_UVD.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 4)
  %62 = load i32, ptr %ulCSR_M3_ARB_CNTL_UVD.i, align 1
  %63 = call i32 @llvm.bswap.i32(i32 %62) #15
  %arrayidx47.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 0
  %64 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx47.i, align 8
  %65 = ptrtoint ptr %ulCSR_M3_ARB_CNTL_FS3D.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %ulCSR_M3_ARB_CNTL_FS3D.i, align 1
  %67 = call i32 @llvm.bswap.i32(i32 %66) #15
  %arrayidx50.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 0
  %68 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx50.i, align 8
  %arrayidx.1.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 1
  %69 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %arrayidx.1.i, align 1
  %71 = call i32 @llvm.bswap.i32(i32 %70) #15
  %arrayidx44.1.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 1
  %72 = ptrtoint ptr %arrayidx44.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx44.1.i, align 4
  %arrayidx45.1.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %arrayidx45.1.i, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74) #15
  %arrayidx47.1.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 1
  %76 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx47.1.i, align 4
  %arrayidx48.1.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx48.1.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %arrayidx48.1.i, align 1
  %79 = call i32 @llvm.bswap.i32(i32 %78) #15
  %arrayidx50.1.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 1
  %80 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx50.1.i, align 4
  %arrayidx.2.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 2
  %81 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %arrayidx.2.i, align 1
  %83 = call i32 @llvm.bswap.i32(i32 %82) #15
  %arrayidx44.2.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 2
  %84 = ptrtoint ptr %arrayidx44.2.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx44.2.i, align 8
  %arrayidx45.2.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 2
  %85 = ptrtoint ptr %arrayidx45.2.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %arrayidx45.2.i, align 1
  %87 = call i32 @llvm.bswap.i32(i32 %86) #15
  %arrayidx47.2.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 2
  %88 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx47.2.i, align 8
  %arrayidx48.2.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx48.2.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %arrayidx48.2.i, align 1
  %91 = call i32 @llvm.bswap.i32(i32 %90) #15
  %arrayidx50.2.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 2
  %92 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx50.2.i, align 8
  %arrayidx.3.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 3
  %93 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %arrayidx.3.i, align 1
  %95 = call i32 @llvm.bswap.i32(i32 %94) #15
  %arrayidx44.3.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 3
  %96 = ptrtoint ptr %arrayidx44.3.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx44.3.i, align 4
  %arrayidx45.3.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 3
  %97 = ptrtoint ptr %arrayidx45.3.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %arrayidx45.3.i, align 1
  %99 = call i32 @llvm.bswap.i32(i32 %98) #15
  %arrayidx47.3.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 3
  %100 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx47.3.i, align 4
  %arrayidx48.3.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 3
  %101 = ptrtoint ptr %arrayidx48.3.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load i32, ptr %arrayidx48.3.i, align 1
  %103 = call i32 @llvm.bswap.i32(i32 %102) #15
  %arrayidx50.3.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 3
  %104 = ptrtoint ptr %arrayidx50.3.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %arrayidx50.3.i, align 4
  %arrayidx.4.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 4
  %105 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %arrayidx.4.i, align 1
  %107 = call i32 @llvm.bswap.i32(i32 %106) #15
  %arrayidx44.4.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 4
  %108 = ptrtoint ptr %arrayidx44.4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx44.4.i, align 8
  %arrayidx45.4.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 4
  %109 = ptrtoint ptr %arrayidx45.4.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %arrayidx45.4.i, align 1
  %111 = call i32 @llvm.bswap.i32(i32 %110) #15
  %arrayidx47.4.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 4
  %112 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx47.4.i, align 8
  %arrayidx48.4.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 4
  %113 = ptrtoint ptr %arrayidx48.4.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %arrayidx48.4.i, align 1
  %115 = call i32 @llvm.bswap.i32(i32 %114) #15
  %arrayidx50.4.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 4
  %116 = ptrtoint ptr %arrayidx50.4.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %arrayidx50.4.i, align 8
  %arrayidx.5.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 5
  %117 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %arrayidx.5.i, align 1
  %119 = call i32 @llvm.bswap.i32(i32 %118) #15
  %arrayidx44.5.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 5
  %120 = ptrtoint ptr %arrayidx44.5.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %arrayidx44.5.i, align 4
  %arrayidx45.5.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 5
  %121 = ptrtoint ptr %arrayidx45.5.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %arrayidx45.5.i, align 1
  %123 = call i32 @llvm.bswap.i32(i32 %122) #15
  %arrayidx47.5.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 5
  %124 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %arrayidx47.5.i, align 4
  %arrayidx48.5.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 5
  %125 = ptrtoint ptr %arrayidx48.5.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %arrayidx48.5.i, align 1
  %127 = call i32 @llvm.bswap.i32(i32 %126) #15
  %arrayidx50.5.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 5
  %128 = ptrtoint ptr %arrayidx50.5.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx50.5.i, align 4
  %arrayidx.6.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 6
  %129 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %arrayidx.6.i, align 1
  %131 = call i32 @llvm.bswap.i32(i32 %130) #15
  %arrayidx44.6.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 6
  %132 = ptrtoint ptr %arrayidx44.6.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx44.6.i, align 8
  %arrayidx45.6.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 6
  %133 = ptrtoint ptr %arrayidx45.6.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %arrayidx45.6.i, align 1
  %135 = call i32 @llvm.bswap.i32(i32 %134) #15
  %arrayidx47.6.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 6
  %136 = ptrtoint ptr %arrayidx47.6.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %arrayidx47.6.i, align 8
  %arrayidx48.6.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 6
  %137 = ptrtoint ptr %arrayidx48.6.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %arrayidx48.6.i, align 1
  %139 = call i32 @llvm.bswap.i32(i32 %138) #15
  %arrayidx50.6.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 6
  %140 = ptrtoint ptr %arrayidx50.6.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %arrayidx50.6.i, align 8
  %arrayidx.7.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 7
  %141 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %arrayidx.7.i, align 1
  %143 = call i32 @llvm.bswap.i32(i32 %142) #15
  %arrayidx44.7.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 7
  %144 = ptrtoint ptr %arrayidx44.7.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx44.7.i, align 4
  %arrayidx45.7.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 7
  %145 = ptrtoint ptr %arrayidx45.7.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %arrayidx45.7.i, align 1
  %147 = call i32 @llvm.bswap.i32(i32 %146) #15
  %arrayidx47.7.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 7
  %148 = ptrtoint ptr %arrayidx47.7.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx47.7.i, align 4
  %arrayidx48.7.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 7
  %149 = ptrtoint ptr %arrayidx48.7.i to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %arrayidx48.7.i, align 1
  %151 = call i32 @llvm.bswap.i32(i32 %150) #15
  %arrayidx50.7.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 7
  %152 = ptrtoint ptr %arrayidx50.7.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %arrayidx50.7.i, align 4
  %arrayidx.8.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 8
  %153 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %arrayidx.8.i, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %154) #15
  %arrayidx44.8.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 8
  %156 = ptrtoint ptr %arrayidx44.8.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %arrayidx44.8.i, align 8
  %arrayidx45.8.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 8
  %157 = ptrtoint ptr %arrayidx45.8.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %arrayidx45.8.i, align 1
  %159 = call i32 @llvm.bswap.i32(i32 %158) #15
  %arrayidx47.8.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 8
  %160 = ptrtoint ptr %arrayidx47.8.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx47.8.i, align 8
  %arrayidx48.8.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 8
  %161 = ptrtoint ptr %arrayidx48.8.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %arrayidx48.8.i, align 1
  %163 = call i32 @llvm.bswap.i32(i32 %162) #15
  %arrayidx50.8.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 8
  %164 = ptrtoint ptr %arrayidx50.8.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx50.8.i, align 8
  %arrayidx.9.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_DEFAULT.i, i32 0, i32 9
  %165 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_loadN_noabort(i32 %165, i32 4)
  %166 = load i32, ptr %arrayidx.9.i, align 1
  %167 = call i32 @llvm.bswap.i32(i32 %166) #15
  %arrayidx44.9.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 9, i32 9
  %168 = ptrtoint ptr %arrayidx44.9.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %arrayidx44.9.i, align 4
  %arrayidx45.9.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_UVD.i, i32 0, i32 9
  %169 = ptrtoint ptr %arrayidx45.9.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %170 = load i32, ptr %arrayidx45.9.i, align 1
  %171 = call i32 @llvm.bswap.i32(i32 %170) #15
  %arrayidx47.9.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 10, i32 9
  %172 = ptrtoint ptr %arrayidx47.9.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %arrayidx47.9.i, align 4
  %arrayidx48.9.i = getelementptr [10 x i32], ptr %ulCSR_M3_ARB_CNTL_FS3D.i, i32 0, i32 9
  %173 = ptrtoint ptr %arrayidx48.9.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 4)
  %174 = load i32, ptr %arrayidx48.9.i, align 1
  %175 = call i32 @llvm.bswap.i32(i32 %174) #15
  %arrayidx50.9.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 11, i32 9
  %176 = ptrtoint ptr %arrayidx50.9.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx50.9.i, align 4
  %SclkDpmBoostMargin.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 39
  %177 = ptrtoint ptr %SclkDpmBoostMargin.i to i32
  call void @__asan_loadN_noabort(i32 %177, i32 4)
  %178 = load i32, ptr %SclkDpmBoostMargin.i, align 1
  %179 = call i32 @llvm.bswap.i32(i32 %178) #15
  %sclk_dpm_boost_margin.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 12
  %180 = ptrtoint ptr %sclk_dpm_boost_margin.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %sclk_dpm_boost_margin.i, align 8
  %SclkDpmThrottleMargin.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 40
  %181 = ptrtoint ptr %SclkDpmThrottleMargin.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 4)
  %182 = load i32, ptr %SclkDpmThrottleMargin.i, align 1
  %183 = call i32 @llvm.bswap.i32(i32 %182) #15
  %sclk_dpm_throttle_margin.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 13
  %184 = ptrtoint ptr %sclk_dpm_throttle_margin.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %sclk_dpm_throttle_margin.i, align 4
  %SclkDpmTdpLimitPG.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 41
  %185 = ptrtoint ptr %SclkDpmTdpLimitPG.i to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %186 = load i16, ptr %SclkDpmTdpLimitPG.i, align 1
  %187 = call i16 @llvm.bswap.i16(i16 %186) #15
  %conv53.i = zext i16 %187 to i32
  %sclk_dpm_tdp_limit_pg.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 14
  %188 = ptrtoint ptr %sclk_dpm_tdp_limit_pg.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %conv53.i, ptr %sclk_dpm_tdp_limit_pg.i, align 8
  %GnbTdpLimit.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 46
  %189 = ptrtoint ptr %GnbTdpLimit.i to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %GnbTdpLimit.i, align 1
  %191 = call i16 @llvm.bswap.i16(i16 %190) #15
  %conv55.i = zext i16 %191 to i32
  %gnb_tdp_limit.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 15
  %192 = ptrtoint ptr %gnb_tdp_limit.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %conv55.i, ptr %gnb_tdp_limit.i, align 4
  %SclkDpmTdpLimitBoost.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 42
  %193 = ptrtoint ptr %SclkDpmTdpLimitBoost.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %SclkDpmTdpLimitBoost.i, align 1
  %195 = call i16 @llvm.bswap.i16(i16 %194) #15
  %conv57.i = zext i16 %195 to i32
  %sclk_dpm_tdp_limit_boost.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 16
  %196 = ptrtoint ptr %sclk_dpm_tdp_limit_boost.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %conv57.i, ptr %sclk_dpm_tdp_limit_boost.i, align 8
  %ulBoostEngineCLock.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 43
  %197 = ptrtoint ptr %ulBoostEngineCLock.i to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %ulBoostEngineCLock.i, align 1
  %199 = call i32 @llvm.bswap.i32(i32 %198) #15
  %boost_sclk.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 17
  %200 = ptrtoint ptr %boost_sclk.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %boost_sclk.i, align 4
  %ulBoostVid_2bit.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 44
  %201 = ptrtoint ptr %ulBoostVid_2bit.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %ulBoostVid_2bit.i, align 1
  %conv60.i = zext i8 %202 to i32
  %boost_vid_2bit.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 18
  %203 = ptrtoint ptr %boost_vid_2bit.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv60.i, ptr %boost_vid_2bit.i, align 8
  %EnableBoost.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 45
  %204 = ptrtoint ptr %EnableBoost.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %EnableBoost.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool.not.i = icmp ne i8 %205, 0
  %spec.select149.i = zext i1 %tobool.not.i to i8
  %206 = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 19
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %spec.select149.i, ptr %206, align 4
  %disp_clk_voltage_mapping_table.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 7
  %sDISPCLK_Voltage.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 4
  %ulMaximumSupportedCLK.i.i = getelementptr %struct._ATOM_CLK_VOLT_CAPABILITY, ptr %sDISPCLK_Voltage.i, i32 0, i32 1
  %208 = ptrtoint ptr %ulMaximumSupportedCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %ulMaximumSupportedCLK.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp1.i.i = icmp eq i32 %209, 0
  %display_clock_frequency8.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 1
  br i1 %cmp1.i.i, label %if.then7.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end40.i
  %210 = ptrtoint ptr %display_clock_frequency8.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %display_clock_frequency8.i.i, align 4
  %ulMaximumSupportedCLK.1.i.i = getelementptr %struct._ATOM_CLK_VOLT_CAPABILITY, ptr %sDISPCLK_Voltage.i, i32 1, i32 1
  %211 = ptrtoint ptr %ulMaximumSupportedCLK.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 4)
  %212 = load i32, ptr %ulMaximumSupportedCLK.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp1.1.i.i = icmp eq i32 %212, 0
  br i1 %cmp1.1.i.i, label %if.end.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge, label %if.end.1.i.i

if.end.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_construct_display_voltage_mapping_table.exit.i

if.end.1.i.i:                                     ; preds = %if.end.i.i
  %arrayidx4.1.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 1, i32 1
  %213 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %arrayidx4.1.i.i, align 8
  %ulMaximumSupportedCLK.2.i.i = getelementptr %struct._ATOM_CLK_VOLT_CAPABILITY, ptr %sDISPCLK_Voltage.i, i32 2, i32 1
  %214 = ptrtoint ptr %ulMaximumSupportedCLK.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %214, i32 4)
  %215 = load i32, ptr %ulMaximumSupportedCLK.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp1.2.i.i = icmp eq i32 %215, 0
  br i1 %cmp1.2.i.i, label %if.end.1.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge, label %if.end.2.i.i

if.end.1.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge: ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_construct_display_voltage_mapping_table.exit.i

if.end.2.i.i:                                     ; preds = %if.end.1.i.i
  %arrayidx4.2.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 1, i32 2
  %216 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %arrayidx4.2.i.i, align 4
  %ulMaximumSupportedCLK.3.i.i = getelementptr %struct._ATOM_CLK_VOLT_CAPABILITY, ptr %sDISPCLK_Voltage.i, i32 3, i32 1
  %217 = ptrtoint ptr %ulMaximumSupportedCLK.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %ulMaximumSupportedCLK.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp1.3.i.i = icmp eq i32 %218, 0
  br i1 %cmp1.3.i.i, label %if.end.2.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge, label %if.end.3.i.i

if.end.2.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_construct_display_voltage_mapping_table.exit.i

if.end.3.i.i:                                     ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.3.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 7, i32 1, i32 3
  %219 = ptrtoint ptr %arrayidx4.3.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %arrayidx4.3.i.i, align 8
  br label %sumo_construct_display_voltage_mapping_table.exit.i

if.then7.i.i:                                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #17
  %220 = ptrtoint ptr %display_clock_frequency8.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 80000, ptr %display_clock_frequency8.i.i, align 4
  br label %sumo_construct_display_voltage_mapping_table.exit.i

sumo_construct_display_voltage_mapping_table.exit.i: ; preds = %if.then7.i.i, %if.end.3.i.i, %if.end.2.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge, %if.end.1.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge, %if.end.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge
  %i.03.lcssa.ph.sink.i.i = phi i32 [ 4, %if.end.3.i.i ], [ 1, %if.then7.i.i ], [ 3, %if.end.2.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge ], [ 2, %if.end.1.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge ], [ 1, %if.end.i.i.sumo_construct_display_voltage_mapping_table.exit.i_crit_edge ]
  %221 = ptrtoint ptr %disp_clk_voltage_mapping_table.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %i.03.lcssa.ph.sink.i.i, ptr %disp_clk_voltage_mapping_table.i, align 8
  %sclk_voltage_mapping_table.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6
  %sAvail_SCLK.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V6, ptr %add.ptr.i61, i32 0, i32 25
  %222 = ptrtoint ptr %sAvail_SCLK.i to i32
  call void @__asan_loadN_noabort(i32 %222, i32 4)
  %223 = load i32, ptr %sAvail_SCLK.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %cmp1.not.i.i = icmp eq i32 %223, 0
  br i1 %cmp1.not.i.i, label %sumo_construct_display_voltage_mapping_table.exit.i.for.inc.i.i_crit_edge, label %if.then.i.i

sumo_construct_display_voltage_mapping_table.exit.i.for.inc.i.i_crit_edge: ; preds = %sumo_construct_display_voltage_mapping_table.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %sumo_construct_display_voltage_mapping_table.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.i139.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1
  %224 = ptrtoint ptr %arrayidx4.i139.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %arrayidx4.i139.i, align 8
  %usVoltageIndex.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 0, i32 1
  %225 = ptrtoint ptr %usVoltageIndex.i.i to i32
  call void @__asan_loadN_noabort(i32 %225, i32 2)
  %226 = load i16, ptr %usVoltageIndex.i.i, align 1
  %vid_2bit.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 0, i32 1
  %227 = ptrtoint ptr %vid_2bit.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %226, ptr %vid_2bit.i.i, align 4
  %228 = ptrtoint ptr %sAvail_SCLK.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 4)
  %229 = load i32, ptr %sAvail_SCLK.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %sumo_construct_display_voltage_mapping_table.exit.i.for.inc.i.i_crit_edge
  %n.1.i.i = phi i32 [ 1, %if.then.i.i ], [ 0, %sumo_construct_display_voltage_mapping_table.exit.i.for.inc.i.i_crit_edge ]
  %prev_sclk.1.i.i = phi i32 [ %229, %if.then.i.i ], [ 0, %sumo_construct_display_voltage_mapping_table.exit.i.for.inc.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 1
  %230 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %arrayidx.1.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %prev_sclk.1.i.i)
  %cmp1.1.i140.i = icmp ugt i32 %231, %prev_sclk.1.i.i
  br i1 %cmp1.1.i140.i, label %if.then.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.1.i141.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.i.i
  %232 = ptrtoint ptr %arrayidx4.1.i141.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %arrayidx4.1.i141.i, align 8
  %usVoltageIndex.1.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 1, i32 1
  %233 = ptrtoint ptr %usVoltageIndex.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %usVoltageIndex.1.i.i, align 1
  %vid_2bit.1.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.i.i, i32 1
  %235 = ptrtoint ptr %vid_2bit.1.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %234, ptr %vid_2bit.1.i.i, align 4
  %236 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 4)
  %237 = load i32, ptr %arrayidx.1.i.i, align 1
  %inc.1.i.i = add nuw nsw i32 %n.1.i.i, 1
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %n.1.1.i.i = phi i32 [ %inc.1.i.i, %if.then.1.i.i ], [ %n.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %prev_sclk.1.1.i.i = phi i32 [ %237, %if.then.1.i.i ], [ %prev_sclk.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %arrayidx.2.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 2
  %238 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %238, i32 4)
  %239 = load i32, ptr %arrayidx.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %239, i32 %prev_sclk.1.1.i.i)
  %cmp1.2.i142.i = icmp ugt i32 %239, %prev_sclk.1.1.i.i
  br i1 %cmp1.2.i142.i, label %if.then.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.2.i143.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.1.i.i
  %240 = ptrtoint ptr %arrayidx4.2.i143.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %arrayidx4.2.i143.i, align 8
  %usVoltageIndex.2.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 2, i32 1
  %241 = ptrtoint ptr %usVoltageIndex.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %241, i32 2)
  %242 = load i16, ptr %usVoltageIndex.2.i.i, align 1
  %vid_2bit.2.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.1.i.i, i32 1
  %243 = ptrtoint ptr %vid_2bit.2.i.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %242, ptr %vid_2bit.2.i.i, align 4
  %244 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %arrayidx.2.i.i, align 1
  %inc.2.i.i = add nuw nsw i32 %n.1.1.i.i, 1
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %n.1.2.i.i = phi i32 [ %inc.2.i.i, %if.then.2.i.i ], [ %n.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %prev_sclk.1.2.i.i = phi i32 [ %245, %if.then.2.i.i ], [ %prev_sclk.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %arrayidx.3.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 3
  %246 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %arrayidx.3.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %prev_sclk.1.2.i.i)
  %cmp1.3.i144.i = icmp ugt i32 %247, %prev_sclk.1.2.i.i
  br i1 %cmp1.3.i144.i, label %if.then.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.3.i145.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.2.i.i
  %248 = ptrtoint ptr %arrayidx4.3.i145.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %arrayidx4.3.i145.i, align 8
  %usVoltageIndex.3.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 3, i32 1
  %249 = ptrtoint ptr %usVoltageIndex.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %249, i32 2)
  %250 = load i16, ptr %usVoltageIndex.3.i.i, align 1
  %vid_2bit.3.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.2.i.i, i32 1
  %251 = ptrtoint ptr %vid_2bit.3.i.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %250, ptr %vid_2bit.3.i.i, align 4
  %252 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %253 = load i32, ptr %arrayidx.3.i.i, align 1
  %inc.3.i.i = add nuw nsw i32 %n.1.2.i.i, 1
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %n.1.3.i.i = phi i32 [ %inc.3.i.i, %if.then.3.i.i ], [ %n.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %prev_sclk.1.3.i.i = phi i32 [ %253, %if.then.3.i.i ], [ %prev_sclk.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %arrayidx.4.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 4
  %254 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_loadN_noabort(i32 %254, i32 4)
  %255 = load i32, ptr %arrayidx.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %prev_sclk.1.3.i.i)
  %cmp1.4.i.i = icmp ugt i32 %255, %prev_sclk.1.3.i.i
  br i1 %cmp1.4.i.i, label %if.then.4.i.i, label %for.inc.3.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i_crit_edge

for.inc.3.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_construct_sclk_voltage_mapping_table.exit.i

if.then.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx4.4.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.3.i.i
  %256 = ptrtoint ptr %arrayidx4.4.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %arrayidx4.4.i.i, align 8
  %usVoltageIndex.4.i.i = getelementptr %struct._ATOM_AVAILABLE_SCLK_LIST, ptr %sAvail_SCLK.i, i32 4, i32 1
  %257 = ptrtoint ptr %usVoltageIndex.4.i.i to i32
  call void @__asan_loadN_noabort(i32 %257, i32 2)
  %258 = load i16, ptr %usVoltageIndex.4.i.i, align 1
  %vid_2bit.4.i.i = getelementptr %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 6, i32 1, i32 %n.1.3.i.i, i32 1
  %259 = ptrtoint ptr %vid_2bit.4.i.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %258, ptr %vid_2bit.4.i.i, align 4
  %inc.4.i.i = add nuw nsw i32 %n.1.3.i.i, 1
  br label %sumo_construct_sclk_voltage_mapping_table.exit.i

sumo_construct_sclk_voltage_mapping_table.exit.i: ; preds = %if.then.4.i.i, %for.inc.3.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i_crit_edge
  %n.1.4.i.i = phi i32 [ %inc.4.i.i, %if.then.4.i.i ], [ %n.1.3.i.i, %for.inc.3.i.i.sumo_construct_sclk_voltage_mapping_table.exit.i_crit_edge ]
  %260 = ptrtoint ptr %sclk_voltage_mapping_table.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %n.1.4.i.i, ptr %sclk_voltage_mapping_table.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 8
  call void @sumo_construct_vid_mapping_table(ptr undef, ptr noundef %vid_mapping_table.i, ptr noundef %sAvail_SCLK.i) #15
  br label %if.end15

sumo_parse_sys_info_table.exit:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.i = zext i8 %32 to i32
  %261 = ptrtoint ptr %frev.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %frev.i, align 1
  %conv7.i = zext i8 %262 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %conv7.i, i32 noundef %conv4.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #15
  br label %cleanup

if.end15:                                         ; preds = %sumo_construct_sclk_voltage_mapping_table.exit.i, %if.end.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #15
  %263 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %priv, align 4
  %sys_info.i63 = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 11
  %265 = ptrtoint ptr %sys_info.i63 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %sys_info.i63, align 4
  %boot_pl.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 13
  %267 = ptrtoint ptr %boot_pl.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %266, ptr %boot_pl.i, align 4
  %bootup_nb_voltage_index.i64 = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 11, i32 3
  %268 = ptrtoint ptr %bootup_nb_voltage_index.i64 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %bootup_nb_voltage_index.i64, align 4
  %conv.i65 = zext i16 %269 to i32
  %vddc_index.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 13, i32 1
  %270 = ptrtoint ptr %vddc_index.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %conv.i65, ptr %vddc_index.i, align 4
  %ds_divider_index.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 13, i32 2
  %271 = ptrtoint ptr %ds_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %ds_divider_index.i, align 4
  %ss_divider_index.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 13, i32 3
  %272 = ptrtoint ptr %ss_divider_index.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 0, ptr %ss_divider_index.i, align 4
  %allow_gnb_slow.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 13, i32 4
  %273 = ptrtoint ptr %allow_gnb_slow.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 1, ptr %allow_gnb_slow.i, align 4
  %acpi_pl.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 12
  %274 = call ptr @memcpy(ptr %acpi_pl.i, ptr %boot_pl.i, i32 24)
  %current_ps.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 28
  %num_levels.i = getelementptr inbounds %struct.sumo_power_info, ptr %264, i32 0, i32 28, i32 1
  %275 = ptrtoint ptr %num_levels.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 1, ptr %num_levels.i, align 4
  %276 = call ptr @memcpy(ptr %current_ps.i, ptr %boot_pl.i, i32 24)
  %call16 = call i32 @r600_get_platform_caps(ptr noundef %rdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset.i66) #15
  %277 = ptrtoint ptr %data_offset.i66 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 -1, ptr %data_offset.i66, align 2, !annotation !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i67) #15
  %278 = ptrtoint ptr %frev.i67 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 -1, ptr %frev.i67, align 1, !annotation !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i68) #15
  %279 = ptrtoint ptr %crev.i68 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 -1, ptr %crev.i68, align 1, !annotation !40
  %280 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %281, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i67, ptr noundef nonnull %crev.i68, ptr noundef nonnull %data_offset.i66) #15
  br i1 %call.i, label %if.end.i74, label %if.end19.sumo_parse_power_table.exit.thread_crit_edge

if.end19.sumo_parse_power_table.exit.thread_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_power_table.exit.thread

if.end.i74:                                       ; preds = %if.end19
  %282 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %mode_info1.i, align 4
  %bios.i70 = getelementptr inbounds %struct.atom_context, ptr %283, i32 0, i32 3
  %284 = ptrtoint ptr %bios.i70 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %bios.i70, align 4
  %286 = ptrtoint ptr %data_offset.i66 to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %data_offset.i66, align 2
  %conv.i71 = zext i16 %287 to i32
  %add.ptr.i72 = getelementptr i8, ptr %285, i32 %conv.i71
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i72, i32 0, i32 6
  %288 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 2)
  %289 = load i16, ptr %usStateArrayOffset.i, align 1
  %290 = call i16 @llvm.bswap.i16(i16 %289) #15
  %conv7.i73 = zext i16 %290 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i72, i32 %conv7.i73
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i72, i32 0, i32 7
  %291 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %291, i32 2)
  %292 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %293 = call i16 @llvm.bswap.i16(i16 %292) #15
  %conv13.i = zext i16 %293 to i32
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i72, i32 %conv13.i
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i72, i32 0, i32 8
  %294 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %294, i32 2)
  %295 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %296 = call i16 @llvm.bswap.i16(i16 %295) #15
  %conv19.i = zext i16 %296 to i32
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i72, i32 %conv19.i
  %297 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %add.ptr8.i, align 1
  %conv21.i = zext i8 %298 to i32
  %299 = mul nuw nsw i32 %conv21.i, 40
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %299, i32 noundef 3520) #20
  %dpm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %300 = ptrtoint ptr %dpm.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %call8.i.i.i, ptr %dpm.i, align 4
  %tobool.not.i75 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i75, label %if.end.i74.sumo_parse_power_table.exit.thread_crit_edge, label %if.end28.i

if.end.i74.sumo_parse_power_table.exit.thread_crit_edge: ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_power_table.exit.thread

if.end28.i:                                       ; preds = %if.end.i74
  %301 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %add.ptr8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %cmp166.not.i = icmp eq i8 %302, 0
  br i1 %cmp166.not.i, label %if.end28.i.if.end23_crit_edge, label %for.body.lr.ph.i

if.end28.i.if.end23_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %if.end28.i
  %states.i = getelementptr inbounds %struct._StateArray, ptr %add.ptr8.i, i32 0, i32 1
  %nonClockInfo.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 2
  %power_state34.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %clockInfo.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 2
  %ucEntrySize.i = getelementptr inbounds %struct._ClockInfoArray, ptr %add.ptr14.i, i32 0, i32 1
  %ucEntrySize76.i = getelementptr inbounds %struct._NonClockInfoArray, ptr %add.ptr20.i, i32 0, i32 1
  %boot_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc80.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %power_state_offset.0169.i = phi ptr [ %states.i, %for.body.lr.ph.i ], [ %add.ptr79.i, %for.inc80.i.for.body.i_crit_edge ]
  %i.0167.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc81.i, %for.inc80.i.for.body.i_crit_edge ]
  %nonClockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0169.i, i32 0, i32 1
  %303 = ptrtoint ptr %nonClockInfoIndex.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %nonClockInfoIndex.i, align 1
  %conv32.i = zext i8 %304 to i32
  %arrayidx.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i
  %305 = ptrtoint ptr %power_state34.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %power_state34.i, align 4
  %clock_info36.i = getelementptr %struct.radeon_power_state, ptr %306, i32 %i.0167.i, i32 1
  %307 = ptrtoint ptr %clock_info36.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %clock_info36.i, align 4
  %tobool37.not.i = icmp eq ptr %308, null
  br i1 %tobool37.not.i, label %for.body.i.sumo_parse_power_table.exit.thread_crit_edge, label %if.end39.i

for.body.i.sumo_parse_power_table.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_power_table.exit.thread

if.end39.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %309 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %309, i32 noundef 3520, i32 noundef 128) #19
  %cmp41.i = icmp eq ptr %call7.i.i.i, null
  %310 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dpm.i, align 4
  br i1 %cmp41.i, label %if.then43.i, label %if.end47.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @kfree(ptr noundef %311) #15
  br label %sumo_parse_power_table.exit.thread

if.end47.i:                                       ; preds = %if.end39.i
  %ps_priv.i = getelementptr %struct.radeon_ps, ptr %311, i32 %i.0167.i, i32 9
  %312 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %call7.i.i.i, ptr %ps_priv.i, align 4
  %clockInfoIndex.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0169.i, i32 0, i32 2
  %313 = ptrtoint ptr %power_state_offset.0169.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %power_state_offset.0169.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %314)
  %cmp55161.i = icmp eq i8 %314, 0
  br i1 %cmp55161.i, label %if.end47.i.for.end.i_crit_edge, label %if.end63.i

if.end47.i.for.end.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end63.i:                                       ; preds = %if.end47.i
  %315 = ptrtoint ptr %clockInfoIndex.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %clockInfoIndex.i, align 1
  %conv59.i = zext i8 %316 to i32
  %317 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %ucEntrySize.i, align 1
  %conv65.i = zext i8 %318 to i32
  %mul.i = mul nuw nsw i32 %conv65.i, %conv59.i
  %add.ptr66.i = getelementptr i8, ptr %clockInfo.i, i32 %mul.i
  %319 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dpm.i, align 4
  %321 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i = getelementptr %struct.radeon_ps, ptr %320, i32 %i.0167.i, i32 9
  %323 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %ps_priv.i.i.i, align 4
  %325 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_loadN_noabort(i32 %325, i32 2)
  %326 = load i16, ptr %add.ptr66.i, align 1
  %327 = call i16 @llvm.bswap.i16(i16 %326) #15
  %conv.i.i = zext i16 %327 to i32
  %ucEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i, i32 0, i32 1
  %328 = ptrtoint ptr %ucEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %ucEngineClockHigh.i.i, align 1
  %conv2.i.i = zext i8 %329 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %330 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %or.i.i, ptr %324, align 4
  %vddcIndex.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i, i32 0, i32 2
  %331 = ptrtoint ptr %vddcIndex.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %vddcIndex.i.i, align 1
  %conv4.i.i = zext i8 %332 to i32
  %vddc_index.i.i = getelementptr [5 x %struct.sumo_pl], ptr %324, i32 0, i32 0, i32 1
  %333 = ptrtoint ptr %vddc_index.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %conv4.i.i, ptr %vddc_index.i.i, align 4
  %tdpLimit.i.i = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i, i32 0, i32 3
  %334 = ptrtoint ptr %tdpLimit.i.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 2)
  %335 = load i16, ptr %tdpLimit.i.i, align 1
  %conv5.i.i = zext i16 %335 to i32
  %sclk_dpm_tdp_limit.i.i = getelementptr [5 x %struct.sumo_pl], ptr %324, i32 0, i32 0, i32 5
  %336 = ptrtoint ptr %sclk_dpm_tdp_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %conv5.i.i, ptr %sclk_dpm_tdp_limit.i.i, align 4
  %num_levels.i.i = getelementptr inbounds %struct.sumo_ps, ptr %324, i32 0, i32 1
  %337 = ptrtoint ptr %num_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 1, ptr %num_levels.i.i, align 4
  %enable_sclk_ds.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %322, i32 0, i32 22
  %338 = ptrtoint ptr %enable_sclk_ds.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %enable_sclk_ds.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %tobool.not.i.i = icmp eq i8 %339, 0
  br i1 %tobool.not.i.i, label %if.end63.i.sumo_parse_pplib_clock_info.exit.i_crit_edge, label %if.then.i.i76

if.end63.i.sumo_parse_pplib_clock_info.exit.i_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_pplib_clock_info.exit.i

if.then.i.i76:                                    ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #17
  %ds_divider_index.i.i = getelementptr [5 x %struct.sumo_pl], ptr %324, i32 0, i32 0, i32 2
  %340 = ptrtoint ptr %ds_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 5, ptr %ds_divider_index.i.i, align 4
  %ss_divider_index.i.i = getelementptr [5 x %struct.sumo_pl], ptr %324, i32 0, i32 0, i32 3
  %341 = ptrtoint ptr %ss_divider_index.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 4, ptr %ss_divider_index.i.i, align 4
  br label %sumo_parse_pplib_clock_info.exit.i

sumo_parse_pplib_clock_info.exit.i:               ; preds = %if.then.i.i76, %if.end63.i.sumo_parse_pplib_clock_info.exit.i_crit_edge
  %342 = ptrtoint ptr %power_state_offset.0169.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %power_state_offset.0169.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %343)
  %cmp55.i = icmp ult i8 %343, 2
  br i1 %cmp55.i, label %sumo_parse_pplib_clock_info.exit.i.for.end.i_crit_edge, label %if.end63.i.1

sumo_parse_pplib_clock_info.exit.i.for.end.i_crit_edge: ; preds = %sumo_parse_pplib_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end63.i.1:                                     ; preds = %sumo_parse_pplib_clock_info.exit.i
  %arrayidx58.i.1 = getelementptr %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0169.i, i32 1
  %344 = ptrtoint ptr %arrayidx58.i.1 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %arrayidx58.i.1, align 1
  %conv59.i.1 = zext i8 %345 to i32
  %346 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %ucEntrySize.i, align 1
  %conv65.i.1 = zext i8 %347 to i32
  %mul.i.1 = mul nuw nsw i32 %conv65.i.1, %conv59.i.1
  %add.ptr66.i.1 = getelementptr i8, ptr %clockInfo.i, i32 %mul.i.1
  %348 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dpm.i, align 4
  %350 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i.1 = getelementptr %struct.radeon_ps, ptr %349, i32 %i.0167.i, i32 9
  %352 = ptrtoint ptr %ps_priv.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ps_priv.i.i.i.1, align 4
  %arrayidx.i.i.1 = getelementptr [5 x %struct.sumo_pl], ptr %353, i32 0, i32 1
  %354 = ptrtoint ptr %add.ptr66.i.1 to i32
  call void @__asan_loadN_noabort(i32 %354, i32 2)
  %355 = load i16, ptr %add.ptr66.i.1, align 1
  %356 = call i16 @llvm.bswap.i16(i16 %355) #15
  %conv.i.i.1 = zext i16 %356 to i32
  %ucEngineClockHigh.i.i.1 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.1, i32 0, i32 1
  %357 = ptrtoint ptr %ucEngineClockHigh.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %ucEngineClockHigh.i.i.1, align 1
  %conv2.i.i.1 = zext i8 %358 to i32
  %shl.i.i.1 = shl nuw nsw i32 %conv2.i.i.1, 16
  %or.i.i.1 = or i32 %shl.i.i.1, %conv.i.i.1
  %359 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %or.i.i.1, ptr %arrayidx.i.i.1, align 4
  %vddcIndex.i.i.1 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.1, i32 0, i32 2
  %360 = ptrtoint ptr %vddcIndex.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %vddcIndex.i.i.1, align 1
  %conv4.i.i.1 = zext i8 %361 to i32
  %vddc_index.i.i.1 = getelementptr [5 x %struct.sumo_pl], ptr %353, i32 0, i32 1, i32 1
  %362 = ptrtoint ptr %vddc_index.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %conv4.i.i.1, ptr %vddc_index.i.i.1, align 4
  %tdpLimit.i.i.1 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.1, i32 0, i32 3
  %363 = ptrtoint ptr %tdpLimit.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %363, i32 2)
  %364 = load i16, ptr %tdpLimit.i.i.1, align 1
  %conv5.i.i.1 = zext i16 %364 to i32
  %sclk_dpm_tdp_limit.i.i.1 = getelementptr [5 x %struct.sumo_pl], ptr %353, i32 0, i32 1, i32 5
  %365 = ptrtoint ptr %sclk_dpm_tdp_limit.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %conv5.i.i.1, ptr %sclk_dpm_tdp_limit.i.i.1, align 4
  %num_levels.i.i.1 = getelementptr inbounds %struct.sumo_ps, ptr %353, i32 0, i32 1
  %366 = ptrtoint ptr %num_levels.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 2, ptr %num_levels.i.i.1, align 4
  %enable_sclk_ds.i.i.1 = getelementptr inbounds %struct.sumo_power_info, ptr %351, i32 0, i32 22
  %367 = ptrtoint ptr %enable_sclk_ds.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %enable_sclk_ds.i.i.1, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %368)
  %tobool.not.i.i.1 = icmp eq i8 %368, 0
  br i1 %tobool.not.i.i.1, label %if.end63.i.1.sumo_parse_pplib_clock_info.exit.i.1_crit_edge, label %if.then.i.i76.1

if.end63.i.1.sumo_parse_pplib_clock_info.exit.i.1_crit_edge: ; preds = %if.end63.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_pplib_clock_info.exit.i.1

if.then.i.i76.1:                                  ; preds = %if.end63.i.1
  call void @__sanitizer_cov_trace_pc() #17
  %ds_divider_index.i.i.1 = getelementptr [5 x %struct.sumo_pl], ptr %353, i32 0, i32 1, i32 2
  %369 = ptrtoint ptr %ds_divider_index.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 5, ptr %ds_divider_index.i.i.1, align 4
  %ss_divider_index.i.i.1 = getelementptr [5 x %struct.sumo_pl], ptr %353, i32 0, i32 1, i32 3
  %370 = ptrtoint ptr %ss_divider_index.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 4, ptr %ss_divider_index.i.i.1, align 4
  br label %sumo_parse_pplib_clock_info.exit.i.1

sumo_parse_pplib_clock_info.exit.i.1:             ; preds = %if.then.i.i76.1, %if.end63.i.1.sumo_parse_pplib_clock_info.exit.i.1_crit_edge
  %371 = ptrtoint ptr %power_state_offset.0169.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %power_state_offset.0169.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %372)
  %cmp55.i.1 = icmp ult i8 %372, 3
  br i1 %cmp55.i.1, label %sumo_parse_pplib_clock_info.exit.i.1.for.end.i_crit_edge, label %if.end63.i.2

sumo_parse_pplib_clock_info.exit.i.1.for.end.i_crit_edge: ; preds = %sumo_parse_pplib_clock_info.exit.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end63.i.2:                                     ; preds = %sumo_parse_pplib_clock_info.exit.i.1
  %arrayidx58.i.2 = getelementptr %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0169.i, i32 1, i32 1
  %373 = ptrtoint ptr %arrayidx58.i.2 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx58.i.2, align 1
  %conv59.i.2 = zext i8 %374 to i32
  %375 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %ucEntrySize.i, align 1
  %conv65.i.2 = zext i8 %376 to i32
  %mul.i.2 = mul nuw nsw i32 %conv65.i.2, %conv59.i.2
  %add.ptr66.i.2 = getelementptr i8, ptr %clockInfo.i, i32 %mul.i.2
  %377 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %dpm.i, align 4
  %379 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i.2 = getelementptr %struct.radeon_ps, ptr %378, i32 %i.0167.i, i32 9
  %381 = ptrtoint ptr %ps_priv.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %ps_priv.i.i.i.2, align 4
  %arrayidx.i.i.2 = getelementptr [5 x %struct.sumo_pl], ptr %382, i32 0, i32 2
  %383 = ptrtoint ptr %add.ptr66.i.2 to i32
  call void @__asan_loadN_noabort(i32 %383, i32 2)
  %384 = load i16, ptr %add.ptr66.i.2, align 1
  %385 = call i16 @llvm.bswap.i16(i16 %384) #15
  %conv.i.i.2 = zext i16 %385 to i32
  %ucEngineClockHigh.i.i.2 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.2, i32 0, i32 1
  %386 = ptrtoint ptr %ucEngineClockHigh.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %ucEngineClockHigh.i.i.2, align 1
  %conv2.i.i.2 = zext i8 %387 to i32
  %shl.i.i.2 = shl nuw nsw i32 %conv2.i.i.2, 16
  %or.i.i.2 = or i32 %shl.i.i.2, %conv.i.i.2
  %388 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %or.i.i.2, ptr %arrayidx.i.i.2, align 4
  %vddcIndex.i.i.2 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.2, i32 0, i32 2
  %389 = ptrtoint ptr %vddcIndex.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %vddcIndex.i.i.2, align 1
  %conv4.i.i.2 = zext i8 %390 to i32
  %vddc_index.i.i.2 = getelementptr [5 x %struct.sumo_pl], ptr %382, i32 0, i32 2, i32 1
  %391 = ptrtoint ptr %vddc_index.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %conv4.i.i.2, ptr %vddc_index.i.i.2, align 4
  %tdpLimit.i.i.2 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.2, i32 0, i32 3
  %392 = ptrtoint ptr %tdpLimit.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %392, i32 2)
  %393 = load i16, ptr %tdpLimit.i.i.2, align 1
  %conv5.i.i.2 = zext i16 %393 to i32
  %sclk_dpm_tdp_limit.i.i.2 = getelementptr [5 x %struct.sumo_pl], ptr %382, i32 0, i32 2, i32 5
  %394 = ptrtoint ptr %sclk_dpm_tdp_limit.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %conv5.i.i.2, ptr %sclk_dpm_tdp_limit.i.i.2, align 4
  %num_levels.i.i.2 = getelementptr inbounds %struct.sumo_ps, ptr %382, i32 0, i32 1
  %395 = ptrtoint ptr %num_levels.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 3, ptr %num_levels.i.i.2, align 4
  %enable_sclk_ds.i.i.2 = getelementptr inbounds %struct.sumo_power_info, ptr %380, i32 0, i32 22
  %396 = ptrtoint ptr %enable_sclk_ds.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %enable_sclk_ds.i.i.2, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %tobool.not.i.i.2 = icmp eq i8 %397, 0
  br i1 %tobool.not.i.i.2, label %if.end63.i.2.sumo_parse_pplib_clock_info.exit.i.2_crit_edge, label %if.then.i.i76.2

if.end63.i.2.sumo_parse_pplib_clock_info.exit.i.2_crit_edge: ; preds = %if.end63.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_pplib_clock_info.exit.i.2

if.then.i.i76.2:                                  ; preds = %if.end63.i.2
  call void @__sanitizer_cov_trace_pc() #17
  %ds_divider_index.i.i.2 = getelementptr [5 x %struct.sumo_pl], ptr %382, i32 0, i32 2, i32 2
  %398 = ptrtoint ptr %ds_divider_index.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 5, ptr %ds_divider_index.i.i.2, align 4
  %ss_divider_index.i.i.2 = getelementptr [5 x %struct.sumo_pl], ptr %382, i32 0, i32 2, i32 3
  %399 = ptrtoint ptr %ss_divider_index.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 4, ptr %ss_divider_index.i.i.2, align 4
  br label %sumo_parse_pplib_clock_info.exit.i.2

sumo_parse_pplib_clock_info.exit.i.2:             ; preds = %if.then.i.i76.2, %if.end63.i.2.sumo_parse_pplib_clock_info.exit.i.2_crit_edge
  %400 = ptrtoint ptr %power_state_offset.0169.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %power_state_offset.0169.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %401)
  %cmp55.i.2 = icmp ult i8 %401, 4
  br i1 %cmp55.i.2, label %sumo_parse_pplib_clock_info.exit.i.2.for.end.i_crit_edge, label %if.end63.i.3

sumo_parse_pplib_clock_info.exit.i.2.for.end.i_crit_edge: ; preds = %sumo_parse_pplib_clock_info.exit.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end63.i.3:                                     ; preds = %sumo_parse_pplib_clock_info.exit.i.2
  %arrayidx58.i.3 = getelementptr %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0169.i, i32 1, i32 2
  %402 = ptrtoint ptr %arrayidx58.i.3 to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx58.i.3, align 1
  %conv59.i.3 = zext i8 %403 to i32
  %404 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %ucEntrySize.i, align 1
  %conv65.i.3 = zext i8 %405 to i32
  %mul.i.3 = mul nuw nsw i32 %conv65.i.3, %conv59.i.3
  %add.ptr66.i.3 = getelementptr i8, ptr %clockInfo.i, i32 %mul.i.3
  %406 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %dpm.i, align 4
  %408 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i.3 = getelementptr %struct.radeon_ps, ptr %407, i32 %i.0167.i, i32 9
  %410 = ptrtoint ptr %ps_priv.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ps_priv.i.i.i.3, align 4
  %arrayidx.i.i.3 = getelementptr [5 x %struct.sumo_pl], ptr %411, i32 0, i32 3
  %412 = ptrtoint ptr %add.ptr66.i.3 to i32
  call void @__asan_loadN_noabort(i32 %412, i32 2)
  %413 = load i16, ptr %add.ptr66.i.3, align 1
  %414 = call i16 @llvm.bswap.i16(i16 %413) #15
  %conv.i.i.3 = zext i16 %414 to i32
  %ucEngineClockHigh.i.i.3 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.3, i32 0, i32 1
  %415 = ptrtoint ptr %ucEngineClockHigh.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %ucEngineClockHigh.i.i.3, align 1
  %conv2.i.i.3 = zext i8 %416 to i32
  %shl.i.i.3 = shl nuw nsw i32 %conv2.i.i.3, 16
  %or.i.i.3 = or i32 %shl.i.i.3, %conv.i.i.3
  %417 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %or.i.i.3, ptr %arrayidx.i.i.3, align 4
  %vddcIndex.i.i.3 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.3, i32 0, i32 2
  %418 = ptrtoint ptr %vddcIndex.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %vddcIndex.i.i.3, align 1
  %conv4.i.i.3 = zext i8 %419 to i32
  %vddc_index.i.i.3 = getelementptr [5 x %struct.sumo_pl], ptr %411, i32 0, i32 3, i32 1
  %420 = ptrtoint ptr %vddc_index.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 %conv4.i.i.3, ptr %vddc_index.i.i.3, align 4
  %tdpLimit.i.i.3 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.3, i32 0, i32 3
  %421 = ptrtoint ptr %tdpLimit.i.i.3 to i32
  call void @__asan_loadN_noabort(i32 %421, i32 2)
  %422 = load i16, ptr %tdpLimit.i.i.3, align 1
  %conv5.i.i.3 = zext i16 %422 to i32
  %sclk_dpm_tdp_limit.i.i.3 = getelementptr [5 x %struct.sumo_pl], ptr %411, i32 0, i32 3, i32 5
  %423 = ptrtoint ptr %sclk_dpm_tdp_limit.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %conv5.i.i.3, ptr %sclk_dpm_tdp_limit.i.i.3, align 4
  %num_levels.i.i.3 = getelementptr inbounds %struct.sumo_ps, ptr %411, i32 0, i32 1
  %424 = ptrtoint ptr %num_levels.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 4, ptr %num_levels.i.i.3, align 4
  %enable_sclk_ds.i.i.3 = getelementptr inbounds %struct.sumo_power_info, ptr %409, i32 0, i32 22
  %425 = ptrtoint ptr %enable_sclk_ds.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %enable_sclk_ds.i.i.3, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %426)
  %tobool.not.i.i.3 = icmp eq i8 %426, 0
  br i1 %tobool.not.i.i.3, label %if.end63.i.3.sumo_parse_pplib_clock_info.exit.i.3_crit_edge, label %if.then.i.i76.3

if.end63.i.3.sumo_parse_pplib_clock_info.exit.i.3_crit_edge: ; preds = %if.end63.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_parse_pplib_clock_info.exit.i.3

if.then.i.i76.3:                                  ; preds = %if.end63.i.3
  call void @__sanitizer_cov_trace_pc() #17
  %ds_divider_index.i.i.3 = getelementptr [5 x %struct.sumo_pl], ptr %411, i32 0, i32 3, i32 2
  %427 = ptrtoint ptr %ds_divider_index.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 5, ptr %ds_divider_index.i.i.3, align 4
  %ss_divider_index.i.i.3 = getelementptr [5 x %struct.sumo_pl], ptr %411, i32 0, i32 3, i32 3
  %428 = ptrtoint ptr %ss_divider_index.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 4, ptr %ss_divider_index.i.i.3, align 4
  br label %sumo_parse_pplib_clock_info.exit.i.3

sumo_parse_pplib_clock_info.exit.i.3:             ; preds = %if.then.i.i76.3, %if.end63.i.3.sumo_parse_pplib_clock_info.exit.i.3_crit_edge
  %429 = ptrtoint ptr %power_state_offset.0169.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %power_state_offset.0169.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %430)
  %cmp55.i.3 = icmp ult i8 %430, 5
  br i1 %cmp55.i.3, label %sumo_parse_pplib_clock_info.exit.i.3.for.end.i_crit_edge, label %if.end63.i.4

sumo_parse_pplib_clock_info.exit.i.3.for.end.i_crit_edge: ; preds = %sumo_parse_pplib_clock_info.exit.i.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end63.i.4:                                     ; preds = %sumo_parse_pplib_clock_info.exit.i.3
  %arrayidx58.i.4 = getelementptr %struct._ATOM_PPLIB_STATE_V2, ptr %power_state_offset.0169.i, i32 2
  %431 = ptrtoint ptr %arrayidx58.i.4 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %arrayidx58.i.4, align 1
  %conv59.i.4 = zext i8 %432 to i32
  %433 = ptrtoint ptr %ucEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %ucEntrySize.i, align 1
  %conv65.i.4 = zext i8 %434 to i32
  %mul.i.4 = mul nuw nsw i32 %conv65.i.4, %conv59.i.4
  %add.ptr66.i.4 = getelementptr i8, ptr %clockInfo.i, i32 %mul.i.4
  %435 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dpm.i, align 4
  %437 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %priv, align 4
  %ps_priv.i.i.i.4 = getelementptr %struct.radeon_ps, ptr %436, i32 %i.0167.i, i32 9
  %439 = ptrtoint ptr %ps_priv.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %ps_priv.i.i.i.4, align 4
  %arrayidx.i.i.4 = getelementptr [5 x %struct.sumo_pl], ptr %440, i32 0, i32 4
  %441 = ptrtoint ptr %add.ptr66.i.4 to i32
  call void @__asan_loadN_noabort(i32 %441, i32 2)
  %442 = load i16, ptr %add.ptr66.i.4, align 1
  %443 = call i16 @llvm.bswap.i16(i16 %442) #15
  %conv.i.i.4 = zext i16 %443 to i32
  %ucEngineClockHigh.i.i.4 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.4, i32 0, i32 1
  %444 = ptrtoint ptr %ucEngineClockHigh.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %ucEngineClockHigh.i.i.4, align 1
  %conv2.i.i.4 = zext i8 %445 to i32
  %shl.i.i.4 = shl nuw nsw i32 %conv2.i.i.4, 16
  %or.i.i.4 = or i32 %shl.i.i.4, %conv.i.i.4
  %446 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %or.i.i.4, ptr %arrayidx.i.i.4, align 4
  %vddcIndex.i.i.4 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.4, i32 0, i32 2
  %447 = ptrtoint ptr %vddcIndex.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %vddcIndex.i.i.4, align 1
  %conv4.i.i.4 = zext i8 %448 to i32
  %vddc_index.i.i.4 = getelementptr [5 x %struct.sumo_pl], ptr %440, i32 0, i32 4, i32 1
  %449 = ptrtoint ptr %vddc_index.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %conv4.i.i.4, ptr %vddc_index.i.i.4, align 4
  %tdpLimit.i.i.4 = getelementptr inbounds %struct._ATOM_PPLIB_SUMO_CLOCK_INFO, ptr %add.ptr66.i.4, i32 0, i32 3
  %450 = ptrtoint ptr %tdpLimit.i.i.4 to i32
  call void @__asan_loadN_noabort(i32 %450, i32 2)
  %451 = load i16, ptr %tdpLimit.i.i.4, align 1
  %conv5.i.i.4 = zext i16 %451 to i32
  %sclk_dpm_tdp_limit.i.i.4 = getelementptr [5 x %struct.sumo_pl], ptr %440, i32 0, i32 4, i32 5
  %452 = ptrtoint ptr %sclk_dpm_tdp_limit.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %conv5.i.i.4, ptr %sclk_dpm_tdp_limit.i.i.4, align 4
  %num_levels.i.i.4 = getelementptr inbounds %struct.sumo_ps, ptr %440, i32 0, i32 1
  %453 = ptrtoint ptr %num_levels.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 5, ptr %num_levels.i.i.4, align 4
  %enable_sclk_ds.i.i.4 = getelementptr inbounds %struct.sumo_power_info, ptr %438, i32 0, i32 22
  %454 = ptrtoint ptr %enable_sclk_ds.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %enable_sclk_ds.i.i.4, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %tobool.not.i.i.4 = icmp eq i8 %455, 0
  br i1 %tobool.not.i.i.4, label %if.end63.i.4.for.end.i_crit_edge, label %if.then.i.i76.4

if.end63.i.4.for.end.i_crit_edge:                 ; preds = %if.end63.i.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.then.i.i76.4:                                  ; preds = %if.end63.i.4
  call void @__sanitizer_cov_trace_pc() #17
  %ds_divider_index.i.i.4 = getelementptr [5 x %struct.sumo_pl], ptr %440, i32 0, i32 4, i32 2
  %456 = ptrtoint ptr %ds_divider_index.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 5, ptr %ds_divider_index.i.i.4, align 4
  %ss_divider_index.i.i.4 = getelementptr [5 x %struct.sumo_pl], ptr %440, i32 0, i32 4, i32 3
  %457 = ptrtoint ptr %ss_divider_index.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 4, ptr %ss_divider_index.i.i.4, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %if.then.i.i76.4, %if.end63.i.4.for.end.i_crit_edge, %sumo_parse_pplib_clock_info.exit.i.3.for.end.i_crit_edge, %sumo_parse_pplib_clock_info.exit.i.2.for.end.i_crit_edge, %sumo_parse_pplib_clock_info.exit.i.1.for.end.i_crit_edge, %sumo_parse_pplib_clock_info.exit.i.for.end.i_crit_edge, %if.end47.i.for.end.i_crit_edge
  %458 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dpm.i, align 4
  %arrayidx75.i = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i
  %460 = ptrtoint ptr %ucEntrySize76.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %ucEntrySize76.i, align 1
  %ps_priv.i.i143.i = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i, i32 9
  %462 = ptrtoint ptr %ps_priv.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %ps_priv.i.i143.i, align 4
  %ulCapsAndSettings.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 3
  %464 = ptrtoint ptr %ulCapsAndSettings.i.i to i32
  call void @__asan_loadN_noabort(i32 %464, i32 4)
  %465 = load i32, ptr %ulCapsAndSettings.i.i, align 1
  %466 = call i32 @llvm.bswap.i32(i32 %465) #15
  %467 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %466, ptr %arrayidx75.i, align 4
  %468 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %468, i32 2)
  %469 = load i16, ptr %arrayidx.i, align 1
  %470 = call i16 @llvm.bswap.i16(i16 %469) #15
  %conv.i144.i = zext i16 %470 to i32
  %class.i.i = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i, i32 1
  %471 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %conv.i144.i, ptr %class.i.i, align 4
  %usClassification2.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 5
  %472 = ptrtoint ptr %usClassification2.i.i to i32
  call void @__asan_loadN_noabort(i32 %472, i32 2)
  %473 = load i16, ptr %usClassification2.i.i, align 1
  %474 = call i16 @llvm.bswap.i16(i16 %473) #15
  %conv1.i.i = zext i16 %474 to i32
  %class2.i.i = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i, i32 2
  %475 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 %conv1.i.i, ptr %class2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %461)
  %cmp.i.i = icmp ugt i8 %461, 12
  br i1 %cmp.i.i, label %if.then.i145.i, label %if.else.i.i

if.then.i145.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %ulVCLK.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 6
  %476 = ptrtoint ptr %ulVCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %476, i32 4)
  %477 = load i32, ptr %ulVCLK.i.i, align 1
  %478 = call i32 @llvm.bswap.i32(i32 %477) #15
  %vclk.i.i = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i, i32 3
  %479 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %478, ptr %vclk.i.i, align 4
  %ulDCLK.i.i = getelementptr [1 x %struct._ATOM_PPLIB_NONCLOCK_INFO], ptr %nonClockInfo.i, i32 0, i32 %conv32.i, i32 7
  %480 = ptrtoint ptr %ulDCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %480, i32 4)
  %481 = load i32, ptr %ulDCLK.i.i, align 1
  %482 = call i32 @llvm.bswap.i32(i32 %481) #15
  br label %if.end.i.i77

if.else.i.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %vclk4.i.i = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i, i32 3
  %483 = ptrtoint ptr %vclk4.i.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 0, ptr %vclk4.i.i, align 4
  br label %if.end.i.i77

if.end.i.i77:                                     ; preds = %if.else.i.i, %if.then.i145.i
  %.sink.i.i = phi i32 [ %482, %if.then.i145.i ], [ 0, %if.else.i.i ]
  %484 = getelementptr %struct.radeon_ps, ptr %459, i32 %i.0167.i, i32 4
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 %.sink.i.i, ptr %484, align 4
  %and.i.i = and i32 %conv.i144.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i146.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i146.i, label %if.end.i.i77.if.end8.i.i_crit_edge, label %if.then7.i.i78

if.end.i.i77.if.end8.i.i_crit_edge:               ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then7.i.i78:                                   ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #17
  %486 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr %arrayidx75.i, ptr %boot_ps.i.i, align 4
  %487 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %priv, align 4
  %num_levels.i.i.i = getelementptr inbounds %struct.sumo_ps, ptr %463, i32 0, i32 1
  %489 = ptrtoint ptr %num_levels.i.i.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 1, ptr %num_levels.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.sumo_ps, ptr %463, i32 0, i32 2
  %490 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 0, ptr %flags.i.i.i, align 4
  %boot_pl.i.i.i = getelementptr inbounds %struct.sumo_power_info, ptr %488, i32 0, i32 13
  %491 = call ptr @memcpy(ptr %463, ptr %boot_pl.i.i.i, i32 24)
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i78, %if.end.i.i77.if.end8.i.i_crit_edge
  %492 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %class.i.i, align 4
  %and10.i.i = and i32 %493, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end8.i.i.for.inc80.i_crit_edge, label %if.then12.i.i

if.end8.i.i.for.inc80.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc80.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %494 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr %arrayidx75.i, ptr %uvd_ps.i.i, align 4
  br label %for.inc80.i

for.inc80.i:                                      ; preds = %if.then12.i.i, %if.end8.i.i.for.inc80.i_crit_edge
  %495 = ptrtoint ptr %power_state_offset.0169.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %power_state_offset.0169.i, align 1
  %conv78.i = zext i8 %496 to i32
  %add.i = add nuw nsw i32 %conv78.i, 2
  %add.ptr79.i = getelementptr i8, ptr %power_state_offset.0169.i, i32 %add.i
  %inc81.i = add nuw nsw i32 %i.0167.i, 1
  %497 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %add.ptr8.i, align 1
  %conv30.i = zext i8 %498 to i32
  %cmp.i79 = icmp ult i32 %inc81.i, %conv30.i
  br i1 %cmp.i79, label %for.inc80.i.for.body.i_crit_edge, label %if.end23.loopexit

for.inc80.i.for.body.i_crit_edge:                 ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

sumo_parse_power_table.exit.thread:               ; preds = %if.then43.i, %for.body.i.sumo_parse_power_table.exit.thread_crit_edge, %if.end.i74.sumo_parse_power_table.exit.thread_crit_edge, %if.end19.sumo_parse_power_table.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ -12, %if.then43.i ], [ -12, %if.end.i74.sumo_parse_power_table.exit.thread_crit_edge ], [ -22, %if.end19.sumo_parse_power_table.exit.thread_crit_edge ], [ -22, %for.body.i.sumo_parse_power_table.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i68) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i67) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i66) #15
  br label %cleanup

if.end23.loopexit:                                ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv30.i.le = zext i8 %498 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.end23.loopexit, %if.end28.i.if.end23_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end28.i.if.end23_crit_edge ], [ %conv30.i.le, %if.end23.loopexit ]
  %num_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %499 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %.lcssa.i, ptr %num_ps.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i68) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i67) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i66) #15
  %pasi = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 1
  %500 = ptrtoint ptr %pasi to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 400000, ptr %pasi, align 4
  %501 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 1000, ptr %call7.i.i, align 8
  %htc_tmp_lmt = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 4
  %502 = ptrtoint ptr %htc_tmp_lmt to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %htc_tmp_lmt, align 2
  %conv = zext i8 %503 to i32
  %thermal_auto_throttling = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 8
  %504 = ptrtoint ptr %thermal_auto_throttling to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %conv, ptr %thermal_auto_throttling, align 8
  %enable_boost = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 11, i32 19
  %505 = ptrtoint ptr %enable_boost to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %enable_boost, align 4, !range !45
  %enable_boost26 = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 26
  %507 = ptrtoint ptr %enable_boost26 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %506, ptr %enable_boost26, align 1
  %enable_dpm = getelementptr inbounds %struct.sumo_power_info, ptr %call7.i.i, i32 0, i32 25
  %508 = ptrtoint ptr %enable_dpm to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 1, ptr %enable_dpm, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %sumo_parse_power_table.exit.thread, %if.end15.cleanup_crit_edge, %sumo_parse_sys_info_table.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %sumo_parse_sys_info_table.exit ], [ %call16, %if.end15.cleanup_crit_edge ], [ %retval.2.i.ph, %sumo_parse_power_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @r600_dpm_print_class_info(i32 noundef %3, i32 noundef %5) #15
  %6 = ptrtoint ptr %rps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rps, align 4
  tail call void @r600_dpm_print_cap_info(i32 noundef %7) #15
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %rps, i32 0, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %11) #18
  %num_levels = getelementptr inbounds %struct.sumo_ps, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21.not = icmp eq i32 %13, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  br label %for.body

for.body:                                         ; preds = %sumo_convert_voltage_index_to_value.exit.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sumo_convert_voltage_index_to_value.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.sumo_pl], ptr %1, i32 0, i32 %i.022
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %vddc_index = getelementptr [5 x %struct.sumo_pl], ptr %1, i32 0, i32 %i.022, i32 1
  %16 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vddc_index, align 4
  %18 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.sumo_power_info, ptr %19, i32 0, i32 11, i32 8
  %20 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp21.not.i.i, label %for.body.for.end.i.i_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.for.end.i.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sumo_power_info, ptr %19, i32 0, i32 11, i32 8, i32 1, i32 %i.022.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i.i)
  %cmp2.i.i = icmp eq i32 %17, %conv.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge, label %for.inc.i.i

for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_convert_voltage_index_to_value.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.for.end.i.i_crit_edge
  %sub.i.i = add i32 %21, -1
  br label %sumo_convert_voltage_index_to_value.exit

sumo_convert_voltage_index_to_value.exit:         ; preds = %for.end.i.i, %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge
  %i.0.pn.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.022.i.i, %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge ]
  %retval.0.in.in.i.i = getelementptr %struct.sumo_power_info, ptr %19, i32 0, i32 11, i32 8, i32 1, i32 %i.0.pn.i.i, i32 1
  %24 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %retval.0.in.i.i = load i16, ptr %retval.0.in.in.i.i, align 2
  %retval.0.i.i = zext i16 %retval.0.in.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %retval.0.in.i.i)
  %cmp.i = icmp ugt i16 %retval.0.in.i.i, 124
  %mul.neg.i = mul nsw i32 %retval.0.i.i, -125
  %add.i = add nsw i32 %mul.neg.i, 15505
  %div.i = udiv i32 %add.i, 10
  %div.i.op = and i32 %div.i, 65535
  %conv = select i1 %cmp.i, i32 0, i32 %div.i.op
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.022, i32 noundef %15, i32 noundef %conv) #18
  %inc = add nuw i32 %i.022, 1
  %25 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_levels, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %sumo_convert_voltage_index_to_value.exit.for.body_crit_edge, label %sumo_convert_voltage_index_to_value.exit.for.end_crit_edge

sumo_convert_voltage_index_to_value.exit.for.end_crit_edge: ; preds = %sumo_convert_voltage_index_to_value.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

sumo_convert_voltage_index_to_value.exit.for.body_crit_edge: ; preds = %sumo_convert_voltage_index_to_value.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %sumo_convert_voltage_index_to_value.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_dpm_debugfs_print_current_performance_level(ptr nocapture noundef readonly %rdev, ptr noundef %m) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %and = lshr i32 %7, 15
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp eq i32 %shr, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %boost_pl = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 14
  %vclk = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 3
  %8 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 4
  %10 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %9, i32 noundef %11) #15
  %12 = ptrtoint ptr %boost_pl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boost_pl, align 4
  %vddc_index = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vddc_index, align 4
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.sumo_power_info, ptr %17, i32 0, i32 11, i32 8
  %18 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp21.not.i.i = icmp eq i32 %19, 0
  br i1 %cmp21.not.i.i, label %if.then.for.end.i.i_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.for.end.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sumo_power_info, ptr %17, i32 0, i32 11, i32 8, i32 1, i32 %i.022.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv.i.i)
  %cmp2.i.i = icmp eq i32 %15, %conv.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge, label %for.inc.i.i

for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_convert_voltage_index_to_value.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %19
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.for.end.i.i_crit_edge
  %sub.i.i = add i32 %19, -1
  br label %sumo_convert_voltage_index_to_value.exit

sumo_convert_voltage_index_to_value.exit:         ; preds = %for.end.i.i, %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge
  %i.0.pn.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.022.i.i, %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge ]
  %retval.0.in.in.i.i = getelementptr %struct.sumo_power_info, ptr %17, i32 0, i32 11, i32 8, i32 1, i32 %i.0.pn.i.i, i32 1
  %22 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %retval.0.in.i.i = load i16, ptr %retval.0.in.in.i.i, align 2
  %retval.0.i.i = zext i16 %retval.0.in.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %retval.0.in.i.i)
  %cmp.i36 = icmp ugt i16 %retval.0.in.i.i, 124
  %mul.neg.i = mul nsw i32 %retval.0.i.i, -125
  %add.i = add nsw i32 %mul.neg.i, 15505
  %div.i = udiv i32 %add.i, 10
  %div.i.op = and i32 %div.i, 65535
  %conv = select i1 %cmp.i36, i32 0, i32 %div.i.op
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef 7, i32 noundef %13, i32 noundef %conv) #15
  br label %if.end14

if.else:                                          ; preds = %entry
  %num_levels = getelementptr inbounds %struct.sumo_ps, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %24)
  %cmp4.not = icmp ult i32 %shr, %24
  br i1 %cmp4.not, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %shr) #15
  br label %if.end14

if.else7:                                         ; preds = %if.else
  %arrayidx = getelementptr [5 x %struct.sumo_pl], ptr %3, i32 0, i32 %shr
  %vclk8 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 3
  %25 = ptrtoint ptr %vclk8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vclk8, align 4
  %dclk9 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 4
  %27 = ptrtoint ptr %dclk9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dclk9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %26, i32 noundef %28) #15
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %vddc_index11 = getelementptr [5 x %struct.sumo_pl], ptr %3, i32 0, i32 %shr, i32 1
  %31 = ptrtoint ptr %vddc_index11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vddc_index11, align 4
  %33 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i, align 4
  %vid_mapping_table.i38 = getelementptr inbounds %struct.sumo_power_info, ptr %34, i32 0, i32 11, i32 8
  %35 = ptrtoint ptr %vid_mapping_table.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vid_mapping_table.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp21.not.i.i39 = icmp eq i32 %36, 0
  br i1 %cmp21.not.i.i39, label %if.else7.for.end.i.i49_crit_edge, label %if.else7.for.body.i.i44_crit_edge

if.else7.for.body.i.i44_crit_edge:                ; preds = %if.else7
  br label %for.body.i.i44

if.else7.for.end.i.i49_crit_edge:                 ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i49

for.body.i.i44:                                   ; preds = %for.inc.i.i47.for.body.i.i44_crit_edge, %if.else7.for.body.i.i44_crit_edge
  %i.022.i.i40 = phi i32 [ %inc.i.i45, %for.inc.i.i47.for.body.i.i44_crit_edge ], [ 0, %if.else7.for.body.i.i44_crit_edge ]
  %arrayidx.i.i41 = getelementptr %struct.sumo_power_info, ptr %34, i32 0, i32 11, i32 8, i32 1, i32 %i.022.i.i40
  %37 = ptrtoint ptr %arrayidx.i.i41 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i.i41, align 4
  %conv.i.i42 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv.i.i42)
  %cmp2.i.i43 = icmp eq i32 %32, %conv.i.i42
  br i1 %cmp2.i.i43, label %for.body.i.i44.sumo_convert_voltage_index_to_value.exit60_crit_edge, label %for.inc.i.i47

for.body.i.i44.sumo_convert_voltage_index_to_value.exit60_crit_edge: ; preds = %for.body.i.i44
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_convert_voltage_index_to_value.exit60

for.inc.i.i47:                                    ; preds = %for.body.i.i44
  %inc.i.i45 = add nuw i32 %i.022.i.i40, 1
  %exitcond.not.i.i46 = icmp eq i32 %inc.i.i45, %36
  br i1 %exitcond.not.i.i46, label %for.inc.i.i47.for.end.i.i49_crit_edge, label %for.inc.i.i47.for.body.i.i44_crit_edge

for.inc.i.i47.for.body.i.i44_crit_edge:           ; preds = %for.inc.i.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i44

for.inc.i.i47.for.end.i.i49_crit_edge:            ; preds = %for.inc.i.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i49

for.end.i.i49:                                    ; preds = %for.inc.i.i47.for.end.i.i49_crit_edge, %if.else7.for.end.i.i49_crit_edge
  %sub.i.i48 = add i32 %36, -1
  br label %sumo_convert_voltage_index_to_value.exit60

sumo_convert_voltage_index_to_value.exit60:       ; preds = %for.end.i.i49, %for.body.i.i44.sumo_convert_voltage_index_to_value.exit60_crit_edge
  %i.0.pn.i.i50 = phi i32 [ %sub.i.i48, %for.end.i.i49 ], [ %i.022.i.i40, %for.body.i.i44.sumo_convert_voltage_index_to_value.exit60_crit_edge ]
  %retval.0.in.in.i.i51 = getelementptr %struct.sumo_power_info, ptr %34, i32 0, i32 11, i32 8, i32 1, i32 %i.0.pn.i.i50, i32 1
  %39 = ptrtoint ptr %retval.0.in.in.i.i51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %retval.0.in.i.i52 = load i16, ptr %retval.0.in.in.i.i51, align 2
  %retval.0.i.i53 = zext i16 %retval.0.in.i.i52 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %retval.0.in.i.i52)
  %cmp.i54 = icmp ugt i16 %retval.0.in.i.i52, 124
  %mul.neg.i55 = mul nsw i32 %retval.0.i.i53, -125
  %add.i56 = add nsw i32 %mul.neg.i55, 15505
  %div.i57 = udiv i32 %add.i56, 10
  %div.i57.op = and i32 %div.i57, 65535
  %conv13 = select i1 %cmp.i54, i32 0, i32 %div.i57.op
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %shr, i32 noundef %30, i32 noundef %conv13) #15
  br label %if.end14

if.end14:                                         ; preds = %sumo_convert_voltage_index_to_value.exit60, %if.then6, %sumo_convert_voltage_index_to_value.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_get_current_sclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %and = lshr i32 %7, 15
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp eq i32 %shr, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %boost_pl = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 14
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %num_levels = getelementptr inbounds %struct.sumo_ps, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp3.not = icmp ult i32 %shr, %9
  br i1 %cmp3.not, label %if.else5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [5 x %struct.sumo_pl], ptr %3, i32 0, i32 %shr
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else5, %if.then
  %arrayidx.sink = phi ptr [ %arrayidx, %if.else5 ], [ %boost_pl, %if.then ]
  %10 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %11, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sumo_dpm_get_current_mclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bootup_uma_clk = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %bootup_uma_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bootup_uma_clk, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @sumo_dpm_get_current_vddc(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1644
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %and = lshr i32 %7, 15
  %shr = and i32 %and, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %shr)
  %cmp = icmp eq i32 %shr, 7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %boost_pl = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 14
  br label %if.end6

if.else:                                          ; preds = %entry
  %num_levels = getelementptr inbounds %struct.sumo_ps, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp3.not = icmp ult i32 %shr, %9
  br i1 %cmp3.not, label %if.else5, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr [5 x %struct.sumo_pl], ptr %3, i32 0, i32 %shr
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then
  %pl.0 = phi ptr [ %boost_pl, %if.then ], [ %arrayidx, %if.else5 ]
  %vddc_index = getelementptr inbounds %struct.sumo_pl, ptr %pl.0, i32 0, i32 1
  %10 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vddc_index, align 4
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %vid_mapping_table.i = getelementptr inbounds %struct.sumo_power_info, ptr %13, i32 0, i32 11, i32 8
  %14 = ptrtoint ptr %vid_mapping_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vid_mapping_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp21.not.i.i, label %if.end6.for.end.i.i_crit_edge, label %if.end6.for.body.i.i_crit_edge

if.end6.for.body.i.i_crit_edge:                   ; preds = %if.end6
  br label %for.body.i.i

if.end6.for.end.i.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sumo_power_info, ptr %13, i32 0, i32 11, i32 8, i32 1, i32 %i.022.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i.i)
  %cmp2.i.i = icmp eq i32 %11, %conv.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge, label %for.inc.i.i

for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_convert_voltage_index_to_value.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end6.for.end.i.i_crit_edge
  %sub.i.i = add i32 %15, -1
  br label %sumo_convert_voltage_index_to_value.exit

sumo_convert_voltage_index_to_value.exit:         ; preds = %for.end.i.i, %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge
  %i.0.pn.i.i = phi i32 [ %sub.i.i, %for.end.i.i ], [ %i.022.i.i, %for.body.i.i.sumo_convert_voltage_index_to_value.exit_crit_edge ]
  %retval.0.in.in.i.i = getelementptr %struct.sumo_power_info, ptr %13, i32 0, i32 11, i32 8, i32 1, i32 %i.0.pn.i.i, i32 1
  %18 = ptrtoint ptr %retval.0.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %retval.0.in.i.i = load i16, ptr %retval.0.in.in.i.i, align 2
  %retval.0.i.i = zext i16 %retval.0.in.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %retval.0.in.i.i)
  %cmp.i18 = icmp ugt i16 %retval.0.in.i.i, 124
  %mul.neg.i = mul nsw i32 %retval.0.i.i, -125
  %add.i = add nsw i32 %mul.neg.i, 15505
  %div.i = udiv i32 %add.i, 10
  %conv.i = trunc i32 %div.i to i16
  %retval.0.i = select i1 %cmp.i18, i16 0, i16 %conv.i
  br label %cleanup

cleanup:                                          ; preds = %sumo_convert_voltage_index_to_value.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i16 [ %retval.0.i, %sumo_convert_voltage_index_to_value.exit ], [ 0, %if.else.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sumo_dpm_fini(ptr nocapture noundef readonly %rdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @kfree(ptr noundef %5) #15
  %inc = add nuw nsw i32 %i.015, 1
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ps, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %dpm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dpm, align 4
  tail call void @kfree(ptr noundef %9) #15
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %11) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sumo_dpm_get_sclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 29, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  br i1 %low, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %num_levels = getelementptr inbounds %struct.sumo_ps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_levels, align 4
  %sub = add i32 %5, -1
  %arrayidx3 = getelementptr [5 x %struct.sumo_pl], ptr %3, i32 0, i32 %sub
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0.in = phi ptr [ %arrayidx3, %if.else ], [ %3, %entry.cleanup_crit_edge ]
  %6 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sumo_dpm_get_mclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bootup_uma_clk = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %bootup_uma_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bootup_uma_clk, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sumo_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %ps_priv.i = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 27, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %num_levels = getelementptr inbounds %struct.sumo_ps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %level, label %for.cond26.preheader [
    i32 2, label %if.then3
    i32 1, label %if.then13
  ]

for.cond26.preheader:                             ; preds = %if.end
  %7 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp28149.not = icmp eq i32 %8, 0
  br i1 %cmp28149.not, label %for.cond26.preheader.for.end32_crit_edge, label %for.cond26.preheader.for.body29_crit_edge

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.cond26.preheader.for.end32_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

if.then3:                                         ; preds = %if.end
  %enable_boost = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %enable_boost to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable_boost, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then3.if.end5_crit_edge, label %if.then4

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_boost_state_enable(ptr noundef %rdev, i1 noundef zeroext false) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then3.if.end5_crit_edge
  %11 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_levels, align 4
  %sub = add i32 %12, -1
  tail call fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %sub, i1 noundef zeroext true)
  %13 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_levels, align 4
  %sub8 = add i32 %14, 7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 1760
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %18 = and i32 %17, -117440513
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  %and1.i = and i32 %sub8, 7
  %or.i = or i32 %19, %and1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %22, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %20) #15, !srcloc !44
  %23 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 1760
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %26 = or i32 %25, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %27 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i.i = getelementptr i8, ptr %28, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i, i32 %26) #15, !srcloc !44
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %29 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp4.i = icmp sgt i32 %30, 0
  br i1 %cmp4.i, label %if.end5.for.body.i_crit_edge, label %if.end5.sumo_set_forced_mode_enabled.exit_crit_edge

if.end5.sumo_set_forced_mode_enabled.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %32, i32 1540
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %34 = and i32 %33, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.sumo_set_forced_mode_enabled.exit_crit_edge

for.body.i.sumo_set_forced_mode_enabled.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #15
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %36 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %37
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.sumo_set_forced_mode_enabled.exit_crit_edge

if.end.i.sumo_set_forced_mode_enabled.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

sumo_set_forced_mode_enabled.exit:                ; preds = %if.end.i.sumo_set_forced_mode_enabled.exit_crit_edge, %for.body.i.sumo_set_forced_mode_enabled.exit_crit_edge, %if.end5.sumo_set_forced_mode_enabled.exit_crit_edge
  %38 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp11147.not = icmp eq i32 %39, 1
  br i1 %cmp11147.not, label %sumo_set_forced_mode_enabled.exit.for.end_crit_edge, label %sumo_set_forced_mode_enabled.exit.for.body_crit_edge

sumo_set_forced_mode_enabled.exit.for.body_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit
  br label %for.body

sumo_set_forced_mode_enabled.exit.for.end_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sumo_set_forced_mode_enabled.exit.for.body_crit_edge
  %i.0148 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %sumo_set_forced_mode_enabled.exit.for.body_crit_edge ]
  tail call fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %i.0148, i1 noundef zeroext false)
  %inc = add nuw i32 %i.0148, 1
  %40 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_levels, align 4
  %sub10 = add i32 %41, -1
  %cmp11 = icmp ult i32 %inc, %sub10
  br i1 %cmp11, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sumo_set_forced_mode_enabled.exit.for.end_crit_edge
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %43, i32 1760
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %45 = and i32 %44, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %47, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %45) #15, !srcloc !44
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i87 = getelementptr i8, ptr %49, i32 1760
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i87) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %51 = or i32 %50, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i.i88 = getelementptr i8, ptr %53, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i88, i32 %51) #15, !srcloc !44
  %54 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp4.i90 = icmp sgt i32 %55, 0
  br i1 %cmp4.i90, label %for.end.for.body.i94_crit_edge, label %for.end.sumo_set_forced_mode_enabled.exit98_crit_edge

for.end.sumo_set_forced_mode_enabled.exit98_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit98

for.end.for.body.i94_crit_edge:                   ; preds = %for.end
  br label %for.body.i94

for.body.i94:                                     ; preds = %if.end.i97.for.body.i94_crit_edge, %for.end.for.body.i94_crit_edge
  %i.05.i91 = phi i32 [ %inc.i95, %if.end.i97.for.body.i94_crit_edge ], [ 0, %for.end.for.body.i94_crit_edge ]
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %57, i32 1540
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i92) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %59 = and i32 %58, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i93 = icmp eq i32 %59, 0
  br i1 %tobool.not.i93, label %if.end.i97, label %for.body.i94.sumo_set_forced_mode_enabled.exit98_crit_edge

for.body.i94.sumo_set_forced_mode_enabled.exit98_crit_edge: ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit98

if.end.i97:                                       ; preds = %for.body.i94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #15
  %inc.i95 = add nuw nsw i32 %i.05.i91, 1
  %61 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i96 = icmp slt i32 %inc.i95, %62
  br i1 %cmp.i96, label %if.end.i97.for.body.i94_crit_edge, label %if.end.i97.sumo_set_forced_mode_enabled.exit98_crit_edge

if.end.i97.sumo_set_forced_mode_enabled.exit98_crit_edge: ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit98

if.end.i97.for.body.i94_crit_edge:                ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i94

sumo_set_forced_mode_enabled.exit98:              ; preds = %if.end.i97.sumo_set_forced_mode_enabled.exit98_crit_edge, %for.body.i94.sumo_set_forced_mode_enabled.exit98_crit_edge, %for.end.sumo_set_forced_mode_enabled.exit98_crit_edge
  %63 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %64, i32 1760
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i100) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %66 = and i32 %65, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i101 = getelementptr i8, ptr %68, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i101, i32 %66) #15, !srcloc !44
  br label %if.end38

if.then13:                                        ; preds = %if.end
  %enable_boost14 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 26
  %69 = ptrtoint ptr %enable_boost14 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %enable_boost14, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool15.not = icmp eq i8 %70, 0
  br i1 %tobool15.not, label %if.then13.if.end17_crit_edge, label %if.then16

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_boost_state_enable(ptr noundef %rdev, i1 noundef zeroext false) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then13.if.end17_crit_edge
  %rmmio.i.i103 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %71 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %72, i32 1668
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i104) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %74 = or i32 %73, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %75 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i92.i = getelementptr i8, ptr %76, i32 1668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %74) #15, !srcloc !44
  %77 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %78, i32 1760
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %80 = and i32 %79, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %81 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i8.i108 = getelementptr i8, ptr %82, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i108, i32 %80) #15, !srcloc !44
  %83 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i.i110 = getelementptr i8, ptr %84, i32 1760
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i110) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %86 = or i32 %85, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %87 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i17.i.i111 = getelementptr i8, ptr %88, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i111, i32 %86) #15, !srcloc !44
  %usec_timeout.i112 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %89 = ptrtoint ptr %usec_timeout.i112 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %usec_timeout.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp4.i113 = icmp sgt i32 %90, 0
  br i1 %cmp4.i113, label %if.end17.for.body.i117_crit_edge, label %if.end17.sumo_set_forced_mode_enabled.exit121_crit_edge

if.end17.sumo_set_forced_mode_enabled.exit121_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit121

if.end17.for.body.i117_crit_edge:                 ; preds = %if.end17
  br label %for.body.i117

for.body.i117:                                    ; preds = %if.end.i120.for.body.i117_crit_edge, %if.end17.for.body.i117_crit_edge
  %i.05.i114 = phi i32 [ %inc.i118, %if.end.i120.for.body.i117_crit_edge ], [ 0, %if.end17.for.body.i117_crit_edge ]
  %91 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i115 = getelementptr i8, ptr %92, i32 1540
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i115) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %94 = and i32 %93, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i116 = icmp eq i32 %94, 0
  br i1 %tobool.not.i116, label %if.end.i120, label %for.body.i117.sumo_set_forced_mode_enabled.exit121_crit_edge

for.body.i117.sumo_set_forced_mode_enabled.exit121_crit_edge: ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit121

if.end.i120:                                      ; preds = %for.body.i117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748) #15
  %inc.i118 = add nuw nsw i32 %i.05.i114, 1
  %96 = ptrtoint ptr %usec_timeout.i112 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %usec_timeout.i112, align 4
  %cmp.i119 = icmp slt i32 %inc.i118, %97
  br i1 %cmp.i119, label %if.end.i120.for.body.i117_crit_edge, label %if.end.i120.sumo_set_forced_mode_enabled.exit121_crit_edge

if.end.i120.sumo_set_forced_mode_enabled.exit121_crit_edge: ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit121

if.end.i120.for.body.i117_crit_edge:              ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i117

sumo_set_forced_mode_enabled.exit121:             ; preds = %if.end.i120.sumo_set_forced_mode_enabled.exit121_crit_edge, %for.body.i117.sumo_set_forced_mode_enabled.exit121_crit_edge, %if.end17.sumo_set_forced_mode_enabled.exit121_crit_edge
  %98 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp20144 = icmp ugt i32 %99, 1
  br i1 %cmp20144, label %sumo_set_forced_mode_enabled.exit121.for.body21_crit_edge, label %sumo_set_forced_mode_enabled.exit121.for.end24_crit_edge

sumo_set_forced_mode_enabled.exit121.for.end24_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit121
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end24

sumo_set_forced_mode_enabled.exit121.for.body21_crit_edge: ; preds = %sumo_set_forced_mode_enabled.exit121
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %sumo_set_forced_mode_enabled.exit121.for.body21_crit_edge
  %i.1145 = phi i32 [ %inc23, %for.body21.for.body21_crit_edge ], [ 1, %sumo_set_forced_mode_enabled.exit121.for.body21_crit_edge ]
  tail call fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %i.1145, i1 noundef zeroext false)
  %inc23 = add nuw i32 %i.1145, 1
  %100 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_levels, align 4
  %cmp20 = icmp ult i32 %inc23, %101
  br i1 %cmp20, label %for.body21.for.body21_crit_edge, label %for.body21.for.end24_crit_edge

for.body21.for.end24_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end24

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

for.end24:                                        ; preds = %for.body21.for.end24_crit_edge, %sumo_set_forced_mode_enabled.exit121.for.end24_crit_edge
  %102 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %103, i32 1760
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i123) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %105 = and i32 %104, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %106 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i25.i124 = getelementptr i8, ptr %107, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i124, i32 %105) #15, !srcloc !44
  %108 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i.i127 = getelementptr i8, ptr %109, i32 1760
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i127) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %111 = or i32 %110, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %112 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i17.i.i128 = getelementptr i8, ptr %113, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i.i128, i32 %111) #15, !srcloc !44
  %114 = ptrtoint ptr %usec_timeout.i112 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %usec_timeout.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp4.i130 = icmp sgt i32 %115, 0
  br i1 %cmp4.i130, label %for.end24.for.body.i134_crit_edge, label %for.end24.sumo_set_forced_mode_enabled.exit138_crit_edge

for.end24.sumo_set_forced_mode_enabled.exit138_crit_edge: ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit138

for.end24.for.body.i134_crit_edge:                ; preds = %for.end24
  br label %for.body.i134

for.body.i134:                                    ; preds = %if.end.i137.for.body.i134_crit_edge, %for.end24.for.body.i134_crit_edge
  %i.05.i131 = phi i32 [ %inc.i135, %if.end.i137.for.body.i134_crit_edge ], [ 0, %for.end24.for.body.i134_crit_edge ]
  %116 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i132 = getelementptr i8, ptr %117, i32 1540
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i132) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %119 = and i32 %118, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i133 = icmp eq i32 %119, 0
  br i1 %tobool.not.i133, label %if.end.i137, label %for.body.i134.sumo_set_forced_mode_enabled.exit138_crit_edge

for.body.i134.sumo_set_forced_mode_enabled.exit138_crit_edge: ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit138

if.end.i137:                                      ; preds = %for.body.i134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748) #15
  %inc.i135 = add nuw nsw i32 %i.05.i131, 1
  %121 = ptrtoint ptr %usec_timeout.i112 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %usec_timeout.i112, align 4
  %cmp.i136 = icmp slt i32 %inc.i135, %122
  br i1 %cmp.i136, label %if.end.i137.for.body.i134_crit_edge, label %if.end.i137.sumo_set_forced_mode_enabled.exit138_crit_edge

if.end.i137.sumo_set_forced_mode_enabled.exit138_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_forced_mode_enabled.exit138

if.end.i137.for.body.i134_crit_edge:              ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i134

sumo_set_forced_mode_enabled.exit138:             ; preds = %if.end.i137.sumo_set_forced_mode_enabled.exit138_crit_edge, %for.body.i134.sumo_set_forced_mode_enabled.exit138_crit_edge, %for.end24.sumo_set_forced_mode_enabled.exit138_crit_edge
  %123 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %124, i32 1760
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i140) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %126 = and i32 %125, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %127 = ptrtoint ptr %rmmio.i.i103 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i.i103, align 4
  %add.ptr.i25.i141 = getelementptr i8, ptr %128, i32 1760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i141, i32 %126) #15, !srcloc !44
  br label %if.end38

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %i.2150 = phi i32 [ %inc31, %for.body29.for.body29_crit_edge ], [ 0, %for.cond26.preheader.for.body29_crit_edge ]
  tail call fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %i.2150, i1 noundef zeroext true)
  %inc31 = add nuw i32 %i.2150, 1
  %129 = ptrtoint ptr %num_levels to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_levels, align 4
  %cmp28 = icmp ult i32 %inc31, %130
  br i1 %cmp28, label %for.body29.for.body29_crit_edge, label %for.body29.for.end32_crit_edge

for.body29.for.end32_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end32

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body29

for.end32:                                        ; preds = %for.body29.for.end32_crit_edge, %for.cond26.preheader.for.end32_crit_edge
  %enable_boost33 = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 26
  %131 = ptrtoint ptr %enable_boost33 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %enable_boost33, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool34.not = icmp eq i8 %132, 0
  br i1 %tobool34.not, label %for.end32.if.end38_crit_edge, label %if.then35

for.end32.if.end38_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then35:                                        ; preds = %for.end32
  %133 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ps_priv.i, align 4
  %flags.i = getelementptr inbounds %struct.sumo_ps, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %flags.i, align 4
  %and.i143 = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i143)
  %tobool1.not.i = icmp eq i32 %and.i143, 0
  br i1 %tobool1.not.i, label %if.then35.if.end38_crit_edge, label %if.end3.sink.split.i

if.then35.if.end38_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.end3.sink.split.i:                             ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @sumo_boost_state_enable(ptr noundef %rdev, i1 noundef zeroext true) #15
  br label %if.end38

if.end38:                                         ; preds = %if.end3.sink.split.i, %if.then35.if.end38_crit_edge, %for.end32.if.end38_crit_edge, %sumo_set_forced_mode_enabled.exit138, %sumo_set_forced_mode_enabled.exit98
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %137 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %level, ptr %forced_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sumo_power_level_enable(ptr noundef %rdev, i32 noundef %index, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %index, 3
  %0 = zext i32 %rem to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %rem, label %do.body40 [
    i32 0, label %do.body
    i32 1, label %do.body6
    i32 2, label %do.body23
  ]

do.body:                                          ; preds = %entry
  %1 = add i32 %index, 1668
  %add = and i32 %1, -4
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %2 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp.i = icmp ugt i32 %3, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #15
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %7, %if.then.i ]
  %and = and i32 %retval.0.i, -129
  %cond = select i1 %enable, i32 128, i32 0
  %or = or i32 %and, %cond
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.i88 = icmp ugt i32 %9, %add
  %or.cond.i90 = or i1 %cmp1.i, %cmp.i88
  br i1 %or.cond.i90, label %do.body.i, label %if.else.i93

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %rmmio.i91 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i91 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %12, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %10) #15, !srcloc !44
  br label %if.end56

if.else.i93:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #15
  br label %if.end56

do.body6:                                         ; preds = %entry
  %13 = add i32 %index, 1668
  %add9 = and i32 %13, -4
  %rmmio_size.i94 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %14 = ptrtoint ptr %rmmio_size.i94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rmmio_size.i94, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add9)
  %cmp.i95 = icmp ugt i32 %15, %add9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9)
  %cmp1.i96 = icmp ult i32 %add9, 65536
  %or.cond.i97 = or i1 %cmp1.i96, %cmp.i95
  br i1 %or.cond.i97, label %if.then.i100, label %if.else.i102

if.then.i100:                                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i98 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %16 = ptrtoint ptr %rmmio.i98 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i98, align 4
  %add.ptr.i99 = getelementptr i8, ptr %17, i32 %add9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #15, !srcloc !41
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit104

if.else.i102:                                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i101 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add9) #15
  br label %r100_mm_rreg.exit104

r100_mm_rreg.exit104:                             ; preds = %if.else.i102, %if.then.i100
  %retval.0.i103 = phi i32 [ %call3.i101, %if.else.i102 ], [ %19, %if.then.i100 ]
  %and11 = and i32 %retval.0.i103, -32769
  %cond13 = select i1 %enable, i32 32768, i32 0
  %or15 = or i32 %and11, %cond13
  %20 = ptrtoint ptr %rmmio_size.i94 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmmio_size.i94, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %add9)
  %cmp.i106 = icmp ugt i32 %21, %add9
  %or.cond.i108 = or i1 %cmp1.i96, %cmp.i106
  br i1 %or.cond.i108, label %do.body.i111, label %if.else.i112

do.body.i111:                                     ; preds = %r100_mm_rreg.exit104
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %22 = tail call i32 @llvm.bswap.i32(i32 %or15) #15
  %rmmio.i109 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %23 = ptrtoint ptr %rmmio.i109 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %24, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %22) #15, !srcloc !44
  br label %if.end56

if.else.i112:                                     ; preds = %r100_mm_rreg.exit104
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add9, i32 noundef %or15) #15
  br label %if.end56

do.body23:                                        ; preds = %entry
  %25 = add i32 %index, 1668
  %add26 = and i32 %25, -4
  %rmmio_size.i114 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %26 = ptrtoint ptr %rmmio_size.i114 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rmmio_size.i114, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %add26)
  %cmp.i115 = icmp ugt i32 %27, %add26
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add26)
  %cmp1.i116 = icmp ult i32 %add26, 65536
  %or.cond.i117 = or i1 %cmp1.i116, %cmp.i115
  br i1 %or.cond.i117, label %if.then.i120, label %if.else.i122

if.then.i120:                                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i118 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i118 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %29, i32 %add26
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #15, !srcloc !41
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit124

if.else.i122:                                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i121 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add26) #15
  br label %r100_mm_rreg.exit124

r100_mm_rreg.exit124:                             ; preds = %if.else.i122, %if.then.i120
  %retval.0.i123 = phi i32 [ %call3.i121, %if.else.i122 ], [ %31, %if.then.i120 ]
  %and28 = and i32 %retval.0.i123, -8388609
  %cond30 = select i1 %enable, i32 8388608, i32 0
  %or32 = or i32 %and28, %cond30
  %32 = ptrtoint ptr %rmmio_size.i114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rmmio_size.i114, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add26)
  %cmp.i126 = icmp ugt i32 %33, %add26
  %or.cond.i128 = or i1 %cmp1.i116, %cmp.i126
  br i1 %or.cond.i128, label %do.body.i131, label %if.else.i132

do.body.i131:                                     ; preds = %r100_mm_rreg.exit124
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %34 = tail call i32 @llvm.bswap.i32(i32 %or32) #15
  %rmmio.i129 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %35 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %36, i32 %add26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %34) #15, !srcloc !44
  br label %if.end56

if.else.i132:                                     ; preds = %r100_mm_rreg.exit124
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add26, i32 noundef %or32) #15
  br label %if.end56

do.body40:                                        ; preds = %entry
  %37 = add i32 %index, 1668
  %add43 = and i32 %37, -4
  %rmmio_size.i134 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %38 = ptrtoint ptr %rmmio_size.i134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rmmio_size.i134, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add43)
  %cmp.i135 = icmp ugt i32 %39, %add43
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add43)
  %cmp1.i136 = icmp ult i32 %add43, 65536
  %or.cond.i137 = or i1 %cmp1.i136, %cmp.i135
  br i1 %or.cond.i137, label %if.then.i140, label %if.else.i142

if.then.i140:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i138 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i138 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i138, align 4
  %add.ptr.i139 = getelementptr i8, ptr %41, i32 %add43
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #15, !srcloc !41
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit144

if.else.i142:                                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i141 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add43) #15
  br label %r100_mm_rreg.exit144

r100_mm_rreg.exit144:                             ; preds = %if.else.i142, %if.then.i140
  %retval.0.i143 = phi i32 [ %call3.i141, %if.else.i142 ], [ %43, %if.then.i140 ]
  %and45 = and i32 %retval.0.i143, 2147483647
  %cond47 = select i1 %enable, i32 -2147483648, i32 0
  %or49 = or i32 %and45, %cond47
  %44 = ptrtoint ptr %rmmio_size.i134 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rmmio_size.i134, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add43)
  %cmp.i146 = icmp ugt i32 %45, %add43
  %or.cond.i148 = or i1 %cmp1.i136, %cmp.i146
  br i1 %or.cond.i148, label %do.body.i151, label %if.else.i152

do.body.i151:                                     ; preds = %r100_mm_rreg.exit144
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %46 = tail call i32 @llvm.bswap.i32(i32 %or49) #15
  %rmmio.i149 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i149 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i149, align 4
  %add.ptr.i150 = getelementptr i8, ptr %48, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %46) #15, !srcloc !44
  br label %if.end56

if.else.i152:                                     ; preds = %r100_mm_rreg.exit144
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add43, i32 noundef %or49) #15
  br label %if.end56

if.end56:                                         ; preds = %if.else.i152, %do.body.i151, %if.else.i132, %do.body.i131, %if.else.i112, %do.body.i111, %if.else.i93, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sumo_program_power_level(ptr noundef %rdev, ptr nocapture noundef readonly %pl, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #15
  %2 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2072
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !41
  %6 = shl i32 %5, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %and = and i32 %6, -2147483648
  %7 = ptrtoint ptr %pl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pl, align 4
  %call2 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %8, i1 noundef zeroext false, ptr noundef nonnull %dividers) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dividers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dividers, align 4
  %rem.i = and i32 %index, 3
  %11 = zext i32 %rem.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %rem.i, label %do.body38.i [
    i32 0, label %do.body.i
    i32 1, label %do.body6.i
    i32 2, label %do.body22.i
  ]

do.body.i:                                        ; preds = %if.end
  %12 = add i32 %index, 1668
  %add.i = and i32 %12, -4
  %13 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %14, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp1.i.i = icmp ult i32 %add.i, 65536
  %or.cond.i.i = or i1 %cmp1.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %add.i
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !41
  %18 = call i32 @llvm.bswap.i32(i32 %17) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit.i

if.else.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add.i) #15
  br label %r100_mm_rreg.exit.i

r100_mm_rreg.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.else.i.i ], [ %18, %if.then.i.i ]
  %and.i = and i32 %retval.0.i.i, -128
  %and1.i = and i32 %10, 127
  %or.i = or i32 %and.i, %and1.i
  %19 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i)
  %cmp.i85.i = icmp ugt i32 %20, %add.i
  %or.cond.i87.i = or i1 %cmp1.i.i, %cmp.i85.i
  br i1 %or.cond.i87.i, label %do.body.i.i, label %if.else.i90.i

do.body.i.i:                                      ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %21 = call i32 @llvm.bswap.i32(i32 %or.i) #15
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %23, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 %21) #15, !srcloc !44
  br label %sumo_set_divider_value.exit

if.else.i90.i:                                    ; preds = %r100_mm_rreg.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add.i, i32 noundef %or.i) #15
  br label %sumo_set_divider_value.exit

do.body6.i:                                       ; preds = %if.end
  %24 = add i32 %index, 1668
  %add9.i = and i32 %24, -4
  %25 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %add9.i)
  %cmp.i92.i = icmp ugt i32 %26, %add9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add9.i)
  %cmp1.i93.i = icmp ult i32 %add9.i, 65536
  %or.cond.i94.i = or i1 %cmp1.i93.i, %cmp.i92.i
  br i1 %or.cond.i94.i, label %if.then.i97.i, label %if.else.i99.i

if.then.i97.i:                                    ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %28, i32 %add9.i
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96.i) #15, !srcloc !41
  %30 = call i32 @llvm.bswap.i32(i32 %29) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit101.i

if.else.i99.i:                                    ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i98.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add9.i) #15
  br label %r100_mm_rreg.exit101.i

r100_mm_rreg.exit101.i:                           ; preds = %if.else.i99.i, %if.then.i97.i
  %retval.0.i100.i = phi i32 [ %call3.i98.i, %if.else.i99.i ], [ %30, %if.then.i97.i ]
  %and11.i = and i32 %retval.0.i100.i, -32513
  %shl12.i = shl i32 %10, 8
  %and13.i = and i32 %shl12.i, 32512
  %or14.i = or i32 %and11.i, %and13.i
  %31 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add9.i)
  %cmp.i103.i = icmp ugt i32 %32, %add9.i
  %or.cond.i105.i = or i1 %cmp1.i93.i, %cmp.i103.i
  br i1 %or.cond.i105.i, label %do.body.i108.i, label %if.else.i109.i

do.body.i108.i:                                   ; preds = %r100_mm_rreg.exit101.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %33 = call i32 @llvm.bswap.i32(i32 %or14.i) #15
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %35, i32 %add9.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %33) #15, !srcloc !44
  br label %sumo_set_divider_value.exit

if.else.i109.i:                                   ; preds = %r100_mm_rreg.exit101.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add9.i, i32 noundef %or14.i) #15
  br label %sumo_set_divider_value.exit

do.body22.i:                                      ; preds = %if.end
  %36 = add i32 %index, 1668
  %add25.i = and i32 %36, -4
  %37 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add25.i)
  %cmp.i112.i = icmp ugt i32 %38, %add25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add25.i)
  %cmp1.i113.i = icmp ult i32 %add25.i, 65536
  %or.cond.i114.i = or i1 %cmp1.i113.i, %cmp.i112.i
  br i1 %or.cond.i114.i, label %if.then.i117.i, label %if.else.i119.i

if.then.i117.i:                                   ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i116.i = getelementptr i8, ptr %40, i32 %add25.i
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116.i) #15, !srcloc !41
  %42 = call i32 @llvm.bswap.i32(i32 %41) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit121.i

if.else.i119.i:                                   ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i118.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add25.i) #15
  br label %r100_mm_rreg.exit121.i

r100_mm_rreg.exit121.i:                           ; preds = %if.else.i119.i, %if.then.i117.i
  %retval.0.i120.i = phi i32 [ %call3.i118.i, %if.else.i119.i ], [ %42, %if.then.i117.i ]
  %and27.i = and i32 %retval.0.i120.i, -8323073
  %shl28.i = shl i32 %10, 16
  %and29.i = and i32 %shl28.i, 8323072
  %or30.i = or i32 %and27.i, %and29.i
  %43 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add25.i)
  %cmp.i123.i = icmp ugt i32 %44, %add25.i
  %or.cond.i125.i = or i1 %cmp1.i113.i, %cmp.i123.i
  br i1 %or.cond.i125.i, label %do.body.i128.i, label %if.else.i129.i

do.body.i128.i:                                   ; preds = %r100_mm_rreg.exit121.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %45 = call i32 @llvm.bswap.i32(i32 %or30.i) #15
  %46 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %47, i32 %add25.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %45) #15, !srcloc !44
  br label %sumo_set_divider_value.exit

if.else.i129.i:                                   ; preds = %r100_mm_rreg.exit121.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add25.i, i32 noundef %or30.i) #15
  br label %sumo_set_divider_value.exit

do.body38.i:                                      ; preds = %if.end
  %48 = add i32 %index, 1668
  %add41.i = and i32 %48, -4
  %49 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %add41.i)
  %cmp.i132.i = icmp ugt i32 %50, %add41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add41.i)
  %cmp1.i133.i = icmp ult i32 %add41.i, 65536
  %or.cond.i134.i = or i1 %cmp1.i133.i, %cmp.i132.i
  br i1 %or.cond.i134.i, label %if.then.i137.i, label %if.else.i139.i

if.then.i137.i:                                   ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %52, i32 %add41.i
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.i) #15, !srcloc !41
  %54 = call i32 @llvm.bswap.i32(i32 %53) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %r100_mm_rreg.exit141.i

if.else.i139.i:                                   ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i138.i = call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add41.i) #15
  br label %r100_mm_rreg.exit141.i

r100_mm_rreg.exit141.i:                           ; preds = %if.else.i139.i, %if.then.i137.i
  %retval.0.i140.i = phi i32 [ %call3.i138.i, %if.else.i139.i ], [ %54, %if.then.i137.i ]
  %and43.i = and i32 %retval.0.i140.i, -2130706433
  %shl44.i = shl i32 %10, 24
  %and45.i = and i32 %shl44.i, 2130706432
  %or46.i = or i32 %and43.i, %and45.i
  %55 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %add41.i)
  %cmp.i143.i = icmp ugt i32 %56, %add41.i
  %or.cond.i145.i = or i1 %cmp1.i133.i, %cmp.i143.i
  br i1 %or.cond.i145.i, label %do.body.i148.i, label %if.else.i149.i

do.body.i148.i:                                   ; preds = %r100_mm_rreg.exit141.i
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %57 = call i32 @llvm.bswap.i32(i32 %or46.i) #15
  %58 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %59, i32 %add41.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 %57) #15, !srcloc !44
  br label %sumo_set_divider_value.exit

if.else.i149.i:                                   ; preds = %r100_mm_rreg.exit141.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add41.i, i32 noundef %or46.i) #15
  br label %sumo_set_divider_value.exit

sumo_set_divider_value.exit:                      ; preds = %if.else.i149.i, %do.body.i148.i, %if.else.i129.i, %do.body.i128.i, %if.else.i109.i, %do.body.i108.i, %if.else.i90.i, %do.body.i.i
  %vddc_index = getelementptr inbounds %struct.sumo_pl, ptr %pl, i32 0, i32 1
  %60 = ptrtoint ptr %vddc_index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vddc_index, align 4
  %62 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %63, i32 1928
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59) #15, !srcloc !41
  %65 = call i32 @llvm.bswap.i32(i32 %64) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %mul.i = shl i32 %index, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i60 = and i32 %65, %neg.i
  %shl2.i = shl i32 %61, %mul.i
  %or.i61 = or i32 %and.i60, %shl2.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %66 = call i32 @llvm.bswap.i32(i32 %or.i61) #15
  %67 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %68, i32 1928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %66) #15, !srcloc !44
  %ss_divider_index = getelementptr inbounds %struct.sumo_pl, ptr %pl, i32 0, i32 3
  %69 = ptrtoint ptr %ss_divider_index to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ss_divider_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp = icmp eq i32 %70, 0
  br i1 %cmp, label %sumo_set_divider_value.exit.if.then4_crit_edge, label %lor.lhs.false

sumo_set_divider_value.exit.if.then4_crit_edge:   ; preds = %sumo_set_divider_value.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

lor.lhs.false:                                    ; preds = %sumo_set_divider_value.exit
  %ds_divider_index = getelementptr inbounds %struct.sumo_pl, ptr %pl, i32 0, i32 2
  %71 = ptrtoint ptr %ds_divider_index to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ds_divider_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp3 = icmp eq i32 %72, 0
  br i1 %cmp3, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %sumo_set_divider_value.exit.if.then4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.if.end22_crit_edge, label %do.body

if.then4.if.end22_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %73 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %74, i32 2072
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %76 = and i32 %75, -129
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %77 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %78, i32 2072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %76) #15, !srcloc !44
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false
  %79 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i = getelementptr inbounds %struct.sumo_power_info, ptr %80, i32 0, i32 22
  %81 = ptrtoint ptr %enable_sclk_ds.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %enable_sclk_ds.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %if.else.sumo_set_ss_dividers.exit_crit_edge, label %if.then.i

if.else.sumo_set_ss_dividers.exit_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_ss_dividers.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %83 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %84, i32 2096
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #15, !srcloc !41
  %86 = call i32 @llvm.bswap.i32(i32 %85) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %mul.i73 = mul i32 %index, 3
  %shl.i74 = shl i32 7, %mul.i73
  %neg.i75 = xor i32 %shl.i74, -1
  %and.i76 = and i32 %86, %neg.i75
  %shl3.i = shl i32 %70, %mul.i73
  %or.i77 = or i32 %and.i76, %shl3.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %87 = call i32 @llvm.bswap.i32(i32 %or.i77) #15
  %88 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %89, i32 2096
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %87) #15, !srcloc !44
  br label %sumo_set_ss_dividers.exit

sumo_set_ss_dividers.exit:                        ; preds = %if.then.i, %if.else.sumo_set_ss_dividers.exit_crit_edge
  %90 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %priv.i, align 4
  %enable_sclk_ds.i79 = getelementptr inbounds %struct.sumo_power_info, ptr %91, i32 0, i32 22
  %92 = ptrtoint ptr %enable_sclk_ds.i79 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %enable_sclk_ds.i79, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i80 = icmp eq i8 %93, 0
  br i1 %tobool.not.i80, label %sumo_set_ss_dividers.exit.sumo_set_ds_dividers.exit_crit_edge, label %if.then.i90

sumo_set_ss_dividers.exit.sumo_set_ds_dividers.exit_crit_edge: ; preds = %sumo_set_ss_dividers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sumo_set_ds_dividers.exit

if.then.i90:                                      ; preds = %sumo_set_ss_dividers.exit
  call void @__sanitizer_cov_trace_pc() #17
  %94 = ptrtoint ptr %ds_divider_index to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ds_divider_index, align 4
  %96 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %97, i32 1828
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #15, !srcloc !41
  %99 = call i32 @llvm.bswap.i32(i32 %98) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %mul.i83 = mul i32 %index, 3
  %shl.i84 = shl i32 7, %mul.i83
  %neg.i85 = xor i32 %shl.i84, -1
  %and.i86 = and i32 %99, %neg.i85
  %shl3.i87 = shl i32 %95, %mul.i83
  %or.i88 = or i32 %and.i86, %shl3.i87
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %100 = call i32 @llvm.bswap.i32(i32 %or.i88) #15
  %101 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12.i89 = getelementptr i8, ptr %102, i32 1828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i89, i32 %100) #15, !srcloc !44
  br label %sumo_set_ds_dividers.exit

sumo_set_ds_dividers.exit:                        ; preds = %if.then.i90, %sumo_set_ss_dividers.exit.sumo_set_ds_dividers.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.body14, label %sumo_set_ds_dividers.exit.if.end22_crit_edge

sumo_set_ds_dividers.exit.if.end22_crit_edge:     ; preds = %sumo_set_ds_dividers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

do.body14:                                        ; preds = %sumo_set_ds_dividers.exit
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %104, i32 2072
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #15, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %106 = or i32 %105, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %107 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %108, i32 2072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %106) #15, !srcloc !44
  br label %if.end22

if.end22:                                         ; preds = %do.body14, %sumo_set_ds_dividers.exit.if.end22_crit_edge, %do.body, %if.then4.if.end22_crit_edge
  %allow_gnb_slow = getelementptr inbounds %struct.sumo_pl, ptr %pl, i32 0, i32 4
  %109 = ptrtoint ptr %allow_gnb_slow to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %allow_gnb_slow, align 4
  %111 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv.i, align 4
  %driver_nbps_policy_disable.i = getelementptr inbounds %struct.sumo_power_info, ptr %112, i32 0, i32 16
  %113 = ptrtoint ptr %driver_nbps_policy_disable.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %driver_nbps_policy_disable.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i102 = icmp eq i8 %114, 0
  %spec.select.i = select i1 %tobool.not.i102, i32 %110, i32 1
  %115 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.i104 = getelementptr i8, ptr %116, i32 1760
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i104) #15, !srcloc !41
  %118 = call i32 @llvm.bswap.i32(i32 %117) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  %shl.i105 = shl i32 8388608, %index
  %neg.i106 = xor i32 %shl.i105, -1
  %and.i107 = and i32 %118, %neg.i106
  %add.i108 = add i32 %index, 23
  %shl2.i109 = shl i32 %spec.select.i, %add.i108
  %or.i110 = or i32 %and.i107, %shl2.i109
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  call void @arm_heavy_mb() #15
  %119 = call i32 @llvm.bswap.i32(i32 %or.i110) #15
  %120 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %121, i32 1760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %119) #15, !srcloc !44
  %enable_boost = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 26
  %122 = ptrtoint ptr %enable_boost to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %enable_boost, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool23.not = icmp eq i8 %123, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %sclk_dpm_tdp_limit = getelementptr inbounds %struct.sumo_pl, ptr %pl, i32 0, i32 5
  %124 = ptrtoint ptr %sclk_dpm_tdp_limit to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %sclk_dpm_tdp_limit, align 4
  call void @sumo_set_tdp_limit(ptr noundef %rdev, i32 noundef %index, i32 noundef %125) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_set_tdp_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_rcu_wreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_rcu_rreg(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_smu_pg_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sumo_setup_uvd_clocks(ptr noundef %rdev, ptr nocapture noundef readonly %new_rps) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %enable_gfx_power_gating = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %enable_gfx_power_gating to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_gfx_power_gating, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1964
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %9, i32 1964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %7) #15, !srcloc !44
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %11, i32 39160
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #15, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %13 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %asic, align 8
  %set_uvd_clocks = getelementptr inbounds %struct.radeon_asic, ptr %14, i32 0, i32 20, i32 12
  %15 = ptrtoint ptr %set_uvd_clocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_uvd_clocks, align 4
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %new_rps, i32 0, i32 3
  %17 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %new_rps, i32 0, i32 4
  %19 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dclk, align 4
  %call1 = tail call i32 %16(ptr noundef %rdev, i32 noundef %18, i32 noundef %20) #15
  %21 = ptrtoint ptr %enable_gfx_power_gating to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_gfx_power_gating, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not = icmp eq i8 %22, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then4:                                         ; preds = %if.end
  %disable_gfx_power_gating_in_uvd = getelementptr inbounds %struct.sumo_power_info, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %disable_gfx_power_gating_in_uvd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %disable_gfx_power_gating_in_uvd, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not = icmp eq i8 %24, 0
  br i1 %tobool5.not, label %if.then4.if.then7_crit_edge, label %lor.lhs.false

if.then4.if.then7_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.then4
  %class = getelementptr inbounds %struct.radeon_ps, ptr %new_rps, i32 0, i32 1
  %25 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %class, align 4
  %class2 = getelementptr inbounds %struct.radeon_ps, ptr %new_rps, i32 0, i32 2
  %27 = ptrtoint ptr %class2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %class2, align 4
  %call6 = tail call zeroext i1 @r600_is_uvd_state(i32 noundef %26, i32 noundef %28) #15
  br i1 %call6, label %lor.lhs.false.if.end9_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.then4.if.then7_crit_edge
  %rmmio.i.i1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %29 = ptrtoint ptr %rmmio.i.i1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i.i1, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %30, i32 1964
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  %32 = or i32 %31, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !43
  tail call void @arm_heavy_mb() #15
  %33 = ptrtoint ptr %rmmio.i.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio.i.i1, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %34, i32 1964
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %32) #15, !srcloc !44
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %lor.lhs.false.if.end9_crit_edge, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_boost_state_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sumo_smu_notify_alt_vddnb_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1360, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sumo_dpm_setup_asic._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sumo_dpm_setup_asic._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1802, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @sumo_dpm_print_power_state._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @sumo_dpm_print_power_state._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1805, i32 3}
!13 = !{ptr @sumo_dpm_print_power_state._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @sumo_dpm_print_power_state._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1825, i32 17}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1826, i32 17}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1830, i32 17}
!21 = !{ptr @sumo_utc, !22, !"sumo_utc", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 36, i32 18}
!23 = !{ptr @sumo_dtc, !24, !"sumo_dtc", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 55, i32 18}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1167, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1671, i32 4}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/sumo_dpm.c", i32 1688, i32 4}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{i64 6741930}
!42 = !{i64 2157462115}
!43 = !{i64 2157462522}
!44 = !{i64 6741512}
!45 = !{i8 0, i8 2}
