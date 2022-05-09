; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/r600_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/r600_dpm.c"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
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
%struct.anon.87 = type { i32, ptr }
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
%struct.atom_context = type { ptr, %struct.mutex, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32 }
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_POWERPLAYTABLE3 = type { %struct._ATOM_PPLIB_POWERPLAYTABLE2, i16, i16, i16 }
%struct._ATOM_PPLIB_POWERPLAYTABLE2 = type { %struct._ATOM_PPLIB_POWERPLAYTABLE, i8, i16 }
%struct._ATOM_PPLIB_FANTABLE = type { i8, i8, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_PPLIB_FANTABLE2 = type { %struct._ATOM_PPLIB_FANTABLE, i16 }
%struct._ATOM_PPLIB_FANTABLE3 = type <{ %struct._ATOM_PPLIB_FANTABLE2, i8, i16, i16 }>
%struct._ATOM_PPLIB_POWERPLAYTABLE4 = type <{ %struct._ATOM_PPLIB_POWERPLAYTABLE3, i32, i32, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table = type { i8, [1 x %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record] }
%struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record = type <{ i16, i8, i16 }>
%struct.radeon_clock_voltage_dependency_entry = type { i32, i16 }
%struct._ATOM_PPLIB_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_Clock_Voltage_Limit_Record = type <{ i16, i8, i16, i8, i16, i16 }>
%struct._ATOM_PPLIB_PhaseSheddingLimits_Table = type { i8, [1 x %struct._ATOM_PPLIB_PhaseSheddingLimits_Record] }
%struct._ATOM_PPLIB_PhaseSheddingLimits_Record = type <{ i16, i16, i8, i16, i8 }>
%struct.radeon_phase_shedding_limits_entry = type { i16, i32, i32 }
%struct._ATOM_PPLIB_POWERPLAYTABLE5 = type <{ %struct._ATOM_PPLIB_POWERPLAYTABLE4, i32, i32, i32, i16, i32, i16, i16 }>
%struct._ATOM_PPLIB_CAC_Leakage_Table = type <{ i8, [1 x %union._ATOM_PPLIB_CAC_Leakage_Record] }>
%union._ATOM_PPLIB_CAC_Leakage_Record = type { %struct.anon.109 }
%struct.anon.109 = type { i16, i16, i16 }
%union.radeon_cac_leakage_entry = type { %struct.anon.104 }
%struct.anon.104 = type { i16, i32 }
%struct.anon.105 = type { i16, i16, i16 }
%struct.anon.108 = type <{ i16, i32 }>
%struct._ATOM_PPLIB_EXTENDEDHEADER = type <{ i16, i32, i32, i16, i16, i16, i16, i16, i16 }>
%struct._ATOM_PPLIB_VCE_State_Table = type { i8, [1 x %struct._ATOM_PPLIB_VCE_State_Record] }
%struct._ATOM_PPLIB_VCE_State_Record = type { i8, i8 }
%struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record = type <{ i16, i8 }>
%struct._VCEClockInfo = type <{ i16, i8, i16, i8 }>
%struct.radeon_vce_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record = type <{ i16, i8 }>
%struct._UVDClockInfo = type <{ i16, i8, i16, i8 }>
%struct.radeon_uvd_clock_voltage_dependency_entry = type { i32, i32, i16 }
%struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record = type <{ i16, i16, i8 }>
%struct._ATOM_PPLIB_PPM_Table = type { i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_ppm_table = type { i8, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table = type { i8, [1 x %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record] }
%struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record = type <{ i16, i16, i8 }>
%struct._ATOM_PPLIB_POWERTUNE_Table_V1 = type <{ i8, %struct._ATOM_PowerTune_Table, i16, [7 x i16] }>
%struct._ATOM_PowerTune_Table = type { i16, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_PPLIB_POWERTUNE_Table = type <{ i8, %struct._ATOM_PowerTune_Table }>
%struct.radeon_cac_tdp_table = type { i16, i16, i16, i16, i16, i16, i16, i16 }

@r600_utc = dso_local constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 36, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34], [36 x i8] zeroinitializer }, align 32
@r600_dtc = dso_local constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 36, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34, i32 34], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"balanced\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"performance\00", [20 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09ui class: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"r600_dpm_print_class_info\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/radeon/r600_dpm.c\00", [62 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr = internal global ptr @r600_dpm_print_class_info._entry, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09internal class:\00", [47 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.9 = internal global ptr @r600_dpm_print_class_info._entry.7, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c none\00", [24 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.12 = internal global ptr @r600_dpm_print_class_info._entry.10, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c boot\00", [24 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.15 = internal global ptr @r600_dpm_print_class_info._entry.13, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c thermal\00", [21 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.18 = internal global ptr @r600_dpm_print_class_info._entry.16, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c limited_pwr\00", [17 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.21 = internal global ptr @r600_dpm_print_class_info._entry.19, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c rest\00", [24 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.24 = internal global ptr @r600_dpm_print_class_info._entry.22, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c forced\00", [22 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.27 = internal global ptr @r600_dpm_print_class_info._entry.25, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c 3d_perf\00", [21 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.30 = internal global ptr @r600_dpm_print_class_info._entry.28, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c ovrdrv\00", [22 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.33 = internal global ptr @r600_dpm_print_class_info._entry.31, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c uvd\00", [25 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.36 = internal global ptr @r600_dpm_print_class_info._entry.34, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.6, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c 3d_low\00", [22 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.39 = internal global ptr @r600_dpm_print_class_info._entry.37, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.6, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c acpi\00", [24 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.42 = internal global ptr @r600_dpm_print_class_info._entry.40, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.5, ptr @.str.6, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c uvd_hd2\00", [21 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.45 = internal global ptr @r600_dpm_print_class_info._entry.43, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.5, ptr @.str.6, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c uvd_hd\00", [22 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.48 = internal global ptr @r600_dpm_print_class_info._entry.46, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.5, ptr @.str.6, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c uvd_sd\00", [22 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.51 = internal global ptr @r600_dpm_print_class_info._entry.49, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.5, ptr @.str.6, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c limited_pwr2\00", [16 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.54 = internal global ptr @r600_dpm_print_class_info._entry.52, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.5, ptr @.str.6, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c ulv\00", [25 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.57 = internal global ptr @r600_dpm_print_class_info._entry.55, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.5, ptr @.str.6, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01c uvd_mvc\00", [21 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.60 = internal global ptr @r600_dpm_print_class_info._entry.58, section ".printk_index", align 4
@r600_dpm_print_class_info._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.5, ptr @.str.6, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@r600_dpm_print_class_info._entry_ptr.63 = internal global ptr @r600_dpm_print_class_info._entry.61, section ".printk_index", align 4
@r600_dpm_print_cap_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09caps:\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r600_dpm_print_cap_info\00", [40 x i8] zeroinitializer }, align 32
@r600_dpm_print_cap_info._entry_ptr = internal global ptr @r600_dpm_print_cap_info._entry, section ".printk_index", align 4
@r600_dpm_print_cap_info._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.6, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c single_disp\00", [17 x i8] zeroinitializer }, align 32
@r600_dpm_print_cap_info._entry_ptr.68 = internal global ptr @r600_dpm_print_cap_info._entry.66, section ".printk_index", align 4
@r600_dpm_print_cap_info._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.6, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c video\00", [23 x i8] zeroinitializer }, align 32
@r600_dpm_print_cap_info._entry_ptr.71 = internal global ptr @r600_dpm_print_cap_info._entry.69, section ".printk_index", align 4
@r600_dpm_print_cap_info._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.6, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c no_dc\00", [23 x i8] zeroinitializer }, align 32
@r600_dpm_print_cap_info._entry_ptr.74 = internal global ptr @r600_dpm_print_cap_info._entry.72, section ".printk_index", align 4
@r600_dpm_print_cap_info._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.65, ptr @.str.6, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r600_dpm_print_cap_info._entry_ptr.76 = internal global ptr @r600_dpm_print_cap_info._entry.75, section ".printk_index", align 4
@r600_dpm_print_ps_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.6, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09status:\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"r600_dpm_print_ps_status\00", [39 x i8] zeroinitializer }, align 32
@r600_dpm_print_ps_status._entry_ptr = internal global ptr @r600_dpm_print_ps_status._entry, section ".printk_index", align 4
@r600_dpm_print_ps_status._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.6, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c c\00", [27 x i8] zeroinitializer }, align 32
@r600_dpm_print_ps_status._entry_ptr.81 = internal global ptr @r600_dpm_print_ps_status._entry.79, section ".printk_index", align 4
@r600_dpm_print_ps_status._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.6, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c r\00", [27 x i8] zeroinitializer }, align 32
@r600_dpm_print_ps_status._entry_ptr.84 = internal global ptr @r600_dpm_print_ps_status._entry.82, section ".printk_index", align 4
@r600_dpm_print_ps_status._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.6, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01c b\00", [27 x i8] zeroinitializer }, align 32
@r600_dpm_print_ps_status._entry_ptr.87 = internal global ptr @r600_dpm_print_ps_status._entry.85, section ".printk_index", align 4
@r600_dpm_print_ps_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.78, ptr @.str.6, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@r600_dpm_print_ps_status._entry_ptr.89 = internal global ptr @r600_dpm_print_ps_status._entry.88, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@r600_encode_pci_lane_width.encoded_lanes = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\01\02\00\03\00\00\00\04\00\00\00\05\00\00\00\06", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.r600_dpm_print_class_info = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str, ptr @.str.2, ptr @.str, ptr @.str.3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 4, i64 8, i64 12, i64 16]
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"r600_utc\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 31, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"r600_dtc\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 50, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 76, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 79, i32 7 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 82, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 85, i32 7 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 88, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 90, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 93, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 96, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 98, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 100, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 102, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 104, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 106, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 108, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 110, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 112, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 114, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 116, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 118, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 120, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 122, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 124, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 126, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 128, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 133, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 135, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 137, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 139, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 140, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 146, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 148, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 150, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 152, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 153, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"encoded_lanes\00", align 1
@___asan_gen_.298 = private constant [37 x i8] c"../drivers/gpu/drm/radeon/r600_dpm.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1364, i32 18 }
@___asan_gen_.300 = private unnamed_addr constant [39 x i8] c"switch.table.r600_dpm_print_class_info\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @r600_dpm_print_cap_info._entry, ptr @r600_dpm_print_cap_info._entry.66, ptr @r600_dpm_print_cap_info._entry.69, ptr @r600_dpm_print_cap_info._entry.72, ptr @r600_dpm_print_cap_info._entry.75, ptr @r600_dpm_print_cap_info._entry_ptr, ptr @r600_dpm_print_cap_info._entry_ptr.68, ptr @r600_dpm_print_cap_info._entry_ptr.71, ptr @r600_dpm_print_cap_info._entry_ptr.74, ptr @r600_dpm_print_cap_info._entry_ptr.76, ptr @r600_dpm_print_class_info._entry, ptr @r600_dpm_print_class_info._entry.10, ptr @r600_dpm_print_class_info._entry.13, ptr @r600_dpm_print_class_info._entry.16, ptr @r600_dpm_print_class_info._entry.19, ptr @r600_dpm_print_class_info._entry.22, ptr @r600_dpm_print_class_info._entry.25, ptr @r600_dpm_print_class_info._entry.28, ptr @r600_dpm_print_class_info._entry.31, ptr @r600_dpm_print_class_info._entry.34, ptr @r600_dpm_print_class_info._entry.37, ptr @r600_dpm_print_class_info._entry.40, ptr @r600_dpm_print_class_info._entry.43, ptr @r600_dpm_print_class_info._entry.46, ptr @r600_dpm_print_class_info._entry.49, ptr @r600_dpm_print_class_info._entry.52, ptr @r600_dpm_print_class_info._entry.55, ptr @r600_dpm_print_class_info._entry.58, ptr @r600_dpm_print_class_info._entry.61, ptr @r600_dpm_print_class_info._entry.7, ptr @r600_dpm_print_class_info._entry_ptr, ptr @r600_dpm_print_class_info._entry_ptr.12, ptr @r600_dpm_print_class_info._entry_ptr.15, ptr @r600_dpm_print_class_info._entry_ptr.18, ptr @r600_dpm_print_class_info._entry_ptr.21, ptr @r600_dpm_print_class_info._entry_ptr.24, ptr @r600_dpm_print_class_info._entry_ptr.27, ptr @r600_dpm_print_class_info._entry_ptr.30, ptr @r600_dpm_print_class_info._entry_ptr.33, ptr @r600_dpm_print_class_info._entry_ptr.36, ptr @r600_dpm_print_class_info._entry_ptr.39, ptr @r600_dpm_print_class_info._entry_ptr.42, ptr @r600_dpm_print_class_info._entry_ptr.45, ptr @r600_dpm_print_class_info._entry_ptr.48, ptr @r600_dpm_print_class_info._entry_ptr.51, ptr @r600_dpm_print_class_info._entry_ptr.54, ptr @r600_dpm_print_class_info._entry_ptr.57, ptr @r600_dpm_print_class_info._entry_ptr.60, ptr @r600_dpm_print_class_info._entry_ptr.63, ptr @r600_dpm_print_class_info._entry_ptr.9, ptr @r600_dpm_print_ps_status._entry, ptr @r600_dpm_print_ps_status._entry.79, ptr @r600_dpm_print_ps_status._entry.82, ptr @r600_dpm_print_ps_status._entry.85, ptr @r600_dpm_print_ps_status._entry.88, ptr @r600_dpm_print_ps_status._entry_ptr, ptr @r600_dpm_print_ps_status._entry_ptr.81, ptr @r600_dpm_print_ps_status._entry_ptr.84, ptr @r600_dpm_print_ps_status._entry_ptr.87, ptr @r600_dpm_print_ps_status._entry_ptr.89, ptr @r600_utc, ptr @r600_dtc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @r600_encode_pci_lane_width.encoded_lanes, ptr @switch.table.r600_dpm_print_class_info], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_utc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dtc to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_class_info._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_cap_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_cap_info._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_cap_info._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_cap_info._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_cap_info._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_ps_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_ps_status._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_ps_status._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_ps_status._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_dpm_print_ps_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r600_encode_pci_lane_width.encoded_lanes to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r600_dpm_print_class_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dpm_print_class_info(i32 noundef %class, i32 noundef %class2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %class, 7
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.r600_dpm_print_class_info, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end

do.end:                                           ; preds = %switch.lookup, %entry.do.end_crit_edge
  %s.0 = phi ptr [ @.str, %entry.do.end_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %s.0) #14
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %class)
  %cmp = icmp ult i32 %class, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %class2)
  %cmp10 = icmp eq i32 %class2, 0
  %or.cond = and i1 %cmp, %cmp10
  br i1 %or.cond, label %do.end.do.end161.sink.split_crit_edge, label %if.else

do.end.do.end161.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161.sink.split

if.else:                                          ; preds = %do.end
  %and16 = and i32 %class, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %do.end20

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %if.end

if.end:                                           ; preds = %do.end20, %if.else.if.end_crit_edge
  %and23 = and i32 %class, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end.if.end31_crit_edge, label %do.end28

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #14
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end.if.end31_crit_edge
  %and32 = and i32 %class, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end40_crit_edge, label %do.end37

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #14
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end31.if.end40_crit_edge
  %and41 = and i32 %class, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end49_crit_edge, label %do.end46

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #14
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end40.if.end49_crit_edge
  %and50 = and i32 %class, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end58_crit_edge, label %do.end55

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #14
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end49.if.end58_crit_edge
  %and59 = and i32 %class, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end67_crit_edge, label %do.end64

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %if.end67

if.end67:                                         ; preds = %do.end64, %if.end58.if.end67_crit_edge
  %and68 = and i32 %class, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end76_crit_edge, label %do.end73

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #14
  br label %if.end76

if.end76:                                         ; preds = %do.end73, %if.end67.if.end76_crit_edge
  %and77 = and i32 %class, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end85_crit_edge, label %do.end82

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #14
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %if.end76.if.end85_crit_edge
  %and86 = and i32 %class, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end94_crit_edge, label %do.end91

if.end85.if.end94_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  br label %if.end94

if.end94:                                         ; preds = %do.end91, %if.end85.if.end94_crit_edge
  %and95 = and i32 %class, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end103_crit_edge, label %do.end100

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #14
  br label %if.end103

if.end103:                                        ; preds = %do.end100, %if.end94.if.end103_crit_edge
  %and104 = and i32 %class, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end103.if.end112_crit_edge, label %do.end109

if.end103.if.end112_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #14
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.end103.if.end112_crit_edge
  %and113 = and i32 %class, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end121_crit_edge, label %do.end118

if.end112.if.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #13
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #14
  br label %if.end121

if.end121:                                        ; preds = %do.end118, %if.end112.if.end121_crit_edge
  %and122 = and i32 %class, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.end121.if.end130_crit_edge, label %do.end127

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.end127:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #14
  br label %if.end130

if.end130:                                        ; preds = %do.end127, %if.end121.if.end130_crit_edge
  %and131 = and i32 %class2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end130.if.end139_crit_edge, label %do.end136

if.end130.if.end139_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end139

do.end136:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %call138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #14
  br label %if.end139

if.end139:                                        ; preds = %do.end136, %if.end130.if.end139_crit_edge
  %and140 = and i32 %class2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end139.if.end148_crit_edge, label %do.end145

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

do.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #14
  br label %if.end148

if.end148:                                        ; preds = %do.end145, %if.end139.if.end148_crit_edge
  %and149 = and i32 %class2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.do.end161_crit_edge, label %if.end148.do.end161.sink.split_crit_edge

if.end148.do.end161.sink.split_crit_edge:         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161.sink.split

if.end148.do.end161_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

do.end161.sink.split:                             ; preds = %if.end148.do.end161.sink.split_crit_edge, %do.end.do.end161.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.11, %do.end.do.end161.sink.split_crit_edge ], [ @.str.59, %if.end148.do.end161.sink.split_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink) #14
  br label %do.end161

do.end161:                                        ; preds = %do.end161.sink.split, %if.end148.do.end161_crit_edge
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dpm_print_cap_info(i32 noundef %caps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #14
  %and = and i32 %caps, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #14
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry.if.end_crit_edge
  %and5 = and i32 %caps, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #14
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  %and13 = and i32 %caps, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.do.end22_crit_edge, label %do.end17

if.end12.do.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #14
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %if.end12.do.end22_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dpm_print_ps_status(ptr nocapture noundef readonly %rdev, ptr noundef readnone %rps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #14
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %cmp = icmp eq ptr %1, %rps
  br i1 %cmp, label %do.end2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #14
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry.if.end_crit_edge
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %2 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %requested_ps, align 4
  %cmp7 = icmp eq ptr %3, %rps
  br i1 %cmp7, label %do.end10, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end.if.end13_crit_edge
  %boot_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %4 = ptrtoint ptr %boot_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %boot_ps, align 4
  %cmp16 = icmp eq ptr %5, %rps
  br i1 %cmp16, label %do.end19, label %if.end13.do.end24_crit_edge

if.end13.do.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #14
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %if.end13.do.end24_crit_edge
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dpm_get_vblank_time(ptr nocapture noundef readonly %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %land.lhs.true

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %entry
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_config_initialized, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end29_crit_edge, label %if.then

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.lhs.true
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn43 = load ptr, ptr %crtc_list, align 4
  %cmp.not44 = icmp eq ptr %.pn43, %crtc_list
  br i1 %cmp.not44, label %if.then.if.end29_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn43, %if.then.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn45, i32 160
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 8, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true8:                                   ; preds = %for.body
  %enabled9 = getelementptr i8, ptr %.pn45, i32 988
  %9 = ptrtoint ptr %enabled9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled9, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %land.lhs.true8.for.inc_crit_edge, label %land.lhs.true11

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %hw_mode = getelementptr i8, ptr %.pn45, i32 1252
  %11 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %land.lhs.true11.for.inc_crit_edge, label %if.then13

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  %crtc_htotal = getelementptr i8, ptr %.pn45, i32 1294
  %13 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_htotal, align 2
  %conv = zext i16 %14 to i32
  %crtc_vblank_end = getelementptr i8, ptr %.pn45, i32 1302
  %15 = ptrtoint ptr %crtc_vblank_end to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_vblank_end, align 2
  %conv16 = zext i16 %16 to i32
  %crtc_vdisplay = getelementptr i8, ptr %.pn45, i32 1298
  %17 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crtc_vdisplay, align 2
  %conv18 = zext i16 %18 to i32
  %sub = sub nsw i32 %conv16, %conv18
  %v_border = getelementptr i8, ptr %.pn45, i32 1049
  %19 = ptrtoint ptr %v_border to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %v_border, align 1
  %conv19 = zext i8 %20 to i32
  %mul = shl nuw nsw i32 %conv19, 1
  %add = add nsw i32 %sub, %mul
  %mul20 = mul nuw nsw i32 %conv, 1000
  %mul21 = mul i32 %mul20, %add
  %div = udiv i32 %mul21, %12
  br label %if.end29

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.if.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %for.inc.if.end29_crit_edge, %if.then13, %if.then.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %entry.if.end29_crit_edge
  %vblank_time_us.0 = phi i32 [ %div, %if.then13 ], [ -1, %land.lhs.true.if.end29_crit_edge ], [ -1, %entry.if.end29_crit_edge ], [ -1, %if.then.if.end29_crit_edge ], [ -1, %for.inc.if.end29_crit_edge ]
  ret i32 %vblank_time_us.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dpm_get_vrefresh(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %num_crtc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %land.lhs.true

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode_config_initialized, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end20_crit_edge, label %if.then

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then:                                          ; preds = %land.lhs.true
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %6 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn29 = load ptr, ptr %crtc_list, align 4
  %cmp.not30 = icmp eq ptr %.pn29, %crtc_list
  br i1 %cmp.not30, label %if.then.if.end20_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn31 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn29, %if.then.for.body_crit_edge ]
  %enabled = getelementptr i8, ptr %.pn31, i32 160
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 8, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true8:                                   ; preds = %for.body
  %enabled9 = getelementptr i8, ptr %.pn31, i32 988
  %9 = ptrtoint ptr %enabled9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled9, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  br i1 %tobool10.not, label %land.lhs.true8.for.inc_crit_edge, label %land.lhs.true11

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %hw_mode = getelementptr i8, ptr %.pn31, i32 1252
  %11 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %land.lhs.true11.for.inc_crit_edge, label %if.then13

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  %hw_mode.le = getelementptr i8, ptr %.pn31, i32 1252
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %hw_mode.le) #11
  br label %if.end20

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.inc.if.end20_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %if.then13, %if.then.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  %vrefresh.0 = phi i32 [ %call, %if.then13 ], [ 0, %land.lhs.true.if.end20_crit_edge ], [ 0, %entry.if.end20_crit_edge ], [ 0, %if.then.if.end20_crit_edge ], [ 0, %for.inc.if.end20_crit_edge ]
  ret i32 %vrefresh.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @r600_calculate_u_and_p(i32 noundef %i, i32 noundef %r_c, i32 noundef %p_b, ptr nocapture noundef writeonly %p, ptr nocapture noundef writeonly %u) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %r_c, %i
  %div = udiv i32 %mul, 100
  %shr = lshr i32 %div, %p_b
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not11 = icmp eq i32 %shr, 0
  br i1 %tobool.not11, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %tmp.013 = phi i32 [ %shr1, %while.body.while.body_crit_edge ], [ %shr, %entry.while.body_crit_edge ]
  %b_c.012 = phi i32 [ %phi.bo, %while.body.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %shr1 = lshr i32 %tmp.013, 1
  %phi.bo = add nuw nsw i32 %b_c.012, 1
  %tobool.not = icmp ult i32 %tmp.013, 2
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %b_c.0.lcssa = phi i32 [ 1, %entry.while.end_crit_edge ], [ %phi.bo, %while.body.while.end_crit_edge ]
  %div29 = lshr i32 %b_c.0.lcssa, 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %div29, ptr %u, align 4
  %mul3 = and i32 %b_c.0.lcssa, -2
  %div410 = lshr i32 %div, %mul3
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %div410, ptr %p, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @r600_calculate_at(i32 noundef %t, i32 noundef %h, i32 noundef %fh, i32 noundef %fl, ptr nocapture noundef writeonly %tl, ptr nocapture noundef writeonly %th) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %fl, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %fh)
  %.not = icmp ult i32 %0, %fh
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %fh, 100
  %div = udiv i32 %mul, %fl
  %sub = add i32 %div, -100
  %mul4 = mul i32 %sub, %t
  %mul5 = mul i32 %h, 100
  %add = add i32 %mul4, %mul5
  %mul6 = mul i32 %add, 1000
  %div7 = udiv i32 %mul4, 100
  %add8 = add nuw nsw i32 %div7, 10000
  %div9 = udiv i32 %mul6, %add8
  %add10 = add nuw nsw i32 %div9, 5
  %div11 = udiv i32 %add10, 10
  %mul12 = mul i32 %div11, %t
  %add13 = add i32 %mul12, 5000
  %div14 = udiv i32 %add13, 10000
  %sub16 = sub i32 %t, %div14
  %1 = ptrtoint ptr %th to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub16, ptr %th, align 4
  %sub15 = add i32 %div11, %t
  %add17 = sub i32 %sub15, %div14
  %2 = ptrtoint ptr %tl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add17, ptr %tl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_gfx_clockgating_enable(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1568
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i32 %2, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %5, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %3) #11, !srcloc !149
  br label %if.end13

do.body1:                                         ; preds = %entry
  %6 = and i32 %2, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %8, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %6) #11, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %10, i32 1988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 33554432) #11, !srcloc !149
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %11 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp60 = icmp sgt i32 %12, 0
  br i1 %cmp60, label %do.body1.for.body_crit_edge, label %do.body1.for.end_crit_edge

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %do.body1.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %do.body1.for.body_crit_edge ]
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 1988
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %16 = and i32 %15, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %16)
  %cmp10 = icmp eq i32 %16, 268435456
  br i1 %cmp10, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.061, 1
  %18 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %do.body1.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %21, i32 1988
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #11, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %23, i32 32780
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 16777216) #11, !srcloc !149
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %25, i32 32780
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %if.end13

if.end13:                                         ; preds = %for.end, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_dynamicpm_enable(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #11, !srcloc !149
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_enable_thermal_protection(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = and i32 %2, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #11, !srcloc !149
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_enable_acpi_pm(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %5, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %3) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_enable_dynamic_pcie_gen2(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i32 %2, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #11, !srcloc !149
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %2, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @r600_dynamicpm_enabled(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_enable_sclk_control(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1568
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #11, !srcloc !149
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_enable_mclk_control(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1572
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #11, !srcloc !149
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_enable_spll_bypass(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body1

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i32 %2, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %3) #11, !srcloc !149
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %2, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %8, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_wait_for_spll_change(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp sgt i32 %1, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.04, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_bsp(ptr nocapture noundef readonly %rdev, i32 noundef %u, i32 noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %u, 16
  %or = or i32 %shl1, %p
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_at(ptr nocapture noundef readonly %rdev, i32 noundef %l_to_m, i32 noundef %m_to_h, i32 noundef %h_to_m, i32 noundef %m_to_l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %shl1 = shl i32 %m_to_h, 16
  %or = or i32 %shl1, %l_to_m
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #11, !srcloc !149
  %shl3 = shl i32 %m_to_l, 16
  %or4 = or i32 %shl3, %h_to_m
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %or4) #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %5, i32 1940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %3) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_tc(ptr noundef %rdev, i32 noundef %index, i32 noundef %u_t, i32 noundef %d_t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 2
  %add = add i32 %mul, 1872
  %shl1 = shl i32 %d_t, 10
  %or = or i32 %shl1, %u_t
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !149
  br label %r100_mm_wreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_select_td(ptr nocapture noundef readonly %rdev, i32 noundef %td) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %td)
  %cmp = icmp eq i32 %td, 0
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1568
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = and i32 %2, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %5, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %3) #11, !srcloc !149
  br label %if.end24

if.end:                                           ; preds = %entry
  %6 = or i32 %2, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %8, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %6) #11, !srcloc !149
  %9 = zext i32 %td to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %td, label %if.end.if.end24_crit_edge [
    i32 1, label %do.body9
    i32 2, label %do.body18
  ]

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %11, i32 1568
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %13 = and i32 %12, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %15, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %13) #11, !srcloc !149
  br label %if.end24

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %17, i32 1568
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %19 = or i32 %18, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %21, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %19) #11, !srcloc !149
  br label %if.end24

if.end24:                                         ; preds = %do.body18, %do.body9, %if.end.if.end24_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_vrc(ptr nocapture noundef readonly %rdev, i32 noundef %vrv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %vrv) #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_tpu(ptr nocapture noundef readonly %rdev, i32 noundef %u) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1564
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -32784
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %u, 23
  %and1 = and i32 %shl, 260046848
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_tpc(ptr nocapture noundef readonly %rdev, i32 noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1564
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 33023
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %c, 8388607
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_sstu(ptr nocapture noundef readonly %rdev, i32 noundef %u) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1960
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -3841
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %u, 16
  %and1 = and i32 %shl, 983040
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_sst(ptr nocapture noundef readonly %rdev, i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1960
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %t, 65535
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1960
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_git(ptr nocapture noundef readonly %rdev, i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1944
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %t, 65535
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_fctu(ptr nocapture noundef readonly %rdev, i32 noundef %u) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1996
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -7937
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %u, 16
  %and1 = and i32 %shl, 2031616
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_fct(ptr nocapture noundef readonly %rdev, i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1996
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %t, 65535
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_ctxcgtt3d_rphc(ptr nocapture noundef readonly %rdev, i32 noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1860
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %p, 511
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_ctxcgtt3d_rsdc(ptr nocapture noundef readonly %rdev, i32 noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1860
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -16678657
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %s, 9
  %and1 = and i32 %shl, 8388096
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_vddc3d_oorsu(ptr nocapture noundef readonly %rdev, i32 noundef %u) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1864
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -32776
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %u, 23
  %and1 = and i32 %shl, 125829120
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_vddc3d_oorphc(ptr nocapture noundef readonly %rdev, i32 noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1864
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 16711679
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %p, 511
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_vddc3d_oorsdc(ptr nocapture noundef readonly %rdev, i32 noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1864
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -16678657
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %s, 9
  %and1 = and i32 %shl, 8388096
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_mpll_lock_time(ptr nocapture noundef readonly %rdev, i32 noundef %lock_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1588
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %lock_time, 65535
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_set_mpll_reset_time(ptr nocapture noundef readonly %rdev, i32 noundef %reset_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1588
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -65536
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %reset_time, 16
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef %index, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1612
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %enable, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %or = or i32 %retval.0.i, -2147483648
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i28 = icmp ugt i32 %7, %add
  %or.cond.i30 = or i1 %cmp1.i, %cmp.i28
  br i1 %or.cond.i30, label %do.body.i, label %if.else.i33

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i31 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %8) #11, !srcloc !149
  br label %if.end

if.else.i33:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %if.end

do.body5:                                         ; preds = %entry
  br i1 %or.cond.i, label %if.then.i40, label %if.else.i42

if.then.i40:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i38 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !150
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit44

if.else.i42:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i41 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit44

r100_mm_rreg.exit44:                              ; preds = %if.else.i42, %if.then.i40
  %retval.0.i43 = phi i32 [ %call3.i41, %if.else.i42 ], [ %14, %if.then.i40 ]
  %and11 = and i32 %retval.0.i43, 2147483647
  %15 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp.i46 = icmp ugt i32 %16, %add
  %or.cond.i48 = or i1 %cmp1.i, %cmp.i46
  br i1 %or.cond.i48, label %do.body.i51, label %if.else.i52

do.body.i51:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %and11) #11
  %rmmio.i49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %18 = ptrtoint ptr %rmmio.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %17) #11, !srcloc !149
  br label %if.end

if.else.i52:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %and11) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i52, %do.body.i51, %if.else.i33, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_enable_pulse_skipping(ptr noundef %rdev, i32 noundef %index, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1612
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %enable, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %or = or i32 %retval.0.i, 1073741824
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i28 = icmp ugt i32 %7, %add
  %or.cond.i30 = or i1 %cmp1.i, %cmp.i28
  br i1 %or.cond.i30, label %do.body.i, label %if.else.i33

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i31 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %8) #11, !srcloc !149
  br label %if.end

if.else.i33:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %if.end

do.body5:                                         ; preds = %entry
  br i1 %or.cond.i, label %if.then.i40, label %if.else.i42

if.then.i40:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i38 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !150
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit44

if.else.i42:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i41 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit44

r100_mm_rreg.exit44:                              ; preds = %if.else.i42, %if.then.i40
  %retval.0.i43 = phi i32 [ %call3.i41, %if.else.i42 ], [ %14, %if.then.i40 ]
  %and11 = and i32 %retval.0.i43, -1073741825
  %15 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp.i46 = icmp ugt i32 %16, %add
  %or.cond.i48 = or i1 %cmp1.i, %cmp.i46
  br i1 %or.cond.i48, label %do.body.i51, label %if.else.i52

do.body.i51:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %and11) #11
  %rmmio.i49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %18 = ptrtoint ptr %rmmio.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %17) #11, !srcloc !149
  br label %if.end

if.else.i52:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %and11) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i52, %do.body.i51, %if.else.i33, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_enable_post_divider(ptr noundef %rdev, i32 noundef %index, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1612
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %enable, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %or = or i32 %retval.0.i, 512
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i28 = icmp ugt i32 %7, %add
  %or.cond.i30 = or i1 %cmp1.i, %cmp.i28
  br i1 %or.cond.i30, label %do.body.i, label %if.else.i33

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i31 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %8) #11, !srcloc !149
  br label %if.end

if.else.i33:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %if.end

do.body5:                                         ; preds = %entry
  br i1 %or.cond.i, label %if.then.i40, label %if.else.i42

if.then.i40:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i38 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %11 = ptrtoint ptr %rmmio.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i38, align 4
  %add.ptr.i39 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !150
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit44

if.else.i42:                                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i41 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit44

r100_mm_rreg.exit44:                              ; preds = %if.else.i42, %if.then.i40
  %retval.0.i43 = phi i32 [ %call3.i41, %if.else.i42 ], [ %14, %if.then.i40 ]
  %and11 = and i32 %retval.0.i43, -513
  %15 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add)
  %cmp.i46 = icmp ugt i32 %16, %add
  %or.cond.i48 = or i1 %cmp1.i, %cmp.i46
  br i1 %or.cond.i48, label %do.body.i51, label %if.else.i52

do.body.i51:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %and11) #11
  %rmmio.i49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %18 = ptrtoint ptr %rmmio.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %17) #11, !srcloc !149
  br label %if.end

if.else.i52:                                      ; preds = %r100_mm_rreg.exit44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %and11) #11
  br label %if.end

if.end:                                           ; preds = %if.else.i52, %do.body.i51, %if.else.i33, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_set_post_divider(ptr noundef %rdev, i32 noundef %index, i32 noundef %divider) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1608
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, -256
  %and2 = and i32 %divider, 255
  %or = or i32 %and, %and2
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i11 = icmp ugt i32 %7, %add
  %or.cond.i13 = or i1 %cmp1.i, %cmp.i11
  br i1 %or.cond.i13, label %do.body.i, label %if.else.i16

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #11, !srcloc !149
  br label %r100_mm_wreg.exit

if.else.i16:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i16, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_set_reference_divider(ptr noundef %rdev, i32 noundef %index, i32 noundef %divider) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1608
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, -458753
  %shl = shl i32 %divider, 16
  %and2 = and i32 %shl, 458752
  %or = or i32 %and, %and2
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i11 = icmp ugt i32 %7, %add
  %or.cond.i13 = or i1 %cmp1.i, %cmp.i11
  br i1 %or.cond.i13, label %do.body.i, label %if.else.i16

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #11, !srcloc !149
  br label %r100_mm_wreg.exit

if.else.i16:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i16, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_set_feedback_divider(ptr noundef %rdev, i32 noundef %index, i32 noundef %divider) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1608
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, -65281
  %shl = shl i32 %divider, 8
  %and2 = and i32 %shl, 65280
  %or = or i32 %and, %and2
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i11 = icmp ugt i32 %7, %add
  %or.cond.i13 = or i1 %cmp1.i, %cmp.i11
  br i1 %or.cond.i13, label %do.body.i, label %if.else.i16

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #11, !srcloc !149
  br label %r100_mm_wreg.exit

if.else.i16:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i16, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_engine_clock_entry_set_step_time(ptr noundef %rdev, i32 noundef %index, i32 noundef %step_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mul1 = shl i32 %index, 3
  %add = add i32 %mul1, 1608
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.i = icmp ugt i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #11
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %5, %if.then.i ]
  %and = and i32 %retval.0.i, 524287
  %shl = shl i32 %step_time, 19
  %or = or i32 %and, %shl
  %6 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp.i11 = icmp ugt i32 %7, %add
  %or.cond.i13 = or i1 %cmp1.i, %cmp.i11
  br i1 %or.cond.i13, label %do.body.i, label %if.else.i16

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %rmmio.i14 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %9 = ptrtoint ptr %rmmio.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %8) #11, !srcloc !149
  br label %r100_mm_wreg.exit

if.else.i16:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add, i32 noundef %or) #11
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i16, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_vid_rt_set_ssu(ptr nocapture noundef readonly %rdev, i32 noundef %u) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1784
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -1793
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %u, 16
  %and1 = and i32 %shl, 458752
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_vid_rt_set_vru(ptr nocapture noundef readonly %rdev, i32 noundef %u) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1784
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -14680065
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %u, 13
  %and1 = and i32 %shl, 57344
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_vid_rt_set_vrt(ptr nocapture noundef readonly %rdev, i32 noundef %rt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1784
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 14745599
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and1 = and i32 %rt, 8191
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_voltage_control_enable_pins(ptr nocapture noundef readonly %rdev, i64 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %mask to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #11, !srcloc !149
  %shr = lshr i64 %mask, 32
  %conv2 = trunc i64 %shr to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %3 = tail call i32 @llvm.bswap.i32(i32 %conv2) #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %5, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %3) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_voltage_control_program_voltages(ptr noundef %rdev, i32 noundef %index, i64 noundef %pins) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %index, 3
  %sub = xor i32 %and, 3
  %conv = trunc i64 %pins to i32
  %mul = shl nuw nsw i32 %sub, 2
  %add = add nuw nsw i32 %mul, 1816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv) #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #11, !srcloc !149
  %mul2 = mul nuw nsw i32 %sub, 3
  %shl = shl i32 7, %mul2
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %4, i32 1856
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #11, !srcloc !150
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %neg = xor i32 %shl, -1
  %and3 = and i32 %6, %neg
  %sub6 = sub nuw nsw i32 32, %mul2
  %sh_prom = zext i32 %sub6 to i64
  %shr = lshr i64 %pins, %sh_prom
  %7 = trunc i64 %shr to i32
  %8 = and i32 %shl, %7
  %conv9 = or i32 %and3, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv9) #11
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %11, i32 1856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %9) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_voltage_control_deactivate_static_control(ptr nocapture noundef readonly %rdev, i64 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 6040
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %4 = trunc i64 %mask to i32
  %5 = xor i32 %4, -1
  %conv1 = and i32 %3, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv1) #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %8, i32 6040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %6) #11, !srcloc !149
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %10, i32 6048
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #11, !srcloc !150
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %conv6 = and i32 %12, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv6) #11
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 6048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %13) #11, !srcloc !149
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %17, i32 6044
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #11, !srcloc !150
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %conv11 = and i32 %19, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %conv11) #11
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %22, i32 6044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %20) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_enable(ptr noundef %rdev, i32 noundef %index, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %index, 2
  %sub = and i32 %and, 12
  %mul = xor i32 %sub, 12
  %add = add nuw nsw i32 %mul, 1788
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %enable, label %do.body, label %do.body4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = or i32 %2, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %3) #11, !srcloc !149
  br label %if.end

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = and i32 %2, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %6) #11, !srcloc !149
  br label %if.end

if.end:                                           ; preds = %do.body4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef %index, i32 noundef %voltage_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %index, 2
  %sub = and i32 %and, 12
  %mul = xor i32 %sub, 12
  %add = add nuw nsw i32 %mul, 1788
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -50331649
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and2 = and i32 %voltage_index, 3
  %or = or i32 %4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef %index, i32 noundef %mem_clock_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %index, 2
  %sub = and i32 %and, 12
  %mul = xor i32 %sub, 12
  %add = add nuw nsw i32 %mul, 1788
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -201326593
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %mem_clock_index, 2
  %and2 = and i32 %shl, 12
  %or = or i32 %4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef %index, i32 noundef %eng_clock_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %index, 2
  %sub = and i32 %and, 12
  %mul = xor i32 %sub, 12
  %add = add nuw nsw i32 %mul, 1788
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, 268369919
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %eng_clock_index, 4
  %and2 = and i32 %shl, 496
  %or = or i32 %4, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef %index, i32 noundef %watermark_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %watermark_id)
  %cmp = icmp eq i32 %watermark_id, 1
  %spec.store.select = select i1 %cmp, i32 2048, i32 0
  %and = shl i32 %index, 2
  %sub = and i32 %and, 12
  %mul = xor i32 %sub, 12
  %add = add nuw nsw i32 %mul, 1788
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -524289
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %spec.store.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_set_pcie_gen2(ptr noundef %rdev, i32 noundef %index, i1 noundef zeroext %compatible) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spec.store.select = select i1 %compatible, i32 4096, i32 0
  %and = shl i32 %index, 2
  %sub = and i32 %and, 12
  %mul = xor i32 %sub, 12
  %add = add nuw nsw i32 %mul, 1788
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -1048577
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or = or i32 %4, %spec.store.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %7, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_power_level_get_current_index(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1804
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %3 = lshr i32 %2, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %shr = and i32 %3, 3
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_power_level_get_target_index(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1804
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %and = and i32 %3, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_power_level_set_enter_index(ptr nocapture noundef readonly %rdev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1804
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %3 = and i32 %2, -805306369
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %shl = shl i32 %index, 4
  %and1 = and i32 %shl, 48
  %or = or i32 %4, %and1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_wait_for_power_level_unequal(ptr nocapture noundef readonly %rdev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end12_crit_edge

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1804
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !150
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %and.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %index)
  %cmp1.not = icmp eq i32 %and.i, %index
  br i1 %cmp1.not, label %if.end, label %for.endthread-pre-split

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.023, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %usec_timeout, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end.for.end_crit_edge
  %10 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %8, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp424 = icmp sgt i32 %10, 0
  br i1 %cmp424, label %for.end.for.body5_crit_edge, label %for.end.for.end12_crit_edge

for.end.for.end12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.body5:                                        ; preds = %if.end9.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %i.125 = phi i32 [ %inc11, %if.end9.for.body5_crit_edge ], [ 0, %for.end.for.body5_crit_edge ]
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %12, i32 1804
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #11, !srcloc !150
  %14 = lshr i32 %13, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %shr.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %index)
  %cmp7.not = icmp eq i32 %shr.i, %index
  br i1 %cmp7.not, label %if.end9, label %for.body5.for.end12_crit_edge

for.body5.for.end12_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

if.end9:                                          ; preds = %for.body5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #11
  %inc11 = add nuw nsw i32 %i.125, 1
  %16 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usec_timeout, align 4
  %cmp4 = icmp slt i32 %inc11, %17
  br i1 %cmp4, label %if.end9.for.body5_crit_edge, label %if.end9.for.end12_crit_edge

if.end9.for.end12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

if.end9.for.body5_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end12:                                        ; preds = %if.end9.for.end12_crit_edge, %for.body5.for.end12_crit_edge, %for.end.for.end12_crit_edge, %entry.for.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_wait_for_power_level(ptr nocapture noundef readonly %rdev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end12_crit_edge

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1804
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !150
  %5 = lshr i32 %4, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %and.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %index)
  %cmp1 = icmp eq i32 %and.i, %index
  br i1 %cmp1, label %for.endthread-pre-split, label %if.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #11
  %inc = add nuw nsw i32 %i.023, 1
  %7 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %usec_timeout, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end.for.end_crit_edge
  %10 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %8, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp424 = icmp sgt i32 %10, 0
  br i1 %cmp424, label %for.end.for.body5_crit_edge, label %for.end.for.end12_crit_edge

for.end.for.end12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

for.end.for.body5_crit_edge:                      ; preds = %for.end
  br label %for.body5

for.body5:                                        ; preds = %if.end9.for.body5_crit_edge, %for.end.for.body5_crit_edge
  %i.125 = phi i32 [ %inc11, %if.end9.for.body5_crit_edge ], [ 0, %for.end.for.body5_crit_edge ]
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %12, i32 1804
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #11, !srcloc !150
  %14 = lshr i32 %13, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %shr.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %index)
  %cmp7 = icmp eq i32 %shr.i, %index
  br i1 %cmp7, label %for.body5.for.end12_crit_edge, label %if.end9

for.body5.for.end12_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

if.end9:                                          ; preds = %for.body5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #11
  %inc11 = add nuw nsw i32 %i.125, 1
  %16 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usec_timeout, align 4
  %cmp4 = icmp slt i32 %inc11, %17
  br i1 %cmp4, label %if.end9.for.body5_crit_edge, label %if.end9.for.end12_crit_edge

if.end9.for.end12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end12

if.end9.for.body5_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end12:                                        ; preds = %if.end9.for.end12_crit_edge, %for.body5.for.end12_crit_edge, %for.end.for.end12_crit_edge, %entry.for.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_start_dpm(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1568
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %5, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %3) #11, !srcloc !149
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %7, i32 1572
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i22 = getelementptr i8, ptr %11, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i22, i32 %9) #11, !srcloc !149
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %13, i32 1560
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %15 = or i32 %14, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %16 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %17, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %15) #11, !srcloc !149
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %18 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic, align 8
  %wait_for_vblank = getelementptr inbounds %struct.radeon_asic, ptr %19, i32 0, i32 16, i32 2
  %20 = ptrtoint ptr %wait_for_vblank to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wait_for_vblank, align 4
  tail call void %21(ptr noundef %rdev, i32 noundef 0) #11
  %22 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asic, align 8
  %wait_for_vblank3 = getelementptr inbounds %struct.radeon_asic, ptr %23, i32 0, i32 16, i32 2
  %24 = ptrtoint ptr %wait_for_vblank3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wait_for_vblank3, align 4
  tail call void %25(ptr noundef %rdev, i32 noundef 1) #11
  %26 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %27, i32 1536
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %29 = or i32 %28, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i27 = getelementptr i8, ptr %31, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i27, i32 %29) #11, !srcloc !149
  %usec_timeout.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %32 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp3.i = icmp sgt i32 %33, 0
  br i1 %cmp3.i, label %entry.for.body.i_crit_edge, label %entry.r600_wait_for_spll_change.exit_crit_edge

entry.r600_wait_for_spll_change.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i29 = getelementptr i8, ptr %35, i32 1536
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i29) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %37 = and i32 %36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.r600_wait_for_spll_change.exit_crit_edge

for.body.i.r600_wait_for_spll_change.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #11
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %39 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %40
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.r600_wait_for_spll_change.exit_crit_edge

if.end.i.r600_wait_for_spll_change.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

r600_wait_for_spll_change.exit:                   ; preds = %if.end.i.r600_wait_for_spll_change.exit_crit_edge, %for.body.i.r600_wait_for_spll_change.exit_crit_edge, %entry.r600_wait_for_spll_change.exit_crit_edge
  %41 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %42, i32 1536
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %44 = and i32 %43, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i32 = getelementptr i8, ptr %46, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i32, i32 %44) #11, !srcloc !149
  %47 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp3.i36 = icmp sgt i32 %48, 0
  br i1 %cmp3.i36, label %r600_wait_for_spll_change.exit.for.body.i40_crit_edge, label %r600_wait_for_spll_change.exit.r600_wait_for_spll_change.exit44_crit_edge

r600_wait_for_spll_change.exit.r600_wait_for_spll_change.exit44_crit_edge: ; preds = %r600_wait_for_spll_change.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit44

r600_wait_for_spll_change.exit.for.body.i40_crit_edge: ; preds = %r600_wait_for_spll_change.exit
  br label %for.body.i40

for.body.i40:                                     ; preds = %if.end.i43.for.body.i40_crit_edge, %r600_wait_for_spll_change.exit.for.body.i40_crit_edge
  %i.04.i37 = phi i32 [ %inc.i41, %if.end.i43.for.body.i40_crit_edge ], [ 0, %r600_wait_for_spll_change.exit.for.body.i40_crit_edge ]
  %49 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %50, i32 1536
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %52 = and i32 %51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i39 = icmp eq i32 %52, 0
  br i1 %tobool.not.i39, label %if.end.i43, label %for.body.i40.r600_wait_for_spll_change.exit44_crit_edge

for.body.i40.r600_wait_for_spll_change.exit44_crit_edge: ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit44

if.end.i43:                                       ; preds = %for.body.i40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #11
  %inc.i41 = add nuw nsw i32 %i.04.i37, 1
  %54 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i42 = icmp slt i32 %inc.i41, %55
  br i1 %cmp.i42, label %if.end.i43.for.body.i40_crit_edge, label %if.end.i43.r600_wait_for_spll_change.exit44_crit_edge

if.end.i43.r600_wait_for_spll_change.exit44_crit_edge: ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit44

if.end.i43.for.body.i40_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i40

r600_wait_for_spll_change.exit44:                 ; preds = %if.end.i43.r600_wait_for_spll_change.exit44_crit_edge, %for.body.i40.r600_wait_for_spll_change.exit44_crit_edge, %r600_wait_for_spll_change.exit.r600_wait_for_spll_change.exit44_crit_edge
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %57, i32 1536
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %59 = or i32 %58, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i47 = getelementptr i8, ptr %61, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i47, i32 %59) #11, !srcloc !149
  %62 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp3.i51 = icmp sgt i32 %63, 0
  br i1 %cmp3.i51, label %r600_wait_for_spll_change.exit44.for.body.i55_crit_edge, label %r600_wait_for_spll_change.exit44.r600_wait_for_spll_change.exit59_crit_edge

r600_wait_for_spll_change.exit44.r600_wait_for_spll_change.exit59_crit_edge: ; preds = %r600_wait_for_spll_change.exit44
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit59

r600_wait_for_spll_change.exit44.for.body.i55_crit_edge: ; preds = %r600_wait_for_spll_change.exit44
  br label %for.body.i55

for.body.i55:                                     ; preds = %if.end.i58.for.body.i55_crit_edge, %r600_wait_for_spll_change.exit44.for.body.i55_crit_edge
  %i.04.i52 = phi i32 [ %inc.i56, %if.end.i58.for.body.i55_crit_edge ], [ 0, %r600_wait_for_spll_change.exit44.for.body.i55_crit_edge ]
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %65, i32 1536
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i54 = icmp eq i32 %67, 0
  br i1 %tobool.not.i54, label %if.end.i58, label %for.body.i55.r600_wait_for_spll_change.exit59_crit_edge

for.body.i55.r600_wait_for_spll_change.exit59_crit_edge: ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit59

if.end.i58:                                       ; preds = %for.body.i55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748) #11
  %inc.i56 = add nuw nsw i32 %i.04.i52, 1
  %69 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i57 = icmp slt i32 %inc.i56, %70
  br i1 %cmp.i57, label %if.end.i58.for.body.i55_crit_edge, label %if.end.i58.r600_wait_for_spll_change.exit59_crit_edge

if.end.i58.r600_wait_for_spll_change.exit59_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit59

if.end.i58.for.body.i55_crit_edge:                ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i55

r600_wait_for_spll_change.exit59:                 ; preds = %if.end.i58.r600_wait_for_spll_change.exit59_crit_edge, %for.body.i55.r600_wait_for_spll_change.exit59_crit_edge, %r600_wait_for_spll_change.exit44.r600_wait_for_spll_change.exit59_crit_edge
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %72, i32 1536
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %74 = and i32 %73, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %75 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i62 = getelementptr i8, ptr %76, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i62, i32 %74) #11, !srcloc !149
  %77 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp3.i66 = icmp sgt i32 %78, 0
  br i1 %cmp3.i66, label %r600_wait_for_spll_change.exit59.for.body.i70_crit_edge, label %r600_wait_for_spll_change.exit59.r600_wait_for_spll_change.exit74_crit_edge

r600_wait_for_spll_change.exit59.r600_wait_for_spll_change.exit74_crit_edge: ; preds = %r600_wait_for_spll_change.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit74

r600_wait_for_spll_change.exit59.for.body.i70_crit_edge: ; preds = %r600_wait_for_spll_change.exit59
  br label %for.body.i70

for.body.i70:                                     ; preds = %if.end.i73.for.body.i70_crit_edge, %r600_wait_for_spll_change.exit59.for.body.i70_crit_edge
  %i.04.i67 = phi i32 [ %inc.i71, %if.end.i73.for.body.i70_crit_edge ], [ 0, %r600_wait_for_spll_change.exit59.for.body.i70_crit_edge ]
  %79 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %80, i32 1536
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i68) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %82 = and i32 %81, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i69 = icmp eq i32 %82, 0
  br i1 %tobool.not.i69, label %if.end.i73, label %for.body.i70.r600_wait_for_spll_change.exit74_crit_edge

for.body.i70.r600_wait_for_spll_change.exit74_crit_edge: ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit74

if.end.i73:                                       ; preds = %for.body.i70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %83(i32 noundef 214748) #11
  %inc.i71 = add nuw nsw i32 %i.04.i67, 1
  %84 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i72 = icmp slt i32 %inc.i71, %85
  br i1 %cmp.i72, label %if.end.i73.for.body.i70_crit_edge, label %if.end.i73.r600_wait_for_spll_change.exit74_crit_edge

if.end.i73.r600_wait_for_spll_change.exit74_crit_edge: ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_wait_for_spll_change.exit74

if.end.i73.for.body.i70_crit_edge:                ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i70

r600_wait_for_spll_change.exit74:                 ; preds = %if.end.i73.r600_wait_for_spll_change.exit74_crit_edge, %for.body.i70.r600_wait_for_spll_change.exit74_crit_edge, %r600_wait_for_spll_change.exit59.r600_wait_for_spll_change.exit74_crit_edge
  %86 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %87, i32 1568
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %89 = and i32 %88, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %90 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i77 = getelementptr i8, ptr %91, i32 1568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i77, i32 %89) #11, !srcloc !149
  %92 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %93, i32 1572
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %95 = and i32 %94, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %96 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i81 = getelementptr i8, ptr %97, i32 1572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i81, i32 %95) #11, !srcloc !149
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_stop_dpm(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 1560
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %5, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %3) #11, !srcloc !149
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r600_dpm_pre_set_power_state(ptr nocapture noundef readnone %rdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @r600_dpm_post_set_power_state(ptr nocapture noundef %rdev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @r600_is_uvd_state(i32 noundef %class, i32 noundef %class2) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %class, 58368
  %and13 = and i32 %class2, 4
  %1 = or i32 %0, %and13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp ne i32 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @r600_is_internal_thermal_sensor(i32 noundef %sensor) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %sensor, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 10
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 -133, %switch.cast
  %1 = and i10 %switch.downshift, 1
  %2 = sext i10 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i10 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_dpm_late_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq, align 8, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %2 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %int_thermal_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %3, label %land.lhs.true.cleanup_crit_edge [
    i32 3, label %land.lhs.true.if.then_crit_edge
    i32 4, label %land.lhs.true.if.then_crit_edge15
    i32 6, label %land.lhs.true.if.then_crit_edge16
    i32 7, label %land.lhs.true.if.then_crit_edge17
    i32 8, label %land.lhs.true.if.then_crit_edge18
    i32 9, label %land.lhs.true.if.then_crit_edge19
    i32 11, label %land.lhs.true.if.then_crit_edge20
    i32 12, label %land.lhs.true.if.then_crit_edge21
  ]

land.lhs.true.if.then_crit_edge21:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge20:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge19:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge18:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge17:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge16:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge15:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge15, %land.lhs.true.if.then_crit_edge16, %land.lhs.true.if.then_crit_edge17, %land.lhs.true.if.then_crit_edge18, %land.lhs.true.if.then_crit_edge19, %land.lhs.true.if.then_crit_edge20, %land.lhs.true.if.then_crit_edge21
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2040
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %8 = and i32 %7, -16711681
  %9 = or i32 %8, 7864320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %11, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %9) #11, !srcloc !149
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 2040
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %15 = and i32 %14, -65281
  %16 = or i32 %15, 23040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %16) #11, !srcloc !149
  %19 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %20, i32 2032
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #11, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !151
  %22 = and i32 %21, -15732481
  %23 = or i32 %22, 8390400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !148
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %25, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %23) #11, !srcloc !149
  %min_temp28.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 1
  %26 = ptrtoint ptr %min_temp28.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 90000, ptr %min_temp28.i, align 4
  %max_temp32.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 35, i32 2
  %27 = ptrtoint ptr %max_temp32.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 120000, ptr %max_temp32.i, align 4
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %28 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %29 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %asic, align 8
  %irq5 = getelementptr inbounds %struct.radeon_asic, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq5, align 4
  %call6 = tail call i32 %32(ptr noundef %rdev) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_get_platform_caps(ptr nocapture noundef %rdev) local_unnamed_addr #0 align 64 {
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
  store i16 -1, ptr %data_offset, align 2, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !152
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %4, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %ulPlatformCaps = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 12
  %11 = ptrtoint ptr %ulPlatformCaps to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %ulPlatformCaps, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  %14 = ptrtoint ptr %platform_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %platform_caps, align 4
  %usBackbiasTime = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 9
  %15 = ptrtoint ptr %usBackbiasTime to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usBackbiasTime, align 1
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv3 = zext i16 %17 to i32
  %backbias_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 12
  %18 = ptrtoint ptr %backbias_response_time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv3, ptr %backbias_response_time, align 4
  %usVoltageTime = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 10
  %19 = ptrtoint ptr %usVoltageTime to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usVoltageTime, align 1
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv6 = zext i16 %21 to i32
  %voltage_response_time = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 11
  %22 = ptrtoint ptr %voltage_response_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv6, ptr %voltage_response_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r600_parse_extended_power_table(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
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
  store i16 -1, ptr %data_offset, align 2, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #11
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #11
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !152
  %3 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info1, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %4, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #11
  br i1 %call, label %if.end, label %entry.cleanup1033_crit_edge

entry.cleanup1033_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1033

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
  %usTableSize = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr, i32 0, i32 11
  %11 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %usTableSize, align 1
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %13)
  %cmp = icmp ugt i16 %13, 45
  br i1 %cmp, label %if.then5, label %if.end.if.end69_crit_edge

if.end.if.end69_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then5:                                         ; preds = %if.end
  %usFanTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %usFanTableOffset to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usFanTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.then5.if.end69_crit_edge, label %if.then6

if.then5.if.end69_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then6:                                         ; preds = %if.then5
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv12 = zext i16 %16 to i32
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %conv12
  %ucTHyst = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 1
  %17 = ptrtoint ptr %ucTHyst to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucTHyst, align 1
  %fan = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21
  %t_hyst = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 6
  %19 = ptrtoint ptr %t_hyst to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %t_hyst, align 4
  %usTMin = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 2
  %20 = ptrtoint ptr %usTMin to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usTMin, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21)
  %23 = ptrtoint ptr %fan to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %fan, align 4
  %usTMed = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 3
  %24 = ptrtoint ptr %usTMed to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %usTMed, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %t_med = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 1
  %27 = ptrtoint ptr %t_med to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %t_med, align 2
  %usTHigh = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 4
  %28 = ptrtoint ptr %usTHigh to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usTHigh, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %t_high = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 2
  %31 = ptrtoint ptr %t_high to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %t_high, align 4
  %usPWMMin = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 5
  %32 = ptrtoint ptr %usPWMMin to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %usPWMMin, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %pwm_min = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 3
  %35 = ptrtoint ptr %pwm_min to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %pwm_min, align 2
  %usPWMMed = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 6
  %36 = ptrtoint ptr %usPWMMed to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %usPWMMed, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37)
  %pwm_med = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 4
  %39 = ptrtoint ptr %pwm_med to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %pwm_med, align 4
  %usPWMHigh = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE, ptr %add.ptr13, i32 0, i32 7
  %40 = ptrtoint ptr %usPWMHigh to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %usPWMHigh, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41)
  %pwm_high = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 5
  %43 = ptrtoint ptr %pwm_high to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %pwm_high, align 2
  %44 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp33 = icmp ugt i8 %45, 1
  br i1 %cmp33, label %if.then35, label %if.then6.if.end43_crit_edge

if.then6.if.end43_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then35:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %usTMax = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE2, ptr %add.ptr13, i32 0, i32 1
  %46 = ptrtoint ptr %usTMax to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %usTMax, align 1
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.then6.if.end43_crit_edge
  %.sink = phi i16 [ %48, %if.then35 ], [ 10900, %if.then6.if.end43_crit_edge ]
  %49 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %.sink, ptr %49, align 4
  %cycle_delay = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 7
  %51 = ptrtoint ptr %cycle_delay to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 100000, ptr %cycle_delay, align 4
  %52 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %add.ptr13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %53)
  %cmp49 = icmp ugt i8 %53, 2
  br i1 %cmp49, label %if.then51, label %if.end43.if.end64_crit_edge

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then51:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %ucFanControlMode = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %add.ptr13, i32 0, i32 1
  %54 = ptrtoint ptr %ucFanControlMode to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucFanControlMode, align 1
  %control_mode = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 9
  %56 = ptrtoint ptr %control_mode to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %control_mode, align 2
  %usFanPWMMax = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %add.ptr13, i32 0, i32 2
  %57 = ptrtoint ptr %usFanPWMMax to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %usFanPWMMax, align 1
  %59 = call i16 @llvm.bswap.i16(i16 %58)
  %default_max_fan_pwm = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 10
  %60 = ptrtoint ptr %default_max_fan_pwm to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %default_max_fan_pwm, align 4
  %default_fan_output_sensitivity = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 11
  %61 = ptrtoint ptr %default_fan_output_sensitivity to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 4836, ptr %default_fan_output_sensitivity, align 2
  %usFanOutputSensitivity = getelementptr inbounds %struct._ATOM_PPLIB_FANTABLE3, ptr %add.ptr13, i32 0, i32 3
  %62 = ptrtoint ptr %usFanOutputSensitivity to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %usFanOutputSensitivity, align 1
  %64 = call i16 @llvm.bswap.i16(i16 %63)
  %fan_output_sensitivity = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 12
  %65 = ptrtoint ptr %fan_output_sensitivity to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %fan_output_sensitivity, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then51, %if.end43.if.end64_crit_edge
  %ucode_fan_control = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 21, i32 13
  %66 = ptrtoint ptr %ucode_fan_control to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %ucode_fan_control, align 2
  br label %if.end69

if.end69:                                         ; preds = %if.end64, %if.then5.if.end69_crit_edge, %if.end.if.end69_crit_edge
  %67 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %usTableSize, align 1
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %69)
  %cmp72 = icmp ugt i16 %69, 65
  br i1 %cmp72, label %if.then74, label %if.end69.if.end288_crit_edge

if.end69.if.end288_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end288

if.then74:                                        ; preds = %if.end69
  %usVddcDependencyOnSCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 3
  %70 = ptrtoint ptr %usVddcDependencyOnSCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %usVddcDependencyOnSCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool75.not = icmp eq i16 %71, 0
  br i1 %tobool75.not, label %if.then74.if.end90_crit_edge, label %if.then76

if.then74.if.end90_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.then76:                                        ; preds = %if.then74
  %72 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bios, align 4
  %add.ptr80 = getelementptr i8, ptr %73, i32 %conv
  %74 = call i16 @llvm.bswap.i16(i16 %71)
  %conv82 = zext i16 %74 to i32
  %add.ptr83 = getelementptr i8, ptr %add.ptr80, i32 %conv82
  %dyn_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20
  %75 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %add.ptr83, align 1
  %conv.i = zext i8 %76 to i32
  %77 = shl nuw nsw i32 %conv.i, 3
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %77, i32 noundef 3520) #15
  %entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %78 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call8.i.i.i, ptr %entries.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.then76.cleanup1033_crit_edge, label %if.end.i

if.then76.cleanup1033_crit_edge:                  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1033

if.end.i:                                         ; preds = %if.then76
  %79 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %add.ptr83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp38.not.i = icmp eq i8 %80, 0
  br i1 %cmp38.not.i, label %if.end.i.r600_parse_clk_voltage_dep_table.exit.thread_crit_edge, label %for.body.preheader.i

if.end.i.r600_parse_clk_voltage_dep_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_parse_clk_voltage_dep_table.exit.thread

for.body.preheader.i:                             ; preds = %if.end.i
  %entries3.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr83, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %entry1.040.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %entries3.i, %for.body.preheader.i ]
  %i.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %81 = ptrtoint ptr %entry1.040.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %entry1.040.i, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82) #11
  %conv7.i = zext i16 %83 to i32
  %ucClockHigh.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i, i32 0, i32 1
  %84 = ptrtoint ptr %ucClockHigh.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ucClockHigh.i, align 1
  %conv8.i = zext i8 %85 to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 16
  %or.i = or i32 %shl.i, %conv7.i
  %86 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %entries.i, align 4
  %arrayidx10.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %87, i32 %i.039.i
  %88 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or.i, ptr %arrayidx10.i, align 4
  %usVoltage.i = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i, i32 0, i32 2
  %89 = ptrtoint ptr %usVoltage.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %usVoltage.i, align 1
  %91 = call i16 @llvm.bswap.i16(i16 %90) #11
  %92 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %entries.i, align 4
  %v.i = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %93, i32 %i.039.i, i32 1
  %94 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %91, ptr %v.i, align 4
  %add.ptr.i = getelementptr i8, ptr %entry1.040.i, i32 5
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %95 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr83, align 1
  %conv5.i = zext i8 %96 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv5.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %r600_parse_clk_voltage_dep_table.exit.thread.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

r600_parse_clk_voltage_dep_table.exit.thread.loopexit: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.le = zext i8 %96 to i32
  br label %r600_parse_clk_voltage_dep_table.exit.thread

r600_parse_clk_voltage_dep_table.exit.thread:     ; preds = %r600_parse_clk_voltage_dep_table.exit.thread.loopexit, %if.end.i.r600_parse_clk_voltage_dep_table.exit.thread_crit_edge
  %.lcssa.i = phi i32 [ 0, %if.end.i.r600_parse_clk_voltage_dep_table.exit.thread_crit_edge ], [ %conv5.i.le, %r600_parse_clk_voltage_dep_table.exit.thread.loopexit ]
  %97 = ptrtoint ptr %dyn_state to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %.lcssa.i, ptr %dyn_state, align 4
  br label %if.end90

if.end90:                                         ; preds = %r600_parse_clk_voltage_dep_table.exit.thread, %if.then74.if.end90_crit_edge
  %usVddciDependencyOnMCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 4
  %98 = ptrtoint ptr %usVddciDependencyOnMCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %usVddciDependencyOnMCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool91.not = icmp eq i16 %99, 0
  br i1 %tobool91.not, label %if.end90.if.end111_crit_edge, label %if.then92

if.end90.if.end111_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then92:                                        ; preds = %if.end90
  %100 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mode_info1, align 4
  %bios94 = getelementptr inbounds %struct.atom_context, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %bios94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bios94, align 4
  %104 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %data_offset, align 2
  %conv95 = zext i16 %105 to i32
  %add.ptr96 = getelementptr i8, ptr %103, i32 %conv95
  %106 = call i16 @llvm.bswap.i16(i16 %99)
  %conv98 = zext i16 %106 to i32
  %add.ptr99 = getelementptr i8, ptr %add.ptr96, i32 %conv98
  %vddci_dependency_on_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1
  %107 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %add.ptr99, align 1
  %conv.i1401 = zext i8 %108 to i32
  %109 = shl nuw nsw i32 %conv.i1401, 3
  %call8.i.i.i1422 = call noalias align 128 ptr @__kmalloc(i32 noundef %109, i32 noundef 3520) #15
  %entries.i1425 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %110 = ptrtoint ptr %entries.i1425 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call8.i.i.i1422, ptr %entries.i1425, align 4
  %tobool.not.i1426 = icmp eq ptr %call8.i.i.i1422, null
  br i1 %tobool.not.i1426, label %if.then105, label %if.end.i1430

if.end.i1430:                                     ; preds = %if.then92
  %111 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %add.ptr99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp38.not.i1429 = icmp eq i8 %112, 0
  br i1 %cmp38.not.i1429, label %if.end.i1430.r600_parse_clk_voltage_dep_table.exit1453.thread_crit_edge, label %for.body.preheader.i1432

if.end.i1430.r600_parse_clk_voltage_dep_table.exit1453.thread_crit_edge: ; preds = %if.end.i1430
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_parse_clk_voltage_dep_table.exit1453.thread

for.body.preheader.i1432:                         ; preds = %if.end.i1430
  %entries3.i1431 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr99, i32 0, i32 1
  br label %for.body.i1447

for.body.i1447:                                   ; preds = %for.body.i1447.for.body.i1447_crit_edge, %for.body.preheader.i1432
  %entry1.040.i1433 = phi ptr [ %add.ptr.i1443, %for.body.i1447.for.body.i1447_crit_edge ], [ %entries3.i1431, %for.body.preheader.i1432 ]
  %i.039.i1434 = phi i32 [ %inc.i1444, %for.body.i1447.for.body.i1447_crit_edge ], [ 0, %for.body.preheader.i1432 ]
  %113 = ptrtoint ptr %entry1.040.i1433 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 2)
  %114 = load i16, ptr %entry1.040.i1433, align 1
  %115 = call i16 @llvm.bswap.i16(i16 %114) #11
  %conv7.i1435 = zext i16 %115 to i32
  %ucClockHigh.i1436 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i1433, i32 0, i32 1
  %116 = ptrtoint ptr %ucClockHigh.i1436 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %ucClockHigh.i1436, align 1
  %conv8.i1437 = zext i8 %117 to i32
  %shl.i1438 = shl nuw nsw i32 %conv8.i1437, 16
  %or.i1439 = or i32 %shl.i1438, %conv7.i1435
  %118 = ptrtoint ptr %entries.i1425 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %entries.i1425, align 4
  %arrayidx10.i1440 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %119, i32 %i.039.i1434
  %120 = ptrtoint ptr %arrayidx10.i1440 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %or.i1439, ptr %arrayidx10.i1440, align 4
  %usVoltage.i1441 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i1433, i32 0, i32 2
  %121 = ptrtoint ptr %usVoltage.i1441 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %usVoltage.i1441, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122) #11
  %124 = ptrtoint ptr %entries.i1425 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %entries.i1425, align 4
  %v.i1442 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %125, i32 %i.039.i1434, i32 1
  %126 = ptrtoint ptr %v.i1442 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %123, ptr %v.i1442, align 4
  %add.ptr.i1443 = getelementptr i8, ptr %entry1.040.i1433, i32 5
  %inc.i1444 = add nuw nsw i32 %i.039.i1434, 1
  %127 = ptrtoint ptr %add.ptr99 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %add.ptr99, align 1
  %conv5.i1445 = zext i8 %128 to i32
  %cmp.i1446 = icmp ult i32 %inc.i1444, %conv5.i1445
  br i1 %cmp.i1446, label %for.body.i1447.for.body.i1447_crit_edge, label %r600_parse_clk_voltage_dep_table.exit1453.thread.loopexit

for.body.i1447.for.body.i1447_crit_edge:          ; preds = %for.body.i1447
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i1447

r600_parse_clk_voltage_dep_table.exit1453.thread.loopexit: ; preds = %for.body.i1447
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i1445.le = zext i8 %128 to i32
  br label %r600_parse_clk_voltage_dep_table.exit1453.thread

r600_parse_clk_voltage_dep_table.exit1453.thread: ; preds = %r600_parse_clk_voltage_dep_table.exit1453.thread.loopexit, %if.end.i1430.r600_parse_clk_voltage_dep_table.exit1453.thread_crit_edge
  %.lcssa.i1450 = phi i32 [ 0, %if.end.i1430.r600_parse_clk_voltage_dep_table.exit1453.thread_crit_edge ], [ %conv5.i1445.le, %r600_parse_clk_voltage_dep_table.exit1453.thread.loopexit ]
  %129 = ptrtoint ptr %vddci_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %.lcssa.i1450, ptr %vddci_dependency_on_mclk, align 4
  br label %if.end111

if.then105:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %130 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %entries, align 4
  call void @kfree(ptr noundef %131) #11
  br label %cleanup1033

if.end111:                                        ; preds = %r600_parse_clk_voltage_dep_table.exit1453.thread, %if.end90.if.end111_crit_edge
  %usVddcDependencyOnMCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 5
  %132 = ptrtoint ptr %usVddcDependencyOnMCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %132, i32 2)
  %133 = load i16, ptr %usVddcDependencyOnMCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool112.not = icmp eq i16 %133, 0
  br i1 %tobool112.not, label %if.end111.if.end138_crit_edge, label %if.then113

if.end111.if.end138_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138

if.then113:                                       ; preds = %if.end111
  %134 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mode_info1, align 4
  %bios115 = getelementptr inbounds %struct.atom_context, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %bios115 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bios115, align 4
  %138 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %data_offset, align 2
  %conv116 = zext i16 %139 to i32
  %add.ptr117 = getelementptr i8, ptr %137, i32 %conv116
  %140 = call i16 @llvm.bswap.i16(i16 %133)
  %conv119 = zext i16 %140 to i32
  %add.ptr120 = getelementptr i8, ptr %add.ptr117, i32 %conv119
  %vddc_dependency_on_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2
  %141 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %add.ptr120, align 1
  %conv.i1454 = zext i8 %142 to i32
  %143 = shl nuw nsw i32 %conv.i1454, 3
  %call8.i.i.i1475 = call noalias align 128 ptr @__kmalloc(i32 noundef %143, i32 noundef 3520) #15
  %entries.i1478 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  %144 = ptrtoint ptr %entries.i1478 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call8.i.i.i1475, ptr %entries.i1478, align 4
  %tobool.not.i1479 = icmp eq ptr %call8.i.i.i1475, null
  br i1 %tobool.not.i1479, label %if.then126, label %if.end.i1483

if.end.i1483:                                     ; preds = %if.then113
  %145 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %add.ptr120, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp38.not.i1482 = icmp eq i8 %146, 0
  br i1 %cmp38.not.i1482, label %if.end.i1483.r600_parse_clk_voltage_dep_table.exit1506.thread_crit_edge, label %for.body.preheader.i1485

if.end.i1483.r600_parse_clk_voltage_dep_table.exit1506.thread_crit_edge: ; preds = %if.end.i1483
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_parse_clk_voltage_dep_table.exit1506.thread

for.body.preheader.i1485:                         ; preds = %if.end.i1483
  %entries3.i1484 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr120, i32 0, i32 1
  br label %for.body.i1500

for.body.i1500:                                   ; preds = %for.body.i1500.for.body.i1500_crit_edge, %for.body.preheader.i1485
  %entry1.040.i1486 = phi ptr [ %add.ptr.i1496, %for.body.i1500.for.body.i1500_crit_edge ], [ %entries3.i1484, %for.body.preheader.i1485 ]
  %i.039.i1487 = phi i32 [ %inc.i1497, %for.body.i1500.for.body.i1500_crit_edge ], [ 0, %for.body.preheader.i1485 ]
  %147 = ptrtoint ptr %entry1.040.i1486 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %entry1.040.i1486, align 1
  %149 = call i16 @llvm.bswap.i16(i16 %148) #11
  %conv7.i1488 = zext i16 %149 to i32
  %ucClockHigh.i1489 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i1486, i32 0, i32 1
  %150 = ptrtoint ptr %ucClockHigh.i1489 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %ucClockHigh.i1489, align 1
  %conv8.i1490 = zext i8 %151 to i32
  %shl.i1491 = shl nuw nsw i32 %conv8.i1490, 16
  %or.i1492 = or i32 %shl.i1491, %conv7.i1488
  %152 = ptrtoint ptr %entries.i1478 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %entries.i1478, align 4
  %arrayidx10.i1493 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %153, i32 %i.039.i1487
  %154 = ptrtoint ptr %arrayidx10.i1493 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i1492, ptr %arrayidx10.i1493, align 4
  %usVoltage.i1494 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i1486, i32 0, i32 2
  %155 = ptrtoint ptr %usVoltage.i1494 to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %usVoltage.i1494, align 1
  %157 = call i16 @llvm.bswap.i16(i16 %156) #11
  %158 = ptrtoint ptr %entries.i1478 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %entries.i1478, align 4
  %v.i1495 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %159, i32 %i.039.i1487, i32 1
  %160 = ptrtoint ptr %v.i1495 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %157, ptr %v.i1495, align 4
  %add.ptr.i1496 = getelementptr i8, ptr %entry1.040.i1486, i32 5
  %inc.i1497 = add nuw nsw i32 %i.039.i1487, 1
  %161 = ptrtoint ptr %add.ptr120 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %add.ptr120, align 1
  %conv5.i1498 = zext i8 %162 to i32
  %cmp.i1499 = icmp ult i32 %inc.i1497, %conv5.i1498
  br i1 %cmp.i1499, label %for.body.i1500.for.body.i1500_crit_edge, label %r600_parse_clk_voltage_dep_table.exit1506.thread.loopexit

for.body.i1500.for.body.i1500_crit_edge:          ; preds = %for.body.i1500
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i1500

r600_parse_clk_voltage_dep_table.exit1506.thread.loopexit: ; preds = %for.body.i1500
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i1498.le = zext i8 %162 to i32
  br label %r600_parse_clk_voltage_dep_table.exit1506.thread

r600_parse_clk_voltage_dep_table.exit1506.thread: ; preds = %r600_parse_clk_voltage_dep_table.exit1506.thread.loopexit, %if.end.i1483.r600_parse_clk_voltage_dep_table.exit1506.thread_crit_edge
  %.lcssa.i1503 = phi i32 [ 0, %if.end.i1483.r600_parse_clk_voltage_dep_table.exit1506.thread_crit_edge ], [ %conv5.i1498.le, %r600_parse_clk_voltage_dep_table.exit1506.thread.loopexit ]
  %163 = ptrtoint ptr %vddc_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %.lcssa.i1503, ptr %vddc_dependency_on_mclk, align 4
  br label %if.end138

if.then126:                                       ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  %entries131 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %164 = ptrtoint ptr %entries131 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %entries131, align 4
  call void @kfree(ptr noundef %165) #11
  %entries136 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %166 = ptrtoint ptr %entries136 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %entries136, align 4
  call void @kfree(ptr noundef %167) #11
  br label %cleanup1033

if.end138:                                        ; preds = %r600_parse_clk_voltage_dep_table.exit1506.thread, %if.end111.if.end138_crit_edge
  %usMvddDependencyOnMCLKOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 8
  %168 = ptrtoint ptr %usMvddDependencyOnMCLKOffset to i32
  call void @__asan_loadN_noabort(i32 %168, i32 2)
  %169 = load i16, ptr %usMvddDependencyOnMCLKOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %tobool139.not = icmp eq i16 %169, 0
  br i1 %tobool139.not, label %if.end138.if.end170_crit_edge, label %if.then140

if.end138.if.end170_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end170

if.then140:                                       ; preds = %if.end138
  %170 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mode_info1, align 4
  %bios142 = getelementptr inbounds %struct.atom_context, ptr %171, i32 0, i32 3
  %172 = ptrtoint ptr %bios142 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %bios142, align 4
  %174 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %data_offset, align 2
  %conv143 = zext i16 %175 to i32
  %add.ptr144 = getelementptr i8, ptr %173, i32 %conv143
  %176 = call i16 @llvm.bswap.i16(i16 %169)
  %conv146 = zext i16 %176 to i32
  %add.ptr147 = getelementptr i8, ptr %add.ptr144, i32 %conv146
  %mvdd_dependency_on_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 3
  %177 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %add.ptr147, align 1
  %conv.i1507 = zext i8 %178 to i32
  %179 = shl nuw nsw i32 %conv.i1507, 3
  %call8.i.i.i1528 = call noalias align 128 ptr @__kmalloc(i32 noundef %179, i32 noundef 3520) #15
  %entries.i1531 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 3, i32 1
  %180 = ptrtoint ptr %entries.i1531 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %call8.i.i.i1528, ptr %entries.i1531, align 4
  %tobool.not.i1532 = icmp eq ptr %call8.i.i.i1528, null
  br i1 %tobool.not.i1532, label %if.then153, label %if.end.i1536

if.end.i1536:                                     ; preds = %if.then140
  %181 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %add.ptr147, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %cmp38.not.i1535 = icmp eq i8 %182, 0
  br i1 %cmp38.not.i1535, label %if.end.i1536.r600_parse_clk_voltage_dep_table.exit1559.thread_crit_edge, label %for.body.preheader.i1538

if.end.i1536.r600_parse_clk_voltage_dep_table.exit1559.thread_crit_edge: ; preds = %if.end.i1536
  call void @__sanitizer_cov_trace_pc() #13
  br label %r600_parse_clk_voltage_dep_table.exit1559.thread

for.body.preheader.i1538:                         ; preds = %if.end.i1536
  %entries3.i1537 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Table, ptr %add.ptr147, i32 0, i32 1
  br label %for.body.i1553

for.body.i1553:                                   ; preds = %for.body.i1553.for.body.i1553_crit_edge, %for.body.preheader.i1538
  %entry1.040.i1539 = phi ptr [ %add.ptr.i1549, %for.body.i1553.for.body.i1553_crit_edge ], [ %entries3.i1537, %for.body.preheader.i1538 ]
  %i.039.i1540 = phi i32 [ %inc.i1550, %for.body.i1553.for.body.i1553_crit_edge ], [ 0, %for.body.preheader.i1538 ]
  %183 = ptrtoint ptr %entry1.040.i1539 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %184 = load i16, ptr %entry1.040.i1539, align 1
  %185 = call i16 @llvm.bswap.i16(i16 %184) #11
  %conv7.i1541 = zext i16 %185 to i32
  %ucClockHigh.i1542 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i1539, i32 0, i32 1
  %186 = ptrtoint ptr %ucClockHigh.i1542 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %ucClockHigh.i1542, align 1
  %conv8.i1543 = zext i8 %187 to i32
  %shl.i1544 = shl nuw nsw i32 %conv8.i1543, 16
  %or.i1545 = or i32 %shl.i1544, %conv7.i1541
  %188 = ptrtoint ptr %entries.i1531 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %entries.i1531, align 4
  %arrayidx10.i1546 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %189, i32 %i.039.i1540
  %190 = ptrtoint ptr %arrayidx10.i1546 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %or.i1545, ptr %arrayidx10.i1546, align 4
  %usVoltage.i1547 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Dependency_Record, ptr %entry1.040.i1539, i32 0, i32 2
  %191 = ptrtoint ptr %usVoltage.i1547 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 2)
  %192 = load i16, ptr %usVoltage.i1547, align 1
  %193 = call i16 @llvm.bswap.i16(i16 %192) #11
  %194 = ptrtoint ptr %entries.i1531 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %entries.i1531, align 4
  %v.i1548 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %195, i32 %i.039.i1540, i32 1
  %196 = ptrtoint ptr %v.i1548 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %193, ptr %v.i1548, align 4
  %add.ptr.i1549 = getelementptr i8, ptr %entry1.040.i1539, i32 5
  %inc.i1550 = add nuw nsw i32 %i.039.i1540, 1
  %197 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %add.ptr147, align 1
  %conv5.i1551 = zext i8 %198 to i32
  %cmp.i1552 = icmp ult i32 %inc.i1550, %conv5.i1551
  br i1 %cmp.i1552, label %for.body.i1553.for.body.i1553_crit_edge, label %r600_parse_clk_voltage_dep_table.exit1559.thread.loopexit

for.body.i1553.for.body.i1553_crit_edge:          ; preds = %for.body.i1553
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i1553

r600_parse_clk_voltage_dep_table.exit1559.thread.loopexit: ; preds = %for.body.i1553
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i1551.le = zext i8 %198 to i32
  br label %r600_parse_clk_voltage_dep_table.exit1559.thread

r600_parse_clk_voltage_dep_table.exit1559.thread: ; preds = %r600_parse_clk_voltage_dep_table.exit1559.thread.loopexit, %if.end.i1536.r600_parse_clk_voltage_dep_table.exit1559.thread_crit_edge
  %.lcssa.i1556 = phi i32 [ 0, %if.end.i1536.r600_parse_clk_voltage_dep_table.exit1559.thread_crit_edge ], [ %conv5.i1551.le, %r600_parse_clk_voltage_dep_table.exit1559.thread.loopexit ]
  %199 = ptrtoint ptr %mvdd_dependency_on_mclk to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %.lcssa.i1556, ptr %mvdd_dependency_on_mclk, align 4
  br label %if.end170

if.then153:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #13
  %entries158 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %200 = ptrtoint ptr %entries158 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %entries158, align 4
  call void @kfree(ptr noundef %201) #11
  %entries163 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %202 = ptrtoint ptr %entries163 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %entries163, align 4
  call void @kfree(ptr noundef %203) #11
  %entries168 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  %204 = ptrtoint ptr %entries168 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %entries168, align 4
  call void @kfree(ptr noundef %205) #11
  br label %cleanup1033

if.end170:                                        ; preds = %r600_parse_clk_voltage_dep_table.exit1559.thread, %if.end138.if.end170_crit_edge
  %usMaxClockVoltageOnDCOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 6
  %206 = ptrtoint ptr %usMaxClockVoltageOnDCOffset to i32
  call void @__asan_loadN_noabort(i32 %206, i32 2)
  %207 = load i16, ptr %usMaxClockVoltageOnDCOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %tobool171.not = icmp eq i16 %207, 0
  br i1 %tobool171.not, label %if.end170.if.end215_crit_edge, label %if.then172

if.end170.if.end215_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.then172:                                       ; preds = %if.end170
  %208 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mode_info1, align 4
  %bios174 = getelementptr inbounds %struct.atom_context, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %bios174 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bios174, align 4
  %212 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %data_offset, align 2
  %conv175 = zext i16 %213 to i32
  %add.ptr176 = getelementptr i8, ptr %211, i32 %conv175
  %214 = call i16 @llvm.bswap.i16(i16 %207)
  %conv178 = zext i16 %214 to i32
  %add.ptr179 = getelementptr i8, ptr %add.ptr176, i32 %conv178
  %215 = ptrtoint ptr %add.ptr179 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %add.ptr179, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool180.not = icmp eq i8 %216, 0
  br i1 %tobool180.not, label %if.then172.if.end215_crit_edge, label %if.then181

if.then172.if.end215_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end215

if.then181:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  %entries182 = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Table, ptr %add.ptr179, i32 0, i32 1
  %217 = ptrtoint ptr %entries182 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 2)
  %218 = load i16, ptr %entries182, align 1
  %219 = call i16 @llvm.bswap.i16(i16 %218)
  %conv183 = zext i16 %219 to i32
  %ucSclkHigh = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries182, i32 0, i32 1
  %220 = ptrtoint ptr %ucSclkHigh to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %ucSclkHigh, align 1
  %conv186 = zext i8 %221 to i32
  %shl = shl nuw nsw i32 %conv186, 16
  %or = or i32 %shl, %conv183
  %max_clock_voltage_on_dc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11
  %222 = ptrtoint ptr %max_clock_voltage_on_dc to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %or, ptr %max_clock_voltage_on_dc, align 4
  %usMclkLow = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries182, i32 0, i32 2
  %223 = ptrtoint ptr %usMclkLow to i32
  call void @__asan_loadN_noabort(i32 %223, i32 2)
  %224 = load i16, ptr %usMclkLow, align 1
  %225 = call i16 @llvm.bswap.i16(i16 %224)
  %conv192 = zext i16 %225 to i32
  %ucMclkHigh = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries182, i32 0, i32 3
  %226 = ptrtoint ptr %ucMclkHigh to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %ucMclkHigh, align 1
  %conv195 = zext i8 %227 to i32
  %shl196 = shl nuw nsw i32 %conv195, 16
  %or197 = or i32 %shl196, %conv192
  %mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 1
  %228 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %or197, ptr %mclk, align 4
  %usVddc = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries182, i32 0, i32 4
  %229 = ptrtoint ptr %usVddc to i32
  call void @__asan_loadN_noabort(i32 %229, i32 2)
  %230 = load i16, ptr %usVddc, align 1
  %231 = call i16 @llvm.bswap.i16(i16 %230)
  %vddc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 2
  %232 = ptrtoint ptr %vddc to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %231, ptr %vddc, align 4
  %usVddci = getelementptr inbounds %struct._ATOM_PPLIB_Clock_Voltage_Limit_Record, ptr %entries182, i32 0, i32 5
  %233 = ptrtoint ptr %usVddci to i32
  call void @__asan_loadN_noabort(i32 %233, i32 2)
  %234 = load i16, ptr %usVddci, align 1
  %235 = call i16 @llvm.bswap.i16(i16 %234)
  %vddci = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 11, i32 3
  %236 = ptrtoint ptr %vddci to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 %235, ptr %vddci, align 2
  br label %if.end215

if.end215:                                        ; preds = %if.then181, %if.then172.if.end215_crit_edge, %if.end170.if.end215_crit_edge
  %usVddcPhaseShedLimitsTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE4, ptr %add.ptr, i32 0, i32 7
  %237 = ptrtoint ptr %usVddcPhaseShedLimitsTableOffset to i32
  call void @__asan_loadN_noabort(i32 %237, i32 2)
  %238 = load i16, ptr %usVddcPhaseShedLimitsTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool216.not = icmp eq i16 %238, 0
  br i1 %tobool216.not, label %if.end215.if.end288_crit_edge, label %if.then217

if.end215.if.end288_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end288

if.then217:                                       ; preds = %if.end215
  %239 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mode_info1, align 4
  %bios219 = getelementptr inbounds %struct.atom_context, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %bios219 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %bios219, align 4
  %243 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %data_offset, align 2
  %conv220 = zext i16 %244 to i32
  %add.ptr221 = getelementptr i8, ptr %242, i32 %conv220
  %245 = call i16 @llvm.bswap.i16(i16 %238)
  %conv223 = zext i16 %245 to i32
  %add.ptr224 = getelementptr i8, ptr %add.ptr221, i32 %conv223
  %246 = ptrtoint ptr %add.ptr224 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %add.ptr224, align 1
  %conv227 = zext i8 %247 to i32
  %248 = mul nuw nsw i32 %conv227, 12
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %248, i32 noundef 3520) #15
  %entries232 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 18, i32 1
  %249 = ptrtoint ptr %entries232 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call8.i.i, ptr %entries232, align 4
  %tobool238.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool238.not, label %if.then239, label %if.end240

if.then239:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end240:                                        ; preds = %if.then217
  %phase_shedding_limits_table1714 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 18
  %250 = ptrtoint ptr %add.ptr224 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %add.ptr224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %cmp2451748.not = icmp eq i8 %251, 0
  br i1 %cmp2451748.not, label %if.end240.for.end_crit_edge, label %for.body.preheader

if.end240.for.end_crit_edge:                      ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end240
  %entries241 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Table, ptr %add.ptr224, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.01750 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %entry225.01749 = phi ptr [ %add.ptr279, %for.body.for.body_crit_edge ], [ %entries241, %for.body.preheader ]
  %usSclkLow247 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry225.01749, i32 0, i32 1
  %252 = ptrtoint ptr %usSclkLow247 to i32
  call void @__asan_loadN_noabort(i32 %252, i32 2)
  %253 = load i16, ptr %usSclkLow247, align 1
  %254 = call i16 @llvm.bswap.i16(i16 %253)
  %conv248 = zext i16 %254 to i32
  %ucSclkHigh249 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry225.01749, i32 0, i32 2
  %255 = ptrtoint ptr %ucSclkHigh249 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %ucSclkHigh249, align 1
  %conv250 = zext i8 %256 to i32
  %shl251 = shl nuw nsw i32 %conv250, 16
  %or252 = or i32 %shl251, %conv248
  %257 = ptrtoint ptr %entries232 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %entries232, align 4
  %sclk259 = getelementptr %struct.radeon_phase_shedding_limits_entry, ptr %258, i32 %i.01750, i32 1
  %259 = ptrtoint ptr %sclk259 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %or252, ptr %sclk259, align 4
  %usMclkLow260 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry225.01749, i32 0, i32 3
  %260 = ptrtoint ptr %usMclkLow260 to i32
  call void @__asan_loadN_noabort(i32 %260, i32 2)
  %261 = load i16, ptr %usMclkLow260, align 1
  %262 = call i16 @llvm.bswap.i16(i16 %261)
  %conv261 = zext i16 %262 to i32
  %ucMclkHigh262 = getelementptr inbounds %struct._ATOM_PPLIB_PhaseSheddingLimits_Record, ptr %entry225.01749, i32 0, i32 4
  %263 = ptrtoint ptr %ucMclkHigh262 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %ucMclkHigh262, align 1
  %conv263 = zext i8 %264 to i32
  %shl264 = shl nuw nsw i32 %conv263, 16
  %or265 = or i32 %shl264, %conv261
  %265 = ptrtoint ptr %entries232 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %entries232, align 4
  %mclk272 = getelementptr %struct.radeon_phase_shedding_limits_entry, ptr %266, i32 %i.01750, i32 2
  %267 = ptrtoint ptr %mclk272 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %or265, ptr %mclk272, align 4
  %268 = ptrtoint ptr %entry225.01749 to i32
  call void @__asan_loadN_noabort(i32 %268, i32 2)
  %269 = load i16, ptr %entry225.01749, align 1
  %270 = call i16 @llvm.bswap.i16(i16 %269)
  %271 = ptrtoint ptr %entries232 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %entries232, align 4
  %arrayidx278 = getelementptr %struct.radeon_phase_shedding_limits_entry, ptr %272, i32 %i.01750
  %273 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %270, ptr %arrayidx278, align 4
  %add.ptr279 = getelementptr i8, ptr %entry225.01749, i32 8
  %inc = add nuw nsw i32 %i.01750, 1
  %274 = ptrtoint ptr %add.ptr224 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %add.ptr224, align 1
  %conv244 = zext i8 %275 to i32
  %cmp245 = icmp ult i32 %inc, %conv244
  br i1 %cmp245, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end240.for.end_crit_edge
  %.lcssa1746 = phi i8 [ 0, %if.end240.for.end_crit_edge ], [ %275, %for.body.for.end_crit_edge ]
  %conv244.le = zext i8 %.lcssa1746 to i32
  %276 = ptrtoint ptr %phase_shedding_limits_table1714 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %conv244.le, ptr %phase_shedding_limits_table1714, align 4
  br label %if.end288

if.end288:                                        ; preds = %for.end, %if.end215.if.end288_crit_edge, %if.end69.if.end288_crit_edge
  %277 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %277, i32 2)
  %278 = load i16, ptr %usTableSize, align 1
  %279 = call i16 @llvm.bswap.i16(i16 %278)
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %279)
  %cmp291 = icmp ugt i16 %279, 87
  br i1 %cmp291, label %if.then293, label %if.end288.if.end413_crit_edge

if.end288.if.end413_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end413

if.then293:                                       ; preds = %if.end288
  %ulTDPLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 1
  %280 = ptrtoint ptr %ulTDPLimit to i32
  call void @__asan_loadN_noabort(i32 %280, i32 4)
  %281 = load i32, ptr %ulTDPLimit, align 1
  %282 = call i32 @llvm.bswap.i32(i32 %281)
  %tdp_limit = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 22
  %283 = ptrtoint ptr %tdp_limit to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %tdp_limit, align 4
  %ulNearTDPLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 2
  %284 = ptrtoint ptr %ulNearTDPLimit to i32
  call void @__asan_loadN_noabort(i32 %284, i32 4)
  %285 = load i32, ptr %ulNearTDPLimit, align 1
  %286 = call i32 @llvm.bswap.i32(i32 %285)
  %near_tdp_limit = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 23
  %287 = ptrtoint ptr %near_tdp_limit to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %near_tdp_limit, align 4
  %near_tdp_limit_adjusted = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 24
  %288 = ptrtoint ptr %near_tdp_limit_adjusted to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %286, ptr %near_tdp_limit_adjusted, align 4
  %usTDPODLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 6
  %289 = ptrtoint ptr %usTDPODLimit to i32
  call void @__asan_loadN_noabort(i32 %289, i32 2)
  %290 = load i16, ptr %usTDPODLimit, align 1
  %291 = call i16 @llvm.bswap.i16(i16 %290)
  %tdp_od_limit = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 27
  %292 = ptrtoint ptr %tdp_od_limit to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %291, ptr %tdp_od_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %290)
  %tobool308.not = icmp ne i16 %290, 0
  %spec.select1791 = zext i1 %tobool308.not to i8
  %293 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 30
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %spec.select1791, ptr %293, align 2
  %tdp_adjustment = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 28
  %295 = ptrtoint ptr %tdp_adjustment to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 0, ptr %tdp_adjustment, align 4
  %ulSQRampingThreshold = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 3
  %296 = ptrtoint ptr %ulSQRampingThreshold to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %ulSQRampingThreshold, align 1
  %298 = call i32 @llvm.bswap.i32(i32 %297)
  %sq_ramping_threshold = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 25
  %299 = ptrtoint ptr %sq_ramping_threshold to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %sq_ramping_threshold, align 4
  %ulCACLeakage = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 5
  %300 = ptrtoint ptr %ulCACLeakage to i32
  call void @__asan_loadN_noabort(i32 %300, i32 4)
  %301 = load i32, ptr %ulCACLeakage, align 1
  %302 = call i32 @llvm.bswap.i32(i32 %301)
  %cac_leakage = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 26
  %303 = ptrtoint ptr %cac_leakage to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %302, ptr %cac_leakage, align 4
  %usLoadLineSlope = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 7
  %304 = ptrtoint ptr %usLoadLineSlope to i32
  call void @__asan_loadN_noabort(i32 %304, i32 2)
  %305 = load i16, ptr %usLoadLineSlope, align 1
  %306 = call i16 @llvm.bswap.i16(i16 %305)
  %load_line_slope = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 29
  %307 = ptrtoint ptr %load_line_slope to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %306, ptr %load_line_slope, align 4
  %usCACLeakageTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE5, ptr %add.ptr, i32 0, i32 4
  %308 = ptrtoint ptr %usCACLeakageTableOffset to i32
  call void @__asan_loadN_noabort(i32 %308, i32 2)
  %309 = load i16, ptr %usCACLeakageTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %309)
  %tobool325.not = icmp eq i16 %309, 0
  br i1 %tobool325.not, label %if.then293.if.end413_crit_edge, label %if.then326

if.then293.if.end413_crit_edge:                   ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end413

if.then326:                                       ; preds = %if.then293
  %310 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %mode_info1, align 4
  %bios328 = getelementptr inbounds %struct.atom_context, ptr %311, i32 0, i32 3
  %312 = ptrtoint ptr %bios328 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %bios328, align 4
  %314 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %data_offset, align 2
  %conv329 = zext i16 %315 to i32
  %add.ptr330 = getelementptr i8, ptr %313, i32 %conv329
  %316 = call i16 @llvm.bswap.i16(i16 %309)
  %conv332 = zext i16 %316 to i32
  %add.ptr333 = getelementptr i8, ptr %add.ptr330, i32 %conv332
  %317 = ptrtoint ptr %add.ptr333 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %add.ptr333, align 1
  %conv336 = zext i8 %318 to i32
  %mul = shl nuw nsw i32 %conv336, 3
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #15
  %entries341 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %319 = ptrtoint ptr %entries341 to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call9.i.i, ptr %entries341, align 4
  %tobool347.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool347.not, label %if.then348, label %if.end349

if.then348:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end349:                                        ; preds = %if.then326
  %cac_leakage_table1720 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17
  %320 = ptrtoint ptr %add.ptr333 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %add.ptr333, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %cmp3551753.not = icmp eq i8 %321, 0
  br i1 %cmp3551753.not, label %if.end349.for.end399_crit_edge, label %for.body357.lr.ph

if.end349.for.end399_crit_edge:                   ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end399

for.body357.lr.ph:                                ; preds = %if.end349
  %entries350 = getelementptr inbounds %struct._ATOM_PPLIB_CAC_Leakage_Table, ptr %add.ptr333, i32 0, i32 1
  %platform_caps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 10
  br label %for.body357

for.body357:                                      ; preds = %if.end395.for.body357_crit_edge, %for.body357.lr.ph
  %i.11756 = phi i32 [ 0, %for.body357.lr.ph ], [ %inc398, %if.end395.for.body357_crit_edge ]
  %entry334.01754 = phi ptr [ %entries350, %for.body357.lr.ph ], [ %add.ptr396, %if.end395.for.body357_crit_edge ]
  %322 = ptrtoint ptr %platform_caps to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %platform_caps, align 4
  %and = and i32 %323, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool360.not = icmp eq i32 %and, 0
  %324 = ptrtoint ptr %entry334.01754 to i32
  call void @__asan_loadN_noabort(i32 %324, i32 2)
  %325 = load i16, ptr %entry334.01754, align 1
  %326 = call i16 @llvm.bswap.i16(i16 %325)
  %327 = ptrtoint ptr %entries341 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %entries341, align 4
  %arrayidx387 = getelementptr %union.radeon_cac_leakage_entry, ptr %328, i32 %i.11756
  %329 = ptrtoint ptr %arrayidx387 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %326, ptr %arrayidx387, align 4
  br i1 %tobool360.not, label %if.else380, label %if.then361

if.then361:                                       ; preds = %for.body357
  call void @__sanitizer_cov_trace_pc() #13
  %usVddc2 = getelementptr inbounds %struct.anon.109, ptr %entry334.01754, i32 0, i32 1
  %330 = ptrtoint ptr %usVddc2 to i32
  call void @__asan_loadN_noabort(i32 %330, i32 2)
  %331 = load i16, ptr %usVddc2, align 1
  %332 = call i16 @llvm.bswap.i16(i16 %331)
  %333 = ptrtoint ptr %entries341 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %entries341, align 4
  %arrayidx373 = getelementptr %union.radeon_cac_leakage_entry, ptr %334, i32 %i.11756
  %vddc2 = getelementptr inbounds %struct.anon.105, ptr %arrayidx373, i32 0, i32 1
  %335 = ptrtoint ptr %vddc2 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 %332, ptr %vddc2, align 2
  %usVddc3 = getelementptr inbounds %struct.anon.109, ptr %entry334.01754, i32 0, i32 2
  %336 = ptrtoint ptr %usVddc3 to i32
  call void @__asan_loadN_noabort(i32 %336, i32 2)
  %337 = load i16, ptr %usVddc3, align 1
  %338 = call i16 @llvm.bswap.i16(i16 %337)
  %339 = ptrtoint ptr %entries341 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %entries341, align 4
  %vddc3 = getelementptr %union.radeon_cac_leakage_entry, ptr %340, i32 %i.11756, i32 0, i32 1
  %341 = ptrtoint ptr %vddc3 to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 %338, ptr %vddc3, align 4
  br label %if.end395

if.else380:                                       ; preds = %for.body357
  call void @__sanitizer_cov_trace_pc() #13
  %ulLeakageValue = getelementptr inbounds %struct.anon.108, ptr %entry334.01754, i32 0, i32 1
  %342 = ptrtoint ptr %ulLeakageValue to i32
  call void @__asan_loadN_noabort(i32 %342, i32 4)
  %343 = load i32, ptr %ulLeakageValue, align 1
  %344 = call i32 @llvm.bswap.i32(i32 %343)
  %345 = ptrtoint ptr %entries341 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %entries341, align 4
  %leakage = getelementptr %union.radeon_cac_leakage_entry, ptr %346, i32 %i.11756, i32 0, i32 1
  %347 = ptrtoint ptr %leakage to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %344, ptr %leakage, align 4
  br label %if.end395

if.end395:                                        ; preds = %if.else380, %if.then361
  %add.ptr396 = getelementptr i8, ptr %entry334.01754, i32 6
  %inc398 = add nuw nsw i32 %i.11756, 1
  %348 = ptrtoint ptr %add.ptr333 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %add.ptr333, align 1
  %conv354 = zext i8 %349 to i32
  %cmp355 = icmp ult i32 %inc398, %conv354
  br i1 %cmp355, label %if.end395.for.body357_crit_edge, label %if.end395.for.end399_crit_edge

if.end395.for.end399_crit_edge:                   ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end399

if.end395.for.body357_crit_edge:                  ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body357

for.end399:                                       ; preds = %if.end395.for.end399_crit_edge, %if.end349.for.end399_crit_edge
  %.lcssa1751 = phi i8 [ 0, %if.end349.for.end399_crit_edge ], [ %349, %if.end395.for.end399_crit_edge ]
  %conv354.le = zext i8 %.lcssa1751 to i32
  %350 = ptrtoint ptr %cac_leakage_table1720 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %conv354.le, ptr %cac_leakage_table1720, align 4
  br label %if.end413

if.end413:                                        ; preds = %for.end399, %if.then293.if.end413_crit_edge, %if.end288.if.end413_crit_edge
  %351 = ptrtoint ptr %usTableSize to i32
  call void @__asan_loadN_noabort(i32 %351, i32 2)
  %352 = load i16, ptr %usTableSize, align 1
  %353 = call i16 @llvm.bswap.i16(i16 %352)
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %353)
  %cmp416 = icmp ugt i16 %353, 45
  br i1 %cmp416, label %if.then418, label %if.end413.cleanup1033_crit_edge

if.end413.cleanup1033_crit_edge:                  ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1033

if.then418:                                       ; preds = %if.end413
  %354 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %mode_info1, align 4
  %bios420 = getelementptr inbounds %struct.atom_context, ptr %355, i32 0, i32 3
  %356 = ptrtoint ptr %bios420 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %bios420, align 4
  %358 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %data_offset, align 2
  %conv421 = zext i16 %359 to i32
  %add.ptr422 = getelementptr i8, ptr %357, i32 %conv421
  %usExtendendedHeaderOffset = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE3, ptr %add.ptr, i32 0, i32 3
  %360 = ptrtoint ptr %usExtendendedHeaderOffset to i32
  call void @__asan_loadN_noabort(i32 %360, i32 2)
  %361 = load i16, ptr %usExtendendedHeaderOffset, align 1
  %362 = call i16 @llvm.bswap.i16(i16 %361)
  %conv423 = zext i16 %362 to i32
  %add.ptr424 = getelementptr i8, ptr %add.ptr422, i32 %conv423
  %363 = ptrtoint ptr %add.ptr424 to i32
  call void @__asan_loadN_noabort(i32 %363, i32 2)
  %364 = load i16, ptr %add.ptr424, align 1
  %365 = call i16 @llvm.bswap.i16(i16 %364)
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %365)
  %cmp426 = icmp ugt i16 %365, 11
  br i1 %cmp426, label %land.lhs.true, label %if.then418.if.end604_crit_edge

if.then418.if.end604_crit_edge:                   ; preds = %if.then418
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

land.lhs.true:                                    ; preds = %if.then418
  %usVCETableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr424, i32 0, i32 3
  %366 = ptrtoint ptr %usVCETableOffset to i32
  call void @__asan_loadN_noabort(i32 %366, i32 2)
  %367 = load i16, ptr %usVCETableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %367)
  %tobool429.not = icmp eq i16 %367, 0
  br i1 %tobool429.not, label %land.lhs.true.if.end604_crit_edge, label %if.then430

land.lhs.true.if.end604_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

if.then430:                                       ; preds = %land.lhs.true
  %368 = call i16 @llvm.bswap.i16(i16 %367)
  %conv436 = zext i16 %368 to i32
  %add.ptr437 = getelementptr i8, ptr %add.ptr422, i32 %conv436
  %add.ptr438 = getelementptr i8, ptr %add.ptr437, i32 1
  %add.ptr447 = getelementptr i8, ptr %add.ptr438, i32 1
  %369 = ptrtoint ptr %add.ptr438 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %add.ptr438, align 1
  %conv449 = zext i8 %370 to i32
  %mul450 = mul nuw nsw i32 %conv449, 6
  %add.ptr451 = getelementptr i8, ptr %add.ptr447, i32 %mul450
  %add.ptr465 = getelementptr i8, ptr %add.ptr451, i32 1
  %371 = ptrtoint ptr %add.ptr451 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %add.ptr451, align 1
  %conv466 = zext i8 %372 to i32
  %mul467 = mul nuw nsw i32 %conv466, 3
  %add.ptr468 = getelementptr i8, ptr %add.ptr465, i32 %mul467
  %mul473 = mul nuw nsw i32 %conv466, 12
  %call9.i.i1590 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul473, i32 noundef 3520) #15
  %entries478 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6, i32 1
  %373 = ptrtoint ptr %entries478 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call9.i.i1590, ptr %entries478, align 4
  %tobool484.not = icmp eq ptr %call9.i.i1590, null
  br i1 %tobool484.not, label %if.then485, label %if.end486

if.then485:                                       ; preds = %if.then430
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end486:                                        ; preds = %if.then430
  %vce_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6
  %374 = ptrtoint ptr %add.ptr451 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %add.ptr451, align 1
  %376 = ptrtoint ptr %vce_clock_voltage_dependency_table to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %375, ptr %vce_clock_voltage_dependency_table, align 4
  %entries495 = getelementptr inbounds %struct._ATOM_PPLIB_VCE_State_Table, ptr %add.ptr468, i32 0, i32 1
  %377 = load i8, ptr %add.ptr451, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %cmp5001760.not = icmp eq i8 %377, 0
  br i1 %cmp5001760.not, label %if.end486.for.cond539.preheader_crit_edge, label %if.end486.for.body502_crit_edge

if.end486.for.body502_crit_edge:                  ; preds = %if.end486
  br label %for.body502

if.end486.for.cond539.preheader_crit_edge:        ; preds = %if.end486
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond539.preheader

for.cond539.preheader:                            ; preds = %for.body502.for.cond539.preheader_crit_edge, %if.end486.for.cond539.preheader_crit_edge
  %378 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %add.ptr468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %cmp5421764 = icmp eq i8 %379, 0
  br i1 %cmp5421764, label %for.cond539.preheader.if.end604_crit_edge, label %if.end548

for.cond539.preheader.if.end604_crit_edge:        ; preds = %for.cond539.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

for.body502:                                      ; preds = %for.body502.for.body502_crit_edge, %if.end486.for.body502_crit_edge
  %i.21762 = phi i32 [ %inc537, %for.body502.for.body502_crit_edge ], [ 0, %if.end486.for.body502_crit_edge ]
  %entry469.01761 = phi ptr [ %add.ptr535, %for.body502.for.body502_crit_edge ], [ %add.ptr465, %if.end486.for.body502_crit_edge ]
  %ucVCEClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_VCE_Clock_Voltage_Limit_Record, ptr %entry469.01761, i32 0, i32 1
  %380 = ptrtoint ptr %ucVCEClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %ucVCEClockInfoIndex, align 1
  %conv505 = zext i8 %381 to i32
  %mul506 = mul nuw nsw i32 %conv505, 6
  %add.ptr507 = getelementptr i8, ptr %add.ptr447, i32 %mul506
  %382 = ptrtoint ptr %add.ptr507 to i32
  call void @__asan_loadN_noabort(i32 %382, i32 2)
  %383 = load i16, ptr %add.ptr507, align 1
  %384 = call i16 @llvm.bswap.i16(i16 %383)
  %conv508 = zext i16 %384 to i32
  %ucEVClkHigh = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr507, i32 0, i32 1
  %385 = ptrtoint ptr %ucEVClkHigh to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %ucEVClkHigh, align 1
  %conv509 = zext i8 %386 to i32
  %shl510 = shl nuw nsw i32 %conv509, 16
  %or511 = or i32 %shl510, %conv508
  %387 = ptrtoint ptr %entries478 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %entries478, align 4
  %evclk = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %388, i32 %i.21762, i32 1
  %389 = ptrtoint ptr %evclk to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %or511, ptr %evclk, align 4
  %usECClkLow = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr507, i32 0, i32 2
  %390 = ptrtoint ptr %usECClkLow to i32
  call void @__asan_loadN_noabort(i32 %390, i32 2)
  %391 = load i16, ptr %usECClkLow, align 1
  %392 = call i16 @llvm.bswap.i16(i16 %391)
  %conv518 = zext i16 %392 to i32
  %ucECClkHigh = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr507, i32 0, i32 3
  %393 = ptrtoint ptr %ucECClkHigh to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %ucECClkHigh, align 1
  %conv519 = zext i8 %394 to i32
  %shl520 = shl nuw nsw i32 %conv519, 16
  %or521 = or i32 %shl520, %conv518
  %395 = ptrtoint ptr %entries478 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %entries478, align 4
  %arrayidx527 = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %396, i32 %i.21762
  %397 = ptrtoint ptr %arrayidx527 to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %or521, ptr %arrayidx527, align 4
  %398 = ptrtoint ptr %entry469.01761 to i32
  call void @__asan_loadN_noabort(i32 %398, i32 2)
  %399 = load i16, ptr %entry469.01761, align 1
  %400 = call i16 @llvm.bswap.i16(i16 %399)
  %401 = ptrtoint ptr %entries478 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %entries478, align 4
  %v = getelementptr %struct.radeon_vce_clock_voltage_dependency_entry, ptr %402, i32 %i.21762, i32 2
  %403 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 %400, ptr %v, align 4
  %add.ptr535 = getelementptr i8, ptr %entry469.01761, i32 3
  %inc537 = add nuw nsw i32 %i.21762, 1
  %404 = ptrtoint ptr %add.ptr451 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %add.ptr451, align 1
  %conv499 = zext i8 %405 to i32
  %cmp500 = icmp ult i32 %inc537, %conv499
  br i1 %cmp500, label %for.body502.for.body502_crit_edge, label %for.body502.for.cond539.preheader_crit_edge

for.body502.for.cond539.preheader_crit_edge:      ; preds = %for.body502
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond539.preheader

for.body502.for.body502_crit_edge:                ; preds = %for.body502
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body502

if.end548:                                        ; preds = %for.cond539.preheader
  %406 = ptrtoint ptr %entries495 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %entries495, align 1
  %conv552 = zext i8 %407 to i32
  %mul553 = mul nuw nsw i32 %conv552, 6
  %add.ptr554 = getelementptr i8, ptr %add.ptr447, i32 %mul553
  %408 = ptrtoint ptr %add.ptr554 to i32
  call void @__asan_loadN_noabort(i32 %408, i32 2)
  %409 = load i16, ptr %add.ptr554, align 1
  %410 = call i16 @llvm.bswap.i16(i16 %409)
  %conv556 = zext i16 %410 to i32
  %ucEVClkHigh557 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554, i32 0, i32 1
  %411 = ptrtoint ptr %ucEVClkHigh557 to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %ucEVClkHigh557, align 1
  %conv558 = zext i8 %412 to i32
  %shl559 = shl nuw nsw i32 %conv558, 16
  %or560 = or i32 %shl559, %conv556
  %arrayidx563 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0
  %413 = ptrtoint ptr %arrayidx563 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %or560, ptr %arrayidx563, align 4
  %usECClkLow565 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554, i32 0, i32 2
  %414 = ptrtoint ptr %usECClkLow565 to i32
  call void @__asan_loadN_noabort(i32 %414, i32 2)
  %415 = load i16, ptr %usECClkLow565, align 1
  %416 = call i16 @llvm.bswap.i16(i16 %415)
  %conv566 = zext i16 %416 to i32
  %ucECClkHigh567 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554, i32 0, i32 3
  %417 = ptrtoint ptr %ucECClkHigh567 to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %ucECClkHigh567, align 1
  %conv568 = zext i8 %418 to i32
  %shl569 = shl nuw nsw i32 %conv568, 16
  %or570 = or i32 %shl569, %conv566
  %ecclk575 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 1
  %419 = ptrtoint ptr %ecclk575 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %or570, ptr %ecclk575, align 4
  %ucClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_VCE_State_Record, ptr %entries495, i32 0, i32 1
  %420 = ptrtoint ptr %ucClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %ucClockInfoIndex, align 1
  %422 = and i8 %421, 63
  %clk_idx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 4
  %423 = ptrtoint ptr %clk_idx to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %422, ptr %clk_idx, align 4
  %424 = load i8, ptr %ucClockInfoIndex, align 1
  %425 = lshr i8 %424, 6
  %pstate = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 0, i32 5
  %426 = ptrtoint ptr %pstate to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %425, ptr %pstate, align 1
  %427 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %add.ptr468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %428)
  %cmp542 = icmp ult i8 %428, 2
  br i1 %cmp542, label %if.end548.if.end604_crit_edge, label %if.end548.1

if.end548.if.end604_crit_edge:                    ; preds = %if.end548
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

if.end548.1:                                      ; preds = %if.end548
  %add.ptr591 = getelementptr i8, ptr %entries495, i32 2
  %429 = ptrtoint ptr %add.ptr591 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %add.ptr591, align 1
  %conv552.1 = zext i8 %430 to i32
  %mul553.1 = mul nuw nsw i32 %conv552.1, 6
  %add.ptr554.1 = getelementptr i8, ptr %add.ptr447, i32 %mul553.1
  %431 = ptrtoint ptr %add.ptr554.1 to i32
  call void @__asan_loadN_noabort(i32 %431, i32 2)
  %432 = load i16, ptr %add.ptr554.1, align 1
  %433 = call i16 @llvm.bswap.i16(i16 %432)
  %conv556.1 = zext i16 %433 to i32
  %ucEVClkHigh557.1 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.1, i32 0, i32 1
  %434 = ptrtoint ptr %ucEVClkHigh557.1 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %ucEVClkHigh557.1, align 1
  %conv558.1 = zext i8 %435 to i32
  %shl559.1 = shl nuw nsw i32 %conv558.1, 16
  %or560.1 = or i32 %shl559.1, %conv556.1
  %arrayidx563.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1
  %436 = ptrtoint ptr %arrayidx563.1 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 %or560.1, ptr %arrayidx563.1, align 4
  %usECClkLow565.1 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.1, i32 0, i32 2
  %437 = ptrtoint ptr %usECClkLow565.1 to i32
  call void @__asan_loadN_noabort(i32 %437, i32 2)
  %438 = load i16, ptr %usECClkLow565.1, align 1
  %439 = call i16 @llvm.bswap.i16(i16 %438)
  %conv566.1 = zext i16 %439 to i32
  %ucECClkHigh567.1 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.1, i32 0, i32 3
  %440 = ptrtoint ptr %ucECClkHigh567.1 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %ucECClkHigh567.1, align 1
  %conv568.1 = zext i8 %441 to i32
  %shl569.1 = shl nuw nsw i32 %conv568.1, 16
  %or570.1 = or i32 %shl569.1, %conv566.1
  %ecclk575.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 1
  %442 = ptrtoint ptr %ecclk575.1 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %or570.1, ptr %ecclk575.1, align 4
  %ucClockInfoIndex.1 = getelementptr i8, ptr %entries495, i32 3
  %443 = ptrtoint ptr %ucClockInfoIndex.1 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %ucClockInfoIndex.1, align 1
  %445 = and i8 %444, 63
  %clk_idx.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 4
  %446 = ptrtoint ptr %clk_idx.1 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 %445, ptr %clk_idx.1, align 4
  %447 = load i8, ptr %ucClockInfoIndex.1, align 1
  %448 = lshr i8 %447, 6
  %pstate.1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 1, i32 5
  %449 = ptrtoint ptr %pstate.1 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 %448, ptr %pstate.1, align 1
  %450 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %add.ptr468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %451)
  %cmp542.1 = icmp ult i8 %451, 3
  br i1 %cmp542.1, label %if.end548.1.if.end604_crit_edge, label %if.end548.2

if.end548.1.if.end604_crit_edge:                  ; preds = %if.end548.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

if.end548.2:                                      ; preds = %if.end548.1
  %add.ptr591.1 = getelementptr i8, ptr %entries495, i32 4
  %452 = ptrtoint ptr %add.ptr591.1 to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %add.ptr591.1, align 1
  %conv552.2 = zext i8 %453 to i32
  %mul553.2 = mul nuw nsw i32 %conv552.2, 6
  %add.ptr554.2 = getelementptr i8, ptr %add.ptr447, i32 %mul553.2
  %454 = ptrtoint ptr %add.ptr554.2 to i32
  call void @__asan_loadN_noabort(i32 %454, i32 2)
  %455 = load i16, ptr %add.ptr554.2, align 1
  %456 = call i16 @llvm.bswap.i16(i16 %455)
  %conv556.2 = zext i16 %456 to i32
  %ucEVClkHigh557.2 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.2, i32 0, i32 1
  %457 = ptrtoint ptr %ucEVClkHigh557.2 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %ucEVClkHigh557.2, align 1
  %conv558.2 = zext i8 %458 to i32
  %shl559.2 = shl nuw nsw i32 %conv558.2, 16
  %or560.2 = or i32 %shl559.2, %conv556.2
  %arrayidx563.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2
  %459 = ptrtoint ptr %arrayidx563.2 to i32
  call void @__asan_store4_noabort(i32 %459)
  store i32 %or560.2, ptr %arrayidx563.2, align 4
  %usECClkLow565.2 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.2, i32 0, i32 2
  %460 = ptrtoint ptr %usECClkLow565.2 to i32
  call void @__asan_loadN_noabort(i32 %460, i32 2)
  %461 = load i16, ptr %usECClkLow565.2, align 1
  %462 = call i16 @llvm.bswap.i16(i16 %461)
  %conv566.2 = zext i16 %462 to i32
  %ucECClkHigh567.2 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.2, i32 0, i32 3
  %463 = ptrtoint ptr %ucECClkHigh567.2 to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %ucECClkHigh567.2, align 1
  %conv568.2 = zext i8 %464 to i32
  %shl569.2 = shl nuw nsw i32 %conv568.2, 16
  %or570.2 = or i32 %shl569.2, %conv566.2
  %ecclk575.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 1
  %465 = ptrtoint ptr %ecclk575.2 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 %or570.2, ptr %ecclk575.2, align 4
  %ucClockInfoIndex.2 = getelementptr i8, ptr %entries495, i32 5
  %466 = ptrtoint ptr %ucClockInfoIndex.2 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %ucClockInfoIndex.2, align 1
  %468 = and i8 %467, 63
  %clk_idx.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 4
  %469 = ptrtoint ptr %clk_idx.2 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 %468, ptr %clk_idx.2, align 4
  %470 = load i8, ptr %ucClockInfoIndex.2, align 1
  %471 = lshr i8 %470, 6
  %pstate.2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 2, i32 5
  %472 = ptrtoint ptr %pstate.2 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %471, ptr %pstate.2, align 1
  %473 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %add.ptr468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %474)
  %cmp542.2 = icmp ult i8 %474, 4
  br i1 %cmp542.2, label %if.end548.2.if.end604_crit_edge, label %if.end548.3

if.end548.2.if.end604_crit_edge:                  ; preds = %if.end548.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

if.end548.3:                                      ; preds = %if.end548.2
  %add.ptr591.2 = getelementptr i8, ptr %entries495, i32 6
  %475 = ptrtoint ptr %add.ptr591.2 to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %add.ptr591.2, align 1
  %conv552.3 = zext i8 %476 to i32
  %mul553.3 = mul nuw nsw i32 %conv552.3, 6
  %add.ptr554.3 = getelementptr i8, ptr %add.ptr447, i32 %mul553.3
  %477 = ptrtoint ptr %add.ptr554.3 to i32
  call void @__asan_loadN_noabort(i32 %477, i32 2)
  %478 = load i16, ptr %add.ptr554.3, align 1
  %479 = call i16 @llvm.bswap.i16(i16 %478)
  %conv556.3 = zext i16 %479 to i32
  %ucEVClkHigh557.3 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.3, i32 0, i32 1
  %480 = ptrtoint ptr %ucEVClkHigh557.3 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %ucEVClkHigh557.3, align 1
  %conv558.3 = zext i8 %481 to i32
  %shl559.3 = shl nuw nsw i32 %conv558.3, 16
  %or560.3 = or i32 %shl559.3, %conv556.3
  %arrayidx563.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3
  %482 = ptrtoint ptr %arrayidx563.3 to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %or560.3, ptr %arrayidx563.3, align 4
  %usECClkLow565.3 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.3, i32 0, i32 2
  %483 = ptrtoint ptr %usECClkLow565.3 to i32
  call void @__asan_loadN_noabort(i32 %483, i32 2)
  %484 = load i16, ptr %usECClkLow565.3, align 1
  %485 = call i16 @llvm.bswap.i16(i16 %484)
  %conv566.3 = zext i16 %485 to i32
  %ucECClkHigh567.3 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.3, i32 0, i32 3
  %486 = ptrtoint ptr %ucECClkHigh567.3 to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %ucECClkHigh567.3, align 1
  %conv568.3 = zext i8 %487 to i32
  %shl569.3 = shl nuw nsw i32 %conv568.3, 16
  %or570.3 = or i32 %shl569.3, %conv566.3
  %ecclk575.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 1
  %488 = ptrtoint ptr %ecclk575.3 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %or570.3, ptr %ecclk575.3, align 4
  %ucClockInfoIndex.3 = getelementptr i8, ptr %entries495, i32 7
  %489 = ptrtoint ptr %ucClockInfoIndex.3 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %ucClockInfoIndex.3, align 1
  %491 = and i8 %490, 63
  %clk_idx.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 4
  %492 = ptrtoint ptr %clk_idx.3 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 %491, ptr %clk_idx.3, align 4
  %493 = load i8, ptr %ucClockInfoIndex.3, align 1
  %494 = lshr i8 %493, 6
  %pstate.3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 3, i32 5
  %495 = ptrtoint ptr %pstate.3 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 %494, ptr %pstate.3, align 1
  %496 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %add.ptr468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %497)
  %cmp542.3 = icmp ult i8 %497, 5
  br i1 %cmp542.3, label %if.end548.3.if.end604_crit_edge, label %if.end548.4

if.end548.3.if.end604_crit_edge:                  ; preds = %if.end548.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

if.end548.4:                                      ; preds = %if.end548.3
  %add.ptr591.3 = getelementptr i8, ptr %entries495, i32 8
  %498 = ptrtoint ptr %add.ptr591.3 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %add.ptr591.3, align 1
  %conv552.4 = zext i8 %499 to i32
  %mul553.4 = mul nuw nsw i32 %conv552.4, 6
  %add.ptr554.4 = getelementptr i8, ptr %add.ptr447, i32 %mul553.4
  %500 = ptrtoint ptr %add.ptr554.4 to i32
  call void @__asan_loadN_noabort(i32 %500, i32 2)
  %501 = load i16, ptr %add.ptr554.4, align 1
  %502 = call i16 @llvm.bswap.i16(i16 %501)
  %conv556.4 = zext i16 %502 to i32
  %ucEVClkHigh557.4 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.4, i32 0, i32 1
  %503 = ptrtoint ptr %ucEVClkHigh557.4 to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %ucEVClkHigh557.4, align 1
  %conv558.4 = zext i8 %504 to i32
  %shl559.4 = shl nuw nsw i32 %conv558.4, 16
  %or560.4 = or i32 %shl559.4, %conv556.4
  %arrayidx563.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4
  %505 = ptrtoint ptr %arrayidx563.4 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %or560.4, ptr %arrayidx563.4, align 4
  %usECClkLow565.4 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.4, i32 0, i32 2
  %506 = ptrtoint ptr %usECClkLow565.4 to i32
  call void @__asan_loadN_noabort(i32 %506, i32 2)
  %507 = load i16, ptr %usECClkLow565.4, align 1
  %508 = call i16 @llvm.bswap.i16(i16 %507)
  %conv566.4 = zext i16 %508 to i32
  %ucECClkHigh567.4 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.4, i32 0, i32 3
  %509 = ptrtoint ptr %ucECClkHigh567.4 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %ucECClkHigh567.4, align 1
  %conv568.4 = zext i8 %510 to i32
  %shl569.4 = shl nuw nsw i32 %conv568.4, 16
  %or570.4 = or i32 %shl569.4, %conv566.4
  %ecclk575.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 1
  %511 = ptrtoint ptr %ecclk575.4 to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %or570.4, ptr %ecclk575.4, align 4
  %ucClockInfoIndex.4 = getelementptr i8, ptr %entries495, i32 9
  %512 = ptrtoint ptr %ucClockInfoIndex.4 to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %ucClockInfoIndex.4, align 1
  %514 = and i8 %513, 63
  %clk_idx.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 4
  %515 = ptrtoint ptr %clk_idx.4 to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %514, ptr %clk_idx.4, align 4
  %516 = load i8, ptr %ucClockInfoIndex.4, align 1
  %517 = lshr i8 %516, 6
  %pstate.4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 4, i32 5
  %518 = ptrtoint ptr %pstate.4 to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 %517, ptr %pstate.4, align 1
  %519 = ptrtoint ptr %add.ptr468 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %add.ptr468, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %520)
  %cmp542.4 = icmp ult i8 %520, 6
  br i1 %cmp542.4, label %if.end548.4.if.end604_crit_edge, label %if.end548.5

if.end548.4.if.end604_crit_edge:                  ; preds = %if.end548.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end604

if.end548.5:                                      ; preds = %if.end548.4
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr591.4 = getelementptr i8, ptr %entries495, i32 10
  %521 = ptrtoint ptr %add.ptr591.4 to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %add.ptr591.4, align 1
  %conv552.5 = zext i8 %522 to i32
  %mul553.5 = mul nuw nsw i32 %conv552.5, 6
  %add.ptr554.5 = getelementptr i8, ptr %add.ptr447, i32 %mul553.5
  %523 = ptrtoint ptr %add.ptr554.5 to i32
  call void @__asan_loadN_noabort(i32 %523, i32 2)
  %524 = load i16, ptr %add.ptr554.5, align 1
  %525 = call i16 @llvm.bswap.i16(i16 %524)
  %conv556.5 = zext i16 %525 to i32
  %ucEVClkHigh557.5 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.5, i32 0, i32 1
  %526 = ptrtoint ptr %ucEVClkHigh557.5 to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %ucEVClkHigh557.5, align 1
  %conv558.5 = zext i8 %527 to i32
  %shl559.5 = shl nuw nsw i32 %conv558.5, 16
  %or560.5 = or i32 %shl559.5, %conv556.5
  %arrayidx563.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5
  %528 = ptrtoint ptr %arrayidx563.5 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %or560.5, ptr %arrayidx563.5, align 4
  %usECClkLow565.5 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.5, i32 0, i32 2
  %529 = ptrtoint ptr %usECClkLow565.5 to i32
  call void @__asan_loadN_noabort(i32 %529, i32 2)
  %530 = load i16, ptr %usECClkLow565.5, align 1
  %531 = call i16 @llvm.bswap.i16(i16 %530)
  %conv566.5 = zext i16 %531 to i32
  %ucECClkHigh567.5 = getelementptr inbounds %struct._VCEClockInfo, ptr %add.ptr554.5, i32 0, i32 3
  %532 = ptrtoint ptr %ucECClkHigh567.5 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %ucECClkHigh567.5, align 1
  %conv568.5 = zext i8 %533 to i32
  %shl569.5 = shl nuw nsw i32 %conv568.5, 16
  %or570.5 = or i32 %shl569.5, %conv566.5
  %ecclk575.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 1
  %534 = ptrtoint ptr %ecclk575.5 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %or570.5, ptr %ecclk575.5, align 4
  %ucClockInfoIndex.5 = getelementptr i8, ptr %entries495, i32 11
  %535 = ptrtoint ptr %ucClockInfoIndex.5 to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %ucClockInfoIndex.5, align 1
  %537 = and i8 %536, 63
  %clk_idx.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 4
  %538 = ptrtoint ptr %clk_idx.5 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 %537, ptr %clk_idx.5, align 4
  %539 = load i8, ptr %ucClockInfoIndex.5, align 1
  %540 = lshr i8 %539, 6
  %pstate.5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 6, i32 5, i32 5
  %541 = ptrtoint ptr %pstate.5 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 %540, ptr %pstate.5, align 1
  br label %if.end604

if.end604:                                        ; preds = %if.end548.5, %if.end548.4.if.end604_crit_edge, %if.end548.3.if.end604_crit_edge, %if.end548.2.if.end604_crit_edge, %if.end548.1.if.end604_crit_edge, %if.end548.if.end604_crit_edge, %for.cond539.preheader.if.end604_crit_edge, %land.lhs.true.if.end604_crit_edge, %if.then418.if.end604_crit_edge
  %542 = ptrtoint ptr %add.ptr424 to i32
  call void @__asan_loadN_noabort(i32 %542, i32 2)
  %543 = load i16, ptr %add.ptr424, align 1
  %544 = call i16 @llvm.bswap.i16(i16 %543)
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %544)
  %cmp607 = icmp ugt i16 %544, 13
  br i1 %cmp607, label %land.lhs.true609, label %if.end604.if.end711_crit_edge

if.end604.if.end711_crit_edge:                    ; preds = %if.end604
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end711

land.lhs.true609:                                 ; preds = %if.end604
  %usUVDTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr424, i32 0, i32 4
  %545 = ptrtoint ptr %usUVDTableOffset to i32
  call void @__asan_loadN_noabort(i32 %545, i32 2)
  %546 = load i16, ptr %usUVDTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %546)
  %tobool611.not = icmp eq i16 %546, 0
  br i1 %tobool611.not, label %land.lhs.true609.if.end711_crit_edge, label %if.then612

land.lhs.true609.if.end711_crit_edge:             ; preds = %land.lhs.true609
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end711

if.then612:                                       ; preds = %land.lhs.true609
  %547 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %mode_info1, align 4
  %bios615 = getelementptr inbounds %struct.atom_context, ptr %548, i32 0, i32 3
  %549 = ptrtoint ptr %bios615 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %bios615, align 4
  %551 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %data_offset, align 2
  %conv616 = zext i16 %552 to i32
  %add.ptr617 = getelementptr i8, ptr %550, i32 %conv616
  %553 = call i16 @llvm.bswap.i16(i16 %546)
  %conv619 = zext i16 %553 to i32
  %add.ptr620 = getelementptr i8, ptr %add.ptr617, i32 %conv619
  %add.ptr621 = getelementptr i8, ptr %add.ptr620, i32 1
  %add.ptr631 = getelementptr i8, ptr %add.ptr621, i32 1
  %554 = ptrtoint ptr %add.ptr621 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %add.ptr621, align 1
  %conv633 = zext i8 %555 to i32
  %mul634 = mul nuw nsw i32 %conv633, 6
  %add.ptr635 = getelementptr i8, ptr %add.ptr631, i32 %mul634
  %556 = ptrtoint ptr %add.ptr635 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %add.ptr635, align 1
  %conv639 = zext i8 %557 to i32
  %mul640 = mul nuw nsw i32 %conv639, 12
  %call9.i.i1619 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul640, i32 noundef 3520) #15
  %entries645 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5, i32 1
  %558 = ptrtoint ptr %entries645 to i32
  call void @__asan_store4_noabort(i32 %558)
  store ptr %call9.i.i1619, ptr %entries645, align 4
  %tobool651.not = icmp eq ptr %call9.i.i1619, null
  br i1 %tobool651.not, label %if.then652, label %if.end653

if.then652:                                       ; preds = %if.then612
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end653:                                        ; preds = %if.then612
  %uvd_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5
  %559 = ptrtoint ptr %add.ptr635 to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %add.ptr635, align 1
  %561 = ptrtoint ptr %uvd_clock_voltage_dependency_table to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %560, ptr %uvd_clock_voltage_dependency_table, align 4
  %562 = load i8, ptr %add.ptr635, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %562)
  %cmp6651768.not = icmp eq i8 %562, 0
  br i1 %cmp6651768.not, label %if.end653.if.end711_crit_edge, label %for.body667.lr.ph

if.end653.if.end711_crit_edge:                    ; preds = %if.end653
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end711

for.body667.lr.ph:                                ; preds = %if.end653
  %entries660 = getelementptr inbounds %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Table, ptr %add.ptr635, i32 0, i32 1
  br label %for.body667

for.body667:                                      ; preds = %for.body667.for.body667_crit_edge, %for.body667.lr.ph
  %entry636.01770 = phi ptr [ %entries660, %for.body667.lr.ph ], [ %add.ptr701, %for.body667.for.body667_crit_edge ]
  %i.41769 = phi i32 [ 0, %for.body667.lr.ph ], [ %inc703, %for.body667.for.body667_crit_edge ]
  %ucUVDClockInfoIndex = getelementptr inbounds %struct._ATOM_PPLIB_UVD_Clock_Voltage_Limit_Record, ptr %entry636.01770, i32 0, i32 1
  %563 = ptrtoint ptr %ucUVDClockInfoIndex to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %ucUVDClockInfoIndex, align 1
  %conv670 = zext i8 %564 to i32
  %mul671 = mul nuw nsw i32 %conv670, 6
  %add.ptr672 = getelementptr i8, ptr %add.ptr631, i32 %mul671
  %565 = ptrtoint ptr %add.ptr672 to i32
  call void @__asan_loadN_noabort(i32 %565, i32 2)
  %566 = load i16, ptr %add.ptr672, align 1
  %567 = call i16 @llvm.bswap.i16(i16 %566)
  %conv673 = zext i16 %567 to i32
  %ucVClkHigh = getelementptr inbounds %struct._UVDClockInfo, ptr %add.ptr672, i32 0, i32 1
  %568 = ptrtoint ptr %ucVClkHigh to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %ucVClkHigh, align 1
  %conv674 = zext i8 %569 to i32
  %shl675 = shl nuw nsw i32 %conv674, 16
  %or676 = or i32 %shl675, %conv673
  %570 = ptrtoint ptr %entries645 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %entries645, align 4
  %arrayidx682 = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %571, i32 %i.41769
  %572 = ptrtoint ptr %arrayidx682 to i32
  call void @__asan_store4_noabort(i32 %572)
  store i32 %or676, ptr %arrayidx682, align 4
  %usDClkLow = getelementptr inbounds %struct._UVDClockInfo, ptr %add.ptr672, i32 0, i32 2
  %573 = ptrtoint ptr %usDClkLow to i32
  call void @__asan_loadN_noabort(i32 %573, i32 2)
  %574 = load i16, ptr %usDClkLow, align 1
  %575 = call i16 @llvm.bswap.i16(i16 %574)
  %conv683 = zext i16 %575 to i32
  %ucDClkHigh = getelementptr inbounds %struct._UVDClockInfo, ptr %add.ptr672, i32 0, i32 3
  %576 = ptrtoint ptr %ucDClkHigh to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %ucDClkHigh, align 1
  %conv684 = zext i8 %577 to i32
  %shl685 = shl nuw nsw i32 %conv684, 16
  %or686 = or i32 %shl685, %conv683
  %578 = ptrtoint ptr %entries645 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %entries645, align 4
  %dclk = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %579, i32 %i.41769, i32 1
  %580 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %or686, ptr %dclk, align 4
  %581 = ptrtoint ptr %entry636.01770 to i32
  call void @__asan_loadN_noabort(i32 %581, i32 2)
  %582 = load i16, ptr %entry636.01770, align 1
  %583 = call i16 @llvm.bswap.i16(i16 %582)
  %584 = ptrtoint ptr %entries645 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %entries645, align 4
  %v700 = getelementptr %struct.radeon_uvd_clock_voltage_dependency_entry, ptr %585, i32 %i.41769, i32 2
  %586 = ptrtoint ptr %v700 to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %583, ptr %v700, align 4
  %add.ptr701 = getelementptr i8, ptr %entry636.01770, i32 3
  %inc703 = add nuw nsw i32 %i.41769, 1
  %587 = ptrtoint ptr %add.ptr635 to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %add.ptr635, align 1
  %conv664 = zext i8 %588 to i32
  %cmp665 = icmp ult i32 %inc703, %conv664
  br i1 %cmp665, label %for.body667.for.body667_crit_edge, label %for.body667.if.end711_crit_edge

for.body667.if.end711_crit_edge:                  ; preds = %for.body667
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end711

for.body667.for.body667_crit_edge:                ; preds = %for.body667
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body667

if.end711:                                        ; preds = %for.body667.if.end711_crit_edge, %if.end653.if.end711_crit_edge, %land.lhs.true609.if.end711_crit_edge, %if.end604.if.end711_crit_edge
  %589 = ptrtoint ptr %add.ptr424 to i32
  call void @__asan_loadN_noabort(i32 %589, i32 2)
  %590 = load i16, ptr %add.ptr424, align 1
  %591 = call i16 @llvm.bswap.i16(i16 %590)
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %591)
  %cmp714 = icmp ugt i16 %591, 15
  br i1 %cmp714, label %land.lhs.true716, label %if.end711.if.end789_crit_edge

if.end711.if.end789_crit_edge:                    ; preds = %if.end711
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end789

land.lhs.true716:                                 ; preds = %if.end711
  %usSAMUTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr424, i32 0, i32 5
  %592 = ptrtoint ptr %usSAMUTableOffset to i32
  call void @__asan_loadN_noabort(i32 %592, i32 2)
  %593 = load i16, ptr %usSAMUTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %593)
  %tobool718.not = icmp eq i16 %593, 0
  br i1 %tobool718.not, label %land.lhs.true716.if.end789_crit_edge, label %if.then719

land.lhs.true716.if.end789_crit_edge:             ; preds = %land.lhs.true716
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end789

if.then719:                                       ; preds = %land.lhs.true716
  %594 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %mode_info1, align 4
  %bios722 = getelementptr inbounds %struct.atom_context, ptr %595, i32 0, i32 3
  %596 = ptrtoint ptr %bios722 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %bios722, align 4
  %598 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %598)
  %599 = load i16, ptr %data_offset, align 2
  %conv723 = zext i16 %599 to i32
  %add.ptr724 = getelementptr i8, ptr %597, i32 %conv723
  %600 = call i16 @llvm.bswap.i16(i16 %593)
  %conv726 = zext i16 %600 to i32
  %add.ptr727 = getelementptr i8, ptr %add.ptr724, i32 %conv726
  %add.ptr728 = getelementptr i8, ptr %add.ptr727, i32 1
  %601 = ptrtoint ptr %add.ptr728 to i32
  call void @__asan_load1_noabort(i32 %601)
  %602 = load i8, ptr %add.ptr728, align 1
  %conv732 = zext i8 %602 to i32
  %mul733 = shl nuw nsw i32 %conv732, 3
  %call9.i.i1648 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul733, i32 noundef 3520) #15
  %entries738 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7, i32 1
  %603 = ptrtoint ptr %entries738 to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr %call9.i.i1648, ptr %entries738, align 4
  %tobool744.not = icmp eq ptr %call9.i.i1648, null
  br i1 %tobool744.not, label %if.then745, label %if.end746

if.then745:                                       ; preds = %if.then719
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end746:                                        ; preds = %if.then719
  %samu_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7
  %604 = ptrtoint ptr %add.ptr728 to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %add.ptr728, align 1
  %conv748 = zext i8 %605 to i32
  %606 = ptrtoint ptr %samu_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 %conv748, ptr %samu_clock_voltage_dependency_table, align 4
  %607 = load i8, ptr %add.ptr728, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %607)
  %cmp7591772.not = icmp eq i8 %607, 0
  br i1 %cmp7591772.not, label %if.end746.if.end789_crit_edge, label %for.body761.preheader

if.end746.if.end789_crit_edge:                    ; preds = %if.end746
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end789

for.body761.preheader:                            ; preds = %if.end746
  %entries754 = getelementptr inbounds %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Table, ptr %add.ptr728, i32 0, i32 1
  br label %for.body761

for.body761:                                      ; preds = %for.body761.for.body761_crit_edge, %for.body761.preheader
  %entry729.01774 = phi ptr [ %add.ptr780, %for.body761.for.body761_crit_edge ], [ %entries754, %for.body761.preheader ]
  %i.51773 = phi i32 [ %inc782, %for.body761.for.body761_crit_edge ], [ 0, %for.body761.preheader ]
  %usSAMClockLow = getelementptr inbounds %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record, ptr %entry729.01774, i32 0, i32 1
  %608 = ptrtoint ptr %usSAMClockLow to i32
  call void @__asan_loadN_noabort(i32 %608, i32 2)
  %609 = load i16, ptr %usSAMClockLow, align 1
  %610 = call i16 @llvm.bswap.i16(i16 %609)
  %conv762 = zext i16 %610 to i32
  %ucSAMClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_SAMClk_Voltage_Limit_Record, ptr %entry729.01774, i32 0, i32 2
  %611 = ptrtoint ptr %ucSAMClockHigh to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %ucSAMClockHigh, align 1
  %conv763 = zext i8 %612 to i32
  %shl764 = shl nuw nsw i32 %conv763, 16
  %or765 = or i32 %shl764, %conv762
  %613 = ptrtoint ptr %entries738 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %entries738, align 4
  %arrayidx771 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %614, i32 %i.51773
  %615 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_store4_noabort(i32 %615)
  store i32 %or765, ptr %arrayidx771, align 4
  %616 = ptrtoint ptr %entry729.01774 to i32
  call void @__asan_loadN_noabort(i32 %616, i32 2)
  %617 = load i16, ptr %entry729.01774, align 1
  %618 = call i16 @llvm.bswap.i16(i16 %617)
  %619 = ptrtoint ptr %entries738 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %entries738, align 4
  %v779 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %620, i32 %i.51773, i32 1
  %621 = ptrtoint ptr %v779 to i32
  call void @__asan_store2_noabort(i32 %621)
  store i16 %618, ptr %v779, align 4
  %add.ptr780 = getelementptr i8, ptr %entry729.01774, i32 5
  %inc782 = add nuw nsw i32 %i.51773, 1
  %622 = ptrtoint ptr %add.ptr728 to i32
  call void @__asan_load1_noabort(i32 %622)
  %623 = load i8, ptr %add.ptr728, align 1
  %conv758 = zext i8 %623 to i32
  %cmp759 = icmp ult i32 %inc782, %conv758
  br i1 %cmp759, label %for.body761.for.body761_crit_edge, label %for.body761.if.end789_crit_edge

for.body761.if.end789_crit_edge:                  ; preds = %for.body761
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end789

for.body761.for.body761_crit_edge:                ; preds = %for.body761
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body761

if.end789:                                        ; preds = %for.body761.if.end789_crit_edge, %if.end746.if.end789_crit_edge, %land.lhs.true716.if.end789_crit_edge, %if.end711.if.end789_crit_edge
  %624 = ptrtoint ptr %add.ptr424 to i32
  call void @__asan_loadN_noabort(i32 %624, i32 2)
  %625 = load i16, ptr %add.ptr424, align 1
  %626 = call i16 @llvm.bswap.i16(i16 %625)
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %626)
  %cmp792 = icmp ugt i16 %626, 17
  br i1 %cmp792, label %land.lhs.true794, label %if.end789.if.end859_crit_edge

if.end789.if.end859_crit_edge:                    ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end859

land.lhs.true794:                                 ; preds = %if.end789
  %usPPMTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr424, i32 0, i32 6
  %627 = ptrtoint ptr %usPPMTableOffset to i32
  call void @__asan_loadN_noabort(i32 %627, i32 2)
  %628 = load i16, ptr %usPPMTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %628)
  %tobool796.not = icmp eq i16 %628, 0
  br i1 %tobool796.not, label %land.lhs.true794.if.end859_crit_edge, label %if.then797

land.lhs.true794.if.end859_crit_edge:             ; preds = %land.lhs.true794
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end859

if.then797:                                       ; preds = %land.lhs.true794
  %629 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %mode_info1, align 4
  %bios799 = getelementptr inbounds %struct.atom_context, ptr %630, i32 0, i32 3
  %631 = ptrtoint ptr %bios799 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %bios799, align 4
  %633 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %633)
  %634 = load i16, ptr %data_offset, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %635 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1657 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %635, i32 noundef 3520, i32 noundef 36) #16
  %ppm_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 19
  %636 = ptrtoint ptr %ppm_table to i32
  call void @__asan_store4_noabort(i32 %636)
  store ptr %call7.i.i1657, ptr %ppm_table, align 4
  %tobool813.not = icmp eq ptr %call7.i.i1657, null
  br i1 %tobool813.not, label %if.then814, label %if.end815

if.then814:                                       ; preds = %if.then797
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end815:                                        ; preds = %if.then797
  call void @__sanitizer_cov_trace_pc() #13
  %conv800 = zext i16 %634 to i32
  %add.ptr801 = getelementptr i8, ptr %632, i32 %conv800
  %637 = call i16 @llvm.bswap.i16(i16 %628)
  %conv803 = zext i16 %637 to i32
  %add.ptr804 = getelementptr i8, ptr %add.ptr801, i32 %conv803
  %ucPpmDesign = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 1
  %638 = ptrtoint ptr %ucPpmDesign to i32
  call void @__asan_load1_noabort(i32 %638)
  %639 = load i8, ptr %ucPpmDesign, align 1
  %640 = ptrtoint ptr %call7.i.i1657 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %639, ptr %call7.i.i1657, align 8
  %usCpuCoreNumber = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 2
  %641 = ptrtoint ptr %usCpuCoreNumber to i32
  call void @__asan_loadN_noabort(i32 %641, i32 2)
  %642 = load i16, ptr %usCpuCoreNumber, align 1
  %643 = call i16 @llvm.bswap.i16(i16 %642)
  %cpu_core_number = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 1
  %644 = ptrtoint ptr %cpu_core_number to i32
  call void @__asan_store2_noabort(i32 %644)
  store i16 %643, ptr %cpu_core_number, align 2
  %ulPlatformTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 3
  %645 = ptrtoint ptr %ulPlatformTDP to i32
  call void @__asan_loadN_noabort(i32 %645, i32 4)
  %646 = load i32, ptr %ulPlatformTDP, align 1
  %647 = call i32 @llvm.bswap.i32(i32 %646)
  %platform_tdp = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 2
  %648 = ptrtoint ptr %platform_tdp to i32
  call void @__asan_store4_noabort(i32 %648)
  store i32 %647, ptr %platform_tdp, align 4
  %ulSmallACPlatformTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 4
  %649 = ptrtoint ptr %ulSmallACPlatformTDP to i32
  call void @__asan_loadN_noabort(i32 %649, i32 4)
  %650 = load i32, ptr %ulSmallACPlatformTDP, align 1
  %651 = call i32 @llvm.bswap.i32(i32 %650)
  %small_ac_platform_tdp = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 3
  %652 = ptrtoint ptr %small_ac_platform_tdp to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 %651, ptr %small_ac_platform_tdp, align 8
  %ulPlatformTDC = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 5
  %653 = ptrtoint ptr %ulPlatformTDC to i32
  call void @__asan_loadN_noabort(i32 %653, i32 4)
  %654 = load i32, ptr %ulPlatformTDC, align 1
  %655 = call i32 @llvm.bswap.i32(i32 %654)
  %platform_tdc = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 4
  %656 = ptrtoint ptr %platform_tdc to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 %655, ptr %platform_tdc, align 4
  %ulSmallACPlatformTDC = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 6
  %657 = ptrtoint ptr %ulSmallACPlatformTDC to i32
  call void @__asan_loadN_noabort(i32 %657, i32 4)
  %658 = load i32, ptr %ulSmallACPlatformTDC, align 1
  %659 = call i32 @llvm.bswap.i32(i32 %658)
  %small_ac_platform_tdc = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 5
  %660 = ptrtoint ptr %small_ac_platform_tdc to i32
  call void @__asan_store4_noabort(i32 %660)
  store i32 %659, ptr %small_ac_platform_tdc, align 8
  %ulApuTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 7
  %661 = ptrtoint ptr %ulApuTDP to i32
  call void @__asan_loadN_noabort(i32 %661, i32 4)
  %662 = load i32, ptr %ulApuTDP, align 1
  %663 = call i32 @llvm.bswap.i32(i32 %662)
  %apu_tdp = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 6
  %664 = ptrtoint ptr %apu_tdp to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 %663, ptr %apu_tdp, align 4
  %ulDGpuTDP = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 8
  %665 = ptrtoint ptr %ulDGpuTDP to i32
  call void @__asan_loadN_noabort(i32 %665, i32 4)
  %666 = load i32, ptr %ulDGpuTDP, align 1
  %667 = call i32 @llvm.bswap.i32(i32 %666)
  %dgpu_tdp = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 7
  %668 = ptrtoint ptr %dgpu_tdp to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 %667, ptr %dgpu_tdp, align 8
  %ulDGpuUlvPower = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 9
  %669 = ptrtoint ptr %ulDGpuUlvPower to i32
  call void @__asan_loadN_noabort(i32 %669, i32 4)
  %670 = load i32, ptr %ulDGpuUlvPower, align 1
  %671 = call i32 @llvm.bswap.i32(i32 %670)
  %dgpu_ulv_power = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 8
  %672 = ptrtoint ptr %dgpu_ulv_power to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 %671, ptr %dgpu_ulv_power, align 4
  %ulTjmax = getelementptr inbounds %struct._ATOM_PPLIB_PPM_Table, ptr %add.ptr804, i32 0, i32 10
  %673 = ptrtoint ptr %ulTjmax to i32
  call void @__asan_loadN_noabort(i32 %673, i32 4)
  %674 = load i32, ptr %ulTjmax, align 1
  %675 = call i32 @llvm.bswap.i32(i32 %674)
  %tj_max = getelementptr inbounds %struct.radeon_ppm_table, ptr %call7.i.i1657, i32 0, i32 9
  %676 = ptrtoint ptr %tj_max to i32
  call void @__asan_store4_noabort(i32 %676)
  store i32 %675, ptr %tj_max, align 8
  br label %if.end859

if.end859:                                        ; preds = %if.end815, %land.lhs.true794.if.end859_crit_edge, %if.end789.if.end859_crit_edge
  %677 = ptrtoint ptr %add.ptr424 to i32
  call void @__asan_loadN_noabort(i32 %677, i32 2)
  %678 = load i16, ptr %add.ptr424, align 1
  %679 = call i16 @llvm.bswap.i16(i16 %678)
  call void @__sanitizer_cov_trace_const_cmp2(i16 19, i16 %679)
  %cmp862 = icmp ugt i16 %679, 19
  br i1 %cmp862, label %land.lhs.true864, label %if.end859.if.end938_crit_edge

if.end859.if.end938_crit_edge:                    ; preds = %if.end859
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end938

land.lhs.true864:                                 ; preds = %if.end859
  %usACPTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr424, i32 0, i32 7
  %680 = ptrtoint ptr %usACPTableOffset to i32
  call void @__asan_loadN_noabort(i32 %680, i32 2)
  %681 = load i16, ptr %usACPTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %681)
  %tobool866.not = icmp eq i16 %681, 0
  br i1 %tobool866.not, label %land.lhs.true864.if.end938_crit_edge, label %if.then867

land.lhs.true864.if.end938_crit_edge:             ; preds = %land.lhs.true864
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end938

if.then867:                                       ; preds = %land.lhs.true864
  %682 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %mode_info1, align 4
  %bios870 = getelementptr inbounds %struct.atom_context, ptr %683, i32 0, i32 3
  %684 = ptrtoint ptr %bios870 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %bios870, align 4
  %686 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %686)
  %687 = load i16, ptr %data_offset, align 2
  %conv871 = zext i16 %687 to i32
  %add.ptr872 = getelementptr i8, ptr %685, i32 %conv871
  %688 = call i16 @llvm.bswap.i16(i16 %681)
  %conv874 = zext i16 %688 to i32
  %add.ptr875 = getelementptr i8, ptr %add.ptr872, i32 %conv874
  %add.ptr876 = getelementptr i8, ptr %add.ptr875, i32 1
  %689 = ptrtoint ptr %add.ptr876 to i32
  call void @__asan_load1_noabort(i32 %689)
  %690 = load i8, ptr %add.ptr876, align 1
  %conv880 = zext i8 %690 to i32
  %mul881 = shl nuw nsw i32 %conv880, 3
  %call9.i.i1685 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul881, i32 noundef 3520) #15
  %entries886 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8, i32 1
  %691 = ptrtoint ptr %entries886 to i32
  call void @__asan_store4_noabort(i32 %691)
  store ptr %call9.i.i1685, ptr %entries886, align 4
  %tobool892.not = icmp eq ptr %call9.i.i1685, null
  br i1 %tobool892.not, label %if.then893, label %if.end894

if.then893:                                       ; preds = %if.then867
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end894:                                        ; preds = %if.then867
  %acp_clock_voltage_dependency_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8
  %692 = ptrtoint ptr %add.ptr876 to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %add.ptr876, align 1
  %conv896 = zext i8 %693 to i32
  %694 = ptrtoint ptr %acp_clock_voltage_dependency_table to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 %conv896, ptr %acp_clock_voltage_dependency_table, align 4
  %695 = load i8, ptr %add.ptr876, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %695)
  %cmp9071776.not = icmp eq i8 %695, 0
  br i1 %cmp9071776.not, label %if.end894.if.end938_crit_edge, label %for.body909.preheader

if.end894.if.end938_crit_edge:                    ; preds = %if.end894
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end938

for.body909.preheader:                            ; preds = %if.end894
  %entries902 = getelementptr inbounds %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Table, ptr %add.ptr876, i32 0, i32 1
  br label %for.body909

for.body909:                                      ; preds = %for.body909.for.body909_crit_edge, %for.body909.preheader
  %entry877.01778 = phi ptr [ %add.ptr929, %for.body909.for.body909_crit_edge ], [ %entries902, %for.body909.preheader ]
  %i.61777 = phi i32 [ %inc931, %for.body909.for.body909_crit_edge ], [ 0, %for.body909.preheader ]
  %usACPClockLow = getelementptr inbounds %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record, ptr %entry877.01778, i32 0, i32 1
  %696 = ptrtoint ptr %usACPClockLow to i32
  call void @__asan_loadN_noabort(i32 %696, i32 2)
  %697 = load i16, ptr %usACPClockLow, align 1
  %698 = call i16 @llvm.bswap.i16(i16 %697)
  %conv910 = zext i16 %698 to i32
  %ucACPClockHigh = getelementptr inbounds %struct._ATOM_PPLIB_ACPClk_Voltage_Limit_Record, ptr %entry877.01778, i32 0, i32 2
  %699 = ptrtoint ptr %ucACPClockHigh to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %ucACPClockHigh, align 1
  %conv911 = zext i8 %700 to i32
  %shl912 = shl nuw nsw i32 %conv911, 16
  %or913 = or i32 %shl912, %conv910
  %701 = ptrtoint ptr %entries886 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %entries886, align 4
  %arrayidx919 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %702, i32 %i.61777
  %703 = ptrtoint ptr %arrayidx919 to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %or913, ptr %arrayidx919, align 4
  %704 = ptrtoint ptr %entry877.01778 to i32
  call void @__asan_loadN_noabort(i32 %704, i32 2)
  %705 = load i16, ptr %entry877.01778, align 1
  %706 = call i16 @llvm.bswap.i16(i16 %705)
  %707 = ptrtoint ptr %entries886 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %entries886, align 4
  %v928 = getelementptr %struct.radeon_clock_voltage_dependency_entry, ptr %708, i32 %i.61777, i32 1
  %709 = ptrtoint ptr %v928 to i32
  call void @__asan_store2_noabort(i32 %709)
  store i16 %706, ptr %v928, align 4
  %add.ptr929 = getelementptr i8, ptr %entry877.01778, i32 5
  %inc931 = add nuw nsw i32 %i.61777, 1
  %710 = ptrtoint ptr %add.ptr876 to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %add.ptr876, align 1
  %conv906 = zext i8 %711 to i32
  %cmp907 = icmp ult i32 %inc931, %conv906
  br i1 %cmp907, label %for.body909.for.body909_crit_edge, label %for.body909.if.end938_crit_edge

for.body909.if.end938_crit_edge:                  ; preds = %for.body909
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end938

for.body909.for.body909_crit_edge:                ; preds = %for.body909
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body909

if.end938:                                        ; preds = %for.body909.if.end938_crit_edge, %if.end894.if.end938_crit_edge, %land.lhs.true864.if.end938_crit_edge, %if.end859.if.end938_crit_edge
  %712 = ptrtoint ptr %add.ptr424 to i32
  call void @__asan_loadN_noabort(i32 %712, i32 2)
  %713 = load i16, ptr %add.ptr424, align 1
  %714 = call i16 @llvm.bswap.i16(i16 %713)
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %714)
  %cmp941 = icmp ugt i16 %714, 21
  br i1 %cmp941, label %land.lhs.true943, label %if.end938.cleanup1033_crit_edge

if.end938.cleanup1033_crit_edge:                  ; preds = %if.end938
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1033

land.lhs.true943:                                 ; preds = %if.end938
  %usPowerTuneTableOffset = getelementptr inbounds %struct._ATOM_PPLIB_EXTENDEDHEADER, ptr %add.ptr424, i32 0, i32 8
  %715 = ptrtoint ptr %usPowerTuneTableOffset to i32
  call void @__asan_loadN_noabort(i32 %715, i32 2)
  %716 = load i16, ptr %usPowerTuneTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %716)
  %tobool945.not = icmp eq i16 %716, 0
  br i1 %tobool945.not, label %land.lhs.true943.cleanup1033_crit_edge, label %if.then946

land.lhs.true943.cleanup1033_crit_edge:           ; preds = %land.lhs.true943
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1033

if.then946:                                       ; preds = %land.lhs.true943
  %717 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %mode_info1, align 4
  %bios948 = getelementptr inbounds %struct.atom_context, ptr %718, i32 0, i32 3
  %719 = ptrtoint ptr %bios948 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %bios948, align 4
  %721 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %721)
  %722 = load i16, ptr %data_offset, align 2
  %conv949 = zext i16 %722 to i32
  %add.ptr950 = getelementptr i8, ptr %720, i32 %conv949
  %723 = call i16 @llvm.bswap.i16(i16 %716)
  %conv952 = zext i16 %723 to i32
  %add.ptr953 = getelementptr i8, ptr %add.ptr950, i32 %conv952
  %724 = ptrtoint ptr %add.ptr953 to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %add.ptr953, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %726 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1694 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %726, i32 noundef 3520, i32 noundef 16) #16
  %cac_tdp_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 20
  %727 = ptrtoint ptr %cac_tdp_table to i32
  call void @__asan_store4_noabort(i32 %727)
  store ptr %call7.i.i1694, ptr %cac_tdp_table, align 4
  %tobool962.not = icmp eq ptr %call7.i.i1694, null
  br i1 %tobool962.not, label %if.then963, label %if.end964

if.then963:                                       ; preds = %if.then946
  call void @__sanitizer_cov_trace_pc() #13
  call void @r600_free_extended_power_table(ptr noundef %rdev)
  br label %cleanup1033

if.end964:                                        ; preds = %if.then946
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %725)
  %cmp966.not = icmp eq i8 %725, 0
  %728 = ptrtoint ptr %mode_info1 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %mode_info1, align 4
  %bios983 = getelementptr inbounds %struct.atom_context, ptr %729, i32 0, i32 3
  %730 = ptrtoint ptr %bios983 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %bios983, align 4
  %732 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %732)
  %733 = load i16, ptr %data_offset, align 2
  %conv984 = zext i16 %733 to i32
  %add.ptr985 = getelementptr i8, ptr %731, i32 %conv984
  %734 = ptrtoint ptr %usPowerTuneTableOffset to i32
  call void @__asan_loadN_noabort(i32 %734, i32 2)
  %735 = load i16, ptr %usPowerTuneTableOffset, align 1
  %736 = call i16 @llvm.bswap.i16(i16 %735)
  %conv987 = zext i16 %736 to i32
  %add.ptr988 = getelementptr i8, ptr %add.ptr985, i32 %conv987
  br i1 %cmp966.not, label %if.else980, label %if.then968

if.then968:                                       ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #13
  %usMaximumPowerDeliveryLimit = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %add.ptr988, i32 0, i32 2
  %737 = ptrtoint ptr %usMaximumPowerDeliveryLimit to i32
  call void @__asan_loadN_noabort(i32 %737, i32 2)
  %738 = load i16, ptr %usMaximumPowerDeliveryLimit, align 1
  %739 = call i16 @llvm.bswap.i16(i16 %738)
  %power_tune_table = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table_V1, ptr %add.ptr988, i32 0, i32 1
  br label %if.end995

if.else980:                                       ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #13
  %power_tune_table994 = getelementptr inbounds %struct._ATOM_PPLIB_POWERTUNE_Table, ptr %add.ptr988, i32 0, i32 1
  br label %if.end995

if.end995:                                        ; preds = %if.else980, %if.then968
  %.sink1785 = phi i16 [ 255, %if.else980 ], [ %739, %if.then968 ]
  %pt.0 = phi ptr [ %power_tune_table994, %if.else980 ], [ %power_tune_table, %if.then968 ]
  %740 = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 7
  %741 = ptrtoint ptr %740 to i32
  call void @__asan_store2_noabort(i32 %741)
  store i16 %.sink1785, ptr %740, align 2
  %742 = ptrtoint ptr %pt.0 to i32
  call void @__asan_loadN_noabort(i32 %742, i32 2)
  %743 = load i16, ptr %pt.0, align 1
  %744 = call i16 @llvm.bswap.i16(i16 %743)
  %745 = ptrtoint ptr %call7.i.i1694 to i32
  call void @__asan_store2_noabort(i32 %745)
  store i16 %744, ptr %call7.i.i1694, align 8
  %usConfigurableTDP = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 1
  %746 = ptrtoint ptr %usConfigurableTDP to i32
  call void @__asan_loadN_noabort(i32 %746, i32 2)
  %747 = load i16, ptr %usConfigurableTDP, align 1
  %748 = call i16 @llvm.bswap.i16(i16 %747)
  %configurable_tdp = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 1
  %749 = ptrtoint ptr %configurable_tdp to i32
  call void @__asan_store2_noabort(i32 %749)
  store i16 %748, ptr %configurable_tdp, align 2
  %usTDC = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 2
  %750 = ptrtoint ptr %usTDC to i32
  call void @__asan_loadN_noabort(i32 %750, i32 2)
  %751 = load i16, ptr %usTDC, align 1
  %752 = call i16 @llvm.bswap.i16(i16 %751)
  %tdc = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 2
  %753 = ptrtoint ptr %tdc to i32
  call void @__asan_store2_noabort(i32 %753)
  store i16 %752, ptr %tdc, align 4
  %usBatteryPowerLimit = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 3
  %754 = ptrtoint ptr %usBatteryPowerLimit to i32
  call void @__asan_loadN_noabort(i32 %754, i32 2)
  %755 = load i16, ptr %usBatteryPowerLimit, align 1
  %756 = call i16 @llvm.bswap.i16(i16 %755)
  %battery_power_limit = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 3
  %757 = ptrtoint ptr %battery_power_limit to i32
  call void @__asan_store2_noabort(i32 %757)
  store i16 %756, ptr %battery_power_limit, align 2
  %usSmallPowerLimit = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 4
  %758 = ptrtoint ptr %usSmallPowerLimit to i32
  call void @__asan_loadN_noabort(i32 %758, i32 2)
  %759 = load i16, ptr %usSmallPowerLimit, align 1
  %760 = call i16 @llvm.bswap.i16(i16 %759)
  %small_power_limit = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 4
  %761 = ptrtoint ptr %small_power_limit to i32
  call void @__asan_store2_noabort(i32 %761)
  store i16 %760, ptr %small_power_limit, align 8
  %usLowCACLeakage = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 5
  %762 = ptrtoint ptr %usLowCACLeakage to i32
  call void @__asan_loadN_noabort(i32 %762, i32 2)
  %763 = load i16, ptr %usLowCACLeakage, align 1
  %764 = call i16 @llvm.bswap.i16(i16 %763)
  %low_cac_leakage = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 5
  %765 = ptrtoint ptr %low_cac_leakage to i32
  call void @__asan_store2_noabort(i32 %765)
  store i16 %764, ptr %low_cac_leakage, align 2
  %usHighCACLeakage = getelementptr inbounds %struct._ATOM_PowerTune_Table, ptr %pt.0, i32 0, i32 6
  %766 = ptrtoint ptr %usHighCACLeakage to i32
  call void @__asan_loadN_noabort(i32 %766, i32 2)
  %767 = load i16, ptr %usHighCACLeakage, align 1
  %768 = call i16 @llvm.bswap.i16(i16 %767)
  %high_cac_leakage = getelementptr inbounds %struct.radeon_cac_tdp_table, ptr %call7.i.i1694, i32 0, i32 6
  %769 = ptrtoint ptr %high_cac_leakage to i32
  call void @__asan_store2_noabort(i32 %769)
  store i16 %768, ptr %high_cac_leakage, align 4
  br label %cleanup1033

cleanup1033:                                      ; preds = %if.end995, %if.then963, %land.lhs.true943.cleanup1033_crit_edge, %if.end938.cleanup1033_crit_edge, %if.then893, %if.then814, %if.then745, %if.then652, %if.then485, %if.end413.cleanup1033_crit_edge, %if.then348, %if.then239, %if.then153, %if.then126, %if.then105, %if.then76.cleanup1033_crit_edge, %entry.cleanup1033_crit_edge
  %retval.17 = phi i32 [ -12, %if.then105 ], [ -12, %if.then126 ], [ -12, %if.then153 ], [ -22, %entry.cleanup1033_crit_edge ], [ -12, %if.then239 ], [ -12, %if.then348 ], [ -12, %if.then485 ], [ -12, %if.then652 ], [ -12, %if.then745 ], [ -12, %if.then814 ], [ -12, %if.then893 ], [ -12, %if.then963 ], [ 0, %if.end995 ], [ 0, %land.lhs.true943.cleanup1033_crit_edge ], [ 0, %if.end938.cleanup1033_crit_edge ], [ 0, %if.end413.cleanup1033_crit_edge ], [ -12, %if.then76.cleanup1033_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #11
  ret i32 %retval.17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r600_free_extended_power_table(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 0, i32 1
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %1) #11
  %entries2 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 1, i32 1
  %2 = ptrtoint ptr %entries2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries2, align 4
  tail call void @kfree(ptr noundef %3) #11
  %entries3 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 2, i32 1
  %4 = ptrtoint ptr %entries3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries3, align 4
  tail call void @kfree(ptr noundef %5) #11
  %entries4 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 3, i32 1
  %6 = ptrtoint ptr %entries4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries4, align 4
  tail call void @kfree(ptr noundef %7) #11
  %entries5 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 17, i32 1
  %8 = ptrtoint ptr %entries5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entries5, align 4
  tail call void @kfree(ptr noundef %9) #11
  %entries6 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 18, i32 1
  %10 = ptrtoint ptr %entries6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries6, align 4
  tail call void @kfree(ptr noundef %11) #11
  %ppm_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 19
  %12 = ptrtoint ptr %ppm_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ppm_table, align 4
  tail call void @kfree(ptr noundef %13) #11
  %cac_tdp_table = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 20
  %14 = ptrtoint ptr %cac_tdp_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cac_tdp_table, align 4
  tail call void @kfree(ptr noundef %15) #11
  %entries7 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 6, i32 1
  %16 = ptrtoint ptr %entries7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries7, align 4
  tail call void @kfree(ptr noundef %17) #11
  %entries8 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 5, i32 1
  %18 = ptrtoint ptr %entries8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %entries8, align 4
  tail call void @kfree(ptr noundef %19) #11
  %entries9 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 7, i32 1
  %20 = ptrtoint ptr %entries9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entries9, align 4
  tail call void @kfree(ptr noundef %21) #11
  %entries10 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 20, i32 8, i32 1
  %22 = ptrtoint ptr %entries10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entries10, align 4
  tail call void @kfree(ptr noundef %23) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r600_get_pcie_gen_support(ptr nocapture noundef readnone %rdev, i32 noundef %sys_mask, i32 noundef %asic_gen, i32 noundef %default_gen) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %asic_gen)
  %0 = icmp ult i32 %asic_gen, 3
  br i1 %0, label %entry.return_crit_edge, label %sw.default

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.default:                                       ; preds = %entry
  %and = and i32 %sys_mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %default_gen)
  %cmp = icmp eq i32 %default_gen, 2
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %sw.default.return_crit_edge, label %if.else

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %and3 = and i32 %sys_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp ne i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %default_gen)
  %cmp6 = icmp eq i32 %default_gen, 1
  %or.cond11 = and i1 %tobool4.not, %cmp6
  %spec.select = zext i1 %or.cond11 to i32
  br label %return

return:                                           ; preds = %if.else, %sw.default.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 2, %sw.default.return_crit_edge ], [ %spec.select, %if.else ], [ %asic_gen, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @r600_get_pcie_lane_support(ptr nocapture noundef readnone %rdev, i16 noundef zeroext %asic_lanes, i16 noundef zeroext %default_lanes) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %asic_lanes to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %asic_lanes, label %entry.return_crit_edge [
    i16 16, label %sw.bb6
    i16 1, label %sw.bb1
    i16 2, label %sw.bb2
    i16 4, label %sw.bb3
    i16 8, label %sw.bb4
    i16 12, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i16 [ %asic_lanes, %sw.bb5 ], [ %asic_lanes, %sw.bb4 ], [ %asic_lanes, %sw.bb3 ], [ %asic_lanes, %sw.bb2 ], [ %asic_lanes, %sw.bb1 ], [ %asic_lanes, %sw.bb6 ], [ %default_lanes, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @r600_encode_pci_lane_width(i32 noundef %lanes) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %lanes)
  %cmp = icmp ugt i32 %lanes, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [17 x i8], ptr @r600_encode_pci_lane_width.encoded_lanes, i32 0, i32 %lanes
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ %1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @r600_utc, !1, !"r600_utc", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 31, i32 11}
!2 = !{ptr @r600_dtc, !3, !"r600_dtc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 50, i32 11}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 76, i32 7}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 79, i32 7}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 82, i32 7}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 85, i32 7}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 88, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @r600_dpm_print_class_info._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @r600_dpm_print_class_info._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 90, i32 2}
!20 = !{ptr @r600_dpm_print_class_info._entry.7, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @r600_dpm_print_class_info._entry_ptr.9, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 93, i32 3}
!24 = !{ptr @r600_dpm_print_class_info._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @r600_dpm_print_class_info._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 96, i32 4}
!28 = !{ptr @r600_dpm_print_class_info._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @r600_dpm_print_class_info._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 98, i32 4}
!32 = !{ptr @r600_dpm_print_class_info._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @r600_dpm_print_class_info._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 100, i32 4}
!36 = !{ptr @r600_dpm_print_class_info._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @r600_dpm_print_class_info._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 102, i32 4}
!40 = !{ptr @r600_dpm_print_class_info._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @r600_dpm_print_class_info._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 104, i32 4}
!44 = !{ptr @r600_dpm_print_class_info._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @r600_dpm_print_class_info._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 106, i32 4}
!48 = !{ptr @r600_dpm_print_class_info._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @r600_dpm_print_class_info._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 108, i32 4}
!52 = !{ptr @r600_dpm_print_class_info._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @r600_dpm_print_class_info._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 110, i32 4}
!56 = !{ptr @r600_dpm_print_class_info._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @r600_dpm_print_class_info._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 112, i32 4}
!60 = !{ptr @r600_dpm_print_class_info._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @r600_dpm_print_class_info._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.41, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 114, i32 4}
!64 = !{ptr @r600_dpm_print_class_info._entry.40, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @r600_dpm_print_class_info._entry_ptr.42, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 116, i32 4}
!68 = !{ptr @r600_dpm_print_class_info._entry.43, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @r600_dpm_print_class_info._entry_ptr.45, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 118, i32 4}
!72 = !{ptr @r600_dpm_print_class_info._entry.46, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @r600_dpm_print_class_info._entry_ptr.48, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.50, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 120, i32 4}
!76 = !{ptr @r600_dpm_print_class_info._entry.49, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @r600_dpm_print_class_info._entry_ptr.51, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 122, i32 4}
!80 = !{ptr @r600_dpm_print_class_info._entry.52, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @r600_dpm_print_class_info._entry_ptr.54, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.56, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 124, i32 4}
!84 = !{ptr @r600_dpm_print_class_info._entry.55, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @r600_dpm_print_class_info._entry_ptr.57, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.59, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 126, i32 4}
!88 = !{ptr @r600_dpm_print_class_info._entry.58, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @r600_dpm_print_class_info._entry_ptr.60, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.62, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 128, i32 2}
!92 = !{ptr @r600_dpm_print_class_info._entry.61, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @r600_dpm_print_class_info._entry_ptr.63, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.64, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 133, i32 2}
!96 = !{ptr @.str.65, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @r600_dpm_print_cap_info._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @r600_dpm_print_cap_info._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.67, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 135, i32 3}
!101 = !{ptr @r600_dpm_print_cap_info._entry.66, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @r600_dpm_print_cap_info._entry_ptr.68, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.70, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 137, i32 3}
!105 = !{ptr @r600_dpm_print_cap_info._entry.69, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @r600_dpm_print_cap_info._entry_ptr.71, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.73, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 139, i32 3}
!109 = !{ptr @r600_dpm_print_cap_info._entry.72, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @r600_dpm_print_cap_info._entry_ptr.74, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @r600_dpm_print_cap_info._entry.75, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 140, i32 2}
!113 = !{ptr @r600_dpm_print_cap_info._entry_ptr.76, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.77, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 146, i32 2}
!116 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @r600_dpm_print_ps_status._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @r600_dpm_print_ps_status._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.80, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 148, i32 3}
!121 = !{ptr @r600_dpm_print_ps_status._entry.79, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @r600_dpm_print_ps_status._entry_ptr.81, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.83, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 150, i32 3}
!125 = !{ptr @r600_dpm_print_ps_status._entry.82, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @r600_dpm_print_ps_status._entry_ptr.84, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.86, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 152, i32 3}
!129 = !{ptr @r600_dpm_print_ps_status._entry.85, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @r600_dpm_print_ps_status._entry_ptr.87, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @r600_dpm_print_ps_status._entry.88, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 153, i32 2}
!133 = !{ptr @r600_dpm_print_ps_status._entry_ptr.89, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @r600_encode_pci_lane_width.encoded_lanes, !135, !"encoded_lanes", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 1364, i32 18}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/radeon/r600_dpm.c", i32 750, i32 3}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i8 0, i8 2}
!148 = !{i64 2157450482}
!149 = !{i64 6729472}
!150 = !{i64 6729890}
!151 = !{i64 2157450075}
!152 = !{!"auto-init"}
