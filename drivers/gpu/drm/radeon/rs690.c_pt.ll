; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rs690.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rs690.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct._ATOM_INTEGRATED_SYSTEM_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i8, i8, i16, i16, i16, [2 x i32], i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, [2 x i32], i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, [96 x i32] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.rs690_watermark = type { i32, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed }
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
%struct.rv515_mc_save = type { i32, i32, [2 x i8] }
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

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"No integrated system info for your GPU, using safe default\0A\00", [36 x i8] zeroinitializer }, align 32
@rs690_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 765, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"GPU reset failed ! (0xE40=0x%08X, 0x7C0=0x%08X)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rs690_resume\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/radeon/rs690.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rs690_resume._entry_ptr = internal global ptr @rs690_resume._entry, section ".printk_index", align 4
@rs690_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 833, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Expecting atombios for RV515 GPU\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rs690_init\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rs690_init._entry_ptr = internal global ptr @rs690_init._entry, section ".printk_index", align 4
@rs690_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@rs690_init._entry_ptr.10 = internal global ptr @rs690_init._entry.9, section ".printk_index", align 4
@rs690_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 870, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@rs690_init._entry_ptr.13 = internal global ptr @rs690_init._entry.11, section ".printk_index", align 4
@rs690_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 718, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs690_startup\00", [18 x i8] zeroinitializer }, align 32
@rs690_startup._entry_ptr = internal global ptr @rs690_startup._entry, section ".printk_index", align 4
@rs690_startup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 734, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed initializing CP (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@rs690_startup._entry_ptr.18 = internal global ptr @rs690_startup._entry.16, section ".printk_index", align 4
@rs690_startup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 740, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@rs690_startup._entry_ptr.21 = internal global ptr @rs690_startup._entry.19, section ".printk_index", align 4
@rs690_startup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 746, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed initializing audio\0A\00", [37 x i8] zeroinitializer }, align 32
@rs690_startup._entry_ptr.24 = internal global ptr @rs690_startup._entry.22, section ".printk_index", align 4
@rs690_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 685, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Wait MC idle timeout before updating MC.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rs690_mc_program\00", [47 x i8] zeroinitializer }, align 32
@rs690_mc_program._entry_ptr = internal global ptr @rs690_mc_program._entry, section ".printk_index", align 4
@rs690_gpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014Failed to wait MC idle while programming pipes. Bad things might happen.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rs690_gpu_init\00", [17 x i8] zeroinitializer }, align 32
@rs690_gpu_init._entry_ptr = internal global ptr @rs690_gpu_init._entry, section ".printk_index", align 4
@radeon_fastfb = external dso_local local_unnamed_addr global i32, align 4
@rs690_mc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016[drm] Direct mapping: aper base at 0x%llx, replaced by direct mapping base 0x%llx.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs690_mc_init\00", [18 x i8] zeroinitializer }, align 32
@rs690_mc_init._entry_ptr = internal global ptr @rs690_mc_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 115, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 763, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 833, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 838, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 870, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 718, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 734, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 740, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 746, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 685, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 57, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [34 x i8] c"../drivers/gpu/drm/radeon/rs690.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 191, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @rs690_gpu_init._entry, ptr @rs690_gpu_init._entry_ptr, ptr @rs690_init._entry, ptr @rs690_init._entry.11, ptr @rs690_init._entry.9, ptr @rs690_init._entry_ptr, ptr @rs690_init._entry_ptr.10, ptr @rs690_init._entry_ptr.13, ptr @rs690_mc_init._entry, ptr @rs690_mc_init._entry_ptr, ptr @rs690_mc_program._entry, ptr @rs690_mc_program._entry_ptr, ptr @rs690_resume._entry, ptr @rs690_resume._entry_ptr, ptr @rs690_startup._entry, ptr @rs690_startup._entry.16, ptr @rs690_startup._entry.19, ptr @rs690_startup._entry.22, ptr @rs690_startup._entry_ptr, ptr @rs690_startup._entry_ptr.18, ptr @rs690_startup._entry_ptr.21, ptr @rs690_startup._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_startup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_startup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_startup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_gpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs690_mc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs690_mc_wait_for_idle(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %3(ptr noundef %rdev, i32 noundef 144) #7
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  %inc = add nuw i32 %i.06, 1
  %5 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs690_pm_info(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %data_offset = alloca i16, align 2
  %frev = alloca i8, align 1
  %crev = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_offset) #7
  %0 = ptrtoint ptr %data_offset to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data_offset, align 2, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frev) #7
  %1 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %frev, align 1, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %crev) #7
  %2 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %crev, align 1, !annotation !64
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %3 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mode_info, align 4
  %call = call zeroext i1 @atom_parse_data_header(ptr noundef %4, i32 noundef 30, ptr noundef null, ptr noundef nonnull %frev, ptr noundef nonnull %crev, ptr noundef nonnull %data_offset) #7
  br i1 %call, label %if.then, label %if.else100

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mode_info, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bios, align 4
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_offset, align 2
  %conv = zext i16 %10 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv
  %11 = ptrtoint ptr %crev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %crev, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb39
  ]

sw.bb:                                            ; preds = %if.then
  %ulBootUpMemoryClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 2
  %14 = ptrtoint ptr %ulBootUpMemoryClock to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %ulBootUpMemoryClock, align 1
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %shl = shl i32 %16, 12
  %igp_sideport_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 7
  %17 = insertvalue [1 x i32] undef, i32 %shl, 0
  %call7 = call fastcc i32 @dfixed_div([1 x i32] %17, [1 x i32] [i32 409600])
  %18 = ptrtoint ptr %igp_sideport_mclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call7, ptr %igp_sideport_mclk, align 8
  %usK8MemoryClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 14
  %19 = ptrtoint ptr %usK8MemoryClock to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %usK8MemoryClock, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv12 = zext i16 %21 to i32
  %shl13 = shl nuw nsw i32 %conv12, 12
  %igp_system_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %22 = ptrtoint ptr %igp_system_mclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shl13, ptr %igp_system_mclk, align 4
  br label %if.end32

if.else:                                          ; preds = %sw.bb
  %default_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %23 = ptrtoint ptr %default_mclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %default_mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %if.else29, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl19 = shl i32 %24, 12
  %igp_system_mclk21 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %25 = insertvalue [1 x i32] undef, i32 %shl19, 0
  %call26 = call fastcc i32 @dfixed_div([1 x i32] %25, [1 x i32] [i32 409600])
  %26 = ptrtoint ptr %igp_system_mclk21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call26, ptr %igp_system_mclk21, align 4
  br label %if.end32

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %igp_system_mclk31 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %27 = ptrtoint ptr %igp_system_mclk31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1638400, ptr %igp_system_mclk31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then16, %if.then10
  %usFSBClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 11
  %28 = ptrtoint ptr %usFSBClock to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %usFSBClock, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv33 = zext i16 %30 to i32
  %shl34 = shl nuw nsw i32 %conv33, 12
  %igp_ht_link_clk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 9
  %31 = ptrtoint ptr %igp_ht_link_clk to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl34, ptr %igp_ht_link_clk, align 8
  %ucHTLinkWidth = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO, ptr %add.ptr, i32 0, i32 22
  %32 = ptrtoint ptr %ucHTLinkWidth to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ucHTLinkWidth, align 1
  %conv36 = zext i8 %33 to i32
  %shl37 = shl nuw nsw i32 %conv36, 12
  %igp_ht_link_width = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 10
  %34 = ptrtoint ptr %igp_ht_link_width to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl37, ptr %igp_ht_link_width, align 4
  br label %if.end109

sw.bb39:                                          ; preds = %if.then
  %ulBootUpSidePortClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 4
  %35 = ptrtoint ptr %ulBootUpSidePortClock to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %ulBootUpSidePortClock, align 1
  %37 = call i32 @llvm.bswap.i32(i32 %36)
  %shl40 = shl i32 %37, 12
  %igp_sideport_mclk42 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 7
  %38 = insertvalue [1 x i32] undef, i32 %shl40, 0
  %call47 = call fastcc i32 @dfixed_div([1 x i32] %38, [1 x i32] [i32 409600])
  %39 = ptrtoint ptr %igp_sideport_mclk42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call47, ptr %igp_sideport_mclk42, align 8
  %ulBootUpUMAClock = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 3
  %40 = ptrtoint ptr %ulBootUpUMAClock to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %ulBootUpUMAClock, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool50.not = icmp eq i32 %41, 0
  br i1 %tobool50.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  %shl53 = shl i32 %42, 12
  br label %if.end70

if.else56:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %default_mclk58 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 5
  %43 = ptrtoint ptr %default_mclk58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %default_mclk58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool59.not = icmp eq i32 %44, 0
  %shl63 = shl i32 %44, 12
  %spec.select = select i1 %tobool59.not, i32 273203200, i32 %shl63
  br label %if.end70

if.end70:                                         ; preds = %if.else56, %if.then51
  %shl63.sink = phi i32 [ %shl53, %if.then51 ], [ %spec.select, %if.else56 ]
  %igp_system_mclk72 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %45 = insertvalue [1 x i32] undef, i32 %shl63.sink, 0
  %call75 = call fastcc i32 @dfixed_div([1 x i32] %45, [1 x i32] [i32 409600])
  %46 = ptrtoint ptr %igp_system_mclk72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call75, ptr %igp_system_mclk72, align 4
  %ulHTLinkFreq = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 22
  %47 = ptrtoint ptr %ulHTLinkFreq to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %ulHTLinkFreq, align 1
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %shl78 = shl i32 %49, 12
  %igp_ht_link_clk80 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 9
  %50 = insertvalue [1 x i32] undef, i32 %shl78, 0
  %call85 = call fastcc i32 @dfixed_div([1 x i32] %50, [1 x i32] [i32 409600])
  %51 = ptrtoint ptr %igp_ht_link_clk80 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call85, ptr %igp_ht_link_clk80, align 8
  %usMinHTLinkWidth = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V2, ptr %add.ptr, i32 0, i32 23
  %52 = ptrtoint ptr %usMinHTLinkWidth to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %usMinHTLinkWidth, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53)
  %conv88 = zext i16 %54 to i32
  %shl89 = shl nuw nsw i32 %conv88, 12
  %igp_ht_link_width91 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 10
  %55 = ptrtoint ptr %igp_ht_link_width91 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl89, ptr %igp_ht_link_width91, align 4
  br label %if.end109

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %igp_sideport_mclk93 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 7
  %56 = ptrtoint ptr %igp_sideport_mclk93 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 819200, ptr %igp_sideport_mclk93, align 8
  %igp_system_mclk95 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %57 = ptrtoint ptr %igp_system_mclk95 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 819200, ptr %igp_system_mclk95, align 4
  %igp_ht_link_clk97 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 9
  %58 = ptrtoint ptr %igp_ht_link_clk97 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4096000, ptr %igp_ht_link_clk97, align 8
  %igp_ht_link_width99 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 10
  %59 = ptrtoint ptr %igp_ht_link_width99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32768, ptr %igp_ht_link_width99, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %if.end109

if.else100:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %igp_sideport_mclk102 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 7
  %60 = ptrtoint ptr %igp_sideport_mclk102 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 819200, ptr %igp_sideport_mclk102, align 8
  %igp_system_mclk104 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %61 = ptrtoint ptr %igp_system_mclk104 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 819200, ptr %igp_system_mclk104, align 4
  %igp_ht_link_clk106 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 9
  %62 = ptrtoint ptr %igp_ht_link_clk106 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4096000, ptr %igp_ht_link_clk106, align 8
  %igp_ht_link_width108 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 10
  %63 = ptrtoint ptr %igp_ht_link_width108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 32768, ptr %igp_ht_link_width108, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %if.end109

if.end109:                                        ; preds = %if.else100, %sw.default, %if.end70, %if.end32
  %igp_system_mclk111 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 8
  %64 = ptrtoint ptr %igp_system_mclk111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %igp_system_mclk111, align 4
  %mul = shl i32 %65, 2
  %k8_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 11
  %66 = ptrtoint ptr %k8_bandwidth to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul, ptr %k8_bandwidth, align 8
  %igp_ht_link_clk117 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 9
  %67 = ptrtoint ptr %igp_ht_link_clk117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %igp_ht_link_clk117, align 8
  %conv118 = zext i32 %68 to i64
  %igp_ht_link_width120 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 10
  %69 = ptrtoint ptr %igp_ht_link_width120 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %igp_ht_link_width120, align 4
  %conv121 = zext i32 %70 to i64
  %ht_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 13
  %mul122 = shl nuw nsw i64 %conv118, 1
  %add123 = mul i64 %mul122, %conv121
  %71 = add i64 %add123, 4096
  %shl.i = lshr i64 %71, 12
  %div83.i253 = and i64 %shl.i, 8589934590
  %72 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83.i253, i64 3689348814741910323) #10, !srcloc !65
  %73 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div83.i253, i64 %72) #10, !srcloc !66
  %add185.i = add i64 %73, 1
  %div186268.i = lshr i64 %add185.i, 1
  %conv188.i = trunc i64 %div186268.i to i32
  %74 = ptrtoint ptr %ht_bandwidth to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv188.i, ptr %ht_bandwidth, align 8
  %max_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 6
  %75 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %76)
  %cmp = icmp ugt i32 %76, 20480
  br i1 %cmp, label %if.then136, label %if.end109.if.end139_crit_edge

if.end109.if.end139_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then136:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 20480, ptr %max_bandwidth, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end109.if.end139_crit_edge
  %igp_sideport_mclk141 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 7
  %78 = ptrtoint ptr %igp_sideport_mclk141 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %igp_sideport_mclk141, align 8
  %shr146 = mul i32 %79, 14
  %sideport_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 12
  %conv.i247 = zext i32 %shr146 to i64
  %80 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %conv.i247, i64 3689348814741910323) #10, !srcloc !65
  %81 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %conv.i247, i64 %80) #10, !srcloc !66
  %add185.i250 = add i64 %81, 1
  %div186268.i251 = lshr i64 %add185.i250, 1
  %conv188.i252 = trunc i64 %div186268.i251 to i32
  %82 = ptrtoint ptr %sideport_bandwidth to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv188.i252, ptr %sideport_bandwidth, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %crev) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frev) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_offset) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atom_parse_data_header(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfixed_div([1 x i32] %A.coerce, [1 x i32] %B.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %A.coerce.fca.0.extract = extractvalue [1 x i32] %A.coerce, 0
  %B.coerce.fca.0.extract = extractvalue [1 x i32] %B.coerce, 0
  %conv = zext i32 %A.coerce.fca.0.extract to i64
  %shl = shl nuw nsw i64 %conv, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %A.coerce.fca.0.extract)
  %cmp169 = icmp ult i32 %A.coerce.fca.0.extract, 524288
  br i1 %cmp169, label %if.then173, label %if.else179, !prof !67

if.then173:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv174 = trunc i64 %shl to i32
  %div177 = udiv i32 %conv174, %B.coerce.fca.0.extract
  %conv178 = zext i32 %div177 to i64
  br label %if.end183

if.else179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %B.coerce.fca.0.extract, i64 %shl) #10, !srcloc !68
  %asmresult1.i = extractvalue { i64, i64 } %0, 1
  br label %if.end183

if.end183:                                        ; preds = %if.else179, %if.then173
  %tmp.0 = phi i64 [ %conv178, %if.then173 ], [ %asmresult1.i, %if.else179 ]
  %add185 = add i64 %tmp.0, 1
  %div186268 = lshr i64 %add185, 1
  %conv188 = trunc i64 %div186268 to i32
  ret i32 %conv188
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs690_line_buffer_adjust(ptr nocapture noundef readonly %rdev, ptr noundef readonly %mode1, ptr noundef readonly %mode2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 25888
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %3 = lshr i32 %2, 24
  %and1 = and i32 %3, 4
  %tobool.not = icmp eq ptr %mode1, null
  %tobool2.not = icmp eq ptr %mode2, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.else34, label %if.then

if.then:                                          ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode1, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %hdisplay3 = getelementptr inbounds %struct.drm_display_mode, ptr %mode2, i32 0, i32 1
  %6 = ptrtoint ptr %hdisplay3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp = icmp ugt i16 %5, %7
  br i1 %cmp, label %if.then6, label %if.else13

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %5)
  %cmp9 = icmp ugt i16 %5, 2560
  %or = zext i1 %cmp9 to i32
  %spec.select91 = or i32 %and1, %or
  br label %if.end44

if.else13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %5)
  %cmp18 = icmp ugt i16 %7, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 2560, i16 %7)
  %cmp23 = icmp ugt i16 %7, 2560
  %or.cond92 = and i1 %cmp18, %cmp23
  %or26 = or i32 %and1, 3
  %spec.select93 = select i1 %or.cond92, i32 %or26, i32 %and1
  br label %if.end44

if.else34:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %8 = shl nuw nsw i32 %and1, 24
  br i1 %tobool.not, label %if.else38, label %if.then36

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i32 %8, 33554432
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %11, i32 25888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %9) #7, !srcloc !71
  br label %if.then46

if.else38:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i32 %8, 50331648
  %13 = select i1 %tobool2.not, i32 %8, i32 %12
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %15, i32 25888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 %13) #7, !srcloc !71
  br label %if.end50

if.end44:                                         ; preds = %if.else13, %if.then6
  %tmp.0 = phi i32 [ %spec.select91, %if.then6 ], [ %spec.select93, %if.else13 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #7
  %17 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %18, i32 25888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %16) #7, !srcloc !71
  br label %if.then46

if.then46:                                        ; preds = %if.end44, %if.then36
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode1, i32 0, i32 13
  %19 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crtc_hdisplay, align 4
  %conv47 = zext i16 %20 to i32
  %sub = add nuw nsw i32 %conv47, 8191
  %div = udiv i32 %sub, %conv47
  %crtcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4
  %21 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtcs, align 4
  %lb_vblank_lead_lines = getelementptr inbounds %struct.radeon_crtc, ptr %22, i32 0, i32 39
  %23 = ptrtoint ptr %lb_vblank_lead_lines to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div, ptr %lb_vblank_lead_lines, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %if.else38
  br i1 %tobool2.not, label %if.end50.if.end64_crit_edge, label %if.then52

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %crtc_hdisplay53 = getelementptr inbounds %struct.drm_display_mode, ptr %mode2, i32 0, i32 13
  %24 = ptrtoint ptr %crtc_hdisplay53 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtc_hdisplay53, align 4
  %conv54 = zext i16 %25 to i32
  %sub56 = add nuw nsw i32 %conv54, 8191
  %div59 = udiv i32 %sub56, %conv54
  %arrayidx62 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 1
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx62, align 4
  %lb_vblank_lead_lines63 = getelementptr inbounds %struct.radeon_crtc, ptr %27, i32 0, i32 39
  %28 = ptrtoint ptr %lb_vblank_lead_lines63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div59, ptr %lb_vblank_lead_lines63, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then52, %if.end50.if.end64_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs690_bandwidth_update(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %wm0_high = alloca %struct.rs690_watermark, align 4
  %wm0_low = alloca %struct.rs690_watermark, align 4
  %wm1_high = alloca %struct.rs690_watermark, align 4
  %wm1_low = alloca %struct.rs690_watermark, align 4
  %d1mode_priority_a_cnt = alloca i32, align 4
  %d1mode_priority_b_cnt = alloca i32, align 4
  %d2mode_priority_a_cnt = alloca i32, align 4
  %d2mode_priority_b_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm0_high) #7
  %0 = call ptr @memset(ptr %wm0_high, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm0_low) #7
  %1 = call ptr @memset(ptr %wm0_low, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm1_high) #7
  %2 = call ptr @memset(ptr %wm1_high, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wm1_low) #7
  %3 = call ptr @memset(ptr %wm1_low, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1mode_priority_a_cnt) #7
  %4 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %d1mode_priority_a_cnt, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d1mode_priority_b_cnt) #7
  %5 = ptrtoint ptr %d1mode_priority_b_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %d1mode_priority_b_cnt, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2mode_priority_a_cnt) #7
  %6 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %d2mode_priority_a_cnt, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d2mode_priority_b_cnt) #7
  %7 = ptrtoint ptr %d2mode_priority_b_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %d2mode_priority_b_cnt, align 4, !annotation !64
  %mode_config_initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %mode_config_initialized to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode_config_initialized, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @radeon_update_display_priority(ptr noundef %rdev) #7
  %crtcs = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4
  %10 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtcs, align 4
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12
  %spec.select = select i1 %tobool2.not, ptr null, ptr %mode
  %arrayidx11 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx11, align 4
  %enabled13 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %enabled13 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled13, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  %mode20 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 12
  %mode1.0 = select i1 %tobool14.not, ptr null, ptr %mode20
  %disp_priority = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %18 = ptrtoint ptr %disp_priority to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %20 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %family, align 4
  %.off = add i32 %21, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then25, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mc_rreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %22 = ptrtoint ptr %mc_rreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mc_rreg, align 8
  %call = tail call i32 %23(ptr noundef %rdev, i32 noundef 260) #7
  %and26 = and i32 %call, -65281
  %tobool27.not = icmp eq ptr %spec.select, null
  %or = or i32 %and26, 256
  %spec.select122 = select i1 %tobool27.not, i32 %and26, i32 %or
  %tobool30.not = icmp eq ptr %mode1.0, null
  %or32 = or i32 %spec.select122, 4096
  %tmp.1 = select i1 %tobool30.not, i32 %spec.select122, i32 %or32
  %mc_wreg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %24 = ptrtoint ptr %mc_wreg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mc_wreg, align 4
  tail call void %25(ptr noundef %rdev, i32 noundef 260, i32 noundef %tmp.1) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  tail call void @rs690_line_buffer_adjust(ptr noundef %rdev, ptr noundef %spec.select, ptr noundef %mode1.0)
  %family35 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %26 = ptrtoint ptr %family35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family35, align 4
  %.off123 = add i32 %27, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off123)
  %switch124 = icmp ult i32 %.off123, 2
  br i1 %switch124, label %if.then40, label %if.end34.if.end41_crit_edge

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 27804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !71
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end34.if.end41_crit_edge
  %30 = ptrtoint ptr %family35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %family35, align 4
  %.off125 = add i32 %31, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off125)
  %switch126 = icmp ult i32 %.off125, 2
  br i1 %switch126, label %if.then47, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %rmmio.i127 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %32 = ptrtoint ptr %rmmio.i127 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %33, i32 27804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 33554432) #7, !srcloc !71
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end41.if.end48_crit_edge
  %34 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtcs, align 4
  call fastcc void @rs690_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %35, ptr noundef nonnull %wm0_high, i1 noundef zeroext false)
  %36 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx11, align 4
  call fastcc void @rs690_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %37, ptr noundef nonnull %wm1_high, i1 noundef zeroext false)
  %38 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crtcs, align 4
  call fastcc void @rs690_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %39, ptr noundef nonnull %wm0_low, i1 noundef zeroext true)
  %40 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx11, align 4
  call fastcc void @rs690_crtc_bandwidth_compute(ptr noundef %rdev, ptr noundef %41, ptr noundef nonnull %wm1_low, i1 noundef zeroext true)
  %42 = ptrtoint ptr %wm0_high to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wm0_high, align 4
  %sub = add i32 %43, -1
  %44 = ptrtoint ptr %wm1_high to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wm1_high, align 4
  %sub62 = shl i32 %45, 16
  %shl = add i32 %sub62, -65536
  %or63 = or i32 %shl, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %or63) #7
  %rmmio.i129 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %47 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %48, i32 27992
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %46) #7, !srcloc !71
  call fastcc void @rs690_compute_mode_priority(ptr noundef %rdev, ptr noundef nonnull %wm0_high, ptr noundef nonnull %wm1_high, ptr noundef %spec.select, ptr noundef %mode1.0, ptr noundef nonnull %d1mode_priority_a_cnt, ptr noundef nonnull %d2mode_priority_a_cnt)
  call fastcc void @rs690_compute_mode_priority(ptr noundef %rdev, ptr noundef nonnull %wm0_low, ptr noundef nonnull %wm1_low, ptr noundef %spec.select, ptr noundef %mode1.0, ptr noundef nonnull %d1mode_priority_b_cnt, ptr noundef nonnull %d2mode_priority_b_cnt)
  %49 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d1mode_priority_a_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %52 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i132 = getelementptr i8, ptr %53, i32 25928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %51) #7, !srcloc !71
  %54 = ptrtoint ptr %d1mode_priority_b_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %d1mode_priority_b_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %57 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i134 = getelementptr i8, ptr %58, i32 25932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %56) #7, !srcloc !71
  %59 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %d2mode_priority_a_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  %62 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i136 = getelementptr i8, ptr %63, i32 27976
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %61) #7, !srcloc !71
  %64 = ptrtoint ptr %d2mode_priority_b_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %d2mode_priority_b_cnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %67 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i138 = getelementptr i8, ptr %68, i32 27980
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %66) #7, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2mode_priority_b_cnt) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d2mode_priority_a_cnt) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1mode_priority_b_cnt) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d1mode_priority_a_cnt) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm1_low) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm1_high) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm0_low) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wm0_high) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_display_priority(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs690_crtc_bandwidth_compute(ptr noundef %rdev, ptr nocapture noundef readonly %crtc, ptr nocapture noundef %wm, i1 noundef zeroext %low) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %enabled = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 11
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %wm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %wm, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %family, align 4
  %.off = add i32 %4, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %5 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp5 = icmp eq i32 %6, 2
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %dpm_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 50
  %7 = ptrtoint ptr %dpm_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpm_enabled, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true6.if.else_crit_edge, label %if.then9

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %9 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %asic, align 8
  %get_sclk = getelementptr inbounds %struct.radeon_asic, ptr %10, i32 0, i32 21, i32 10
  %11 = ptrtoint ptr %get_sclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_sclk, align 4
  %call = tail call i32 %12(ptr noundef %rdev, i1 noundef zeroext %low) #7
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %current_sclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 25
  %13 = ptrtoint ptr %current_sclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %current_sclk, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %selected_sclk.0 = phi i32 [ %call, %if.then9 ], [ %14, %if.else ]
  %shl = shl i32 %selected_sclk.0, 12
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %shl, 0
  %call14 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert, [1 x i32] [i32 409600])
  %sclk16 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 15
  %15 = ptrtoint ptr %sclk16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %sclk16, align 8
  %16 = lshr i32 %.unpack, 3
  %narrow = add nuw nsw i32 %16, 1
  %17 = lshr i32 %narrow, 1
  %vsc = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 20
  %18 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vsc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %19)
  %cmp20 = icmp ugt i32 %19, 8192
  %spec.select = select i1 %cmp20, i32 8192, i32 4096
  %20 = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 13
  %22 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %crtc_hdisplay, align 4
  %conv = zext i16 %23 to i32
  %shl25 = shl nuw nsw i32 %conv, 4
  %conv29 = zext i32 %shl25 to i64
  %conv31 = zext i32 %spec.select to i64
  %mul = mul nuw nsw i64 %conv29, %conv31
  %shr = lshr exact i64 %mul, 12
  %conv32 = trunc i64 %shr to i32
  %shl.i470 = and i32 %conv32, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i470, i32 %conv32)
  %cmp.i = icmp ult i32 %shl.i470, %conv32
  %24 = add nuw nsw i32 %conv32, 4096
  %shl1.i = and i32 %24, -4096
  %retval.0.i = select i1 %cmp.i, i32 %shl1.i, i32 %shl.i470
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %23)
  %cmp35 = icmp ult i16 %23, 1024
  %shr40 = lshr exact i32 %retval.0.i, 12
  %storemerge = select i1 %cmp35, i32 4, i32 %shr40
  %25 = ptrtoint ptr %wm to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %wm, align 4
  %26 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode1, align 4
  %shl43 = shl i32 %27, 12
  %.fca.0.insert350 = insertvalue [1 x i32] poison, i32 %shl43, 0
  %call46 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert350, [1 x i32] [i32 4096000])
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call46, i64 33554432000) #10, !srcloc !68
  %asmresult1.i.i = extractvalue { i64, i64 } %28, 1
  %add185.i473 = add i64 %asmresult1.i.i, 1
  %div186268.i474 = lshr i64 %add185.i473, 1
  %conv188.i475 = trunc i64 %div186268.i474 to i32
  %rmx_type = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 17
  %29 = ptrtoint ptr %rmx_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rmx_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp50.not = icmp eq i32 %30, 0
  br i1 %cmp50.not, label %if.end12.dfixed_div.exit713_crit_edge, label %if.then52

if.end12.dfixed_div.exit713_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfixed_div.exit713

if.then52:                                        ; preds = %if.end12
  %31 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vsc, align 4
  %33 = tail call i32 @llvm.umax.i32(i32 %32, i32 8192)
  %conv59 = zext i32 %33 to i64
  %hsc = getelementptr inbounds %struct.radeon_crtc, ptr %crtc, i32 0, i32 21
  %34 = ptrtoint ptr %hsc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hsc, align 8
  %conv60 = zext i32 %35 to i64
  %mul61 = mul nuw i64 %conv59, %conv60
  %add62 = add nuw i64 %mul61, 2048
  %shr63 = lshr i64 %add62, 12
  %conv.i476 = and i64 %shr63, 4294967295
  %add185.i481 = add nuw nsw i64 %conv.i476, 1
  %div186268.i482 = lshr i64 %add185.i481, 1
  %conv188.i483 = trunc i64 %div186268.i482 to i32
  %conv.i484 = shl i64 %div186268.i474, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %conv188.i475)
  %cmp169.i = icmp ult i32 %conv188.i475, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !67

if.then173.i:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %conv174.i = trunc i64 %conv.i484 to i32
  %div177.i = udiv i32 %conv174.i, %conv188.i483
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit598

if.else179.i:                                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i485 = and i64 %conv.i484, 35184372080640
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv188.i483, i64 %shl.i485) #10, !srcloc !68
  %asmresult1.i.i593 = extractvalue { i64, i64 } %36, 1
  br label %dfixed_div.exit598

dfixed_div.exit598:                               ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i594 = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i593, %if.else179.i ]
  %add185.i595 = add i64 %tmp.0.i594, 1
  %div186268.i596 = lshr i64 %add185.i595, 1
  %conv188.i597 = trunc i64 %div186268.i596 to i32
  br label %dfixed_div.exit713

dfixed_div.exit713:                               ; preds = %dfixed_div.exit598, %if.end12.dfixed_div.exit713_crit_edge
  %consumption_time.sroa.0.0 = phi i32 [ %conv188.i597, %dfixed_div.exit598 ], [ %conv188.i475, %if.end12.dfixed_div.exit713_crit_edge ]
  %div177.i706 = udiv i32 33554432, %consumption_time.sroa.0.0
  %narrow1249 = add nuw nsw i32 %div177.i706, 1
  %37 = lshr i32 %narrow1249, 1
  %consumption_rate = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 4
  %38 = ptrtoint ptr %consumption_rate to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %consumption_rate, align 4
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 18
  %39 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %crtc_htotal, align 2
  %conv78 = zext i16 %40 to i32
  %shl79 = shl nuw nsw i32 %conv78, 12
  %conv80 = zext i32 %shl79 to i64
  %conv81 = and i64 %div186268.i474, 4294967295
  %mul82 = mul nuw nsw i64 %conv81, %conv80
  %shr84 = lshr exact i64 %mul82, 12
  %conv85 = trunc i64 %shr84 to i32
  %41 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %crtc_hdisplay, align 4
  %conv94 = zext i16 %42 to i32
  %shl95 = shl nuw nsw i32 %conv94, 12
  %conv96 = and i64 %shr84, 4294967295
  %conv97 = zext i32 %shl95 to i64
  %mul98 = mul nuw nsw i64 %conv96, %conv97
  %active_time = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 5
  %conv.i714 = shl nuw nsw i64 %mul98, 1
  %43 = and i64 %mul98, 17590038560768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp169.i822 = icmp eq i64 %43, 0
  br i1 %cmp169.i822, label %if.then173.i827, label %if.else179.i829, !prof !67

if.then173.i827:                                  ; preds = %dfixed_div.exit713
  call void @__sanitizer_cov_trace_pc() #9
  %conv174.i824 = trunc i64 %conv.i714 to i32
  %div177.i825 = udiv i32 %conv174.i824, %shl79
  %conv178.i826 = zext i32 %div177.i825 to i64
  br label %dfixed_div.exit834

if.else179.i829:                                  ; preds = %dfixed_div.exit713
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i715 = and i64 %conv.i714, 35184372080640
  %44 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl79, i64 %shl.i715) #10, !srcloc !68
  %asmresult1.i.i828 = extractvalue { i64, i64 } %44, 1
  br label %dfixed_div.exit834

dfixed_div.exit834:                               ; preds = %if.else179.i829, %if.then173.i827
  %tmp.0.i830 = phi i64 [ %conv178.i826, %if.then173.i827 ], [ %asmresult1.i.i828, %if.else179.i829 ]
  %add185.i831 = add i64 %tmp.0.i830, 1
  %div186268.i832 = lshr i64 %add185.i831, 1
  %conv188.i833 = trunc i64 %div186268.i832 to i32
  %45 = ptrtoint ptr %active_time to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv188.i833, ptr %active_time, align 4
  %igp_sideport_enabled = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 14
  %46 = ptrtoint ptr %igp_sideport_enabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %igp_sideport_enabled, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool107.not = icmp eq i8 %47, 0
  br i1 %tobool107.not, label %if.else133, label %if.then108

if.then108:                                       ; preds = %dfixed_div.exit834
  call void @__sanitizer_cov_trace_pc() #9
  %sideport_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 12
  %48 = ptrtoint ptr %sideport_bandwidth to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sideport_bandwidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %49)
  %cmp110 = icmp ule i32 %17, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool115.not = icmp eq i32 %49, 0
  %or.cond = or i1 %cmp110, %tobool115.not
  %max_bandwidth.sroa.0.0 = select i1 %or.cond, i32 %17, i32 %49
  %igp_sideport_mclk = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 7
  %50 = ptrtoint ptr %igp_sideport_mclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %.unpack461 = load i32, ptr %igp_sideport_mclk, align 8
  %51 = insertvalue [1 x i32] undef, i32 %.unpack461, 0
  %call123 = tail call fastcc i32 @dfixed_div([1 x i32] %51, [1 x i32] [i32 4096000])
  %52 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call123, i64 9932111872000) #10, !srcloc !68
  %asmresult1.i.i942 = extractvalue { i64, i64 } %52, 1
  %add185.i945 = add i64 %asmresult1.i.i942, 1
  %div186268.i946 = lshr i64 %add185.i945, 1
  %conv188.i947 = trunc i64 %div186268.i946 to i32
  %shr131 = mul i32 %conv188.i947, 1000
  br label %if.else167.i1055

if.else133:                                       ; preds = %dfixed_div.exit834
  call void @__sanitizer_cov_trace_pc() #9
  %k8_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 11
  %53 = ptrtoint ptr %k8_bandwidth to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %k8_bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %54)
  %cmp135 = icmp ule i32 %17, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool140.not = icmp eq i32 %54, 0
  %or.cond462 = or i1 %cmp135, %tobool140.not
  %max_bandwidth.sroa.0.1 = select i1 %or.cond462, i32 %17, i32 %54
  %ht_bandwidth = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 13
  %55 = ptrtoint ptr %ht_bandwidth to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ht_bandwidth, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %max_bandwidth.sroa.0.1, i32 %56)
  %cmp146 = icmp ule i32 %max_bandwidth.sroa.0.1, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool151.not = icmp eq i32 %56, 0
  %or.cond463 = or i1 %tobool151.not, %cmp146
  %max_bandwidth.sroa.0.2 = select i1 %or.cond463, i32 %max_bandwidth.sroa.0.1, i32 %56
  br label %if.else167.i1055

if.else167.i1055:                                 ; preds = %if.else133, %if.then108
  %read_delay_latency.sroa.0.0 = phi i32 [ %shr131, %if.then108 ], [ 20480000, %if.else133 ]
  %max_bandwidth.sroa.0.3 = phi i32 [ %max_bandwidth.sroa.0.0, %if.then108 ], [ %max_bandwidth.sroa.0.2, %if.else133 ]
  %mul159 = shl i32 %max_bandwidth.sroa.0.3, 4
  %57 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul159, i64 33554432000) #10, !srcloc !68
  %asmresult1.i.i1056 = extractvalue { i64, i64 } %57, 1
  %add185.i1059 = add i64 %asmresult1.i.i1056, 1
  %div186268.i1060 = lshr i64 %add185.i1059, 1
  %conv188.i1061 = trunc i64 %div186268.i1060 to i32
  %shr170 = mul i32 %conv188.i1061, 3328
  %conv.i1063 = zext i32 %shr170 to i64
  %58 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %conv.i1063, i64 3689348814741910323) #10, !srcloc !65
  %59 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %conv.i1063, i64 %58) #10, !srcloc !66
  %add185.i1097 = add i64 %59, 1
  %div186268.i1098 = lshr i64 %add185.i1097, 1
  %conv188.i1099 = trunc i64 %div186268.i1098 to i32
  %shr184 = mul i32 %conv188.i1099, 3
  %mul191 = shl i32 %conv188.i1099, 1
  %shr184.pn = select i1 %cmp20, i32 %shr184, i32 %mul191
  %add197.sink = add i32 %shr184.pn, %read_delay_latency.sroa.0.0
  %60 = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add197.sink, ptr %60, align 4
  %add200 = add nuw nsw i32 %storemerge, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add200, i32 %shr40)
  %cmp202.not = icmp ult i32 %add200, %shr40
  br i1 %cmp202.not, label %if.else205, label %if.else167.i1055.if.end216_crit_edge

if.else167.i1055.if.end216_crit_edge:             ; preds = %if.else167.i1055
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

if.else205:                                       ; preds = %if.else167.i1055
  call void @__sanitizer_cov_trace_pc() #9
  %sub.neg = mul nsw i32 %storemerge, -4096
  %shl207.neg = add nuw nsw i32 %retval.0.i, 8192
  %sub208 = add nsw i32 %shl207.neg, %sub.neg
  %conv209 = zext i32 %sub208 to i64
  %conv210 = and i64 %div186268.i1098, 4294967295
  %mul211 = mul nuw i64 %conv210, %conv209
  %shr213 = lshr exact i64 %mul211, 12
  %conv214 = trunc i64 %shr213 to i32
  %sub215 = sub i32 %conv85, %conv214
  br label %if.end216

if.end216:                                        ; preds = %if.else205, %if.else167.i1055.if.end216_crit_edge
  %tolerable_latency.sroa.0.0 = phi i32 [ %sub215, %if.else205 ], [ %conv85, %if.else167.i1055.if.end216_crit_edge ]
  %dbpp = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 6
  %62 = ptrtoint ptr %dbpp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 131072, ptr %dbpp, align 4
  %63 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %crtc_hdisplay, align 4
  %conv220 = zext i16 %64 to i32
  %shl221 = shl nuw nsw i32 %conv220, 8
  %priority_mark_max = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 7
  %shl.i1109 = and i32 %shl221, 16773120
  call void @__sanitizer_cov_trace_cmp4(i32 %shl221, i32 %shl.i1109)
  %cmp.i1110 = icmp ugt i32 %shl221, %shl.i1109
  %65 = add nuw nsw i32 %shl221, 4096
  %shl1.i1111 = and i32 %65, 33550336
  %retval.0.i1112 = select i1 %cmp.i1110, i32 %shl1.i1111, i32 %shl.i1109
  %66 = ptrtoint ptr %priority_mark_max to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i1112, ptr %priority_mark_max, align 4
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %60, align 4
  %sub232 = sub i32 %tolerable_latency.sroa.0.0, %68
  %conv.i1113 = zext i32 %sub232 to i64
  %shl.i1114 = shl nuw nsw i64 %conv.i1113, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %sub232)
  %cmp169.i1221 = icmp ult i32 %sub232, 524288
  br i1 %cmp169.i1221, label %if.then173.i1226, label %if.else179.i1228, !prof !67

if.then173.i1226:                                 ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %conv174.i1223 = trunc i64 %shl.i1114 to i32
  %div177.i1224 = udiv i32 %conv174.i1223, %consumption_time.sroa.0.0
  %conv178.i1225 = zext i32 %div177.i1224 to i64
  br label %dfixed_div.exit1233

if.else179.i1228:                                 ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %69 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %consumption_time.sroa.0.0, i64 %shl.i1114) #10, !srcloc !68
  %asmresult1.i.i1227 = extractvalue { i64, i64 } %69, 1
  br label %dfixed_div.exit1233

dfixed_div.exit1233:                              ; preds = %if.else179.i1228, %if.then173.i1226
  %tmp.0.i1229 = phi i64 [ %conv178.i1225, %if.then173.i1226 ], [ %asmresult1.i.i1227, %if.else179.i1228 ]
  %add185.i1230 = add i64 %tmp.0.i1229, 1
  %sum.shift = lshr i64 %add185.i1230, 13
  %shr2361248 = trunc i64 %sum.shift to i32
  %shr236 = and i32 %shr2361248, 1048575
  %70 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %crtc_hdisplay, align 4
  %conv240 = zext i16 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr236, i32 %conv240)
  %cmp241 = icmp ugt i32 %shr236, %conv240
  br i1 %cmp241, label %if.then243, label %if.else244

if.then243:                                       ; preds = %dfixed_div.exit1233
  call void @__sanitizer_cov_trace_pc() #9
  %priority_mark = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 8
  %72 = ptrtoint ptr %priority_mark to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 40960, ptr %priority_mark, align 4
  br label %cleanup

if.else244:                                       ; preds = %dfixed_div.exit1233
  call void @__sanitizer_cov_trace_pc() #9
  %73 = lshr i64 %add185.i1230, 4
  %shr.i1237 = and i64 %73, 536870911
  %add185.i1240 = add nuw nsw i64 %shr.i1237, 1
  %div186268.i1241 = lshr i64 %add185.i1240, 1
  %conv188.i1242 = trunc i64 %div186268.i1241 to i32
  %priority_mark248 = getelementptr inbounds %struct.rs690_watermark, ptr %wm, i32 0, i32 8
  %shl.i1243 = and i32 %conv188.i1242, 536866816
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i1243, i32 %conv188.i1242)
  %cmp.i1244 = icmp ult i32 %shl.i1243, %conv188.i1242
  %74 = add nuw nsw i32 %conv188.i1242, 4096
  %shl1.i1245 = and i32 %74, 1073737728
  %retval.0.i1246 = select i1 %cmp.i1244, i32 %shl1.i1245, i32 %shl.i1243
  %sub255 = sub nsw i32 %retval.0.i1112, %retval.0.i1246
  %75 = ptrtoint ptr %priority_mark248 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub255, ptr %priority_mark248, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else244, %if.then243, %if.then
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rs690_compute_mode_priority(ptr nocapture noundef readonly %rdev, ptr nocapture noundef readonly %wm0, ptr nocapture noundef readonly %wm1, ptr noundef readnone %mode0, ptr noundef readnone %mode1, ptr nocapture noundef %d1mode_priority_a_cnt, ptr nocapture noundef %d2mode_priority_a_cnt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65536, ptr %d1mode_priority_a_cnt, align 4
  %1 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65536, ptr %d2mode_priority_a_cnt, align 4
  %tobool.not = icmp eq ptr %mode0, null
  %tobool1.not = icmp eq ptr %mode1, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.else127, label %if.then

if.then:                                          ; preds = %entry
  %dbpp = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 6
  %2 = ptrtoint ptr %dbpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dbpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %3)
  %cmp = icmp ugt i32 %3, 266239
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %3 to i64
  %num_line_pair = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 1
  %4 = ptrtoint ptr %num_line_pair to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_line_pair, align 4
  %conv4 = zext i32 %5 to i64
  %mul = mul nuw i64 %conv4, %conv
  %add = add nuw i64 %mul, 2048
  %shr5 = lshr i64 %add, 12
  %conv6 = trunc i64 %shr5 to i32
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %num_line_pair7 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 1
  %6 = ptrtoint ptr %num_line_pair7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_line_pair7, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %a.sroa.0.0 = phi i32 [ %conv6, %if.then2 ], [ %7, %if.else ]
  %dbpp8 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 6
  %8 = ptrtoint ptr %dbpp8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dbpp8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %9)
  %cmp10 = icmp ugt i32 %9, 266239
  br i1 %cmp10, label %if.then12, label %if.else21

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i32 %9 to i64
  %num_line_pair15 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 1
  %10 = ptrtoint ptr %num_line_pair15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_line_pair15, align 4
  %conv16 = zext i32 %11 to i64
  %mul17 = mul nuw i64 %conv16, %conv14
  %add18 = add nuw i64 %mul17, 2048
  %shr19 = lshr i64 %add18, 12
  %conv20 = trunc i64 %shr19 to i32
  br label %if.end23

if.else21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %num_line_pair22 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 1
  %12 = ptrtoint ptr %num_line_pair22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_line_pair22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.then12
  %b.sroa.0.0 = phi i32 [ %conv20, %if.then12 ], [ %13, %if.else21 ]
  %add24 = add i32 %b.sroa.0.0, %a.sroa.0.0
  %sclk = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 9
  %14 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack478 = load i32, ptr %sclk, align 4
  %conv.i = zext i32 %.unpack478 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %.unpack478)
  %cmp169.i = icmp ult i32 %.unpack478, 524288
  br i1 %cmp169.i, label %if.then173.i, label %if.else179.i, !prof !67

if.then173.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %conv174.i = trunc i64 %shl.i to i32
  %div177.i = udiv i32 %conv174.i, %add24
  %conv178.i = zext i32 %div177.i to i64
  br label %dfixed_div.exit

if.else179.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add24, i64 %shl.i) #10, !srcloc !68
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  br label %dfixed_div.exit

dfixed_div.exit:                                  ; preds = %if.else179.i, %if.then173.i
  %tmp.0.i = phi i64 [ %conv178.i, %if.then173.i ], [ %asmresult1.i.i, %if.else179.i ]
  %add185.i = add i64 %tmp.0.i, 1
  %div186268.i = lshr i64 %add185.i, 1
  %conv188.i = trunc i64 %div186268.i to i32
  %consumption_rate = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 4
  %16 = ptrtoint ptr %consumption_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %consumption_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv188.i)
  %cmp26 = icmp ugt i32 %17, %conv188.i
  br i1 %cmp26, label %if.then28, label %if.else47

if.then28:                                        ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %17, %conv188.i
  %conv30 = zext i32 %sub to i64
  %active_time = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 5
  %18 = ptrtoint ptr %active_time to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_time, align 4
  %conv31 = zext i32 %19 to i64
  %mul32 = mul nuw i64 %conv31, %conv30
  %add33 = add nuw i64 %mul32, 2048
  %shr34 = lshr i64 %add33, 12
  %conv35 = trunc i64 %shr34 to i32
  %worst_case_latency = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 3
  %20 = ptrtoint ptr %worst_case_latency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %worst_case_latency, align 4
  %conv36 = zext i32 %21 to i64
  %conv38 = zext i32 %17 to i64
  %mul39 = mul nuw i64 %conv36, %conv38
  %add40 = add nuw i64 %mul39, 2048
  %shr41 = lshr i64 %add40, 12
  %conv42 = trunc i64 %shr41 to i32
  %add43 = add i32 %conv42, %conv35
  br label %if.end59

if.else47:                                        ; preds = %dfixed_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  %worst_case_latency48 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 3
  %22 = ptrtoint ptr %worst_case_latency48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %worst_case_latency48, align 4
  %conv49 = zext i32 %23 to i64
  %conv51 = zext i32 %17 to i64
  %mul52 = mul nuw i64 %conv49, %conv51
  %add53 = add nuw i64 %mul52, 2048
  %shr54 = lshr i64 %add53, 12
  %conv55 = trunc i64 %shr54 to i32
  br label %if.end59

if.end59:                                         ; preds = %if.else47, %if.then28
  %conv55.sink = phi i32 [ %conv55, %if.else47 ], [ %add43, %if.then28 ]
  %.fca.0.insert333 = insertvalue [1 x i32] poison, i32 %conv55.sink, 0
  %call58 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert333, [1 x i32] [i32 65536000])
  %consumption_rate60 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 4
  %24 = ptrtoint ptr %consumption_rate60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %consumption_rate60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv188.i)
  %cmp61 = icmp ugt i32 %25, %conv188.i
  br i1 %cmp61, label %if.then63, label %if.else85

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %sub65 = sub i32 %25, %conv188.i
  %conv66 = zext i32 %sub65 to i64
  %active_time67 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 5
  %26 = ptrtoint ptr %active_time67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_time67, align 4
  %conv68 = zext i32 %27 to i64
  %mul69 = mul nuw i64 %conv68, %conv66
  %add70 = add nuw i64 %mul69, 2048
  %shr71 = lshr i64 %add70, 12
  %conv72 = trunc i64 %shr71 to i32
  %worst_case_latency73 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 3
  %28 = ptrtoint ptr %worst_case_latency73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %worst_case_latency73, align 4
  %conv74 = zext i32 %29 to i64
  %conv76 = zext i32 %25 to i64
  %mul77 = mul nuw i64 %conv74, %conv76
  %add78 = add nuw i64 %mul77, 2048
  %shr79 = lshr i64 %add78, 12
  %conv80 = trunc i64 %shr79 to i32
  %add81 = add i32 %conv80, %conv72
  br label %if.end97

if.else85:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %worst_case_latency86 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 3
  %30 = ptrtoint ptr %worst_case_latency86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %worst_case_latency86, align 4
  %conv87 = zext i32 %31 to i64
  %conv89 = zext i32 %25 to i64
  %mul90 = mul nuw i64 %conv87, %conv89
  %add91 = add nuw i64 %mul90, 2048
  %shr92 = lshr i64 %add91, 12
  %conv93 = trunc i64 %shr92 to i32
  br label %if.end97

if.end97:                                         ; preds = %if.else85, %if.then63
  %conv93.sink = phi i32 [ %conv93, %if.else85 ], [ %add81, %if.then63 ]
  %.fca.0.insert339 = insertvalue [1 x i32] poison, i32 %conv93.sink, 0
  %call96 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert339, [1 x i32] [i32 65536000])
  %priority_mark = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 8
  %32 = ptrtoint ptr %priority_mark to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %priority_mark, align 4
  %34 = tail call i32 @llvm.umax.i32(i32 %33, i32 %call58)
  %priority_mark_max = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 7
  %35 = ptrtoint ptr %priority_mark_max to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority_mark_max, align 4
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %34)
  %priority_mark108 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 8
  %38 = ptrtoint ptr %priority_mark108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %priority_mark108, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 %call96)
  %priority_mark_max114 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 7
  %41 = ptrtoint ptr %priority_mark_max114 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %priority_mark_max114, align 4
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 %40)
  %shr120 = lshr i32 %37, 12
  %44 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shr120, ptr %d1mode_priority_a_cnt, align 4
  %shr121 = lshr i32 %43, 12
  %45 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr121, ptr %d2mode_priority_a_cnt, align 4
  %disp_priority = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %46 = ptrtoint ptr %disp_priority to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %disp_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp122 = icmp eq i32 %47, 2
  br i1 %cmp122, label %if.then124, label %if.end97.if.end289_crit_edge

if.end97.if.end289_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.then124:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %d1mode_priority_a_cnt, align 4
  %or = or i32 %49, 1048576
  store i32 %or, ptr %d1mode_priority_a_cnt, align 4
  %50 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %d2mode_priority_a_cnt, align 4
  br label %if.end289.sink.split

if.else127:                                       ; preds = %entry
  br i1 %tobool.not, label %if.else207, label %if.then129

if.then129:                                       ; preds = %if.else127
  %dbpp130 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 6
  %52 = ptrtoint ptr %dbpp130 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dbpp130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %53)
  %cmp132 = icmp ugt i32 %53, 266239
  br i1 %cmp132, label %if.then134, label %if.else143

if.then134:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  %conv136 = zext i32 %53 to i64
  %num_line_pair137 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 1
  %54 = ptrtoint ptr %num_line_pair137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_line_pair137, align 4
  %conv138 = zext i32 %55 to i64
  %mul139 = mul nuw i64 %conv138, %conv136
  %add140 = add nuw i64 %mul139, 2048
  %shr141 = lshr i64 %add140, 12
  %conv142 = trunc i64 %shr141 to i32
  br label %if.end145

if.else143:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  %num_line_pair144 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 1
  %56 = ptrtoint ptr %num_line_pair144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_line_pair144, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else143, %if.then134
  %a.sroa.0.1 = phi i32 [ %conv142, %if.then134 ], [ %57, %if.else143 ]
  %sclk146 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 9
  %58 = ptrtoint ptr %sclk146 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.unpack477 = load i32, ptr %sclk146, align 4
  %conv.i481 = zext i32 %.unpack477 to i64
  %shl.i482 = shl nuw nsw i64 %conv.i481, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %.unpack477)
  %cmp169.i589 = icmp ult i32 %.unpack477, 524288
  br i1 %cmp169.i589, label %if.then173.i594, label %if.else179.i596, !prof !67

if.then173.i594:                                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  %conv174.i591 = trunc i64 %shl.i482 to i32
  %div177.i592 = udiv i32 %conv174.i591, %a.sroa.0.1
  %conv178.i593 = zext i32 %div177.i592 to i64
  br label %dfixed_div.exit601

if.else179.i596:                                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %a.sroa.0.1, i64 %shl.i482) #10, !srcloc !68
  %asmresult1.i.i595 = extractvalue { i64, i64 } %59, 1
  br label %dfixed_div.exit601

dfixed_div.exit601:                               ; preds = %if.else179.i596, %if.then173.i594
  %tmp.0.i597 = phi i64 [ %conv178.i593, %if.then173.i594 ], [ %asmresult1.i.i595, %if.else179.i596 ]
  %add185.i598 = add i64 %tmp.0.i597, 1
  %div186268.i599 = lshr i64 %add185.i598, 1
  %conv188.i600 = trunc i64 %div186268.i599 to i32
  %consumption_rate150 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 4
  %60 = ptrtoint ptr %consumption_rate150 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %consumption_rate150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %conv188.i600)
  %cmp151 = icmp ugt i32 %61, %conv188.i600
  br i1 %cmp151, label %if.then153, label %if.else175

if.then153:                                       ; preds = %dfixed_div.exit601
  call void @__sanitizer_cov_trace_pc() #9
  %sub155 = sub i32 %61, %conv188.i600
  %conv156 = zext i32 %sub155 to i64
  %active_time157 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 5
  %62 = ptrtoint ptr %active_time157 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %active_time157, align 4
  %conv158 = zext i32 %63 to i64
  %mul159 = mul nuw i64 %conv158, %conv156
  %add160 = add nuw i64 %mul159, 2048
  %shr161 = lshr i64 %add160, 12
  %conv162 = trunc i64 %shr161 to i32
  %worst_case_latency163 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 3
  %64 = ptrtoint ptr %worst_case_latency163 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %worst_case_latency163, align 4
  %conv164 = zext i32 %65 to i64
  %conv166 = zext i32 %61 to i64
  %mul167 = mul nuw i64 %conv164, %conv166
  %add168 = add nuw i64 %mul167, 2048
  %shr169 = lshr i64 %add168, 12
  %conv170 = trunc i64 %shr169 to i32
  %add171 = add i32 %conv170, %conv162
  br label %if.end187

if.else175:                                       ; preds = %dfixed_div.exit601
  call void @__sanitizer_cov_trace_pc() #9
  %worst_case_latency176 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 3
  %66 = ptrtoint ptr %worst_case_latency176 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %worst_case_latency176, align 4
  %conv177 = zext i32 %67 to i64
  %conv179 = zext i32 %61 to i64
  %mul180 = mul nuw i64 %conv177, %conv179
  %add181 = add nuw i64 %mul180, 2048
  %shr182 = lshr i64 %add181, 12
  %conv183 = trunc i64 %shr182 to i32
  br label %if.end187

if.end187:                                        ; preds = %if.else175, %if.then153
  %conv183.sink = phi i32 [ %conv183, %if.else175 ], [ %add171, %if.then153 ]
  %.fca.0.insert348 = insertvalue [1 x i32] poison, i32 %conv183.sink, 0
  %call186 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert348, [1 x i32] [i32 65536000])
  %priority_mark188 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 8
  %68 = ptrtoint ptr %priority_mark188 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %priority_mark188, align 4
  %70 = tail call i32 @llvm.umax.i32(i32 %69, i32 %call186)
  %priority_mark_max194 = getelementptr inbounds %struct.rs690_watermark, ptr %wm0, i32 0, i32 7
  %71 = ptrtoint ptr %priority_mark_max194 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %priority_mark_max194, align 4
  %73 = tail call i32 @llvm.umax.i32(i32 %72, i32 %70)
  %shr200 = lshr i32 %73, 12
  %74 = ptrtoint ptr %d1mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr200, ptr %d1mode_priority_a_cnt, align 4
  %disp_priority201 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %75 = ptrtoint ptr %disp_priority201 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %disp_priority201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp202 = icmp eq i32 %76, 2
  br i1 %cmp202, label %if.end187.if.end289.sink.split_crit_edge, label %if.end187.if.end289_crit_edge

if.end187.if.end289_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.end187.if.end289.sink.split_crit_edge:         ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289.sink.split

if.else207:                                       ; preds = %if.else127
  br i1 %tobool1.not, label %if.else207.if.end289_crit_edge, label %if.then209

if.else207.if.end289_crit_edge:                   ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.then209:                                       ; preds = %if.else207
  %dbpp210 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 6
  %77 = ptrtoint ptr %dbpp210 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dbpp210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 266239, i32 %78)
  %cmp212 = icmp ugt i32 %78, 266239
  br i1 %cmp212, label %if.then214, label %if.else223

if.then214:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #9
  %conv216 = zext i32 %78 to i64
  %num_line_pair217 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 1
  %79 = ptrtoint ptr %num_line_pair217 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_line_pair217, align 4
  %conv218 = zext i32 %80 to i64
  %mul219 = mul nuw i64 %conv218, %conv216
  %add220 = add nuw i64 %mul219, 2048
  %shr221 = lshr i64 %add220, 12
  %conv222 = trunc i64 %shr221 to i32
  br label %if.end225

if.else223:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #9
  %num_line_pair224 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 1
  %81 = ptrtoint ptr %num_line_pair224 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_line_pair224, align 4
  br label %if.end225

if.end225:                                        ; preds = %if.else223, %if.then214
  %a.sroa.0.2 = phi i32 [ %conv222, %if.then214 ], [ %82, %if.else223 ]
  %sclk226 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 9
  %83 = ptrtoint ptr %sclk226 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack = load i32, ptr %sclk226, align 4
  %conv.i602 = zext i32 %.unpack to i64
  %shl.i603 = shl nuw nsw i64 %conv.i602, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %.unpack)
  %cmp169.i710 = icmp ult i32 %.unpack, 524288
  br i1 %cmp169.i710, label %if.then173.i715, label %if.else179.i717, !prof !67

if.then173.i715:                                  ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  %conv174.i712 = trunc i64 %shl.i603 to i32
  %div177.i713 = udiv i32 %conv174.i712, %a.sroa.0.2
  %conv178.i714 = zext i32 %div177.i713 to i64
  br label %dfixed_div.exit722

if.else179.i717:                                  ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  %84 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %a.sroa.0.2, i64 %shl.i603) #10, !srcloc !68
  %asmresult1.i.i716 = extractvalue { i64, i64 } %84, 1
  br label %dfixed_div.exit722

dfixed_div.exit722:                               ; preds = %if.else179.i717, %if.then173.i715
  %tmp.0.i718 = phi i64 [ %conv178.i714, %if.then173.i715 ], [ %asmresult1.i.i716, %if.else179.i717 ]
  %add185.i719 = add i64 %tmp.0.i718, 1
  %div186268.i720 = lshr i64 %add185.i719, 1
  %conv188.i721 = trunc i64 %div186268.i720 to i32
  %consumption_rate230 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 4
  %85 = ptrtoint ptr %consumption_rate230 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %consumption_rate230, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv188.i721)
  %cmp231 = icmp ugt i32 %86, %conv188.i721
  br i1 %cmp231, label %if.then233, label %if.else255

if.then233:                                       ; preds = %dfixed_div.exit722
  call void @__sanitizer_cov_trace_pc() #9
  %sub235 = sub i32 %86, %conv188.i721
  %conv236 = zext i32 %sub235 to i64
  %active_time237 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 5
  %87 = ptrtoint ptr %active_time237 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %active_time237, align 4
  %conv238 = zext i32 %88 to i64
  %mul239 = mul nuw i64 %conv238, %conv236
  %add240 = add nuw i64 %mul239, 2048
  %shr241 = lshr i64 %add240, 12
  %conv242 = trunc i64 %shr241 to i32
  %worst_case_latency243 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 3
  %89 = ptrtoint ptr %worst_case_latency243 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %worst_case_latency243, align 4
  %conv244 = zext i32 %90 to i64
  %conv246 = zext i32 %86 to i64
  %mul247 = mul nuw i64 %conv244, %conv246
  %add248 = add nuw i64 %mul247, 2048
  %shr249 = lshr i64 %add248, 12
  %conv250 = trunc i64 %shr249 to i32
  %add251 = add i32 %conv250, %conv242
  br label %if.end267

if.else255:                                       ; preds = %dfixed_div.exit722
  call void @__sanitizer_cov_trace_pc() #9
  %worst_case_latency256 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 3
  %91 = ptrtoint ptr %worst_case_latency256 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %worst_case_latency256, align 4
  %conv257 = zext i32 %92 to i64
  %conv259 = zext i32 %86 to i64
  %mul260 = mul nuw i64 %conv257, %conv259
  %add261 = add nuw i64 %mul260, 2048
  %shr262 = lshr i64 %add261, 12
  %conv263 = trunc i64 %shr262 to i32
  br label %if.end267

if.end267:                                        ; preds = %if.else255, %if.then233
  %conv263.sink = phi i32 [ %conv263, %if.else255 ], [ %add251, %if.then233 ]
  %.fca.0.insert357 = insertvalue [1 x i32] poison, i32 %conv263.sink, 0
  %call266 = tail call fastcc i32 @dfixed_div([1 x i32] %.fca.0.insert357, [1 x i32] [i32 65536000])
  %priority_mark268 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 8
  %93 = ptrtoint ptr %priority_mark268 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %priority_mark268, align 4
  %95 = tail call i32 @llvm.umax.i32(i32 %94, i32 %call266)
  %priority_mark_max274 = getelementptr inbounds %struct.rs690_watermark, ptr %wm1, i32 0, i32 7
  %96 = ptrtoint ptr %priority_mark_max274 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %priority_mark_max274, align 4
  %98 = tail call i32 @llvm.umax.i32(i32 %97, i32 %95)
  %shr280 = lshr i32 %98, 12
  %99 = ptrtoint ptr %d2mode_priority_a_cnt to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr280, ptr %d2mode_priority_a_cnt, align 4
  %disp_priority281 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 12
  %100 = ptrtoint ptr %disp_priority281 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %disp_priority281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp282 = icmp eq i32 %101, 2
  br i1 %cmp282, label %if.end267.if.end289.sink.split_crit_edge, label %if.end267.if.end289_crit_edge

if.end267.if.end289_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289

if.end267.if.end289.sink.split_crit_edge:         ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end289.sink.split

if.end289.sink.split:                             ; preds = %if.end267.if.end289.sink.split_crit_edge, %if.end187.if.end289.sink.split_crit_edge, %if.then124
  %shr200.sink = phi i32 [ %51, %if.then124 ], [ %shr200, %if.end187.if.end289.sink.split_crit_edge ], [ %shr280, %if.end267.if.end289.sink.split_crit_edge ]
  %d1mode_priority_a_cnt.sink = phi ptr [ %d2mode_priority_a_cnt, %if.then124 ], [ %d1mode_priority_a_cnt, %if.end187.if.end289.sink.split_crit_edge ], [ %d2mode_priority_a_cnt, %if.end267.if.end289.sink.split_crit_edge ]
  %or205 = or i32 %shr200.sink, 1048576
  %102 = ptrtoint ptr %d1mode_priority_a_cnt.sink to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or205, ptr %d1mode_priority_a_cnt.sink, align 4
  br label %if.end289

if.end289:                                        ; preds = %if.end289.sink.split, %if.end267.if.end289_crit_edge, %if.else207.if.end289_crit_edge, %if.end187.if.end289_crit_edge, %if.end97.if.end289_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs690_mc_rreg(ptr noundef %rdev, i32 noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #7
  %and = and i32 %reg, 511
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !71
  %3 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %4, i32 124
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 -16711680) #7, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #7
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs690_mc_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mc_idx_lock) #7
  %and = and i32 %reg, 511
  %or = or i32 %and, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %1 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %v) #7
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %3) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %7, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 2130706432) #7, !srcloc !71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mc_idx_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs690_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rs400_gart_disable(ptr noundef %rdev) #7
  tail call void @rv515_clock_startup(ptr noundef %rdev) #7
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic_reset, align 4
  %call = tail call i32 %3(ptr noundef %rdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3648
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 1984
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %14 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode_info, align 4
  %call3 = tail call i32 @atom_asic_init(ptr noundef %15) #7
  tail call void @rv515_clock_startup(ptr noundef %rdev) #7
  tail call void @radeon_surface_init(ptr noundef %rdev) #7
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %16 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %accel_working, align 2
  %call4 = tail call fastcc i32 @rs690_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %accel_working, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_gart_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_clock_startup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rs690_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %save.i = alloca %struct.rv515_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %save.i) #7
  %0 = call ptr @memset(ptr %save.i, i32 255, i32 12)
  call void @rv515_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save.i) #7
  %mc_rreg.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %usec_timeout.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %1 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not.i.i = icmp eq i32 %2, 0
  br i1 %cmp5.not.i.i, label %entry.do.end.i_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i = call i32 %4(ptr noundef %rdev, i32 noundef 144) #7
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.rs690_mc_program.exit_crit_edge

for.body.i.i.rs690_mc_program.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs690_mc_program.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %5(i32 noundef 214748) #7
  %inc.i.i = add nuw i32 %i.06.i.i, 1
  %6 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %7
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end.i:                                         ; preds = %if.end.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.25) #11
  br label %rs690_mc_program.exit

rs690_mc_program.exit:                            ; preds = %do.end.i, %for.body.i.i.rs690_mc_program.exit_crit_edge
  %mc_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 33
  %10 = ptrtoint ptr %mc_wreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_wreg.i, align 4
  %vram_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %12 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %vram_start.i, align 8
  %shr.i = lshr i64 %13, 16
  %and.i = and i64 %shr.i, 65535
  %vram_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %14 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vram_end.i, align 8
  %and3.i = and i64 %15, 4294901760
  %or.i = or i64 %and.i, %and3.i
  %conv.i = trunc i64 %or.i to i32
  call void %11(ptr noundef %rdev, i32 noundef 256, i32 noundef %conv.i) #7
  %16 = ptrtoint ptr %vram_start.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vram_start.i, align 8
  %18 = trunc i64 %17 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  call void @arm_heavy_mb() #7
  %19 = call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = shl i32 %19, 16
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 308
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #7, !srcloc !71
  call void @rv515_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %save.i) #7
  call void @rv515_clock_startup(ptr noundef %rdev) #7
  call void @r420_pipes_init(ptr noundef %rdev) #7
  %23 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp5.not.i.i77 = icmp eq i32 %24, 0
  br i1 %cmp5.not.i.i77, label %rs690_mc_program.exit.do.end.i86_crit_edge, label %rs690_mc_program.exit.for.body.i.i82_crit_edge

rs690_mc_program.exit.for.body.i.i82_crit_edge:   ; preds = %rs690_mc_program.exit
  br label %for.body.i.i82

rs690_mc_program.exit.do.end.i86_crit_edge:       ; preds = %rs690_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i86

for.body.i.i82:                                   ; preds = %if.end.i.i85.for.body.i.i82_crit_edge, %rs690_mc_program.exit.for.body.i.i82_crit_edge
  %i.06.i.i78 = phi i32 [ %inc.i.i83, %if.end.i.i85.for.body.i.i82_crit_edge ], [ 0, %rs690_mc_program.exit.for.body.i.i82_crit_edge ]
  %25 = ptrtoint ptr %mc_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mc_rreg.i.i, align 8
  %call.i.i79 = call i32 %26(ptr noundef %rdev, i32 noundef 144) #7
  %and.i.i80 = and i32 %call.i.i79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i80)
  %tobool.not.i.i81 = icmp eq i32 %and.i.i80, 0
  br i1 %tobool.not.i.i81, label %if.end.i.i85, label %for.body.i.i82.rs690_gpu_init.exit_crit_edge

for.body.i.i82.rs690_gpu_init.exit_crit_edge:     ; preds = %for.body.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs690_gpu_init.exit

if.end.i.i85:                                     ; preds = %for.body.i.i82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748) #7
  %inc.i.i83 = add nuw i32 %i.06.i.i78, 1
  %28 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i84 = icmp ult i32 %inc.i.i83, %29
  br i1 %cmp.i.i84, label %if.end.i.i85.for.body.i.i82_crit_edge, label %if.end.i.i85.do.end.i86_crit_edge

if.end.i.i85.do.end.i86_crit_edge:                ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i86

if.end.i.i85.for.body.i.i82_crit_edge:            ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i82

do.end.i86:                                       ; preds = %if.end.i.i85.do.end.i86_crit_edge, %rs690_mc_program.exit.do.end.i86_crit_edge
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %rs690_gpu_init.exit

rs690_gpu_init.exit:                              ; preds = %do.end.i86, %for.body.i.i82.rs690_gpu_init.exit_crit_edge
  %call = call i32 @rs400_gart_enable(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %rs690_gpu_init.exit.cleanup_crit_edge

rs690_gpu_init.exit.cleanup_crit_edge:            ; preds = %rs690_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rs690_gpu_init.exit
  %call1 = call i32 @radeon_wb_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.14, i32 noundef %call5) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %irq, align 8, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not = icmp eq i8 %33, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end8
  %call11 = call i32 @radeon_irq_kms_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  %call16 = call i32 @rs600_irq_set(ptr noundef %rdev) #7
  %34 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 304
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %37 = call i32 @llvm.bswap.i32(i32 %36) #7
  %hdp_cntl = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %38 = ptrtoint ptr %hdp_cntl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %hdp_cntl, align 4
  %call18 = call i32 @r100_cp_init(ptr noundef %rdev, i32 noundef 1048576) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.17, i32 noundef %call18) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %call26 = call i32 @radeon_ib_pool_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.20, i32 noundef %call26) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call34 = call i32 @radeon_audio_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %do.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.23) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %if.end33.cleanup_crit_edge, %do.end31, %do.end23, %if.then10.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %rs690_gpu_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call18, %do.end23 ], [ %call26, %do.end31 ], [ %call34, %do.end39 ], [ %call, %rs690_gpu_init.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs690_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #7
  tail call void @radeon_audio_fini(ptr noundef %rdev) #7
  tail call void @r100_cp_disable(ptr noundef %rdev) #7
  tail call void @radeon_wb_disable(ptr noundef %rdev) #7
  tail call void @rs600_irq_disable(ptr noundef %rdev) #7
  tail call void @rs400_gart_disable(ptr noundef %rdev) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_irq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rs690_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #7
  tail call void @radeon_audio_fini(ptr noundef %rdev) #7
  tail call void @r100_cp_fini(ptr noundef %rdev) #7
  tail call void @radeon_wb_fini(ptr noundef %rdev) #7
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #7
  tail call void @radeon_gem_fini(ptr noundef %rdev) #7
  tail call void @rs400_gart_fini(ptr noundef %rdev) #7
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #7
  tail call void @radeon_bo_fini(ptr noundef %rdev) #7
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #7
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bios, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_cp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rs690_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rv515_vga_render_disable(ptr noundef %rdev) #7
  tail call void @radeon_scratch_init(ptr noundef %rdev) #7
  tail call void @radeon_surface_init(ptr noundef %rdev) #7
  tail call void @r100_restore_sanity(ptr noundef %rdev) #7
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #7
  br i1 %call, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp ugt i32 %1, 17
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.then3

if.then3:                                         ; preds = %if.end2
  %call4 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %6 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asic, align 8
  %asic_reset = getelementptr inbounds %struct.radeon_asic, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %asic_reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic_reset, align 4
  %call9 = tail call i32 %9(ptr noundef %rdev, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end18_crit_edge, label %do.end14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 3648
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %17, i32 1984
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %15, i32 noundef %19) #11
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.end8.if.end18_crit_edge
  %call19 = tail call zeroext i1 @radeon_boot_test_post_card(ptr noundef %rdev) #7
  br i1 %call19, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %20 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %21) #7
  tail call void @rs400_gart_adjust_size(ptr noundef %rdev) #7
  %mc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  %vram_is_ddr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %22 = ptrtoint ptr %vram_is_ddr.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %vram_is_ddr.i, align 4
  %vram_width.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %23 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 128, ptr %vram_width.i, align 8
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 248
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %conv.i = zext i32 %27 to i64
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %28 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv.i, ptr %real_vram_size.i, align 8
  %mc_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 3
  %29 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv.i, ptr %mc_vram_size.i, align 8
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 47
  %32 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 1
  %34 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 47, i32 0, i32 1
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp eq i32 %36, 0
  br i1 %cmp.i, label %if.end23.cond.end.i_crit_edge, label %cond.false.i

if.end23.cond.end.i_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %36, 1
  %add.i = sub i32 %sub.i, %38
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end23.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end23.cond.end.i_crit_edge ]
  %39 = ptrtoint ptr %mc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond.i, ptr %mc.i, align 8
  %conv22.i = zext i32 %cond.i to i64
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %40 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv22.i, ptr %visible_vram_size.i, align 8
  %mc_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 32
  %41 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mc_rreg.i, align 8
  %call24.i = tail call i32 %42(ptr noundef %rdev, i32 noundef 256) #7
  %43 = shl i32 %call24.i, 16
  %shl.i = zext i32 %43 to i64
  %call26.i = tail call zeroext i1 @radeon_atombios_sideport_present(ptr noundef %rdev) #7
  %igp_sideport_enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 14
  %frombool.i = zext i1 %call26.i to i8
  %44 = ptrtoint ptr %igp_sideport_enabled.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool.i, ptr %igp_sideport_enabled.i, align 1
  br i1 %call26.i, label %land.lhs.true.i, label %cond.end.i.if.end.i_crit_edge

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cond.end.i
  %45 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %real_vram_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 402653184, i64 %46)
  %cmp33.i = icmp eq i64 %46, 402653184
  br i1 %cmp33.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %add35.i = add nuw nsw i64 %shl.i, 134217728
  %47 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 268435456, ptr %real_vram_size.i, align 8
  %48 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 268435456, ptr %mc_vram_size.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %cond.end.i.if.end.i_crit_edge
  %base.0.i = phi i64 [ %add35.i, %if.then.i ], [ %shl.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %shl.i, %cond.end.i.if.end.i_crit_edge ]
  %fastfb_working.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 67
  %49 = ptrtoint ptr %fastfb_working.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %fastfb_working.i, align 1
  %50 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mc_rreg.i, align 8
  %call44.i = tail call i32 %51(ptr noundef %rdev, i32 noundef 95) #7
  %and46.i = and i32 %call44.i, 255
  %52 = ptrtoint ptr %mc_rreg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mc_rreg.i, align 8
  %call48.i = tail call i32 %53(ptr noundef %rdev, i32 noundef 30) #7
  %conv49.i = zext i32 %and46.i to i64
  %shl50.i = shl nuw nsw i64 %conv49.i, 32
  %conv51.i = zext i32 %call48.i to i64
  %or.i = or i64 %shl50.i, %conv51.i
  %54 = ptrtoint ptr %igp_sideport_enabled.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %igp_sideport_enabled.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool54.not.i = icmp eq i8 %55, 0
  br i1 %tobool54.not.i, label %land.lhs.true55.i, label %if.end.i.rs690_mc_init.exit_crit_edge

if.end.i.rs690_mc_init.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs690_mc_init.exit

land.lhs.true55.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_fastfb to i32))
  %56 = load i32, ptr @radeon_fastfb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp56.i = icmp eq i32 %56, 1
  br i1 %cmp56.i, label %do.end.i, label %land.lhs.true55.i.rs690_mc_init.exit_crit_edge

land.lhs.true55.i.rs690_mc_init.exit_crit_edge:   ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rs690_mc_init.exit

do.end.i:                                         ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aper_base.i, align 4
  %conv61.i = zext i32 %58 to i64
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i64 noundef %conv61.i, i64 noundef %or.i) #11
  %59 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call48.i, ptr %aper_base.i, align 4
  %60 = ptrtoint ptr %fastfb_working.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %fastfb_working.i, align 1
  br label %rs690_mc_init.exit

rs690_mc_init.exit:                               ; preds = %do.end.i, %land.lhs.true55.i.rs690_mc_init.exit_crit_edge, %if.end.i.rs690_mc_init.exit_crit_edge
  tail call void @rs690_pm_info(ptr noundef %rdev) #7
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc.i, i64 noundef %base.0.i) #7
  %gtt_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %61 = ptrtoint ptr %gtt_size.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %gtt_size.i, align 8
  %sub70.i = add i64 %62, -1
  %gtt_base_align.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %63 = ptrtoint ptr %gtt_base_align.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %sub70.i, ptr %gtt_base_align.i, align 8
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc.i) #7
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #7
  tail call void @rv515_debugfs(ptr noundef %rdev) #7
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #7
  %call24 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %rs690_mc_init.exit.cleanup_crit_edge

rs690_mc_init.exit.cleanup_crit_edge:             ; preds = %rs690_mc_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %rs690_mc_init.exit
  %call28 = tail call i32 @rs400_gart_init(ptr noundef %rdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  tail call void @rs600_set_safe_registers(ptr noundef %rdev) #7
  %call32 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #7
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %64 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %accel_working, align 2
  %call33 = tail call fastcc i32 @rs690_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %do.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.12) #11
  tail call void @r100_cp_fini(ptr noundef %rdev) #7
  tail call void @radeon_wb_fini(ptr noundef %rdev) #7
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #7
  tail call void @rs400_gart_fini(ptr noundef %rdev) #7
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #7
  %67 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %rs690_mc_init.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %if.then3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call24, %rs690_mc_init.exit.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ 0, %do.end38 ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_vga_render_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_restore_sanity(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_boot_test_post_card(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_debugfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs600_set_safe_registers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs400_gart_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rs600_irq_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_cp_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r420_pipes_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rs400_gart_adjust_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_atombios_sideport_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 115, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 763, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rs690_resume._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rs690_resume._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 833, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rs690_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @rs690_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @rs690_init._entry.9, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 838, i32 3}
!18 = !{ptr @rs690_init._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 870, i32 3}
!21 = !{ptr @rs690_init._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rs690_init._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 718, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rs690_startup._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @rs690_startup._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 734, i32 3}
!30 = !{ptr @rs690_startup._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rs690_startup._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 740, i32 3}
!34 = !{ptr @rs690_startup._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rs690_startup._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 746, i32 3}
!38 = !{ptr @rs690_startup._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rs690_startup._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 685, i32 3}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rs690_mc_program._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rs690_mc_program._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 57, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rs690_gpu_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rs690_gpu_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/rs690.c", i32 191, i32 4}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rs690_mc_init._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rs690_mc_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i64 1052883, i64 1052910}
!66 = !{i64 1053223, i64 1053250, i64 1053284, i64 1053305}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148538544, i64 2148538824, i64 2148539158, i64 2148539492}
!69 = !{i64 5008372}
!70 = !{i64 2158286426}
!71 = !{i64 5007954}
!72 = !{i64 2158286833}
!73 = !{i8 0, i8 2}
