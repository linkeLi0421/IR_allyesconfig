; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/rv770.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/rv770.c"
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
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_crtc = type { %struct.drm_crtc, i32, i8, i8, i8, i32, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %union.dfixed, %union.dfixed, %struct.drm_display_mode, i32, ptr, ptr, i32, %struct.radeon_atom_ss, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, %struct.drm_display_mode, i32 }
%struct.radeon_atom_ss = type { i16, i16, i8, i16, i8, i8, i8, i16, i16 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.radeon_power_state = type { i32, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.radeon_pm_clock_info = type { i32, i32, %struct.radeon_voltage, i32 }
%struct.radeon_voltage = type { i32, %struct.radeon_gpio_rec, i32, i8, i8, i8, i8, i16, i16 }
%struct.radeon_gpio_rec = type { i8, i8, i32, i32, i32 }
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
%struct.rv515_mc_save = type { i32, i32, [2 x i8] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.firmware = type { i32, ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Update pending now high. Unlocking vupdate_lock.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Setting: v: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@r700_vram_gtt_location._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"limiting VRAM\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"r700_vram_gtt_location\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/radeon/rv770.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@r700_vram_gtt_location._entry_ptr = internal global ptr @r700_vram_gtt_location._entry, section ".printk_index", align 4
@r700_vram_gtt_location._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@r700_vram_gtt_location._entry_ptr.8 = internal global ptr @r700_vram_gtt_location._entry.7, section ".printk_index", align 4
@r700_vram_gtt_location._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1635, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@r700_vram_gtt_location._entry_ptr.10 = internal global ptr @r700_vram_gtt_location._entry.9, section ".printk_index", align 4
@r700_vram_gtt_location._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1644, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"VRAM: %lluM 0x%08llX - 0x%08llX (%lluM used)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@r700_vram_gtt_location._entry_ptr.14 = internal global ptr @r700_vram_gtt_location._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"r600 startup failed on resume\0A\00", [33 x i8] zeroinitializer }, align 32
@rv770_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 1926, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Expecting atombios for R600 GPU\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rv770_init\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rv770_init._entry_ptr = internal global ptr @rv770_init._entry, section ".printk_index", align 4
@rv770_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.4, i32 1935, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Card not posted and no BIOS - ignoring\0A\00", [56 x i8] zeroinitializer }, align 32
@rv770_init._entry_ptr.21 = internal global ptr @rv770_init._entry.19, section ".printk_index", align 4
@rv770_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.4, i32 1938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016[drm] GPU not posted. posting now...\0A\00", [56 x i8] zeroinitializer }, align 32
@rv770_init._entry_ptr.24 = internal global ptr @rv770_init._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to load firmware!\0A\00", [38 x i8] zeroinitializer }, align 32
@rv770_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.4, i32 1994, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"disabling GPU acceleration\0A\00", [36 x i8] zeroinitializer }, align 32
@rv770_init._entry_ptr.28 = internal global ptr @rv770_init._entry.26, section ".printk_index", align 4
@r7xx_golden_registers = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 36096, i32 -1, i32 235798644, i32 36100, i32 -1, i32 20589364, i32 38152, i32 -1, i32 2, i32 35616, i32 -1, i32 0, i32 35012, i32 -1, i32 194, i32 164688, i32 -1, i32 0, i32 36952, i32 -1, i32 268420111, i32 9228, i32 -1, i32 896, i32 29500, i32 -1, i32 2, i32 9808, i32 262144, i32 0, i32 8380, i32 262144, i32 0, i32 29440, i32 -1, i32 1048816], [48 x i8] zeroinitializer }, align 32
@r7xx_golden_dyn_gpr_registers = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 36272, i32 -1, i32 -1734829928, i32 36276, i32 -1, i32 -1734829928, i32 36280, i32 -1, i32 -1734829928, i32 36284, i32 -1, i32 -1734829928, i32 36288, i32 -1, i32 -1734829928, i32 36292, i32 -1, i32 -1734829928, i32 36296, i32 -1, i32 -1734829928, i32 36300, i32 -1, i32 -1734829928, i32 35012, i32 -1, i32 130], [52 x i8] zeroinitializer }, align 32
@rv770ce_golden_registers = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 22060, i32 -1, i32 0, i32 16272, i32 -1, i32 13369344, i32 37192, i32 -1, i32 13369344, i32 16276, i32 -1, i32 13369344, i32 37196, i32 -1, i32 13369344, i32 39804, i32 -1, i32 16384000, i32 16268, i32 -1, i32 16384000, i32 38552, i32 402653184, i32 402653184], [32 x i8] zeroinitializer }, align 32
@rv770_golden_registers = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 22060, i32 -1, i32 0, i32 16272, i32 -1, i32 0, i32 37192, i32 -1, i32 0, i32 16276, i32 -1, i32 0, i32 37196, i32 -1, i32 0, i32 38552, i32 402653184, i32 402653184], [56 x i8] zeroinitializer }, align 32
@rv770_mgcg_init = internal constant { [462 x i32], [456 x i8] } { [462 x i32] [i32 35788, i32 -1, i32 318963961, i32 21576, i32 -1, i32 256, i32 21988, i32 -1, i32 256, i32 5644, i32 -1, i32 256, i32 22084, i32 -1, i32 256, i32 49508, i32 -1, i32 256, i32 35352, i32 -1, i32 256, i32 35196, i32 -1, i32 134217984, i32 35624, i32 -1, i32 1006633216, i32 37188, i32 -1, i32 256, i32 39452, i32 -1, i32 65536, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65537, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65538, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65539, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 0, i32 39024, i32 -1, i32 256, i32 36184, i32 -1, i32 256, i32 38144, i32 -1, i32 0, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 1, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 2, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 3, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 4, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 5, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 6, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 7, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 8, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 9, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 32768, i32 38032, i32 -1, i32 0, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 1, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 2, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 3, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 4, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 5, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 6, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 7, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 8, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 9, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 32768, i32 38404, i32 -1, i32 0, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 1, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 2, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 3, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 4, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 5, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 6, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 7, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 8, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 9, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 -2147483648, i32 36912, i32 -1, i32 256, i32 36916, i32 -1, i32 256, i32 36920, i32 -1, i32 256, i32 36924, i32 -1, i32 256, i32 36928, i32 -1, i32 256, i32 41472, i32 -1, i32 256, i32 41476, i32 -1, i32 256, i32 41480, i32 -1, i32 256, i32 41484, i32 -1, i32 256, i32 38684, i32 -1, i32 256, i32 37212, i32 -1, i32 131073, i32 37216, i32 -1, i32 262147, i32 37228, i32 -1, i32 393221, i32 37232, i32 -1, i32 524295, i32 37236, i32 -1, i32 655369, i32 37240, i32 -1, i32 786443, i32 37244, i32 -1, i32 917517, i32 37248, i32 -1, i32 1048591, i32 37260, i32 -1, i32 1179665, i32 37264, i32 -1, i32 1310739, i32 37268, i32 -1, i32 131073, i32 37272, i32 -1, i32 262147, i32 37276, i32 -1, i32 393221, i32 37288, i32 -1, i32 524295, i32 37292, i32 -1, i32 655369, i32 37296, i32 -1, i32 786443, i32 37300, i32 -1, i32 917517, i32 37304, i32 -1, i32 1048591, i32 37316, i32 -1, i32 1179665, i32 37320, i32 -1, i32 1310739, i32 37324, i32 -1, i32 131073, i32 37328, i32 -1, i32 262147, i32 37332, i32 -1, i32 393221, i32 37344, i32 -1, i32 524295, i32 37348, i32 -1, i32 655369, i32 37352, i32 -1, i32 786443, i32 37356, i32 -1, i32 131073, i32 37360, i32 -1, i32 262147, i32 37364, i32 -1, i32 393221, i32 37376, i32 -1, i32 524295, i32 37380, i32 -1, i32 655369, i32 37384, i32 -1, i32 786443, i32 37388, i32 -1, i32 917517, i32 37392, i32 -1, i32 1048591, i32 37404, i32 -1, i32 1179665, i32 37408, i32 -1, i32 1310739, i32 37412, i32 -1, i32 131073, i32 37416, i32 -1, i32 262147, i32 37420, i32 -1, i32 393221, i32 37432, i32 -1, i32 524295, i32 37436, i32 -1, i32 655369, i32 37440, i32 -1, i32 786443, i32 37444, i32 -1, i32 917517, i32 37448, i32 -1, i32 1048591, i32 37460, i32 -1, i32 1179665, i32 37464, i32 -1, i32 1310739, i32 37468, i32 -1, i32 131073, i32 37472, i32 -1, i32 262147, i32 37476, i32 -1, i32 393221, i32 37488, i32 -1, i32 524295, i32 37492, i32 -1, i32 655369, i32 37496, i32 -1, i32 786443, i32 37500, i32 -1, i32 917517, i32 37504, i32 -1, i32 1048591, i32 37516, i32 -1, i32 1179665, i32 37520, i32 -1, i32 1310739, i32 37524, i32 -1, i32 131073, i32 37532, i32 -1, i32 262147, i32 37536, i32 -1, i32 393221, i32 37540, i32 -1, i32 524295], [456 x i8] zeroinitializer }, align 32
@rv730_golden_registers = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 16272, i32 16711680, i32 15728640, i32 37192, i32 16711680, i32 15728640, i32 16276, i32 16711680, i32 15728640, i32 37196, i32 16711680, i32 15728640, i32 36876, i32 -1, i32 3867455, i32 2892, i32 32, i32 32, i32 41344, i32 -1, i32 16191], [44 x i8] zeroinitializer }, align 32
@rv730_mgcg_init = internal constant { [354 x i32], [376 x i8] } { [354 x i32] [i32 35788, i32 -1, i32 318963961, i32 21576, i32 -1, i32 256, i32 21988, i32 -1, i32 256, i32 5644, i32 -1, i32 256, i32 22084, i32 -1, i32 256, i32 49508, i32 -1, i32 256, i32 35352, i32 -1, i32 256, i32 35196, i32 -1, i32 134217984, i32 35624, i32 -1, i32 1006633216, i32 37188, i32 -1, i32 256, i32 39452, i32 -1, i32 65536, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65537, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 0, i32 39024, i32 -1, i32 256, i32 36184, i32 -1, i32 256, i32 38144, i32 -1, i32 0, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 1, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 2, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 3, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 4, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 5, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 6, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 7, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 32768, i32 38032, i32 -1, i32 0, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 1, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 2, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 3, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 4, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 5, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 6, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 7, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 32768, i32 38404, i32 -1, i32 0, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 1, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 2, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 3, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 4, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 5, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 6, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 7, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 -2147483648, i32 36912, i32 -1, i32 256, i32 36916, i32 -1, i32 256, i32 36920, i32 -1, i32 256, i32 36924, i32 -1, i32 256, i32 36928, i32 -1, i32 256, i32 41472, i32 -1, i32 256, i32 41476, i32 -1, i32 256, i32 41480, i32 -1, i32 256, i32 41484, i32 -1, i32 256, i32 38684, i32 -1, i32 256, i32 37212, i32 -1, i32 131073, i32 37228, i32 -1, i32 262147, i32 37232, i32 -1, i32 5, i32 37240, i32 -1, i32 327681, i32 37244, i32 -1, i32 196610, i32 37260, i32 -1, i32 4, i32 37264, i32 -1, i32 458758, i32 37268, i32 -1, i32 327681, i32 37272, i32 -1, i32 196610, i32 37288, i32 -1, i32 4, i32 37292, i32 -1, i32 458758, i32 37296, i32 -1, i32 327681, i32 37300, i32 -1, i32 196610, i32 37316, i32 -1, i32 4, i32 37320, i32 -1, i32 458758, i32 37324, i32 -1, i32 327681, i32 37328, i32 -1, i32 196610, i32 37344, i32 -1, i32 4, i32 37348, i32 -1, i32 458758, i32 37352, i32 -1, i32 1, i32 37356, i32 -1, i32 327681, i32 37360, i32 -1, i32 196610, i32 37376, i32 -1, i32 4, i32 37380, i32 -1, i32 458758, i32 37384, i32 -1, i32 327681, i32 37388, i32 -1, i32 196610, i32 37404, i32 -1, i32 4, i32 37408, i32 -1, i32 458758, i32 37412, i32 -1, i32 327681, i32 37416, i32 -1, i32 196610, i32 37432, i32 -1, i32 4, i32 37436, i32 -1, i32 458758, i32 37440, i32 -1, i32 327681, i32 37444, i32 -1, i32 196610, i32 37460, i32 -1, i32 4, i32 37464, i32 -1, i32 458758, i32 37524, i32 -1, i32 1, i32 37532, i32 -1, i32 2, i32 37536, i32 -1, i32 262147, i32 37540, i32 -1, i32 5], [376 x i8] zeroinitializer }, align 32
@rv710_golden_registers = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 16272, i32 16711680, i32 16515072, i32 37192, i32 16711680, i32 16515072, i32 16276, i32 16711680, i32 16515072, i32 37196, i32 16711680, i32 16515072, i32 2892, i32 32, i32 32, i32 41344, i32 -1, i32 16191], [56 x i8] zeroinitializer }, align 32
@rv710_mgcg_init = internal constant { [165 x i32], [172 x i8] } { [165 x i32] [i32 35788, i32 -1, i32 318963776, i32 21576, i32 -1, i32 256, i32 21988, i32 -1, i32 256, i32 5644, i32 -1, i32 256, i32 22084, i32 -1, i32 256, i32 49508, i32 -1, i32 256, i32 35352, i32 -1, i32 256, i32 35196, i32 -1, i32 134217984, i32 35624, i32 -1, i32 1006633216, i32 37188, i32 -1, i32 256, i32 39452, i32 -1, i32 65536, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 0, i32 39024, i32 -1, i32 256, i32 36184, i32 -1, i32 256, i32 38144, i32 -1, i32 0, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 1, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 32768, i32 38032, i32 -1, i32 0, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 1, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 32768, i32 38404, i32 -1, i32 0, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 1, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 -2147483648, i32 36912, i32 -1, i32 256, i32 36916, i32 -1, i32 256, i32 36920, i32 -1, i32 256, i32 36924, i32 -1, i32 256, i32 36928, i32 -1, i32 256, i32 41472, i32 -1, i32 256, i32 41476, i32 -1, i32 256, i32 41480, i32 -1, i32 256, i32 41484, i32 -1, i32 256, i32 38684, i32 -1, i32 256, i32 37212, i32 -1, i32 131073, i32 37236, i32 -1, i32 3, i32 37240, i32 -1, i32 327681, i32 37244, i32 -1, i32 196610, i32 37260, i32 -1, i32 4, i32 37264, i32 -1, i32 458758, i32 37268, i32 -1, i32 327681, i32 37272, i32 -1, i32 196610, i32 37288, i32 -1, i32 4, i32 37292, i32 -1, i32 458758, i32 37352, i32 -1, i32 1, i32 37524, i32 -1, i32 1, i32 37532, i32 -1, i32 2, i32 37536, i32 -1, i32 262147, i32 37200, i32 -1, i32 1301544960], [172 x i8] zeroinitializer }, align 32
@rv740_golden_registers = internal constant { [99 x i32], [116 x i8] } { [99 x i32] [i32 35012, i32 -1, i32 130, i32 166480, i32 -4, i32 4, i32 9808, i32 262144, i32 0, i32 8380, i32 262144, i32 0, i32 29500, i32 -1, i32 2, i32 29440, i32 -1, i32 1048816, i32 16272, i32 16711680, i32 0, i32 37192, i32 16711680, i32 0, i32 16276, i32 16711680, i32 0, i32 37196, i32 16711680, i32 0, i32 9228, i32 -1, i32 896, i32 35348, i32 7, i32 7, i32 35620, i32 -1, i32 16715775, i32 166476, i32 -1, i32 16384, i32 41344, i32 -1, i32 16191, i32 36096, i32 -1, i32 235798586, i32 36100, i32 -1, i32 20581930, i32 35840, i32 -1, i32 -469762033, i32 36272, i32 -1, i32 -1734829928, i32 36276, i32 -1, i32 -1734829928, i32 36280, i32 -1, i32 -1734829928, i32 36284, i32 -1, i32 -1734829928, i32 36288, i32 -1, i32 -1734829928, i32 36292, i32 -1, i32 -1734829928, i32 36296, i32 -1, i32 -1734829928, i32 36300, i32 -1, i32 -1734829928, i32 36952, i32 -1, i32 268420111, i32 36876, i32 -1, i32 3867455, i32 164688, i32 -1, i32 0, i32 36080, i32 536870911, i32 148898848, i32 38152, i32 -1, i32 2, i32 35012, i32 -1, i32 194, i32 38552, i32 402653184, i32 402653184], [116 x i8] zeroinitializer }, align 32
@rv740_mgcg_init = internal constant { [396 x i32], [400 x i8] } { [396 x i32] [i32 35788, i32 -1, i32 318963968, i32 21576, i32 -1, i32 256, i32 21988, i32 -1, i32 256, i32 5644, i32 -1, i32 256, i32 22084, i32 -1, i32 256, i32 49508, i32 -1, i32 256, i32 35352, i32 -1, i32 256, i32 35196, i32 -1, i32 256, i32 35624, i32 -1, i32 256, i32 37188, i32 -1, i32 256, i32 39452, i32 -1, i32 65536, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65537, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65538, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 65539, i32 39504, i32 -1, i32 256, i32 39452, i32 -1, i32 0, i32 39024, i32 -1, i32 256, i32 36184, i32 -1, i32 256, i32 38144, i32 -1, i32 0, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 1, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 2, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 3, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 4, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 5, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 6, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 7, i32 38160, i32 -1, i32 256, i32 38144, i32 -1, i32 32768, i32 38032, i32 -1, i32 0, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 1, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 2, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 3, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 4, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 5, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 6, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 7, i32 38044, i32 -1, i32 256, i32 38032, i32 -1, i32 32768, i32 38404, i32 -1, i32 0, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 1, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 2, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 3, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 4, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 5, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 6, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 7, i32 38484, i32 -1, i32 256, i32 38404, i32 -1, i32 -2147483648, i32 36912, i32 -1, i32 256, i32 36916, i32 -1, i32 256, i32 36920, i32 -1, i32 256, i32 36924, i32 -1, i32 256, i32 36928, i32 -1, i32 256, i32 41472, i32 -1, i32 256, i32 41476, i32 -1, i32 256, i32 41480, i32 -1, i32 256, i32 41484, i32 -1, i32 256, i32 38684, i32 -1, i32 256, i32 37212, i32 -1, i32 131073, i32 37216, i32 -1, i32 262147, i32 37228, i32 -1, i32 393221, i32 37232, i32 -1, i32 524295, i32 37236, i32 -1, i32 655369, i32 37240, i32 -1, i32 786443, i32 37244, i32 -1, i32 917517, i32 37248, i32 -1, i32 1048591, i32 37260, i32 -1, i32 1179665, i32 37264, i32 -1, i32 1310739, i32 37268, i32 -1, i32 131073, i32 37272, i32 -1, i32 262147, i32 37276, i32 -1, i32 393221, i32 37288, i32 -1, i32 524295, i32 37292, i32 -1, i32 655369, i32 37296, i32 -1, i32 786443, i32 37300, i32 -1, i32 917517, i32 37304, i32 -1, i32 1048591, i32 37316, i32 -1, i32 1179665, i32 37320, i32 -1, i32 1310739, i32 37324, i32 -1, i32 131073, i32 37328, i32 -1, i32 262147, i32 37332, i32 -1, i32 393221, i32 37344, i32 -1, i32 524295, i32 37348, i32 -1, i32 655369, i32 37352, i32 -1, i32 786443, i32 37356, i32 -1, i32 131073, i32 37360, i32 -1, i32 262147, i32 37364, i32 -1, i32 393221, i32 37376, i32 -1, i32 524295, i32 37380, i32 -1, i32 655369, i32 37384, i32 -1, i32 786443, i32 37388, i32 -1, i32 917517, i32 37392, i32 -1, i32 1048591, i32 37404, i32 -1, i32 1179665, i32 37408, i32 -1, i32 1310739, i32 37412, i32 -1, i32 131073, i32 37416, i32 -1, i32 262147, i32 37420, i32 -1, i32 393221, i32 37432, i32 -1, i32 524295, i32 37436, i32 -1, i32 655369, i32 37440, i32 -1, i32 786443, i32 37444, i32 -1, i32 917517, i32 37448, i32 -1, i32 1048591, i32 37460, i32 -1, i32 1179665, i32 37464, i32 -1, i32 1310739, i32 37524, i32 -1, i32 131073, i32 37532, i32 -1, i32 262147, i32 37536, i32 -1, i32 393221, i32 37540, i32 -1, i32 524295], [400 x i8] zeroinitializer }, align 32
@rv770_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 1796, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed initializing CP fences (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rv770_startup\00", [18 x i8] zeroinitializer }, align 32
@rv770_startup._entry_ptr = internal global ptr @rv770_startup._entry, section ".printk_index", align 4
@rv770_startup._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 1802, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed initializing DMA fences (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@rv770_startup._entry_ptr.33 = internal global ptr @rv770_startup._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"radeon: IH init failed (%d).\0A\00", [34 x i8] zeroinitializer }, align 32
@rv770_startup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.4, i32 1850, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IB initialization failed (%d).\0A\00", [32 x i8] zeroinitializer }, align 32
@rv770_startup._entry_ptr.37 = internal global ptr @rv770_startup._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"radeon: audio init failed\0A\00", [37 x i8] zeroinitializer }, align 32
@radeon_pcie_gen2 = external dso_local local_unnamed_addr global i32, align 4
@rv770_pcie_gen2_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016[drm] enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv770_pcie_gen2_enable\00", [41 x i8] zeroinitializer }, align 32
@rv770_pcie_gen2_enable._entry_ptr = internal global ptr @rv770_pcie_gen2_enable._entry, section ".printk_index", align 4
@rv770_mc_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1036, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wait for MC idle timedout !\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv770_mc_program\00", [47 x i8] zeroinitializer }, align 32
@rv770_mc_program._entry_ptr = internal global ptr @rv770_mc_program._entry, section ".printk_index", align 4
@rv770_mc_program._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 1078, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@rv770_mc_program._entry_ptr.44 = internal global ptr @rv770_mc_program._entry.43, section ".printk_index", align 4
@rv770_pcie_gart_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 910, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No VRAM object for PCIE GART.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rv770_pcie_gart_enable\00", [41 x i8] zeroinitializer }, align 32
@rv770_pcie_gart_enable._entry_ptr = internal global ptr @rv770_pcie_gart_enable._entry, section ".printk_index", align 4
@rv770_pcie_gart_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", [40 x i8] zeroinitializer }, align 32
@rv770_pcie_gart_enable._entry_ptr.49 = internal global ptr @rv770_pcie_gart_enable._entry.47, section ".printk_index", align 4
@rv770_uvd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 1729, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed UVD resume (%d).\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rv770_uvd_start\00", [16 x i8] zeroinitializer }, align 32
@rv770_uvd_start._entry_ptr = internal global ptr @rv770_uvd_start._entry, section ".printk_index", align 4
@rv770_uvd_start._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 1734, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed initializing UVD fences (%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@rv770_uvd_start._entry_ptr.54 = internal global ptr @rv770_uvd_start._entry.52, section ".printk_index", align 4
@rv770_uvd_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 1754, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed initializing UVD ring (%d).\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rv770_uvd_resume\00", [47 x i8] zeroinitializer }, align 32
@rv770_uvd_resume._entry_ptr = internal global ptr @rv770_uvd_resume._entry, section ".printk_index", align 4
@rv770_uvd_resume._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 1759, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed initializing UVD (%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@rv770_uvd_resume._entry_ptr.59 = internal global ptr @rv770_uvd_resume._entry.57, section ".printk_index", align 4
@rv770_uvd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 1706, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed UVD (%d) init.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rv770_uvd_init\00", [17 x i8] zeroinitializer }, align 32
@rv770_uvd_init._entry_ptr = internal global ptr @rv770_uvd_init._entry, section ".printk_index", align 4
@switch.table.rv770_startup = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 6], [36 x i8] zeroinitializer }, align 32
@switch.table.rv770_startup.62 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 384, i32 384, i32 128, i32 384], [16 x i8] zeroinitializer }, align 32
@switch.table.rv770_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65281]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.64 = internal global [10 x i64] [i64 8, i64 16, i64 26780, i64 26781, i64 37953, i64 37955, i64 37963, i64 38150, i64 38153, i64 38159]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 35, i64 38]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 846, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 896, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1619, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1628, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1635, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1642, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1883, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1926, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1935, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1938, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1968, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1994, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"r7xx_golden_registers\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 138, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [30 x i8] c"r7xx_golden_dyn_gpr_registers\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 154, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [25 x i8] c"rv770ce_golden_registers\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 177, i32 18 }
@___asan_gen_.151 = private unnamed_addr constant [23 x i8] c"rv770_golden_registers\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 167, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"rv770_mgcg_init\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 189, i32 18 }
@___asan_gen_.157 = private unnamed_addr constant [23 x i8] c"rv730_golden_registers\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 416, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"rv730_mgcg_init\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 427, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"rv710_golden_registers\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 347, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant [16 x i8] c"rv710_mgcg_init\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 357, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"rv740_golden_registers\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 549, i32 18 }
@___asan_gen_.172 = private unnamed_addr constant [16 x i8] c"rv740_mgcg_init\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 586, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1796, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1802, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1817, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1850, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1856, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 2052, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1036, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1078, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 910, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 947, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1729, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1734, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1754, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1759, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [34 x i8] c"../drivers/gpu/drm/radeon/rv770.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1706, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"switch.table.rv770_startup\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [30 x i8] c"switch.table.rv770_startup.62\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"switch.table.rv770_init\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @r700_vram_gtt_location._entry, ptr @r700_vram_gtt_location._entry.11, ptr @r700_vram_gtt_location._entry.7, ptr @r700_vram_gtt_location._entry.9, ptr @r700_vram_gtt_location._entry_ptr, ptr @r700_vram_gtt_location._entry_ptr.10, ptr @r700_vram_gtt_location._entry_ptr.14, ptr @r700_vram_gtt_location._entry_ptr.8, ptr @rv770_init._entry, ptr @rv770_init._entry.19, ptr @rv770_init._entry.22, ptr @rv770_init._entry.26, ptr @rv770_init._entry_ptr, ptr @rv770_init._entry_ptr.21, ptr @rv770_init._entry_ptr.24, ptr @rv770_init._entry_ptr.28, ptr @rv770_mc_program._entry, ptr @rv770_mc_program._entry.43, ptr @rv770_mc_program._entry_ptr, ptr @rv770_mc_program._entry_ptr.44, ptr @rv770_pcie_gart_enable._entry, ptr @rv770_pcie_gart_enable._entry.47, ptr @rv770_pcie_gart_enable._entry_ptr, ptr @rv770_pcie_gart_enable._entry_ptr.49, ptr @rv770_pcie_gen2_enable._entry, ptr @rv770_pcie_gen2_enable._entry_ptr, ptr @rv770_startup._entry, ptr @rv770_startup._entry.31, ptr @rv770_startup._entry.35, ptr @rv770_startup._entry_ptr, ptr @rv770_startup._entry_ptr.33, ptr @rv770_startup._entry_ptr.37, ptr @rv770_uvd_init._entry, ptr @rv770_uvd_init._entry_ptr, ptr @rv770_uvd_resume._entry, ptr @rv770_uvd_resume._entry.57, ptr @rv770_uvd_resume._entry_ptr, ptr @rv770_uvd_resume._entry_ptr.59, ptr @rv770_uvd_start._entry, ptr @rv770_uvd_start._entry.52, ptr @rv770_uvd_start._entry_ptr, ptr @rv770_uvd_start._entry_ptr.54, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @r7xx_golden_registers, ptr @r7xx_golden_dyn_gpr_registers, ptr @rv770ce_golden_registers, ptr @rv770_golden_registers, ptr @rv770_mgcg_init, ptr @rv730_golden_registers, ptr @rv730_mgcg_init, ptr @rv710_golden_registers, ptr @rv710_mgcg_init, ptr @rv740_golden_registers, ptr @rv740_mgcg_init, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @switch.table.rv770_startup, ptr @switch.table.rv770_startup.62, ptr @switch.table.rv770_init], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r700_vram_gtt_location._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r700_vram_gtt_location._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r700_vram_gtt_location._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r700_vram_gtt_location._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r7xx_golden_registers to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r7xx_golden_dyn_gpr_registers to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770ce_golden_registers to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_golden_registers to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_mgcg_init to i32), i32 1848, i32 2304, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv730_golden_registers to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv730_mgcg_init to i32), i32 1416, i32 1792, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv710_golden_registers to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv710_mgcg_init to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv740_golden_registers to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv740_mgcg_init to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_startup._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_startup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_pcie_gen2_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_mc_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_mc_program._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_pcie_gart_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_pcie_gart_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_uvd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_uvd_start._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_uvd_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_uvd_resume._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv770_uvd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_startup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_startup.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rv770_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_set_uvd_clocks(ptr noundef %rdev, i32 noundef %vclk, i32 noundef %dclk) local_unnamed_addr #0 align 64 {
entry:
  %fb_div = alloca i32, align 4
  %vclk_div = alloca i32, align 4
  %dclk_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fb_div) #5
  %0 = ptrtoint ptr %fb_div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fb_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vclk_div) #5
  %1 = ptrtoint ptr %vclk_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %vclk_div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dclk_div) #5
  %2 = ptrtoint ptr %dclk_div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dclk_div, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %4)
  %cmp = icmp eq i32 %4, 38
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @evergreen_set_uvd_clocks(ptr noundef %rdev, i32 noundef %vclk, i32 noundef %dclk) #5
  br label %cleanup

do.body:                                          ; preds = %entry
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %5 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1820
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %8 = and i32 %7, -61504
  %9 = or i32 %8, 4098
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i213 = getelementptr i8, ptr %11, i32 1820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %9) #5, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vclk)
  %tobool.not = icmp eq i32 %vclk, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dclk)
  %tobool2.not = icmp eq i32 %dclk, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %do.body4, label %if.end11

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %13, i32 1816
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i221 = getelementptr i8, ptr %17, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i221, i32 %15) #5, !srcloc !141
  br label %cleanup

if.end11:                                         ; preds = %do.body
  %call12 = call i32 @radeon_uvd_calc_upll_dividers(ptr noundef %rdev, i32 noundef %vclk, i32 noundef %dclk, i32 noundef 50000, i32 noundef 160000, i32 noundef 43663, i32 noundef 67108862, i32 noundef 1, i32 noundef 30, i32 noundef -1, ptr noundef nonnull %fb_div, ptr noundef nonnull %vclk_div, ptr noundef nonnull %dclk_div) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %18 = ptrtoint ptr %fb_div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fb_div, align 4
  %or16 = or i32 %19, 1
  store i32 %or16, ptr %fb_div, align 4
  %20 = ptrtoint ptr %vclk_div to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vclk_div, align 4
  %sub = add i32 %21, -1
  store i32 %sub, ptr %vclk_div, align 4
  %22 = ptrtoint ptr %dclk_div to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dclk_div, align 4
  %sub17 = add i32 %23, -1
  store i32 %sub17, ptr %dclk_div, align 4
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i225 = getelementptr i8, ptr %25, i32 1824
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #5, !srcloc !138
  %27 = shl i32 %26, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %and21 = and i32 %27, -33554432
  %or22 = or i32 %and21, 327680
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %28 = call i32 @llvm.bswap.i32(i32 %or22) #5
  %29 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i229 = getelementptr i8, ptr %30, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %28) #5, !srcloc !141
  %31 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i233 = getelementptr i8, ptr %32, i32 1816
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %34 = and i32 %33, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i237 = getelementptr i8, ptr %36, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %34) #5, !srcloc !141
  %37 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i241 = getelementptr i8, ptr %38, i32 1816
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %40 = or i32 %39, 67108864
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %41 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i245 = getelementptr i8, ptr %42, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %40) #5, !srcloc !141
  %43 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i249 = getelementptr i8, ptr %44, i32 1824
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %46 = or i32 %45, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i253 = getelementptr i8, ptr %48, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 %46) #5, !srcloc !141
  %call46 = call i32 @radeon_uvd_send_upll_ctlreq(ptr noundef %rdev, i32 noundef 1816) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body50, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body50:                                        ; preds = %if.end15
  %49 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i257 = getelementptr i8, ptr %50, i32 1816
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i257) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %52 = or i32 %51, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i261 = getelementptr i8, ptr %54, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 %52) #5, !srcloc !141
  %55 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i265 = getelementptr i8, ptr %56, i32 1816
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %58 = and i32 %57, -16129
  %59 = or i32 %58, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %61, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 %59) #5, !srcloc !141
  %62 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i273 = getelementptr i8, ptr %63, i32 1820
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %65 = and i32 %64, 65535
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %vclk_div to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vclk_div, align 4
  %shr = lshr i32 %68, 1
  %and69 = and i32 %68, 1
  %add = add nuw i32 %shr, %and69
  %shl70 = shl i32 %add, 4
  %or71 = or i32 %shl70, %shr
  %69 = ptrtoint ptr %dclk_div to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dclk_div, align 4
  %shr72 = lshr i32 %70, 1
  %shl73 = shl i32 %shr72, 8
  %or74 = or i32 %or71, %shl73
  %and76 = and i32 %70, 1
  %add77 = add nuw i32 %shr72, %and76
  %shl78 = shl i32 %add77, 12
  %or79 = or i32 %or74, %shl78
  %and80 = and i32 %or79, 65535
  %or81 = or i32 %and80, %66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %71 = call i32 @llvm.bswap.i32(i32 %or81) #5
  %72 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i277 = getelementptr i8, ptr %73, i32 1820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277, i32 %71) #5, !srcloc !141
  %74 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i281 = getelementptr i8, ptr %75, i32 1824
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281) #5, !srcloc !138
  %77 = shl i32 %76, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %and87 = and i32 %77, -33554432
  %78 = ptrtoint ptr %fb_div to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fb_div, align 4
  %and89 = and i32 %79, 33554431
  %or90 = or i32 %and89, %and87
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %80 = call i32 @llvm.bswap.i32(i32 %or90) #5
  %81 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i285 = getelementptr i8, ptr %82, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285, i32 %80) #5, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %83(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %86(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %87(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %88(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %89(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %90(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %92(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %93(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %94(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %95(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %97(i32 noundef 214748000) #5
  %98 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i289 = getelementptr i8, ptr %99, i32 1816
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i289) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %101 = and i32 %100, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i293 = getelementptr i8, ptr %103, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i293, i32 %101) #5, !srcloc !141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %104(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %105(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %106(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %108(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %109(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %110(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %111(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %112(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %113 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %113(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %114(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #5
  %119 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i297 = getelementptr i8, ptr %120, i32 1816
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i297) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %122 = and i32 %121, -67108865
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %123 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i301 = getelementptr i8, ptr %124, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301, i32 %122) #5, !srcloc !141
  %125 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i305 = getelementptr i8, ptr %126, i32 1824
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %128 = and i32 %127, -16777217
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %129 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i309 = getelementptr i8, ptr %130, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i309, i32 %128) #5, !srcloc !141
  %call121 = call i32 @radeon_uvd_send_upll_ctlreq(ptr noundef %rdev, i32 noundef 1816) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %do.body125, label %do.body50.cleanup_crit_edge

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body125:                                       ; preds = %do.body50
  %131 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i313 = getelementptr i8, ptr %132, i32 1820
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i313) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %134 = and i32 %133, -61504
  %135 = or i32 %134, 8196
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %137, i32 1820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i317, i32 %135) #5, !srcloc !141
  br label %while.body136

while.body136:                                    ; preds = %while.body136.while.body136_crit_edge, %do.body125
  %__ms132.0320 = phi i32 [ 100, %do.body125 ], [ %dec134, %while.body136.while.body136_crit_edge ]
  %dec134 = add nsw i32 %__ms132.0320, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 214748000) #5
  %tobool135.not = icmp eq i32 %dec134, 0
  br i1 %tobool135.not, label %while.body136.cleanup_crit_edge, label %while.body136.while.body136_crit_edge

while.body136.while.body136_crit_edge:            ; preds = %while.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body136

while.body136.cleanup_crit_edge:                  ; preds = %while.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %while.body136.cleanup_crit_edge, %do.body50.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.body4, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %do.body4 ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call46, %if.end15.cleanup_crit_edge ], [ %call121, %do.body50.cleanup_crit_edge ], [ 0, %while.body136.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dclk_div) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vclk_div) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fb_div) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @evergreen_set_uvd_clocks(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_calc_upll_dividers(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_send_upll_ctlreq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_get_xclk(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spll = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 41, i32 3
  %0 = ptrtoint ptr %spll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spll, align 4
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1632
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %div9 = lshr i32 %1, 2
  %spec.select = select i1 %tobool2.not, i32 %1, i32 %div9
  %retval.0 = select i1 %tobool.not, i32 %spec.select, i32 1000
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_page_flip(ptr noundef %rdev, i32 noundef %crtc_id, i64 noundef %crtc_base, i1 noundef zeroext %async) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb1, align 4
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %7, 24900
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %8 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp.i = icmp ugt i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #5
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %13, %if.then.i ]
  %or = or i32 %retval.0.i, 65536
  %14 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_offset, align 8
  %add3 = add i32 %15, 24900
  %16 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add3)
  %cmp.i72 = icmp ugt i32 %17, %add3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add3)
  %cmp1.i73 = icmp ult i32 %add3, 65536
  %or.cond.i74 = or i1 %cmp1.i73, %cmp.i72
  br i1 %or.cond.i74, label %do.body.i, label %if.else.i77

do.body.i:                                        ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %rmmio.i75 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %19 = ptrtoint ptr %rmmio.i75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %20, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76, i32 %18) #5, !srcloc !141
  br label %r100_mm_wreg.exit

if.else.i77:                                      ; preds = %r100_mm_rreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add3, i32 noundef %or) #5
  br label %r100_mm_wreg.exit

r100_mm_wreg.exit:                                ; preds = %if.else.i77, %do.body.i
  %21 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %crtc_offset, align 8
  %add5 = add i32 %22, 24904
  %23 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add5)
  %cmp.i79 = icmp ugt i32 %24, %add5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add5)
  %cmp1.i80 = icmp ult i32 %add5, 65536
  %or.cond.i81 = or i1 %cmp1.i80, %cmp.i79
  br i1 %or.cond.i81, label %do.body.i84, label %if.else.i85

do.body.i84:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %25 = select i1 %async, i32 16777216, i32 0
  %rmmio.i82 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %26 = ptrtoint ptr %rmmio.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i82, align 4
  %add.ptr.i83 = getelementptr i8, ptr %27, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %25) #5, !srcloc !141
  br label %r100_mm_wreg.exit86

if.else.i85:                                      ; preds = %r100_mm_wreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cond = zext i1 %async to i32
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add5, i32 noundef %cond) #5
  br label %r100_mm_wreg.exit86

r100_mm_wreg.exit86:                              ; preds = %if.else.i85, %do.body.i84
  %28 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_offset, align 8
  %add7 = add i32 %29, 24864
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %30 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pitches, align 8
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %format, align 8
  %34 = getelementptr inbounds %struct.drm_format_info, ptr %33, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 2
  %conv = zext i8 %36 to i32
  %div = udiv i32 %31, %conv
  %37 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add7)
  %cmp.i88 = icmp ugt i32 %38, %add7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add7)
  %cmp1.i89 = icmp ult i32 %add7, 65536
  %or.cond.i90 = or i1 %cmp1.i89, %cmp.i88
  br i1 %or.cond.i90, label %do.body.i93, label %if.else.i94

do.body.i93:                                      ; preds = %r100_mm_wreg.exit86
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %div) #5
  %rmmio.i91 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %40 = ptrtoint ptr %rmmio.i91 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %41, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %39) #5, !srcloc !141
  br label %r100_mm_wreg.exit95

if.else.i94:                                      ; preds = %r100_mm_wreg.exit86
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add7, i32 noundef %div) #5
  br label %r100_mm_wreg.exit95

r100_mm_wreg.exit95:                              ; preds = %if.else.i94, %do.body.i93
  %crtc_id10 = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %crtc_id10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crtc_id10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool11.not = icmp eq i32 %43, 0
  %shr17 = lshr i64 %crtc_base, 32
  %conv19 = trunc i64 %shr17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %44 = tail call i32 @llvm.bswap.i32(i32 %conv19) #5
  %rmmio.i108 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %45 = ptrtoint ptr %rmmio.i108 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio.i108, align 4
  br i1 %tobool11.not, label %if.else, label %if.then

if.then:                                          ; preds = %r100_mm_wreg.exit95
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i99 = getelementptr i8, ptr %46, i32 24860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %44) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %rmmio.i108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio.i108, align 4
  %add.ptr.i104 = getelementptr i8, ptr %48, i32 24852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %44) #5, !srcloc !141
  br label %if.end

if.else:                                          ; preds = %r100_mm_wreg.exit95
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i109 = getelementptr i8, ptr %46, i32 26908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %44) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %rmmio.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio.i108, align 4
  %add.ptr.i114 = getelementptr i8, ptr %50, i32 26900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %44) #5, !srcloc !141
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %51 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crtc_offset, align 8
  %add24 = add i32 %52, 24856
  %conv25 = trunc i64 %crtc_base to i32
  %53 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add24)
  %cmp.i117 = icmp ugt i32 %54, %add24
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add24)
  %cmp1.i118 = icmp ult i32 %add24, 65536
  %or.cond.i119 = or i1 %cmp1.i118, %cmp.i117
  br i1 %or.cond.i119, label %do.body.i122, label %if.else.i123

do.body.i122:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv25) #5
  %rmmio.i120 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %56 = ptrtoint ptr %rmmio.i120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %57, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %55) #5, !srcloc !141
  br label %r100_mm_wreg.exit124

if.else.i123:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add24, i32 noundef %conv25) #5
  br label %r100_mm_wreg.exit124

r100_mm_wreg.exit124:                             ; preds = %if.else.i123, %do.body.i122
  %58 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %crtc_offset, align 8
  %add27 = add i32 %59, 24848
  %60 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add27)
  %cmp.i126 = icmp ugt i32 %61, %add27
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add27)
  %cmp1.i127 = icmp ult i32 %add27, 65536
  %or.cond.i128 = or i1 %cmp1.i127, %cmp.i126
  br i1 %or.cond.i128, label %do.body.i131, label %if.else.i132

do.body.i131:                                     ; preds = %r100_mm_wreg.exit124
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %conv25) #5
  %rmmio.i129 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %63 = ptrtoint ptr %rmmio.i129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i129, align 4
  %add.ptr.i130 = getelementptr i8, ptr %64, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %62) #5, !srcloc !141
  br label %r100_mm_wreg.exit133

if.else.i132:                                     ; preds = %r100_mm_wreg.exit124
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add27, i32 noundef %conv25) #5
  br label %r100_mm_wreg.exit133

r100_mm_wreg.exit133:                             ; preds = %if.else.i132, %do.body.i131
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %65 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp154 = icmp sgt i32 %66, 0
  br i1 %cmp154, label %for.body.lr.ph, label %r100_mm_wreg.exit133.for.end_crit_edge

r100_mm_wreg.exit133.for.end_crit_edge:           ; preds = %r100_mm_wreg.exit133
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %r100_mm_wreg.exit133
  %rmmio.i138 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %i.0155 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end35.for.body_crit_edge ]
  %67 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %crtc_offset, align 8
  %add31 = add i32 %68, 24900
  %69 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %add31)
  %cmp.i135 = icmp ugt i32 %70, %add31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add31)
  %cmp1.i136 = icmp ult i32 %add31, 65536
  %or.cond.i137 = or i1 %cmp1.i136, %cmp.i135
  br i1 %or.cond.i137, label %if.then.i140, label %if.else.i142

if.then.i140:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %rmmio.i138 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio.i138, align 4
  %add.ptr.i139 = getelementptr i8, ptr %72, i32 %add31
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #5, !srcloc !138
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  br label %r100_mm_rreg.exit144

if.else.i142:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i141 = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add31) #5
  br label %r100_mm_rreg.exit144

r100_mm_rreg.exit144:                             ; preds = %if.else.i142, %if.then.i140
  %retval.0.i143 = phi i32 [ %call3.i141, %if.else.i142 ], [ %74, %if.then.i140 ]
  %and = and i32 %retval.0.i143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end35, label %r100_mm_rreg.exit144.for.end_crit_edge

r100_mm_rreg.exit144.for.end_crit_edge:           ; preds = %r100_mm_rreg.exit144
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end35:                                         ; preds = %r100_mm_rreg.exit144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.0155, 1
  %76 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %77
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %r100_mm_rreg.exit144.for.end_crit_edge, %r100_mm_wreg.exit133.for.end_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #5
  %and36 = and i32 %retval.0.i, -65537
  %78 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %crtc_offset, align 8
  %add38 = add i32 %79, 24900
  %80 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %add38)
  %cmp.i146 = icmp ugt i32 %81, %add38
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add38)
  %cmp1.i147 = icmp ult i32 %add38, 65536
  %or.cond.i148 = or i1 %cmp1.i147, %cmp.i146
  br i1 %or.cond.i148, label %do.body.i151, label %if.else.i152

do.body.i151:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %82 = tail call i32 @llvm.bswap.i32(i32 %and36) #5
  %rmmio.i149 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %83 = ptrtoint ptr %rmmio.i149 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rmmio.i149, align 4
  %add.ptr.i150 = getelementptr i8, ptr %84, i32 %add38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %82) #5, !srcloc !141
  br label %r100_mm_wreg.exit153

if.else.i152:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %add38, i32 noundef %and36) #5
  br label %r100_mm_wreg.exit153

r100_mm_wreg.exit153:                             ; preds = %if.else.i152, %do.body.i151
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rv770_page_flip_pending(ptr noundef %rdev, i32 noundef %crtc_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 44, i32 4, i32 %crtc_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %crtc_offset = getelementptr inbounds %struct.radeon_crtc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %crtc_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crtc_offset, align 8
  %add = add i32 %3, 24900
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %4 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp.i = icmp ugt i32 %5, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add)
  %cmp1.i = icmp ult i32 %add, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  br label %r100_mm_rreg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %add) #5
  br label %r100_mm_rreg.exit

r100_mm_rreg.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call3.i, %if.else.i ], [ %9, %if.then.i ]
  %and = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_get_temp(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1856
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %and = lshr i32 %3, 16
  %4 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else5, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.else5:                                         ; preds = %entry
  %5 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %and, -512
  br label %if.end13

if.else10:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  %and11 = and i32 %and, 255
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then8, %entry.if.end13_crit_edge
  %actual_temp.0 = phi i32 [ %or, %if.then8 ], [ %and11, %if.else10 ], [ 255, %entry.if.end13_crit_edge ]
  %div = mul nsw i32 %actual_temp.0, 500
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_pm_misc(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %requested_power_state_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 22
  %0 = ptrtoint ptr %requested_power_state_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %requested_power_state_index, align 4
  %requested_clock_mode_index = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 23
  %2 = ptrtoint ptr %requested_clock_mode_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %requested_clock_mode_index, align 8
  %power_state = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 18
  %4 = ptrtoint ptr %power_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %power_state, align 4
  %clock_info = getelementptr %struct.radeon_power_state, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %clock_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clock_info, align 4
  %voltage4 = getelementptr %struct.radeon_pm_clock_info, ptr %7, i32 %3, i32 2
  %8 = ptrtoint ptr %voltage4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %voltage4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %voltage5 = getelementptr %struct.radeon_pm_clock_info, ptr %7, i32 %3, i32 2, i32 7
  %10 = ptrtoint ptr %voltage5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %voltage5, align 4
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end [
    i16 0, label %land.lhs.true.cleanup_crit_edge
    i16 -255, label %land.lhs.true.cleanup_crit_edge40
  ]

land.lhs.true.cleanup_crit_edge40:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %current_vddc = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 27
  %13 = ptrtoint ptr %current_vddc to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %current_vddc, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %14)
  %cmp15.not = icmp eq i16 %11, %14
  br i1 %cmp15.not, label %if.end.cleanup_crit_edge, label %if.then17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_atom_set_voltage(ptr noundef %rdev, i16 noundef zeroext %11, i8 noundef zeroext 1) #5
  %15 = ptrtoint ptr %voltage5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %voltage5, align 4
  %17 = ptrtoint ptr %current_vddc to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %current_vddc, align 8
  %18 = load i16, ptr %voltage5, align 4
  %conv23 = zext i16 %18 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %conv23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge40, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atom_set_voltage(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r700_cp_stop(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %copy_ring_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 20) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %9, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #5, !srcloc !141
  %ready = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %10 = ptrtoint ptr %ready to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ready, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_set_active_vram_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r700_cp_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %0 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %1, i32 0, i32 17, i32 5
  %2 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then.i, label %entry.r700_cp_stop.exit_crit_edge

entry.r700_cp_stop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %r700_cp_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %4 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %5) #5
  br label %r700_cp_stop.exit

r700_cp_stop.exit:                                ; preds = %if.then.i, %entry.r700_cp_stop.exit_crit_edge
  %ring1 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %6 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 20) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %9, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #5, !srcloc !141
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %10 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ready.i, align 8
  tail call void @radeon_ring_fini(ptr noundef %rdev, ptr noundef %ring1) #5
  %rptr_save_reg = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 4
  %11 = ptrtoint ptr %rptr_save_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rptr_save_reg, align 8
  tail call void @radeon_scratch_free(ptr noundef %rdev, i32 noundef %12) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ring_fini(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_set_clk_bypass_mode(ptr nocapture noundef readonly %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1540
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %5 = and i32 %4, -33488896
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, 67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %9, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %7) #5, !srcloc !141
  %usec_timeout = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 8
  %10 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp54.not = icmp eq i32 %11, 0
  br i1 %cmp54.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %13, i32 1548
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp eq i32 %15, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end6:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %inc = add nuw i32 %i.055, 1
  %17 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %and7 = or i32 %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %and7) #5
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 1540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %19) #5, !srcloc !141
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %23, i32 1564
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #5, !srcloc !138
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %26 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %family, align 4
  %28 = and i32 %27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %28)
  %switch = icmp eq i32 %28, 36
  %tmp.0.v = select i1 %switch, i32 -33554433, i32 -2049
  %tmp.0 = and i32 %tmp.0.v, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %tmp.0) #5
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %31, i32 1564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %29) #5, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r700_vram_gtt_location(ptr noundef %rdev, ptr noundef %mc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_vram_size = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 3
  %0 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %mc_vram_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3758096384, i64 %1)
  %cmp = icmp ugt i64 %1, 3758096384
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  %real_vram_size = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %4 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 3758096384, ptr %real_vram_size, align 8
  %5 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 3758096384, ptr %mc_vram_size, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else44, label %if.then2

if.then2:                                         ; preds = %if.end
  %gtt_start = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 6
  %8 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %gtt_start, align 8
  %mc_mask = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 16
  %10 = ptrtoint ptr %mc_mask to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %mc_mask, align 8
  %gtt_end = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 7
  %12 = ptrtoint ptr %gtt_end to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gtt_end, align 8
  %sub = sub i64 %11, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %sub)
  %cmp3 = icmp ugt i64 %9, %sub
  %14 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %mc_vram_size, align 8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %9)
  %cmp6 = icmp ugt i64 %15, %9
  br i1 %cmp6, label %do.end10, label %if.then4.if.end14_crit_edge

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.2) #8
  %real_vram_size12 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %18 = ptrtoint ptr %real_vram_size12 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %9, ptr %real_vram_size12, align 8
  %19 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %9, ptr %mc_vram_size, align 8
  br label %if.end14

if.end14:                                         ; preds = %do.end10, %if.then4.if.end14_crit_edge
  %20 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %gtt_start, align 8
  %22 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %mc_vram_size, align 8
  %sub17 = sub i64 %21, %23
  br label %if.end30

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %sub)
  %cmp19 = icmp ugt i64 %15, %sub
  br i1 %cmp19, label %do.end23, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.2) #8
  %real_vram_size25 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %26 = ptrtoint ptr %real_vram_size25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %sub, ptr %real_vram_size25, align 8
  %27 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %sub, ptr %mc_vram_size, align 8
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %if.else.if.end27_crit_edge
  %28 = ptrtoint ptr %gtt_end to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gtt_end, align 8
  %add = add i64 %29, 1
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end14
  %add.sink = phi i64 [ %add, %if.end27 ], [ %sub17, %if.end14 ]
  %vram_start29 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 8
  %30 = ptrtoint ptr %vram_start29 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add.sink, ptr %vram_start29, align 8
  %31 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mc_vram_size, align 8
  %add33 = add i64 %add.sink, -1
  %sub34 = add i64 %add33, %32
  %vram_end = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 9
  %33 = ptrtoint ptr %vram_end to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %sub34, ptr %vram_end, align 8
  %34 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rdev, align 8
  %shr = lshr i64 %32, 20
  %real_vram_size42 = getelementptr inbounds %struct.radeon_mc, ptr %mc, i32 0, i32 11
  %36 = ptrtoint ptr %real_vram_size42 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %real_vram_size42, align 8
  %shr43 = lshr i64 %37, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.12, i64 noundef %shr, i64 noundef %add.sink, i64 noundef %sub34, i64 noundef %shr43) #8
  br label %if.end47

if.else44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mc45 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  tail call void @radeon_vram_location(ptr noundef %rdev, ptr noundef %mc45, i64 noundef 0) #5
  %gtt_base_align = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 15
  %38 = ptrtoint ptr %gtt_base_align to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %gtt_base_align, align 8
  tail call void @radeon_gtt_location(ptr noundef %rdev, ptr noundef %mc) #5
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.end30
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vram_location(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gtt_location(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_resume(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %0 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mode_info, align 4
  %call = tail call i32 @atom_asic_init(ptr noundef %1) #5
  tail call fastcc void @rv770_init_golden_registers(ptr noundef %rdev)
  %pm_method = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 58, i32 34
  %2 = ptrtoint ptr %pm_method to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_pm_resume(ptr noundef %rdev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %4 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %accel_working, align 2
  %call1 = tail call fastcc i32 @rv770_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #5
  %5 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atom_asic_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv770_init_golden_registers(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 35, label %sw.bb
    i32 36, label %sw.bb2
    i32 37, label %sw.bb3
    i32 38, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @r7xx_golden_registers, i32 noundef 36) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @r7xx_golden_dyn_gpr_registers, i32 noundef 27) #5
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -26290, i16 %6)
  %cmp = icmp eq i16 %6, -26290
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv770ce_golden_registers, i32 noundef 24) #5
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv770_golden_registers, i32 noundef 18) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv770_mgcg_init, i32 noundef 462) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @r7xx_golden_registers, i32 noundef 36) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @r7xx_golden_dyn_gpr_registers, i32 noundef 27) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv730_golden_registers, i32 noundef 21) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv730_mgcg_init, i32 noundef 354) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @r7xx_golden_registers, i32 noundef 36) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @r7xx_golden_dyn_gpr_registers, i32 noundef 27) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv710_golden_registers, i32 noundef 18) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv710_mgcg_init, i32 noundef 165) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv740_golden_registers, i32 noundef 99) #5
  tail call void @radeon_program_register_sequence(ptr noundef %rdev, ptr noundef nonnull @rv740_mgcg_init, i32 noundef 396) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %if.end, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv770_startup(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  %save.i = alloca %struct.rv515_mc_save, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @radeon_pcie_gen2 to i32))
  %0 = load i32, ptr @radeon_pcie_gen2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %entry.rv770_pcie_gen2_enable.exit_crit_edge, label %if.end.i

entry.rv770_pcie_gen2_enable.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 8
  %3 = and i32 %2, 2228224
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %3)
  %.not.i = icmp eq i32 %3, 2097152
  br i1 %.not.i, label %if.end7.i, label %if.end.i.rv770_pcie_gen2_enable.exit_crit_edge

if.end.i.rv770_pcie_gen2_enable.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i:                                        ; preds = %if.end.i
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %7, label %if.end52.i [
    i16 -27583, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge
    i16 -27581, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge179
    i16 -27573, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge180
    i16 -27386, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge181
    i16 -27383, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge182
    i16 -27377, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge183
    i16 26780, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge184
    i16 26781, label %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge185
  ]

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge185: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge184: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge183: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge182: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge181: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge180: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge179: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge:  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

if.end52.i:                                       ; preds = %if.end7.i
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %max_bus_speed.i = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %max_bus_speed.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_bus_speed.i, align 2
  %.off.i = add i8 %12, -21
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %do.end.i, label %if.end52.i.rv770_pcie_gen2_enable.exit_crit_edge

if.end52.i.rv770_pcie_gen2_enable.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gen2_enable.exit

do.end.i:                                         ; preds = %if.end52.i
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #8
  %pciep_rreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 37
  %13 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pciep_rreg.i, align 4
  %call66.i = tail call i32 %14(ptr noundef %rdev, i32 noundef 162) #5
  %and67.i = and i32 %call66.i, -8193
  %pciep_wreg.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 38
  %15 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %16(ptr noundef %rdev, i32 noundef 162, i32 noundef %and67.i) #5
  %17 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pciep_rreg.i, align 4
  %call69.i = tail call i32 %18(ptr noundef %rdev, i32 noundef 162) #5
  %and70.i = and i32 %call69.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.else.i, label %if.then72.i

if.then72.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %and73.i = lshr i32 %call69.i, 4
  %shr.i = and i32 %and73.i, 7
  %and74.i = and i32 %call69.i, -5512
  %or76.i = or i32 %and74.i, %shr.i
  %or77.i = or i32 %or76.i, 5376
  br label %if.end81.i

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %or79.i = or i32 %call69.i, 8192
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else.i, %if.then72.i
  %or79.sink.i = phi i32 [ %or79.i, %if.else.i ], [ %or77.i, %if.then72.i ]
  %19 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %20(ptr noundef %rdev, i32 noundef 162, i32 noundef %or79.sink.i) #5
  %21 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pciep_rreg.i, align 4
  %call83.i = tail call i32 %22(ptr noundef %rdev, i32 noundef 164) #5
  %23 = and i32 %call83.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 25165824, i32 %23)
  %.not215.i = icmp eq i32 %23, 25165824
  br i1 %.not215.i, label %if.then89.i, label %if.end81.i.cleanup.sink.split.i_crit_edge

if.end81.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then89.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %24 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 21532
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %27 = or i32 %26, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i206.i = getelementptr i8, ptr %29, i32 21532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 %27) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i210.i = getelementptr i8, ptr %31, i32 21580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 134217728) #5, !srcloc !141
  %32 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 16520
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %35 = and i16 %34, -3841
  %36 = or i16 %35, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %38, i32 16520
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr105.i, i16 %36) #5, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %40, i32 21580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 0) #5, !srcloc !141
  %41 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pciep_rreg.i, align 4
  %call107.i = tail call i32 %42(ptr noundef %rdev, i32 noundef 164) #5
  %and108.i = and i32 %call107.i, -3
  %43 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %44(ptr noundef %rdev, i32 noundef 164, i32 noundef %and108.i) #5
  %45 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pciep_rreg.i, align 4
  %call111.i = tail call i32 %46(ptr noundef %rdev, i32 noundef 164) #5
  %or112.i = or i32 %call111.i, 2097152
  %47 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %48(ptr noundef %rdev, i32 noundef 164, i32 noundef %or112.i) #5
  %49 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pciep_rreg.i, align 4
  %call115.i = tail call i32 %50(ptr noundef %rdev, i32 noundef 164) #5
  %and116.i = and i32 %call115.i, -2097153
  %51 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %52(ptr noundef %rdev, i32 noundef 164, i32 noundef %and116.i) #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then89.i, %if.end81.i.cleanup.sink.split.i_crit_edge
  %.sink218.i = phi i32 [ 164, %if.then89.i ], [ 162, %if.end81.i.cleanup.sink.split.i_crit_edge ]
  %.sink217.i = phi i32 [ 1, %if.then89.i ], [ 8192, %if.end81.i.cleanup.sink.split.i_crit_edge ]
  %53 = ptrtoint ptr %pciep_rreg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pciep_rreg.i, align 4
  %call119.i = tail call i32 %54(ptr noundef %rdev, i32 noundef %.sink218.i) #5
  %or120.i = or i32 %call119.i, %.sink217.i
  %55 = ptrtoint ptr %pciep_wreg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pciep_wreg.i, align 8
  tail call void %56(ptr noundef %rdev, i32 noundef %.sink218.i, i32 noundef %or120.i) #5
  br label %rv770_pcie_gen2_enable.exit

rv770_pcie_gen2_enable.exit:                      ; preds = %cleanup.sink.split.i, %if.end52.i.rv770_pcie_gen2_enable.exit_crit_edge, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge179, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge180, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge181, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge182, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge183, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge184, %if.end7.i.rv770_pcie_gen2_enable.exit_crit_edge185, %if.end.i.rv770_pcie_gen2_enable.exit_crit_edge, %entry.rv770_pcie_gen2_enable.exit_crit_edge
  %call = tail call i32 @r600_vram_scratch_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %rv770_pcie_gen2_enable.exit.cleanup_crit_edge

rv770_pcie_gen2_enable.exit.cleanup_crit_edge:    ; preds = %rv770_pcie_gen2_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rv770_pcie_gen2_enable.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %save.i) #5
  %57 = call ptr @memset(ptr %save.i, i32 255, i32 12)
  %rmmio.i.i135 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  br label %r100_mm_wreg.exit166.i

r100_mm_wreg.exit166.i:                           ; preds = %r100_mm_wreg.exit166.i.r100_mm_wreg.exit166.i_crit_edge, %if.end
  %j.0262.i = phi i32 [ 0, %if.end ], [ %add5.i, %r100_mm_wreg.exit166.i.r100_mm_wreg.exit166.i_crit_edge ]
  %i.0261.i = phi i32 [ 0, %if.end ], [ %inc.i, %r100_mm_wreg.exit166.i.r100_mm_wreg.exit166.i_crit_edge ]
  %add.i = add nuw nsw i32 %j.0262.i, 11284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %58 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %59, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i136, i32 0) #5, !srcloc !141
  %add1.i = add nuw nsw i32 %j.0262.i, 11288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %61, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 0) #5, !srcloc !141
  %add2.i = add nuw nsw i32 %j.0262.i, 11292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %62 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %63, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 0) #5, !srcloc !141
  %add3.i = add nuw nsw i32 %j.0262.i, 11296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i154.i = getelementptr i8, ptr %65, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154.i, i32 0) #5, !srcloc !141
  %add4.i = add nuw nsw i32 %j.0262.i, 11300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %67, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163.i, i32 0) #5, !srcloc !141
  %inc.i = add nuw nsw i32 %i.0261.i, 1
  %add5.i = add nuw nsw i32 %j.0262.i, 24
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %r100_mm_wreg.exit166.i.r100_mm_wreg.exit166.i_crit_edge

r100_mm_wreg.exit166.i.r100_mm_wreg.exit166.i_crit_edge: ; preds = %r100_mm_wreg.exit166.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %r100_mm_wreg.exit166.i

for.end.i:                                        ; preds = %r100_mm_wreg.exit166.i
  %68 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i170.i = getelementptr i8, ptr %69, i32 12084
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170.i) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  call void @rv515_mc_stop(ptr noundef %rdev, ptr noundef nonnull %save.i) #5
  %call6.i = call i32 @r600_mc_wait_for_idle(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %for.end.i.if.end.i139_crit_edge, label %do.end.i137

for.end.i.if.end.i139_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i139

do.end.i137:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.41) #8
  br label %if.end.i139

if.end.i139:                                      ; preds = %do.end.i137, %for.end.i.if.end.i139_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i174.i = getelementptr i8, ptr %74, i32 808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174.i, i32 268435456) #5, !srcloc !141
  %flags.i138 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %75 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i138, align 8
  %and.i = and i32 %76, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  %vram_start27.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 8
  %77 = ptrtoint ptr %vram_start27.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %vram_start27.i, align 8
  br i1 %tobool7.not.i, label %if.else25.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i139
  %gtt_start.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %79 = ptrtoint ptr %gtt_start.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %gtt_start.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %80)
  %cmp10.i = icmp ult i64 %78, %80
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i141

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i140 = lshr i64 %78, 12
  %conv.i = trunc i64 %shr.i140 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %81 = call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %82 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i179.i = getelementptr i8, ptr %83, i32 8244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %81) #5, !srcloc !141
  %gtt_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %84 = ptrtoint ptr %gtt_end.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %gtt_end.i, align 8
  %shr15.i = lshr i64 %85, 12
  %conv16.i = trunc i64 %shr15.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %86 = call i32 @llvm.bswap.i32(i32 %conv16.i) #5
  %87 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i184.i = getelementptr i8, ptr %88, i32 8248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %86) #5, !srcloc !141
  br label %if.end34.i

if.else.i141:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr19.i = lshr i64 %80, 12
  %conv20.i = trunc i64 %shr19.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %89 = call i32 @llvm.bswap.i32(i32 %conv20.i) #5
  %90 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %91, i32 8244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i189.i, i32 %89) #5, !srcloc !141
  %vram_end.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %92 = ptrtoint ptr %vram_end.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %vram_end.i, align 8
  %shr22.i = lshr i64 %93, 12
  %conv23.i = trunc i64 %shr22.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %94 = call i32 @llvm.bswap.i32(i32 %conv23.i) #5
  %95 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i194.i = getelementptr i8, ptr %96, i32 8248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i194.i, i32 %94) #5, !srcloc !141
  br label %if.end34.i

if.else25.i:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  %shr28.i = lshr i64 %78, 12
  %conv29.i = trunc i64 %shr28.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %97 = call i32 @llvm.bswap.i32(i32 %conv29.i) #5
  %98 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i199.i = getelementptr i8, ptr %99, i32 8244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199.i, i32 %97) #5, !srcloc !141
  %vram_end31.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %100 = ptrtoint ptr %vram_end31.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %vram_end31.i, align 8
  %shr32.i = lshr i64 %101, 12
  %conv33.i = trunc i64 %shr32.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %102 = call i32 @llvm.bswap.i32(i32 %conv33.i) #5
  %103 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i204.i = getelementptr i8, ptr %104, i32 8248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 %102) #5, !srcloc !141
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else25.i, %if.else.i141, %if.then11.i
  %gpu_addr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 83, i32 2
  %105 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %gpu_addr.i, align 8
  %shr35.i = lshr i64 %106, 12
  %conv36.i = trunc i64 %shr35.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %107 = call i32 @llvm.bswap.i32(i32 %conv36.i) #5
  %108 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i209.i = getelementptr i8, ptr %109, i32 8252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i209.i, i32 %107) #5, !srcloc !141
  %vram_end38.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 9
  %110 = ptrtoint ptr %vram_end38.i to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %vram_end38.i, align 8
  %112 = lshr i64 %111, 8
  %113 = ptrtoint ptr %vram_start27.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %vram_start27.i, align 8
  %shr44.i = lshr i64 %114, 24
  %and45.i = and i64 %shr44.i, 65535
  %conv46.i = and i64 %112, 4294901760
  %or.i = or i64 %and45.i, %conv46.i
  %conv47.i = trunc i64 %or.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %115 = call i32 @llvm.bswap.i32(i32 %conv47.i) #5
  %116 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i214.i142 = getelementptr i8, ptr %117, i32 8228
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i142, i32 %115) #5, !srcloc !141
  %118 = ptrtoint ptr %vram_start27.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %vram_start27.i, align 8
  %shr50.i = lshr i64 %119, 8
  %conv51.i = trunc i64 %shr50.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %120 = call i32 @llvm.bswap.i32(i32 %conv51.i) #5
  %121 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i219.i = getelementptr i8, ptr %122, i32 11268
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219.i, i32 %120) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %123 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i224.i = getelementptr i8, ptr %124, i32 11272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224.i, i32 65536) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %125 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i229.i = getelementptr i8, ptr %126, i32 11276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229.i, i32 -193) #5, !srcloc !141
  %127 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags.i138, align 8
  %and53.i = and i32 %128, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.else66.i, label %if.then55.i

if.then55.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %gtt_end57.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %129 = ptrtoint ptr %gtt_end57.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %gtt_end57.i, align 8
  %shr58.i = lshr i64 %130, 16
  %conv59.i = trunc i64 %shr58.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %131 = call i32 @llvm.bswap.i32(i32 %conv59.i) #5
  %132 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i234.i = getelementptr i8, ptr %133, i32 8232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234.i, i32 %131) #5, !srcloc !141
  %gtt_start61.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %134 = ptrtoint ptr %gtt_start61.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %gtt_start61.i, align 8
  %shr62.i = lshr i64 %135, 16
  %conv63.i = trunc i64 %shr62.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %136 = call i32 @llvm.bswap.i32(i32 %conv63.i) #5
  %137 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i239.i = getelementptr i8, ptr %138, i32 8236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239.i, i32 %136) #5, !srcloc !141
  %agp_base.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 2
  %139 = ptrtoint ptr %agp_base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %agp_base.i, align 8
  %shr65.i = lshr i32 %140, 22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %141 = call i32 @llvm.bswap.i32(i32 %shr65.i) #5
  %142 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i244.i = getelementptr i8, ptr %143, i32 8240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i244.i, i32 %141) #5, !srcloc !141
  br label %if.end67.i

if.else66.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %144 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i249.i = getelementptr i8, ptr %145, i32 8240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %146 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i254.i = getelementptr i8, ptr %147, i32 8232
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254.i, i32 -241) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i259.i = getelementptr i8, ptr %149, i32 8236
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259.i, i32 -241) #5, !srcloc !141
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.else66.i, %if.then55.i
  %call68.i = call i32 @r600_mc_wait_for_idle(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end67.i.rv770_mc_program.exit_crit_edge, label %do.end73.i

if.end67.i.rv770_mc_program.exit_crit_edge:       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_mc_program.exit

do.end73.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  %150 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.41) #8
  br label %rv770_mc_program.exit

rv770_mc_program.exit:                            ; preds = %do.end73.i, %if.end67.i.rv770_mc_program.exit_crit_edge
  call void @rv515_mc_resume(ptr noundef %rdev, ptr noundef nonnull %save.i) #5
  call void @rv515_vga_render_disable(ptr noundef %rdev) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %save.i) #5
  %152 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %flags.i138, align 8
  %and = and i32 %153, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %rv770_mc_program.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %154 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i.i144 = getelementptr i8, ptr %155, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144, i32 63045888) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %156 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %157, i32 5124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %158 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %159, i32 5128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 -2147483648) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %160 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %161, i32 9812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %162 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %163, i32 9816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %164 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %165, i32 9820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %166 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %167, i32 8756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %168 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %169, i32 8760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %170 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %171, i32 8764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %173, i32 8768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %174 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %175, i32 5136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %176 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.1.i = getelementptr i8, ptr %177, i32 5140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.1.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %178 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.2.i = getelementptr i8, ptr %179, i32 5144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.2.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %180 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.3.i = getelementptr i8, ptr %181, i32 5148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.3.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %182 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.4.i = getelementptr i8, ptr %183, i32 5152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.4.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %184 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.5.i = getelementptr i8, ptr %185, i32 5156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.5.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i58.6.i = getelementptr i8, ptr %187, i32 5160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.6.i, i32 0) #5, !srcloc !141
  br label %if.end7

if.else:                                          ; preds = %rv770_mc_program.exit
  %gart.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43
  %robj.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 1
  %188 = ptrtoint ptr %robj.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %robj.i, align 4
  %cmp.i145 = icmp eq ptr %189, null
  br i1 %cmp.i145, label %do.end.i146, label %if.end.i149

do.end.i146:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %190 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %191, ptr noundef nonnull @.str.45) #8
  br label %cleanup

if.end.i149:                                      ; preds = %if.else
  %call.i147 = call i32 @radeon_gart_table_vram_pin(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool.not.i148 = icmp eq i32 %call.i147, 0
  br i1 %tobool.not.i148, label %if.end2.i, label %if.end.i149.cleanup_crit_edge

if.end.i149.cleanup_crit_edge:                    ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i149
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %193, i32 5120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i151, i32 63045888) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %195, i32 5124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %196 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %197, i32 5128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 -2147483648) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %198 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %199, i32 9812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %201, i32 9816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %203, i32 9820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 461379072) #5, !srcloc !141
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %204 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %205)
  %cmp3.i = icmp eq i32 %205, 38
  br i1 %cmp3.i, label %if.then4.i, label %if.end2.i.rv770_pcie_gart_enable.exit_crit_edge

if.end2.i.rv770_pcie_gart_enable.exit_crit_edge:  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_pcie_gart_enable.exit

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i89.i = getelementptr i8, ptr %207, i32 9880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89.i, i32 461379072) #5, !srcloc !141
  br label %rv770_pcie_gart_enable.exit

rv770_pcie_gart_enable.exit:                      ; preds = %if.then4.i, %if.end2.i.rv770_pcie_gart_enable.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %208 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i93.i = getelementptr i8, ptr %209, i32 8756
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %210 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i97.i = getelementptr i8, ptr %211, i32 8760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %213, i32 8764
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 461379072) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %214 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %215, i32 8768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 461379072) #5, !srcloc !141
  %gtt_start.i152 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 6
  %216 = ptrtoint ptr %gtt_start.i152 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %gtt_start.i152, align 8
  %shr.i153 = lshr i64 %217, 12
  %conv.i154 = trunc i64 %shr.i153 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %218 = call i32 @llvm.bswap.i32(i32 %conv.i154) #5
  %219 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %220, i32 5468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %218) #5, !srcloc !141
  %gtt_end.i155 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 7
  %221 = ptrtoint ptr %gtt_end.i155 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %gtt_end.i155, align 8
  %shr7.i = lshr i64 %222, 12
  %conv8.i = trunc i64 %shr7.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %223 = call i32 @llvm.bswap.i32(i32 %conv8.i) #5
  %224 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %225, i32 5500
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %223) #5, !srcloc !141
  %226 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %gart.i, align 8
  %shr10.i = lshr i32 %227, 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %228 = call i32 @llvm.bswap.i32(i32 %shr10.i) #5
  %229 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %230, i32 5436
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %228) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %231 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %232, i32 5136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 285212672) #5, !srcloc !141
  %addr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 63, i32 2
  %233 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %addr.i, align 4
  %shr11.i = lshr i32 %234, 12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %235 = call i32 @llvm.bswap.i32(i32 %shr11.i) #5
  %236 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i125.i = getelementptr i8, ptr %237, i32 5400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125.i, i32 %235) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %238 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i129.i = getelementptr i8, ptr %239, i32 5140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %240 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i129.1.i = getelementptr i8, ptr %241, i32 5144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.1.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %242 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i129.2.i = getelementptr i8, ptr %243, i32 5148
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.2.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %244 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i129.3.i = getelementptr i8, ptr %245, i32 5152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.3.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %246 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i129.4.i = getelementptr i8, ptr %247, i32 5156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.4.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %248 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i129.5.i = getelementptr i8, ptr %249, i32 5160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129.5.i, i32 0) #5, !srcloc !141
  call void @r600_pcie_gart_tlb_flush(ptr noundef %rdev) #5
  %gtt_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %250 = ptrtoint ptr %gtt_size.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %gtt_size.i, align 8
  %shr19.i156 = lshr i64 %251, 20
  %conv20.i157 = trunc i64 %shr19.i156 to i32
  %252 = ptrtoint ptr %gart.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %gart.i, align 8
  %conv23.i158 = zext i32 %253 to i64
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %conv20.i157, i64 noundef %conv23.i158) #8
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 43, i32 8
  %254 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 1, ptr %ready.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %rv770_pcie_gart_enable.exit, %if.then2
  %config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5
  %tiling_group_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 19
  %255 = ptrtoint ptr %tiling_group_size.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 256, ptr %tiling_group_size.i, align 4
  %family.i159 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %256 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %family.i159, align 4
  %258 = zext i32 %257 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %257, label %if.end7.r100_mm_wreg.exit830.i.preheader_crit_edge [
    i32 35, label %sw.bb.i
    i32 36, label %if.then.i
    i32 37, label %sw.bb59.i
    i32 38, label %if.then132.i
  ]

if.end7.r100_mm_wreg.exit830.i.preheader_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %r100_mm_wreg.exit830.i.preheader

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %259 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 4, ptr %config.i, align 8
  %max_tile_pipes.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %260 = ptrtoint ptr %max_tile_pipes.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 8, ptr %max_tile_pipes.i, align 4
  %max_simds.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %261 = ptrtoint ptr %max_simds.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 10, ptr %max_simds.i, align 8
  %max_backends.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %262 = ptrtoint ptr %max_backends.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 4, ptr %max_backends.i, align 4
  %max_gprs.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %263 = ptrtoint ptr %max_gprs.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 256, ptr %max_gprs.i, align 8
  %max_threads.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %264 = ptrtoint ptr %max_threads.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 248, ptr %max_threads.i, align 4
  %max_stack_entries.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %265 = ptrtoint ptr %max_stack_entries.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 512, ptr %max_stack_entries.i, align 8
  %max_hw_contexts.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 7
  %266 = ptrtoint ptr %max_hw_contexts.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 8, ptr %max_hw_contexts.i, align 4
  %max_gs_threads.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %267 = ptrtoint ptr %max_gs_threads.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 32, ptr %max_gs_threads.i, align 8
  %sx_max_export_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %268 = ptrtoint ptr %sx_max_export_size.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 128, ptr %sx_max_export_size.i, align 4
  %sx_max_export_pos_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %269 = ptrtoint ptr %sx_max_export_pos_size.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 16, ptr %sx_max_export_pos_size.i, align 8
  %sx_max_export_smx_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %270 = ptrtoint ptr %sx_max_export_smx_size.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 112, ptr %sx_max_export_smx_size.i, align 4
  %sq_num_cf_insts.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %271 = ptrtoint ptr %sq_num_cf_insts.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 2, ptr %sq_num_cf_insts.i, align 8
  %sx_num_of_sets.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %272 = ptrtoint ptr %sx_num_of_sets.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 7, ptr %sx_num_of_sets.i, align 4
  %sc_prim_fifo_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %273 = ptrtoint ptr %sc_prim_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 249, ptr %sc_prim_fifo_size.i, align 8
  %sc_hiz_tile_fifo_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 15
  %274 = ptrtoint ptr %sc_hiz_tile_fifo_size.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 48, ptr %sc_hiz_tile_fifo_size.i, align 4
  %sc_earlyz_tile_fifo_fize.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 16
  %275 = ptrtoint ptr %sc_earlyz_tile_fifo_fize.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 304, ptr %sc_earlyz_tile_fifo_fize.i, align 8
  br label %r100_mm_wreg.exit830.i.preheader

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %276 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 2, ptr %config.i, align 8
  %max_tile_pipes22.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %277 = ptrtoint ptr %max_tile_pipes22.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 4, ptr %max_tile_pipes22.i, align 4
  %max_simds24.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %278 = ptrtoint ptr %max_simds24.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 8, ptr %max_simds24.i, align 8
  %max_backends26.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %279 = ptrtoint ptr %max_backends26.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 2, ptr %max_backends26.i, align 4
  %max_gprs28.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %280 = ptrtoint ptr %max_gprs28.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 128, ptr %max_gprs28.i, align 8
  %max_threads30.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %281 = ptrtoint ptr %max_threads30.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 248, ptr %max_threads30.i, align 4
  %max_stack_entries32.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %282 = ptrtoint ptr %max_stack_entries32.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 256, ptr %max_stack_entries32.i, align 8
  %max_hw_contexts34.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 7
  %283 = ptrtoint ptr %max_hw_contexts34.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 8, ptr %max_hw_contexts34.i, align 4
  %max_gs_threads36.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %284 = ptrtoint ptr %max_gs_threads36.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 32, ptr %max_gs_threads36.i, align 8
  %sx_max_export_size38.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %285 = ptrtoint ptr %sx_max_export_size38.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 256, ptr %sx_max_export_size38.i, align 4
  %sx_max_export_pos_size40.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %sx_max_export_smx_size42.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %sq_num_cf_insts44.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %286 = ptrtoint ptr %sq_num_cf_insts44.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 2, ptr %sq_num_cf_insts44.i, align 8
  %sx_num_of_sets46.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %287 = ptrtoint ptr %sx_num_of_sets46.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 7, ptr %sx_num_of_sets46.i, align 4
  %sc_prim_fifo_size48.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %288 = ptrtoint ptr %sc_prim_fifo_size48.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 249, ptr %sc_prim_fifo_size48.i, align 8
  %sc_hiz_tile_fifo_size50.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 15
  %289 = ptrtoint ptr %sc_hiz_tile_fifo_size50.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 48, ptr %sc_hiz_tile_fifo_size50.i, align 4
  %sc_earlyz_tile_fifo_fize52.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 16
  %290 = ptrtoint ptr %sc_earlyz_tile_fifo_fize52.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 304, ptr %sc_earlyz_tile_fifo_fize52.i, align 8
  %291 = ptrtoint ptr %sx_max_export_pos_size40.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 16, ptr %sx_max_export_pos_size40.i, align 8
  %292 = ptrtoint ptr %sx_max_export_smx_size42.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 240, ptr %sx_max_export_smx_size42.i, align 4
  br label %r100_mm_wreg.exit830.i.preheader

sw.bb59.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %293 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 2, ptr %config.i, align 8
  %max_tile_pipes63.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %294 = ptrtoint ptr %max_tile_pipes63.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 2, ptr %max_tile_pipes63.i, align 4
  %max_simds65.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %295 = ptrtoint ptr %max_simds65.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 2, ptr %max_simds65.i, align 8
  %max_backends67.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %296 = ptrtoint ptr %max_backends67.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1, ptr %max_backends67.i, align 4
  %max_gprs69.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %297 = ptrtoint ptr %max_gprs69.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 256, ptr %max_gprs69.i, align 8
  %max_threads71.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %298 = ptrtoint ptr %max_threads71.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 192, ptr %max_threads71.i, align 4
  %max_stack_entries73.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %299 = ptrtoint ptr %max_stack_entries73.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 256, ptr %max_stack_entries73.i, align 8
  %max_hw_contexts75.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 7
  %300 = ptrtoint ptr %max_hw_contexts75.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 4, ptr %max_hw_contexts75.i, align 4
  %max_gs_threads77.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %301 = ptrtoint ptr %max_gs_threads77.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 16, ptr %max_gs_threads77.i, align 8
  %sx_max_export_size79.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %302 = ptrtoint ptr %sx_max_export_size79.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 128, ptr %sx_max_export_size79.i, align 4
  %sx_max_export_pos_size81.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %303 = ptrtoint ptr %sx_max_export_pos_size81.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 16, ptr %sx_max_export_pos_size81.i, align 8
  %sx_max_export_smx_size83.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %304 = ptrtoint ptr %sx_max_export_smx_size83.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 112, ptr %sx_max_export_smx_size83.i, align 4
  %sq_num_cf_insts85.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %305 = ptrtoint ptr %sq_num_cf_insts85.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 1, ptr %sq_num_cf_insts85.i, align 8
  %sx_num_of_sets87.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %306 = ptrtoint ptr %sx_num_of_sets87.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 7, ptr %sx_num_of_sets87.i, align 4
  %sc_prim_fifo_size89.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %307 = ptrtoint ptr %sc_prim_fifo_size89.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 64, ptr %sc_prim_fifo_size89.i, align 8
  %sc_hiz_tile_fifo_size91.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 15
  %308 = ptrtoint ptr %sc_hiz_tile_fifo_size91.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 48, ptr %sc_hiz_tile_fifo_size91.i, align 4
  %sc_earlyz_tile_fifo_fize93.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 16
  %309 = ptrtoint ptr %sc_earlyz_tile_fifo_fize93.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 304, ptr %sc_earlyz_tile_fifo_fize93.i, align 8
  br label %r100_mm_wreg.exit830.i.preheader

if.then132.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %310 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 4, ptr %config.i, align 8
  %max_tile_pipes98.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %311 = ptrtoint ptr %max_tile_pipes98.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 4, ptr %max_tile_pipes98.i, align 4
  %max_simds100.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %312 = ptrtoint ptr %max_simds100.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 8, ptr %max_simds100.i, align 8
  %max_backends102.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %313 = ptrtoint ptr %max_backends102.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 4, ptr %max_backends102.i, align 4
  %max_gprs104.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %314 = ptrtoint ptr %max_gprs104.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 256, ptr %max_gprs104.i, align 8
  %max_threads106.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %315 = ptrtoint ptr %max_threads106.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 248, ptr %max_threads106.i, align 4
  %max_stack_entries108.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %316 = ptrtoint ptr %max_stack_entries108.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 512, ptr %max_stack_entries108.i, align 8
  %max_hw_contexts110.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 7
  %317 = ptrtoint ptr %max_hw_contexts110.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 8, ptr %max_hw_contexts110.i, align 4
  %max_gs_threads112.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %318 = ptrtoint ptr %max_gs_threads112.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 32, ptr %max_gs_threads112.i, align 8
  %sx_max_export_size114.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %319 = ptrtoint ptr %sx_max_export_size114.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 256, ptr %sx_max_export_size114.i, align 4
  %sx_max_export_pos_size116.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %sx_max_export_smx_size118.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %sq_num_cf_insts120.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %320 = ptrtoint ptr %sq_num_cf_insts120.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 2, ptr %sq_num_cf_insts120.i, align 8
  %sx_num_of_sets122.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %321 = ptrtoint ptr %sx_num_of_sets122.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 7, ptr %sx_num_of_sets122.i, align 4
  %sc_prim_fifo_size124.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %322 = ptrtoint ptr %sc_prim_fifo_size124.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 256, ptr %sc_prim_fifo_size124.i, align 8
  %sc_hiz_tile_fifo_size126.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 15
  %323 = ptrtoint ptr %sc_hiz_tile_fifo_size126.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 48, ptr %sc_hiz_tile_fifo_size126.i, align 4
  %sc_earlyz_tile_fifo_fize128.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 16
  %324 = ptrtoint ptr %sc_earlyz_tile_fifo_fize128.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 304, ptr %sc_earlyz_tile_fifo_fize128.i, align 8
  %325 = ptrtoint ptr %sx_max_export_pos_size116.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 16, ptr %sx_max_export_pos_size116.i, align 8
  %326 = ptrtoint ptr %sx_max_export_smx_size118.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 240, ptr %sx_max_export_smx_size118.i, align 4
  br label %r100_mm_wreg.exit830.i.preheader

r100_mm_wreg.exit830.i.preheader:                 ; preds = %if.then132.i, %sw.bb59.i, %if.then.i, %sw.bb.i, %if.end7.r100_mm_wreg.exit830.i.preheader_crit_edge
  br label %r100_mm_wreg.exit830.i

r100_mm_wreg.exit830.i:                           ; preds = %r100_mm_wreg.exit830.i.r100_mm_wreg.exit830.i_crit_edge, %r100_mm_wreg.exit830.i.preheader
  %j.01307.i = phi i32 [ %add146.i, %r100_mm_wreg.exit830.i.r100_mm_wreg.exit830.i_crit_edge ], [ 0, %r100_mm_wreg.exit830.i.preheader ]
  %i.01306.i = phi i32 [ %inc.i162, %r100_mm_wreg.exit830.i.r100_mm_wreg.exit830.i_crit_edge ], [ 0, %r100_mm_wreg.exit830.i.preheader ]
  %add141.i = add nuw nsw i32 %j.01307.i, 11284
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %327 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i.i161 = getelementptr i8, ptr %328, i32 %add141.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i161, i32 0) #5, !srcloc !141
  %add142.i = add nuw nsw i32 %j.01307.i, 11288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %329 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i800.i = getelementptr i8, ptr %330, i32 %add142.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i800.i, i32 0) #5, !srcloc !141
  %add143.i = add nuw nsw i32 %j.01307.i, 11292
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %331 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i809.i = getelementptr i8, ptr %332, i32 %add143.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i809.i, i32 0) #5, !srcloc !141
  %add144.i = add nuw nsw i32 %j.01307.i, 11296
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %333 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i818.i = getelementptr i8, ptr %334, i32 %add144.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i818.i, i32 0) #5, !srcloc !141
  %add145.i = add nuw nsw i32 %j.01307.i, 11300
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %335 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i827.i = getelementptr i8, ptr %336, i32 %add145.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i827.i, i32 0) #5, !srcloc !141
  %add146.i = add nuw nsw i32 %j.01307.i, 24
  %inc.i162 = add nuw nsw i32 %i.01306.i, 1
  %exitcond.not.i163 = icmp eq i32 %inc.i162, 32
  br i1 %exitcond.not.i163, label %for.end.i164, label %r100_mm_wreg.exit830.i.r100_mm_wreg.exit830.i_crit_edge

r100_mm_wreg.exit830.i.r100_mm_wreg.exit830.i_crit_edge: ; preds = %r100_mm_wreg.exit830.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %r100_mm_wreg.exit830.i

for.end.i164:                                     ; preds = %r100_mm_wreg.exit830.i
  %rmmio_size.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %337 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i834.i = getelementptr i8, ptr %338, i32 32768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i834.i, i32 -16777216) #5, !srcloc !141
  %339 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i839.i = getelementptr i8, ptr %340, i32 10080
  %341 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i839.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %342 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i843.i = getelementptr i8, ptr %343, i32 35152
  %344 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i843.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %345 = lshr i32 %344, 16
  %.lobit.i = and i32 %345, 1
  %346 = xor i32 %.lobit.i, 1
  %347 = lshr i32 %344, 17
  %.lobit1322.i = and i32 %347, 1
  %348 = xor i32 %.lobit1322.i, 1
  %spec.select.1.i = add nuw nsw i32 %346, %348
  %349 = lshr i32 %344, 18
  %.lobit1323.i = and i32 %349, 1
  %350 = xor i32 %.lobit1323.i, 1
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %350
  %351 = lshr i32 %344, 19
  %.lobit1324.i = and i32 %351, 1
  %352 = xor i32 %.lobit1324.i, 1
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %352
  %353 = lshr i32 %344, 20
  %.lobit1325.i = and i32 %353, 1
  %354 = xor i32 %.lobit1325.i, 1
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %354
  %355 = lshr i32 %344, 21
  %.lobit1326.i = and i32 %355, 1
  %356 = xor i32 %.lobit1326.i, 1
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %356
  %357 = lshr i32 %344, 22
  %.lobit1327.i = and i32 %357, 1
  %358 = xor i32 %.lobit1327.i, 1
  %spec.select.6.i = add i32 %spec.select.5.i, %358
  %359 = lshr i32 %344, 23
  %.lobit1328.i = and i32 %359, 1
  %360 = xor i32 %.lobit1328.i, 1
  %spec.select.7.i = add i32 %spec.select.6.i, %360
  %361 = call i32 @llvm.bswap.i32(i32 %341) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.7.i)
  %cmp158.i = icmp eq i32 %spec.select.7.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  %362 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i847.i = getelementptr i8, ptr %363, i32 37120
  br i1 %cmp158.i, label %if.then159.i, label %if.else.i165

if.then159.i:                                     ; preds = %for.end.i164
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i847.i, i32 536870912) #5, !srcloc !141
  br label %if.end160.i

if.else.i165:                                     ; preds = %for.end.i164
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i847.i, i32 0) #5, !srcloc !141
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.else.i165, %if.then159.i
  %364 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i857.i = getelementptr i8, ptr %365, i32 35152
  %366 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i857.i) #5, !srcloc !138
  %367 = call i32 @llvm.bswap.i32(i32 %366) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %max_simds164.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 2
  %368 = ptrtoint ptr %max_simds164.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %max_simds164.i, align 8
  %shr165.i = lshr i32 %367, 16
  %call167.i = call i32 @r600_count_pipe_bits(i32 noundef %shr165.i) #5
  %sub168.i = sub i32 %369, %call167.i
  %active_simds.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 22
  %370 = ptrtoint ptr %active_simds.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %sub168.i, ptr %active_simds.i, align 8
  %max_tile_pipes171.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 1
  %371 = ptrtoint ptr %max_tile_pipes171.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %max_tile_pipes171.i, align 4
  %switch.tableidx = add i32 %372, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %373 = icmp ult i32 %switch.tableidx, 7
  br i1 %373, label %switch.lookup, label %if.end160.i.sw.epilog177.i_crit_edge

if.end160.i.sw.epilog177.i_crit_edge:             ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog177.i

switch.lookup:                                    ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rv770_startup, i32 0, i32 %switch.tableidx
  %374 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %374)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog177.i

sw.epilog177.i:                                   ; preds = %switch.lookup, %if.end160.i.sw.epilog177.i_crit_edge
  %gb_tiling_config.0.i = phi i32 [ 0, %if.end160.i.sw.epilog177.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %tiling_npipes.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 18
  %375 = ptrtoint ptr %tiling_npipes.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %372, ptr %tiling_npipes.i, align 8
  %376 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i861.i = getelementptr i8, ptr %377, i32 39156
  %378 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i861.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %379 = lshr i32 %378, 8
  %and183.i = and i32 %379, 255
  %max_backends186.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 3
  %380 = ptrtoint ptr %max_backends186.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %max_backends186.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %cmp1871311.not.i = icmp eq i32 %381, 0
  br i1 %cmp1871311.not.i, label %sw.epilog177.i.if.end206.i_crit_edge, label %sw.epilog177.i.for.body188.i_crit_edge

sw.epilog177.i.for.body188.i_crit_edge:           ; preds = %sw.epilog177.i
  br label %for.body188.i

sw.epilog177.i.if.end206.i_crit_edge:             ; preds = %sw.epilog177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206.i

for.body188.i:                                    ; preds = %for.body188.i.for.body188.i_crit_edge, %sw.epilog177.i.for.body188.i_crit_edge
  %tmp.11313.i = phi i32 [ %or.i166, %for.body188.i.for.body188.i_crit_edge ], [ 0, %sw.epilog177.i.for.body188.i_crit_edge ]
  %i.21312.i = phi i32 [ %inc191.i, %for.body188.i.for.body188.i_crit_edge ], [ 0, %sw.epilog177.i.for.body188.i_crit_edge ]
  %shl189.i = shl nuw i32 1, %i.21312.i
  %or.i166 = or i32 %shl189.i, %tmp.11313.i
  %inc191.i = add nuw i32 %i.21312.i, 1
  %exitcond1320.not.i = icmp eq i32 %inc191.i, %381
  br i1 %exitcond1320.not.i, label %for.end192.i, label %for.body188.i.for.body188.i_crit_edge

for.body188.i.for.body188.i_crit_edge:            ; preds = %for.body188.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body188.i

for.end192.i:                                     ; preds = %for.body188.i
  %and193.i = and i32 %or.i166, %and183.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and193.i, i32 %or.i166)
  %cmp194.i = icmp eq i32 %and193.i, %or.i166
  br i1 %cmp194.i, label %for.end192.i.for.body200.i_crit_edge, label %for.end192.i.if.end206.i_crit_edge

for.end192.i.if.end206.i_crit_edge:               ; preds = %for.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206.i

for.end192.i.for.body200.i_crit_edge:             ; preds = %for.end192.i
  br label %for.body200.i

for.body200.i:                                    ; preds = %for.body200.i.for.body200.i_crit_edge, %for.end192.i.for.body200.i_crit_edge
  %disabled_rb_mask.01317.i = phi i32 [ %and202.i, %for.body200.i.for.body200.i_crit_edge ], [ %and183.i, %for.end192.i.for.body200.i_crit_edge ]
  %i.31316.i = phi i32 [ %inc204.i, %for.body200.i.for.body200.i_crit_edge ], [ 0, %for.end192.i.for.body200.i_crit_edge ]
  %shl201.i = shl nuw i32 1, %i.31316.i
  %neg.i = xor i32 %shl201.i, -1
  %and202.i = and i32 %disabled_rb_mask.01317.i, %neg.i
  %inc204.i = add nuw i32 %i.31316.i, 1
  %exitcond1321.not.i = icmp eq i32 %inc204.i, %381
  br i1 %exitcond1321.not.i, label %for.body200.i.if.end206.i_crit_edge, label %for.body200.i.for.body200.i_crit_edge

for.body200.i.for.body200.i_crit_edge:            ; preds = %for.body200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body200.i

for.body200.i.if.end206.i_crit_edge:              ; preds = %for.body200.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206.i

if.end206.i:                                      ; preds = %for.body200.i.if.end206.i_crit_edge, %for.end192.i.if.end206.i_crit_edge, %sw.epilog177.i.if.end206.i_crit_edge
  %disabled_rb_mask.1.i = phi i32 [ %and183.i, %for.end192.i.if.end206.i_crit_edge ], [ %and183.i, %sw.epilog177.i.if.end206.i_crit_edge ], [ %and202.i, %for.body200.i.if.end206.i_crit_edge ]
  %shr208.i = lshr exact i32 %gb_tiling_config.0.i, 1
  %call211.i = call i32 @r6xx_remap_render_backend(ptr noundef %rdev, i32 noundef %shr208.i, i32 noundef %381, i32 noundef 8, i32 noundef %disabled_rb_mask.1.i) #5
  %shl212.i = shl i32 %call211.i, 16
  %or213.i = or i32 %shl212.i, %gb_tiling_config.0.i
  %backend_map.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 21
  %382 = ptrtoint ptr %backend_map.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %call211.i, ptr %backend_map.i, align 4
  %383 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %384)
  %cmp216.i = icmp eq i32 %384, 35
  br i1 %cmp216.i, label %if.then217.i, label %if.else219.i

if.then217.i:                                     ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #7
  %or218.i = or i32 %or213.i, 16
  br label %if.end228.i

if.else219.i:                                     ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #7
  %and220.i = and i32 %361, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220.i)
  %tobool222.not.i = icmp eq i32 %and220.i, 0
  %or224.i = or i32 %or213.i, 16
  %spec.select794.i = select i1 %tobool222.not.i, i32 %or213.i, i32 %or224.i
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.else219.i, %if.then217.i
  %gb_tiling_config.1.i = phi i32 [ %or218.i, %if.then217.i ], [ %spec.select794.i, %if.else219.i ]
  %shr229.i = lshr i32 %gb_tiling_config.1.i, 4
  %and230.i = and i32 %shr229.i, 3
  %shl231.i = shl nuw nsw i32 4, %and230.i
  %tiling_nbanks.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 17
  %385 = ptrtoint ptr %tiling_nbanks.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %shl231.i, ptr %tiling_nbanks.i, align 4
  %386 = lshr i32 %361, 3
  %shl235.i = and i32 %386, 64
  %shr238.i = and i32 %386, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr238.i)
  %cmp239.i = icmp ugt i32 %shr238.i, 3
  %or247.i = mul nuw nsw i32 %shr238.i, 16640
  %gb_tiling_config.2.v.i = select i1 %cmp239.i, i32 49920, i32 %or247.i
  %or236.i = or i32 %shl235.i, %gb_tiling_config.2.v.i
  %gb_tiling_config.2.i = or i32 %or236.i, %gb_tiling_config.1.i
  %or253.i = or i32 %gb_tiling_config.2.i, 2048
  %tile_config.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 20
  %387 = ptrtoint ptr %tile_config.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %or253.i, ptr %tile_config.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %388 = call i32 @llvm.bswap.i32(i32 %or253.i) #5
  %389 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i865.i = getelementptr i8, ptr %390, i32 39152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i865.i, i32 %388) #5, !srcloc !141
  %and255.i = and i32 %or253.i, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %391 = call i32 @llvm.bswap.i32(i32 %and255.i) #5
  %392 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i870.i = getelementptr i8, ptr %393, i32 27808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i870.i, i32 %391) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %394 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i875.i = getelementptr i8, ptr %395, i32 12092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i875.i, i32 %391) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %396 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i880.i = getelementptr i8, ptr %397, i32 16072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i880.i, i32 %391) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %398 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i885.i = getelementptr i8, ptr %399, i32 53432
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i885.i, i32 %391) #5, !srcloc !141
  %400 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %401)
  %cmp260.i = icmp eq i32 %401, 36
  br i1 %cmp260.i, label %if.then261.i, label %if.end228.i.if.end265.i_crit_edge

if.end228.i.if.end265.i_crit_edge:                ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end265.i

if.then261.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %402 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i890.i = getelementptr i8, ptr %403, i32 61252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i890.i, i32 %391) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %404 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i895.i = getelementptr i8, ptr %405, i32 61256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i895.i, i32 %391) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %406 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i900.i = getelementptr i8, ptr %407, i32 61248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i900.i, i32 %391) #5, !srcloc !141
  br label %if.end265.i

if.end265.i:                                      ; preds = %if.then261.i, %if.end228.i.if.end265.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %408 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i905.i = getelementptr i8, ptr %409, i32 16272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i905.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %410 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i910.i = getelementptr i8, ptr %411, i32 37192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i910.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %412 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i915.i = getelementptr i8, ptr %413, i32 16276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i915.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %414 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i920.i = getelementptr i8, ptr %415, i32 37196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i920.i, i32 0) #5, !srcloc !141
  %and266.i = lshr i32 %367, 8
  %shr267.i = and i32 %and266.i, 255
  %call268.i = call i32 @r600_count_pipe_bits(i32 noundef %shr267.i) #5
  %.neg.i = mul i32 %call268.i, -4
  %mul.i = add i32 %.neg.i, 32
  %and270.i = and i32 %mul.i, 124
  %416 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 167004, i32 %417)
  %cmp.i923.i = icmp ugt i32 %417, 167004
  br i1 %cmp.i923.i, label %do.body.i926.i, label %if.else.i927.i

do.body.i926.i:                                   ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %418 = shl nuw nsw i32 %and270.i, 24
  %419 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i925.i = getelementptr i8, ptr %420, i32 167004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i925.i, i32 %418) #5, !srcloc !141
  br label %r100_mm_wreg.exit928.i

if.else.i927.i:                                   ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 167004, i32 noundef %and270.i) #5
  br label %r100_mm_wreg.exit928.i

r100_mm_wreg.exit928.i:                           ; preds = %if.else.i927.i, %do.body.i926.i
  %sub272.i = add i32 %.neg.i, 30
  %and273.i = and i32 %sub272.i, 254
  %421 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 167000, i32 %422)
  %cmp.i930.i = icmp ugt i32 %422, 167000
  br i1 %cmp.i930.i, label %do.body.i933.i, label %if.else.i934.i

do.body.i933.i:                                   ; preds = %r100_mm_wreg.exit928.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %423 = shl nuw i32 %and273.i, 24
  %424 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i932.i = getelementptr i8, ptr %425, i32 167000
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i932.i, i32 %423) #5, !srcloc !141
  br label %r100_mm_wreg.exit935.i

if.else.i934.i:                                   ; preds = %r100_mm_wreg.exit928.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 167000, i32 noundef %and273.i) #5
  br label %r100_mm_wreg.exit935.i

r100_mm_wreg.exit935.i:                           ; preds = %if.else.i934.i, %do.body.i933.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %426 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i939.i = getelementptr i8, ptr %427, i32 34656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i939.i, i32 371916800) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %428 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i944.i = getelementptr i8, ptr %429, i32 34660
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i944.i, i32 805306368) #5, !srcloc !141
  %430 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i949.i = getelementptr i8, ptr %431, i32 38152
  %432 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i949.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %433 = or i32 %432, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %434 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i953.i = getelementptr i8, ptr %435, i32 38152
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i953.i, i32 %433) #5, !srcloc !141
  %436 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i958.i = getelementptr i8, ptr %437, i32 36952
  %438 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i958.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %439 = or i32 %438, 256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %440 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i962.i = getelementptr i8, ptr %441, i32 36952
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i962.i, i32 %439) #5, !srcloc !141
  %442 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i967.i = getelementptr i8, ptr %443, i32 40992
  %444 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i967.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %445 = and i32 %444, 33357823
  %446 = call i32 @llvm.bswap.i32(i32 %445) #5
  %sx_num_of_sets281.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 13
  %447 = ptrtoint ptr %sx_num_of_sets281.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %sx_num_of_sets281.i, align 4
  %mul282.i = shl i32 %448, 7
  %shl284.i = add i32 %mul282.i, -2
  %or285.i = or i32 %shl284.i, %446
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %449 = call i32 @llvm.bswap.i32(i32 %or285.i) #5
  %450 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i971.i = getelementptr i8, ptr %451, i32 40992
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i971.i, i32 %449) #5, !srcloc !141
  %452 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %453)
  %cmp287.not.i = icmp eq i32 %453, 38
  br i1 %cmp287.not.i, label %r100_mm_wreg.exit935.i.if.then292.i_crit_edge, label %if.end289.i

r100_mm_wreg.exit935.i.if.then292.i_crit_edge:    ; preds = %r100_mm_wreg.exit935.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then292.i

if.end289.i:                                      ; preds = %r100_mm_wreg.exit935.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %454 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i976.i = getelementptr i8, ptr %455, i32 41004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i976.i, i32 -469696512) #5, !srcloc !141
  %456 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %456)
  %.pr.i = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %.pr.i)
  %cmp291.not.i = icmp eq i32 %.pr.i, 35
  br i1 %cmp291.not.i, label %if.end289.i.if.end293.i_crit_edge, label %if.end289.i.if.then292.i_crit_edge

if.end289.i.if.then292.i_crit_edge:               ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then292.i

if.end289.i.if.end293.i_crit_edge:                ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end293.i

if.then292.i:                                     ; preds = %if.end289.i.if.then292.i_crit_edge, %r100_mm_wreg.exit935.i.if.then292.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %457 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i981.i = getelementptr i8, ptr %458, i32 40968
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i981.i, i32 1061093376) #5, !srcloc !141
  br label %if.end293.i

if.end293.i:                                      ; preds = %if.then292.i, %if.end289.i.if.end293.i_crit_edge
  %459 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i986.i = getelementptr i8, ptr %460, i32 39088
  %461 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i986.i) #5, !srcloc !138
  %462 = call i32 @llvm.bswap.i32(i32 %461) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %463 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %family.i159, align 4
  %465 = zext i32 %464 to i64
  call void @__sanitizer_cov_trace_switch(i64 %465, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %464, label %sw.default300.i [
    i32 35, label %if.end293.i.sw.bb297.i_crit_edge
    i32 38, label %if.end293.i.sw.bb297.i_crit_edge186
  ]

if.end293.i.sw.bb297.i_crit_edge186:              ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb297.i

if.end293.i.sw.bb297.i_crit_edge:                 ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb297.i

sw.bb297.i:                                       ; preds = %if.end293.i.sw.bb297.i_crit_edge, %if.end293.i.sw.bb297.i_crit_edge186
  %or298.i = or i32 %462, 63488
  br label %sw.epilog302.i

sw.default300.i:                                  ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #7
  %and295.i = and i32 %462, -63489
  %or301.i = or i32 %and295.i, 4096
  br label %sw.epilog302.i

sw.epilog302.i:                                   ; preds = %sw.default300.i, %sw.bb297.i
  %db_debug3.0.i = phi i32 [ %or301.i, %sw.default300.i ], [ %or298.i, %sw.bb297.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %466 = call i32 @llvm.bswap.i32(i32 %db_debug3.0.i) #5
  %467 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i990.i = getelementptr i8, ptr %468, i32 39088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i990.i, i32 %466) #5, !srcloc !141
  %469 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %470)
  %cmp304.not.i = icmp eq i32 %470, 35
  br i1 %cmp304.not.i, label %sw.epilog302.i.if.end308.i_crit_edge, label %if.then305.i

sw.epilog302.i.if.end308.i_crit_edge:             ; preds = %sw.epilog302.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end308.i

if.then305.i:                                     ; preds = %sw.epilog302.i
  call void @__sanitizer_cov_trace_pc() #7
  %471 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i995.i = getelementptr i8, ptr %472, i32 39820
  %473 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i995.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %474 = or i32 %473, 1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %475 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i999.i = getelementptr i8, ptr %476, i32 39820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i999.i, i32 %474) #5, !srcloc !141
  br label %if.end308.i

if.end308.i:                                      ; preds = %if.then305.i, %sw.epilog302.i.if.end308.i_crit_edge
  %sx_max_export_size310.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 9
  %477 = ptrtoint ptr %sx_max_export_size310.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %sx_max_export_size310.i, align 4
  %div781.i = lshr i32 %478, 2
  %sub311.i = add nsw i32 %div781.i, -1
  %sx_max_export_pos_size314.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 10
  %479 = ptrtoint ptr %sx_max_export_pos_size314.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %sx_max_export_pos_size314.i, align 8
  %481 = shl i32 %480, 6
  %482 = add i32 %481, -256
  %shl317.i = and i32 %482, -256
  %or318.i = or i32 %shl317.i, %sub311.i
  %sx_max_export_smx_size320.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 11
  %483 = ptrtoint ptr %sx_max_export_smx_size320.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %sx_max_export_smx_size320.i, align 4
  %485 = shl i32 %484, 14
  %486 = add i32 %485, -65536
  %shl323.i = and i32 %486, -65536
  %or324.i = or i32 %or318.i, %shl323.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %487 = call i32 @llvm.bswap.i32(i32 %or324.i) #5
  %488 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1004.i = getelementptr i8, ptr %489, i32 36876
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1004.i, i32 %487) #5, !srcloc !141
  %sc_prim_fifo_size326.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 14
  %490 = ptrtoint ptr %sc_prim_fifo_size326.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %sc_prim_fifo_size326.i, align 8
  %sc_hiz_tile_fifo_size329.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 15
  %492 = ptrtoint ptr %sc_hiz_tile_fifo_size329.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %sc_hiz_tile_fifo_size329.i, align 4
  %shl330.i = shl i32 %493, 12
  %or331.i = or i32 %shl330.i, %491
  %sc_earlyz_tile_fifo_fize333.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 16
  %494 = ptrtoint ptr %sc_earlyz_tile_fifo_fize333.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %sc_earlyz_tile_fifo_fize333.i, align 8
  %shl334.i = shl i32 %495, 20
  %or335.i = or i32 %or331.i, %shl334.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %496 = call i32 @llvm.bswap.i32(i32 %or335.i) #5
  %497 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1009.i = getelementptr i8, ptr %498, i32 35788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1009.i, i32 %496) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %499 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1014.i = getelementptr i8, ptr %500, i32 35616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1014.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %501 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1019.i = getelementptr i8, ptr %502, i32 35188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1019.i, i32 16777216) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %503 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1024.i = getelementptr i8, ptr %504, i32 37180
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1024.i, i32 67108864) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %505 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1029.i = getelementptr i8, ptr %506, i32 34812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1029.i, i32 0) #5, !srcloc !141
  %sq_num_cf_insts337.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 12
  %507 = ptrtoint ptr %sq_num_cf_insts337.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %sq_num_cf_insts337.i, align 8
  %mul338.i = shl i32 %508, 4
  %509 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %family.i159, align 4
  %.off.i167 = add i32 %510, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i167)
  %switch.i168 = icmp ult i32 %.off.i167, 3
  %sq_ms_fifo_sizes.0.v.i = select i1 %switch.i168, i32 148898048, i32 148898816
  %sq_ms_fifo_sizes.0.i = or i32 %sq_ms_fifo_sizes.0.v.i, %mul338.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %511 = call i32 @llvm.bswap.i32(i32 %sq_ms_fifo_sizes.0.i) #5
  %512 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1034.i = getelementptr i8, ptr %513, i32 36080
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1034.i, i32 %511) #5, !srcloc !141
  %514 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1039.i = getelementptr i8, ptr %515, i32 35840
  %516 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1039.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %517 = and i32 %516, -117440768
  %518 = call i32 @llvm.bswap.i32(i32 %517) #5
  %519 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %520)
  %cmp353.i = icmp eq i32 %520, 37
  %sq_config.0.v.i = select i1 %cmp353.i, i32 -469762042, i32 -469762041
  %sq_config.0.i = or i32 %sq_config.0.v.i, %518
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %521 = call i32 @llvm.bswap.i32(i32 %sq_config.0.i) #5
  %522 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1043.i = getelementptr i8, ptr %523, i32 35840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1043.i, i32 %521) #5, !srcloc !141
  %max_gprs358.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 4
  %524 = ptrtoint ptr %max_gprs358.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %max_gprs358.i, align 8
  %mul359.i = mul i32 %525, 24
  %div360784.i = lshr i32 %mul359.i, 6
  %shl366.i = shl i32 %div360784.i, 16
  %526 = mul i32 %525, 50331648
  %shl373.i = and i32 %526, -268435456
  %or367.i = or i32 %shl373.i, %div360784.i
  %or374.i = or i32 %or367.i, %shl366.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %527 = call i32 @llvm.bswap.i32(i32 %or374.i) #5
  %528 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1048.i = getelementptr i8, ptr %529, i32 35844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1048.i, i32 %527) #5, !srcloc !141
  %530 = ptrtoint ptr %max_gprs358.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %max_gprs358.i, align 8
  %mul377.i = mul i32 %531, 7
  %div378786.i = lshr i32 %mul377.i, 6
  %shl384.i = shl i32 %div378786.i, 16
  %or385.i = or i32 %shl384.i, %div378786.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %532 = call i32 @llvm.bswap.i32(i32 %or385.i) #5
  %533 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1053.i = getelementptr i8, ptr %534, i32 35848
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1053.i, i32 %532) #5, !srcloc !141
  %max_threads387.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 5
  %535 = ptrtoint ptr %max_threads387.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %max_threads387.i, align 4
  %537 = lshr i32 %536, 1
  %div389787.i = and i32 %537, 536870911
  %538 = shl i32 %536, 6
  %shl395.i = and i32 %538, -256
  %or396.i = or i32 %div389787.i, %shl395.i
  %div400789.i = lshr i32 %536, 3
  %shl401.i = shl i32 %div400789.i, 24
  %or402.i = or i32 %or396.i, %shl401.i
  %max_gs_threads408.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 8
  %539 = ptrtoint ptr %max_gs_threads408.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %max_gs_threads408.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div400789.i, i32 %540)
  %cmp409.i = icmp ugt i32 %div400789.i, %540
  %shl413.i = shl i32 %540, 16
  %541 = shl i32 %540, 13
  %shl420.i = and i32 %541, -65536
  %shl413.pn.i = select i1 %cmp409.i, i32 %shl413.i, i32 %shl420.i
  %sq_thread_resource_mgmt.0.i = or i32 %or402.i, %shl413.pn.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %542 = call i32 @llvm.bswap.i32(i32 %sq_thread_resource_mgmt.0.i) #5
  %543 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1058.i = getelementptr i8, ptr %544, i32 35852
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1058.i, i32 %542) #5, !srcloc !141
  %max_stack_entries424.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 5, i32 0, i32 6
  %545 = ptrtoint ptr %max_stack_entries424.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %max_stack_entries424.i, align 8
  %div426791.i = lshr i32 %546, 2
  %shl432.i = shl i32 %div426791.i, 16
  %or433.i = or i32 %shl432.i, %div426791.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %547 = call i32 @llvm.bswap.i32(i32 %or433.i) #5
  %548 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1063.i = getelementptr i8, ptr %549, i32 35856
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1063.i, i32 %547) #5, !srcloc !141
  %550 = ptrtoint ptr %max_stack_entries424.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %max_stack_entries424.i, align 8
  %div437792.i = lshr i32 %551, 2
  %shl443.i = shl i32 %div437792.i, 16
  %or444.i = or i32 %shl443.i, %div437792.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %552 = call i32 @llvm.bswap.i32(i32 %or444.i) #5
  %553 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1068.i = getelementptr i8, ptr %554, i32 35860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1068.i, i32 %552) #5, !srcloc !141
  %555 = ptrtoint ptr %max_gprs358.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %max_gprs358.i, align 8
  %mul447.i = mul i32 %556, 38
  %div448793.i = lshr i32 %mul447.i, 6
  %shl454.i = shl i32 %div448793.i, 8
  %or455.i = or i32 %shl454.i, %div448793.i
  %shl460.i = shl i32 %div448793.i, 16
  %or461.i = or i32 %or455.i, %shl460.i
  %shl466.i = shl i32 %div448793.i, 24
  %or467.i = or i32 %or461.i, %shl466.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %557 = call i32 @llvm.bswap.i32(i32 %or467.i) #5
  %558 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1073.i = getelementptr i8, ptr %559, i32 36272
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1073.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %560 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1078.i = getelementptr i8, ptr %561, i32 36276
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1078.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %562 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1083.i = getelementptr i8, ptr %563, i32 36280
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1083.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %564 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1088.i = getelementptr i8, ptr %565, i32 36284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1088.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %566 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1093.i = getelementptr i8, ptr %567, i32 36288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1093.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %568 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1098.i = getelementptr i8, ptr %569, i32 36292
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1098.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %570 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1103.i = getelementptr i8, ptr %571, i32 36296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1103.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %572 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1108.i = getelementptr i8, ptr %573, i32 36300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1108.i, i32 %557) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %574 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1113.i = getelementptr i8, ptr %575, i32 35620
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1113.i, i32 -15728896) #5, !srcloc !141
  %576 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %family.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %577)
  %cmp469.i = icmp eq i32 %577, 37
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  call void @arm_heavy_mb() #5
  %578 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1118.i = getelementptr i8, ptr %579, i32 35012
  br i1 %cmp469.i, label %if.then470.i, label %if.else471.i

if.then470.i:                                     ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1118.i, i32 -1056964608) #5, !srcloc !141
  br label %if.end472.i

if.else471.i:                                     ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1118.i, i32 -1040187392) #5, !srcloc !141
  br label %if.end472.i

if.end472.i:                                      ; preds = %if.else471.i, %if.then470.i
  %580 = ptrtoint ptr %family.i159 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %family.i159, align 4
  %switch.tableidx176 = add i32 %581, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx176)
  %582 = icmp ult i32 %switch.tableidx176, 4
  br i1 %582, label %switch.lookup175, label %if.end472.i.sw.epilog477.i_crit_edge

if.end472.i.sw.epilog477.i_crit_edge:             ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog477.i

switch.lookup175:                                 ; preds = %if.end472.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep177 = getelementptr inbounds [4 x i32], ptr @switch.table.rv770_startup.62, i32 0, i32 %switch.tableidx176
  %583 = ptrtoint ptr %switch.gep177 to i32
  call void @__asan_load4_noabort(i32 %583)
  %switch.load178 = load i32, ptr %switch.gep177, align 4
  br label %sw.epilog477.i

sw.epilog477.i:                                   ; preds = %switch.lookup175, %if.end472.i.sw.epilog477.i_crit_edge
  %gs_prim_buffer_depth.0.i = phi i32 [ 0, %if.end472.i.sw.epilog477.i_crit_edge ], [ %switch.load178, %switch.lookup175 ]
  %584 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %config.i, align 8
  %mul480.i = shl i32 %585, 4
  %add481.i = add i32 %mul480.i, %gs_prim_buffer_depth.0.i
  %586 = call i32 @llvm.umin.i32(i32 %add481.i, i32 256) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %587 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1128.i = getelementptr i8, ptr %588, i32 35020
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1128.i, i32 -2147483648) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %589 = call i32 @llvm.bswap.i32(i32 %586) #5
  %590 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1133.i = getelementptr i8, ptr %591, i32 35016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1133.i, i32 %589) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %592 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1138.i = getelementptr i8, ptr %593, i32 35048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1138.i, i32 33554432) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %594 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1143.i = getelementptr i8, ptr %595, i32 35028
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1143.i, i32 268435456) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %596 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1148.i = getelementptr i8, ptr %597, i32 35600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1148.i, i32 0) #5, !srcloc !141
  %598 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 166576, i32 %599)
  %cmp.i1151.i = icmp ugt i32 %599, 166576
  br i1 %cmp.i1151.i, label %do.body.i1154.i, label %if.else.i1155.i

do.body.i1154.i:                                  ; preds = %sw.epilog477.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %600 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1153.i = getelementptr i8, ptr %601, i32 166576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1153.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1156.i

if.else.i1155.i:                                  ; preds = %sw.epilog477.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 166576, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1156.i

r100_mm_wreg.exit1156.i:                          ; preds = %if.else.i1155.i, %do.body.i1154.i
  %602 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 164688, i32 %603)
  %cmp.i1158.i = icmp ugt i32 %603, 164688
  br i1 %cmp.i1158.i, label %do.body.i1161.i, label %if.else.i1162.i

do.body.i1161.i:                                  ; preds = %r100_mm_wreg.exit1156.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %604 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1160.i = getelementptr i8, ptr %605, i32 164688
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1160.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1163.i

if.else.i1162.i:                                  ; preds = %r100_mm_wreg.exit1156.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 164688, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1163.i

r100_mm_wreg.exit1163.i:                          ; preds = %if.else.i1162.i, %do.body.i1161.i
  %606 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 166476, i32 %607)
  %cmp.i1165.i = icmp ugt i32 %607, 166476
  br i1 %cmp.i1165.i, label %do.body.i1168.i, label %if.else.i1169.i

do.body.i1168.i:                                  ; preds = %r100_mm_wreg.exit1163.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %608 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1167.i = getelementptr i8, ptr %609, i32 166476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1167.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1170.i

if.else.i1169.i:                                  ; preds = %r100_mm_wreg.exit1163.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 166476, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1170.i

r100_mm_wreg.exit1170.i:                          ; preds = %if.else.i1169.i, %do.body.i1168.i
  %610 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 164400, i32 %611)
  %cmp.i1172.i = icmp ugt i32 %611, 164400
  br i1 %cmp.i1172.i, label %do.body.i1175.i, label %if.else.i1176.i

do.body.i1175.i:                                  ; preds = %r100_mm_wreg.exit1170.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %612 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1174.i = getelementptr i8, ptr %613, i32 164400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1174.i, i32 -1431655766) #5, !srcloc !141
  br label %r100_mm_wreg.exit1177.i

if.else.i1176.i:                                  ; preds = %r100_mm_wreg.exit1170.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 164400, i32 noundef -1431655766) #5
  br label %r100_mm_wreg.exit1177.i

r100_mm_wreg.exit1177.i:                          ; preds = %if.else.i1176.i, %do.body.i1175.i
  %614 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 166916, i32 %615)
  %cmp.i1179.i = icmp ugt i32 %615, 166916
  br i1 %cmp.i1179.i, label %do.body.i1182.i, label %if.else.i1183.i

do.body.i1182.i:                                  ; preds = %r100_mm_wreg.exit1177.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %616 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1181.i = getelementptr i8, ptr %617, i32 166916
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1181.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1184.i

if.else.i1183.i:                                  ; preds = %r100_mm_wreg.exit1177.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 166916, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1184.i

r100_mm_wreg.exit1184.i:                          ; preds = %if.else.i1183.i, %do.body.i1182.i
  %618 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 164364, i32 %619)
  %cmp.i1186.i = icmp ugt i32 %619, 164364
  br i1 %cmp.i1186.i, label %do.body.i1189.i, label %if.else.i1190.i

do.body.i1189.i:                                  ; preds = %r100_mm_wreg.exit1184.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %620 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1188.i = getelementptr i8, ptr %621, i32 164364
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1188.i, i32 -65536) #5, !srcloc !141
  br label %r100_mm_wreg.exit1191.i

if.else.i1190.i:                                  ; preds = %r100_mm_wreg.exit1184.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 164364, i32 noundef 65535) #5
  br label %r100_mm_wreg.exit1191.i

r100_mm_wreg.exit1191.i:                          ; preds = %if.else.i1190.i, %do.body.i1189.i
  %622 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 166412, i32 %623)
  %cmp.i1193.i = icmp ugt i32 %623, 166412
  br i1 %cmp.i1193.i, label %do.body.i1196.i, label %if.else.i1197.i

do.body.i1196.i:                                  ; preds = %r100_mm_wreg.exit1191.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %624 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1195.i = getelementptr i8, ptr %625, i32 166412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1195.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1198.i

if.else.i1197.i:                                  ; preds = %r100_mm_wreg.exit1191.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 166412, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1198.i

r100_mm_wreg.exit1198.i:                          ; preds = %if.else.i1197.i, %do.body.i1196.i
  %626 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 165592, i32 %627)
  %cmp.i1200.i = icmp ugt i32 %627, 165592
  br i1 %cmp.i1200.i, label %do.body.i1203.i, label %if.else.i1204.i

do.body.i1203.i:                                  ; preds = %r100_mm_wreg.exit1198.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %628 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1202.i = getelementptr i8, ptr %629, i32 165592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1202.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1205.i

if.else.i1204.i:                                  ; preds = %r100_mm_wreg.exit1198.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 165592, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1205.i

r100_mm_wreg.exit1205.i:                          ; preds = %if.else.i1204.i, %do.body.i1203.i
  %630 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 165580, i32 %631)
  %cmp.i1207.i = icmp ugt i32 %631, 165580
  br i1 %cmp.i1207.i, label %do.body.i1210.i, label %if.else.i1211.i

do.body.i1210.i:                                  ; preds = %r100_mm_wreg.exit1205.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %632 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1209.i = getelementptr i8, ptr %633, i32 165580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1209.i, i32 33554432) #5, !srcloc !141
  br label %r100_mm_wreg.exit1212.i

if.else.i1211.i:                                  ; preds = %r100_mm_wreg.exit1205.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 165580, i32 noundef 2) #5
  br label %r100_mm_wreg.exit1212.i

r100_mm_wreg.exit1212.i:                          ; preds = %if.else.i1211.i, %do.body.i1210.i
  %634 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 164092, i32 %635)
  %cmp.i1214.i = icmp ugt i32 %635, 164092
  br i1 %cmp.i1214.i, label %do.body.i1217.i, label %if.else.i1218.i

do.body.i1217.i:                                  ; preds = %r100_mm_wreg.exit1212.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %636 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1216.i = getelementptr i8, ptr %637, i32 164092
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1216.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1219.i

if.else.i1218.i:                                  ; preds = %r100_mm_wreg.exit1212.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 164092, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1219.i

r100_mm_wreg.exit1219.i:                          ; preds = %if.else.i1218.i, %do.body.i1217.i
  %638 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163904, i32 %639)
  %cmp.i1221.i = icmp ugt i32 %639, 163904
  br i1 %cmp.i1221.i, label %do.body.i1224.i, label %if.else.i1225.i

do.body.i1224.i:                                  ; preds = %r100_mm_wreg.exit1219.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %640 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1223.i = getelementptr i8, ptr %641, i32 163904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1223.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1226.i

if.else.i1225.i:                                  ; preds = %r100_mm_wreg.exit1219.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163904, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1226.i

r100_mm_wreg.exit1226.i:                          ; preds = %if.else.i1225.i, %do.body.i1224.i
  %642 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163908, i32 %643)
  %cmp.i1228.i = icmp ugt i32 %643, 163908
  br i1 %cmp.i1228.i, label %do.body.i1231.i, label %if.else.i1232.i

do.body.i1231.i:                                  ; preds = %r100_mm_wreg.exit1226.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %644 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1230.i = getelementptr i8, ptr %645, i32 163908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1230.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1233.i

if.else.i1232.i:                                  ; preds = %r100_mm_wreg.exit1226.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163908, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1233.i

r100_mm_wreg.exit1233.i:                          ; preds = %if.else.i1232.i, %do.body.i1231.i
  %646 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163912, i32 %647)
  %cmp.i1235.i = icmp ugt i32 %647, 163912
  br i1 %cmp.i1235.i, label %do.body.i1238.i, label %if.else.i1239.i

do.body.i1238.i:                                  ; preds = %r100_mm_wreg.exit1233.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %648 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1237.i = getelementptr i8, ptr %649, i32 163912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1237.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1240.i

if.else.i1239.i:                                  ; preds = %r100_mm_wreg.exit1233.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163912, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1240.i

r100_mm_wreg.exit1240.i:                          ; preds = %if.else.i1239.i, %do.body.i1238.i
  %650 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163916, i32 %651)
  %cmp.i1242.i = icmp ugt i32 %651, 163916
  br i1 %cmp.i1242.i, label %do.body.i1245.i, label %if.else.i1246.i

do.body.i1245.i:                                  ; preds = %r100_mm_wreg.exit1240.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %652 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1244.i = getelementptr i8, ptr %653, i32 163916
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1244.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1247.i

if.else.i1246.i:                                  ; preds = %r100_mm_wreg.exit1240.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163916, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1247.i

r100_mm_wreg.exit1247.i:                          ; preds = %if.else.i1246.i, %do.body.i1245.i
  %654 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163920, i32 %655)
  %cmp.i1249.i = icmp ugt i32 %655, 163920
  br i1 %cmp.i1249.i, label %do.body.i1252.i, label %if.else.i1253.i

do.body.i1252.i:                                  ; preds = %r100_mm_wreg.exit1247.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %656 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1251.i = getelementptr i8, ptr %657, i32 163920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1251.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1254.i

if.else.i1253.i:                                  ; preds = %r100_mm_wreg.exit1247.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163920, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1254.i

r100_mm_wreg.exit1254.i:                          ; preds = %if.else.i1253.i, %do.body.i1252.i
  %658 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163924, i32 %659)
  %cmp.i1256.i = icmp ugt i32 %659, 163924
  br i1 %cmp.i1256.i, label %do.body.i1259.i, label %if.else.i1260.i

do.body.i1259.i:                                  ; preds = %r100_mm_wreg.exit1254.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %660 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1258.i = getelementptr i8, ptr %661, i32 163924
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1258.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1261.i

if.else.i1260.i:                                  ; preds = %r100_mm_wreg.exit1254.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163924, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1261.i

r100_mm_wreg.exit1261.i:                          ; preds = %if.else.i1260.i, %do.body.i1259.i
  %662 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163928, i32 %663)
  %cmp.i1263.i = icmp ugt i32 %663, 163928
  br i1 %cmp.i1263.i, label %do.body.i1266.i, label %if.else.i1267.i

do.body.i1266.i:                                  ; preds = %r100_mm_wreg.exit1261.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %664 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1265.i = getelementptr i8, ptr %665, i32 163928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1265.i, i32 0) #5, !srcloc !141
  br label %r100_mm_wreg.exit1268.i

if.else.i1267.i:                                  ; preds = %r100_mm_wreg.exit1261.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163928, i32 noundef 0) #5
  br label %r100_mm_wreg.exit1268.i

r100_mm_wreg.exit1268.i:                          ; preds = %if.else.i1267.i, %do.body.i1266.i
  %666 = ptrtoint ptr %rmmio_size.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %rmmio_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 163932, i32 %667)
  %cmp.i1270.i = icmp ugt i32 %667, 163932
  br i1 %cmp.i1270.i, label %do.body.i1273.i, label %if.else.i1274.i

do.body.i1273.i:                                  ; preds = %r100_mm_wreg.exit1268.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %668 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1272.i = getelementptr i8, ptr %669, i32 163932
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1272.i, i32 0) #5, !srcloc !141
  br label %rv770_gpu_init.exit

if.else.i1274.i:                                  ; preds = %r100_mm_wreg.exit1268.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef 163932, i32 noundef 0) #5
  br label %rv770_gpu_init.exit

rv770_gpu_init.exit:                              ; preds = %if.else.i1274.i, %do.body.i1273.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %670 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1279.i = getelementptr i8, ptr %671, i32 38416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1279.i, i32 0) #5, !srcloc !141
  %672 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1284.i = getelementptr i8, ptr %673, i32 11264
  %674 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1284.i) #5, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %675 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1288.i = getelementptr i8, ptr %676, i32 11264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1288.i, i32 %674) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %677 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1293.i = getelementptr i8, ptr %678, i32 35616
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1293.i, i32 0) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %679 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1298.i = getelementptr i8, ptr %680, i32 35348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1298.i, i32 117440512) #5, !srcloc !141
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  call void @arm_heavy_mb() #5
  %681 = ptrtoint ptr %rmmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %rmmio.i.i135, align 4
  %add.ptr.i1303.i = getelementptr i8, ptr %682, i32 38676
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1303.i, i32 0) #5, !srcloc !141
  %call8 = call i32 @radeon_wb_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %rv770_gpu_init.exit.cleanup_crit_edge

rv770_gpu_init.exit.cleanup_crit_edge:            ; preds = %rv770_gpu_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %rv770_gpu_init.exit
  %call12 = call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %683 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %684, ptr noundef nonnull @.str.29, i32 noundef %call12) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %685 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %686, ptr noundef nonnull @.str.32, i32 noundef %call16) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %has_uvd.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %687 = ptrtoint ptr %has_uvd.i to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %has_uvd.i, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %688)
  %tobool.not.i169 = icmp eq i8 %688, 0
  br i1 %tobool.not.i169, label %if.end23.rv770_uvd_start.exit_crit_edge, label %if.end.i171

if.end23.rv770_uvd_start.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_uvd_start.exit

if.end.i171:                                      ; preds = %if.end23
  %call.i170 = call i32 @uvd_v2_2_resume(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool1.not.i = icmp eq i32 %call.i170, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %do.end.i172

do.end.i172:                                      ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #7
  %689 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %690, ptr noundef nonnull @.str.50, i32 noundef %call.i170) #8
  br label %error.i

if.end3.i:                                        ; preds = %if.end.i171
  %call4.i = call i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.rv770_uvd_start.exit_crit_edge, label %do.end9.i

if.end3.i.rv770_uvd_start.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_uvd_start.exit

do.end9.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %691 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %692, ptr noundef nonnull @.str.53, i32 noundef %call4.i) #8
  br label %error.i

error.i:                                          ; preds = %do.end9.i, %do.end.i172
  %ring_size.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 9
  %693 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_store4_noabort(i32 %693)
  store i32 0, ptr %ring_size.i, align 4
  br label %rv770_uvd_start.exit

rv770_uvd_start.exit:                             ; preds = %error.i, %if.end3.i.rv770_uvd_start.exit_crit_edge, %if.end23.rv770_uvd_start.exit_crit_edge
  %irq = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 55
  %694 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %694)
  %695 = load i8, ptr %irq, align 8, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %695)
  %tobool24.not = icmp eq i8 %695, 0
  br i1 %tobool24.not, label %if.then25, label %rv770_uvd_start.exit.if.end30_crit_edge

rv770_uvd_start.exit.if.end30_crit_edge:          ; preds = %rv770_uvd_start.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %rv770_uvd_start.exit
  %call26 = call i32 @radeon_irq_kms_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %rv770_uvd_start.exit.if.end30_crit_edge
  %call31 = call i32 @r600_irq_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34, i32 noundef %call31) #5
  call void @radeon_irq_kms_fini(ptr noundef %rdev) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call35 = call i32 @r600_irq_set(ptr noundef %rdev) #5
  %ring36 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  %ring_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 9
  %696 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %ring_size, align 4
  %call37 = call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %ring36, i32 noundef %697, i32 noundef 1024, i32 noundef -2147483648) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %arrayidx42 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %ring_size43 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 9
  %698 = ptrtoint ptr %ring_size43 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %ring_size43, align 4
  %call44 = call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx42, i32 noundef %699, i32 noundef 1792, i32 noundef -268435456) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %call48 = call fastcc i32 @rv770_cp_load_microcode(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %call52 = call i32 @r600_cp_resume(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %call56 = call i32 @r600_dma_resume(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call fastcc void @rv770_uvd_resume(ptr noundef %rdev)
  %call60 = call i32 @radeon_ib_pool_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %700 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %rdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %701, ptr noundef nonnull @.str.36, i32 noundef %call60) #8
  br label %cleanup

if.end67:                                         ; preds = %if.end59
  %call68 = call i32 @radeon_audio_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %if.then70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end67.cleanup_crit_edge, %do.end65, %if.end55.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then33, %if.then25.cleanup_crit_edge, %do.end21, %do.end, %rv770_gpu_init.exit.cleanup_crit_edge, %if.end.i149.cleanup_crit_edge, %do.end.i146, %rv770_pcie_gen2_enable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ %call16, %do.end21 ], [ %call31, %if.then33 ], [ %call60, %do.end65 ], [ %call68, %if.then70 ], [ %call, %rv770_pcie_gen2_enable.exit.cleanup_crit_edge ], [ %call8, %rv770_gpu_init.exit.cleanup_crit_edge ], [ %call26, %if.then25.cleanup_crit_edge ], [ %call37, %if.end34.cleanup_crit_edge ], [ %call44, %if.end40.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ %call56, %if.end55.cleanup_crit_edge ], [ 0, %if.end67.cleanup_crit_edge ], [ %call.i147, %if.end.i149.cleanup_crit_edge ], [ -22, %do.end.i146 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_suspend(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_suspend(ptr noundef %rdev) #5
  tail call void @radeon_audio_fini(ptr noundef %rdev) #5
  %has_uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %0 = ptrtoint ptr %has_uvd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_uvd, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @uvd_v1_0_fini(ptr noundef %rdev) #5
  %call = tail call i32 @radeon_uvd_suspend(ptr noundef %rdev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %2 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 5
  %4 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.r700_cp_stop.exit_crit_edge

if.end.r700_cp_stop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %r700_cp_stop.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %6 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %7) #5
  br label %r700_cp_stop.exit

r700_cp_stop.exit:                                ; preds = %if.then.i, %if.end.r700_cp_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %8 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 20) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %11, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #5, !srcloc !141
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %12 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ready.i, align 8
  tail call void @r600_dma_stop(ptr noundef %rdev) #5
  tail call void @r600_irq_suspend(ptr noundef %rdev) #5
  tail call void @radeon_wb_disable(ptr noundef %rdev) #5
  tail call fastcc void @rv770_pcie_gart_disable(ptr noundef %rdev)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_audio_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uvd_v1_0_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dma_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_irq_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv770_pcie_gart_disable(ptr noundef %rdev) unnamed_addr #0 align 64 {
r100_mm_wreg.exit.6:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %0 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %2 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %5, i32 5144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %7, i32 5148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %9, i32 5152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %11, i32 5156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %13, i32 5160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %15, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 46137600) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %17, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %19, i32 5128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 -2147483648) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %21, i32 9812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 8394240) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %23, i32 9816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 8394240) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %25, i32 9820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 8394240) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %27, i32 8756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 8394240) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %29, i32 8760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 8394240) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %31, i32 8764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 8394240) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %33, i32 8768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 8394240) #5, !srcloc !141
  tail call void @radeon_gart_table_vram_unpin(ptr noundef %rdev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rv770_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @radeon_get_bios(ptr noundef %rdev) #5
  br i1 %call, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %is_atom_bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 14
  %2 = ptrtoint ptr %is_atom_bios to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_atom_bios, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end2
  %call5 = tail call i32 @radeon_atombios_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call zeroext i1 @radeon_card_posted(ptr noundef %rdev) #5
  br i1 %call9, label %if.end8.if.end23_crit_edge, label %if.then10

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then10:                                        ; preds = %if.end8
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %6 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios, align 8
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end15, label %do.end20

do.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.20) #8
  br label %cleanup

do.end20:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  %mode_info = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 44
  %10 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info, align 4
  %call22 = tail call i32 @atom_asic_init(ptr noundef %11) #5
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.end8.if.end23_crit_edge
  tail call fastcc void @rv770_init_golden_registers(ptr noundef %rdev)
  tail call void @r600_scratch_init(ptr noundef %rdev) #5
  tail call void @radeon_surface_init(ptr noundef %rdev) #5
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %12 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddev, align 4
  tail call void @radeon_get_clock_info(ptr noundef %13) #5
  tail call void @radeon_fence_driver_init(ptr noundef %rdev) #5
  %flags = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = and i32 %15, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %call26 = tail call i32 @radeon_agp_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then28

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @radeon_agp_disable(ptr noundef %rdev) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then25.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %vram_is_ddr.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 13
  %16 = ptrtoint ptr %vram_is_ddr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %vram_is_ddr.i, align 4
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 10080
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !138
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %and.i = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %..i = select i1 %tobool2.not.i, i32 32, i32 64
  %chansize.0.i = select i1 %tobool.not.i, i32 %..i, i32 16
  %21 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %22, i32 8196
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !138
  %24 = lshr i32 %23, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %shr.i = and i32 %24, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.rv770_init, i32 0, i32 %shr.i
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %mul.i = mul nuw nsw i32 %switch.load, %chansize.0.i
  %vram_width.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 10
  %26 = ptrtoint ptr %vram_width.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul.i, ptr %vram_width.i, align 8
  %pdev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resource.i, align 8
  %aper_base.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 1
  %31 = ptrtoint ptr %aper_base.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %aper_base.i, align 4
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 47, i32 0, i32 1
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  br i1 %cmp.i, label %if.end30.rv770_mc_init.exit_crit_edge, label %cond.false.i

if.end30.rv770_mc_init.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_mc_init.exit

cond.false.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %resource.i, align 8
  %sub.i = add i32 %33, 1
  %add.i = sub i32 %sub.i, %35
  br label %rv770_mc_init.exit

rv770_mc_init.exit:                               ; preds = %cond.false.i, %if.end30.rv770_mc_init.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end30.rv770_mc_init.exit_crit_edge ]
  %mc.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42
  %36 = ptrtoint ptr %mc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i, ptr %mc.i, align 8
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %38, i32 21544
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #5, !srcloc !138
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %conv.i = zext i32 %40 to i64
  %mc_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 3
  %41 = ptrtoint ptr %mc_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv.i, ptr %mc_vram_size.i, align 8
  %42 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %43, i32 21544
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #5, !srcloc !138
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %conv28.i = zext i32 %45 to i64
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %46 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv28.i, ptr %real_vram_size.i, align 8
  %47 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mc.i, align 8
  %conv32.i = zext i32 %48 to i64
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %49 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv32.i, ptr %visible_vram_size.i, align 8
  tail call void @r700_vram_gtt_location(ptr noundef %rdev, ptr noundef %mc.i) #5
  tail call void @radeon_update_bandwidth_info(ptr noundef %rdev) #5
  %call35 = tail call i32 @radeon_bo_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %rv770_mc_init.exit.cleanup_crit_edge

rv770_mc_init.exit.cleanup_crit_edge:             ; preds = %rv770_mc_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %rv770_mc_init.exit
  %me_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 71
  %50 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %me_fw, align 8
  %tobool39.not = icmp eq ptr %51, null
  br i1 %tobool39.not, label %if.end38.if.then43_crit_edge, label %lor.lhs.false

if.end38.if.then43_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end38
  %pfp_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 72
  %52 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pfp_fw, align 4
  %tobool40.not = icmp eq ptr %53, null
  br i1 %tobool40.not, label %lor.lhs.false.if.then43_crit_edge, label %lor.lhs.false41

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

lor.lhs.false41:                                  ; preds = %lor.lhs.false
  %rlc_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 73
  %54 = ptrtoint ptr %rlc_fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rlc_fw, align 8
  %tobool42.not = icmp eq ptr %55, null
  br i1 %tobool42.not, label %lor.lhs.false41.if.then43_crit_edge, label %lor.lhs.false41.if.end48_crit_edge

lor.lhs.false41.if.end48_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

lor.lhs.false41.if.then43_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false41.if.then43_crit_edge, %lor.lhs.false.if.then43_crit_edge, %if.end38.if.then43_crit_edge
  %call44 = tail call i32 @r600_init_microcode(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then46

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #5
  br label %cleanup

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %lor.lhs.false41.if.end48_crit_edge
  %call49 = tail call i32 @radeon_pm_init(ptr noundef %rdev) #5
  %ring = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52
  %ring_obj = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 1
  %56 = ptrtoint ptr %ring_obj to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %ring_obj, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %ring, i32 noundef 1048576) #5
  %arrayidx53 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3
  %ring_obj54 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 3, i32 1
  %57 = ptrtoint ptr %ring_obj54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %ring_obj54, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx53, i32 noundef 65536) #5
  %has_uvd.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %58 = ptrtoint ptr %has_uvd.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %has_uvd.i, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i126 = icmp eq i8 %59, 0
  br i1 %tobool.not.i126, label %if.end48.rv770_uvd_init.exit_crit_edge, label %if.end.i

if.end48.rv770_uvd_init.exit_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %rv770_uvd_init.exit

if.end.i:                                         ; preds = %if.end48
  %call.i = tail call i32 @radeon_uvd_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.60, i32 noundef %call.i) #8
  %62 = ptrtoint ptr %has_uvd.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %has_uvd.i, align 4
  br label %rv770_uvd_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  %ring_obj.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 1
  %63 = ptrtoint ptr %ring_obj.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %ring_obj.i, align 4
  tail call void @r600_ring_init(ptr noundef %rdev, ptr noundef %arrayidx.i, i32 noundef 4096) #5
  br label %rv770_uvd_init.exit

rv770_uvd_init.exit:                              ; preds = %if.end4.i, %do.end.i, %if.end48.rv770_uvd_init.exit_crit_edge
  %ih = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 85
  %64 = ptrtoint ptr %ih to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %ih, align 8
  tail call void @r600_ih_ring_init(ptr noundef %rdev, i32 noundef 65536) #5
  %call58 = tail call i32 @r600_pcie_gart_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %rv770_uvd_init.exit.cleanup_crit_edge

rv770_uvd_init.exit.cleanup_crit_edge:            ; preds = %rv770_uvd_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %rv770_uvd_init.exit
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 66
  %65 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %accel_working, align 2
  %call62 = tail call fastcc i32 @rv770_startup(ptr noundef %rdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.cleanup_crit_edge, label %do.end67

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.27) #8
  tail call void @r700_cp_fini(ptr noundef %rdev)
  tail call void @r600_dma_fini(ptr noundef %rdev) #5
  tail call void @r600_irq_fini(ptr noundef %rdev) #5
  tail call void @radeon_wb_fini(ptr noundef %rdev) #5
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #5
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #5
  tail call fastcc void @rv770_pcie_gart_fini(ptr noundef %rdev)
  %68 = ptrtoint ptr %accel_working to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %accel_working, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.end61.cleanup_crit_edge, %rv770_uvd_init.exit.cleanup_crit_edge, %if.then46, %rv770_mc_init.exit.cleanup_crit_edge, %do.end15, %if.end4.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.then46 ], [ -22, %do.end15 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call35, %rv770_mc_init.exit.cleanup_crit_edge ], [ %call58, %rv770_uvd_init.exit.cleanup_crit_edge ], [ 0, %do.end67 ], [ 0, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_get_bios(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_atombios_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_card_posted(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_surface_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_get_clock_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_agp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_init_microcode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_pm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_ring_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_ih_ring_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_pcie_gart_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_dma_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_irq_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_wb_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_pool_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv770_pcie_gart_fini(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_gart_fini(ptr noundef %rdev) #5
  tail call fastcc void @rv770_pcie_gart_disable(ptr noundef %rdev)
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rv770_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_pm_fini(ptr noundef %rdev) #5
  tail call void @r700_cp_fini(ptr noundef %rdev)
  tail call void @r600_dma_fini(ptr noundef %rdev) #5
  tail call void @r600_irq_fini(ptr noundef %rdev) #5
  tail call void @radeon_wb_fini(ptr noundef %rdev) #5
  tail call void @radeon_ib_pool_fini(ptr noundef %rdev) #5
  tail call void @radeon_irq_kms_fini(ptr noundef %rdev) #5
  tail call void @uvd_v1_0_fini(ptr noundef %rdev) #5
  tail call void @radeon_uvd_fini(ptr noundef %rdev) #5
  tail call void @radeon_gart_fini(ptr noundef %rdev) #5
  tail call fastcc void @rv770_pcie_gart_disable(ptr noundef %rdev) #5
  tail call void @radeon_gart_table_vram_free(ptr noundef %rdev) #5
  tail call void @r600_vram_scratch_fini(ptr noundef %rdev) #5
  tail call void @radeon_gem_fini(ptr noundef %rdev) #5
  tail call void @radeon_fence_driver_fini(ptr noundef %rdev) #5
  tail call void @radeon_agp_fini(ptr noundef %rdev) #5
  tail call void @radeon_bo_fini(ptr noundef %rdev) #5
  tail call void @radeon_atombios_fini(ptr noundef %rdev) #5
  %bios = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 13
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 8
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bios, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_pm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_uvd_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_vram_scratch_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_driver_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_agp_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_atombios_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_program_register_sequence(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_vram_scratch_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_wb_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_fence_driver_start_ring(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_irq_kms_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_irq_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ring_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rv770_cp_load_microcode(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %me_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 71
  %0 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %me_fw, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pfp_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 72
  %2 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfp_fw, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %4 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %asic.i, align 8
  %copy_ring_index.i = getelementptr inbounds %struct.radeon_asic, ptr %5, i32 0, i32 17, i32 5
  %6 = ptrtoint ptr %copy_ring_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copy_ring_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.r700_cp_stop.exit_crit_edge

if.end.r700_cp_stop.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %r700_cp_stop.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %visible_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %8 = ptrtoint ptr %visible_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %visible_vram_size.i, align 8
  tail call void @radeon_ttm_set_active_vram_size(ptr noundef %rdev, i64 noundef %9) #5
  br label %r700_cp_stop.exit

r700_cp_stop.exit:                                ; preds = %if.then.i, %if.end.r700_cp_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %rmmio.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %10 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 34520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 20) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %13, i32 34112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #5, !srcloc !141
  %ready.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 0, i32 17
  %14 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %ready.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 49412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 51315208) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %18, i32 32800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 16777216) #5, !srcloc !141
  %19 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %20, i32 32800
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %38, i32 32800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #5, !srcloc !141
  %39 = ptrtoint ptr %pfp_fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pfp_fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %44, i32 49488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 0) #5, !srcloc !141
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %r700_cp_stop.exit
  %i.084 = phi i32 [ 0, %r700_cp_stop.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %fw_data.083 = phi ptr [ %42, %r700_cp_stop.exit ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %fw_data.083, i32 1
  %45 = ptrtoint ptr %fw_data.083 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fw_data.083, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %48 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %49, i32 49492
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %47) #5, !srcloc !141
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 848
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %51, i32 49488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #5, !srcloc !141
  %52 = ptrtoint ptr %me_fw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %me_fw, align 8
  %data6 = getelementptr inbounds %struct.firmware, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %56 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %57, i32 49500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 0) #5, !srcloc !141
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.end
  %i.186 = phi i32 [ 0, %for.end ], [ %inc13, %for.body9.for.body9_crit_edge ]
  %fw_data.185 = phi ptr [ %55, %for.end ], [ %incdec.ptr10, %for.body9.for.body9_crit_edge ]
  %incdec.ptr10 = getelementptr i32, ptr %fw_data.185, i32 1
  %58 = ptrtoint ptr %fw_data.185 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fw_data.185, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #5
  %61 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %62, i32 49504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %60) #5, !srcloc !141
  %inc13 = add nuw nsw i32 %i.186, 1
  %exitcond87.not = icmp eq i32 %inc13, 1360
  br i1 %exitcond87.not, label %for.end14, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9

for.end14:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %64, i32 49488
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %66, i32 49500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 0) #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %rmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio.i.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %68, i32 49496
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 0) #5, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %for.end14, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end14 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_cp_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_dma_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rv770_uvd_resume(ptr noundef %rdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %has_uvd = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 93
  %0 = ptrtoint ptr %has_uvd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_uvd, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ring_size = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5, i32 9
  %2 = ptrtoint ptr %ring_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 5
  %call = tail call i32 @radeon_ring_init(ptr noundef %rdev, ptr noundef %arrayidx, i32 noundef %3, i32 noundef 0, i32 noundef 15359) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55, i32 noundef %call) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @uvd_v1_0_init(ptr noundef %rdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58, i32 noundef %call9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_pool_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_audio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_mc_wait_for_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_mc_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rv515_vga_render_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_table_vram_pin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r600_pcie_gart_tlb_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r600_count_pipe_bits(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r6xx_remap_render_backend(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v2_2_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvd_v1_0_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_update_bandwidth_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_uvd_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_table_vram_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 846, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 896, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1619, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @r700_vram_gtt_location._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @r700_vram_gtt_location._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @r700_vram_gtt_location._entry.7, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1628, i32 5}
!14 = !{ptr @r700_vram_gtt_location._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @r700_vram_gtt_location._entry.9, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1635, i32 5}
!17 = !{ptr @r700_vram_gtt_location._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1642, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @r700_vram_gtt_location._entry.11, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @r700_vram_gtt_location._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1883, i32 3}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1926, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rv770_init._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @rv770_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1935, i32 4}
!33 = !{ptr @rv770_init._entry.19, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rv770_init._entry_ptr.21, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1938, i32 3}
!37 = !{ptr @rv770_init._entry.22, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rv770_init._entry_ptr.24, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1968, i32 4}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1994, i32 3}
!43 = !{ptr @rv770_init._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rv770_init._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @r7xx_golden_registers, !46, !"r7xx_golden_registers", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 138, i32 18}
!47 = !{ptr @r7xx_golden_dyn_gpr_registers, !48, !"r7xx_golden_dyn_gpr_registers", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 154, i32 18}
!49 = !{ptr @rv770ce_golden_registers, !50, !"rv770ce_golden_registers", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 177, i32 18}
!51 = !{ptr @rv770_golden_registers, !52, !"rv770_golden_registers", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 167, i32 18}
!53 = !{ptr @rv770_mgcg_init, !54, !"rv770_mgcg_init", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 189, i32 18}
!55 = !{ptr @rv730_golden_registers, !56, !"rv730_golden_registers", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 416, i32 18}
!57 = !{ptr @rv730_mgcg_init, !58, !"rv730_mgcg_init", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 427, i32 18}
!59 = !{ptr @rv710_golden_registers, !60, !"rv710_golden_registers", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 347, i32 18}
!61 = !{ptr @rv710_mgcg_init, !62, !"rv710_mgcg_init", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 357, i32 18}
!63 = !{ptr @rv740_golden_registers, !64, !"rv740_golden_registers", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 549, i32 18}
!65 = !{ptr @rv740_mgcg_init, !66, !"rv740_mgcg_init", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 586, i32 18}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1796, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rv770_startup._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rv770_startup._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1802, i32 3}
!74 = !{ptr @rv770_startup._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rv770_startup._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1817, i32 3}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1850, i32 3}
!80 = !{ptr @rv770_startup._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @rv770_startup._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1856, i32 3}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 2052, i32 2}
!86 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rv770_pcie_gen2_enable._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rv770_pcie_gen2_enable._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1036, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @rv770_mc_program._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @rv770_mc_program._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @rv770_mc_program._entry.43, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1078, i32 3}
!96 = !{ptr @rv770_mc_program._entry_ptr.44, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 910, i32 3}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @rv770_pcie_gart_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @rv770_pcie_gart_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 947, i32 2}
!104 = !{ptr @rv770_pcie_gart_enable._entry.47, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @rv770_pcie_gart_enable._entry_ptr.49, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1729, i32 3}
!108 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rv770_uvd_start._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rv770_uvd_start._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1734, i32 3}
!113 = !{ptr @rv770_uvd_start._entry.52, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @rv770_uvd_start._entry_ptr.54, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1754, i32 3}
!117 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @rv770_uvd_resume._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @rv770_uvd_resume._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1759, i32 3}
!122 = !{ptr @rv770_uvd_resume._entry.57, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @rv770_uvd_resume._entry_ptr.59, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/radeon/rv770.c", i32 1706, i32 3}
!126 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @rv770_uvd_init._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @rv770_uvd_init._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 5042673}
!139 = !{i64 2158357402}
!140 = !{i64 2158357809}
!141 = !{i64 5042255}
!142 = !{i64 5041835}
!143 = !{i64 2158639955}
!144 = !{i64 2158640247}
!145 = !{i64 5041635}
!146 = !{i8 0, i8 2}
