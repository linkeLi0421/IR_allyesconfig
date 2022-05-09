; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rs780_dpm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rs780_dpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atom_clock_dividers = type { i32, %union.anon.109, i32, i8, i8, i32, i32, i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32 }
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
%struct.igp_power_info = type { i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.radeon_ps = type { i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.igp_ps = type { i32, i32, i32, i32, i32 }
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
%struct._ATOM_PPLIB_POWERPLAYTABLE = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i32, %struct._ATOM_PPLIB_THERMALCONTROLLER, i16, i16 }>
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_PPLIB_THERMALCONTROLLER = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_PPLIB_STATE = type { i8, [1 x i8] }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type <{ i16, i8, i8, i32, i8, i16, i32, i32, [5 x i8] }>
%struct._ATOM_PPLIB_RS780_CLOCK_INFO = type <{ i16, i8, i16, i8, i16, i8, i8, i16, i8, i8, i16, i32 }>
%struct._ATOM_INTEGRATED_SYSTEM_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i8, i8, i16, i16, i16, [2 x i32], i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, [2 x i32], i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, [96 x i32] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"No integrated system info for your GPU\0A\00", [56 x i8] zeroinitializer }, align 32
@rs780_dpm_print_power_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09uvd    vclk: %d dclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rs780_dpm_print_power_state\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/rs780_dpm.c\00", [61 x i8] zeroinitializer }, align 32
@rs780_dpm_print_power_state._entry_ptr = internal global ptr @rs780_dpm_print_power_state._entry, section ".printk_index", align 4
@rs780_dpm_print_power_state._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\09\09power level 0    sclk: %u vddc_index: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rs780_dpm_print_power_state._entry_ptr.6 = internal global ptr @rs780_dpm_print_power_state._entry.4, section ".printk_index", align 4
@rs780_dpm_print_power_state._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\09\09power level 1    sclk: %u vddc_index: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rs780_dpm_print_power_state._entry_ptr.9 = internal global ptr @rs780_dpm_print_power_state._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"power level 0    sclk: %u vddc_index: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"power level 1    sclk: %u vddc_index: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.rs780_dpm_init = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.rs780_dpm_init.13 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 38420, i64 38676, i64 38677]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 916, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 945, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 946, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 948, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 994, i32 16 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 998, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/rs780_dpm.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 1001, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"switch.table.rs780_dpm_init\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"switch.table.rs780_dpm_init.13\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @rs780_dpm_print_power_state._entry, ptr @rs780_dpm_print_power_state._entry.4, ptr @rs780_dpm_print_power_state._entry.7, ptr @rs780_dpm_print_power_state._entry_ptr, ptr @rs780_dpm_print_power_state._entry_ptr.6, ptr @rs780_dpm_print_power_state._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.rs780_dpm_init, ptr @switch.table.rs780_dpm_init.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs780_dpm_print_power_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs780_dpm_print_power_state._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs780_dpm_print_power_state._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs780_dpm_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rs780_dpm_init.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs780_dpm_enable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %dividers.i.i = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %boot_ps1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %2 = ptrtoint ptr %boot_ps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %boot_ps1, align 4
  %crtc_id.i = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %crtc_id.i, align 4
  %refresh_rate.i = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 60, ptr %refresh_rate.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %6 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26.i = icmp sgt i32 %7, 0
  br i1 %cmp26.i, label %entry.for.body.i_crit_edge, label %entry.rs780_get_pm_mode_parameters.exit_crit_edge

entry.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %i.027.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled.i, align 8, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %crtc_id2.i = getelementptr inbounds %struct.radeon_crtc, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %crtc_id2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_id2.i, align 8
  %14 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %crtc_id.i, align 4
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12
  %htotal.i = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 4
  %15 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %htotal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool4.not.i = icmp eq i16 %16, 0
  br i1 %tobool4.not.i, label %if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %land.lhs.true5.i

if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

land.lhs.true5.i:                                 ; preds = %if.then.i
  %vtotal.i = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 9
  %17 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vtotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool8.not.i = icmp eq i16 %18, 0
  br i1 %tobool8.not.i, label %land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %if.then9.i

land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

if.then9.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode.i) #9
  %19 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call11.i, ptr %refresh_rate.i, align 4
  br label %rs780_get_pm_mode_parameters.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

rs780_get_pm_mode_parameters.exit:                ; preds = %for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge, %if.then9.i, %land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge, %if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge, %entry.rs780_get_pm_mode_parameters.exit_crit_edge
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %20 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 12416
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %23 = and i32 %22, -61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %25, i32 12416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %23) #9, !srcloc !35
  %call2 = tail call zeroext i1 @r600_dynamicpm_enabled(ptr noundef %rdev) #9
  br i1 %call2, label %rs780_get_pm_mode_parameters.exit.cleanup_crit_edge, label %if.end

rs780_get_pm_mode_parameters.exit.cleanup_crit_edge: ; preds = %rs780_get_pm_mode_parameters.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rs780_get_pm_mode_parameters.exit
  tail call void @r600_set_bsp(ptr noundef %rdev, i32 noundef 2, i32 noundef 16875) #9
  tail call void @r600_set_at(ptr noundef %rdev, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_git(ptr noundef %rdev, i32 noundef 512) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 3, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 4, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 5, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 6, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 7, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 8, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 9, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 10, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 11, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 12, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 13, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_set_tc(ptr noundef %rdev, i32 noundef 14, i32 noundef 0, i32 noundef 0) #9
  tail call void @r600_select_td(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_tpu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_tpc(ptr noundef %rdev, i32 noundef 512) #9
  tail call void @r600_set_sstu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_sst(ptr noundef %rdev, i32 noundef 200) #9
  tail call void @r600_set_fctu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_fct(ptr noundef %rdev, i32 noundef 1024) #9
  tail call void @r600_set_vddc3d_oorsu(ptr noundef %rdev, i32 noundef 0) #9
  tail call void @r600_set_vddc3d_oorphc(ptr noundef %rdev, i32 noundef 256) #9
  tail call void @r600_set_vddc3d_oorsdc(ptr noundef %rdev, i32 noundef 7) #9
  tail call void @r600_set_ctxcgtt3d_rphc(ptr noundef %rdev, i32 noundef 32) #9
  tail call void @r600_set_ctxcgtt3d_rsdc(ptr noundef %rdev, i32 noundef 64) #9
  tail call void @r600_vid_rt_set_vru(ptr noundef %rdev, i32 noundef 3) #9
  tail call void @r600_vid_rt_set_vrt(ptr noundef %rdev, i32 noundef 1000) #9
  tail call void @r600_vid_rt_set_ssu(ptr noundef %rdev, i32 noundef 3) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers.i.i) #9
  %26 = call ptr @memset(ptr %dividers.i.i, i32 255, i32 32)
  %ps_priv.i.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %27 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ps_priv.i.i.i, align 4
  %sclk_low.i.i = getelementptr inbounds %struct.igp_ps, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %sclk_low.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sclk_low.i.i, align 4
  %call1.i.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %30, i1 noundef zeroext false, ptr noundef nonnull %dividers.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.rs780_initialize_dpm_parameters.exit_crit_edge

if.end.rs780_initialize_dpm_parameters.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_initialize_dpm_parameters.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ref_div.i.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %ref_div.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ref_div.i.i, align 4
  call void @r600_engine_clock_entry_set_reference_divider(ptr noundef %rdev, i32 noundef 0, i32 noundef %32) #9
  %33 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @r600_engine_clock_entry_set_feedback_divider(ptr noundef %rdev, i32 noundef 0, i32 noundef %35) #9
  %36 = ptrtoint ptr %dividers.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dividers.i.i, align 4
  call void @r600_engine_clock_entry_set_post_divider(ptr noundef %rdev, i32 noundef 0, i32 noundef %37) #9
  %enable_post_div.i.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %enable_post_div.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable_post_div.i.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i.i = icmp ne i8 %39, 0
  call void @r600_engine_clock_entry_enable_post_divider(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext %tobool2.not.i.i) #9
  call void @r600_engine_clock_entry_set_step_time(ptr noundef %rdev, i32 noundef 0, i32 noundef 200) #9
  call void @r600_engine_clock_entry_enable_pulse_skipping(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 3, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 4, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 5, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 6, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 7, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 8, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 9, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 10, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 11, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 12, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 13, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 14, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 15, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 16, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 17, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 18, i1 noundef zeroext false) #9
  call void @r600_engine_clock_entry_enable(ptr noundef %rdev, i32 noundef 19, i1 noundef zeroext false) #9
  call void @r600_enable_mclk_control(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @r600_voltage_control_enable_pins(ptr noundef %rdev, i64 noundef 0) #9
  br label %rs780_initialize_dpm_parameters.exit

rs780_initialize_dpm_parameters.exit:             ; preds = %if.end.i.i, %if.end.rs780_initialize_dpm_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers.i.i) #9
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #9
  call void @r600_power_level_set_voltage_index(ptr noundef %rdev, i32 noundef 2, i32 noundef 0) #9
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #9
  call void @r600_power_level_set_mem_clock_index(ptr noundef %rdev, i32 noundef 2, i32 noundef 0) #9
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 0, i32 noundef 0) #9
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 1, i32 noundef 0) #9
  call void @r600_power_level_set_eng_clock_index(ptr noundef %rdev, i32 noundef 2, i32 noundef 0) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 0, i32 noundef 1) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 1, i32 noundef 1) #9
  call void @r600_power_level_set_watermark_id(ptr noundef %rdev, i32 noundef 2, i32 noundef 1) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 3, i1 noundef zeroext false) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 2, i1 noundef zeroext false) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 1, i1 noundef zeroext false) #9
  call void @r600_power_level_enable(ptr noundef %rdev, i32 noundef 0, i1 noundef zeroext true) #9
  call void @r600_power_level_set_enter_index(ptr noundef %rdev, i32 noundef 0) #9
  call void @r600_set_vrc(ptr noundef %rdev, i32 noundef 50528271) #9
  br i1 %tobool.not.i.i, label %if.end5, label %rs780_initialize_dpm_parameters.exit.cleanup_crit_edge

rs780_initialize_dpm_parameters.exit.cleanup_crit_edge: ; preds = %rs780_initialize_dpm_parameters.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %rs780_initialize_dpm_parameters.exit
  call void @r600_enable_sclk_control(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @r600_enable_mclk_control(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @r600_dynamicpm_enable(ptr noundef %rdev, i1 noundef zeroext true) #9
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %40 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %asic.i, align 8
  %wait_for_vblank.i = getelementptr inbounds %struct.radeon_asic, ptr %41, i32 0, i32 16, i32 2
  %42 = ptrtoint ptr %wait_for_vblank.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wait_for_vblank.i, align 4
  call void %43(ptr noundef %rdev, i32 noundef 0) #9
  %44 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %asic.i, align 8
  %wait_for_vblank3.i = getelementptr inbounds %struct.radeon_asic, ptr %45, i32 0, i32 16, i32 2
  %46 = ptrtoint ptr %wait_for_vblank3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wait_for_vblank3.i, align 4
  call void %47(ptr noundef %rdev, i32 noundef 1) #9
  call void @r600_enable_spll_bypass(ptr noundef %rdev, i1 noundef zeroext true) #9
  call void @r600_wait_for_spll_change(ptr noundef %rdev) #9
  call void @r600_enable_spll_bypass(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @r600_wait_for_spll_change(ptr noundef %rdev) #9
  call void @r600_enable_spll_bypass(ptr noundef %rdev, i1 noundef zeroext true) #9
  call void @r600_wait_for_spll_change(ptr noundef %rdev) #9
  call void @r600_enable_spll_bypass(ptr noundef %rdev, i1 noundef zeroext false) #9
  call void @r600_wait_for_spll_change(ptr noundef %rdev) #9
  call void @r600_enable_sclk_control(ptr noundef %rdev, i1 noundef zeroext true) #9
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %49, i32 12460
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %51 = or i32 %50, 1048576
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %53, i32 12460
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %51) #9, !srcloc !35
  %54 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %55, i32 12460
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %57 = and i32 %56, 15794175
  %58 = or i32 %57, 1845493760
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %60, i32 12460
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %58) #9, !srcloc !35
  %61 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %62, i32 1536
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %64 = call i32 @llvm.bswap.i32(i32 %63) #9
  %and.i = lshr i32 %64, 2
  %shr.i = and i32 %and.i, 255
  %65 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %66, i32 12356
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %68 = and i32 %67, -15793921
  %69 = call i32 @llvm.bswap.i32(i32 %68) #9
  %shl.i = shl nuw nsw i32 %shr.i, 12
  %or.i = or i32 %69, %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %70 = call i32 @llvm.bswap.i32(i32 %or.i) #9
  %71 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %72, i32 12356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %70) #9, !srcloc !35
  %73 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %74, i32 12360
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %76 = and i32 %75, 15794175
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  %or10.i = or i32 %77, %shr.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %78 = call i32 @llvm.bswap.i32(i32 %or10.i) #9
  %79 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %80, i32 12360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %78) #9, !srcloc !35
  %81 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %82, i32 12356
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %84 = or i32 %83, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %86, i32 12356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %84) #9, !srcloc !35
  %voltage_control = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 2
  %87 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %voltage_control, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool6.not = icmp eq i8 %88, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  %89 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv.i, align 4
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %91 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %device.i, align 2
  %95 = zext i16 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values)
  switch i16 %94, label %if.else18.i [
    i16 -27116, label %if.then7.if.end22.i_crit_edge
    i16 -26860, label %if.then7.if.then14.i_crit_edge
    i16 -26859, label %if.then7.if.then14.i_crit_edge70
  ]

if.then7.if.then14.i_crit_edge70:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then7.if.then14.i_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then7.if.end22.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then14.i:                                      ; preds = %if.then7.if.then14.i_crit_edge, %if.then7.if.then14.i_crit_edge70
  br label %if.end22.i

if.else18.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else18.i, %if.then14.i, %if.then7.if.end22.i_crit_edge
  %fv_throt_pwm_fb_div_range.sroa.0.0.i = phi i32 [ 141, %if.then14.i ], [ 55, %if.else18.i ], [ 139, %if.then7.if.end22.i_crit_edge ]
  %fv_throt_pwm_fb_div_range.sroa.7.0.i = phi i32 [ 142, %if.then14.i ], [ 75, %if.else18.i ], [ 140, %if.then7.if.end22.i_crit_edge ]
  %fv_throt_pwm_fb_div_range.sroa.12.0.i = phi i32 [ 761856, %if.then14.i ], [ 569344, %if.else18.i ], [ 741376, %if.then7.if.end22.i_crit_edge ]
  %pwm_voltage_control.i = getelementptr inbounds %struct.igp_power_info, ptr %90, i32 0, i32 1
  %96 = ptrtoint ptr %pwm_voltage_control.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pwm_voltage_control.i, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i37 = icmp eq i8 %97, 0
  br i1 %tobool.not.i37, label %if.else34.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %min_voltage.i = getelementptr inbounds %struct.igp_power_info, ptr %90, i32 0, i32 7
  %98 = ptrtoint ptr %min_voltage.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %min_voltage.i, align 2
  %conv27.i = zext i16 %99 to i32
  %max_voltage.i = getelementptr inbounds %struct.igp_power_info, ptr %90, i32 0, i32 6
  %100 = ptrtoint ptr %max_voltage.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %max_voltage.i, align 4
  %conv29.i = zext i16 %101 to i32
  br label %do.body.i

if.else34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %90, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool35.not.i = icmp eq i8 %103, 0
  %cond41.i = select i1 %tobool35.not.i, i32 26, i32 0
  %cond46.i = select i1 %tobool35.not.i, i32 0, i32 26
  br label %do.body.i

do.body.i:                                        ; preds = %if.else34.i, %if.then23.i
  %fv_throt_pwm_range.sroa.5.0.i = phi i32 [ %conv27.i, %if.then23.i ], [ %cond41.i, %if.else34.i ]
  %fv_throt_pwm_range.sroa.10.0.i = phi i32 [ %conv29.i, %if.then23.i ], [ %cond46.i, %if.else34.i ]
  %104 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %105, i32 12380
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i39) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %107 = and i32 %106, 15794175
  %108 = call i32 @llvm.bswap.i32(i32 %107) #9
  %max_voltage55.i = getelementptr inbounds %struct.igp_power_info, ptr %90, i32 0, i32 6
  %109 = ptrtoint ptr %max_voltage55.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %max_voltage55.i, align 4
  %111 = and i16 %110, 4095
  %and57.i = zext i16 %111 to i32
  %or.i40 = or i32 %108, %and57.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %112 = call i32 @llvm.bswap.i32(i32 %or.i40) #9
  %113 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %114, i32 12380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %112) #9, !srcloc !35
  %115 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i180.i = getelementptr i8, ptr %116, i32 12380
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %118 = and i32 %117, -15793921
  %119 = call i32 @llvm.bswap.i32(i32 %118) #9
  %num_of_cycles_in_period.i = getelementptr inbounds %struct.igp_power_info, ptr %90, i32 0, i32 11
  %120 = ptrtoint ptr %num_of_cycles_in_period.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %num_of_cycles_in_period.i, align 2
  %conv62.i = zext i16 %121 to i32
  %shl63.i = shl nuw nsw i32 %conv62.i, 12
  %and64.i = and i32 %shl63.i, 16773120
  %or65.i = or i32 %and64.i, %119
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %122 = call i32 @llvm.bswap.i32(i32 %or65.i) #9
  %123 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %124, i32 12380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %122) #9, !srcloc !35
  %125 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %126, i32 12380
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %128 = or i32 %127, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %129 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %130, i32 12380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186.i, i32 %128) #9, !srcloc !35
  %131 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %90, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool76.not.i = icmp eq i8 %132, 0
  %133 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i192.i = getelementptr i8, ptr %134, i32 12380
  %135 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %tobool76.not.i, label %do.body86.i, label %do.body78.i

do.body78.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = or i32 %135, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %137 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i190.i = getelementptr i8, ptr %138, i32 12380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190.i, i32 %136) #9, !srcloc !35
  br label %rs780_voltage_scaling_init.exit

do.body86.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = and i32 %135, -3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %140 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %141, i32 12380
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 %139) #9, !srcloc !35
  br label %rs780_voltage_scaling_init.exit

rs780_voltage_scaling_init.exit:                  ; preds = %do.body86.i, %do.body78.i
  %142 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %143, i32 12288
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %145 = or i32 %144, 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %146 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %147, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %145) #9, !srcloc !35
  %min_voltage94.i = getelementptr inbounds %struct.igp_power_info, ptr %90, i32 0, i32 7
  %148 = ptrtoint ptr %min_voltage94.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %min_voltage94.i, align 2
  %conv95.i = zext i16 %149 to i32
  %150 = ptrtoint ptr %max_voltage55.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %max_voltage55.i, align 4
  %conv98.i = zext i16 %151 to i32
  %shl99.i = shl nuw nsw i32 %conv98.i, 12
  %or100.i = or i32 %shl99.i, %conv95.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %152 = call i32 @llvm.bswap.i32(i32 %or100.i) #9
  %153 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i196.i = getelementptr i8, ptr %154, i32 12384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i196.i, i32 %152) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %155 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i198.i = getelementptr i8, ptr %156, i32 12388
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198.i, i32 18874368) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %157 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i200.i = getelementptr i8, ptr %158, i32 12392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i, i32 54525952) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %159 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i202.i = getelementptr i8, ptr %160, i32 12396
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 18874368) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %161 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %162, i32 12400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 54525952) #9, !srcloc !35
  %163 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %164, i32 12428
  %165 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %166 = and i32 %165, 15794175
  %167 = call i32 @llvm.bswap.i32(i32 %166) #9
  %or108.i = or i32 %167, %fv_throt_pwm_fb_div_range.sroa.0.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %168 = call i32 @llvm.bswap.i32(i32 %or108.i) #9
  %169 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i208.i = getelementptr i8, ptr %170, i32 12428
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 %168) #9, !srcloc !35
  %or115.i = or i32 %fv_throt_pwm_fb_div_range.sroa.12.0.i, %fv_throt_pwm_fb_div_range.sroa.7.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %171 = call i32 @llvm.bswap.i32(i32 %or115.i) #9
  %172 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %173, i32 12432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 %171) #9, !srcloc !35
  %shl119.i = shl nuw nsw i32 %fv_throt_pwm_range.sroa.10.0.i, 12
  %or120.i = or i32 %shl119.i, %fv_throt_pwm_range.sroa.5.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %174 = call i32 @llvm.bswap.i32(i32 %or120.i) #9
  %175 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i212.i = getelementptr i8, ptr %176, i32 12436
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 %174) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %177 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %178, i32 12440
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 %174) #9, !srcloc !35
  br label %if.end8

if.end8:                                          ; preds = %rs780_voltage_scaling_init.exit, %if.end5.if.end8_crit_edge
  %179 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %180, i32 12288
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %182 = or i32 %181, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %183 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i43 = getelementptr i8, ptr %184, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i43, i32 %182) #9, !srcloc !35
  %185 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %186, i32 12360
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %188 = and i32 %187, -15793936
  %189 = or i32 %188, 28930
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %190 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i47 = getelementptr i8, ptr %191, i32 12360
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i47, i32 %189) #9, !srcloc !35
  %192 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i48 = getelementptr i8, ptr %193, i32 12288
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i48) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %195 = and i32 %194, 16777464
  %196 = or i32 %195, 503316480
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %197 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i49 = getelementptr i8, ptr %198, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i49, i32 %196) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %199 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %200, i32 12312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i51, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %201 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %202, i32 12316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %203 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %204, i32 12320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %205 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i52 = getelementptr i8, ptr %206, i32 12324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i52, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %207 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i53 = getelementptr i8, ptr %208, i32 12328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i53, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i54 = getelementptr i8, ptr %210, i32 12332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i54, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %211 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %212, i32 12336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %213 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %214, i32 12340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %215 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %216, i32 12344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 1073742084) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %217 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %218, i32 12348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 1073742084) #9, !srcloc !35
  call fastcc void @rs780_program_at(ptr noundef %rdev)
  %219 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %220, i32 12288
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i56) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %222 = and i32 %221, -97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %223 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i5.i57 = getelementptr i8, ptr %224, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i57, i32 %222) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %225 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i59 = getelementptr i8, ptr %226, i32 12364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i59, i32 17825792) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %227 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %228, i32 12368
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 35651584) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %229 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i11.i60 = getelementptr i8, ptr %230, i32 12372
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i60, i32 20971520) #9, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %231 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i13.i61 = getelementptr i8, ptr %232, i32 12376
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i61, i32 268435968) #9, !srcloc !35
  %233 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i62 = getelementptr i8, ptr %234, i32 12356
  %235 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i62) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %236 = and i32 %235, 15794175
  %237 = or i32 %236, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %238 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i17.i63 = getelementptr i8, ptr %239, i32 12356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i63, i32 %237) #9, !srcloc !35
  %gfx_clock_gating = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 3
  %240 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %gfx_clock_gating, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool9.not = icmp eq i8 %241, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @r600_gfx_clockgating_enable(ptr noundef %rdev, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %rs780_initialize_dpm_parameters.exit.cleanup_crit_edge, %rs780_get_pm_mode_parameters.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rs780_get_pm_mode_parameters.exit.cleanup_crit_edge ], [ %call1.i.i, %rs780_initialize_dpm_parameters.exit.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_dynamicpm_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs780_program_at(ptr nocapture noundef readonly %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %refresh_rate = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refresh_rate, align 4
  %div = sdiv i32 30000000, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %div) #9
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !35
  %7 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %refresh_rate, align 4
  %div2 = sdiv i32 5000000, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %div2) #9
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 12296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %9) #9, !srcloc !35
  %12 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refresh_rate, align 4
  %div4 = sdiv i32 10000000, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %div4) #9
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %16, i32 12300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %14) #9, !srcloc !35
  %17 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refresh_rate, align 4
  %div6 = sdiv i32 30000000, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %div6) #9
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %21, i32 12304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %19) #9, !srcloc !35
  %22 = ptrtoint ptr %refresh_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refresh_rate, align 4
  %div8 = sdiv i32 50000000, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %div8) #9
  %25 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %26, i32 12308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %24) #9, !srcloc !35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_gfx_clockgating_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs780_dpm_disable(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  tail call void @r600_dynamicpm_enable(ptr noundef %rdev, i1 noundef zeroext false) #9
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 12288
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %5 = and i32 %4, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %7, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %5) #9, !srcloc !35
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i17 = getelementptr i8, ptr %9, i32 12288
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %11 = and i32 %10, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i18 = getelementptr i8, ptr %13, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i18, i32 %11) #9, !srcloc !35
  %gfx_clock_gating = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gfx_clock_gating, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @r600_gfx_clockgating_enable(ptr noundef %rdev, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %irq, align 8, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not = icmp eq i8 %17, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %int_thermal_type = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 44
  %18 = ptrtoint ptr %int_thermal_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_thermal_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp = icmp eq i32 %19, 3
  br i1 %cmp, label %if.then2, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dpm_thermal = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55, i32 9
  %20 = ptrtoint ptr %dpm_thermal to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %dpm_thermal, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %21 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %asic, align 8
  %irq4 = getelementptr inbounds %struct.radeon_asic, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq4, align 4
  %call5 = tail call i32 %24(ptr noundef %rdev) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dynamicpm_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs780_dpm_set_power_state(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %min_dividers.i = alloca %struct.atom_clock_dividers, align 4
  %max_dividers.i = alloca %struct.atom_clock_dividers, align 4
  %current_max_dividers.i = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %crtc_id.i = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %crtc_id.i, align 4
  %refresh_rate.i = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 60, ptr %refresh_rate.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %8 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26.i = icmp sgt i32 %9, 0
  br i1 %cmp26.i, label %entry.for.body.i_crit_edge, label %entry.rs780_get_pm_mode_parameters.exit_crit_edge

entry.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %i.027.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 8, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool1.not.i = icmp eq i8 %13, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %crtc_id2.i = getelementptr inbounds %struct.radeon_crtc, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %crtc_id2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_id2.i, align 8
  %16 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %crtc_id.i, align 4
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12
  %htotal.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12, i32 4
  %17 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %htotal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool4.not.i = icmp eq i16 %18, 0
  br i1 %tobool4.not.i, label %if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %land.lhs.true5.i

if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

land.lhs.true5.i:                                 ; preds = %if.then.i
  %vtotal.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12, i32 9
  %19 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vtotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool8.not.i = icmp eq i16 %20, 0
  br i1 %tobool8.not.i, label %land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %if.then9.i

land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

if.then9.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode.i) #9
  %21 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call11.i, ptr %refresh_rate.i, align 4
  br label %rs780_get_pm_mode_parameters.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

rs780_get_pm_mode_parameters.exit:                ; preds = %for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge, %if.then9.i, %land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge, %if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge, %entry.rs780_get_pm_mode_parameters.exit_crit_edge
  %ps_priv.i.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %22 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps_priv.i.i, align 4
  %ps_priv.i20.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 9
  %24 = ptrtoint ptr %ps_priv.i20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps_priv.i20.i, align 4
  %vclk.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vclk.i, align 4
  %vclk2.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i = icmp eq i32 %27, %29
  br i1 %cmp.i, label %land.lhs.true.i37, label %rs780_get_pm_mode_parameters.exit.if.end.i_crit_edge

rs780_get_pm_mode_parameters.exit.if.end.i_crit_edge: ; preds = %rs780_get_pm_mode_parameters.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i37:                                ; preds = %rs780_get_pm_mode_parameters.exit
  %dclk.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dclk.i, align 4
  %dclk3.i = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %dclk3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dclk3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp4.i = icmp eq i32 %31, %33
  br i1 %cmp4.i, label %land.lhs.true.i37.rs780_set_uvd_clock_before_set_eng_clock.exit_crit_edge, label %land.lhs.true.i37.if.end.i_crit_edge

land.lhs.true.i37.if.end.i_crit_edge:             ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i37.rs780_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_uvd_clock_before_set_eng_clock.exit

if.end.i:                                         ; preds = %land.lhs.true.i37.if.end.i_crit_edge, %rs780_get_pm_mode_parameters.exit.if.end.i_crit_edge
  %sclk_high.i = getelementptr inbounds %struct.igp_ps, ptr %23, i32 0, i32 3
  %34 = ptrtoint ptr %sclk_high.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sclk_high.i, align 4
  %sclk_high5.i = getelementptr inbounds %struct.igp_ps, ptr %25, i32 0, i32 3
  %36 = ptrtoint ptr %sclk_high5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sclk_high5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp6.not.i = icmp ult i32 %35, %37
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end.i.rs780_set_uvd_clock_before_set_eng_clock.exit_crit_edge

if.end.i.rs780_set_uvd_clock_before_set_eng_clock.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_uvd_clock_before_set_eng_clock.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %38 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %asic.i, align 8
  %set_uvd_clocks.i = getelementptr inbounds %struct.radeon_asic, ptr %39, i32 0, i32 20, i32 12
  %40 = ptrtoint ptr %set_uvd_clocks.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_uvd_clocks.i, align 4
  %dclk10.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %dclk10.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dclk10.i, align 4
  %call11.i38 = tail call i32 %41(ptr noundef %rdev, i32 noundef %27, i32 noundef %43) #9
  br label %rs780_set_uvd_clock_before_set_eng_clock.exit

rs780_set_uvd_clock_before_set_eng_clock.exit:    ; preds = %if.end8.i, %if.end.i.rs780_set_uvd_clock_before_set_eng_clock.exit_crit_edge, %land.lhs.true.i37.rs780_set_uvd_clock_before_set_eng_clock.exit_crit_edge
  %voltage_control = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %voltage_control, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not = icmp eq i8 %45, 0
  br i1 %tobool.not, label %rs780_set_uvd_clock_before_set_eng_clock.exit.if.end_crit_edge, label %if.then

rs780_set_uvd_clock_before_set_eng_clock.exit.if.end_crit_edge: ; preds = %rs780_set_uvd_clock_before_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rs780_set_uvd_clock_before_set_eng_clock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %max_voltage = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %max_voltage, align 4
  tail call fastcc void @rs780_force_voltage(ptr noundef %rdev, i16 noundef zeroext %47)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %rs780_set_uvd_clock_before_set_eng_clock.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %min_dividers.i) #9
  %53 = call ptr @memset(ptr %min_dividers.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %max_dividers.i) #9
  %54 = call ptr @memset(ptr %max_dividers.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %current_max_dividers.i) #9
  %55 = call ptr @memset(ptr %current_max_dividers.i, i32 255, i32 32)
  %56 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ps_priv.i.i, align 4
  %58 = ptrtoint ptr %ps_priv.i20.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ps_priv.i20.i, align 4
  %sclk_high.i40 = getelementptr inbounds %struct.igp_ps, ptr %57, i32 0, i32 3
  %60 = ptrtoint ptr %sclk_high.i40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sclk_high.i40, align 4
  %sclk_high2.i = getelementptr inbounds %struct.igp_ps, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %sclk_high2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sclk_high2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i41 = icmp eq i32 %61, %63
  br i1 %cmp.i41, label %land.lhs.true.i43, label %if.end.if.end.i45_crit_edge

if.end.if.end.i45_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i45

land.lhs.true.i43:                                ; preds = %if.end
  %sclk_low.i = getelementptr inbounds %struct.igp_ps, ptr %57, i32 0, i32 2
  %64 = ptrtoint ptr %sclk_low.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sclk_low.i, align 4
  %sclk_low3.i = getelementptr inbounds %struct.igp_ps, ptr %59, i32 0, i32 2
  %66 = ptrtoint ptr %sclk_low3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %sclk_low3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp4.i42 = icmp eq i32 %65, %67
  br i1 %cmp4.i42, label %land.lhs.true.i43.if.end7_crit_edge, label %land.lhs.true.i43.if.end.i45_crit_edge

land.lhs.true.i43.if.end.i45_crit_edge:           ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i45

land.lhs.true.i43.if.end7_crit_edge:              ; preds = %land.lhs.true.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i45:                                       ; preds = %land.lhs.true.i43.if.end.i45_crit_edge, %if.end.if.end.i45_crit_edge
  %sclk_low5.i = getelementptr inbounds %struct.igp_ps, ptr %57, i32 0, i32 2
  %68 = ptrtoint ptr %sclk_low5.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sclk_low5.i, align 4
  %call6.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %69, i1 noundef zeroext false, ptr noundef nonnull %min_dividers.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i44 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i44, label %if.end8.i46, label %if.end.i45.rs780_set_engine_clock_scaling.exit.thread_crit_edge

if.end.i45.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

if.end8.i46:                                      ; preds = %if.end.i45
  %70 = ptrtoint ptr %sclk_high.i40 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sclk_high.i40, align 4
  %call10.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %71, i1 noundef zeroext false, ptr noundef nonnull %max_dividers.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i46.rs780_set_engine_clock_scaling.exit.thread_crit_edge

if.end8.i46.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %if.end8.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

if.end13.i:                                       ; preds = %if.end8.i46
  %72 = ptrtoint ptr %sclk_high2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sclk_high2.i, align 4
  %call15.i = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %73, i1 noundef zeroext false, ptr noundef nonnull %current_max_dividers.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge

if.end13.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  %ref_div.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %min_dividers.i, i32 0, i32 2
  %74 = ptrtoint ptr %ref_div.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ref_div.i, align 4
  %ref_div19.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %max_dividers.i, i32 0, i32 2
  %76 = ptrtoint ptr %ref_div19.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ref_div19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp20.not.i = icmp eq i32 %75, %77
  br i1 %cmp20.not.i, label %lor.lhs.false.i, label %if.end18.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge

if.end18.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end18.i
  %78 = ptrtoint ptr %min_dividers.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %min_dividers.i, align 4
  %80 = ptrtoint ptr %max_dividers.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_dividers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp22.not.i = icmp eq i32 %79, %81
  br i1 %cmp22.not.i, label %lor.lhs.false23.i, label %lor.lhs.false.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge

lor.lhs.false.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

lor.lhs.false23.i:                                ; preds = %lor.lhs.false.i
  %ref_div25.i = getelementptr inbounds %struct.atom_clock_dividers, ptr %current_max_dividers.i, i32 0, i32 2
  %82 = ptrtoint ptr %ref_div25.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ref_div25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %83)
  %cmp26.not.i = icmp eq i32 %75, %83
  br i1 %cmp26.not.i, label %lor.lhs.false27.i, label %lor.lhs.false23.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge

lor.lhs.false23.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

lor.lhs.false27.i:                                ; preds = %lor.lhs.false23.i
  %84 = ptrtoint ptr %current_max_dividers.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %current_max_dividers.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %85)
  %cmp30.not.i = icmp eq i32 %79, %85
  br i1 %cmp30.not.i, label %if.end32.i, label %lor.lhs.false27.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge

lor.lhs.false27.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge: ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_scaling.exit.thread

if.end32.i:                                       ; preds = %lor.lhs.false27.i
  %86 = getelementptr inbounds %struct.atom_clock_dividers, ptr %max_dividers.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call fastcc void @rs780_force_fbdiv(ptr noundef %rdev, i32 noundef %88) #9
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %86, align 4
  %91 = getelementptr inbounds %struct.atom_clock_dividers, ptr %min_dividers.i, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %93)
  %cmp33.i = icmp ugt i32 %90, %93
  br i1 %cmp33.i, label %do.body.i, label %if.end32.i.if.end7_crit_edge

if.end32.i.if.end7_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %94 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %95, i32 12352
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %97 = shl i32 %96, 24
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %91, align 4
  %100 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %86, align 4
  %shl36.i = shl i32 %101, 12
  %or.i = or i32 %shl36.i, %99
  %and37.i = and i32 %or.i, 16777215
  %or38.i = or i32 %and37.i, %97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %102 = call i32 @llvm.bswap.i32(i32 %or38.i) #9
  %103 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %104, i32 12352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 %102) #9, !srcloc !35
  %105 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %106, i32 12356
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #9, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %108 = and i32 %107, -2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %109 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %110, i32 12356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %108) #9, !srcloc !35
  br label %if.end7

rs780_set_engine_clock_scaling.exit.thread:       ; preds = %lor.lhs.false27.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge, %lor.lhs.false23.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge, %lor.lhs.false.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge, %if.end18.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge, %if.end13.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge, %if.end8.i46.rs780_set_engine_clock_scaling.exit.thread_crit_edge, %if.end.i45.rs780_set_engine_clock_scaling.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end18.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge ], [ -22, %lor.lhs.false.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge ], [ -22, %lor.lhs.false23.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge ], [ -22, %lor.lhs.false27.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge ], [ %call15.i, %if.end13.i.rs780_set_engine_clock_scaling.exit.thread_crit_edge ], [ %call10.i, %if.end8.i46.rs780_set_engine_clock_scaling.exit.thread_crit_edge ], [ %call6.i, %if.end.i45.rs780_set_engine_clock_scaling.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %current_max_dividers.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %max_dividers.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min_dividers.i) #9
  br label %cleanup

if.end7:                                          ; preds = %do.body.i, %if.end32.i.if.end7_crit_edge, %land.lhs.true.i43.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %current_max_dividers.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %max_dividers.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min_dividers.i) #9
  %111 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ps_priv.i.i, align 4
  %113 = ptrtoint ptr %ps_priv.i20.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ps_priv.i20.i, align 4
  %115 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %priv.i, align 4
  %sclk_high.i49 = getelementptr inbounds %struct.igp_ps, ptr %112, i32 0, i32 3
  %117 = ptrtoint ptr %sclk_high.i49 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sclk_high.i49, align 4
  %sclk_high3.i = getelementptr inbounds %struct.igp_ps, ptr %114, i32 0, i32 3
  %119 = ptrtoint ptr %sclk_high3.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sclk_high3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp.i50 = icmp eq i32 %118, %120
  br i1 %cmp.i50, label %land.lhs.true.i52, label %if.end7.if.end.i56_crit_edge

if.end7.if.end.i56_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i56

land.lhs.true.i52:                                ; preds = %if.end7
  %sclk_low.i51 = getelementptr inbounds %struct.igp_ps, ptr %112, i32 0, i32 2
  %121 = ptrtoint ptr %sclk_low.i51 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sclk_low.i51, align 4
  %sclk_low4.i = getelementptr inbounds %struct.igp_ps, ptr %114, i32 0, i32 2
  %123 = ptrtoint ptr %sclk_low4.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sclk_low4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %124)
  %cmp5.i = icmp eq i32 %122, %124
  br i1 %cmp5.i, label %land.lhs.true.i52.rs780_set_engine_clock_spc.exit_crit_edge, label %land.lhs.true.i52.if.end.i56_crit_edge

land.lhs.true.i52.if.end.i56_crit_edge:           ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i56

land.lhs.true.i52.rs780_set_engine_clock_spc.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_set_engine_clock_spc.exit

if.end.i56:                                       ; preds = %land.lhs.true.i52.if.end.i56_crit_edge, %if.end7.if.end.i56_crit_edge
  %crtc_id.i53 = getelementptr inbounds %struct.igp_power_info, ptr %116, i32 0, i32 12
  %125 = ptrtoint ptr %crtc_id.i53 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %crtc_id.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp6.i = icmp eq i32 %126, 0
  %rmmio.i.i54 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %127 = ptrtoint ptr %rmmio.i.i54 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rmmio.i.i54, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %128, i32 12416
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp6.i, label %do.body.i57, label %do.body9.i

do.body.i57:                                      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  %130 = and i32 %129, -131073
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %131 = ptrtoint ptr %rmmio.i.i54 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i.i54, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %132, i32 12416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %130) #9, !srcloc !35
  br label %rs780_set_engine_clock_spc.exit

do.body9.i:                                       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  %133 = or i32 %129, 131072
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %134 = ptrtoint ptr %rmmio.i.i54 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio.i.i54, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %135, i32 12416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 %133) #9, !srcloc !35
  br label %rs780_set_engine_clock_spc.exit

rs780_set_engine_clock_spc.exit:                  ; preds = %do.body9.i, %do.body.i57, %land.lhs.true.i52.rs780_set_engine_clock_spc.exit_crit_edge
  %136 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ps_priv.i.i, align 4
  %138 = ptrtoint ptr %ps_priv.i20.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ps_priv.i20.i, align 4
  %sclk_high.i59 = getelementptr inbounds %struct.igp_ps, ptr %137, i32 0, i32 3
  %140 = ptrtoint ptr %sclk_high.i59 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sclk_high.i59, align 4
  %sclk_high2.i60 = getelementptr inbounds %struct.igp_ps, ptr %139, i32 0, i32 3
  %142 = ptrtoint ptr %sclk_high2.i60 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %sclk_high2.i60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %143)
  %cmp.i61 = icmp eq i32 %141, %143
  br i1 %cmp.i61, label %land.lhs.true.i65, label %rs780_set_engine_clock_spc.exit.if.end.i66_crit_edge

rs780_set_engine_clock_spc.exit.if.end.i66_crit_edge: ; preds = %rs780_set_engine_clock_spc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i66

land.lhs.true.i65:                                ; preds = %rs780_set_engine_clock_spc.exit
  %sclk_low.i62 = getelementptr inbounds %struct.igp_ps, ptr %137, i32 0, i32 2
  %144 = ptrtoint ptr %sclk_low.i62 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sclk_low.i62, align 4
  %sclk_low3.i63 = getelementptr inbounds %struct.igp_ps, ptr %139, i32 0, i32 2
  %146 = ptrtoint ptr %sclk_low3.i63 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %sclk_low3.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %147)
  %cmp4.i64 = icmp eq i32 %145, %147
  br i1 %cmp4.i64, label %land.lhs.true.i65.rs780_activate_engine_clk_scaling.exit_crit_edge, label %land.lhs.true.i65.if.end.i66_crit_edge

land.lhs.true.i65.if.end.i66_crit_edge:           ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i66

land.lhs.true.i65.rs780_activate_engine_clk_scaling.exit_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_activate_engine_clk_scaling.exit

if.end.i66:                                       ; preds = %land.lhs.true.i65.if.end.i66_crit_edge, %rs780_set_engine_clock_spc.exit.if.end.i66_crit_edge
  %sclk_low6.i = getelementptr inbounds %struct.igp_ps, ptr %137, i32 0, i32 2
  %148 = ptrtoint ptr %sclk_low6.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %sclk_low6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %149)
  %cmp7.i = icmp eq i32 %141, %149
  br i1 %cmp7.i, label %if.end.i66.rs780_activate_engine_clk_scaling.exit_crit_edge, label %if.end9.i

if.end.i66.rs780_activate_engine_clk_scaling.exit_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_activate_engine_clk_scaling.exit

if.end9.i:                                        ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %150 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %151, i32 12288
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %153 = or i32 %152, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @arm_heavy_mb() #9
  %154 = ptrtoint ptr %rmmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %155, i32 12288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %153) #9, !srcloc !35
  br label %rs780_activate_engine_clk_scaling.exit

rs780_activate_engine_clk_scaling.exit:           ; preds = %if.end9.i, %if.end.i66.rs780_activate_engine_clk_scaling.exit_crit_edge, %land.lhs.true.i65.rs780_activate_engine_clk_scaling.exit_crit_edge
  %156 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %voltage_control, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool9.not = icmp eq i8 %157, 0
  br i1 %tobool9.not, label %rs780_activate_engine_clk_scaling.exit.if.end11_crit_edge, label %if.then10

rs780_activate_engine_clk_scaling.exit.if.end11_crit_edge: ; preds = %rs780_activate_engine_clk_scaling.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %rs780_activate_engine_clk_scaling.exit
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @rs780_enable_voltage_scaling(ptr noundef %rdev, ptr noundef %3)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %rs780_activate_engine_clk_scaling.exit.if.end11_crit_edge
  %158 = ptrtoint ptr %ps_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ps_priv.i.i, align 4
  %160 = ptrtoint ptr %ps_priv.i20.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ps_priv.i20.i, align 4
  %162 = ptrtoint ptr %vclk.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %vclk.i, align 4
  %164 = ptrtoint ptr %vclk2.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %vclk2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %165)
  %cmp.i71 = icmp eq i32 %163, %165
  br i1 %cmp.i71, label %land.lhs.true.i75, label %if.end11.if.end.i79_crit_edge

if.end11.if.end.i79_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

land.lhs.true.i75:                                ; preds = %if.end11
  %dclk.i72 = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %166 = ptrtoint ptr %dclk.i72 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dclk.i72, align 4
  %dclk3.i73 = getelementptr inbounds %struct.radeon_ps, ptr %5, i32 0, i32 4
  %168 = ptrtoint ptr %dclk3.i73 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %dclk3.i73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %169)
  %cmp4.i74 = icmp eq i32 %167, %169
  br i1 %cmp4.i74, label %land.lhs.true.i75.cleanup_crit_edge, label %land.lhs.true.i75.if.end.i79_crit_edge

land.lhs.true.i75.if.end.i79_crit_edge:           ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i79

land.lhs.true.i75.cleanup_crit_edge:              ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i79:                                       ; preds = %land.lhs.true.i75.if.end.i79_crit_edge, %if.end11.if.end.i79_crit_edge
  %sclk_high.i76 = getelementptr inbounds %struct.igp_ps, ptr %159, i32 0, i32 3
  %170 = ptrtoint ptr %sclk_high.i76 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sclk_high.i76, align 4
  %sclk_high5.i77 = getelementptr inbounds %struct.igp_ps, ptr %161, i32 0, i32 3
  %172 = ptrtoint ptr %sclk_high5.i77 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sclk_high5.i77, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %173)
  %cmp6.i78 = icmp ult i32 %171, %173
  br i1 %cmp6.i78, label %if.end.i79.cleanup_crit_edge, label %if.end8.i84

if.end.i79.cleanup_crit_edge:                     ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i84:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #11
  %asic.i80 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %174 = ptrtoint ptr %asic.i80 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %asic.i80, align 8
  %set_uvd_clocks.i81 = getelementptr inbounds %struct.radeon_asic, ptr %175, i32 0, i32 20, i32 12
  %176 = ptrtoint ptr %set_uvd_clocks.i81 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %set_uvd_clocks.i81, align 4
  %dclk10.i82 = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 4
  %178 = ptrtoint ptr %dclk10.i82 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dclk10.i82, align 4
  %call11.i83 = call i32 %177(ptr noundef %rdev, i32 noundef %163, i32 noundef %179) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i84, %if.end.i79.cleanup_crit_edge, %land.lhs.true.i75.cleanup_crit_edge, %rs780_set_engine_clock_scaling.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.ph, %rs780_set_engine_clock_scaling.exit.thread ], [ 0, %land.lhs.true.i75.cleanup_crit_edge ], [ 0, %if.end.i79.cleanup_crit_edge ], [ 0, %if.end8.i84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs780_force_voltage(ptr nocapture noundef readonly %rdev, i16 noundef zeroext %voltage) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %max_voltage = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12480
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %13, i32 12480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %11) #9, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #9
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %16, i32 12380
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %18 = and i32 %17, 15794175
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = and i16 %voltage, 4095
  %and7 = zext i16 %20 to i32
  %or8 = or i32 %19, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or8) #9
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %23, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %21) #9, !srcloc !35
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %25, i32 12380
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %27 = or i32 %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %29, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 %27) #9, !srcloc !35
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %31, i32 12428
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %33 = and i32 %32, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %35, i32 12428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %33) #9, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #9
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %38, i32 12480
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %40 = and i32 %39, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %42, i32 12480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %40) #9, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %do.body, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs780_enable_voltage_scaling(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %new_ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %new_ps, i32 0, i32 9
  %0 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps_priv.i, align 4
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #9
  %max_voltage = getelementptr inbounds %struct.igp_ps, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_voltage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %if.end.thread

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 4
  %max_voltage.i = getelementptr inbounds %struct.igp_power_info, ptr %10, i32 0, i32 6
  br label %rs780_get_voltage_for_vddc_level.exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cond = icmp eq i32 %6, 1
  %max_voltage6.i = getelementptr inbounds %struct.igp_power_info, ptr %12, i32 0, i32 6
  %min_voltage.i = getelementptr inbounds %struct.igp_power_info, ptr %12, i32 0, i32 7
  %retval.0.in.in.i.ph = select i1 %cond, ptr %min_voltage.i, ptr %max_voltage6.i
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %1, align 4
  br label %rs780_get_voltage_for_vddc_level.exit

rs780_get_voltage_for_vddc_level.exit:            ; preds = %if.end, %if.end.thread
  %14 = phi i32 [ %.pr, %if.end ], [ %8, %if.end.thread ]
  %15 = phi ptr [ %12, %if.end ], [ %10, %if.end.thread ]
  %retval.0.in.in.i = phi ptr [ %retval.0.in.in.i.ph, %if.end ], [ %max_voltage.i, %if.end.thread ]
  %16 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %retval.0.in.i = load i16, ptr %retval.0.in.in.i, align 2
  %17 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %14, label %if.else5.i97 [
    i32 2, label %if.then.i93
    i32 1, label %if.then3.i95
  ]

if.then.i93:                                      ; preds = %rs780_get_voltage_for_vddc_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %max_voltage.i92 = getelementptr inbounds %struct.igp_power_info, ptr %15, i32 0, i32 6
  br label %rs780_get_voltage_for_vddc_level.exit101

if.then3.i95:                                     ; preds = %rs780_get_voltage_for_vddc_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %min_voltage.i94 = getelementptr inbounds %struct.igp_power_info, ptr %15, i32 0, i32 7
  br label %rs780_get_voltage_for_vddc_level.exit101

if.else5.i97:                                     ; preds = %rs780_get_voltage_for_vddc_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %max_voltage6.i96 = getelementptr inbounds %struct.igp_power_info, ptr %15, i32 0, i32 6
  br label %rs780_get_voltage_for_vddc_level.exit101

rs780_get_voltage_for_vddc_level.exit101:         ; preds = %if.else5.i97, %if.then3.i95, %if.then.i93
  %retval.0.in.in.i98 = phi ptr [ %max_voltage.i92, %if.then.i93 ], [ %min_voltage.i94, %if.then3.i95 ], [ %max_voltage6.i96, %if.else5.i97 ]
  %18 = ptrtoint ptr %retval.0.in.in.i98 to i32
  call void @__asan_load2_noabort(i32 %18)
  %retval.0.in.i99 = load i16, ptr %retval.0.in.in.i98, align 2
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12480
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %22 = or i32 %21, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %24, i32 12480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %22) #9, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #9
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.in.i, i16 %retval.0.in.i99)
  %cmp8 = icmp ugt i16 %retval.0.in.i, %retval.0.in.i99
  br i1 %cmp8, label %do.body10, label %if.else

do.body10:                                        ; preds = %rs780_get_voltage_for_vddc_level.exit101
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %27, i32 12428
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %29 = or i32 %28, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %31, i32 12428
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %29) #9, !srcloc !35
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %33, i32 12380
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %35 = and i32 %34, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %37, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %35) #9, !srcloc !35
  br label %do.body48

if.else:                                          ; preds = %rs780_get_voltage_for_vddc_level.exit101
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.in.i, i16 %retval.0.in.i99)
  %cmp24 = icmp eq i16 %retval.0.in.i, %retval.0.in.i99
  br i1 %cmp24, label %if.then25, label %if.else.do.body48_crit_edge

if.else.do.body48_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

if.then25:                                        ; preds = %if.else
  %max_voltage26 = getelementptr inbounds %struct.igp_power_info, ptr %3, i32 0, i32 6
  %38 = ptrtoint ptr %max_voltage26 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max_voltage26, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %retval.0.in.i, i16 %39)
  %cmp27.not = icmp eq i16 %retval.0.in.i, %39
  br i1 %cmp27.not, label %if.then25.do.body48_crit_edge, label %do.body30

if.then25.do.body48_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

do.body30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %41, i32 12380
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %43 = and i32 %42, 15794175
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = and i16 %retval.0.in.i, 4095
  %and34 = zext i16 %45 to i32
  %or35 = or i32 %44, %and34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %or35) #9
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %48, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %46) #9, !srcloc !35
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %50, i32 12380
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %52 = or i32 %51, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %54, i32 12380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %52) #9, !srcloc !35
  br label %do.body48

do.body48:                                        ; preds = %do.body30, %if.then25.do.body48_crit_edge, %if.else.do.body48_crit_edge, %do.body10
  %55 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %56, i32 12480
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i121) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %58 = and i32 %57, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %59 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %60, i32 12480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %58) #9, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %do.body48, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rs780_dpm_setup_asic(ptr nocapture noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs780_dpm_display_configuration_changed(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %crtc_id.i = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %crtc_id.i, align 4
  %refresh_rate.i = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 60, ptr %refresh_rate.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 91
  %4 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i, label %entry.for.body.i_crit_edge, label %entry.rs780_get_pm_mode_parameters.exit_crit_edge

entry.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %i.027.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled.i, align 8, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %crtc_id2.i = getelementptr inbounds %struct.radeon_crtc, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %crtc_id2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_id2.i, align 8
  %12 = ptrtoint ptr %crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %crtc_id.i, align 4
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12
  %htotal.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 4
  %13 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %htotal.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool4.not.i = icmp eq i16 %14, 0
  br i1 %tobool4.not.i, label %if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %land.lhs.true5.i

if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

land.lhs.true5.i:                                 ; preds = %if.then.i
  %vtotal.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 9
  %15 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vtotal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool8.not.i = icmp eq i16 %16, 0
  br i1 %tobool8.not.i, label %land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %if.then9.i

land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

if.then9.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode.i) #9
  %17 = ptrtoint ptr %refresh_rate.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call11.i, ptr %refresh_rate.i, align 4
  br label %rs780_get_pm_mode_parameters.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_get_pm_mode_parameters.exit

rs780_get_pm_mode_parameters.exit:                ; preds = %for.inc.i.rs780_get_pm_mode_parameters.exit_crit_edge, %if.then9.i, %land.lhs.true5.i.rs780_get_pm_mode_parameters.exit_crit_edge, %if.then.i.rs780_get_pm_mode_parameters.exit_crit_edge, %entry.rs780_get_pm_mode_parameters.exit_crit_edge
  tail call fastcc void @rs780_program_at(ptr noundef %rdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs780_dpm_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset.i = alloca i16, align 2
  %frev.i = alloca i8, align 1
  %crev.i = alloca i8, align 1
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #9
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #9
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #9
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %priv, align 4
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
  %5 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data_offset.i, align 2, !annotation !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev.i) #9
  %6 = ptrtoint ptr %frev.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %frev.i, align 1, !annotation !36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev.i) #9
  %7 = ptrtoint ptr %crev.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %crev.i, align 1, !annotation !36
  %8 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mode_info1.i, align 4
  %call.i = call zeroext i1 @atom_parse_data_header(ptr noundef %9, i32 noundef 15, ptr noundef null, ptr noundef nonnull %frev.i, ptr noundef nonnull %crev.i, ptr noundef nonnull %data_offset.i) #9
  br i1 %call.i, label %if.end.i, label %if.end3.rs780_parse_power_table.exit.thread_crit_edge

if.end3.rs780_parse_power_table.exit.thread_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_parse_power_table.exit.thread

if.end.i:                                         ; preds = %if.end3
  %10 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info1.i, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios.i, align 4
  %14 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_offset.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv.i
  %ucNumStates.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucNumStates.i, align 1
  %conv3.i = zext i8 %17 to i32
  %18 = mul nuw nsw i32 %conv3.i, 40
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #13
  %dpm.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52
  %19 = ptrtoint ptr %dpm.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i.i, ptr %dpm.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.rs780_parse_power_table.exit.thread_crit_edge, label %for.cond.preheader.i

if.end.i.rs780_parse_power_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_parse_power_table.exit.thread

for.cond.preheader.i:                             ; preds = %if.end.i
  %20 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucNumStates.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp127.not.i = icmp eq i8 %21, 0
  br i1 %cmp127.not.i, label %for.cond.preheader.i.if.end7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %usStateArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 6
  %ucStateEntrySize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 3
  %usNonClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 8
  %ucNonClockSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 5
  %usClockInfoArrayOffset.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 7
  %ucClockInfoSize.i = getelementptr inbounds %struct._ATOM_PPLIB_POWERPLAYTABLE, ptr %add.ptr.i, i32 0, i32 4
  %boot_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 4
  %uvd_ps.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 5
  %default_sclk.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mode_info1.i, align 4
  %bios15.i = getelementptr inbounds %struct.atom_context, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bios15.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bios15.i, align 4
  %26 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data_offset.i, align 2
  %conv16.i = zext i16 %27 to i32
  %add.ptr17.i = getelementptr i8, ptr %25, i32 %conv16.i
  %28 = ptrtoint ptr %usStateArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usStateArrayOffset.i, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #9
  %conv18.i = zext i16 %30 to i32
  %add.ptr19.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv18.i
  %31 = ptrtoint ptr %ucStateEntrySize.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucStateEntrySize.i, align 1
  %conv20.i = zext i8 %32 to i32
  %mul.i = mul i32 %i.0128.i, %conv20.i
  %add.ptr21.i = getelementptr i8, ptr %add.ptr19.i, i32 %mul.i
  %33 = ptrtoint ptr %usNonClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %usNonClockInfoArrayOffset.i, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34) #9
  %conv26.i = zext i16 %35 to i32
  %add.ptr27.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv26.i
  %36 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr21.i, align 1
  %conv28.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %ucNonClockSize.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ucNonClockSize.i, align 1
  %conv29.i = zext i8 %39 to i32
  %mul30.i = mul nuw nsw i32 %conv29.i, %conv28.i
  %add.ptr31.i = getelementptr i8, ptr %add.ptr27.i, i32 %mul30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %tobool34.not.i = icmp eq i8 %32, 1
  br i1 %tobool34.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then35.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then35.i:                                      ; preds = %for.body.i
  %40 = ptrtoint ptr %usClockInfoArrayOffset.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %usClockInfoArrayOffset.i, align 1
  %ucClockStateIndices.i = getelementptr inbounds %struct._ATOM_PPLIB_STATE, ptr %add.ptr21.i, i32 0, i32 1
  %42 = ptrtoint ptr %ucClockStateIndices.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ucClockStateIndices.i, align 1
  %44 = ptrtoint ptr %ucClockInfoSize.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ucClockInfoSize.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 20) #12
  %cmp47.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp47.i, label %if.then49.i, label %if.end53.i

if.then49.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dpm.i, align 4
  call void @kfree(ptr noundef %48) #9
  br label %rs780_parse_power_table.exit.thread

if.end53.i:                                       ; preds = %if.then35.i
  %49 = call i16 @llvm.bswap.i16(i16 %41) #9
  %conv40.i = zext i16 %49 to i32
  %add.ptr41.i = getelementptr i8, ptr %add.ptr17.i, i32 %conv40.i
  %conv42.i = zext i8 %43 to i32
  %conv43.i = zext i8 %45 to i32
  %mul44.i = mul nuw nsw i32 %conv43.i, %conv42.i
  %add.ptr45.i = getelementptr i8, ptr %add.ptr41.i, i32 %mul44.i
  %50 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dpm.i, align 4
  %ps_priv.i = getelementptr %struct.radeon_ps, ptr %51, i32 %i.0128.i, i32 9
  %52 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i, ptr %ps_priv.i, align 4
  %53 = load ptr, ptr %dpm.i, align 4
  %arrayidx61.i = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i
  %54 = ptrtoint ptr %ucNonClockSize.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucNonClockSize.i, align 1
  %ulCapsAndSettings.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 3
  %56 = ptrtoint ptr %ulCapsAndSettings.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load i32, ptr %ulCapsAndSettings.i.i, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %57) #9
  %59 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx61.i, align 4
  %60 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %add.ptr31.i, align 1
  %62 = call i16 @llvm.bswap.i16(i16 %61) #9
  %conv.i.i = zext i16 %62 to i32
  %class.i.i = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i, i32 1
  %63 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv.i.i, ptr %class.i.i, align 4
  %usClassification2.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 5
  %64 = ptrtoint ptr %usClassification2.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %usClassification2.i.i, align 1
  %66 = call i16 @llvm.bswap.i16(i16 %65) #9
  %conv1.i.i = zext i16 %66 to i32
  %class2.i.i = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i, i32 2
  %67 = ptrtoint ptr %class2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv1.i.i, ptr %class2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %55)
  %cmp.i.i = icmp ugt i8 %55, 12
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %ulVCLK.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 6
  %68 = ptrtoint ptr %ulVCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %ulVCLK.i.i, align 1
  %70 = call i32 @llvm.bswap.i32(i32 %69) #9
  %vclk.i.i = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i, i32 3
  %71 = ptrtoint ptr %vclk.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %vclk.i.i, align 4
  %ulDCLK.i.i = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, ptr %add.ptr31.i, i32 0, i32 7
  %72 = ptrtoint ptr %ulDCLK.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %ulDCLK.i.i, align 1
  %74 = call i32 @llvm.bswap.i32(i32 %73) #9
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %vclk4.i.i = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i, i32 3
  %75 = ptrtoint ptr %vclk4.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %vclk4.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ %74, %if.then.i.i ], [ 0, %if.else.i.i ]
  %76 = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i, i32 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %.sink.i.i, ptr %76, align 4
  %call.i.i = call zeroext i1 @r600_is_uvd_state(i32 noundef %conv.i.i, i32 noundef %conv1.i.i) #9
  br i1 %call.i.i, label %if.then8.i.i, label %if.end.i.i.if.end19.i.i_crit_edge

if.end.i.i.if.end19.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  %vclk9.i.i = getelementptr %struct.radeon_ps, ptr %53, i32 %i.0128.i, i32 3
  %78 = ptrtoint ptr %vclk9.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vclk9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp10.i.i = icmp eq i32 %79, 0
  br i1 %cmp10.i.i, label %if.then8.i.i.if.then15.i.i_crit_edge, label %lor.lhs.false.i.i

if.then8.i.i.if.then15.i.i_crit_edge:             ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

lor.lhs.false.i.i:                                ; preds = %if.then8.i.i
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp13.i.i = icmp eq i32 %81, 0
  br i1 %cmp13.i.i, label %lor.lhs.false.i.i.if.then15.i.i_crit_edge, label %lor.lhs.false.i.i.if.end19.i.i_crit_edge

lor.lhs.false.i.i.if.end19.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

lor.lhs.false.i.i.if.then15.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i.i

if.then15.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then15.i.i_crit_edge, %if.then8.i.i.if.then15.i.i_crit_edge
  %82 = ptrtoint ptr %vclk9.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 53300, ptr %vclk9.i.i, align 4
  %83 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 40000, ptr %76, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then15.i.i, %lor.lhs.false.i.i.if.end19.i.i_crit_edge, %if.end.i.i.if.end19.i.i_crit_edge
  %84 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %class.i.i, align 4
  %and.i.i = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end19.i.i.if.end22.i.i_crit_edge, label %if.then21.i.i

if.end19.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %boot_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx61.i, ptr %boot_ps.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then21.i.i, %if.end19.i.i.if.end22.i.i_crit_edge
  %87 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %class.i.i, align 4
  %and24.i.i = and i32 %88, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %if.end22.i.i.rs780_parse_pplib_non_clock_info.exit.i_crit_edge, label %if.then26.i.i

if.end22.i.i.rs780_parse_pplib_non_clock_info.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rs780_parse_pplib_non_clock_info.exit.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %uvd_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx61.i, ptr %uvd_ps.i.i, align 4
  br label %rs780_parse_pplib_non_clock_info.exit.i

rs780_parse_pplib_non_clock_info.exit.i:          ; preds = %if.then26.i.i, %if.end22.i.i.rs780_parse_pplib_non_clock_info.exit.i_crit_edge
  %90 = ptrtoint ptr %dpm.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dpm.i, align 4
  %ps_priv.i.i.i = getelementptr %struct.radeon_ps, ptr %91, i32 %i.0128.i, i32 9
  %92 = ptrtoint ptr %ps_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ps_priv.i.i.i, align 4
  %94 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %add.ptr45.i, align 1
  %96 = call i16 @llvm.bswap.i16(i16 %95) #9
  %conv.i114.i = zext i16 %96 to i32
  %ucLowEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_RS780_CLOCK_INFO, ptr %add.ptr45.i, i32 0, i32 1
  %97 = ptrtoint ptr %ucLowEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ucLowEngineClockHigh.i.i, align 1
  %conv1.i115.i = zext i8 %98 to i32
  %shl.i.i = shl nuw nsw i32 %conv1.i115.i, 16
  %or.i.i = or i32 %shl.i.i, %conv.i114.i
  %sclk_low.i.i = getelementptr inbounds %struct.igp_ps, ptr %93, i32 0, i32 2
  %99 = ptrtoint ptr %sclk_low.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i, ptr %sclk_low.i.i, align 4
  %usHighEngineClockLow.i.i = getelementptr inbounds %struct._ATOM_PPLIB_RS780_CLOCK_INFO, ptr %add.ptr45.i, i32 0, i32 2
  %100 = ptrtoint ptr %usHighEngineClockLow.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %usHighEngineClockLow.i.i, align 1
  %102 = call i16 @llvm.bswap.i16(i16 %101) #9
  %conv2.i.i = zext i16 %102 to i32
  %ucHighEngineClockHigh.i.i = getelementptr inbounds %struct._ATOM_PPLIB_RS780_CLOCK_INFO, ptr %add.ptr45.i, i32 0, i32 3
  %103 = ptrtoint ptr %ucHighEngineClockHigh.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %ucHighEngineClockHigh.i.i, align 1
  %conv3.i.i = zext i8 %104 to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, 16
  %or5.i.i = or i32 %shl4.i.i, %conv2.i.i
  %sclk_high.i.i = getelementptr inbounds %struct.igp_ps, ptr %93, i32 0, i32 3
  %105 = ptrtoint ptr %sclk_high.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %or5.i.i, ptr %sclk_high.i.i, align 4
  %usVDDC.i.i = getelementptr inbounds %struct._ATOM_PPLIB_RS780_CLOCK_INFO, ptr %add.ptr45.i, i32 0, i32 7
  %106 = ptrtoint ptr %usVDDC.i.i to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %usVDDC.i.i, align 1
  %108 = call i16 @llvm.bswap.i16(i16 %107) #9
  %switch.tableidx = add i16 %108, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %switch.tableidx)
  %109 = icmp ult i16 %switch.tableidx, 3
  br i1 %109, label %switch.lookup, label %rs780_parse_pplib_non_clock_info.exit.i.sw.epilog.i.i_crit_edge

rs780_parse_pplib_non_clock_info.exit.i.sw.epilog.i.i_crit_edge: ; preds = %rs780_parse_pplib_non_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %rs780_parse_pplib_non_clock_info.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rs780_dpm_init, i32 0, i32 %110
  %111 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %111)
  %switch.load = load i32, ptr %switch.gep, align 4
  %112 = sext i16 %switch.tableidx to i32
  %switch.gep173 = getelementptr inbounds [3 x i32], ptr @switch.table.rs780_dpm_init.13, i32 0, i32 %112
  %113 = ptrtoint ptr %switch.gep173 to i32
  call void @__asan_load4_noabort(i32 %113)
  %switch.load174 = load i32, ptr %switch.gep173, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %rs780_parse_pplib_non_clock_info.exit.i.sw.epilog.i.i_crit_edge
  %.sink46.i.i = phi i32 [ 0, %rs780_parse_pplib_non_clock_info.exit.i.sw.epilog.i.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %.sink.i116.i = phi i32 [ 0, %rs780_parse_pplib_non_clock_info.exit.i.sw.epilog.i.i_crit_edge ], [ %switch.load174, %switch.lookup ]
  %114 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink46.i.i, ptr %93, align 4
  %max_voltage15.i.i = getelementptr inbounds %struct.igp_ps, ptr %93, i32 0, i32 1
  %115 = ptrtoint ptr %max_voltage15.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %.sink.i116.i, ptr %max_voltage15.i.i, align 4
  %ulFlags.i.i = getelementptr inbounds %struct._ATOM_PPLIB_RS780_CLOCK_INFO, ptr %add.ptr45.i, i32 0, i32 11
  %116 = ptrtoint ptr %ulFlags.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %ulFlags.i.i, align 1
  %118 = call i32 @llvm.bswap.i32(i32 %117) #9
  %flags.i.i = getelementptr inbounds %struct.igp_ps, ptr %93, i32 0, i32 4
  %119 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %flags.i.i, align 4
  %class.i117.i = getelementptr %struct.radeon_ps, ptr %91, i32 %i.0128.i, i32 1
  %120 = ptrtoint ptr %class.i117.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %class.i117.i, align 4
  %and.i118.i = and i32 %121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.i)
  %tobool.not.i119.i = icmp eq i32 %and.i118.i, 0
  br i1 %tobool.not.i119.i, label %sw.epilog.i.i.for.inc.i_crit_edge, label %if.then.i120.i

sw.epilog.i.i.for.inc.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i120.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %default_sclk.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %default_sclk.i.i, align 4
  %124 = ptrtoint ptr %sclk_low.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %sclk_low.i.i, align 4
  %125 = load i32, ptr %default_sclk.i.i, align 4
  %126 = ptrtoint ptr %sclk_high.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %sclk_high.i.i, align 4
  %127 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %93, align 4
  %128 = ptrtoint ptr %max_voltage15.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %max_voltage15.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i120.i, %sw.epilog.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0128.i, 1
  %129 = ptrtoint ptr %ucNumStates.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %ucNumStates.i, align 1
  %conv12.i = zext i8 %130 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv12.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end7.loopexit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rs780_parse_power_table.exit.thread:              ; preds = %if.then49.i, %if.end.i.rs780_parse_power_table.exit.thread_crit_edge, %if.end3.rs780_parse_power_table.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.rs780_parse_power_table.exit.thread_crit_edge ], [ -22, %if.end3.rs780_parse_power_table.exit.thread_crit_edge ], [ -12, %if.then49.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  br label %cleanup

if.end7.loopexit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv12.i.le = zext i8 %130 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.end7.loopexit, %for.cond.preheader.i.if.end7_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end7_crit_edge ], [ %conv12.i.le, %if.end7.loopexit ]
  %num_ps.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 1
  %131 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %.lcssa.i, ptr %num_ps.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset.i) #9
  %voltage_control = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 2
  %132 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %voltage_control, align 2
  %gfx_clock_gating = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %gfx_clock_gating to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %gfx_clock_gating, align 1
  %134 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mode_info1.i, align 4
  %call8 = call zeroext i1 @atom_parse_data_header(ptr noundef %135, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #9
  br i1 %call8, label %if.then9, label %if.end101

if.then9:                                         ; preds = %if.end7
  %136 = ptrtoint ptr %mode_info1.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mode_info1.i, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bios, align 4
  %140 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %141 to i32
  %add.ptr = getelementptr i8, ptr %139, i32 %conv
  %142 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %crev, align 1
  %144 = zext i8 %143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %143, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %ucNumberOfCyclesInPeriod = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 20
  %145 = ptrtoint ptr %ucNumberOfCyclesInPeriod to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ucNumberOfCyclesInPeriod, align 1
  %conv13 = zext i8 %146 to i16
  %num_of_cycles_in_period = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 11
  %147 = ptrtoint ptr %num_of_cycles_in_period to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv13, ptr %num_of_cycles_in_period, align 2
  %ucNumberOfCyclesInPeriodHi = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 5
  %148 = ptrtoint ptr %ucNumberOfCyclesInPeriodHi to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ucNumberOfCyclesInPeriodHi, align 1
  %conv14 = zext i8 %149 to i16
  %shl = shl nuw i16 %conv14, 8
  %or = or i16 %shl, %conv13
  store i16 %or, ptr %num_of_cycles_in_period, align 2
  %shl.lobit = lshr i8 %149, 7
  %150 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %shl.lobit, ptr %call7.i.i, align 8
  %ucStartingPWM_HighTime = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 21
  %151 = ptrtoint ptr %ucStartingPWM_HighTime to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %ucStartingPWM_HighTime, align 1
  %conv22 = zext i8 %152 to i16
  %boot_voltage = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 8
  %153 = ptrtoint ptr %boot_voltage to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv22, ptr %boot_voltage, align 8
  %ucMaxNBVoltage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 17
  %154 = ptrtoint ptr %ucMaxNBVoltage to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ucMaxNBVoltage, align 1
  %conv23 = zext i8 %155 to i16
  %max_voltage = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 6
  %156 = ptrtoint ptr %max_voltage to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv23, ptr %max_voltage, align 4
  %ucMaxNBVoltageHigh = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 23
  %157 = ptrtoint ptr %ucMaxNBVoltageHigh to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %ucMaxNBVoltageHigh, align 1
  %conv24 = zext i8 %158 to i16
  %shl25 = shl nuw i16 %conv24, 8
  %or28 = or i16 %shl25, %conv23
  store i16 %or28, ptr %max_voltage, align 4
  %ucMinNBVoltage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 18
  %159 = ptrtoint ptr %ucMinNBVoltage to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ucMinNBVoltage, align 1
  %conv30 = zext i8 %160 to i16
  %min_voltage = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 7
  %161 = ptrtoint ptr %min_voltage to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv30, ptr %min_voltage, align 2
  %ucMinNBVoltageHigh = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 24
  %162 = ptrtoint ptr %ucMinNBVoltageHigh to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %ucMinNBVoltageHigh, align 1
  %conv31 = zext i8 %163 to i16
  %shl32 = shl nuw i16 %conv31, 8
  %or35 = or i16 %shl32, %conv30
  store i16 %or35, ptr %min_voltage, align 2
  %usInterNBVoltageLow = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 8
  %164 = ptrtoint ptr %usInterNBVoltageLow to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %usInterNBVoltageLow, align 1
  %166 = call i16 @llvm.bswap.i16(i16 %165)
  %inter_voltage_low = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 9
  %167 = ptrtoint ptr %inter_voltage_low to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %inter_voltage_low, align 2
  %usInterNBVoltageHigh = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 9
  %168 = ptrtoint ptr %usInterNBVoltageHigh to i32
  call void @__asan_loadN_noabort(i32 %168, i32 2)
  %169 = load i16, ptr %usInterNBVoltageHigh, align 1
  %170 = call i16 @llvm.bswap.i16(i16 %169)
  %inter_voltage_high = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 10
  %171 = ptrtoint ptr %inter_voltage_high to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %170, ptr %inter_voltage_high, align 4
  %172 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %voltage_control, align 2
  %usK8MemoryClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 14
  %173 = ptrtoint ptr %usK8MemoryClock to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %usK8MemoryClock, align 1
  %conv38 = zext i16 %174 to i32
  %mul = mul nuw nsw i32 %conv38, 100
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %usNumberOfCyclesInPeriod = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 18
  %175 = ptrtoint ptr %usNumberOfCyclesInPeriod to i32
  call void @__asan_loadN_noabort(i32 %175, i32 2)
  %176 = load i16, ptr %usNumberOfCyclesInPeriod, align 1
  %177 = call i16 @llvm.bswap.i16(i16 %176)
  %num_of_cycles_in_period40 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 11
  %178 = ptrtoint ptr %num_of_cycles_in_period40 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %num_of_cycles_in_period40, align 2
  %.lobit = lshr i16 %177, 15
  %179 = trunc i16 %.lobit to i8
  %180 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %call7.i.i, align 8
  %usBootUpNBVoltage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 21
  %181 = ptrtoint ptr %usBootUpNBVoltage to i32
  call void @__asan_loadN_noabort(i32 %181, i32 2)
  %182 = load i16, ptr %usBootUpNBVoltage, align 1
  %183 = call i16 @llvm.bswap.i16(i16 %182)
  %boot_voltage49 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 8
  %184 = ptrtoint ptr %boot_voltage49 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %boot_voltage49, align 8
  %usMaxNBVoltage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 19
  %185 = ptrtoint ptr %usMaxNBVoltage to i32
  call void @__asan_loadN_noabort(i32 %185, i32 2)
  %186 = load i16, ptr %usMaxNBVoltage, align 1
  %187 = call i16 @llvm.bswap.i16(i16 %186)
  %max_voltage50 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 6
  %188 = ptrtoint ptr %max_voltage50 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %187, ptr %max_voltage50, align 4
  %usMinNBVoltage = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 20
  %189 = ptrtoint ptr %usMinNBVoltage to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %usMinNBVoltage, align 1
  %191 = call i16 @llvm.bswap.i16(i16 %190)
  %min_voltage51 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 7
  %192 = ptrtoint ptr %min_voltage51 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %191, ptr %min_voltage51, align 2
  %ulSystemConfig = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 7
  %193 = ptrtoint ptr %ulSystemConfig to i32
  call void @__asan_loadN_noabort(i32 %193, i32 4)
  %194 = load i32, ptr %ulSystemConfig, align 1
  %195 = call i32 @llvm.bswap.i32(i32 %194)
  %system_config = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 4
  %196 = ptrtoint ptr %system_config to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %system_config, align 4
  %pwm_voltage_control = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 1
  %197 = trunc i32 %195 to i8
  %198 = lshr i8 %197, 2
  %199 = and i8 %198, 1
  %200 = ptrtoint ptr %pwm_voltage_control to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %199, ptr %pwm_voltage_control, align 1
  %201 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 1, ptr %voltage_control, align 2
  %ulBootUpUMAClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 3
  %202 = ptrtoint ptr %ulBootUpUMAClock to i32
  call void @__asan_loadN_noabort(i32 %202, i32 4)
  %203 = load i32, ptr %ulBootUpUMAClock, align 1
  %204 = call i32 @llvm.bswap.i32(i32 %203)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb39, %sw.bb
  %.sink = phi i32 [ %204, %sw.bb39 ], [ %mul, %sw.bb ]
  %bootup_uma_clk59 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 5
  %205 = ptrtoint ptr %bootup_uma_clk59 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %.sink, ptr %bootup_uma_clk59, align 8
  %min_voltage60 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 7
  %206 = ptrtoint ptr %min_voltage60 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %min_voltage60, align 2
  %max_voltage62 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 6
  %208 = ptrtoint ptr %max_voltage62 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %max_voltage62, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %207, i16 %209)
  %cmp64 = icmp ugt i16 %207, %209
  br i1 %cmp64, label %if.then66, label %sw.epilog.if.end68_crit_edge

sw.epilog.if.end68_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then66:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %voltage_control, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %sw.epilog.if.end68_crit_edge
  %pwm_voltage_control69 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %pwm_voltage_control69 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %pwm_voltage_control69, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool70.not = icmp eq i8 %212, 0
  %num_of_cycles_in_period88 = getelementptr inbounds %struct.igp_power_info, ptr %call7.i.i, i32 0, i32 11
  %213 = ptrtoint ptr %num_of_cycles_in_period88 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %num_of_cycles_in_period88, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %214)
  %cmp90 = icmp eq i16 %214, 0
  br i1 %tobool70.not, label %if.else, label %if.then71

if.then71:                                        ; preds = %if.end68
  br i1 %cmp90, label %if.then71.if.then85_crit_edge, label %lor.lhs.false

if.then71.if.then85_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

lor.lhs.false:                                    ; preds = %if.then71
  %215 = ptrtoint ptr %max_voltage62 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %max_voltage62, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %cmp78 = icmp eq i16 %216, 0
  br i1 %cmp78, label %lor.lhs.false.if.then85_crit_edge, label %lor.lhs.false80

lor.lhs.false.if.then85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

lor.lhs.false80:                                  ; preds = %lor.lhs.false
  %217 = ptrtoint ptr %min_voltage60 to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %min_voltage60, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %cmp83 = icmp eq i16 %218, 0
  br i1 %cmp83, label %lor.lhs.false80.if.then85_crit_edge, label %lor.lhs.false80.cleanup_crit_edge

lor.lhs.false80.cleanup_crit_edge:                ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false80.if.then85_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then85

if.then85:                                        ; preds = %lor.lhs.false80.if.then85_crit_edge, %lor.lhs.false.if.then85_crit_edge, %if.then71.if.then85_crit_edge
  %219 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %voltage_control, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end68
  br i1 %cmp90, label %if.else.if.then97_crit_edge, label %lor.lhs.false92

if.else.if.then97_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

lor.lhs.false92:                                  ; preds = %if.else
  %220 = ptrtoint ptr %max_voltage62 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %max_voltage62, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %221)
  %cmp95 = icmp eq i16 %221, 0
  br i1 %cmp95, label %lor.lhs.false92.if.then97_crit_edge, label %lor.lhs.false92.cleanup_crit_edge

lor.lhs.false92.cleanup_crit_edge:                ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false92.if.then97_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

if.then97:                                        ; preds = %lor.lhs.false92.if.then97_crit_edge, %if.else.if.then97_crit_edge
  %222 = ptrtoint ptr %voltage_control to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 0, ptr %voltage_control, align 2
  br label %cleanup

if.end101:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %223 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %asic, align 8
  %fini = getelementptr inbounds %struct.radeon_asic, ptr %224, i32 0, i32 21, i32 9
  %225 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %fini, align 4
  call void %226(ptr noundef %rdev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %if.then97, %lor.lhs.false92.cleanup_crit_edge, %if.then85, %lor.lhs.false80.cleanup_crit_edge, %sw.default, %rs780_parse_power_table.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %if.end101 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false92.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %lor.lhs.false80.cleanup_crit_edge ], [ 0, %if.then85 ], [ %retval.0.i.ph, %rs780_parse_power_table.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_get_platform_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs780_dpm_print_power_state(ptr noundef %rdev, ptr noundef %rps) local_unnamed_addr #0 align 64 {
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
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %11) #14
  %sclk_low = getelementptr inbounds %struct.igp_ps, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %sclk_low to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sclk_low, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %15) #14
  %sclk_high = getelementptr inbounds %struct.igp_ps, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %sclk_high to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sclk_high, align 4
  %max_voltage = getelementptr inbounds %struct.igp_ps, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_voltage, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %17, i32 noundef %19) #14
  tail call void @r600_dpm_print_ps_status(ptr noundef %rdev, ptr noundef %rps) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_class_info(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_cap_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dpm_print_ps_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs780_dpm_fini(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void @kfree(ptr noundef %5) #9
  %inc = add nuw nsw i32 %i.014, 1
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
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rs780_dpm_get_sclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 3
  %0 = ptrtoint ptr %requested_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %requested_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %sclk_low = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 2
  %sclk_high = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 3
  %retval.0.in = select i1 %low, ptr %sclk_low, ptr %sclk_high
  %4 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rs780_dpm_get_mclk(ptr nocapture noundef readonly %rdev, i1 noundef zeroext %low) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bootup_uma_clk = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bootup_uma_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bootup_uma_clk, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs780_dpm_debugfs_print_current_performance_level(ptr nocapture noundef readonly %rdev, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %add.ptr.i = getelementptr i8, ptr %5, i32 12404
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %7 = and i32 %6, -15794176
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %10, i32 1536
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  %and3 = lshr i32 %12, 2
  %shr = and i32 %and3, 7
  %add = add nuw nsw i32 %shr, 1
  %and4 = lshr i32 %12, 16
  %shr5 = and i32 %and4, 15
  %and7 = lshr i32 %12, 20
  %shr8 = and i32 %and7, 15
  %add9 = add nuw nsw i32 %shr5, 2
  %add10 = add nuw nsw i32 %add9, %shr8
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %13 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spll, align 4
  %mul = mul i32 %14, %8
  %mul11 = mul nuw nsw i32 %add10, %add
  %div = udiv i32 %mul, %mul11
  %vclk = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %vclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vclk, align 4
  %dclk = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dclk, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.10, i32 noundef %16, i32 noundef %18) #9
  %sclk_low = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %sclk_low to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sclk_low, align 4
  %add12 = add i32 %20, 500
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %add12)
  %cmp = icmp ult i32 %div, %add12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.11, i32 noundef %20, i32 noundef %22) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sclk_high = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %sclk_high to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sclk_high, align 4
  %max_voltage = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_voltage, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.12, i32 noundef %24, i32 noundef %26) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs780_dpm_get_current_sclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12404
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %3 = and i32 %2, -15794176
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %6, i32 1536
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  %and2 = lshr i32 %8, 2
  %shr = and i32 %and2, 7
  %add = add nuw nsw i32 %shr, 1
  %and3 = lshr i32 %8, 16
  %shr4 = and i32 %and3, 15
  %and6 = lshr i32 %8, 20
  %shr7 = and i32 %and6, 15
  %add8 = add nuw nsw i32 %shr4, 2
  %add9 = add nuw nsw i32 %add8, %shr7
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %9 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spll, align 4
  %mul = mul i32 %10, %4
  %mul10 = mul nuw nsw i32 %add9, %add
  %div = udiv i32 %mul, %mul10
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rs780_dpm_get_current_mclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %bootup_uma_clk = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bootup_uma_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bootup_uma_clk, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs780_dpm_force_performance_level(ptr noundef %rdev, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  %dividers = alloca %struct.atom_clock_dividers, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 13
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %2 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dividers) #9
  %6 = call ptr @memset(ptr %dividers, i32 255, i32 32)
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %7 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 12288
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %10 = and i32 %9, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %12, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %10) #9, !srcloc !35
  %13 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %14, i32 12288
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %16 = and i32 %15, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i19.i76 = getelementptr i8, ptr %18, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i76, i32 %16) #9, !srcloc !35
  %19 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %level, label %if.else17 [
    i32 2, label %if.then
    i32 1, label %if.then8
  ]

if.then:                                          ; preds = %entry
  %voltage_control = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %voltage_control to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %voltage_control, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %max_voltage = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %max_voltage to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_voltage, align 4
  tail call fastcc void @rs780_force_voltage(ptr noundef %rdev, i16 noundef zeroext %23)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %sclk_high = getelementptr inbounds %struct.igp_ps, ptr %5, i32 0, i32 3
  %24 = ptrtoint ptr %sclk_high to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sclk_high, align 4
  %call3 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %25, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call fastcc void @rs780_force_fbdiv(ptr noundef %rdev, i32 noundef %28)
  br label %if.end34

if.then8:                                         ; preds = %entry
  %sclk_low = getelementptr inbounds %struct.igp_ps, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %sclk_low to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sclk_low, align 4
  %call9 = call i32 @radeon_atom_get_clock_dividers(ptr noundef %rdev, i8 noundef zeroext 2, i32 noundef %30, i1 noundef zeroext false, ptr noundef nonnull %dividers) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  %31 = getelementptr inbounds %struct.atom_clock_dividers, ptr %dividers, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call fastcc void @rs780_force_fbdiv(ptr noundef %rdev, i32 noundef %33)
  %voltage_control13 = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %voltage_control13 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %voltage_control13, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool14.not = icmp eq i8 %35, 0
  br i1 %tobool14.not, label %if.end12.if.end34_crit_edge, label %if.then15

if.end12.if.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %min_voltage = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %min_voltage to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %min_voltage, align 2
  call fastcc void @rs780_force_voltage(ptr noundef %rdev, i16 noundef zeroext %37)
  br label %if.end34

if.else17:                                        ; preds = %entry
  %voltage_control18 = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %voltage_control18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %voltage_control18, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool19.not = icmp eq i8 %39, 0
  br i1 %tobool19.not, label %if.else17.if.end22_crit_edge, label %if.then20

if.else17.if.end22_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %max_voltage21 = getelementptr inbounds %struct.igp_power_info, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %max_voltage21 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %max_voltage21, align 4
  tail call fastcc void @rs780_force_voltage(ptr noundef %rdev, i16 noundef zeroext %41)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else17.if.end22_crit_edge
  %sclk_high23 = getelementptr inbounds %struct.igp_ps, ptr %5, i32 0, i32 3
  %42 = ptrtoint ptr %sclk_high23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sclk_high23, align 4
  %sclk_low24 = getelementptr inbounds %struct.igp_ps, ptr %5, i32 0, i32 2
  %44 = ptrtoint ptr %sclk_low24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sclk_low24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp25.not = icmp eq i32 %43, %45
  br i1 %cmp25.not, label %if.end22.if.end28_crit_edge, label %do.body

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.body:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 12356
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %49 = and i32 %48, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %51, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 %49) #9, !srcloc !35
  %52 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i80 = getelementptr i8, ptr %53, i32 12288
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i80) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %55 = or i32 %54, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %57, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %55) #9, !srcloc !35
  br label %if.end28

if.end28:                                         ; preds = %do.body, %if.end22.if.end28_crit_edge
  %58 = ptrtoint ptr %voltage_control18 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %voltage_control18, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool30.not = icmp eq i8 %59, 0
  br i1 %tobool30.not, label %if.end28.if.end34_crit_edge, label %if.then31

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %61, i32 12288
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %63 = or i32 %62, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i15.i83 = getelementptr i8, ptr %65, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i83, i32 %63) #9, !srcloc !35
  tail call fastcc void @rs780_enable_voltage_scaling(ptr noundef %rdev, ptr noundef %3)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge, %if.then15, %if.end12.if.end34_crit_edge, %if.end6
  %forced_level = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 36
  %66 = ptrtoint ptr %forced_level to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %level, ptr %forced_level, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dividers) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atom_get_clock_dividers(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs780_force_fbdiv(ptr nocapture noundef readonly %rdev, i32 noundef %fb_div) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %current_ps = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 52, i32 2
  %0 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %current_ps, align 4
  %ps_priv.i = getelementptr inbounds %struct.radeon_ps, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ps_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps_priv.i, align 4
  %sclk_low = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sclk_low to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sclk_low, align 4
  %sclk_high = getelementptr inbounds %struct.igp_ps, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %sclk_high to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sclk_high, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12480
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 12480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %11) #9, !srcloc !35
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %15, i32 12360
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %17 = and i32 %16, 15794175
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and6 = and i32 %fb_div, 4095
  %or7 = or i32 %18, %and6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %or7) #9
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %21, i32 12360
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %19) #9, !srcloc !35
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %23, i32 12356
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %25 = and i32 %24, -15793921
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %shl14 = shl i32 %fb_div, 12
  %and15 = and i32 %shl14, 16773120
  %or16 = or i32 %26, %and15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or16) #9
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %29, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %27) #9, !srcloc !35
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %31, i32 12356
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %33 = or i32 %32, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %35, i32 12356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %33) #9, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 21474800) #9
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %38, i32 12480
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #9, !srcloc !32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !33
  %40 = and i32 %39, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !34
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %42, i32 12480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 %40) #9, !srcloc !35
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_bsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_at(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_git(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_tc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_select_td(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vrc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_tpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_tpc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_sstu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_sst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_fctu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_fct(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vddc3d_oorsu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vddc3d_oorphc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_vddc3d_oorsdc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_ctxcgtt3d_rphc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_set_ctxcgtt3d_rsdc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vid_rt_set_vru(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vid_rt_set_vrt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vid_rt_set_ssu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_voltage_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_mem_clock_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_eng_clock_index(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_watermark_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_power_level_set_enter_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_reference_divider(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_feedback_divider(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_post_divider(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_enable_post_divider(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_set_step_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_enable_pulse_skipping(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_engine_clock_entry_enable(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_enable_mclk_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_voltage_control_enable_pins(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_enable_sclk_control(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_enable_spll_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_wait_for_spll_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @r600_is_uvd_state(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 916, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 945, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rs780_dpm_print_power_state._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rs780_dpm_print_power_state._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 946, i32 2}
!10 = !{ptr @rs780_dpm_print_power_state._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rs780_dpm_print_power_state._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 948, i32 2}
!14 = !{ptr @rs780_dpm_print_power_state._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @rs780_dpm_print_power_state._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 994, i32 16}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 998, i32 17}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/rs780_dpm.c", i32 1001, i32 17}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{i64 5011517}
!33 = !{i64 2158300921}
!34 = !{i64 2158301328}
!35 = !{i64 5011099}
!36 = !{!"auto-init"}
